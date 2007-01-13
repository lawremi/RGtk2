#include "RGtk2/gobject.h"

char **
asCStringArray(USER_OBJECT_ svec)
{
    char **els = NULL;

    int i, n;

    n = GET_LENGTH(svec);
    if(n > 0) {
    els = (char **) R_alloc(n+1, sizeof(char*));
    for(i = 0; i < n; i++) {
        els[i] = asCString(STRING_ELT(svec, i));
    }
        els[n] = NULL;
    }

    return(els);
}

gchar *
asCString(USER_OBJECT_ s_str)
{
  if (s_str == NULL_USER_OBJECT)
    return NULL;
  if (IS_VECTOR(s_str)) {
    if (GET_LENGTH(s_str) == 0)
      return("");
    s_str = STRING_ELT(s_str, 0);
  }
  return(CHAR_DEREF(s_str));
  /*return(CHAR_DEREF(STRING_ELT(s_str, 0)));*/
}
gchar
asCCharacter(USER_OBJECT_ s_char)
{
  gchar c = '\0';
  gchar *str = asCString(s_char);
  if (str)
    c = str[0];
  return(c);
}

USER_OBJECT_
asRCharacter(char c)
{
    char str[] = { c, '\0' };
    return(asRString(str));
}
USER_OBJECT_
asRString(const char *val)
{
  USER_OBJECT_ ans;
  
  if (!val)
	  return(NULL_USER_OBJECT);
  
  PROTECT(ans = NEW_CHARACTER(1));
  if(val)
      SET_STRING_ELT(ans, 0, COPY_TO_USER_STRING(val));
  UNPROTECT(1);

  return(ans);
}

USER_OBJECT_
asREnum(int value, GType etype)
{
    USER_OBJECT_ ans, names;
    GEnumValue *evalue;
    PROTECT(ans = NEW_INTEGER(1));
    INTEGER_DATA(ans)[0] = value;

    if (!(evalue = g_enum_get_value(g_type_class_ref(etype), value))) {
        PROBLEM "Unknown enum value %d", value
        ERROR;
    }

    PROTECT(names = NEW_CHARACTER(1));
    SET_STRING_ELT(names, 0, COPY_TO_USER_STRING(evalue->value_name));
    SET_NAMES(ans, names);

    PROTECT(names = NEW_CHARACTER(2));
    SET_STRING_ELT(names, 0, COPY_TO_USER_STRING(g_type_name(etype)));
    SET_STRING_ELT(names, 1, COPY_TO_USER_STRING("enum"));
    SET_CLASS(ans, names);

    UNPROTECT(3);

    return(ans);
}

USER_OBJECT_
asRFlag(guint value, GType ftype)
{
    USER_OBJECT_ ans, names;
    PROTECT(ans = NEW_INTEGER(1));
    INTEGER_DATA(ans)[0] = value;

    PROTECT(names = NEW_CHARACTER(2));
    SET_STRING_ELT(names, 0, COPY_TO_USER_STRING(g_type_name(ftype)));
    SET_STRING_ELT(names, 1, COPY_TO_USER_STRING("flag"));
    SET_CLASS(ans, names);

    UNPROTECT(2);
    return(ans);
}

void RGtk_finalizer(USER_OBJECT_ extptr) {
    void *ptr = getPtrValue(extptr);
    /*Rprintf("finalizing a %s\n", asCString(GET_CLASS(extptr)));*/
    if (ptr) {
        ((RPointerFinalizer)getPtrValue(R_ExternalPtrTag(extptr)))(ptr);
        R_ClearExternalPtr(extptr);
    }
}

USER_OBJECT_
toRPointerWithFinalizer(gconstpointer val, const gchar *typeName, RPointerFinalizer finalizer)
{
    USER_OBJECT_ ans;
    USER_OBJECT_ r_finalizer = NULL_USER_OBJECT;
    USER_OBJECT_ klass = NULL, rgtk_class;
    int i = 0;
    GType type = 0;

    if(!val)
       return(NULL_USER_OBJECT);

    if (finalizer) {
        PROTECT(r_finalizer = R_MakeExternalPtr(finalizer, NULL_USER_OBJECT, NULL_USER_OBJECT));
    }
    PROTECT(ans = R_MakeExternalPtr((gpointer)val, r_finalizer, NULL_USER_OBJECT));
    if (finalizer) {
        R_RegisterCFinalizer(ans, RGtk_finalizer);
    }
    if (typeName)
        type = g_type_from_name(typeName);
    if(type) {
        if (G_TYPE_IS_INSTANTIATABLE(type) || G_TYPE_IS_INTERFACE(type))
            type = G_TYPE_FROM_INSTANCE(val);
        if (G_TYPE_IS_DERIVED(type)) {
            setAttrib(ans, install("interfaces"), R_internal_getInterfaces(type));
            PROTECT(klass = R_internal_getGTypeHierarchy(type));
        }
    }
    if (!klass && typeName) {
        PROTECT(klass = asRString(typeName));
    }

    if (klass) { /* so much trouble just to add "RGtkObject" onto the end */
        PROTECT(rgtk_class = NEW_CHARACTER(GET_LENGTH(klass)+1));
        for (i = 0; i < GET_LENGTH(klass); i++)
            SET_STRING_ELT(rgtk_class, i, STRING_ELT(klass, i));
    } else {
        PROTECT(rgtk_class = NEW_CHARACTER(1));
    }

    SET_STRING_ELT(rgtk_class, i, COPY_TO_USER_STRING("RGtkObject"));
    SET_CLASS(ans, rgtk_class);

    if (klass)
        UNPROTECT(1);
    if (finalizer)
        UNPROTECT(1);
    UNPROTECT(2);

    return(ans);
}

USER_OBJECT_
toRPointerWithRef(gconstpointer val, const char *type) {
    if (val)
        g_object_ref(G_OBJECT(val));
    return(toRPointerWithFinalizer(val, type, g_object_unref));
}

void *
getPtrValueWithRef(USER_OBJECT_ sval)
{
  void *val = getPtrValue(sval);
  if (val)
    g_object_ref(val);
  return val;
}

/* enum and flag stuff - experimental */

gint
R_asEnum(USER_OBJECT_ s_enum, USER_OBJECT_ etype)
{
    GType type = g_type_from_name(asCString(etype));
    if (!type) {
        PROBLEM "Invalid enum type %s", asCString(etype)
        ERROR;
    }
    return(asCEnum(s_enum, type));
}
gint
asCEnum(USER_OBJECT_ s_enum, GType etype)
{
    GEnumClass *eclass = g_type_class_ref(etype);
    GEnumValue *evalue = NULL;
    gint eval = 0;

    if (IS_INTEGER(s_enum) || IS_NUMERIC(s_enum)) {
        evalue = g_enum_get_value(eclass, asCInteger(s_enum));
    } else if (IS_CHARACTER(s_enum)) {
        const gchar* ename = asCString(s_enum);
        evalue = g_enum_get_value_by_name(eclass, ename);
        if (!evalue)
            evalue = g_enum_get_value_by_nick(eclass, ename);
        if (!evalue)
            evalue = g_enum_get_value(eclass, atoi(ename));
    }

    if (!evalue) {
        PROBLEM "Could not parse enum value %s", asCString(s_enum)
        ERROR;
    } else eval = evalue->value;

    return(eval);
}

guint
R_asFlag(USER_OBJECT_ s_flag, USER_OBJECT_ ftype)
{
    GType type = g_type_from_name(asCString(ftype));
    if (!type) {
        PROBLEM "Invalid flag type %s", asCString(ftype)
        ERROR;
    }
    return(asCFlag(s_flag, type));
}
guint
asCFlag(USER_OBJECT_ s_flag, GType ftype)
{
    GFlagsClass* fclass = g_type_class_ref(ftype);
    guint flags = 0;

    if (IS_INTEGER(s_flag) || IS_NUMERIC(s_flag)) {
        if (asCNumeric(s_flag) > fclass->mask) {
            PROBLEM "The flags value %f is too high", asCNumeric(s_flag)
            ERROR;
        }
        flags = asCNumeric(s_flag);
    } else {
        int i;
        for (i = 0; i < GET_LENGTH(s_flag); i++) {
            const gchar *fname = CHAR_DEREF(STRING_ELT(s_flag, i));
            /*Rprintf("Searching for flag value %s\n", fname);*/
            GFlagsValue *fvalue = g_flags_get_value_by_name(fclass, fname);
            if (!fvalue)
                fvalue = g_flags_get_value_by_nick(fclass, fname);
            if (!fvalue && atoi(fname) <= fclass->mask) {
                flags |= atoi(fname);
                continue;
            }
            if (!fvalue) {
                PROBLEM "Could not find flag by name %s", fname
                ERROR;
            }
            /*Rprintf("Found: %d\n", fvalue->value);*/
            flags |= fvalue->value;
        }
    }

    return(flags);
}

