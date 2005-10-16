#include "conversion.h"

AtkAttributeSet*
asCAtkAttributeSet(USER_OBJECT_ s_set)
{
    GSList* list = NULL;
    int i;

    for (i = 0; i < GET_LENGTH(s_set); i++)
        g_slist_append(list, asCAtkAttribute(VECTOR_ELT(s_set, i)));

    return(list);
}

AtkAttribute*
asCAtkAttribute(USER_OBJECT_ s_attr)
{
    AtkAttribute* attr;

    attr = (AtkAttribute *)R_alloc(1, sizeof(AtkAttribute));

    attr->name = asCString(GET_NAMES(s_attr));
    attr->value = asCString(s_attr);

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

USER_OBJECT_
asRAtkTextRange(AtkTextRange *range)
{
	USER_OBJECT_ s_range;
	
	PROTECT(s_range = NEW_LIST(4));
	
	SET_VECTOR_ELT(s_range, 0, asRAtkTextRectangle(&range->bounds));
	SET_VECTOR_ELT(s_range, 1, asRInteger(range->start_offset));
	SET_VECTOR_ELT(s_range, 2, asRInteger(range->end_offset));
	SET_VECTOR_ELT(s_range, 3, asRString(range->content));
	
	static char *names[] = { "bounds", "start_offset", "end_offset", "content", NULL };
	SET_NAMES(s_range, asRStringArray(names));
	
	UNPROTECT(1);
	
	return(s_range);
}
