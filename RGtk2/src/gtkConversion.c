#include "conversion.h"
#include "gtkUserFuncs.h"
#include "utils.h"


GtkTargetEntry*
asGtkTargetEntry(USER_OBJECT_ s_entry) {
    GtkTargetEntry* entry;
    entry = (GtkTargetEntry*)R_alloc(1, sizeof(GtkTargetEntry));
    entry->target = asString(VECTOR_ELT(s_entry, 0));
    entry->flags = asFlag(VECTOR_ELT(s_entry, 1), GTK_TYPE_TARGET_FLAGS);
    entry->info = asInteger(VECTOR_ELT(s_entry, 2));
    return(entry);
}
GtkFileFilterInfo*
asGtkFileFilterInfo(USER_OBJECT_ s_info)
{
    GtkFileFilterInfo* info;
    info = (GtkFileFilterInfo*)R_alloc(1, sizeof(GtkFileFilterInfo));
    info->contains = (GtkFileFilterFlags)asFlag(VECTOR_ELT(s_info, 0), GTK_TYPE_FILE_FILTER_FLAGS);
    info->filename = CHAR_DEREF(STRING_ELT(VECTOR_ELT(s_info, 1), 0));
    info->uri = CHAR_DEREF(STRING_ELT(VECTOR_ELT(s_info, 1), 1));
    info->display_name = CHAR_DEREF(STRING_ELT(VECTOR_ELT(s_info, 1), 2));
    info->mime_type = CHAR_DEREF(STRING_ELT(VECTOR_ELT(s_info, 1), 3));
    return(info);
}
GtkSettingsValue*
asGtkSettingsValue(USER_OBJECT_ s_value)
{
    GtkSettingsValue* value;
    value = (GtkSettingsValue*)R_alloc(1, sizeof(GtkSettingsValue));
    value->origin = CHAR_DEREF(STRING_ELT(VECTOR_ELT(s_value, 0), 0));
    value->value = *asGValue(VECTOR_ELT(s_value, 1));
    return(value);
}

GtkStockItem*
asGtkStockItem(USER_OBJECT_ s_item)
{
    GtkStockItem* item;
    item = (GtkStockItem*)R_alloc(1, sizeof(GtkStockItem));
    item->stock_id = asString(VECTOR_ELT(s_item, 0));
    item->label = asString(VECTOR_ELT(s_item, 1));
    item->modifier = asFlag(VECTOR_ELT(s_item,2), GDK_TYPE_MODIFIER_TYPE);
    item->keyval = asNumeric(VECTOR_ELT(s_item,3));
    item->translation_domain = asString(VECTOR_ELT(s_item, 4));
    return(item);
}
USER_OBJECT_
asRGtkStockItem(GtkStockItem *item)
{
    USER_OBJECT_ s_item;

    PROTECT(s_item = NEW_LIST(5));

    SET_VECTOR_ELT(s_item, 0, asRString(item->stock_id));
    SET_VECTOR_ELT(s_item, 1, asRString(item->label));
    SET_VECTOR_ELT(s_item, 2, asRFlag(item->modifier, GDK_TYPE_MODIFIER_TYPE));
    SET_VECTOR_ELT(s_item, 3, asRInteger(item->keyval));
    SET_VECTOR_ELT(s_item, 4, asRString(item->translation_domain));

	char *names[] = { "stock.id", "label", "modifier", "keyval", "translation.domain", NULL };
	SET_NAMES(s_item, asRStringArray(names));
	
    UNPROTECT(1);

    return(s_item);
}

GtkItemFactoryEntry*
asGtkItemFactoryEntry(USER_OBJECT_ s_entry)
{
    return(R_createGtkItemFactoryEntry(s_entry, 1));
}
GtkItemFactoryEntry*
asGtkItemFactoryEntry2(USER_OBJECT_ s_entry)
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
asGtkAllocation(USER_OBJECT_ s_alloc)
{
    GtkAllocation* alloc = (GtkAllocation*)asGdkRectangle(s_alloc);
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

