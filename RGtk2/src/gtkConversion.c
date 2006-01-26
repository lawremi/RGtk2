#include "conversion.h"
#include "gtkUserFuncs.h"
#include "utils.h"


GtkTargetEntry*
asCGtkTargetEntry(USER_OBJECT_ s_entry) {
    GtkTargetEntry* entry;
    entry = (GtkTargetEntry*)R_alloc(1, sizeof(GtkTargetEntry));
    entry->target = asCString(VECTOR_ELT(s_entry, 0));
    entry->flags = asCFlag(VECTOR_ELT(s_entry, 1), GTK_TYPE_TARGET_FLAGS);
    entry->info = asCInteger(VECTOR_ELT(s_entry, 2));
    return(entry);
}
GtkFileFilterInfo*
asCGtkFileFilterInfo(USER_OBJECT_ s_info)
{
    GtkFileFilterInfo* info;
    info = (GtkFileFilterInfo*)R_alloc(1, sizeof(GtkFileFilterInfo));
    info->contains = (GtkFileFilterFlags)asCFlag(VECTOR_ELT(s_info, 0), GTK_TYPE_FILE_FILTER_FLAGS);
    info->filename = CHAR_DEREF(STRING_ELT(VECTOR_ELT(s_info, 1), 0));
    info->uri = CHAR_DEREF(STRING_ELT(VECTOR_ELT(s_info, 1), 1));
    info->display_name = CHAR_DEREF(STRING_ELT(VECTOR_ELT(s_info, 1), 2));
    info->mime_type = CHAR_DEREF(STRING_ELT(VECTOR_ELT(s_info, 1), 3));
    return(info);
}
GtkSettingsValue*
asCGtkSettingsValue(USER_OBJECT_ s_value)
{
    GtkSettingsValue* value;
    value = (GtkSettingsValue*)R_alloc(1, sizeof(GtkSettingsValue));
    value->origin = CHAR_DEREF(STRING_ELT(VECTOR_ELT(s_value, 0), 0));
    value->value = *asCGValue(VECTOR_ELT(s_value, 1));
    return(value);
}

GtkStockItem*
asCGtkStockItem(USER_OBJECT_ s_item)
{
    GtkStockItem* item;
    item = (GtkStockItem*)R_alloc(1, sizeof(GtkStockItem));
    item->stock_id = asCString(VECTOR_ELT(s_item, 0));
    item->label = asCString(VECTOR_ELT(s_item, 1));
    item->modifier = asCFlag(VECTOR_ELT(s_item,2), GDK_TYPE_MODIFIER_TYPE);
    item->keyval = asCNumeric(VECTOR_ELT(s_item,3));
    item->translation_domain = asCString(VECTOR_ELT(s_item, 4));
    return(item);
}
USER_OBJECT_
asRGtkStockItem(GtkStockItem *item)
{
    USER_OBJECT_ s_item;
	char *names[] = { "stock.id", "label", "modifier", "keyval", "translation.domain", NULL };
	
    PROTECT(s_item = NEW_LIST(5));

    SET_VECTOR_ELT(s_item, 0, asRString(item->stock_id));
    SET_VECTOR_ELT(s_item, 1, asRString(item->label));
    SET_VECTOR_ELT(s_item, 2, asRFlag(item->modifier, GDK_TYPE_MODIFIER_TYPE));
    SET_VECTOR_ELT(s_item, 3, asRInteger(item->keyval));
    SET_VECTOR_ELT(s_item, 4, asRString(item->translation_domain));

	
	SET_NAMES(s_item, asRStringArray(names));
	
    UNPROTECT(1);

    return(s_item);
}

GtkItemFactoryEntry*
asCGtkItemFactoryEntry(USER_OBJECT_ s_entry)
{
    return(R_createGtkItemFactoryEntry(s_entry, 1));
}
GtkItemFactoryEntry*
asCGtkItemFactoryEntry2(USER_OBJECT_ s_entry)
{
    return(R_createGtkItemFactoryEntry(s_entry, 2));
}

GtkItemFactoryEntry*
R_createGtkItemFactoryEntry(USER_OBJECT_ s_entry, guint cbtype)
{
    GtkItemFactoryEntry *entry;
    entry = (GtkItemFactoryEntry*)R_alloc(1, sizeof(GtkItemFactoryEntry));
    entry->path = CHAR_DEREF(STRING_ELT(VECTOR_ELT(s_entry, 0), 0));
    entry->accelerator = CHAR_DEREF(STRING_ELT(VECTOR_ELT(s_entry, 1), 0));

    if (cbtype == 1)
        entry->callback = (GtkItemFactoryCallback)S_GtkItemFactoryCallback1;
    else entry->callback = (GtkItemFactoryCallback)S_GtkItemFactoryCallback2;

    entry->callback_action = NUMERIC_DATA(VECTOR_ELT(s_entry, 3))[0];
    entry->item_type = CHAR_DEREF(STRING_ELT(VECTOR_ELT(s_entry, 4), 0));
    entry->extra_data = (gconstpointer)getPtrValue(VECTOR_ELT(s_entry, 5));

    return(entry);
}

GtkAllocation*
asCGtkAllocation(USER_OBJECT_ s_alloc)
{
    GtkAllocation* alloc = (GtkAllocation*)asCGdkRectangle(s_alloc);
    return(alloc);
}
USER_OBJECT_
asRGtkAllocation(GtkAllocation* alloc)
{
    USER_OBJECT_ s_alloc;
    PROTECT(s_alloc = asRGdkRectangle((GdkRectangle*)alloc));
    SET_CLASS(s_alloc, asRString("GtkAllocation"));
    UNPROTECT(1);
    return(s_alloc);
}

void 
R_gtk_object_destroyed(GtkObject *val, USER_OBJECT_ s_val)
{
	SET_CLASS(s_val, asRString("<invalid>"));
	R_ClearExternalPtr(s_val);
	g_object_unref(G_OBJECT(val));
}

void R_gtk_object_finalizer(USER_OBJECT_ extptr) {
	void *ptr = getPtrValue(extptr);
    /*Rprintf("finalizing a %s\n", asCString(GET_CLASS(extptr)));*/
    if (ptr) {
		g_signal_handlers_disconnect_by_func(ptr, R_gtk_object_destroyed, extptr);
		g_object_unref(ptr);
		R_ClearExternalPtr(extptr);
	}
}

/* All GtkObjects need to be sunk, because otherwise memory would leak if
   it got "lost" before being added to a parent. By sinking it, we own it,
   so we have to add the first non-floating reference and then register it
   for finalization. We also need to connect to the "destroy" signal in case
   it was explicitly destroyed. It is then our responsibility to release all
   references. When we do that, we also clear the "class" attribute so that
   the user can't use the object anymore, since it's invalid. The finalization
   step therefore not only releases our reference but also disconnects from
   the "destroy" signal since the R object is no longer valid.
*/
USER_OBJECT_
toRPointerWithSink(void *val, const char *type) {
	USER_OBJECT_ s_val;
	if (val) {
		g_object_ref(G_OBJECT(val));
		gtk_object_sink(GTK_OBJECT(val));
	}
	s_val = toRPointer(val, type);
	R_RegisterCFinalizer(s_val, R_gtk_object_finalizer);
	g_signal_connect(G_OBJECT(val), "destroy", G_CALLBACK(R_gtk_object_destroyed), s_val);
	return(s_val);
}

