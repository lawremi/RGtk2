#include "RGtk2/gobject.h"

/* Transparents */

GTimeVal*
asCGTimeVal(USER_OBJECT_ s_timeval)
{
    GTimeVal* timeval = (GTimeVal*)R_alloc(1, sizeof(GTimeVal));
    timeval->tv_sec = NUMERIC_DATA(VECTOR_ELT(s_timeval, 0))[0];
    timeval->tv_usec = NUMERIC_DATA(VECTOR_ELT(s_timeval, 1))[0];
    return(timeval);
}

USER_OBJECT_
asRGTimeVal(const GTimeVal *timeval)
{
  USER_OBJECT_ s_timeval;
  
  PROTECT(s_timeval = NEW_LIST(2));
  
  SET_VECTOR_ELT(s_timeval, 0, asRNumeric(timeval->tv_sec));
  SET_VECTOR_ELT(s_timeval, 1, asRNumeric(timeval->tv_usec));
  
  UNPROTECT(1);
  
  return s_timeval;
}

GString*
asCGString(USER_OBJECT_ s_string) {
    return(g_string_new(asCString(s_string)));
}

GList*
toCGList(USER_OBJECT_ s_list, gboolean dup)
{
    GList* list = NULL;
    int i;

    for (i = 0; i < GET_LENGTH(s_list); i++) {
        SEXP s_element = VECTOR_ELT(s_list, i);
        gpointer element;
        if (IS_CHARACTER(s_element)) {
          element = (gpointer)asCString(s_element);
          if (dup && element) element = g_strdup(element);
        } else if (IS_INTEGER(s_element))
            element = GINT_TO_POINTER(INTEGER(s_element)[0]);
        else {
          element = (gpointer)getPtrValue(s_element);
          if (dup && G_IS_OBJECT(element)) g_object_ref(G_OBJECT(element));
        }
        list = g_list_append(list, element);
    }
    return(list);
}

USER_OBJECT_
asRGList(GList *glist, const gchar* type)
{
	return(asRGListWithFinalizer(glist, type, NULL));
}
USER_OBJECT_
asRGListWithRef(GList *glist, const gchar* type)
{
	GList *cur = glist;
	while(cur != NULL) {
		g_object_ref(cur->data);
		cur = g_list_next(cur);
	}
		
	return(asRGListWithFinalizer(glist, type, g_object_unref));
}
USER_OBJECT_
asRGListWithFinalizer(GList *glist, const gchar* type, RPointerFinalizer finalizer) {
    USER_OBJECT_ list;
    GList * cur = glist;
    int size = g_list_length(glist), i;
    PROTECT(list = NEW_LIST(size));
    for (i = 0; i < size; i++) {
        SET_VECTOR_ELT(list, i, toRPointerWithFinalizer(cur->data, type, finalizer));
        cur = g_list_next(cur);
    }
    UNPROTECT(1);
    return list;
}
USER_OBJECT_
asRGListConv(GList *glist, ElementConverter converter) {
    USER_OBJECT_ list;
    GList * cur = glist;
    int size = g_list_length(glist), i;
    PROTECT(list = NEW_LIST(size));
    for (i = 0; i < size; i++) {
        SET_VECTOR_ELT(list, i, converter(cur->data));
        cur = g_list_next(cur);
    }
    UNPROTECT(1);
    return list;
}

GSList*
toCGSList(USER_OBJECT_ s_list, gboolean dup)
{
    GSList* list = NULL;
    int i;

    for (i = 0; i < GET_LENGTH(s_list); i++) {
        SEXP s_element = VECTOR_ELT(s_list, i);
        gpointer element;
        if (IS_CHARACTER(s_element)) {
            element = (gpointer)asCString(s_element);
            if (dup && element) element = g_strdup(element);
        } else if (IS_INTEGER(s_element))
            element = GINT_TO_POINTER(INTEGER(s_element)[0]);
        else {
          element = (gpointer)getPtrValue(s_element);
          if (dup && G_IS_OBJECT(element)) g_object_ref(G_OBJECT(element));
        }
        list = g_slist_append(list, element);
    }

    return(list);
}

USER_OBJECT_
asRGSList(GSList *gslist, const gchar* type)
{
	return(asRGSListWithFinalizer(gslist, type, NULL));
}
USER_OBJECT_
asRGSListWithRef(GSList *gslist, const gchar* type)
{
	GSList *cur = gslist;
	while(cur != NULL) {
		g_object_ref(cur->data);
		cur = g_slist_next(cur);
	}
		
	return(asRGSListWithFinalizer(gslist, type, g_object_unref));
}
USER_OBJECT_
asRGSListWithFinalizer(GSList *gslist, const gchar* type, RPointerFinalizer finalizer) { 
    USER_OBJECT_ list;
    GSList * cur = gslist;
    int l = g_slist_length(gslist), i;
    PROTECT(list = NEW_LIST(l));
    for (i = 0; i < l; i++) {
        USER_OBJECT_ element;
        element = toRPointerWithFinalizer(cur->data, type, finalizer);
        SET_VECTOR_ELT(list, i, element);
        cur = g_slist_next(cur);
    }
    UNPROTECT(1);
    return list;
}
USER_OBJECT_
asRGSListConv(GSList *gslist, ElementConverter converter) {
    USER_OBJECT_ list;
    GSList * cur = gslist;
    int size = g_slist_length(gslist), i;
    PROTECT(list = NEW_LIST(size));
    for (i = 0; i < size; i++) {
        SET_VECTOR_ELT(list, i, converter(cur->data));
        cur = g_slist_next(cur);
    }
    UNPROTECT(1);
    return list;
}

/* convenience methods for freeing string members of g(s)lists */
void
GListFreeStrings(GList *glist)
{
	GList *cur = glist;
	while(cur) {
		g_free(cur->data);
		cur = g_list_next(cur);
	}
}
void
GSListFreeStrings(GSList *gslist)
{
	GSList *cur = gslist;
	while(cur) {
		g_free(cur->data);
		cur = g_slist_next(cur);
	}
	
}

USER_OBJECT_
R_gQuarkFromString(USER_OBJECT_ s_string)
{
	const gchar *string = asCString(s_string);
	GQuark quark = g_quark_from_string(string);
	return(asRGQuark(quark));
}

GQuark
asCGQuark(USER_OBJECT_ sobj) {
  if (!inherits(sobj, "GQuark")) {
      Rf_error("invalid GQuark value");
  }
  return (GQuark)asInteger(sobj);
}

USER_OBJECT_
asRGQuark(GQuark val)
{
  USER_OBJECT_ ans;
  const gchar *tmp;
  PROTECT(ans = ScalarInteger((gint32)val));

  tmp = g_quark_to_string(val);
  if(tmp) {
      setAttrib(ans, install("name"), PROTECT(asRString(tmp)));
      UNPROTECT(1);
  }
  SET_CLASS(ans, asRString("GQuark"));
  UNPROTECT(1);

  return(ans);
}

GError *
asCGError(USER_OBJECT_ s_error)
{
  GError *error;
  
  if (s_error == NULL_USER_OBJECT)
    return NULL;
  
  error = g_error_new(asCNumeric(VECTOR_ELT(s_error, 0)),
                      asCInteger(VECTOR_ELT(s_error, 1)), "%s",
                      asCString(VECTOR_ELT(s_error, 2)));
  
  return error;
}

USER_OBJECT_
asRGError(GError *error)
{
    USER_OBJECT_ s_error;
    USER_OBJECT_ names;
    static gchar * classes[] = { "GError", "simpleError", "error", "condition",
                                 NULL };
    
    if (!error)
        return(NULL_USER_OBJECT);

    PROTECT(s_error = NEW_LIST(3));

    SET_VECTOR_ELT(s_error, 0, asRGQuark(error->domain));
    SET_VECTOR_ELT(s_error, 1, asRInteger(error->code));
    SET_VECTOR_ELT(s_error, 2, asRString(error->message));

    PROTECT(names = NEW_CHARACTER(3));

    SET_STRING_ELT(names, 0, COPY_TO_USER_STRING("domain"));
    SET_STRING_ELT(names, 1, COPY_TO_USER_STRING("code"));
    SET_STRING_ELT(names, 2, COPY_TO_USER_STRING("message"));

    SET_NAMES(s_error, names);

    SET_CLASS(s_error, asRStringArray(classes));
    
    UNPROTECT(2);

    return(s_error);
}

/* Manual User Funcs */
void
S_GCompareFunc(gconstpointer s_a, gconstpointer s_data)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, ((R_CallbackData *)s_data)->function);
  tmp = CDR(tmp);

  SETCAR(tmp, (USER_OBJECT_)s_a);
  tmp = CDR(tmp);
  SETCAR(tmp, ((R_CallbackData *)s_data)->data);
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);
}

gboolean
S_GSourceFunc(gpointer data)
{
    R_CallbackData *cbdata = (R_CallbackData *)data;
    gboolean val = FALSE;
    SEXP e, sval;
    int errorOccurred;

    PROTECT(e = allocVector(LANGSXP, 1 + (cbdata->useData == TRUE ? 1 : 0)));

    SETCAR(e, cbdata->function);
    if(cbdata->useData) {
        SETCAR(CDR(e), cbdata->data);
    }
    sval = R_tryEval(e, R_GlobalEnv, &errorOccurred);

    if(!errorOccurred) {
    if(TYPEOF(sval) != LGLSXP) {
        warning("Handler didn't return a logical value. Removing it.");
        val = FALSE;
    } else
        val = LOGICAL_DATA(sval)[0];
    }
    UNPROTECT(1);

    return(val);
}

/* Main Loop */

USER_OBJECT_
R_addGTimeoutHandler(USER_OBJECT_ sinterval, USER_OBJECT_ sfunc, USER_OBJECT_ data, USER_OBJECT_ useData)
{

    USER_OBJECT_ ans;
    guint id;
    R_CallbackData *cbdata;

    cbdata = (R_CallbackData*) g_malloc(sizeof(R_CallbackData));

    R_PreserveObject(sfunc);
    cbdata->function = sfunc;
    if(LOGICAL_DATA(useData)[0]) {
    R_PreserveObject(data);
        cbdata->data = data;
        cbdata->useData = TRUE;
    } else {
        cbdata->useData = FALSE;
        cbdata->data = NULL;
    }

    id = g_timeout_add_full(G_PRIORITY_DEFAULT_IDLE, INTEGER_DATA(sinterval)[0],
            (GSourceFunc) S_GSourceFunc, cbdata, (GDestroyNotify)R_freeCBData);

    PROTECT(ans = NEW_INTEGER(1));
    INTEGER_DATA(ans)[0] = id;
    SET_CLASS(ans, asRString("GTimeoutId"));
    UNPROTECT(1);
    return(ans);
}


USER_OBJECT_
R_removeGSource(USER_OBJECT_ id)
{
    gboolean ans;
    ans = g_source_remove(INTEGER_DATA(id)[0]);

    return(asRLogical(ans));
}

USER_OBJECT_
R_addGIdleHandler(USER_OBJECT_ sfunc, USER_OBJECT_ data, USER_OBJECT_ useData)
{
    USER_OBJECT_ ans;
    guint id;
    R_CallbackData *cbdata;

    cbdata = (R_CallbackData*) g_malloc(sizeof(R_CallbackData));

    R_PreserveObject(sfunc);
    cbdata->function = sfunc;
    if(LOGICAL_DATA(useData)[0]) {
        R_PreserveObject(data);
        cbdata->data = data;
        cbdata->useData = TRUE;
    } else {
        cbdata->useData = FALSE;
        cbdata->data = NULL;
    }

    id = g_idle_add_full(G_PRIORITY_DEFAULT_IDLE, (GSourceFunc) S_GSourceFunc,
            cbdata, (GDestroyNotify)R_freeCBData);

    PROTECT(ans = NEW_INTEGER(1));
    INTEGER_DATA(ans)[0] = id;
    SET_CLASS(ans, asRString("GIdleId"));
    UNPROTECT(1);
    return(ans);
}

/* The G_FILE_ERROR quark */
USER_OBJECT_
S_g_file_error_quark()
{

	GQuark ans;
	USER_OBJECT_ _result = NULL_USER_OBJECT;

	ans = g_file_error_quark();

	_result = asRGQuark(ans);

	return(_result);
}

