#include "RGtk2/atk.h"

AtkAttributeSet*
asCAtkAttributeSet(USER_OBJECT_ s_set)
{
    GSList* list = NULL;
    int i;

    for (i = 0; i < GET_LENGTH(s_set); i++)
        list = g_slist_append(list, asCAtkAttribute(VECTOR_ELT(s_set, i)));

    return(list);
}

AtkAttribute*
asCAtkAttribute(USER_OBJECT_ s_attr)
{
    AtkAttribute* attr;

    attr = (AtkAttribute *)R_alloc(1, sizeof(AtkAttribute));

    attr->name = (gchar *)asCString(GET_NAMES(s_attr));
    attr->value = (gchar *)asCString(s_attr);

    return(attr);
}

USER_OBJECT_
asRAtkAttributeSet(AtkAttributeSet* set)
{
    USER_OBJECT_ list;
    GSList * cur = set;
    int l = g_slist_length(set), i;
    PROTECT(list = NEW_LIST(l));
    for (i = 0; i < l; i++) {
        SET_VECTOR_ELT(list, i, asRAtkAttribute((AtkAttribute *)cur));
        cur = g_slist_next(cur);
    }
    UNPROTECT(1);
    return list;
}
USER_OBJECT_
asRAtkAttribute(AtkAttribute* attr)
{
    USER_OBJECT_ s_attr;

    PROTECT(s_attr = NEW_CHARACTER(1));

    SET_VECTOR_ELT(s_attr, 0, asRString(attr->value));
    SET_NAMES(s_attr, asRString(attr->name));

    UNPROTECT(1);

    return(s_attr);
}

typedef AtkRectangle GdkRectangle;
GdkRectangle* asCGdkRectangle(USER_OBJECT_ s_rect);
USER_OBJECT_ asRGdkRectangle(GdkRectangle *rect);

AtkTextRectangle*
asCAtkTextRectangle(USER_OBJECT_ s_rect)
{
    return (AtkTextRectangle*)asCGdkRectangle(s_rect);
}

USER_OBJECT_
asRAtkTextRectangle(AtkTextRectangle *rect)
{
    return asRGdkRectangle((GdkRectangle*)rect);
}

AtkRectangle*
asCAtkRectangle(USER_OBJECT_ s_rect)
{
    return (AtkRectangle*)asCGdkRectangle(s_rect);
}
USER_OBJECT_
asRAtkRectangle(AtkRectangle *rect)
{
    return asRGdkRectangle((GdkRectangle*)rect);
}

USER_OBJECT_
asRAtkTextRange(AtkTextRange *range)
{
	USER_OBJECT_ s_range;
	static char *names[] = { "bounds", "start_offset", "end_offset", "content", NULL };
	
	PROTECT(s_range = NEW_LIST(4));
	
	SET_VECTOR_ELT(s_range, 0, asRAtkTextRectangle(&range->bounds));
	SET_VECTOR_ELT(s_range, 1, asRInteger(range->start_offset));
	SET_VECTOR_ELT(s_range, 2, asRInteger(range->end_offset));
	SET_VECTOR_ELT(s_range, 3, asRString(range->content));
	
	SET_NAMES(s_range, asRStringArray(names));
	
	UNPROTECT(1);
	
	return(s_range);
}

/* NOTE: this allocates memory on the GLib stack, not R's */
AtkTextRange *
asCAtkTextRange(USER_OBJECT_ s_obj)
{
  AtkTextRange * obj;

  obj = g_new(AtkTextRange, 1);

  obj->bounds = *(asCAtkTextRectangle(VECTOR_ELT(s_obj, 0)));
  obj->start_offset = ((gint)asCInteger(VECTOR_ELT(s_obj, 1)));
  obj->end_offset = ((gint)asCInteger(VECTOR_ELT(s_obj, 2)));
  obj->content = g_strdup((gchar*)asCString(VECTOR_ELT(s_obj, 3)));

  return(obj);
}

USER_OBJECT_
asRAtkKeyEventStruct(AtkKeyEventStruct * obj)
{
  USER_OBJECT_ s_obj;
  static gchar * names[] = { "type", "state", "keyval", "length", "string", "keycode", "timestamp", NULL };

  PROTECT(s_obj = NEW_LIST(7));

  SET_VECTOR_ELT(s_obj, 0, asRInteger(obj->type));
  SET_VECTOR_ELT(s_obj, 1, asRNumeric(obj->state));
  SET_VECTOR_ELT(s_obj, 2, asRNumeric(obj->keyval));
  SET_VECTOR_ELT(s_obj, 3, asRInteger(obj->length));
  SET_VECTOR_ELT(s_obj, 4, asRString(obj->string));
  SET_VECTOR_ELT(s_obj, 5, asRInteger(obj->keycode));
  SET_VECTOR_ELT(s_obj, 6, asRNumeric(obj->timestamp));

  SET_NAMES(s_obj, asRStringArray(names));
  SET_CLASS(s_obj, asRString("AtkKeyEventStruct"));

  UNPROTECT(1);

  return(s_obj);
}
