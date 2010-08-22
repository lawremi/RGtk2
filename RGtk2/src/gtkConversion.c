#include "RGtk2/gtk.h"


GtkTargetEntry*
asCGtkTargetEntry(USER_OBJECT_ s_entry) {
    GtkTargetEntry* entry;
    entry = (GtkTargetEntry*)R_alloc(1, sizeof(GtkTargetEntry));
    entry->target = (gchar *)asCString(VECTOR_ELT(s_entry, 0));
    entry->flags = asCFlag(VECTOR_ELT(s_entry, 1), GTK_TYPE_TARGET_FLAGS);
    entry->info = asCInteger(VECTOR_ELT(s_entry, 2));
    return(entry);
}
USER_OBJECT_
asRGtkTargetEntry(const GtkTargetEntry * obj)
{
  USER_OBJECT_ s_obj;
  static gchar * names[] = { "target", "flags", "info", NULL };

  PROTECT(s_obj = NEW_LIST(3));

  SET_VECTOR_ELT(s_obj, 0, asRString(obj->target));
  SET_VECTOR_ELT(s_obj, 1, asRNumeric(obj->flags));
  SET_VECTOR_ELT(s_obj, 2, asRInteger(obj->info));

  SET_NAMES(s_obj, asRStringArray(names));
  SET_CLASS(s_obj, asRString("GtkTargetEntry"));

  UNPROTECT(1);

  return(s_obj);
}
GtkFileFilterInfo*
asCGtkFileFilterInfo(USER_OBJECT_ s_info)
{
    GtkFileFilterInfo* info;
    info = (GtkFileFilterInfo*)R_alloc(1, sizeof(GtkFileFilterInfo));
    info->contains = (GtkFileFilterFlags)asCFlag(VECTOR_ELT(s_info, 0), GTK_TYPE_FILE_FILTER_FLAGS);
    info->filename = asCString(VECTOR_ELT(s_info, 1));
    info->uri = asCString(STRING_ELT(VECTOR_ELT(s_info, 1), 1));
    info->display_name = asCString(STRING_ELT(VECTOR_ELT(s_info, 1), 2));
    info->mime_type = asCString(STRING_ELT(VECTOR_ELT(s_info, 1), 3));
    return(info);
}
USER_OBJECT_
asRGtkFileFilterInfo(const GtkFileFilterInfo * obj)
{
  USER_OBJECT_ s_obj;
  static gchar * names[] = { "contains", "filename", "uri", "display_name", "mime_type", NULL };

  PROTECT(s_obj = allocVector(VECSXP, 5));

  SET_VECTOR_ELT(s_obj, 0, asRFlag(obj->contains, GTK_TYPE_FILE_FILTER_FLAGS));
  SET_VECTOR_ELT(s_obj, 1, asRString(obj->filename));
  SET_VECTOR_ELT(s_obj, 2, asRString(obj->uri));
  SET_VECTOR_ELT(s_obj, 3, asRString(obj->display_name));
  SET_VECTOR_ELT(s_obj, 4, asRString(obj->mime_type));

  SET_NAMES(s_obj, asRStringArray(names));
  SET_CLASS(s_obj, asRString("GtkFileFilterInfo"));

  UNPROTECT(1);

  return(s_obj);
}
GtkSettingsValue*
asCGtkSettingsValue(USER_OBJECT_ s_value)
{
    GtkSettingsValue* value;
    value = (GtkSettingsValue*)R_alloc(1, sizeof(GtkSettingsValue));
    value->origin = (char *)asCString(VECTOR_ELT(s_value, 0));
    value->value = *asCGValue(VECTOR_ELT(s_value, 1));
    return(value);
}

GtkStockItem*
asCGtkStockItem(USER_OBJECT_ s_item)
{
    GtkStockItem* item;
    item = (GtkStockItem*)R_alloc(1, sizeof(GtkStockItem));
    item->stock_id = (gchar *)asCString(VECTOR_ELT(s_item, 0));
    item->label = (gchar *)asCString(VECTOR_ELT(s_item, 1));
    item->modifier = asCFlag(VECTOR_ELT(s_item,2), GDK_TYPE_MODIFIER_TYPE);
    item->keyval = asCNumeric(VECTOR_ELT(s_item,3));
    item->translation_domain = (gchar *)asCString(VECTOR_ELT(s_item, 4));
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
    entry->path = (gchar *)asCString(VECTOR_ELT(s_entry, 0));
    entry->accelerator = (gchar *)asCString(VECTOR_ELT(s_entry, 1));

    if (cbtype == 1)
        entry->callback = (GtkItemFactoryCallback)S_GtkItemFactoryCallback1;
    else entry->callback = (GtkItemFactoryCallback)S_GtkItemFactoryCallback2;

    entry->callback_action = NUMERIC_DATA(VECTOR_ELT(s_entry, 3))[0];
    entry->item_type = (gchar *)asCString(VECTOR_ELT(s_entry, 4));
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

USER_OBJECT_
asRGtkAccelKey(GtkAccelKey * obj)
{
  USER_OBJECT_ s_obj;
  static gchar * names[] = { "accel_key", "accel_mods", "accel_flags", NULL };

  PROTECT(s_obj = NEW_LIST(3));

  SET_VECTOR_ELT(s_obj, 0, asRNumeric(obj->accel_key));
  SET_VECTOR_ELT(s_obj, 1, asRFlag(obj->accel_mods, GDK_TYPE_MODIFIER_TYPE));
  SET_VECTOR_ELT(s_obj, 2, asRNumeric(obj->accel_flags));

  SET_NAMES(s_obj, asRStringArray(names));
  SET_CLASS(s_obj, asRString("GtkAccelKey"));

  UNPROTECT(1);

  return(s_obj);
}

#if GTK_CHECK_VERSION(2,10,0)
GtkRecentFilterInfo *
asCGtkRecentFilterInfo(USER_OBJECT_ s_obj)
{
  GtkRecentFilterInfo * obj;

  obj = (GtkRecentFilterInfo *)R_alloc(1, sizeof(GtkRecentFilterInfo));

  obj->contains = (GtkRecentFilterFlags)asCFlag(VECTOR_ELT(s_obj, 0), GTK_TYPE_RECENT_FILTER_FLAGS);
  obj->uri = (const gchar*)asCString(VECTOR_ELT(s_obj, 1));
  obj->display_name = (const gchar*)asCString(VECTOR_ELT(s_obj, 2));
  obj->mime_type = (const gchar*)asCString(VECTOR_ELT(s_obj, 3));
  obj->applications = (const gchar**)asCStringArray(VECTOR_ELT(s_obj, 4));
  obj->groups = (const gchar**)asCStringArray(VECTOR_ELT(s_obj, 5));
  obj->age = (gint)asCInteger(VECTOR_ELT(s_obj, 6));

  return(obj);
}
USER_OBJECT_
asRGtkRecentFilterInfo(const GtkRecentFilterInfo * obj)
{
  USER_OBJECT_ s_obj;
  static gchar * names[] = { "contains", "uri", "display_name", "mime_type", "applications", "groups", "age", NULL };

  PROTECT(s_obj = NEW_LIST(7));

  SET_VECTOR_ELT(s_obj, 0, asRFlag(obj->contains, GTK_TYPE_RECENT_FILTER_FLAGS));
  SET_VECTOR_ELT(s_obj, 1, asRString(obj->uri));
  SET_VECTOR_ELT(s_obj, 2, asRString(obj->display_name));
  SET_VECTOR_ELT(s_obj, 3, asRString(obj->mime_type));
  SET_VECTOR_ELT(s_obj, 4, asRStringArray(obj->applications));
  SET_VECTOR_ELT(s_obj, 5, asRStringArray(obj->groups));
  SET_VECTOR_ELT(s_obj, 6, asRInteger(obj->age));

  SET_NAMES(s_obj, asRStringArray(names));
  SET_CLASS(s_obj, asRString("GtkRecentFilterInfo"));

  UNPROTECT(1);

  return(s_obj);
}
GtkRecentData *
asCGtkRecentData(USER_OBJECT_ s_obj)
{
  GtkRecentData * obj;

  obj = (GtkRecentData *)R_alloc(1, sizeof(GtkRecentData));

  obj->display_name = (gchar*)asCString(VECTOR_ELT(s_obj, 0));
  obj->description = (gchar*)asCString(VECTOR_ELT(s_obj, 1));
  obj->mime_type = (gchar*)asCString(VECTOR_ELT(s_obj, 2));
  obj->app_name = (gchar*)asCString(VECTOR_ELT(s_obj, 3));
  obj->app_exec = (gchar*)asCString(VECTOR_ELT(s_obj, 4));
  obj->groups = (gchar**)asCStringArray(VECTOR_ELT(s_obj, 5));
  obj->is_private = (gboolean)asCLogical(VECTOR_ELT(s_obj, 6));

  return(obj);
}
GtkPageRange *
asCGtkPageRange(USER_OBJECT_ s_obj)
{
  GtkPageRange * obj;

  obj = (GtkPageRange *)R_alloc(1, sizeof(GtkPageRange));

  obj->start = (gint)asCInteger(VECTOR_ELT(s_obj, 0));
  obj->end = (gint)asCInteger(VECTOR_ELT(s_obj, 1));

  return(obj);
}
USER_OBJECT_
asRGtkPageRange(GtkPageRange * obj)
{
  USER_OBJECT_ s_obj;
  static gchar * names[] = { "start", "end", NULL };

  PROTECT(s_obj = NEW_LIST(2));

  SET_VECTOR_ELT(s_obj, 0, asRInteger(obj->start));
  SET_VECTOR_ELT(s_obj, 1, asRInteger(obj->end));

  SET_NAMES(s_obj, asRStringArray(names));
  SET_CLASS(s_obj, asRString("GtkPageRange"));

  UNPROTECT(1);

  return(s_obj);
}
#endif
