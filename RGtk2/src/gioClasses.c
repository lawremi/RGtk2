#include "RGtk2/gioClasses.h"
#if GIO_CHECK_VERSION(2, 16, 0)
static SEXP S_GAppLaunchContext_symbol;

static char*
S_virtual_gapp_launch_context_get_display(GAppLaunchContext* s_object, GAppInfo* s_info, GList* s_files)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 4));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GAppLaunchContext_symbol, S_GOBJECT_GET_ENV(s_object)), 0));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GAppLaunchContext")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_info, "GAppInfo"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRGListWithRef(s_files, "GFile"));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((char*)0));
  return(((char*)g_strdup(asCString(s_ans))));
}

static char*
S_virtual_gapp_launch_context_get_startup_notify_id(GAppLaunchContext* s_object, GAppInfo* s_info, GList* s_files)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 4));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GAppLaunchContext_symbol, S_GOBJECT_GET_ENV(s_object)), 1));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GAppLaunchContext")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_info, "GAppInfo"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRGListWithRef(s_files, "GFile"));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((char*)0));
  return(((char*)g_strdup(asCString(s_ans))));
}

static void
S_virtual_gapp_launch_context_launch_failed(GAppLaunchContext* s_object, const char* s_startup_notify_id)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GAppLaunchContext_symbol, S_GOBJECT_GET_ENV(s_object)), 2));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GAppLaunchContext")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRString(s_startup_notify_id));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}
void
S_gapp_launch_context_class_init(GAppLaunchContextClass * c, SEXP e)
{
  SEXP s;

  S_GAppLaunchContext_symbol = install("GAppLaunchContext");
  s = PROTECT(findVar(S_GAppLaunchContext_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GAppLaunchContextClass)) = e;

  S_gobject_class_init(((GObjectClass *)c), e);

  UNPROTECT(1);

#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 0) != NULL_USER_OBJECT)
    c->get_display = S_virtual_gapp_launch_context_get_display;
#endif
#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 1) != NULL_USER_OBJECT)
    c->get_startup_notify_id = S_virtual_gapp_launch_context_get_startup_notify_id;
#endif
#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 2) != NULL_USER_OBJECT)
    c->launch_failed = S_virtual_gapp_launch_context_launch_failed;
#endif
}
#endif
USER_OBJECT_
S_gapp_launch_context_class_get_display(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_info, USER_OBJECT_ s_files)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GAppLaunchContextClass* object_class = ((GAppLaunchContextClass*)getPtrValue(s_object_class));
  GAppLaunchContext* object = G_APP_LAUNCH_CONTEXT(getPtrValue(s_object));
  GAppInfo* info = G_APP_INFO(getPtrValue(s_info));
  GList* files = ((GList*)asCArrayRef(s_files, GList, asCGList));

  char* ans;

  ans = object_class->get_display(object, info, files);

  _result = asRString(ans);
    CLEANUP(g_free, ans);;
    CLEANUP(g_list_free, ((GList*)files));;
#else
  error("gapp_launch_context_get_display exists only in gio >= 2.16.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gapp_launch_context_class_get_startup_notify_id(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_info, USER_OBJECT_ s_files)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GAppLaunchContextClass* object_class = ((GAppLaunchContextClass*)getPtrValue(s_object_class));
  GAppLaunchContext* object = G_APP_LAUNCH_CONTEXT(getPtrValue(s_object));
  GAppInfo* info = G_APP_INFO(getPtrValue(s_info));
  GList* files = ((GList*)asCArrayRef(s_files, GList, asCGList));

  char* ans;

  ans = object_class->get_startup_notify_id(object, info, files);

  _result = asRString(ans);
    CLEANUP(g_free, ans);;
    CLEANUP(g_list_free, ((GList*)files));;
#else
  error("gapp_launch_context_get_startup_notify_id exists only in gio >= 2.16.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gapp_launch_context_class_launch_failed(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_startup_notify_id)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GAppLaunchContextClass* object_class = ((GAppLaunchContextClass*)getPtrValue(s_object_class));
  GAppLaunchContext* object = G_APP_LAUNCH_CONTEXT(getPtrValue(s_object));
  const char* startup_notify_id = ((const char*)asCString(s_startup_notify_id));


  object_class->launch_failed(object, startup_notify_id);

#else
  error("gapp_launch_context_launch_failed exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

#if GIO_CHECK_VERSION(2, 16, 0)
static SEXP S_GCancellable_symbol;
void
S_gcancellable_class_init(GCancellableClass * c, SEXP e)
{
  SEXP s;

  S_GCancellable_symbol = install("GCancellable");
  s = PROTECT(findVar(S_GCancellable_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GCancellableClass)) = e;

  S_gobject_class_init(((GObjectClass *)c), e);

  UNPROTECT(1);

}
#endif 

#if GIO_CHECK_VERSION(2, 16, 0)
static SEXP S_GFilenameCompleter_symbol;
void
S_gfilename_completer_class_init(GFilenameCompleterClass * c, SEXP e)
{
  SEXP s;

  S_GFilenameCompleter_symbol = install("GFilenameCompleter");
  s = PROTECT(findVar(S_GFilenameCompleter_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GFilenameCompleterClass)) = e;

  S_gobject_class_init(((GObjectClass *)c), e);

  UNPROTECT(1);

}
#endif 

#if GIO_CHECK_VERSION(2, 16, 0)
static SEXP S_GFileEnumerator_symbol;

static GFileInfo*
S_virtual_gfile_enumerator_next_file(GFileEnumerator* s_object, GCancellable* s_cancellable, GError** s_error)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GFileEnumerator_symbol, S_GOBJECT_GET_ENV(s_object)), 0));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GFileEnumerator")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_cancellable, "GCancellable"));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((GFileInfo*)0));
  *s_error = asCGError(VECTOR_ELT(s_ans, 1));
  return(G_FILE_INFO(getPtrValueWithRef(VECTOR_ELT(s_ans, 0))));
}

static gboolean
S_virtual_gfile_enumerator_close_fn(GFileEnumerator* s_object, GCancellable* s_cancellable, GError** s_error)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GFileEnumerator_symbol, S_GOBJECT_GET_ENV(s_object)), 1));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GFileEnumerator")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_cancellable, "GCancellable"));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  *s_error = asCGError(VECTOR_ELT(s_ans, 1));
  return(((gboolean)asCLogical(VECTOR_ELT(s_ans, 0))));
}

static void
S_virtual_gfile_enumerator_next_files_async(GFileEnumerator* s_object, int s_num_files, int s_io_priority, GCancellable* s_cancellable, GAsyncReadyCallback s_callback, gpointer s_user_data)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 7));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GFileEnumerator_symbol, S_GOBJECT_GET_ENV(s_object)), 2));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GFileEnumerator")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_num_files));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_io_priority));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_cancellable, "GCancellable"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerFn(((DL_FUNC)s_callback), "GAsyncReadyCallback"));
  tmp = CDR(tmp);
  SETCAR(tmp, s_user_data);
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static GList*
S_virtual_gfile_enumerator_next_files_finish(GFileEnumerator* s_object, GAsyncResult* s_result, GError** s_error)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GFileEnumerator_symbol, S_GOBJECT_GET_ENV(s_object)), 3));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GFileEnumerator")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_result, "GAsyncResult"));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((GList*)0));
  *s_error = asCGError(VECTOR_ELT(s_ans, 1));
  return(((GList*)asCArrayRef(VECTOR_ELT(s_ans, 0), GList, asCGListDup)));
}

static void
S_virtual_gfile_enumerator_close_async(GFileEnumerator* s_object, int s_io_priority, GCancellable* s_cancellable, GAsyncReadyCallback s_callback, gpointer s_user_data)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 6));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GFileEnumerator_symbol, S_GOBJECT_GET_ENV(s_object)), 4));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GFileEnumerator")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_io_priority));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_cancellable, "GCancellable"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerFn(((DL_FUNC)s_callback), "GAsyncReadyCallback"));
  tmp = CDR(tmp);
  SETCAR(tmp, s_user_data);
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static gboolean
S_virtual_gfile_enumerator_close_finish(GFileEnumerator* s_object, GAsyncResult* s_result, GError** s_error)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GFileEnumerator_symbol, S_GOBJECT_GET_ENV(s_object)), 5));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GFileEnumerator")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_result, "GAsyncResult"));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  *s_error = asCGError(VECTOR_ELT(s_ans, 1));
  return(((gboolean)asCLogical(VECTOR_ELT(s_ans, 0))));
}
void
S_gfile_enumerator_class_init(GFileEnumeratorClass * c, SEXP e)
{
  SEXP s;

  S_GFileEnumerator_symbol = install("GFileEnumerator");
  s = PROTECT(findVar(S_GFileEnumerator_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GFileEnumeratorClass)) = e;

  S_gobject_class_init(((GObjectClass *)c), e);

  UNPROTECT(1);

#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 0) != NULL_USER_OBJECT)
    c->next_file = S_virtual_gfile_enumerator_next_file;
#endif
#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 1) != NULL_USER_OBJECT)
    c->close_fn = S_virtual_gfile_enumerator_close_fn;
#endif
#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 2) != NULL_USER_OBJECT)
    c->next_files_async = S_virtual_gfile_enumerator_next_files_async;
#endif
#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 3) != NULL_USER_OBJECT)
    c->next_files_finish = S_virtual_gfile_enumerator_next_files_finish;
#endif
#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 4) != NULL_USER_OBJECT)
    c->close_async = S_virtual_gfile_enumerator_close_async;
#endif
#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 5) != NULL_USER_OBJECT)
    c->close_finish = S_virtual_gfile_enumerator_close_finish;
#endif
}
#endif
USER_OBJECT_
S_gfile_enumerator_class_next_file(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_cancellable)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFileEnumeratorClass* object_class = ((GFileEnumeratorClass*)getPtrValue(s_object_class));
  GFileEnumerator* object = G_FILE_ENUMERATOR(getPtrValue(s_object));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));

  GFileInfo* ans;
  GError* error = NULL;

  ans = object_class->next_file(object, cancellable, &error);

  _result = toRPointerWithFinalizer(ans, "GFileInfo", (RPointerFinalizer) g_object_unref);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("gfile_enumerator_next_file exists only in gio >= 2.16.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gfile_enumerator_class_close_fn(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_cancellable)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFileEnumeratorClass* object_class = ((GFileEnumeratorClass*)getPtrValue(s_object_class));
  GFileEnumerator* object = G_FILE_ENUMERATOR(getPtrValue(s_object));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));

  gboolean ans;
  GError* error = NULL;

  ans = object_class->close_fn(object, cancellable, &error);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("gfile_enumerator_close_fn exists only in gio >= 2.16.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gfile_enumerator_class_next_files_async(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_num_files, USER_OBJECT_ s_io_priority, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GAsyncReadyCallback callback = ((GAsyncReadyCallback)S_GAsyncReadyCallback);
  R_CallbackData* user_data = R_createCBData(s_callback, s_user_data);
  GFileEnumeratorClass* object_class = ((GFileEnumeratorClass*)getPtrValue(s_object_class));
  GFileEnumerator* object = G_FILE_ENUMERATOR(getPtrValue(s_object));
  int num_files = ((int)asCInteger(s_num_files));
  int io_priority = ((int)asCInteger(s_io_priority));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));


  object_class->next_files_async(object, num_files, io_priority, cancellable, callback, user_data);

#else
  error("gfile_enumerator_next_files_async exists only in gio >= 2.16.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gfile_enumerator_class_next_files_finish(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_result)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFileEnumeratorClass* object_class = ((GFileEnumeratorClass*)getPtrValue(s_object_class));
  GFileEnumerator* object = G_FILE_ENUMERATOR(getPtrValue(s_object));
  GAsyncResult* result = G_ASYNC_RESULT(getPtrValue(s_result));

  GList* ans;
  GError* error = NULL;

  ans = object_class->next_files_finish(object, result, &error);

  _result = asRGListWithRef(ans, "GFileInfo");

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_list_free, ans);;
    CLEANUP(g_error_free, error);;
#else
  error("gfile_enumerator_next_files_finish exists only in gio >= 2.16.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gfile_enumerator_class_close_async(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_io_priority, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GAsyncReadyCallback callback = ((GAsyncReadyCallback)S_GAsyncReadyCallback);
  R_CallbackData* user_data = R_createCBData(s_callback, s_user_data);
  GFileEnumeratorClass* object_class = ((GFileEnumeratorClass*)getPtrValue(s_object_class));
  GFileEnumerator* object = G_FILE_ENUMERATOR(getPtrValue(s_object));
  int io_priority = ((int)asCInteger(s_io_priority));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));


  object_class->close_async(object, io_priority, cancellable, callback, user_data);

#else
  error("gfile_enumerator_close_async exists only in gio >= 2.16.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gfile_enumerator_class_close_finish(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_result)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFileEnumeratorClass* object_class = ((GFileEnumeratorClass*)getPtrValue(s_object_class));
  GFileEnumerator* object = G_FILE_ENUMERATOR(getPtrValue(s_object));
  GAsyncResult* result = G_ASYNC_RESULT(getPtrValue(s_result));

  gboolean ans;
  GError* error = NULL;

  ans = object_class->close_finish(object, result, &error);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("gfile_enumerator_close_finish exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

#if GIO_CHECK_VERSION(2, 16, 0)
static SEXP S_GFileMonitor_symbol;

static gboolean
S_virtual_gfile_monitor_cancel(GFileMonitor* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GFileMonitor_symbol, S_GOBJECT_GET_ENV(s_object)), 0));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GFileMonitor")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  return(((gboolean)asCLogical(s_ans)));
}
void
S_gfile_monitor_class_init(GFileMonitorClass * c, SEXP e)
{
  SEXP s;

  S_GFileMonitor_symbol = install("GFileMonitor");
  s = PROTECT(findVar(S_GFileMonitor_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GFileMonitorClass)) = e;

  S_gobject_class_init(((GObjectClass *)c), e);

  UNPROTECT(1);

#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 0) != NULL_USER_OBJECT)
    c->cancel = S_virtual_gfile_monitor_cancel;
#endif
}
#endif
USER_OBJECT_
S_gfile_monitor_class_cancel(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFileMonitorClass* object_class = ((GFileMonitorClass*)getPtrValue(s_object_class));
  GFileMonitor* object = G_FILE_MONITOR(getPtrValue(s_object));

  gboolean ans;

  ans = object_class->cancel(object);

  _result = asRLogical(ans);
#else
  error("gfile_monitor_cancel exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

#if GIO_CHECK_VERSION(2, 16, 0)
static SEXP S_GInputStream_symbol;

static gssize
S_virtual_ginput_stream_skip(GInputStream* s_object, gsize s_count, GCancellable* s_cancellable, GError** s_error)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 4));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GInputStream_symbol, S_GOBJECT_GET_ENV(s_object)), 0));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GInputStream")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRNumeric(s_count));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_cancellable, "GCancellable"));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gssize)0));
  *s_error = asCGError(VECTOR_ELT(s_ans, 1));
  return(((gssize)asCInteger(VECTOR_ELT(s_ans, 0))));
}

static gboolean
S_virtual_ginput_stream_close_fn(GInputStream* s_object, GCancellable* s_cancellable, GError** s_error)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GInputStream_symbol, S_GOBJECT_GET_ENV(s_object)), 1));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GInputStream")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_cancellable, "GCancellable"));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  *s_error = asCGError(VECTOR_ELT(s_ans, 1));
  return(((gboolean)asCLogical(VECTOR_ELT(s_ans, 0))));
}

static gssize
S_virtual_ginput_stream_read_finish(GInputStream* s_object, GAsyncResult* s_result, GError** s_error)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GInputStream_symbol, S_GOBJECT_GET_ENV(s_object)), 2));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GInputStream")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_result, "GAsyncResult"));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gssize)0));
  *s_error = asCGError(VECTOR_ELT(s_ans, 1));
  return(((gssize)asCInteger(VECTOR_ELT(s_ans, 0))));
}

static void
S_virtual_ginput_stream_skip_async(GInputStream* s_object, gsize s_count, int s_io_priority, GCancellable* s_cancellable, GAsyncReadyCallback s_callback, gpointer s_user_data)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 7));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GInputStream_symbol, S_GOBJECT_GET_ENV(s_object)), 3));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GInputStream")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRNumeric(s_count));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_io_priority));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_cancellable, "GCancellable"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerFn(((DL_FUNC)s_callback), "GAsyncReadyCallback"));
  tmp = CDR(tmp);
  SETCAR(tmp, s_user_data);
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static gssize
S_virtual_ginput_stream_skip_finish(GInputStream* s_object, GAsyncResult* s_result, GError** s_error)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GInputStream_symbol, S_GOBJECT_GET_ENV(s_object)), 4));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GInputStream")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_result, "GAsyncResult"));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gssize)0));
  *s_error = asCGError(VECTOR_ELT(s_ans, 1));
  return(((gssize)asCInteger(VECTOR_ELT(s_ans, 0))));
}

static void
S_virtual_ginput_stream_close_async(GInputStream* s_object, int s_io_priority, GCancellable* s_cancellable, GAsyncReadyCallback s_callback, gpointer s_user_data)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 6));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GInputStream_symbol, S_GOBJECT_GET_ENV(s_object)), 5));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GInputStream")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_io_priority));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_cancellable, "GCancellable"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerFn(((DL_FUNC)s_callback), "GAsyncReadyCallback"));
  tmp = CDR(tmp);
  SETCAR(tmp, s_user_data);
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static gboolean
S_virtual_ginput_stream_close_finish(GInputStream* s_object, GAsyncResult* s_result, GError** s_error)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GInputStream_symbol, S_GOBJECT_GET_ENV(s_object)), 6));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GInputStream")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_result, "GAsyncResult"));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  *s_error = asCGError(VECTOR_ELT(s_ans, 1));
  return(((gboolean)asCLogical(VECTOR_ELT(s_ans, 0))));
}
void
S_ginput_stream_class_init(GInputStreamClass * c, SEXP e)
{
  SEXP s;

  S_GInputStream_symbol = install("GInputStream");
  s = PROTECT(findVar(S_GInputStream_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GInputStreamClass)) = e;

  S_gobject_class_init(((GObjectClass *)c), e);

  UNPROTECT(1);

#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 0) != NULL_USER_OBJECT)
    c->skip = S_virtual_ginput_stream_skip;
#endif
#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 1) != NULL_USER_OBJECT)
    c->close_fn = S_virtual_ginput_stream_close_fn;
#endif
#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 2) != NULL_USER_OBJECT)
    c->read_finish = S_virtual_ginput_stream_read_finish;
#endif
#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 3) != NULL_USER_OBJECT)
    c->skip_async = S_virtual_ginput_stream_skip_async;
#endif
#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 4) != NULL_USER_OBJECT)
    c->skip_finish = S_virtual_ginput_stream_skip_finish;
#endif
#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 5) != NULL_USER_OBJECT)
    c->close_async = S_virtual_ginput_stream_close_async;
#endif
#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 6) != NULL_USER_OBJECT)
    c->close_finish = S_virtual_ginput_stream_close_finish;
#endif
}
#endif
USER_OBJECT_
S_ginput_stream_class_skip(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_count, USER_OBJECT_ s_cancellable)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GInputStreamClass* object_class = ((GInputStreamClass*)getPtrValue(s_object_class));
  GInputStream* object = G_INPUT_STREAM(getPtrValue(s_object));
  gsize count = ((gsize)asCNumeric(s_count));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));

  gssize ans;
  GError* error = NULL;

  ans = object_class->skip(object, count, cancellable, &error);

  _result = asRInteger(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("ginput_stream_skip exists only in gio >= 2.16.0");
#endif

  return(_result);
}

USER_OBJECT_
S_ginput_stream_class_close_fn(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_cancellable)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GInputStreamClass* object_class = ((GInputStreamClass*)getPtrValue(s_object_class));
  GInputStream* object = G_INPUT_STREAM(getPtrValue(s_object));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));

  gboolean ans;
  GError* error = NULL;

  ans = object_class->close_fn(object, cancellable, &error);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("ginput_stream_close_fn exists only in gio >= 2.16.0");
#endif

  return(_result);
}

USER_OBJECT_
S_ginput_stream_class_read_finish(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_result)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GInputStreamClass* object_class = ((GInputStreamClass*)getPtrValue(s_object_class));
  GInputStream* object = G_INPUT_STREAM(getPtrValue(s_object));
  GAsyncResult* result = G_ASYNC_RESULT(getPtrValue(s_result));

  gssize ans;
  GError* error = NULL;

  ans = object_class->read_finish(object, result, &error);

  _result = asRInteger(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("ginput_stream_read_finish exists only in gio >= 2.16.0");
#endif

  return(_result);
}

USER_OBJECT_
S_ginput_stream_class_skip_async(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_count, USER_OBJECT_ s_io_priority, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GAsyncReadyCallback callback = ((GAsyncReadyCallback)S_GAsyncReadyCallback);
  R_CallbackData* user_data = R_createCBData(s_callback, s_user_data);
  GInputStreamClass* object_class = ((GInputStreamClass*)getPtrValue(s_object_class));
  GInputStream* object = G_INPUT_STREAM(getPtrValue(s_object));
  gsize count = ((gsize)asCNumeric(s_count));
  int io_priority = ((int)asCInteger(s_io_priority));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));


  object_class->skip_async(object, count, io_priority, cancellable, callback, user_data);

#else
  error("ginput_stream_skip_async exists only in gio >= 2.16.0");
#endif

  return(_result);
}

USER_OBJECT_
S_ginput_stream_class_skip_finish(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_result)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GInputStreamClass* object_class = ((GInputStreamClass*)getPtrValue(s_object_class));
  GInputStream* object = G_INPUT_STREAM(getPtrValue(s_object));
  GAsyncResult* result = G_ASYNC_RESULT(getPtrValue(s_result));

  gssize ans;
  GError* error = NULL;

  ans = object_class->skip_finish(object, result, &error);

  _result = asRInteger(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("ginput_stream_skip_finish exists only in gio >= 2.16.0");
#endif

  return(_result);
}

USER_OBJECT_
S_ginput_stream_class_close_async(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_io_priority, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GAsyncReadyCallback callback = ((GAsyncReadyCallback)S_GAsyncReadyCallback);
  R_CallbackData* user_data = R_createCBData(s_callback, s_user_data);
  GInputStreamClass* object_class = ((GInputStreamClass*)getPtrValue(s_object_class));
  GInputStream* object = G_INPUT_STREAM(getPtrValue(s_object));
  int io_priority = ((int)asCInteger(s_io_priority));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));


  object_class->close_async(object, io_priority, cancellable, callback, user_data);

#else
  error("ginput_stream_close_async exists only in gio >= 2.16.0");
#endif

  return(_result);
}

USER_OBJECT_
S_ginput_stream_class_close_finish(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_result)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GInputStreamClass* object_class = ((GInputStreamClass*)getPtrValue(s_object_class));
  GInputStream* object = G_INPUT_STREAM(getPtrValue(s_object));
  GAsyncResult* result = G_ASYNC_RESULT(getPtrValue(s_result));

  gboolean ans;
  GError* error = NULL;

  ans = object_class->close_finish(object, result, &error);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("ginput_stream_close_finish exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

#if GIO_CHECK_VERSION(2, 16, 0)
static SEXP S_GFileInputStream_symbol;

static GFileInfo*
S_virtual_gfile_input_stream_query_info(GFileInputStream* s_object, const char* s_attributes, GCancellable* s_cancellable, GError** s_error)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 4));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GFileInputStream_symbol, S_GOBJECT_GET_ENV(s_object)), 0));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GFileInputStream")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRString(s_attributes));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_cancellable, "GCancellable"));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((GFileInfo*)0));
  *s_error = asCGError(VECTOR_ELT(s_ans, 1));
  return(G_FILE_INFO(getPtrValue(VECTOR_ELT(s_ans, 0))));
}

static void
S_virtual_gfile_input_stream_query_info_async(GFileInputStream* s_object, const char* s_attributes, int s_io_priority, GCancellable* s_cancellable, GAsyncReadyCallback s_callback, gpointer s_user_data)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 7));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GFileInputStream_symbol, S_GOBJECT_GET_ENV(s_object)), 1));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GFileInputStream")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRString(s_attributes));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_io_priority));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_cancellable, "GCancellable"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerFn(((DL_FUNC)s_callback), "GAsyncReadyCallback"));
  tmp = CDR(tmp);
  SETCAR(tmp, s_user_data);
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static GFileInfo*
S_virtual_gfile_input_stream_query_info_finish(GFileInputStream* s_object, GAsyncResult* s_result, GError** s_error)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GFileInputStream_symbol, S_GOBJECT_GET_ENV(s_object)), 2));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GFileInputStream")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_result, "GAsyncResult"));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((GFileInfo*)0));
  *s_error = asCGError(VECTOR_ELT(s_ans, 1));
  return(G_FILE_INFO(getPtrValue(VECTOR_ELT(s_ans, 0))));
}
void
S_gfile_input_stream_class_init(GFileInputStreamClass * c, SEXP e)
{
  SEXP s;

  S_GFileInputStream_symbol = install("GFileInputStream");
  s = PROTECT(findVar(S_GFileInputStream_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GFileInputStreamClass)) = e;

  S_ginput_stream_class_init(((GInputStreamClass *)c), e);

  UNPROTECT(1);

#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 0) != NULL_USER_OBJECT)
    c->query_info = S_virtual_gfile_input_stream_query_info;
#endif
#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 1) != NULL_USER_OBJECT)
    c->query_info_async = S_virtual_gfile_input_stream_query_info_async;
#endif
#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 2) != NULL_USER_OBJECT)
    c->query_info_finish = S_virtual_gfile_input_stream_query_info_finish;
#endif
}
#endif
USER_OBJECT_
S_gfile_input_stream_class_query_info(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_attributes, USER_OBJECT_ s_cancellable)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFileInputStreamClass* object_class = ((GFileInputStreamClass*)getPtrValue(s_object_class));
  GFileInputStream* object = G_FILE_INPUT_STREAM(getPtrValue(s_object));
  const char* attributes = ((const char*)asCString(s_attributes));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));

  GFileInfo* ans;
  GError* error = NULL;

  ans = object_class->query_info(object, attributes, cancellable, &error);

  _result = toRPointerWithRef(ans, "GFileInfo");

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("gfile_input_stream_query_info exists only in gio >= 2.16.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gfile_input_stream_class_query_info_async(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_attributes, USER_OBJECT_ s_io_priority, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GAsyncReadyCallback callback = ((GAsyncReadyCallback)S_GAsyncReadyCallback);
  R_CallbackData* user_data = R_createCBData(s_callback, s_user_data);
  GFileInputStreamClass* object_class = ((GFileInputStreamClass*)getPtrValue(s_object_class));
  GFileInputStream* object = G_FILE_INPUT_STREAM(getPtrValue(s_object));
  const char* attributes = ((const char*)asCString(s_attributes));
  int io_priority = ((int)asCInteger(s_io_priority));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));


  object_class->query_info_async(object, attributes, io_priority, cancellable, callback, user_data);

#else
  error("gfile_input_stream_query_info_async exists only in gio >= 2.16.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gfile_input_stream_class_query_info_finish(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_result)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFileInputStreamClass* object_class = ((GFileInputStreamClass*)getPtrValue(s_object_class));
  GFileInputStream* object = G_FILE_INPUT_STREAM(getPtrValue(s_object));
  GAsyncResult* result = G_ASYNC_RESULT(getPtrValue(s_result));

  GFileInfo* ans;
  GError* error = NULL;

  ans = object_class->query_info_finish(object, result, &error);

  _result = toRPointerWithRef(ans, "GFileInfo");

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("gfile_input_stream_query_info_finish exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

#if GIO_CHECK_VERSION(2, 16, 0)
static SEXP S_GFilterInputStream_symbol;
void
S_gfilter_input_stream_class_init(GFilterInputStreamClass * c, SEXP e)
{
  SEXP s;

  S_GFilterInputStream_symbol = install("GFilterInputStream");
  s = PROTECT(findVar(S_GFilterInputStream_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GFilterInputStreamClass)) = e;

  S_ginput_stream_class_init(((GInputStreamClass *)c), e);

  UNPROTECT(1);

}
#endif 

#if GIO_CHECK_VERSION(2, 16, 0)
static SEXP S_GBufferedInputStream_symbol;

static gssize
S_virtual_gbuffered_input_stream_fill(GBufferedInputStream* s_object, gssize s_count, GCancellable* s_cancellable, GError** s_error)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 4));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GBufferedInputStream_symbol, S_GOBJECT_GET_ENV(s_object)), 0));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GBufferedInputStream")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_count));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_cancellable, "GCancellable"));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gssize)0));
  *s_error = asCGError(VECTOR_ELT(s_ans, 1));
  return(((gssize)asCInteger(VECTOR_ELT(s_ans, 0))));
}

static void
S_virtual_gbuffered_input_stream_fill_async(GBufferedInputStream* s_object, gssize s_count, int s_io_priority, GCancellable* s_cancellable, GAsyncReadyCallback s_callback, gpointer s_user_data)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 7));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GBufferedInputStream_symbol, S_GOBJECT_GET_ENV(s_object)), 1));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GBufferedInputStream")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_count));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_io_priority));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_cancellable, "GCancellable"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerFn(((DL_FUNC)s_callback), "GAsyncReadyCallback"));
  tmp = CDR(tmp);
  SETCAR(tmp, s_user_data);
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static gssize
S_virtual_gbuffered_input_stream_fill_finish(GBufferedInputStream* s_object, GAsyncResult* s_result, GError** s_error)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GBufferedInputStream_symbol, S_GOBJECT_GET_ENV(s_object)), 2));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GBufferedInputStream")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_result, "GAsyncResult"));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gssize)0));
  *s_error = asCGError(VECTOR_ELT(s_ans, 1));
  return(((gssize)asCInteger(VECTOR_ELT(s_ans, 0))));
}
void
S_gbuffered_input_stream_class_init(GBufferedInputStreamClass * c, SEXP e)
{
  SEXP s;

  S_GBufferedInputStream_symbol = install("GBufferedInputStream");
  s = PROTECT(findVar(S_GBufferedInputStream_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GBufferedInputStreamClass)) = e;

  S_gfilter_input_stream_class_init(((GFilterInputStreamClass *)c), e);

  UNPROTECT(1);

#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 0) != NULL_USER_OBJECT)
    c->fill = S_virtual_gbuffered_input_stream_fill;
#endif
#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 1) != NULL_USER_OBJECT)
    c->fill_async = S_virtual_gbuffered_input_stream_fill_async;
#endif
#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 2) != NULL_USER_OBJECT)
    c->fill_finish = S_virtual_gbuffered_input_stream_fill_finish;
#endif
}
#endif
USER_OBJECT_
S_gbuffered_input_stream_class_fill(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_count, USER_OBJECT_ s_cancellable)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GBufferedInputStreamClass* object_class = ((GBufferedInputStreamClass*)getPtrValue(s_object_class));
  GBufferedInputStream* object = G_BUFFERED_INPUT_STREAM(getPtrValue(s_object));
  gssize count = ((gssize)asCInteger(s_count));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));

  gssize ans;
  GError* error = NULL;

  ans = object_class->fill(object, count, cancellable, &error);

  _result = asRInteger(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("gbuffered_input_stream_fill exists only in gio >= 2.16.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gbuffered_input_stream_class_fill_async(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_count, USER_OBJECT_ s_io_priority, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GAsyncReadyCallback callback = ((GAsyncReadyCallback)S_GAsyncReadyCallback);
  R_CallbackData* user_data = R_createCBData(s_callback, s_user_data);
  GBufferedInputStreamClass* object_class = ((GBufferedInputStreamClass*)getPtrValue(s_object_class));
  GBufferedInputStream* object = G_BUFFERED_INPUT_STREAM(getPtrValue(s_object));
  gssize count = ((gssize)asCInteger(s_count));
  int io_priority = ((int)asCInteger(s_io_priority));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));


  object_class->fill_async(object, count, io_priority, cancellable, callback, user_data);

#else
  error("gbuffered_input_stream_fill_async exists only in gio >= 2.16.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gbuffered_input_stream_class_fill_finish(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_result)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GBufferedInputStreamClass* object_class = ((GBufferedInputStreamClass*)getPtrValue(s_object_class));
  GBufferedInputStream* object = G_BUFFERED_INPUT_STREAM(getPtrValue(s_object));
  GAsyncResult* result = G_ASYNC_RESULT(getPtrValue(s_result));

  gssize ans;
  GError* error = NULL;

  ans = object_class->fill_finish(object, result, &error);

  _result = asRInteger(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("gbuffered_input_stream_fill_finish exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

#if GIO_CHECK_VERSION(2, 16, 0)
static SEXP S_GDataInputStream_symbol;
void
S_gdata_input_stream_class_init(GDataInputStreamClass * c, SEXP e)
{
  SEXP s;

  S_GDataInputStream_symbol = install("GDataInputStream");
  s = PROTECT(findVar(S_GDataInputStream_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GDataInputStreamClass)) = e;

  S_gfilter_input_stream_class_init(((GFilterInputStreamClass *)c), e);

  UNPROTECT(1);

}
#endif 

#if GIO_CHECK_VERSION(2, 16, 0)
static SEXP S_GMemoryInputStream_symbol;
void
S_gmemory_input_stream_class_init(GMemoryInputStreamClass * c, SEXP e)
{
  SEXP s;

  S_GMemoryInputStream_symbol = install("GMemoryInputStream");
  s = PROTECT(findVar(S_GMemoryInputStream_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GMemoryInputStreamClass)) = e;

  S_ginput_stream_class_init(((GInputStreamClass *)c), e);

  UNPROTECT(1);

}
#endif 

#if GIO_CHECK_VERSION(2, 16, 0)
static SEXP S_GMountOperation_symbol;
void
S_gmount_operation_class_init(GMountOperationClass * c, SEXP e)
{
  SEXP s;

  S_GMountOperation_symbol = install("GMountOperation");
  s = PROTECT(findVar(S_GMountOperation_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GMountOperationClass)) = e;

  S_gobject_class_init(((GObjectClass *)c), e);

  UNPROTECT(1);

}
#endif 

#if GIO_CHECK_VERSION(2, 16, 0)
static SEXP S_GOutputStream_symbol;

static gssize
S_virtual_goutput_stream_write_fn(GOutputStream* s_object, const guchar* s_buffer, gsize s_count, GCancellable* s_cancellable, GError** s_error)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 5));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GOutputStream_symbol, S_GOBJECT_GET_ENV(s_object)), 0));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GOutputStream")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRRawArrayWithSize(s_buffer, s_count));
  tmp = CDR(tmp);
  SETCAR(tmp, asRNumeric(s_count));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_cancellable, "GCancellable"));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gssize)0));
  *s_error = asCGError(VECTOR_ELT(s_ans, 1));
  return(((gssize)asCInteger(VECTOR_ELT(s_ans, 0))));
}

static gssize
S_virtual_goutput_stream_splice(GOutputStream* s_object, GInputStream* s_source, GOutputStreamSpliceFlags s_flags, GCancellable* s_cancellable, GError** s_error)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 5));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GOutputStream_symbol, S_GOBJECT_GET_ENV(s_object)), 1));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GOutputStream")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_source, "GInputStream"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRFlag(s_flags, G_TYPE_OUTPUT_STREAM_SPLICE_FLAGS));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_cancellable, "GCancellable"));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gssize)0));
  *s_error = asCGError(VECTOR_ELT(s_ans, 1));
  return(((gssize)asCInteger(VECTOR_ELT(s_ans, 0))));
}

static gboolean
S_virtual_goutput_stream_flush(GOutputStream* s_object, GCancellable* s_cancellable, GError** s_error)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GOutputStream_symbol, S_GOBJECT_GET_ENV(s_object)), 2));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GOutputStream")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_cancellable, "GCancellable"));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  *s_error = asCGError(VECTOR_ELT(s_ans, 1));
  return(((gboolean)asCLogical(VECTOR_ELT(s_ans, 0))));
}

static gboolean
S_virtual_goutput_stream_close_fn(GOutputStream* s_object, GCancellable* s_cancellable, GError** s_error)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GOutputStream_symbol, S_GOBJECT_GET_ENV(s_object)), 3));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GOutputStream")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_cancellable, "GCancellable"));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  *s_error = asCGError(VECTOR_ELT(s_ans, 1));
  return(((gboolean)asCLogical(VECTOR_ELT(s_ans, 0))));
}

static void
S_virtual_goutput_stream_write_async(GOutputStream* s_object, const guchar* s_buffer, gsize s_count, int s_io_priority, GCancellable* s_cancellable, GAsyncReadyCallback s_callback, gpointer s_user_data)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 8));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GOutputStream_symbol, S_GOBJECT_GET_ENV(s_object)), 4));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GOutputStream")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRRawArrayWithSize(s_buffer, s_count));
  tmp = CDR(tmp);
  SETCAR(tmp, asRNumeric(s_count));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_io_priority));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_cancellable, "GCancellable"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerFn(((DL_FUNC)s_callback), "GAsyncReadyCallback"));
  tmp = CDR(tmp);
  SETCAR(tmp, s_user_data);
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static gssize
S_virtual_goutput_stream_write_finish(GOutputStream* s_object, GAsyncResult* s_result, GError** s_error)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GOutputStream_symbol, S_GOBJECT_GET_ENV(s_object)), 5));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GOutputStream")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_result, "GAsyncResult"));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gssize)0));
  *s_error = asCGError(VECTOR_ELT(s_ans, 1));
  return(((gssize)asCInteger(VECTOR_ELT(s_ans, 0))));
}

static void
S_virtual_goutput_stream_splice_async(GOutputStream* s_object, GInputStream* s_source, GOutputStreamSpliceFlags s_flags, int s_io_priority, GCancellable* s_cancellable, GAsyncReadyCallback s_callback, gpointer s_user_data)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 8));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GOutputStream_symbol, S_GOBJECT_GET_ENV(s_object)), 6));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GOutputStream")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_source, "GInputStream"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRFlag(s_flags, G_TYPE_OUTPUT_STREAM_SPLICE_FLAGS));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_io_priority));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_cancellable, "GCancellable"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerFn(((DL_FUNC)s_callback), "GAsyncReadyCallback"));
  tmp = CDR(tmp);
  SETCAR(tmp, s_user_data);
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static gssize
S_virtual_goutput_stream_splice_finish(GOutputStream* s_object, GAsyncResult* s_result, GError** s_error)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GOutputStream_symbol, S_GOBJECT_GET_ENV(s_object)), 7));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GOutputStream")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_result, "GAsyncResult"));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gssize)0));
  *s_error = asCGError(VECTOR_ELT(s_ans, 1));
  return(((gssize)asCInteger(VECTOR_ELT(s_ans, 0))));
}

static void
S_virtual_goutput_stream_flush_async(GOutputStream* s_object, int s_io_priority, GCancellable* s_cancellable, GAsyncReadyCallback s_callback, gpointer s_user_data)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 6));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GOutputStream_symbol, S_GOBJECT_GET_ENV(s_object)), 8));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GOutputStream")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_io_priority));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_cancellable, "GCancellable"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerFn(((DL_FUNC)s_callback), "GAsyncReadyCallback"));
  tmp = CDR(tmp);
  SETCAR(tmp, s_user_data);
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static gboolean
S_virtual_goutput_stream_flush_finish(GOutputStream* s_object, GAsyncResult* s_result, GError** s_error)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GOutputStream_symbol, S_GOBJECT_GET_ENV(s_object)), 9));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GOutputStream")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_result, "GAsyncResult"));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  *s_error = asCGError(VECTOR_ELT(s_ans, 1));
  return(((gboolean)asCLogical(VECTOR_ELT(s_ans, 0))));
}

static void
S_virtual_goutput_stream_close_async(GOutputStream* s_object, int s_io_priority, GCancellable* s_cancellable, GAsyncReadyCallback s_callback, gpointer s_user_data)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 6));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GOutputStream_symbol, S_GOBJECT_GET_ENV(s_object)), 10));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GOutputStream")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_io_priority));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_cancellable, "GCancellable"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerFn(((DL_FUNC)s_callback), "GAsyncReadyCallback"));
  tmp = CDR(tmp);
  SETCAR(tmp, s_user_data);
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static gboolean
S_virtual_goutput_stream_close_finish(GOutputStream* s_object, GAsyncResult* s_result, GError** s_error)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GOutputStream_symbol, S_GOBJECT_GET_ENV(s_object)), 11));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GOutputStream")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_result, "GAsyncResult"));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  *s_error = asCGError(VECTOR_ELT(s_ans, 1));
  return(((gboolean)asCLogical(VECTOR_ELT(s_ans, 0))));
}
void
S_goutput_stream_class_init(GOutputStreamClass * c, SEXP e)
{
  SEXP s;

  S_GOutputStream_symbol = install("GOutputStream");
  s = PROTECT(findVar(S_GOutputStream_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GOutputStreamClass)) = e;

  S_gobject_class_init(((GObjectClass *)c), e);

  UNPROTECT(1);

#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 0) != NULL_USER_OBJECT)
    c->write_fn = S_virtual_goutput_stream_write_fn;
#endif
#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 1) != NULL_USER_OBJECT)
    c->splice = S_virtual_goutput_stream_splice;
#endif
#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 2) != NULL_USER_OBJECT)
    c->flush = S_virtual_goutput_stream_flush;
#endif
#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 3) != NULL_USER_OBJECT)
    c->close_fn = S_virtual_goutput_stream_close_fn;
#endif
#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 4) != NULL_USER_OBJECT)
    c->write_async = S_virtual_goutput_stream_write_async;
#endif
#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 5) != NULL_USER_OBJECT)
    c->write_finish = S_virtual_goutput_stream_write_finish;
#endif
#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 6) != NULL_USER_OBJECT)
    c->splice_async = S_virtual_goutput_stream_splice_async;
#endif
#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 7) != NULL_USER_OBJECT)
    c->splice_finish = S_virtual_goutput_stream_splice_finish;
#endif
#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 8) != NULL_USER_OBJECT)
    c->flush_async = S_virtual_goutput_stream_flush_async;
#endif
#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 9) != NULL_USER_OBJECT)
    c->flush_finish = S_virtual_goutput_stream_flush_finish;
#endif
#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 10) != NULL_USER_OBJECT)
    c->close_async = S_virtual_goutput_stream_close_async;
#endif
#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 11) != NULL_USER_OBJECT)
    c->close_finish = S_virtual_goutput_stream_close_finish;
#endif
}
#endif
USER_OBJECT_
S_goutput_stream_class_write_fn(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_buffer, USER_OBJECT_ s_cancellable)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GOutputStreamClass* object_class = ((GOutputStreamClass*)getPtrValue(s_object_class));
  GOutputStream* object = G_OUTPUT_STREAM(getPtrValue(s_object));
  const guchar* buffer = ((const guchar*)asCArray(s_buffer, guchar, asCRaw));
  gsize count = ((gsize)GET_LENGTH(s_buffer));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));

  gssize ans;
  GError* error = NULL;

  ans = object_class->write_fn(object, buffer, count, cancellable, &error);

  _result = asRInteger(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("goutput_stream_write_fn exists only in gio >= 2.16.0");
#endif

  return(_result);
}

USER_OBJECT_
S_goutput_stream_class_splice(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_source, USER_OBJECT_ s_flags, USER_OBJECT_ s_cancellable)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GOutputStreamClass* object_class = ((GOutputStreamClass*)getPtrValue(s_object_class));
  GOutputStream* object = G_OUTPUT_STREAM(getPtrValue(s_object));
  GInputStream* source = G_INPUT_STREAM(getPtrValue(s_source));
  GOutputStreamSpliceFlags flags = ((GOutputStreamSpliceFlags)asCFlag(s_flags, G_TYPE_OUTPUT_STREAM_SPLICE_FLAGS));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));

  gssize ans;
  GError* error = NULL;

  ans = object_class->splice(object, source, flags, cancellable, &error);

  _result = asRInteger(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("goutput_stream_splice exists only in gio >= 2.16.0");
#endif

  return(_result);
}

USER_OBJECT_
S_goutput_stream_class_flush(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_cancellable)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GOutputStreamClass* object_class = ((GOutputStreamClass*)getPtrValue(s_object_class));
  GOutputStream* object = G_OUTPUT_STREAM(getPtrValue(s_object));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));

  gboolean ans;
  GError* error = NULL;

  ans = object_class->flush(object, cancellable, &error);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("goutput_stream_flush exists only in gio >= 2.16.0");
#endif

  return(_result);
}

USER_OBJECT_
S_goutput_stream_class_close_fn(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_cancellable)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GOutputStreamClass* object_class = ((GOutputStreamClass*)getPtrValue(s_object_class));
  GOutputStream* object = G_OUTPUT_STREAM(getPtrValue(s_object));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));

  gboolean ans;
  GError* error = NULL;

  ans = object_class->close_fn(object, cancellable, &error);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("goutput_stream_close_fn exists only in gio >= 2.16.0");
#endif

  return(_result);
}

USER_OBJECT_
S_goutput_stream_class_write_async(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_buffer, USER_OBJECT_ s_io_priority, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GAsyncReadyCallback callback = ((GAsyncReadyCallback)S_GAsyncReadyCallback);
  R_CallbackData* user_data = R_createCBData(s_callback, s_user_data);
  GOutputStreamClass* object_class = ((GOutputStreamClass*)getPtrValue(s_object_class));
  GOutputStream* object = G_OUTPUT_STREAM(getPtrValue(s_object));
  const guchar* buffer = ((const guchar*)asCArray(s_buffer, guchar, asCRaw));
  gsize count = ((gsize)GET_LENGTH(s_buffer));
  int io_priority = ((int)asCInteger(s_io_priority));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));


  object_class->write_async(object, buffer, count, io_priority, cancellable, callback, user_data);

#else
  error("goutput_stream_write_async exists only in gio >= 2.16.0");
#endif

  return(_result);
}

USER_OBJECT_
S_goutput_stream_class_write_finish(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_result)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GOutputStreamClass* object_class = ((GOutputStreamClass*)getPtrValue(s_object_class));
  GOutputStream* object = G_OUTPUT_STREAM(getPtrValue(s_object));
  GAsyncResult* result = G_ASYNC_RESULT(getPtrValue(s_result));

  gssize ans;
  GError* error = NULL;

  ans = object_class->write_finish(object, result, &error);

  _result = asRInteger(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("goutput_stream_write_finish exists only in gio >= 2.16.0");
#endif

  return(_result);
}

USER_OBJECT_
S_goutput_stream_class_splice_async(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_source, USER_OBJECT_ s_flags, USER_OBJECT_ s_io_priority, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GAsyncReadyCallback callback = ((GAsyncReadyCallback)S_GAsyncReadyCallback);
  R_CallbackData* user_data = R_createCBData(s_callback, s_user_data);
  GOutputStreamClass* object_class = ((GOutputStreamClass*)getPtrValue(s_object_class));
  GOutputStream* object = G_OUTPUT_STREAM(getPtrValue(s_object));
  GInputStream* source = G_INPUT_STREAM(getPtrValue(s_source));
  GOutputStreamSpliceFlags flags = ((GOutputStreamSpliceFlags)asCFlag(s_flags, G_TYPE_OUTPUT_STREAM_SPLICE_FLAGS));
  int io_priority = ((int)asCInteger(s_io_priority));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));


  object_class->splice_async(object, source, flags, io_priority, cancellable, callback, user_data);

#else
  error("goutput_stream_splice_async exists only in gio >= 2.16.0");
#endif

  return(_result);
}

USER_OBJECT_
S_goutput_stream_class_splice_finish(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_result)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GOutputStreamClass* object_class = ((GOutputStreamClass*)getPtrValue(s_object_class));
  GOutputStream* object = G_OUTPUT_STREAM(getPtrValue(s_object));
  GAsyncResult* result = G_ASYNC_RESULT(getPtrValue(s_result));

  gssize ans;
  GError* error = NULL;

  ans = object_class->splice_finish(object, result, &error);

  _result = asRInteger(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("goutput_stream_splice_finish exists only in gio >= 2.16.0");
#endif

  return(_result);
}

USER_OBJECT_
S_goutput_stream_class_flush_async(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_io_priority, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GAsyncReadyCallback callback = ((GAsyncReadyCallback)S_GAsyncReadyCallback);
  R_CallbackData* user_data = R_createCBData(s_callback, s_user_data);
  GOutputStreamClass* object_class = ((GOutputStreamClass*)getPtrValue(s_object_class));
  GOutputStream* object = G_OUTPUT_STREAM(getPtrValue(s_object));
  int io_priority = ((int)asCInteger(s_io_priority));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));


  object_class->flush_async(object, io_priority, cancellable, callback, user_data);

#else
  error("goutput_stream_flush_async exists only in gio >= 2.16.0");
#endif

  return(_result);
}

USER_OBJECT_
S_goutput_stream_class_flush_finish(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_result)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GOutputStreamClass* object_class = ((GOutputStreamClass*)getPtrValue(s_object_class));
  GOutputStream* object = G_OUTPUT_STREAM(getPtrValue(s_object));
  GAsyncResult* result = G_ASYNC_RESULT(getPtrValue(s_result));

  gboolean ans;
  GError* error = NULL;

  ans = object_class->flush_finish(object, result, &error);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("goutput_stream_flush_finish exists only in gio >= 2.16.0");
#endif

  return(_result);
}

USER_OBJECT_
S_goutput_stream_class_close_async(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_io_priority, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GAsyncReadyCallback callback = ((GAsyncReadyCallback)S_GAsyncReadyCallback);
  R_CallbackData* user_data = R_createCBData(s_callback, s_user_data);
  GOutputStreamClass* object_class = ((GOutputStreamClass*)getPtrValue(s_object_class));
  GOutputStream* object = G_OUTPUT_STREAM(getPtrValue(s_object));
  int io_priority = ((int)asCInteger(s_io_priority));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));


  object_class->close_async(object, io_priority, cancellable, callback, user_data);

#else
  error("goutput_stream_close_async exists only in gio >= 2.16.0");
#endif

  return(_result);
}

USER_OBJECT_
S_goutput_stream_class_close_finish(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_result)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GOutputStreamClass* object_class = ((GOutputStreamClass*)getPtrValue(s_object_class));
  GOutputStream* object = G_OUTPUT_STREAM(getPtrValue(s_object));
  GAsyncResult* result = G_ASYNC_RESULT(getPtrValue(s_result));

  gboolean ans;
  GError* error = NULL;

  ans = object_class->close_finish(object, result, &error);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("goutput_stream_close_finish exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

#if GIO_CHECK_VERSION(2, 16, 0)
static SEXP S_GMemoryOutputStream_symbol;
void
S_gmemory_output_stream_class_init(GMemoryOutputStreamClass * c, SEXP e)
{
  SEXP s;

  S_GMemoryOutputStream_symbol = install("GMemoryOutputStream");
  s = PROTECT(findVar(S_GMemoryOutputStream_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GMemoryOutputStreamClass)) = e;

  S_goutput_stream_class_init(((GOutputStreamClass *)c), e);

  UNPROTECT(1);

}
#endif 

#if GIO_CHECK_VERSION(2, 16, 0)
static SEXP S_GFilterOutputStream_symbol;
void
S_gfilter_output_stream_class_init(GFilterOutputStreamClass * c, SEXP e)
{
  SEXP s;

  S_GFilterOutputStream_symbol = install("GFilterOutputStream");
  s = PROTECT(findVar(S_GFilterOutputStream_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GFilterOutputStreamClass)) = e;

  S_goutput_stream_class_init(((GOutputStreamClass *)c), e);

  UNPROTECT(1);

}
#endif 

#if GIO_CHECK_VERSION(2, 16, 0)
static SEXP S_GBufferedOutputStream_symbol;
void
S_gbuffered_output_stream_class_init(GBufferedOutputStreamClass * c, SEXP e)
{
  SEXP s;

  S_GBufferedOutputStream_symbol = install("GBufferedOutputStream");
  s = PROTECT(findVar(S_GBufferedOutputStream_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GBufferedOutputStreamClass)) = e;

  S_gfilter_output_stream_class_init(((GFilterOutputStreamClass *)c), e);

  UNPROTECT(1);

}
#endif 

#if GIO_CHECK_VERSION(2, 16, 0)
static SEXP S_GDataOutputStream_symbol;
void
S_gdata_output_stream_class_init(GDataOutputStreamClass * c, SEXP e)
{
  SEXP s;

  S_GDataOutputStream_symbol = install("GDataOutputStream");
  s = PROTECT(findVar(S_GDataOutputStream_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GDataOutputStreamClass)) = e;

  S_gfilter_output_stream_class_init(((GFilterOutputStreamClass *)c), e);

  UNPROTECT(1);

}
#endif 

#if GIO_CHECK_VERSION(2, 16, 0)
static SEXP S_GFileOutputStream_symbol;

static GFileInfo*
S_virtual_gfile_output_stream_query_info(GFileOutputStream* s_object, const char* s_attributes, GCancellable* s_cancellable, GError** s_error)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 4));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GFileOutputStream_symbol, S_GOBJECT_GET_ENV(s_object)), 0));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GFileOutputStream")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRString(s_attributes));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_cancellable, "GCancellable"));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((GFileInfo*)0));
  *s_error = asCGError(VECTOR_ELT(s_ans, 1));
  return(G_FILE_INFO(getPtrValue(VECTOR_ELT(s_ans, 0))));
}

static void
S_virtual_gfile_output_stream_query_info_async(GFileOutputStream* s_object, const char* s_attributes, int s_io_priority, GCancellable* s_cancellable, GAsyncReadyCallback s_callback, gpointer s_user_data)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 7));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GFileOutputStream_symbol, S_GOBJECT_GET_ENV(s_object)), 1));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GFileOutputStream")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRString(s_attributes));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_io_priority));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_cancellable, "GCancellable"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerFn(((DL_FUNC)s_callback), "GAsyncReadyCallback"));
  tmp = CDR(tmp);
  SETCAR(tmp, s_user_data);
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static GFileInfo*
S_virtual_gfile_output_stream_query_info_finish(GFileOutputStream* s_object, GAsyncResult* s_result, GError** s_error)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GFileOutputStream_symbol, S_GOBJECT_GET_ENV(s_object)), 2));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GFileOutputStream")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_result, "GAsyncResult"));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((GFileInfo*)0));
  *s_error = asCGError(VECTOR_ELT(s_ans, 1));
  return(G_FILE_INFO(getPtrValue(VECTOR_ELT(s_ans, 0))));
}

static char*
S_virtual_gfile_output_stream_get_etag(GFileOutputStream* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GFileOutputStream_symbol, S_GOBJECT_GET_ENV(s_object)), 3));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GFileOutputStream")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((char*)0));
  return(((char*)g_strdup(asCString(s_ans))));
}
void
S_gfile_output_stream_class_init(GFileOutputStreamClass * c, SEXP e)
{
  SEXP s;

  S_GFileOutputStream_symbol = install("GFileOutputStream");
  s = PROTECT(findVar(S_GFileOutputStream_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GFileOutputStreamClass)) = e;

  S_goutput_stream_class_init(((GOutputStreamClass *)c), e);

  UNPROTECT(1);

#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 0) != NULL_USER_OBJECT)
    c->query_info = S_virtual_gfile_output_stream_query_info;
#endif
#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 1) != NULL_USER_OBJECT)
    c->query_info_async = S_virtual_gfile_output_stream_query_info_async;
#endif
#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 2) != NULL_USER_OBJECT)
    c->query_info_finish = S_virtual_gfile_output_stream_query_info_finish;
#endif
#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 3) != NULL_USER_OBJECT)
    c->get_etag = S_virtual_gfile_output_stream_get_etag;
#endif
}
#endif
USER_OBJECT_
S_gfile_output_stream_class_query_info(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_attributes, USER_OBJECT_ s_cancellable)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFileOutputStreamClass* object_class = ((GFileOutputStreamClass*)getPtrValue(s_object_class));
  GFileOutputStream* object = G_FILE_OUTPUT_STREAM(getPtrValue(s_object));
  const char* attributes = ((const char*)asCString(s_attributes));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));

  GFileInfo* ans;
  GError* error = NULL;

  ans = object_class->query_info(object, attributes, cancellable, &error);

  _result = toRPointerWithRef(ans, "GFileInfo");

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("gfile_output_stream_query_info exists only in gio >= 2.16.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gfile_output_stream_class_query_info_async(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_attributes, USER_OBJECT_ s_io_priority, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GAsyncReadyCallback callback = ((GAsyncReadyCallback)S_GAsyncReadyCallback);
  R_CallbackData* user_data = R_createCBData(s_callback, s_user_data);
  GFileOutputStreamClass* object_class = ((GFileOutputStreamClass*)getPtrValue(s_object_class));
  GFileOutputStream* object = G_FILE_OUTPUT_STREAM(getPtrValue(s_object));
  const char* attributes = ((const char*)asCString(s_attributes));
  int io_priority = ((int)asCInteger(s_io_priority));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));


  object_class->query_info_async(object, attributes, io_priority, cancellable, callback, user_data);

#else
  error("gfile_output_stream_query_info_async exists only in gio >= 2.16.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gfile_output_stream_class_query_info_finish(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_result)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFileOutputStreamClass* object_class = ((GFileOutputStreamClass*)getPtrValue(s_object_class));
  GFileOutputStream* object = G_FILE_OUTPUT_STREAM(getPtrValue(s_object));
  GAsyncResult* result = G_ASYNC_RESULT(getPtrValue(s_result));

  GFileInfo* ans;
  GError* error = NULL;

  ans = object_class->query_info_finish(object, result, &error);

  _result = toRPointerWithRef(ans, "GFileInfo");

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("gfile_output_stream_query_info_finish exists only in gio >= 2.16.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gfile_output_stream_class_get_etag(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFileOutputStreamClass* object_class = ((GFileOutputStreamClass*)getPtrValue(s_object_class));
  GFileOutputStream* object = G_FILE_OUTPUT_STREAM(getPtrValue(s_object));

  char* ans;

  ans = object_class->get_etag(object);

  _result = asRString(ans);
    CLEANUP(g_free, ans);;
#else
  error("gfile_output_stream_get_etag exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

#if GIO_CHECK_VERSION(2, 16, 0)
static SEXP S_GVfs_symbol;

static gboolean
S_virtual_gvfs_is_active(GVfs* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GVfs_symbol, S_GOBJECT_GET_ENV(s_object)), 0));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GVfs")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  return(((gboolean)asCLogical(s_ans)));
}

static GFile*
S_virtual_gvfs_get_file_for_path(GVfs* s_object, const char* s_path)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GVfs_symbol, S_GOBJECT_GET_ENV(s_object)), 1));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GVfs")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRString(s_path));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((GFile*)0));
  return(G_FILE(getPtrValue(s_ans)));
}

static GFile*
S_virtual_gvfs_get_file_for_uri(GVfs* s_object, const char* s_uri)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GVfs_symbol, S_GOBJECT_GET_ENV(s_object)), 2));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GVfs")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRString(s_uri));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((GFile*)0));
  return(G_FILE(getPtrValue(s_ans)));
}

static GFile*
S_virtual_gvfs_parse_name(GVfs* s_object, const char* s_parse_name)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GVfs_symbol, S_GOBJECT_GET_ENV(s_object)), 3));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GVfs")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRString(s_parse_name));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((GFile*)0));
  return(G_FILE(getPtrValue(s_ans)));
}

static const char* const*
S_virtual_gvfs_get_supported_uri_schemes(GVfs* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GVfs_symbol, S_GOBJECT_GET_ENV(s_object)), 4));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GVfs")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((const char* const*)0));
  return(((const char* const*)asCStringArray(s_ans)));
}
void
S_gvfs_class_init(GVfsClass * c, SEXP e)
{
  SEXP s;

  S_GVfs_symbol = install("GVfs");
  s = PROTECT(findVar(S_GVfs_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GVfsClass)) = e;

  S_gobject_class_init(((GObjectClass *)c), e);

  UNPROTECT(1);

#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 0) != NULL_USER_OBJECT)
    c->is_active = S_virtual_gvfs_is_active;
#endif
#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 1) != NULL_USER_OBJECT)
    c->get_file_for_path = S_virtual_gvfs_get_file_for_path;
#endif
#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 2) != NULL_USER_OBJECT)
    c->get_file_for_uri = S_virtual_gvfs_get_file_for_uri;
#endif
#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 3) != NULL_USER_OBJECT)
    c->parse_name = S_virtual_gvfs_parse_name;
#endif
#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 4) != NULL_USER_OBJECT)
    c->get_supported_uri_schemes = S_virtual_gvfs_get_supported_uri_schemes;
#endif
}
#endif
USER_OBJECT_
S_gvfs_class_is_active(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GVfsClass* object_class = ((GVfsClass*)getPtrValue(s_object_class));
  GVfs* object = G_VFS(getPtrValue(s_object));

  gboolean ans;

  ans = object_class->is_active(object);

  _result = asRLogical(ans);
#else
  error("gvfs_is_active exists only in gio >= 2.16.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gvfs_class_get_file_for_path(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_path)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GVfsClass* object_class = ((GVfsClass*)getPtrValue(s_object_class));
  GVfs* object = G_VFS(getPtrValue(s_object));
  const char* path = ((const char*)asCString(s_path));

  GFile* ans;

  ans = object_class->get_file_for_path(object, path);

  _result = toRPointerWithFinalizer(ans, "GFile", (RPointerFinalizer) g_object_unref);
#else
  error("gvfs_get_file_for_path exists only in gio >= 2.16.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gvfs_class_get_file_for_uri(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_uri)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GVfsClass* object_class = ((GVfsClass*)getPtrValue(s_object_class));
  GVfs* object = G_VFS(getPtrValue(s_object));
  const char* uri = ((const char*)asCString(s_uri));

  GFile* ans;

  ans = object_class->get_file_for_uri(object, uri);

  _result = toRPointerWithFinalizer(ans, "GFile", (RPointerFinalizer) g_object_unref);
#else
  error("gvfs_get_file_for_uri exists only in gio >= 2.16.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gvfs_class_parse_name(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_parse_name)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GVfsClass* object_class = ((GVfsClass*)getPtrValue(s_object_class));
  GVfs* object = G_VFS(getPtrValue(s_object));
  const char* parse_name = ((const char*)asCString(s_parse_name));

  GFile* ans;

  ans = object_class->parse_name(object, parse_name);

  _result = toRPointerWithFinalizer(ans, "GFile", (RPointerFinalizer) g_object_unref);
#else
  error("gvfs_parse_name exists only in gio >= 2.16.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gvfs_class_get_supported_uri_schemes(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GVfsClass* object_class = ((GVfsClass*)getPtrValue(s_object_class));
  GVfs* object = G_VFS(getPtrValue(s_object));

  const char* const* ans;

  ans = object_class->get_supported_uri_schemes(object);

  _result = asRStringArray(ans);
#else
  error("gvfs_get_supported_uri_schemes exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

#if GIO_CHECK_VERSION(2, 16, 0)
static SEXP S_GVolumeMonitor_symbol;

static GList*
S_virtual_gvolume_monitor_get_connected_drives(GVolumeMonitor* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GVolumeMonitor_symbol, S_GOBJECT_GET_ENV(s_object)), 0));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GVolumeMonitor")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((GList*)0));
  return(((GList*)asCArrayRef(s_ans, GList, asCGListDup)));
}

static GList*
S_virtual_gvolume_monitor_get_volumes(GVolumeMonitor* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GVolumeMonitor_symbol, S_GOBJECT_GET_ENV(s_object)), 1));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GVolumeMonitor")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((GList*)0));
  return(((GList*)asCArrayRef(s_ans, GList, asCGListDup)));
}

static GList*
S_virtual_gvolume_monitor_get_mounts(GVolumeMonitor* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GVolumeMonitor_symbol, S_GOBJECT_GET_ENV(s_object)), 2));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GVolumeMonitor")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((GList*)0));
  return(((GList*)asCArrayRef(s_ans, GList, asCGListDup)));
}

static GVolume*
S_virtual_gvolume_monitor_get_volume_for_uuid(GVolumeMonitor* s_object, const char* s_uuid)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GVolumeMonitor_symbol, S_GOBJECT_GET_ENV(s_object)), 3));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GVolumeMonitor")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRString(s_uuid));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((GVolume*)0));
  return(G_VOLUME(getPtrValue(s_ans)));
}

static GMount*
S_virtual_gvolume_monitor_get_mount_for_uuid(GVolumeMonitor* s_object, const char* s_uuid)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GVolumeMonitor_symbol, S_GOBJECT_GET_ENV(s_object)), 4));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GVolumeMonitor")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRString(s_uuid));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((GMount*)0));
  return(G_MOUNT(getPtrValue(s_ans)));
}
void
S_gvolume_monitor_class_init(GVolumeMonitorClass * c, SEXP e)
{
  SEXP s;

  S_GVolumeMonitor_symbol = install("GVolumeMonitor");
  s = PROTECT(findVar(S_GVolumeMonitor_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GVolumeMonitorClass)) = e;

  S_gobject_class_init(((GObjectClass *)c), e);

  UNPROTECT(1);

#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 0) != NULL_USER_OBJECT)
    c->get_connected_drives = S_virtual_gvolume_monitor_get_connected_drives;
#endif
#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 1) != NULL_USER_OBJECT)
    c->get_volumes = S_virtual_gvolume_monitor_get_volumes;
#endif
#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 2) != NULL_USER_OBJECT)
    c->get_mounts = S_virtual_gvolume_monitor_get_mounts;
#endif
#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 3) != NULL_USER_OBJECT)
    c->get_volume_for_uuid = S_virtual_gvolume_monitor_get_volume_for_uuid;
#endif
#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 4) != NULL_USER_OBJECT)
    c->get_mount_for_uuid = S_virtual_gvolume_monitor_get_mount_for_uuid;
#endif
}
#endif
USER_OBJECT_
S_gvolume_monitor_class_get_connected_drives(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GVolumeMonitorClass* object_class = ((GVolumeMonitorClass*)getPtrValue(s_object_class));
  GVolumeMonitor* object = G_VOLUME_MONITOR(getPtrValue(s_object));

  GList* ans;

  ans = object_class->get_connected_drives(object);

  _result = asRGListWithRef(ans, "GDrive");
    CLEANUP(g_list_free, ans);;
#else
  error("gvolume_monitor_get_connected_drives exists only in gio >= 2.16.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gvolume_monitor_class_get_volumes(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GVolumeMonitorClass* object_class = ((GVolumeMonitorClass*)getPtrValue(s_object_class));
  GVolumeMonitor* object = G_VOLUME_MONITOR(getPtrValue(s_object));

  GList* ans;

  ans = object_class->get_volumes(object);

  _result = asRGListWithRef(ans, "GVolume");
    CLEANUP(g_list_free, ans);;
#else
  error("gvolume_monitor_get_volumes exists only in gio >= 2.16.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gvolume_monitor_class_get_mounts(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GVolumeMonitorClass* object_class = ((GVolumeMonitorClass*)getPtrValue(s_object_class));
  GVolumeMonitor* object = G_VOLUME_MONITOR(getPtrValue(s_object));

  GList* ans;

  ans = object_class->get_mounts(object);

  _result = asRGListWithRef(ans, "GMount");
    CLEANUP(g_list_free, ans);;
#else
  error("gvolume_monitor_get_mounts exists only in gio >= 2.16.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gvolume_monitor_class_get_volume_for_uuid(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_uuid)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GVolumeMonitorClass* object_class = ((GVolumeMonitorClass*)getPtrValue(s_object_class));
  GVolumeMonitor* object = G_VOLUME_MONITOR(getPtrValue(s_object));
  const char* uuid = ((const char*)asCString(s_uuid));

  GVolume* ans;

  ans = object_class->get_volume_for_uuid(object, uuid);

  _result = toRPointerWithFinalizer(ans, "GVolume", (RPointerFinalizer) g_object_unref);
#else
  error("gvolume_monitor_get_volume_for_uuid exists only in gio >= 2.16.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gvolume_monitor_class_get_mount_for_uuid(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_uuid)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GVolumeMonitorClass* object_class = ((GVolumeMonitorClass*)getPtrValue(s_object_class));
  GVolumeMonitor* object = G_VOLUME_MONITOR(getPtrValue(s_object));
  const char* uuid = ((const char*)asCString(s_uuid));

  GMount* ans;

  ans = object_class->get_mount_for_uuid(object, uuid);

  _result = toRPointerWithFinalizer(ans, "GMount", (RPointerFinalizer) g_object_unref);
#else
  error("gvolume_monitor_get_mount_for_uuid exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

#if GIO_CHECK_VERSION(2, 16, 0)
static SEXP S_GNativeVolumeMonitor_symbol;
void
S_gnative_volume_monitor_class_init(GNativeVolumeMonitorClass * c, SEXP e)
{
  SEXP s;

  S_GNativeVolumeMonitor_symbol = install("GNativeVolumeMonitor");
  s = PROTECT(findVar(S_GNativeVolumeMonitor_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GNativeVolumeMonitorClass)) = e;

  S_gvolume_monitor_class_init(((GVolumeMonitorClass *)c), e);

  UNPROTECT(1);

}
#endif 

#if GIO_CHECK_VERSION(2, 22, 0)
static SEXP S_GFileIOStream_symbol;

static GFileInfo*
S_virtual_gfile_iostream_query_info(GFileIOStream* s_object, const char* s_attributes, GCancellable* s_cancellable, GError** s_error)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 4));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GFileIOStream_symbol, S_GOBJECT_GET_ENV(s_object)), 0));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GFileIOStream")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRString(s_attributes));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_cancellable, "GCancellable"));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((GFileInfo*)0));
  *s_error = asCGError(VECTOR_ELT(s_ans, 1));
  return(G_FILE_INFO(getPtrValue(VECTOR_ELT(s_ans, 0))));
}

static void
S_virtual_gfile_iostream_query_info_async(GFileIOStream* s_object, const char* s_attributes, int s_io_priority, GCancellable* s_cancellable, GAsyncReadyCallback s_callback, gpointer s_user_data)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 7));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GFileIOStream_symbol, S_GOBJECT_GET_ENV(s_object)), 1));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GFileIOStream")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRString(s_attributes));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_io_priority));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_cancellable, "GCancellable"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerFn(((DL_FUNC)s_callback), "GAsyncReadyCallback"));
  tmp = CDR(tmp);
  SETCAR(tmp, s_user_data);
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static GFileInfo*
S_virtual_gfile_iostream_query_info_finish(GFileIOStream* s_object, GAsyncResult* s_result, GError** s_error)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GFileIOStream_symbol, S_GOBJECT_GET_ENV(s_object)), 2));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GFileIOStream")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_result, "GAsyncResult"));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((GFileInfo*)0));
  *s_error = asCGError(VECTOR_ELT(s_ans, 1));
  return(G_FILE_INFO(getPtrValue(VECTOR_ELT(s_ans, 0))));
}

static char*
S_virtual_gfile_iostream_get_etag(GFileIOStream* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GFileIOStream_symbol, S_GOBJECT_GET_ENV(s_object)), 3));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GFileIOStream")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((char*)0));
  return(((char*)g_strdup(asCString(s_ans))));
}
void
S_gfile_iostream_class_init(GFileIOStreamClass * c, SEXP e)
{
  SEXP s;

  S_GFileIOStream_symbol = install("GFileIOStream");
  s = PROTECT(findVar(S_GFileIOStream_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GFileIOStreamClass)) = e;

  S_giostream_class_init(((GIOStreamClass *)c), e);

  UNPROTECT(1);

#if GIO_CHECK_VERSION(2, 22, 0)
  if(VECTOR_ELT(s, 0) != NULL_USER_OBJECT)
    c->query_info = S_virtual_gfile_iostream_query_info;
#endif
#if GIO_CHECK_VERSION(2, 22, 0)
  if(VECTOR_ELT(s, 1) != NULL_USER_OBJECT)
    c->query_info_async = S_virtual_gfile_iostream_query_info_async;
#endif
#if GIO_CHECK_VERSION(2, 22, 0)
  if(VECTOR_ELT(s, 2) != NULL_USER_OBJECT)
    c->query_info_finish = S_virtual_gfile_iostream_query_info_finish;
#endif
#if GIO_CHECK_VERSION(2, 22, 0)
  if(VECTOR_ELT(s, 3) != NULL_USER_OBJECT)
    c->get_etag = S_virtual_gfile_iostream_get_etag;
#endif
}
#endif
USER_OBJECT_
S_gfile_iostream_class_query_info(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_attributes, USER_OBJECT_ s_cancellable)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GFileIOStreamClass* object_class = ((GFileIOStreamClass*)getPtrValue(s_object_class));
  GFileIOStream* object = G_FILE_IO_STREAM(getPtrValue(s_object));
  const char* attributes = ((const char*)asCString(s_attributes));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));

  GFileInfo* ans;
  GError* error = NULL;

  ans = object_class->query_info(object, attributes, cancellable, &error);

  _result = toRPointerWithRef(ans, "GFileInfo");

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("gfile_iostream_query_info exists only in gio >= 2.22.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gfile_iostream_class_query_info_async(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_attributes, USER_OBJECT_ s_io_priority, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GAsyncReadyCallback callback = ((GAsyncReadyCallback)S_GAsyncReadyCallback);
  R_CallbackData* user_data = R_createCBData(s_callback, s_user_data);
  GFileIOStreamClass* object_class = ((GFileIOStreamClass*)getPtrValue(s_object_class));
  GFileIOStream* object = G_FILE_IO_STREAM(getPtrValue(s_object));
  const char* attributes = ((const char*)asCString(s_attributes));
  int io_priority = ((int)asCInteger(s_io_priority));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));


  object_class->query_info_async(object, attributes, io_priority, cancellable, callback, user_data);

#else
  error("gfile_iostream_query_info_async exists only in gio >= 2.22.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gfile_iostream_class_query_info_finish(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_result)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GFileIOStreamClass* object_class = ((GFileIOStreamClass*)getPtrValue(s_object_class));
  GFileIOStream* object = G_FILE_IO_STREAM(getPtrValue(s_object));
  GAsyncResult* result = G_ASYNC_RESULT(getPtrValue(s_result));

  GFileInfo* ans;
  GError* error = NULL;

  ans = object_class->query_info_finish(object, result, &error);

  _result = toRPointerWithRef(ans, "GFileInfo");

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("gfile_iostream_query_info_finish exists only in gio >= 2.22.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gfile_iostream_class_get_etag(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GFileIOStreamClass* object_class = ((GFileIOStreamClass*)getPtrValue(s_object_class));
  GFileIOStream* object = G_FILE_IO_STREAM(getPtrValue(s_object));

  char* ans;

  ans = object_class->get_etag(object);

  _result = asRString(ans);
    CLEANUP(g_free, ans);;
#else
  error("gfile_iostream_get_etag exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

#if GIO_CHECK_VERSION(2, 22, 0)
static SEXP S_GInetAddress_symbol;

static gchar*
S_virtual_ginet_address_to_string(GInetAddress* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GInetAddress_symbol, S_GOBJECT_GET_ENV(s_object)), 0));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GInetAddress")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gchar*)0));
  return(((gchar*)g_strdup(asCString(s_ans))));
}

static const guint8*
S_virtual_ginet_address_to_bytes(GInetAddress* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GInetAddress_symbol, S_GOBJECT_GET_ENV(s_object)), 1));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GInetAddress")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((const guint8*)0));
  return(((const guint8*)asCArray(s_ans, guint8, asCRaw)));
}
void
S_ginet_address_class_init(GInetAddressClass * c, SEXP e)
{
  SEXP s;

  S_GInetAddress_symbol = install("GInetAddress");
  s = PROTECT(findVar(S_GInetAddress_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GInetAddressClass)) = e;

  S_gobject_class_init(((GObjectClass *)c), e);

  UNPROTECT(1);

#if GIO_CHECK_VERSION(2, 22, 0)
  if(VECTOR_ELT(s, 0) != NULL_USER_OBJECT)
    c->to_string = S_virtual_ginet_address_to_string;
#endif
#if GIO_CHECK_VERSION(2, 22, 0)
  if(VECTOR_ELT(s, 1) != NULL_USER_OBJECT)
    c->to_bytes = S_virtual_ginet_address_to_bytes;
#endif
}
#endif
USER_OBJECT_
S_ginet_address_class_to_string(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GInetAddressClass* object_class = ((GInetAddressClass*)getPtrValue(s_object_class));
  GInetAddress* object = G_INET_ADDRESS(getPtrValue(s_object));

  gchar* ans;

  ans = object_class->to_string(object);

  _result = asRString(ans);
    CLEANUP(g_free, ans);;
#else
  error("ginet_address_to_string exists only in gio >= 2.22.0");
#endif

  return(_result);
}

USER_OBJECT_
S_ginet_address_class_to_bytes(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GInetAddressClass* object_class = ((GInetAddressClass*)getPtrValue(s_object_class));
  GInetAddress* object = G_INET_ADDRESS(getPtrValue(s_object));

  const guint8* ans;

  ans = object_class->to_bytes(object);

  _result = asRRawArray(ans);
#else
  error("ginet_address_to_bytes exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

#if GIO_CHECK_VERSION(2, 22, 0)
static SEXP S_GNetworkAddress_symbol;
void
S_gnetwork_address_class_init(GNetworkAddressClass * c, SEXP e)
{
  SEXP s;

  S_GNetworkAddress_symbol = install("GNetworkAddress");
  s = PROTECT(findVar(S_GNetworkAddress_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GNetworkAddressClass)) = e;

  S_gobject_class_init(((GObjectClass *)c), e);

  UNPROTECT(1);

}
#endif 

#if GIO_CHECK_VERSION(2, 22, 0)
static SEXP S_GNetworkService_symbol;
void
S_gnetwork_service_class_init(GNetworkServiceClass * c, SEXP e)
{
  SEXP s;

  S_GNetworkService_symbol = install("GNetworkService");
  s = PROTECT(findVar(S_GNetworkService_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GNetworkServiceClass)) = e;

  S_gobject_class_init(((GObjectClass *)c), e);

  UNPROTECT(1);

}
#endif 

#if GIO_CHECK_VERSION(2, 22, 0)
static SEXP S_GResolver_symbol;

static GList*
S_virtual_gresolver_lookup_by_name(GResolver* s_object, const gchar* s_hostname, GCancellable* s_cancellable, GError** s_error)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 4));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GResolver_symbol, S_GOBJECT_GET_ENV(s_object)), 0));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GResolver")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRString(s_hostname));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_cancellable, "GCancellable"));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((GList*)0));
  *s_error = asCGError(VECTOR_ELT(s_ans, 1));
  return(((GList*)asCArrayRef(VECTOR_ELT(s_ans, 0), GList, asCGListDup)));
}

static void
S_virtual_gresolver_lookup_by_name_async(GResolver* s_object, const gchar* s_hostname, GCancellable* s_cancellable, GAsyncReadyCallback s_callback, gpointer s_user_data)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 6));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GResolver_symbol, S_GOBJECT_GET_ENV(s_object)), 1));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GResolver")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRString(s_hostname));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_cancellable, "GCancellable"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerFn(((DL_FUNC)s_callback), "GAsyncReadyCallback"));
  tmp = CDR(tmp);
  SETCAR(tmp, s_user_data);
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static GList*
S_virtual_gresolver_lookup_by_name_finish(GResolver* s_object, GAsyncResult* s_result, GError** s_error)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GResolver_symbol, S_GOBJECT_GET_ENV(s_object)), 2));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GResolver")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_result, "GAsyncResult"));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((GList*)0));
  *s_error = asCGError(VECTOR_ELT(s_ans, 1));
  return(((GList*)asCArrayRef(VECTOR_ELT(s_ans, 0), GList, asCGListDup)));
}

static gchar*
S_virtual_gresolver_lookup_by_address(GResolver* s_object, GInetAddress* s_address, GCancellable* s_cancellable, GError** s_error)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 4));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GResolver_symbol, S_GOBJECT_GET_ENV(s_object)), 3));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GResolver")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_address, "GInetAddress"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_cancellable, "GCancellable"));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gchar*)0));
  *s_error = asCGError(VECTOR_ELT(s_ans, 1));
  return(((gchar*)g_strdup(asCString(VECTOR_ELT(s_ans, 0)))));
}

static void
S_virtual_gresolver_lookup_by_address_async(GResolver* s_object, GInetAddress* s_address, GCancellable* s_cancellable, GAsyncReadyCallback s_callback, gpointer s_user_data)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 6));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GResolver_symbol, S_GOBJECT_GET_ENV(s_object)), 4));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GResolver")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_address, "GInetAddress"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_cancellable, "GCancellable"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerFn(((DL_FUNC)s_callback), "GAsyncReadyCallback"));
  tmp = CDR(tmp);
  SETCAR(tmp, s_user_data);
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static gchar*
S_virtual_gresolver_lookup_by_address_finish(GResolver* s_object, GAsyncResult* s_result, GError** s_error)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GResolver_symbol, S_GOBJECT_GET_ENV(s_object)), 5));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GResolver")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_result, "GAsyncResult"));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gchar*)0));
  *s_error = asCGError(VECTOR_ELT(s_ans, 1));
  return(((gchar*)g_strdup(asCString(VECTOR_ELT(s_ans, 0)))));
}

static GList*
S_virtual_gresolver_lookup_service(GResolver* s_object, const gchar* s_rrname, GCancellable* s_cancellable, GError** s_error)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 4));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GResolver_symbol, S_GOBJECT_GET_ENV(s_object)), 6));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GResolver")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRString(s_rrname));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_cancellable, "GCancellable"));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((GList*)0));
  *s_error = asCGError(VECTOR_ELT(s_ans, 1));
  return(((GList*)asCArrayRef(VECTOR_ELT(s_ans, 0), GList, asCGListDup)));
}

static void
S_virtual_gresolver_lookup_service_async(GResolver* s_object, const gchar* s_rrname, GCancellable* s_cancellable, GAsyncReadyCallback s_callback, gpointer s_user_data)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 6));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GResolver_symbol, S_GOBJECT_GET_ENV(s_object)), 7));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GResolver")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRString(s_rrname));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_cancellable, "GCancellable"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerFn(((DL_FUNC)s_callback), "GAsyncReadyCallback"));
  tmp = CDR(tmp);
  SETCAR(tmp, s_user_data);
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static GList*
S_virtual_gresolver_lookup_service_finish(GResolver* s_object, GAsyncResult* s_result, GError** s_error)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GResolver_symbol, S_GOBJECT_GET_ENV(s_object)), 8));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GResolver")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_result, "GAsyncResult"));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((GList*)0));
  *s_error = asCGError(VECTOR_ELT(s_ans, 1));
  return(((GList*)asCArrayRef(VECTOR_ELT(s_ans, 0), GList, asCGListDup)));
}
void
S_gresolver_class_init(GResolverClass * c, SEXP e)
{
  SEXP s;

  S_GResolver_symbol = install("GResolver");
  s = PROTECT(findVar(S_GResolver_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GResolverClass)) = e;

  S_gobject_class_init(((GObjectClass *)c), e);

  UNPROTECT(1);

#if GIO_CHECK_VERSION(2, 22, 0)
  if(VECTOR_ELT(s, 0) != NULL_USER_OBJECT)
    c->lookup_by_name = S_virtual_gresolver_lookup_by_name;
#endif
#if GIO_CHECK_VERSION(2, 22, 0)
  if(VECTOR_ELT(s, 1) != NULL_USER_OBJECT)
    c->lookup_by_name_async = S_virtual_gresolver_lookup_by_name_async;
#endif
#if GIO_CHECK_VERSION(2, 22, 0)
  if(VECTOR_ELT(s, 2) != NULL_USER_OBJECT)
    c->lookup_by_name_finish = S_virtual_gresolver_lookup_by_name_finish;
#endif
#if GIO_CHECK_VERSION(2, 22, 0)
  if(VECTOR_ELT(s, 3) != NULL_USER_OBJECT)
    c->lookup_by_address = S_virtual_gresolver_lookup_by_address;
#endif
#if GIO_CHECK_VERSION(2, 22, 0)
  if(VECTOR_ELT(s, 4) != NULL_USER_OBJECT)
    c->lookup_by_address_async = S_virtual_gresolver_lookup_by_address_async;
#endif
#if GIO_CHECK_VERSION(2, 22, 0)
  if(VECTOR_ELT(s, 5) != NULL_USER_OBJECT)
    c->lookup_by_address_finish = S_virtual_gresolver_lookup_by_address_finish;
#endif
#if GIO_CHECK_VERSION(2, 22, 0)
  if(VECTOR_ELT(s, 6) != NULL_USER_OBJECT)
    c->lookup_service = S_virtual_gresolver_lookup_service;
#endif
#if GIO_CHECK_VERSION(2, 22, 0)
  if(VECTOR_ELT(s, 7) != NULL_USER_OBJECT)
    c->lookup_service_async = S_virtual_gresolver_lookup_service_async;
#endif
#if GIO_CHECK_VERSION(2, 22, 0)
  if(VECTOR_ELT(s, 8) != NULL_USER_OBJECT)
    c->lookup_service_finish = S_virtual_gresolver_lookup_service_finish;
#endif
}
#endif
USER_OBJECT_
S_gresolver_class_lookup_by_name(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_hostname, USER_OBJECT_ s_cancellable)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GResolverClass* object_class = ((GResolverClass*)getPtrValue(s_object_class));
  GResolver* object = G_RESOLVER(getPtrValue(s_object));
  const gchar* hostname = ((const gchar*)asCString(s_hostname));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));

  GList* ans;
  GError* error = NULL;

  ans = object_class->lookup_by_name(object, hostname, cancellable, &error);

  _result = asRGListWithRef(ans, "GInetAddress");

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_list_free, ans);;
    CLEANUP(g_error_free, error);;
#else
  error("gresolver_lookup_by_name exists only in gio >= 2.22.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gresolver_class_lookup_by_name_async(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_hostname, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GAsyncReadyCallback callback = ((GAsyncReadyCallback)S_GAsyncReadyCallback);
  R_CallbackData* user_data = R_createCBData(s_callback, s_user_data);
  GResolverClass* object_class = ((GResolverClass*)getPtrValue(s_object_class));
  GResolver* object = G_RESOLVER(getPtrValue(s_object));
  const gchar* hostname = ((const gchar*)asCString(s_hostname));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));


  object_class->lookup_by_name_async(object, hostname, cancellable, callback, user_data);

#else
  error("gresolver_lookup_by_name_async exists only in gio >= 2.22.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gresolver_class_lookup_by_name_finish(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_result)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GResolverClass* object_class = ((GResolverClass*)getPtrValue(s_object_class));
  GResolver* object = G_RESOLVER(getPtrValue(s_object));
  GAsyncResult* result = G_ASYNC_RESULT(getPtrValue(s_result));

  GList* ans;
  GError* error = NULL;

  ans = object_class->lookup_by_name_finish(object, result, &error);

  _result = asRGListWithRef(ans, "GInetAddress");

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_list_free, ans);;
    CLEANUP(g_error_free, error);;
#else
  error("gresolver_lookup_by_name_finish exists only in gio >= 2.22.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gresolver_class_lookup_by_address(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_address, USER_OBJECT_ s_cancellable)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GResolverClass* object_class = ((GResolverClass*)getPtrValue(s_object_class));
  GResolver* object = G_RESOLVER(getPtrValue(s_object));
  GInetAddress* address = G_INET_ADDRESS(getPtrValue(s_address));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));

  gchar* ans;
  GError* error = NULL;

  ans = object_class->lookup_by_address(object, address, cancellable, &error);

  _result = asRString(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_free, ans);;
    CLEANUP(g_error_free, error);;
#else
  error("gresolver_lookup_by_address exists only in gio >= 2.22.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gresolver_class_lookup_by_address_async(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_address, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GAsyncReadyCallback callback = ((GAsyncReadyCallback)S_GAsyncReadyCallback);
  R_CallbackData* user_data = R_createCBData(s_callback, s_user_data);
  GResolverClass* object_class = ((GResolverClass*)getPtrValue(s_object_class));
  GResolver* object = G_RESOLVER(getPtrValue(s_object));
  GInetAddress* address = G_INET_ADDRESS(getPtrValue(s_address));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));


  object_class->lookup_by_address_async(object, address, cancellable, callback, user_data);

#else
  error("gresolver_lookup_by_address_async exists only in gio >= 2.22.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gresolver_class_lookup_by_address_finish(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_result)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GResolverClass* object_class = ((GResolverClass*)getPtrValue(s_object_class));
  GResolver* object = G_RESOLVER(getPtrValue(s_object));
  GAsyncResult* result = G_ASYNC_RESULT(getPtrValue(s_result));

  gchar* ans;
  GError* error = NULL;

  ans = object_class->lookup_by_address_finish(object, result, &error);

  _result = asRString(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_free, ans);;
    CLEANUP(g_error_free, error);;
#else
  error("gresolver_lookup_by_address_finish exists only in gio >= 2.22.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gresolver_class_lookup_service(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_rrname, USER_OBJECT_ s_cancellable)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GResolverClass* object_class = ((GResolverClass*)getPtrValue(s_object_class));
  GResolver* object = G_RESOLVER(getPtrValue(s_object));
  const gchar* rrname = ((const gchar*)asCString(s_rrname));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));

  GList* ans;
  GError* error = NULL;

  ans = object_class->lookup_service(object, rrname, cancellable, &error);

  _result = asRGList(ans, "GSrvTarget");

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_list_free, ans);;
    CLEANUP(g_error_free, error);;
#else
  error("gresolver_lookup_service exists only in gio >= 2.22.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gresolver_class_lookup_service_async(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_rrname, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GAsyncReadyCallback callback = ((GAsyncReadyCallback)S_GAsyncReadyCallback);
  R_CallbackData* user_data = R_createCBData(s_callback, s_user_data);
  GResolverClass* object_class = ((GResolverClass*)getPtrValue(s_object_class));
  GResolver* object = G_RESOLVER(getPtrValue(s_object));
  const gchar* rrname = ((const gchar*)asCString(s_rrname));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));


  object_class->lookup_service_async(object, rrname, cancellable, callback, user_data);

#else
  error("gresolver_lookup_service_async exists only in gio >= 2.22.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gresolver_class_lookup_service_finish(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_result)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GResolverClass* object_class = ((GResolverClass*)getPtrValue(s_object_class));
  GResolver* object = G_RESOLVER(getPtrValue(s_object));
  GAsyncResult* result = G_ASYNC_RESULT(getPtrValue(s_result));

  GList* ans;
  GError* error = NULL;

  ans = object_class->lookup_service_finish(object, result, &error);

  _result = asRGList(ans, "GSrvTarget");

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_list_free, ans);;
    CLEANUP(g_error_free, error);;
#else
  error("gresolver_lookup_service_finish exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

#if GIO_CHECK_VERSION(2, 22, 0)
static SEXP S_GSocket_symbol;
void
S_gsocket_class_init(GSocketClass * c, SEXP e)
{
  SEXP s;

  S_GSocket_symbol = install("GSocket");
  s = PROTECT(findVar(S_GSocket_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GSocketClass)) = e;

  S_gobject_class_init(((GObjectClass *)c), e);

  UNPROTECT(1);

}
#endif 

#if GIO_CHECK_VERSION(2, 22, 0)
static SEXP S_GSocketAddress_symbol;

static GSocketFamily
S_virtual_gsocket_address_get_family(GSocketAddress* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GSocketAddress_symbol, S_GOBJECT_GET_ENV(s_object)), 0));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GSocketAddress")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((GSocketFamily)0));
  return(((GSocketFamily)asCEnum(s_ans, G_TYPE_SOCKET_FAMILY)));
}

static gboolean
S_virtual_gsocket_address_to_native(GSocketAddress* s_object, gpointer s_dest, gsize s_destlen, GError** s_error)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 4));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GSocketAddress_symbol, S_GOBJECT_GET_ENV(s_object)), 1));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GSocketAddress")));
  tmp = CDR(tmp);
  SETCAR(tmp, s_dest);
  tmp = CDR(tmp);
  SETCAR(tmp, asRNumeric(s_destlen));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  *s_error = asCGError(VECTOR_ELT(s_ans, 1));
  return(((gboolean)asCLogical(VECTOR_ELT(s_ans, 0))));
}

static gssize
S_virtual_gsocket_address_get_native_size(GSocketAddress* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GSocketAddress_symbol, S_GOBJECT_GET_ENV(s_object)), 2));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GSocketAddress")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gssize)0));
  return(((gssize)asCInteger(s_ans)));
}
void
S_gsocket_address_class_init(GSocketAddressClass * c, SEXP e)
{
  SEXP s;

  S_GSocketAddress_symbol = install("GSocketAddress");
  s = PROTECT(findVar(S_GSocketAddress_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GSocketAddressClass)) = e;

  S_gobject_class_init(((GObjectClass *)c), e);

  UNPROTECT(1);

#if GIO_CHECK_VERSION(2, 22, 0)
  if(VECTOR_ELT(s, 0) != NULL_USER_OBJECT)
    c->get_family = S_virtual_gsocket_address_get_family;
#endif
#if GIO_CHECK_VERSION(2, 22, 0)
  if(VECTOR_ELT(s, 1) != NULL_USER_OBJECT)
    c->to_native = S_virtual_gsocket_address_to_native;
#endif
#if GIO_CHECK_VERSION(2, 22, 0)
  if(VECTOR_ELT(s, 2) != NULL_USER_OBJECT)
    c->get_native_size = S_virtual_gsocket_address_get_native_size;
#endif
}
#endif
USER_OBJECT_
S_gsocket_address_class_get_family(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GSocketAddressClass* object_class = ((GSocketAddressClass*)getPtrValue(s_object_class));
  GSocketAddress* object = G_SOCKET_ADDRESS(getPtrValue(s_object));

  GSocketFamily ans;

  ans = object_class->get_family(object);

  _result = asREnum(ans, G_TYPE_SOCKET_FAMILY);
#else
  error("gsocket_address_get_family exists only in gio >= 2.22.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gsocket_address_class_to_native(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_dest, USER_OBJECT_ s_destlen)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GSocketAddressClass* object_class = ((GSocketAddressClass*)getPtrValue(s_object_class));
  GSocketAddress* object = G_SOCKET_ADDRESS(getPtrValue(s_object));
  gpointer dest = ((gpointer)asCGenericData(s_dest));
  gsize destlen = ((gsize)asCNumeric(s_destlen));

  gboolean ans;
  GError* error = NULL;

  ans = object_class->to_native(object, dest, destlen, &error);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("gsocket_address_to_native exists only in gio >= 2.22.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gsocket_address_class_get_native_size(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GSocketAddressClass* object_class = ((GSocketAddressClass*)getPtrValue(s_object_class));
  GSocketAddress* object = G_SOCKET_ADDRESS(getPtrValue(s_object));

  gssize ans;

  ans = object_class->get_native_size(object);

  _result = asRInteger(ans);
#else
  error("gsocket_address_get_native_size exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

#if GIO_CHECK_VERSION(2, 22, 0)
static SEXP S_GSocketAddressEnumerator_symbol;

static GSocketAddress*
S_virtual_gsocket_address_enumerator_next(GSocketAddressEnumerator* s_object, GCancellable* s_cancellable, GError** s_error)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GSocketAddressEnumerator_symbol, S_GOBJECT_GET_ENV(s_object)), 0));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GSocketAddressEnumerator")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_cancellable, "GCancellable"));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((GSocketAddress*)0));
  *s_error = asCGError(VECTOR_ELT(s_ans, 1));
  return(G_SOCKET_ADDRESS(getPtrValue(VECTOR_ELT(s_ans, 0))));
}

static void
S_virtual_gsocket_address_enumerator_next_async(GSocketAddressEnumerator* s_object, GCancellable* s_cancellable, GAsyncReadyCallback s_callback, gpointer s_user_data)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 5));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GSocketAddressEnumerator_symbol, S_GOBJECT_GET_ENV(s_object)), 1));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GSocketAddressEnumerator")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_cancellable, "GCancellable"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerFn(((DL_FUNC)s_callback), "GAsyncReadyCallback"));
  tmp = CDR(tmp);
  SETCAR(tmp, s_user_data);
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static GSocketAddress*
S_virtual_gsocket_address_enumerator_next_finish(GSocketAddressEnumerator* s_object, GAsyncResult* s_result, GError** s_error)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GSocketAddressEnumerator_symbol, S_GOBJECT_GET_ENV(s_object)), 2));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GSocketAddressEnumerator")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_result, "GAsyncResult"));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((GSocketAddress*)0));
  *s_error = asCGError(VECTOR_ELT(s_ans, 1));
  return(G_SOCKET_ADDRESS(getPtrValue(VECTOR_ELT(s_ans, 0))));
}
void
S_gsocket_address_enumerator_class_init(GSocketAddressEnumeratorClass * c, SEXP e)
{
  SEXP s;

  S_GSocketAddressEnumerator_symbol = install("GSocketAddressEnumerator");
  s = PROTECT(findVar(S_GSocketAddressEnumerator_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GSocketAddressEnumeratorClass)) = e;

  S_gobject_class_init(((GObjectClass *)c), e);

  UNPROTECT(1);

#if GIO_CHECK_VERSION(2, 22, 0)
  if(VECTOR_ELT(s, 0) != NULL_USER_OBJECT)
    c->next = S_virtual_gsocket_address_enumerator_next;
#endif
#if GIO_CHECK_VERSION(2, 22, 0)
  if(VECTOR_ELT(s, 1) != NULL_USER_OBJECT)
    c->next_async = S_virtual_gsocket_address_enumerator_next_async;
#endif
#if GIO_CHECK_VERSION(2, 22, 0)
  if(VECTOR_ELT(s, 2) != NULL_USER_OBJECT)
    c->next_finish = S_virtual_gsocket_address_enumerator_next_finish;
#endif
}
#endif
USER_OBJECT_
S_gsocket_address_enumerator_class_next(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_cancellable)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GSocketAddressEnumeratorClass* object_class = ((GSocketAddressEnumeratorClass*)getPtrValue(s_object_class));
  GSocketAddressEnumerator* object = G_SOCKET_ADDRESS_ENUMERATOR(getPtrValue(s_object));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));

  GSocketAddress* ans;
  GError* error = NULL;

  ans = object_class->next(object, cancellable, &error);

  _result = toRPointerWithRef(ans, "GSocketAddress");

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("gsocket_address_enumerator_next exists only in gio >= 2.22.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gsocket_address_enumerator_class_next_async(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GAsyncReadyCallback callback = ((GAsyncReadyCallback)S_GAsyncReadyCallback);
  R_CallbackData* user_data = R_createCBData(s_callback, s_user_data);
  GSocketAddressEnumeratorClass* object_class = ((GSocketAddressEnumeratorClass*)getPtrValue(s_object_class));
  GSocketAddressEnumerator* object = G_SOCKET_ADDRESS_ENUMERATOR(getPtrValue(s_object));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));


  object_class->next_async(object, cancellable, callback, user_data);

#else
  error("gsocket_address_enumerator_next_async exists only in gio >= 2.22.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gsocket_address_enumerator_class_next_finish(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_result)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GSocketAddressEnumeratorClass* object_class = ((GSocketAddressEnumeratorClass*)getPtrValue(s_object_class));
  GSocketAddressEnumerator* object = G_SOCKET_ADDRESS_ENUMERATOR(getPtrValue(s_object));
  GAsyncResult* result = G_ASYNC_RESULT(getPtrValue(s_result));

  GSocketAddress* ans;
  GError* error = NULL;

  ans = object_class->next_finish(object, result, &error);

  _result = toRPointerWithRef(ans, "GSocketAddress");

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("gsocket_address_enumerator_next_finish exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

#if GIO_CHECK_VERSION(2, 22, 0)
static SEXP S_GSocketClient_symbol;
void
S_gsocket_client_class_init(GSocketClientClass * c, SEXP e)
{
  SEXP s;

  S_GSocketClient_symbol = install("GSocketClient");
  s = PROTECT(findVar(S_GSocketClient_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GSocketClientClass)) = e;

  S_gobject_class_init(((GObjectClass *)c), e);

  UNPROTECT(1);

}
#endif 

#if GIO_CHECK_VERSION(2, 22, 0)
static SEXP S_GSocketConnection_symbol;
void
S_gsocket_connection_class_init(GSocketConnectionClass * c, SEXP e)
{
  SEXP s;

  S_GSocketConnection_symbol = install("GSocketConnection");
  s = PROTECT(findVar(S_GSocketConnection_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GSocketConnectionClass)) = e;

  S_giostream_class_init(((GIOStreamClass *)c), e);

  UNPROTECT(1);

}
#endif 

#if GIO_CHECK_VERSION(2, 22, 0)
static SEXP S_GSocketControlMessage_symbol;

static gsize
S_virtual_gsocket_control_message_get_size(GSocketControlMessage* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GSocketControlMessage_symbol, S_GOBJECT_GET_ENV(s_object)), 0));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GSocketControlMessage")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gsize)0));
  return(((gsize)asCNumeric(s_ans)));
}

static int
S_virtual_gsocket_control_message_get_level(GSocketControlMessage* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GSocketControlMessage_symbol, S_GOBJECT_GET_ENV(s_object)), 1));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GSocketControlMessage")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((int)0));
  return(((int)asCInteger(s_ans)));
}

static int
S_virtual_gsocket_control_message_get_type(GSocketControlMessage* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GSocketControlMessage_symbol, S_GOBJECT_GET_ENV(s_object)), 2));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GSocketControlMessage")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((int)0));
  return(((int)asCInteger(s_ans)));
}

static void
S_virtual_gsocket_control_message_serialize(GSocketControlMessage* s_object, gpointer s_data)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GSocketControlMessage_symbol, S_GOBJECT_GET_ENV(s_object)), 3));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GSocketControlMessage")));
  tmp = CDR(tmp);
  SETCAR(tmp, s_data);
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}
void
S_gsocket_control_message_class_init(GSocketControlMessageClass * c, SEXP e)
{
  SEXP s;

  S_GSocketControlMessage_symbol = install("GSocketControlMessage");
  s = PROTECT(findVar(S_GSocketControlMessage_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GSocketControlMessageClass)) = e;

  S_gobject_class_init(((GObjectClass *)c), e);

  UNPROTECT(1);

#if GIO_CHECK_VERSION(2, 22, 0)
  if(VECTOR_ELT(s, 0) != NULL_USER_OBJECT)
    c->get_size = S_virtual_gsocket_control_message_get_size;
#endif
#if GIO_CHECK_VERSION(2, 22, 0)
  if(VECTOR_ELT(s, 1) != NULL_USER_OBJECT)
    c->get_level = S_virtual_gsocket_control_message_get_level;
#endif
#if GIO_CHECK_VERSION(2, 22, 0)
  if(VECTOR_ELT(s, 2) != NULL_USER_OBJECT)
    c->get_type = S_virtual_gsocket_control_message_get_type;
#endif
#if GIO_CHECK_VERSION(2, 22, 0)
  if(VECTOR_ELT(s, 3) != NULL_USER_OBJECT)
    c->serialize = S_virtual_gsocket_control_message_serialize;
#endif
}
#endif
USER_OBJECT_
S_gsocket_control_message_class_get_size(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GSocketControlMessageClass* object_class = ((GSocketControlMessageClass*)getPtrValue(s_object_class));
  GSocketControlMessage* object = G_SOCKET_CONTROL_MESSAGE(getPtrValue(s_object));

  gsize ans;

  ans = object_class->get_size(object);

  _result = asRNumeric(ans);
#else
  error("gsocket_control_message_get_size exists only in gio >= 2.22.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gsocket_control_message_class_get_level(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GSocketControlMessageClass* object_class = ((GSocketControlMessageClass*)getPtrValue(s_object_class));
  GSocketControlMessage* object = G_SOCKET_CONTROL_MESSAGE(getPtrValue(s_object));

  int ans;

  ans = object_class->get_level(object);

  _result = asRInteger(ans);
#else
  error("gsocket_control_message_get_level exists only in gio >= 2.22.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gsocket_control_message_class_get_type(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GSocketControlMessageClass* object_class = ((GSocketControlMessageClass*)getPtrValue(s_object_class));
  GSocketControlMessage* object = G_SOCKET_CONTROL_MESSAGE(getPtrValue(s_object));

  int ans;

  ans = object_class->get_type(object);

  _result = asRInteger(ans);
#else
  error("gsocket_control_message_get_type exists only in gio >= 2.22.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gsocket_control_message_class_serialize(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_data)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GSocketControlMessageClass* object_class = ((GSocketControlMessageClass*)getPtrValue(s_object_class));
  GSocketControlMessage* object = G_SOCKET_CONTROL_MESSAGE(getPtrValue(s_object));
  gpointer data = ((gpointer)asCGenericData(s_data));


  object_class->serialize(object, data);

#else
  error("gsocket_control_message_serialize exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

#if GIO_CHECK_VERSION(2, 22, 0)
static SEXP S_GSocketListener_symbol;

static void
S_virtual_gsocket_listener_changed(GSocketListener* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GSocketListener_symbol, S_GOBJECT_GET_ENV(s_object)), 0));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GSocketListener")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}
void
S_gsocket_listener_class_init(GSocketListenerClass * c, SEXP e)
{
  SEXP s;

  S_GSocketListener_symbol = install("GSocketListener");
  s = PROTECT(findVar(S_GSocketListener_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GSocketListenerClass)) = e;

  S_gobject_class_init(((GObjectClass *)c), e);

  UNPROTECT(1);

#if GIO_CHECK_VERSION(2, 22, 0)
  if(VECTOR_ELT(s, 0) != NULL_USER_OBJECT)
    c->changed = S_virtual_gsocket_listener_changed;
#endif
}
#endif
USER_OBJECT_
S_gsocket_listener_class_changed(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GSocketListenerClass* object_class = ((GSocketListenerClass*)getPtrValue(s_object_class));
  GSocketListener* object = G_SOCKET_LISTENER(getPtrValue(s_object));


  object_class->changed(object);

#else
  error("gsocket_listener_changed exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

#if GIO_CHECK_VERSION(2, 22, 0)
static SEXP S_GSocketService_symbol;
void
S_gsocket_service_class_init(GSocketServiceClass * c, SEXP e)
{
  SEXP s;

  S_GSocketService_symbol = install("GSocketService");
  s = PROTECT(findVar(S_GSocketService_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GSocketServiceClass)) = e;

  S_gsocket_listener_class_init(((GSocketListenerClass *)c), e);

  UNPROTECT(1);

}
#endif 

#if GIO_CHECK_VERSION(2, 22, 0)
static SEXP S_GTcpConnection_symbol;
void
S_gtcp_connection_class_init(GTcpConnectionClass * c, SEXP e)
{
  SEXP s;

  S_GTcpConnection_symbol = install("GTcpConnection");
  s = PROTECT(findVar(S_GTcpConnection_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GTcpConnectionClass)) = e;

  S_gsocket_connection_class_init(((GSocketConnectionClass *)c), e);

  UNPROTECT(1);

}
#endif 

#if GIO_CHECK_VERSION(2, 22, 0)
static SEXP S_GThreadedSocketService_symbol;
void
S_gthreaded_socket_service_class_init(GThreadedSocketServiceClass * c, SEXP e)
{
  SEXP s;

  S_GThreadedSocketService_symbol = install("GThreadedSocketService");
  s = PROTECT(findVar(S_GThreadedSocketService_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GThreadedSocketServiceClass)) = e;

  S_gsocket_service_class_init(((GSocketServiceClass *)c), e);

  UNPROTECT(1);

}
#endif 

#if GIO_CHECK_VERSION(2, 22, 0)
static SEXP S_GIOStream_symbol;

static GInputStream*
S_virtual_giostream_get_input_stream(GIOStream* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GIOStream_symbol, S_GOBJECT_GET_ENV(s_object)), 0));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GIOStream")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((GInputStream*)0));
  return(G_INPUT_STREAM(getPtrValue(s_ans)));
}

static GOutputStream*
S_virtual_giostream_get_output_stream(GIOStream* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GIOStream_symbol, S_GOBJECT_GET_ENV(s_object)), 1));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GIOStream")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((GOutputStream*)0));
  return(G_OUTPUT_STREAM(getPtrValue(s_ans)));
}

static gboolean
S_virtual_giostream_close_fn(GIOStream* s_object, GCancellable* s_cancellable, GError** s_error)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GIOStream_symbol, S_GOBJECT_GET_ENV(s_object)), 2));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GIOStream")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_cancellable, "GCancellable"));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  *s_error = asCGError(VECTOR_ELT(s_ans, 1));
  return(((gboolean)asCLogical(VECTOR_ELT(s_ans, 0))));
}

static void
S_virtual_giostream_close_async(GIOStream* s_object, int s_io_priority, GCancellable* s_cancellable, GAsyncReadyCallback s_callback, gpointer s_user_data)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 6));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GIOStream_symbol, S_GOBJECT_GET_ENV(s_object)), 3));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GIOStream")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_io_priority));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_cancellable, "GCancellable"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerFn(((DL_FUNC)s_callback), "GAsyncReadyCallback"));
  tmp = CDR(tmp);
  SETCAR(tmp, s_user_data);
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static gboolean
S_virtual_giostream_close_finish(GIOStream* s_object, GAsyncResult* s_result, GError** s_error)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GIOStream_symbol, S_GOBJECT_GET_ENV(s_object)), 4));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GIOStream")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_result, "GAsyncResult"));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  *s_error = asCGError(VECTOR_ELT(s_ans, 1));
  return(((gboolean)asCLogical(VECTOR_ELT(s_ans, 0))));
}
void
S_giostream_class_init(GIOStreamClass * c, SEXP e)
{
  SEXP s;

  S_GIOStream_symbol = install("GIOStream");
  s = PROTECT(findVar(S_GIOStream_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GIOStreamClass)) = e;

  S_gobject_class_init(((GObjectClass *)c), e);

  UNPROTECT(1);

#if GIO_CHECK_VERSION(2, 22, 0)
  if(VECTOR_ELT(s, 0) != NULL_USER_OBJECT)
    c->get_input_stream = S_virtual_giostream_get_input_stream;
#endif
#if GIO_CHECK_VERSION(2, 22, 0)
  if(VECTOR_ELT(s, 1) != NULL_USER_OBJECT)
    c->get_output_stream = S_virtual_giostream_get_output_stream;
#endif
#if GIO_CHECK_VERSION(2, 22, 0)
  if(VECTOR_ELT(s, 2) != NULL_USER_OBJECT)
    c->close_fn = S_virtual_giostream_close_fn;
#endif
#if GIO_CHECK_VERSION(2, 22, 0)
  if(VECTOR_ELT(s, 3) != NULL_USER_OBJECT)
    c->close_async = S_virtual_giostream_close_async;
#endif
#if GIO_CHECK_VERSION(2, 22, 0)
  if(VECTOR_ELT(s, 4) != NULL_USER_OBJECT)
    c->close_finish = S_virtual_giostream_close_finish;
#endif
}
#endif
USER_OBJECT_
S_giostream_class_get_input_stream(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GIOStreamClass* object_class = ((GIOStreamClass*)getPtrValue(s_object_class));
  GIOStream* object = G_IO_STREAM(getPtrValue(s_object));

  GInputStream* ans;

  ans = object_class->get_input_stream(object);

  _result = toRPointerWithRef(ans, "GInputStream");
#else
  error("giostream_get_input_stream exists only in gio >= 2.22.0");
#endif

  return(_result);
}

USER_OBJECT_
S_giostream_class_get_output_stream(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GIOStreamClass* object_class = ((GIOStreamClass*)getPtrValue(s_object_class));
  GIOStream* object = G_IO_STREAM(getPtrValue(s_object));

  GOutputStream* ans;

  ans = object_class->get_output_stream(object);

  _result = toRPointerWithRef(ans, "GOutputStream");
#else
  error("giostream_get_output_stream exists only in gio >= 2.22.0");
#endif

  return(_result);
}

USER_OBJECT_
S_giostream_class_close_fn(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_cancellable)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GIOStreamClass* object_class = ((GIOStreamClass*)getPtrValue(s_object_class));
  GIOStream* object = G_IO_STREAM(getPtrValue(s_object));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));

  gboolean ans;
  GError* error = NULL;

  ans = object_class->close_fn(object, cancellable, &error);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("giostream_close_fn exists only in gio >= 2.22.0");
#endif

  return(_result);
}

USER_OBJECT_
S_giostream_class_close_async(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_io_priority, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GAsyncReadyCallback callback = ((GAsyncReadyCallback)S_GAsyncReadyCallback);
  R_CallbackData* user_data = R_createCBData(s_callback, s_user_data);
  GIOStreamClass* object_class = ((GIOStreamClass*)getPtrValue(s_object_class));
  GIOStream* object = G_IO_STREAM(getPtrValue(s_object));
  int io_priority = ((int)asCInteger(s_io_priority));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));


  object_class->close_async(object, io_priority, cancellable, callback, user_data);

#else
  error("giostream_close_async exists only in gio >= 2.22.0");
#endif

  return(_result);
}

USER_OBJECT_
S_giostream_class_close_finish(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_result)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GIOStreamClass* object_class = ((GIOStreamClass*)getPtrValue(s_object_class));
  GIOStream* object = G_IO_STREAM(getPtrValue(s_object));
  GAsyncResult* result = G_ASYNC_RESULT(getPtrValue(s_result));

  gboolean ans;
  GError* error = NULL;

  ans = object_class->close_finish(object, result, &error);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("giostream_close_finish exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

#if GIO_CHECK_VERSION(2, 22, 0)
static SEXP S_GInetSocketAddress_symbol;
void
S_ginet_socket_address_class_init(GInetSocketAddressClass * c, SEXP e)
{
  SEXP s;

  S_GInetSocketAddress_symbol = install("GInetSocketAddress");
  s = PROTECT(findVar(S_GInetSocketAddress_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GInetSocketAddressClass)) = e;

  S_gsocket_address_class_init(((GSocketAddressClass *)c), e);

  UNPROTECT(1);

}
#endif 

#if GIO_CHECK_VERSION(2, 16, 0)
static SEXP S_GAppInfo_symbol;

static GAppInfo*
S_virtual_gapp_info_dup(GAppInfo* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GAppInfo_symbol, S_GOBJECT_GET_ENV(s_object)), 0));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GAppInfo")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((GAppInfo*)0));
  return(G_APP_INFO(getPtrValue(s_ans)));
}

static gboolean
S_virtual_gapp_info_equal(GAppInfo* s_object, GAppInfo* s_appinfo2)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GAppInfo_symbol, S_GOBJECT_GET_ENV(s_object)), 1));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GAppInfo")));
  tmp = CDR(tmp);
  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_appinfo2, toRPointerWithRef(s_appinfo2, "GAppInfo")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  return(((gboolean)asCLogical(s_ans)));
}

static const char*
S_virtual_gapp_info_get_id(GAppInfo* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GAppInfo_symbol, S_GOBJECT_GET_ENV(s_object)), 2));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GAppInfo")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((const char*)0));
  return(((const char*)asCString(s_ans)));
}

static const char*
S_virtual_gapp_info_get_name(GAppInfo* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GAppInfo_symbol, S_GOBJECT_GET_ENV(s_object)), 3));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GAppInfo")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((const char*)0));
  return(((const char*)asCString(s_ans)));
}

static const char*
S_virtual_gapp_info_get_description(GAppInfo* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GAppInfo_symbol, S_GOBJECT_GET_ENV(s_object)), 4));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GAppInfo")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((const char*)0));
  return(((const char*)asCString(s_ans)));
}

static const char*
S_virtual_gapp_info_get_executable(GAppInfo* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GAppInfo_symbol, S_GOBJECT_GET_ENV(s_object)), 5));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GAppInfo")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((const char*)0));
  return(((const char*)asCString(s_ans)));
}

static GIcon*
S_virtual_gapp_info_get_icon(GAppInfo* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GAppInfo_symbol, S_GOBJECT_GET_ENV(s_object)), 6));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GAppInfo")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((GIcon*)0));
  return(G_ICON(getPtrValue(s_ans)));
}

static gboolean
S_virtual_gapp_info_launch(GAppInfo* s_object, GList* s_files, GAppLaunchContext* s_launch_context, GError** s_error)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 4));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GAppInfo_symbol, S_GOBJECT_GET_ENV(s_object)), 7));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GAppInfo")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRGListWithRef(s_files, "GFile"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_launch_context, "GAppLaunchContext"));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  *s_error = asCGError(VECTOR_ELT(s_ans, 1));
  return(((gboolean)asCLogical(VECTOR_ELT(s_ans, 0))));
}

static gboolean
S_virtual_gapp_info_supports_uris(GAppInfo* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GAppInfo_symbol, S_GOBJECT_GET_ENV(s_object)), 8));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GAppInfo")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  return(((gboolean)asCLogical(s_ans)));
}

static gboolean
S_virtual_gapp_info_supports_files(GAppInfo* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GAppInfo_symbol, S_GOBJECT_GET_ENV(s_object)), 9));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GAppInfo")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  return(((gboolean)asCLogical(s_ans)));
}

static gboolean
S_virtual_gapp_info_launch_uris(GAppInfo* s_object, GList* s_uris, GAppLaunchContext* s_launch_context, GError** s_error)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 4));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GAppInfo_symbol, S_GOBJECT_GET_ENV(s_object)), 10));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GAppInfo")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRGListConv(s_uris, ((ElementConverter)asRString)));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_launch_context, "GAppLaunchContext"));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  *s_error = asCGError(VECTOR_ELT(s_ans, 1));
  return(((gboolean)asCLogical(VECTOR_ELT(s_ans, 0))));
}

static gboolean
S_virtual_gapp_info_should_show(GAppInfo* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GAppInfo_symbol, S_GOBJECT_GET_ENV(s_object)), 11));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GAppInfo")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  return(((gboolean)asCLogical(s_ans)));
}

static gboolean
S_virtual_gapp_info_set_as_default_for_type(GAppInfo* s_object, const char* s_content_type, GError** s_error)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GAppInfo_symbol, S_GOBJECT_GET_ENV(s_object)), 12));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GAppInfo")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRString(s_content_type));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  *s_error = asCGError(VECTOR_ELT(s_ans, 1));
  return(((gboolean)asCLogical(VECTOR_ELT(s_ans, 0))));
}

static gboolean
S_virtual_gapp_info_set_as_default_for_extension(GAppInfo* s_object, const char* s_extension, GError** s_error)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GAppInfo_symbol, S_GOBJECT_GET_ENV(s_object)), 13));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GAppInfo")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRString(s_extension));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  *s_error = asCGError(VECTOR_ELT(s_ans, 1));
  return(((gboolean)asCLogical(VECTOR_ELT(s_ans, 0))));
}

static gboolean
S_virtual_gapp_info_add_supports_type(GAppInfo* s_object, const char* s_content_type, GError** s_error)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GAppInfo_symbol, S_GOBJECT_GET_ENV(s_object)), 14));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GAppInfo")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRString(s_content_type));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  *s_error = asCGError(VECTOR_ELT(s_ans, 1));
  return(((gboolean)asCLogical(VECTOR_ELT(s_ans, 0))));
}

static gboolean
S_virtual_gapp_info_can_remove_supports_type(GAppInfo* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GAppInfo_symbol, S_GOBJECT_GET_ENV(s_object)), 15));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GAppInfo")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  return(((gboolean)asCLogical(s_ans)));
}

static gboolean
S_virtual_gapp_info_remove_supports_type(GAppInfo* s_object, const char* s_content_type, GError** s_error)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GAppInfo_symbol, S_GOBJECT_GET_ENV(s_object)), 16));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GAppInfo")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRString(s_content_type));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  *s_error = asCGError(VECTOR_ELT(s_ans, 1));
  return(((gboolean)asCLogical(VECTOR_ELT(s_ans, 0))));
}

static const char*
S_virtual_gapp_info_get_commandline(GAppInfo* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GAppInfo_symbol, S_GOBJECT_GET_ENV(s_object)), 17));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GAppInfo")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((const char*)0));
  return(((const char*)asCString(s_ans)));
}
void
S_gapp_info_class_init(GAppInfoIface * c, SEXP e)
{
  SEXP s;

  S_GAppInfo_symbol = install("GAppInfo");
  s = PROTECT(findVar(S_GAppInfo_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GAppInfoIface)) = e;

  UNPROTECT(1);

#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 0) != NULL_USER_OBJECT)
    c->dup = S_virtual_gapp_info_dup;
#endif
#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 1) != NULL_USER_OBJECT)
    c->equal = S_virtual_gapp_info_equal;
#endif
#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 2) != NULL_USER_OBJECT)
    c->get_id = S_virtual_gapp_info_get_id;
#endif
#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 3) != NULL_USER_OBJECT)
    c->get_name = S_virtual_gapp_info_get_name;
#endif
#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 4) != NULL_USER_OBJECT)
    c->get_description = S_virtual_gapp_info_get_description;
#endif
#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 5) != NULL_USER_OBJECT)
    c->get_executable = S_virtual_gapp_info_get_executable;
#endif
#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 6) != NULL_USER_OBJECT)
    c->get_icon = S_virtual_gapp_info_get_icon;
#endif
#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 7) != NULL_USER_OBJECT)
    c->launch = S_virtual_gapp_info_launch;
#endif
#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 8) != NULL_USER_OBJECT)
    c->supports_uris = S_virtual_gapp_info_supports_uris;
#endif
#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 9) != NULL_USER_OBJECT)
    c->supports_files = S_virtual_gapp_info_supports_files;
#endif
#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 10) != NULL_USER_OBJECT)
    c->launch_uris = S_virtual_gapp_info_launch_uris;
#endif
#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 11) != NULL_USER_OBJECT)
    c->should_show = S_virtual_gapp_info_should_show;
#endif
#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 12) != NULL_USER_OBJECT)
    c->set_as_default_for_type = S_virtual_gapp_info_set_as_default_for_type;
#endif
#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 13) != NULL_USER_OBJECT)
    c->set_as_default_for_extension = S_virtual_gapp_info_set_as_default_for_extension;
#endif
#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 14) != NULL_USER_OBJECT)
    c->add_supports_type = S_virtual_gapp_info_add_supports_type;
#endif
#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 15) != NULL_USER_OBJECT)
    c->can_remove_supports_type = S_virtual_gapp_info_can_remove_supports_type;
#endif
#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 16) != NULL_USER_OBJECT)
    c->remove_supports_type = S_virtual_gapp_info_remove_supports_type;
#endif
#if GIO_CHECK_VERSION(2, 20, 0)
  if(VECTOR_ELT(s, 17) != NULL_USER_OBJECT)
    c->get_commandline = S_virtual_gapp_info_get_commandline;
#endif
}
#endif
USER_OBJECT_
S_gapp_info_iface_dup(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GAppInfoIface* object_class = ((GAppInfoIface*)getPtrValue(s_object_class));
  GAppInfo* object = G_APP_INFO(getPtrValue(s_object));

  GAppInfo* ans;

  ans = object_class->dup(object);

  _result = toRPointerWithFinalizer(ans, "GAppInfo", (RPointerFinalizer) g_object_unref);
#else
  error("gapp_info_dup exists only in gio >= 2.16.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gapp_info_iface_equal(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_appinfo2)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GAppInfoIface* object_class = ((GAppInfoIface*)getPtrValue(s_object_class));
  GAppInfo* object = G_APP_INFO(getPtrValue(s_object));
  GAppInfo* appinfo2 = G_APP_INFO(getPtrValue(s_appinfo2));

  gboolean ans;

  ans = object_class->equal(object, appinfo2);

  _result = asRLogical(ans);
#else
  error("gapp_info_equal exists only in gio >= 2.16.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gapp_info_iface_get_id(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GAppInfoIface* object_class = ((GAppInfoIface*)getPtrValue(s_object_class));
  GAppInfo* object = G_APP_INFO(getPtrValue(s_object));

  const char* ans;

  ans = object_class->get_id(object);

  _result = asRString(ans);
#else
  error("gapp_info_get_id exists only in gio >= 2.16.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gapp_info_iface_get_name(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GAppInfoIface* object_class = ((GAppInfoIface*)getPtrValue(s_object_class));
  GAppInfo* object = G_APP_INFO(getPtrValue(s_object));

  const char* ans;

  ans = object_class->get_name(object);

  _result = asRString(ans);
#else
  error("gapp_info_get_name exists only in gio >= 2.16.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gapp_info_iface_get_description(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GAppInfoIface* object_class = ((GAppInfoIface*)getPtrValue(s_object_class));
  GAppInfo* object = G_APP_INFO(getPtrValue(s_object));

  const char* ans;

  ans = object_class->get_description(object);

  _result = asRString(ans);
#else
  error("gapp_info_get_description exists only in gio >= 2.16.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gapp_info_iface_get_executable(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GAppInfoIface* object_class = ((GAppInfoIface*)getPtrValue(s_object_class));
  GAppInfo* object = G_APP_INFO(getPtrValue(s_object));

  const char* ans;

  ans = object_class->get_executable(object);

  _result = asRString(ans);
#else
  error("gapp_info_get_executable exists only in gio >= 2.16.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gapp_info_iface_get_icon(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GAppInfoIface* object_class = ((GAppInfoIface*)getPtrValue(s_object_class));
  GAppInfo* object = G_APP_INFO(getPtrValue(s_object));

  GIcon* ans;

  ans = object_class->get_icon(object);

  _result = toRPointerWithRef(ans, "GIcon");
#else
  error("gapp_info_get_icon exists only in gio >= 2.16.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gapp_info_iface_launch(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_files, USER_OBJECT_ s_launch_context)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GAppInfoIface* object_class = ((GAppInfoIface*)getPtrValue(s_object_class));
  GAppInfo* object = G_APP_INFO(getPtrValue(s_object));
  GList* files = ((GList*)asCArrayRef(s_files, GList, asCGList));
  GAppLaunchContext* launch_context = G_APP_LAUNCH_CONTEXT(getPtrValue(s_launch_context));

  gboolean ans;
  GError* error = NULL;

  ans = object_class->launch(object, files, launch_context, &error);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_list_free, ((GList*)files));;
    CLEANUP(g_error_free, error);;
#else
  error("gapp_info_launch exists only in gio >= 2.16.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gapp_info_iface_supports_uris(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GAppInfoIface* object_class = ((GAppInfoIface*)getPtrValue(s_object_class));
  GAppInfo* object = G_APP_INFO(getPtrValue(s_object));

  gboolean ans;

  ans = object_class->supports_uris(object);

  _result = asRLogical(ans);
#else
  error("gapp_info_supports_uris exists only in gio >= 2.16.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gapp_info_iface_supports_files(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GAppInfoIface* object_class = ((GAppInfoIface*)getPtrValue(s_object_class));
  GAppInfo* object = G_APP_INFO(getPtrValue(s_object));

  gboolean ans;

  ans = object_class->supports_files(object);

  _result = asRLogical(ans);
#else
  error("gapp_info_supports_files exists only in gio >= 2.16.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gapp_info_iface_launch_uris(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_uris, USER_OBJECT_ s_launch_context)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GAppInfoIface* object_class = ((GAppInfoIface*)getPtrValue(s_object_class));
  GAppInfo* object = G_APP_INFO(getPtrValue(s_object));
  GList* uris = ((GList*)asCArrayRef(s_uris, GList, asCGList));
  GAppLaunchContext* launch_context = G_APP_LAUNCH_CONTEXT(getPtrValue(s_launch_context));

  gboolean ans;
  GError* error = NULL;

  ans = object_class->launch_uris(object, uris, launch_context, &error);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(GListFreeStrings, ((GList*)uris));
  CLEANUP(g_list_free, ((GList*)uris));;
    CLEANUP(g_error_free, error);;
#else
  error("gapp_info_launch_uris exists only in gio >= 2.16.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gapp_info_iface_should_show(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GAppInfoIface* object_class = ((GAppInfoIface*)getPtrValue(s_object_class));
  GAppInfo* object = G_APP_INFO(getPtrValue(s_object));

  gboolean ans;

  ans = object_class->should_show(object);

  _result = asRLogical(ans);
#else
  error("gapp_info_should_show exists only in gio >= 2.16.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gapp_info_iface_set_as_default_for_type(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_content_type)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GAppInfoIface* object_class = ((GAppInfoIface*)getPtrValue(s_object_class));
  GAppInfo* object = G_APP_INFO(getPtrValue(s_object));
  const char* content_type = ((const char*)asCString(s_content_type));

  gboolean ans;
  GError* error = NULL;

  ans = object_class->set_as_default_for_type(object, content_type, &error);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("gapp_info_set_as_default_for_type exists only in gio >= 2.16.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gapp_info_iface_set_as_default_for_extension(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_extension)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GAppInfoIface* object_class = ((GAppInfoIface*)getPtrValue(s_object_class));
  GAppInfo* object = G_APP_INFO(getPtrValue(s_object));
  const char* extension = ((const char*)asCString(s_extension));

  gboolean ans;
  GError* error = NULL;

  ans = object_class->set_as_default_for_extension(object, extension, &error);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("gapp_info_set_as_default_for_extension exists only in gio >= 2.16.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gapp_info_iface_add_supports_type(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_content_type)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GAppInfoIface* object_class = ((GAppInfoIface*)getPtrValue(s_object_class));
  GAppInfo* object = G_APP_INFO(getPtrValue(s_object));
  const char* content_type = ((const char*)asCString(s_content_type));

  gboolean ans;
  GError* error = NULL;

  ans = object_class->add_supports_type(object, content_type, &error);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("gapp_info_add_supports_type exists only in gio >= 2.16.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gapp_info_iface_can_remove_supports_type(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GAppInfoIface* object_class = ((GAppInfoIface*)getPtrValue(s_object_class));
  GAppInfo* object = G_APP_INFO(getPtrValue(s_object));

  gboolean ans;

  ans = object_class->can_remove_supports_type(object);

  _result = asRLogical(ans);
#else
  error("gapp_info_can_remove_supports_type exists only in gio >= 2.16.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gapp_info_iface_remove_supports_type(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_content_type)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GAppInfoIface* object_class = ((GAppInfoIface*)getPtrValue(s_object_class));
  GAppInfo* object = G_APP_INFO(getPtrValue(s_object));
  const char* content_type = ((const char*)asCString(s_content_type));

  gboolean ans;
  GError* error = NULL;

  ans = object_class->remove_supports_type(object, content_type, &error);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("gapp_info_remove_supports_type exists only in gio >= 2.16.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gapp_info_iface_get_commandline(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 20, 0)
  GAppInfoIface* object_class = ((GAppInfoIface*)getPtrValue(s_object_class));
  GAppInfo* object = G_APP_INFO(getPtrValue(s_object));

  const char* ans;

  ans = object_class->get_commandline(object);

  _result = asRString(ans);
#else
  error("gapp_info_get_commandline exists only in gio >= 2.20.0");
#endif

  return(_result);
}
 

#if GIO_CHECK_VERSION(2, 16, 0)
static SEXP S_GAsyncResult_symbol;

static gpointer
S_virtual_gasync_result_get_user_data(GAsyncResult* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GAsyncResult_symbol, S_GOBJECT_GET_ENV(s_object)), 0));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GAsyncResult")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gpointer)0));
  return(((gpointer)asCGenericData(s_ans)));
}

static GObject*
S_virtual_gasync_result_get_source_object(GAsyncResult* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GAsyncResult_symbol, S_GOBJECT_GET_ENV(s_object)), 1));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GAsyncResult")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((GObject*)0));
  return(G_OBJECT(getPtrValue(s_ans)));
}
void
S_gasync_result_class_init(GAsyncResultIface * c, SEXP e)
{
  SEXP s;

  S_GAsyncResult_symbol = install("GAsyncResult");
  s = PROTECT(findVar(S_GAsyncResult_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GAsyncResultIface)) = e;

  UNPROTECT(1);

#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 0) != NULL_USER_OBJECT)
    c->get_user_data = S_virtual_gasync_result_get_user_data;
#endif
#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 1) != NULL_USER_OBJECT)
    c->get_source_object = S_virtual_gasync_result_get_source_object;
#endif
}
#endif
USER_OBJECT_
S_gasync_result_iface_get_user_data(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GAsyncResultIface* object_class = ((GAsyncResultIface*)getPtrValue(s_object_class));
  GAsyncResult* object = G_ASYNC_RESULT(getPtrValue(s_object));

  gpointer ans;

  ans = object_class->get_user_data(object);

  _result = ans;
#else
  error("gasync_result_get_user_data exists only in gio >= 2.16.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gasync_result_iface_get_source_object(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GAsyncResultIface* object_class = ((GAsyncResultIface*)getPtrValue(s_object_class));
  GAsyncResult* object = G_ASYNC_RESULT(getPtrValue(s_object));

  GObject* ans;

  ans = object_class->get_source_object(object);

  _result = toRPointerWithRef(ans, "GObject");
#else
  error("gasync_result_get_source_object exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

#if GIO_CHECK_VERSION(2, 16, 0)
static SEXP S_GDrive_symbol;

static char*
S_virtual_gdrive_get_name(GDrive* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GDrive_symbol, S_GOBJECT_GET_ENV(s_object)), 0));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GDrive")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((char*)0));
  return(((char*)g_strdup(asCString(s_ans))));
}

static GIcon*
S_virtual_gdrive_get_icon(GDrive* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GDrive_symbol, S_GOBJECT_GET_ENV(s_object)), 1));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GDrive")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((GIcon*)0));
  return(G_ICON(getPtrValue(s_ans)));
}

static gboolean
S_virtual_gdrive_has_volumes(GDrive* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GDrive_symbol, S_GOBJECT_GET_ENV(s_object)), 2));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GDrive")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  return(((gboolean)asCLogical(s_ans)));
}

static GList*
S_virtual_gdrive_get_volumes(GDrive* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GDrive_symbol, S_GOBJECT_GET_ENV(s_object)), 3));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GDrive")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((GList*)0));
  return(((GList*)asCArrayRef(s_ans, GList, asCGListDup)));
}

static gboolean
S_virtual_gdrive_is_media_removable(GDrive* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GDrive_symbol, S_GOBJECT_GET_ENV(s_object)), 4));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GDrive")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  return(((gboolean)asCLogical(s_ans)));
}

static gboolean
S_virtual_gdrive_has_media(GDrive* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GDrive_symbol, S_GOBJECT_GET_ENV(s_object)), 5));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GDrive")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  return(((gboolean)asCLogical(s_ans)));
}

static gboolean
S_virtual_gdrive_is_media_check_automatic(GDrive* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GDrive_symbol, S_GOBJECT_GET_ENV(s_object)), 6));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GDrive")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  return(((gboolean)asCLogical(s_ans)));
}

static gboolean
S_virtual_gdrive_can_poll_for_media(GDrive* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GDrive_symbol, S_GOBJECT_GET_ENV(s_object)), 7));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GDrive")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  return(((gboolean)asCLogical(s_ans)));
}

static gboolean
S_virtual_gdrive_can_eject(GDrive* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GDrive_symbol, S_GOBJECT_GET_ENV(s_object)), 8));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GDrive")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  return(((gboolean)asCLogical(s_ans)));
}

static void
S_virtual_gdrive_eject(GDrive* s_object, GMountUnmountFlags s_flags, GCancellable* s_cancellable, GAsyncReadyCallback s_callback, gpointer s_user_data)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 6));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GDrive_symbol, S_GOBJECT_GET_ENV(s_object)), 9));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GDrive")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRFlag(s_flags, G_TYPE_MOUNT_UNMOUNT_FLAGS));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_cancellable, "GCancellable"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerFn(((DL_FUNC)s_callback), "GAsyncReadyCallback"));
  tmp = CDR(tmp);
  SETCAR(tmp, s_user_data);
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static gboolean
S_virtual_gdrive_eject_finish(GDrive* s_object, GAsyncResult* s_result, GError** s_error)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GDrive_symbol, S_GOBJECT_GET_ENV(s_object)), 10));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GDrive")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_result, "GAsyncResult"));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  *s_error = asCGError(VECTOR_ELT(s_ans, 1));
  return(((gboolean)asCLogical(VECTOR_ELT(s_ans, 0))));
}

static void
S_virtual_gdrive_poll_for_media(GDrive* s_object, GCancellable* s_cancellable, GAsyncReadyCallback s_callback, gpointer s_user_data)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 5));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GDrive_symbol, S_GOBJECT_GET_ENV(s_object)), 11));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GDrive")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_cancellable, "GCancellable"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerFn(((DL_FUNC)s_callback), "GAsyncReadyCallback"));
  tmp = CDR(tmp);
  SETCAR(tmp, s_user_data);
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static gboolean
S_virtual_gdrive_poll_for_media_finish(GDrive* s_object, GAsyncResult* s_result, GError** s_error)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GDrive_symbol, S_GOBJECT_GET_ENV(s_object)), 12));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GDrive")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_result, "GAsyncResult"));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  *s_error = asCGError(VECTOR_ELT(s_ans, 1));
  return(((gboolean)asCLogical(VECTOR_ELT(s_ans, 0))));
}

static char*
S_virtual_gdrive_get_identifier(GDrive* s_object, const char* s_kind)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GDrive_symbol, S_GOBJECT_GET_ENV(s_object)), 13));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GDrive")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRString(s_kind));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((char*)0));
  return(((char*)g_strdup(asCString(s_ans))));
}

static char**
S_virtual_gdrive_enumerate_identifiers(GDrive* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GDrive_symbol, S_GOBJECT_GET_ENV(s_object)), 14));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GDrive")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((char**)0));
  return(((char**)asCStringArray(s_ans)));
}

static GDriveStartStopType
S_virtual_gdrive_get_start_stop_type(GDrive* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GDrive_symbol, S_GOBJECT_GET_ENV(s_object)), 15));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GDrive")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((GDriveStartStopType)0));
  return(((GDriveStartStopType)asCEnum(s_ans, G_TYPE_DRIVE_START_STOP_TYPE)));
}

static void
S_virtual_gdrive_start(GDrive* s_object, GDriveStartFlags s_flags, GMountOperation* s_mount_operation, GCancellable* s_cancellable, GAsyncReadyCallback s_callback, gpointer s_user_data)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 7));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GDrive_symbol, S_GOBJECT_GET_ENV(s_object)), 16));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GDrive")));
  tmp = CDR(tmp);
  SETCAR(tmp, asREnum(s_flags, G_TYPE_DRIVE_START_FLAGS));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_mount_operation, "GMountOperation"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_cancellable, "GCancellable"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerFn(((DL_FUNC)s_callback), "GAsyncReadyCallback"));
  tmp = CDR(tmp);
  SETCAR(tmp, s_user_data);
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static gboolean
S_virtual_gdrive_start_finish(GDrive* s_object, GAsyncResult* s_result, GError** s_error)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GDrive_symbol, S_GOBJECT_GET_ENV(s_object)), 17));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GDrive")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_result, "GAsyncResult"));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  *s_error = asCGError(VECTOR_ELT(s_ans, 1));
  return(((gboolean)asCLogical(VECTOR_ELT(s_ans, 0))));
}

static void
S_virtual_gdrive_stop(GDrive* s_object, GMountUnmountFlags s_flags, GMountOperation* s_mount_operation, GCancellable* s_cancellable, GAsyncReadyCallback s_callback, gpointer s_user_data)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 7));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GDrive_symbol, S_GOBJECT_GET_ENV(s_object)), 18));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GDrive")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRFlag(s_flags, G_TYPE_MOUNT_UNMOUNT_FLAGS));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_mount_operation, "GMountOperation"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_cancellable, "GCancellable"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerFn(((DL_FUNC)s_callback), "GAsyncReadyCallback"));
  tmp = CDR(tmp);
  SETCAR(tmp, s_user_data);
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static gboolean
S_virtual_gdrive_stop_finish(GDrive* s_object, GAsyncResult* s_result, GError** s_error)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GDrive_symbol, S_GOBJECT_GET_ENV(s_object)), 19));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GDrive")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_result, "GAsyncResult"));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  *s_error = asCGError(VECTOR_ELT(s_ans, 1));
  return(((gboolean)asCLogical(VECTOR_ELT(s_ans, 0))));
}

static gboolean
S_virtual_gdrive_can_start(GDrive* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GDrive_symbol, S_GOBJECT_GET_ENV(s_object)), 20));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GDrive")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  return(((gboolean)asCLogical(s_ans)));
}

static gboolean
S_virtual_gdrive_can_start_degraded(GDrive* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GDrive_symbol, S_GOBJECT_GET_ENV(s_object)), 21));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GDrive")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  return(((gboolean)asCLogical(s_ans)));
}

static gboolean
S_virtual_gdrive_can_stop(GDrive* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GDrive_symbol, S_GOBJECT_GET_ENV(s_object)), 22));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GDrive")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  return(((gboolean)asCLogical(s_ans)));
}

static void
S_virtual_gdrive_eject_with_operation(GDrive* s_object, GMountUnmountFlags s_flags, GMountOperation* s_mount_operation, GCancellable* s_cancellable, GAsyncReadyCallback s_callback, gpointer s_user_data)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 7));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GDrive_symbol, S_GOBJECT_GET_ENV(s_object)), 23));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GDrive")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRFlag(s_flags, G_TYPE_MOUNT_UNMOUNT_FLAGS));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_mount_operation, "GMountOperation"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_cancellable, "GCancellable"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerFn(((DL_FUNC)s_callback), "GAsyncReadyCallback"));
  tmp = CDR(tmp);
  SETCAR(tmp, s_user_data);
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static gboolean
S_virtual_gdrive_eject_with_operation_finish(GDrive* s_object, GAsyncResult* s_result, GError** s_error)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GDrive_symbol, S_GOBJECT_GET_ENV(s_object)), 24));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GDrive")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_result, "GAsyncResult"));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  *s_error = asCGError(VECTOR_ELT(s_ans, 1));
  return(((gboolean)asCLogical(VECTOR_ELT(s_ans, 0))));
}
void
S_gdrive_class_init(GDriveIface * c, SEXP e)
{
  SEXP s;

  S_GDrive_symbol = install("GDrive");
  s = PROTECT(findVar(S_GDrive_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GDriveIface)) = e;

  UNPROTECT(1);

#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 0) != NULL_USER_OBJECT)
    c->get_name = S_virtual_gdrive_get_name;
#endif
#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 1) != NULL_USER_OBJECT)
    c->get_icon = S_virtual_gdrive_get_icon;
#endif
#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 2) != NULL_USER_OBJECT)
    c->has_volumes = S_virtual_gdrive_has_volumes;
#endif
#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 3) != NULL_USER_OBJECT)
    c->get_volumes = S_virtual_gdrive_get_volumes;
#endif
#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 4) != NULL_USER_OBJECT)
    c->is_media_removable = S_virtual_gdrive_is_media_removable;
#endif
#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 5) != NULL_USER_OBJECT)
    c->has_media = S_virtual_gdrive_has_media;
#endif
#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 6) != NULL_USER_OBJECT)
    c->is_media_check_automatic = S_virtual_gdrive_is_media_check_automatic;
#endif
#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 7) != NULL_USER_OBJECT)
    c->can_poll_for_media = S_virtual_gdrive_can_poll_for_media;
#endif
#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 8) != NULL_USER_OBJECT)
    c->can_eject = S_virtual_gdrive_can_eject;
#endif
#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 9) != NULL_USER_OBJECT)
    c->eject = S_virtual_gdrive_eject;
#endif
#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 10) != NULL_USER_OBJECT)
    c->eject_finish = S_virtual_gdrive_eject_finish;
#endif
#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 11) != NULL_USER_OBJECT)
    c->poll_for_media = S_virtual_gdrive_poll_for_media;
#endif
#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 12) != NULL_USER_OBJECT)
    c->poll_for_media_finish = S_virtual_gdrive_poll_for_media_finish;
#endif
#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 13) != NULL_USER_OBJECT)
    c->get_identifier = S_virtual_gdrive_get_identifier;
#endif
#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 14) != NULL_USER_OBJECT)
    c->enumerate_identifiers = S_virtual_gdrive_enumerate_identifiers;
#endif
#if GIO_CHECK_VERSION(2, 22, 0)
  if(VECTOR_ELT(s, 15) != NULL_USER_OBJECT)
    c->get_start_stop_type = S_virtual_gdrive_get_start_stop_type;
#endif
#if GIO_CHECK_VERSION(2, 22, 0)
  if(VECTOR_ELT(s, 16) != NULL_USER_OBJECT)
    c->start = S_virtual_gdrive_start;
#endif
#if GIO_CHECK_VERSION(2, 22, 0)
  if(VECTOR_ELT(s, 17) != NULL_USER_OBJECT)
    c->start_finish = S_virtual_gdrive_start_finish;
#endif
#if GIO_CHECK_VERSION(2, 22, 0)
  if(VECTOR_ELT(s, 18) != NULL_USER_OBJECT)
    c->stop = S_virtual_gdrive_stop;
#endif
#if GIO_CHECK_VERSION(2, 22, 0)
  if(VECTOR_ELT(s, 19) != NULL_USER_OBJECT)
    c->stop_finish = S_virtual_gdrive_stop_finish;
#endif
#if GIO_CHECK_VERSION(2, 22, 0)
  if(VECTOR_ELT(s, 20) != NULL_USER_OBJECT)
    c->can_start = S_virtual_gdrive_can_start;
#endif
#if GIO_CHECK_VERSION(2, 22, 0)
  if(VECTOR_ELT(s, 21) != NULL_USER_OBJECT)
    c->can_start_degraded = S_virtual_gdrive_can_start_degraded;
#endif
#if GIO_CHECK_VERSION(2, 22, 0)
  if(VECTOR_ELT(s, 22) != NULL_USER_OBJECT)
    c->can_stop = S_virtual_gdrive_can_stop;
#endif
#if GIO_CHECK_VERSION(2, 22, 0)
  if(VECTOR_ELT(s, 23) != NULL_USER_OBJECT)
    c->eject_with_operation = S_virtual_gdrive_eject_with_operation;
#endif
#if GIO_CHECK_VERSION(2, 22, 0)
  if(VECTOR_ELT(s, 24) != NULL_USER_OBJECT)
    c->eject_with_operation_finish = S_virtual_gdrive_eject_with_operation_finish;
#endif
}
#endif
USER_OBJECT_
S_gdrive_iface_get_name(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GDriveIface* object_class = ((GDriveIface*)getPtrValue(s_object_class));
  GDrive* object = G_DRIVE(getPtrValue(s_object));

  char* ans;

  ans = object_class->get_name(object);

  _result = asRString(ans);
    CLEANUP(g_free, ans);;
#else
  error("gdrive_get_name exists only in gio >= 2.16.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gdrive_iface_get_icon(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GDriveIface* object_class = ((GDriveIface*)getPtrValue(s_object_class));
  GDrive* object = G_DRIVE(getPtrValue(s_object));

  GIcon* ans;

  ans = object_class->get_icon(object);

  _result = toRPointerWithFinalizer(ans, "GIcon", (RPointerFinalizer) g_object_unref);
#else
  error("gdrive_get_icon exists only in gio >= 2.16.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gdrive_iface_has_volumes(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GDriveIface* object_class = ((GDriveIface*)getPtrValue(s_object_class));
  GDrive* object = G_DRIVE(getPtrValue(s_object));

  gboolean ans;

  ans = object_class->has_volumes(object);

  _result = asRLogical(ans);
#else
  error("gdrive_has_volumes exists only in gio >= 2.16.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gdrive_iface_get_volumes(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GDriveIface* object_class = ((GDriveIface*)getPtrValue(s_object_class));
  GDrive* object = G_DRIVE(getPtrValue(s_object));

  GList* ans;

  ans = object_class->get_volumes(object);

  _result = asRGListWithRef(ans, "GVolume");
    CLEANUP(g_list_free, ans);;
#else
  error("gdrive_get_volumes exists only in gio >= 2.16.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gdrive_iface_is_media_removable(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GDriveIface* object_class = ((GDriveIface*)getPtrValue(s_object_class));
  GDrive* object = G_DRIVE(getPtrValue(s_object));

  gboolean ans;

  ans = object_class->is_media_removable(object);

  _result = asRLogical(ans);
#else
  error("gdrive_is_media_removable exists only in gio >= 2.16.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gdrive_iface_has_media(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GDriveIface* object_class = ((GDriveIface*)getPtrValue(s_object_class));
  GDrive* object = G_DRIVE(getPtrValue(s_object));

  gboolean ans;

  ans = object_class->has_media(object);

  _result = asRLogical(ans);
#else
  error("gdrive_has_media exists only in gio >= 2.16.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gdrive_iface_is_media_check_automatic(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GDriveIface* object_class = ((GDriveIface*)getPtrValue(s_object_class));
  GDrive* object = G_DRIVE(getPtrValue(s_object));

  gboolean ans;

  ans = object_class->is_media_check_automatic(object);

  _result = asRLogical(ans);
#else
  error("gdrive_is_media_check_automatic exists only in gio >= 2.16.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gdrive_iface_can_poll_for_media(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GDriveIface* object_class = ((GDriveIface*)getPtrValue(s_object_class));
  GDrive* object = G_DRIVE(getPtrValue(s_object));

  gboolean ans;

  ans = object_class->can_poll_for_media(object);

  _result = asRLogical(ans);
#else
  error("gdrive_can_poll_for_media exists only in gio >= 2.16.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gdrive_iface_can_eject(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GDriveIface* object_class = ((GDriveIface*)getPtrValue(s_object_class));
  GDrive* object = G_DRIVE(getPtrValue(s_object));

  gboolean ans;

  ans = object_class->can_eject(object);

  _result = asRLogical(ans);
#else
  error("gdrive_can_eject exists only in gio >= 2.16.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gdrive_iface_eject(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_flags, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GAsyncReadyCallback callback = ((GAsyncReadyCallback)S_GAsyncReadyCallback);
  R_CallbackData* user_data = R_createCBData(s_callback, s_user_data);
  GDriveIface* object_class = ((GDriveIface*)getPtrValue(s_object_class));
  GDrive* object = G_DRIVE(getPtrValue(s_object));
  GMountUnmountFlags flags = ((GMountUnmountFlags)asCFlag(s_flags, G_TYPE_MOUNT_UNMOUNT_FLAGS));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));


  object_class->eject(object, flags, cancellable, callback, user_data);

#else
  error("gdrive_eject exists only in gio >= 2.16.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gdrive_iface_eject_finish(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_result)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GDriveIface* object_class = ((GDriveIface*)getPtrValue(s_object_class));
  GDrive* object = G_DRIVE(getPtrValue(s_object));
  GAsyncResult* result = G_ASYNC_RESULT(getPtrValue(s_result));

  gboolean ans;
  GError* error = NULL;

  ans = object_class->eject_finish(object, result, &error);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("gdrive_eject_finish exists only in gio >= 2.16.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gdrive_iface_poll_for_media(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GAsyncReadyCallback callback = ((GAsyncReadyCallback)S_GAsyncReadyCallback);
  R_CallbackData* user_data = R_createCBData(s_callback, s_user_data);
  GDriveIface* object_class = ((GDriveIface*)getPtrValue(s_object_class));
  GDrive* object = G_DRIVE(getPtrValue(s_object));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));


  object_class->poll_for_media(object, cancellable, callback, user_data);

#else
  error("gdrive_poll_for_media exists only in gio >= 2.16.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gdrive_iface_poll_for_media_finish(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_result)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GDriveIface* object_class = ((GDriveIface*)getPtrValue(s_object_class));
  GDrive* object = G_DRIVE(getPtrValue(s_object));
  GAsyncResult* result = G_ASYNC_RESULT(getPtrValue(s_result));

  gboolean ans;
  GError* error = NULL;

  ans = object_class->poll_for_media_finish(object, result, &error);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("gdrive_poll_for_media_finish exists only in gio >= 2.16.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gdrive_iface_get_identifier(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_kind)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GDriveIface* object_class = ((GDriveIface*)getPtrValue(s_object_class));
  GDrive* object = G_DRIVE(getPtrValue(s_object));
  const char* kind = ((const char*)asCString(s_kind));

  char* ans;

  ans = object_class->get_identifier(object, kind);

  _result = asRString(ans);
    CLEANUP(g_free, ans);;
#else
  error("gdrive_get_identifier exists only in gio >= 2.16.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gdrive_iface_enumerate_identifiers(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GDriveIface* object_class = ((GDriveIface*)getPtrValue(s_object_class));
  GDrive* object = G_DRIVE(getPtrValue(s_object));

  char** ans;

  ans = object_class->enumerate_identifiers(object);

  _result = asRStringArray(ans);
    CLEANUP(g_strfreev, ans);;
#else
  error("gdrive_enumerate_identifiers exists only in gio >= 2.16.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gdrive_iface_get_start_stop_type(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GDriveIface* object_class = ((GDriveIface*)getPtrValue(s_object_class));
  GDrive* object = G_DRIVE(getPtrValue(s_object));

  GDriveStartStopType ans;

  ans = object_class->get_start_stop_type(object);

  _result = asREnum(ans, G_TYPE_DRIVE_START_STOP_TYPE);
#else
  error("gdrive_get_start_stop_type exists only in gio >= 2.22.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gdrive_iface_start(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_flags, USER_OBJECT_ s_mount_operation, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GAsyncReadyCallback callback = ((GAsyncReadyCallback)S_GAsyncReadyCallback);
  R_CallbackData* user_data = R_createCBData(s_callback, s_user_data);
  GDriveIface* object_class = ((GDriveIface*)getPtrValue(s_object_class));
  GDrive* object = G_DRIVE(getPtrValue(s_object));
  GDriveStartFlags flags = ((GDriveStartFlags)asCEnum(s_flags, G_TYPE_DRIVE_START_FLAGS));
  GMountOperation* mount_operation = G_MOUNT_OPERATION(getPtrValue(s_mount_operation));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));


  object_class->start(object, flags, mount_operation, cancellable, callback, user_data);

#else
  error("gdrive_start exists only in gio >= 2.22.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gdrive_iface_start_finish(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_result)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GDriveIface* object_class = ((GDriveIface*)getPtrValue(s_object_class));
  GDrive* object = G_DRIVE(getPtrValue(s_object));
  GAsyncResult* result = G_ASYNC_RESULT(getPtrValue(s_result));

  gboolean ans;
  GError* error = NULL;

  ans = object_class->start_finish(object, result, &error);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("gdrive_start_finish exists only in gio >= 2.22.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gdrive_iface_stop(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_flags, USER_OBJECT_ s_mount_operation, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GAsyncReadyCallback callback = ((GAsyncReadyCallback)S_GAsyncReadyCallback);
  R_CallbackData* user_data = R_createCBData(s_callback, s_user_data);
  GDriveIface* object_class = ((GDriveIface*)getPtrValue(s_object_class));
  GDrive* object = G_DRIVE(getPtrValue(s_object));
  GMountUnmountFlags flags = ((GMountUnmountFlags)asCFlag(s_flags, G_TYPE_MOUNT_UNMOUNT_FLAGS));
  GMountOperation* mount_operation = G_MOUNT_OPERATION(getPtrValue(s_mount_operation));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));


  object_class->stop(object, flags, mount_operation, cancellable, callback, user_data);

#else
  error("gdrive_stop exists only in gio >= 2.22.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gdrive_iface_stop_finish(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_result)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GDriveIface* object_class = ((GDriveIface*)getPtrValue(s_object_class));
  GDrive* object = G_DRIVE(getPtrValue(s_object));
  GAsyncResult* result = G_ASYNC_RESULT(getPtrValue(s_result));

  gboolean ans;
  GError* error = NULL;

  ans = object_class->stop_finish(object, result, &error);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("gdrive_stop_finish exists only in gio >= 2.22.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gdrive_iface_can_start(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GDriveIface* object_class = ((GDriveIface*)getPtrValue(s_object_class));
  GDrive* object = G_DRIVE(getPtrValue(s_object));

  gboolean ans;

  ans = object_class->can_start(object);

  _result = asRLogical(ans);
#else
  error("gdrive_can_start exists only in gio >= 2.22.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gdrive_iface_can_start_degraded(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GDriveIface* object_class = ((GDriveIface*)getPtrValue(s_object_class));
  GDrive* object = G_DRIVE(getPtrValue(s_object));

  gboolean ans;

  ans = object_class->can_start_degraded(object);

  _result = asRLogical(ans);
#else
  error("gdrive_can_start_degraded exists only in gio >= 2.22.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gdrive_iface_can_stop(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GDriveIface* object_class = ((GDriveIface*)getPtrValue(s_object_class));
  GDrive* object = G_DRIVE(getPtrValue(s_object));

  gboolean ans;

  ans = object_class->can_stop(object);

  _result = asRLogical(ans);
#else
  error("gdrive_can_stop exists only in gio >= 2.22.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gdrive_iface_eject_with_operation(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_flags, USER_OBJECT_ s_mount_operation, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GAsyncReadyCallback callback = ((GAsyncReadyCallback)S_GAsyncReadyCallback);
  R_CallbackData* user_data = R_createCBData(s_callback, s_user_data);
  GDriveIface* object_class = ((GDriveIface*)getPtrValue(s_object_class));
  GDrive* object = G_DRIVE(getPtrValue(s_object));
  GMountUnmountFlags flags = ((GMountUnmountFlags)asCFlag(s_flags, G_TYPE_MOUNT_UNMOUNT_FLAGS));
  GMountOperation* mount_operation = G_MOUNT_OPERATION(getPtrValue(s_mount_operation));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));


  object_class->eject_with_operation(object, flags, mount_operation, cancellable, callback, user_data);

#else
  error("gdrive_eject_with_operation exists only in gio >= 2.22.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gdrive_iface_eject_with_operation_finish(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_result)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GDriveIface* object_class = ((GDriveIface*)getPtrValue(s_object_class));
  GDrive* object = G_DRIVE(getPtrValue(s_object));
  GAsyncResult* result = G_ASYNC_RESULT(getPtrValue(s_result));

  gboolean ans;
  GError* error = NULL;

  ans = object_class->eject_with_operation_finish(object, result, &error);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("gdrive_eject_with_operation_finish exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

#if GIO_CHECK_VERSION(2, 16, 0)
static SEXP S_GFile_symbol;

static GFile*
S_virtual_gfile_dup(GFile* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GFile_symbol, S_GOBJECT_GET_ENV(s_object)), 0));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GFile")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((GFile*)0));
  return(G_FILE(getPtrValue(s_ans)));
}

static gboolean
S_virtual_gfile_equal(GFile* s_object, GFile* s_file2)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GFile_symbol, S_GOBJECT_GET_ENV(s_object)), 1));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GFile")));
  tmp = CDR(tmp);
  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_file2, toRPointerWithRef(s_file2, "GFile")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  return(((gboolean)asCLogical(s_ans)));
}

static char*
S_virtual_gfile_get_basename(GFile* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GFile_symbol, S_GOBJECT_GET_ENV(s_object)), 2));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GFile")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((char*)0));
  return(((char*)g_strdup(asCString(s_ans))));
}

static char*
S_virtual_gfile_get_path(GFile* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GFile_symbol, S_GOBJECT_GET_ENV(s_object)), 3));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GFile")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((char*)0));
  return(((char*)g_strdup(asCString(s_ans))));
}

static char*
S_virtual_gfile_get_uri(GFile* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GFile_symbol, S_GOBJECT_GET_ENV(s_object)), 4));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GFile")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((char*)0));
  return(((char*)g_strdup(asCString(s_ans))));
}

static char*
S_virtual_gfile_get_parse_name(GFile* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GFile_symbol, S_GOBJECT_GET_ENV(s_object)), 5));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GFile")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((char*)0));
  return(((char*)g_strdup(asCString(s_ans))));
}

static GFile*
S_virtual_gfile_get_parent(GFile* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GFile_symbol, S_GOBJECT_GET_ENV(s_object)), 6));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GFile")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((GFile*)0));
  return(G_FILE(getPtrValue(s_ans)));
}

static GFile*
S_virtual_gfile_get_child_for_display_name(GFile* s_object, const char* s_display_name, GError** s_error)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GFile_symbol, S_GOBJECT_GET_ENV(s_object)), 7));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GFile")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRString(s_display_name));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((GFile*)0));
  *s_error = asCGError(VECTOR_ELT(s_ans, 1));
  return(G_FILE(getPtrValue(VECTOR_ELT(s_ans, 0))));
}

static gboolean
S_virtual_gfile_prefix_matches(GFile* s_object, GFile* s_file)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GFile_symbol, S_GOBJECT_GET_ENV(s_object)), 8));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GFile")));
  tmp = CDR(tmp);
  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_file, toRPointerWithRef(s_file, "GFile")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  return(((gboolean)asCLogical(s_ans)));
}

static char*
S_virtual_gfile_get_relative_path(GFile* s_object, GFile* s_descendant)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GFile_symbol, S_GOBJECT_GET_ENV(s_object)), 9));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GFile")));
  tmp = CDR(tmp);
  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_descendant, toRPointerWithRef(s_descendant, "GFile")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((char*)0));
  return(((char*)g_strdup(asCString(s_ans))));
}

static GFile*
S_virtual_gfile_resolve_relative_path(GFile* s_object, const char* s_relative_path)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GFile_symbol, S_GOBJECT_GET_ENV(s_object)), 10));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GFile")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRString(s_relative_path));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((GFile*)0));
  return(G_FILE(getPtrValue(s_ans)));
}

static gboolean
S_virtual_gfile_is_native(GFile* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GFile_symbol, S_GOBJECT_GET_ENV(s_object)), 11));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GFile")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  return(((gboolean)asCLogical(s_ans)));
}

static gboolean
S_virtual_gfile_has_uri_scheme(GFile* s_object, const char* s_uri_scheme)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GFile_symbol, S_GOBJECT_GET_ENV(s_object)), 12));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GFile")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRString(s_uri_scheme));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  return(((gboolean)asCLogical(s_ans)));
}

static char*
S_virtual_gfile_get_uri_scheme(GFile* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GFile_symbol, S_GOBJECT_GET_ENV(s_object)), 13));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GFile")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((char*)0));
  return(((char*)g_strdup(asCString(s_ans))));
}

static GFileInputStream*
S_virtual_gfile_read_fn(GFile* s_object, GCancellable* s_cancellable, GError** s_error)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GFile_symbol, S_GOBJECT_GET_ENV(s_object)), 14));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GFile")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_cancellable, "GCancellable"));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((GFileInputStream*)0));
  *s_error = asCGError(VECTOR_ELT(s_ans, 1));
  return(G_FILE_INPUT_STREAM(getPtrValueWithRef(VECTOR_ELT(s_ans, 0))));
}

static void
S_virtual_gfile_read_async(GFile* s_object, int s_io_priority, GCancellable* s_cancellable, GAsyncReadyCallback s_callback, gpointer s_user_data)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 6));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GFile_symbol, S_GOBJECT_GET_ENV(s_object)), 15));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GFile")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_io_priority));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_cancellable, "GCancellable"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerFn(((DL_FUNC)s_callback), "GAsyncReadyCallback"));
  tmp = CDR(tmp);
  SETCAR(tmp, s_user_data);
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static GFileInputStream*
S_virtual_gfile_read_finish(GFile* s_object, GAsyncResult* s_res, GError** s_error)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GFile_symbol, S_GOBJECT_GET_ENV(s_object)), 16));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GFile")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_res, "GAsyncResult"));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((GFileInputStream*)0));
  *s_error = asCGError(VECTOR_ELT(s_ans, 1));
  return(G_FILE_INPUT_STREAM(getPtrValueWithRef(VECTOR_ELT(s_ans, 0))));
}

static GFileOutputStream*
S_virtual_gfile_append_to(GFile* s_object, GFileCreateFlags s_flags, GCancellable* s_cancellable, GError** s_error)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 4));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GFile_symbol, S_GOBJECT_GET_ENV(s_object)), 17));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GFile")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRFlag(s_flags, G_TYPE_FILE_CREATE_FLAGS));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_cancellable, "GCancellable"));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((GFileOutputStream*)0));
  *s_error = asCGError(VECTOR_ELT(s_ans, 1));
  return(G_FILE_OUTPUT_STREAM(getPtrValueWithRef(VECTOR_ELT(s_ans, 0))));
}

static GFileOutputStream*
S_virtual_gfile_create(GFile* s_object, GFileCreateFlags s_flags, GCancellable* s_cancellable, GError** s_error)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 4));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GFile_symbol, S_GOBJECT_GET_ENV(s_object)), 18));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GFile")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRFlag(s_flags, G_TYPE_FILE_CREATE_FLAGS));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_cancellable, "GCancellable"));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((GFileOutputStream*)0));
  *s_error = asCGError(VECTOR_ELT(s_ans, 1));
  return(G_FILE_OUTPUT_STREAM(getPtrValueWithRef(VECTOR_ELT(s_ans, 0))));
}

static GFileOutputStream*
S_virtual_gfile_replace(GFile* s_object, const char* s_etag, gboolean s_make_backup, GFileCreateFlags s_flags, GCancellable* s_cancellable, GError** s_error)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 6));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GFile_symbol, S_GOBJECT_GET_ENV(s_object)), 19));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GFile")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRString(s_etag));
  tmp = CDR(tmp);
  SETCAR(tmp, asRLogical(s_make_backup));
  tmp = CDR(tmp);
  SETCAR(tmp, asRFlag(s_flags, G_TYPE_FILE_CREATE_FLAGS));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_cancellable, "GCancellable"));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((GFileOutputStream*)0));
  *s_error = asCGError(VECTOR_ELT(s_ans, 1));
  return(G_FILE_OUTPUT_STREAM(getPtrValueWithRef(VECTOR_ELT(s_ans, 0))));
}

static void
S_virtual_gfile_append_to_async(GFile* s_object, GFileCreateFlags s_flags, int s_io_priority, GCancellable* s_cancellable, GAsyncReadyCallback s_callback, gpointer s_user_data)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 7));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GFile_symbol, S_GOBJECT_GET_ENV(s_object)), 20));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GFile")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRFlag(s_flags, G_TYPE_FILE_CREATE_FLAGS));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_io_priority));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_cancellable, "GCancellable"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerFn(((DL_FUNC)s_callback), "GAsyncReadyCallback"));
  tmp = CDR(tmp);
  SETCAR(tmp, s_user_data);
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static GFileOutputStream*
S_virtual_gfile_append_to_finish(GFile* s_object, GAsyncResult* s_res, GError** s_error)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GFile_symbol, S_GOBJECT_GET_ENV(s_object)), 21));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GFile")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_res, "GAsyncResult"));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((GFileOutputStream*)0));
  *s_error = asCGError(VECTOR_ELT(s_ans, 1));
  return(G_FILE_OUTPUT_STREAM(getPtrValueWithRef(VECTOR_ELT(s_ans, 0))));
}

static void
S_virtual_gfile_create_async(GFile* s_object, GFileCreateFlags s_flags, int s_io_priority, GCancellable* s_cancellable, GAsyncReadyCallback s_callback, gpointer s_user_data)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 7));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GFile_symbol, S_GOBJECT_GET_ENV(s_object)), 22));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GFile")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRFlag(s_flags, G_TYPE_FILE_CREATE_FLAGS));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_io_priority));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_cancellable, "GCancellable"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerFn(((DL_FUNC)s_callback), "GAsyncReadyCallback"));
  tmp = CDR(tmp);
  SETCAR(tmp, s_user_data);
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static GFileOutputStream*
S_virtual_gfile_create_finish(GFile* s_object, GAsyncResult* s_res, GError** s_error)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GFile_symbol, S_GOBJECT_GET_ENV(s_object)), 23));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GFile")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_res, "GAsyncResult"));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((GFileOutputStream*)0));
  *s_error = asCGError(VECTOR_ELT(s_ans, 1));
  return(G_FILE_OUTPUT_STREAM(getPtrValueWithRef(VECTOR_ELT(s_ans, 0))));
}

static void
S_virtual_gfile_replace_async(GFile* s_object, const char* s_etag, gboolean s_make_backup, GFileCreateFlags s_flags, int s_io_priority, GCancellable* s_cancellable, GAsyncReadyCallback s_callback, gpointer s_user_data)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 9));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GFile_symbol, S_GOBJECT_GET_ENV(s_object)), 24));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GFile")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRString(s_etag));
  tmp = CDR(tmp);
  SETCAR(tmp, asRLogical(s_make_backup));
  tmp = CDR(tmp);
  SETCAR(tmp, asRFlag(s_flags, G_TYPE_FILE_CREATE_FLAGS));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_io_priority));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_cancellable, "GCancellable"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerFn(((DL_FUNC)s_callback), "GAsyncReadyCallback"));
  tmp = CDR(tmp);
  SETCAR(tmp, s_user_data);
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static GFileOutputStream*
S_virtual_gfile_replace_finish(GFile* s_object, GAsyncResult* s_res, GError** s_error)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GFile_symbol, S_GOBJECT_GET_ENV(s_object)), 25));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GFile")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_res, "GAsyncResult"));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((GFileOutputStream*)0));
  *s_error = asCGError(VECTOR_ELT(s_ans, 1));
  return(G_FILE_OUTPUT_STREAM(getPtrValueWithRef(VECTOR_ELT(s_ans, 0))));
}

static GFileInfo*
S_virtual_gfile_query_info(GFile* s_object, const char* s_attributes, GFileQueryInfoFlags s_flags, GCancellable* s_cancellable, GError** s_error)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 5));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GFile_symbol, S_GOBJECT_GET_ENV(s_object)), 26));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GFile")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRString(s_attributes));
  tmp = CDR(tmp);
  SETCAR(tmp, asRFlag(s_flags, G_TYPE_FILE_QUERY_INFO_FLAGS));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_cancellable, "GCancellable"));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((GFileInfo*)0));
  *s_error = asCGError(VECTOR_ELT(s_ans, 1));
  return(G_FILE_INFO(getPtrValueWithRef(VECTOR_ELT(s_ans, 0))));
}

static void
S_virtual_gfile_query_info_async(GFile* s_object, const char* s_attributes, GFileQueryInfoFlags s_flags, int s_io_priority, GCancellable* s_cancellable, GAsyncReadyCallback s_callback, gpointer s_user_data)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 8));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GFile_symbol, S_GOBJECT_GET_ENV(s_object)), 27));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GFile")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRString(s_attributes));
  tmp = CDR(tmp);
  SETCAR(tmp, asRFlag(s_flags, G_TYPE_FILE_QUERY_INFO_FLAGS));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_io_priority));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_cancellable, "GCancellable"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerFn(((DL_FUNC)s_callback), "GAsyncReadyCallback"));
  tmp = CDR(tmp);
  SETCAR(tmp, s_user_data);
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static GFileInfo*
S_virtual_gfile_query_info_finish(GFile* s_object, GAsyncResult* s_res, GError** s_error)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GFile_symbol, S_GOBJECT_GET_ENV(s_object)), 28));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GFile")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_res, "GAsyncResult"));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((GFileInfo*)0));
  *s_error = asCGError(VECTOR_ELT(s_ans, 1));
  return(G_FILE_INFO(getPtrValueWithRef(VECTOR_ELT(s_ans, 0))));
}

static GFileInfo*
S_virtual_gfile_query_filesystem_info(GFile* s_object, const char* s_attributes, GCancellable* s_cancellable, GError** s_error)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 4));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GFile_symbol, S_GOBJECT_GET_ENV(s_object)), 29));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GFile")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRString(s_attributes));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_cancellable, "GCancellable"));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((GFileInfo*)0));
  *s_error = asCGError(VECTOR_ELT(s_ans, 1));
  return(G_FILE_INFO(getPtrValueWithRef(VECTOR_ELT(s_ans, 0))));
}

static void
S_virtual_gfile_query_filesystem_info_async(GFile* s_object, const char* s_attributes, int s_io_priority, GCancellable* s_cancellable, GAsyncReadyCallback s_callback, gpointer s_user_data)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 7));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GFile_symbol, S_GOBJECT_GET_ENV(s_object)), 30));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GFile")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRString(s_attributes));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_io_priority));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_cancellable, "GCancellable"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerFn(((DL_FUNC)s_callback), "GAsyncReadyCallback"));
  tmp = CDR(tmp);
  SETCAR(tmp, s_user_data);
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static GFileInfo*
S_virtual_gfile_query_filesystem_info_finish(GFile* s_object, GAsyncResult* s_res, GError** s_error)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GFile_symbol, S_GOBJECT_GET_ENV(s_object)), 31));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GFile")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_res, "GAsyncResult"));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((GFileInfo*)0));
  *s_error = asCGError(VECTOR_ELT(s_ans, 1));
  return(G_FILE_INFO(getPtrValue(VECTOR_ELT(s_ans, 0))));
}

static GMount*
S_virtual_gfile_find_enclosing_mount(GFile* s_object, GCancellable* s_cancellable, GError** s_error)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GFile_symbol, S_GOBJECT_GET_ENV(s_object)), 32));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GFile")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_cancellable, "GCancellable"));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((GMount*)0));
  *s_error = asCGError(VECTOR_ELT(s_ans, 1));
  return(G_MOUNT(getPtrValue(VECTOR_ELT(s_ans, 0))));
}

static void
S_virtual_gfile_find_enclosing_mount_async(GFile* s_object, int s_io_priority, GCancellable* s_cancellable, GAsyncReadyCallback s_callback, gpointer s_user_data)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 6));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GFile_symbol, S_GOBJECT_GET_ENV(s_object)), 33));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GFile")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_io_priority));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_cancellable, "GCancellable"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerFn(((DL_FUNC)s_callback), "GAsyncReadyCallback"));
  tmp = CDR(tmp);
  SETCAR(tmp, s_user_data);
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static GMount*
S_virtual_gfile_find_enclosing_mount_finish(GFile* s_object, GAsyncResult* s_res, GError** s_error)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GFile_symbol, S_GOBJECT_GET_ENV(s_object)), 34));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GFile")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_res, "GAsyncResult"));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((GMount*)0));
  *s_error = asCGError(VECTOR_ELT(s_ans, 1));
  return(G_MOUNT(getPtrValue(VECTOR_ELT(s_ans, 0))));
}

static GFileEnumerator*
S_virtual_gfile_enumerate_children(GFile* s_object, const char* s_attributes, GFileQueryInfoFlags s_flags, GCancellable* s_cancellable, GError** s_error)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 5));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GFile_symbol, S_GOBJECT_GET_ENV(s_object)), 35));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GFile")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRString(s_attributes));
  tmp = CDR(tmp);
  SETCAR(tmp, asRFlag(s_flags, G_TYPE_FILE_QUERY_INFO_FLAGS));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_cancellable, "GCancellable"));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((GFileEnumerator*)0));
  *s_error = asCGError(VECTOR_ELT(s_ans, 1));
  return(G_FILE_ENUMERATOR(getPtrValueWithRef(VECTOR_ELT(s_ans, 0))));
}

static void
S_virtual_gfile_enumerate_children_async(GFile* s_object, const char* s_attributes, GFileQueryInfoFlags s_flags, int s_io_priority, GCancellable* s_cancellable, GAsyncReadyCallback s_callback, gpointer s_user_data)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 8));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GFile_symbol, S_GOBJECT_GET_ENV(s_object)), 36));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GFile")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRString(s_attributes));
  tmp = CDR(tmp);
  SETCAR(tmp, asRFlag(s_flags, G_TYPE_FILE_QUERY_INFO_FLAGS));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_io_priority));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_cancellable, "GCancellable"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerFn(((DL_FUNC)s_callback), "GAsyncReadyCallback"));
  tmp = CDR(tmp);
  SETCAR(tmp, s_user_data);
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static GFileEnumerator*
S_virtual_gfile_enumerate_children_finish(GFile* s_object, GAsyncResult* s_res, GError** s_error)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GFile_symbol, S_GOBJECT_GET_ENV(s_object)), 37));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GFile")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_res, "GAsyncResult"));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((GFileEnumerator*)0));
  *s_error = asCGError(VECTOR_ELT(s_ans, 1));
  return(G_FILE_ENUMERATOR(getPtrValueWithRef(VECTOR_ELT(s_ans, 0))));
}

static GFile*
S_virtual_gfile_set_display_name(GFile* s_object, const char* s_display_name, GCancellable* s_cancellable, GError** s_error)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 4));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GFile_symbol, S_GOBJECT_GET_ENV(s_object)), 38));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GFile")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRString(s_display_name));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_cancellable, "GCancellable"));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((GFile*)0));
  *s_error = asCGError(VECTOR_ELT(s_ans, 1));
  return(G_FILE(getPtrValue(VECTOR_ELT(s_ans, 0))));
}

static void
S_virtual_gfile_set_display_name_async(GFile* s_object, const char* s_display_name, int s_io_priority, GCancellable* s_cancellable, GAsyncReadyCallback s_callback, gpointer s_user_data)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 7));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GFile_symbol, S_GOBJECT_GET_ENV(s_object)), 39));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GFile")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRString(s_display_name));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_io_priority));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_cancellable, "GCancellable"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerFn(((DL_FUNC)s_callback), "GAsyncReadyCallback"));
  tmp = CDR(tmp);
  SETCAR(tmp, s_user_data);
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static GFile*
S_virtual_gfile_set_display_name_finish(GFile* s_object, GAsyncResult* s_res, GError** s_error)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GFile_symbol, S_GOBJECT_GET_ENV(s_object)), 40));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GFile")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_res, "GAsyncResult"));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((GFile*)0));
  *s_error = asCGError(VECTOR_ELT(s_ans, 1));
  return(G_FILE(getPtrValue(VECTOR_ELT(s_ans, 0))));
}

static gboolean
S_virtual_gfile_delete_file(GFile* s_object, GCancellable* s_cancellable, GError** s_error)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GFile_symbol, S_GOBJECT_GET_ENV(s_object)), 41));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GFile")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_cancellable, "GCancellable"));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  *s_error = asCGError(VECTOR_ELT(s_ans, 1));
  return(((gboolean)asCLogical(VECTOR_ELT(s_ans, 0))));
}

static gboolean
S_virtual_gfile_trash(GFile* s_object, GCancellable* s_cancellable, GError** s_error)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GFile_symbol, S_GOBJECT_GET_ENV(s_object)), 42));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GFile")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_cancellable, "GCancellable"));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  *s_error = asCGError(VECTOR_ELT(s_ans, 1));
  return(((gboolean)asCLogical(VECTOR_ELT(s_ans, 0))));
}

static gboolean
S_virtual_gfile_copy(GFile* s_object, GFile* s_destination, GFileCopyFlags s_flags, GCancellable* s_cancellable, GFileProgressCallback s_progress_callback, gpointer s_progress_callback_data, GError** s_error)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 7));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GFile_symbol, S_GOBJECT_GET_ENV(s_object)), 43));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GFile")));
  tmp = CDR(tmp);
  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_destination, toRPointerWithRef(s_destination, "GFile")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRFlag(s_flags, G_TYPE_FILE_COPY_FLAGS));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_cancellable, "GCancellable"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerFn(((DL_FUNC)s_progress_callback), "GFileProgressCallback"));
  tmp = CDR(tmp);
  SETCAR(tmp, s_progress_callback_data);
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  *s_error = asCGError(VECTOR_ELT(s_ans, 1));
  return(((gboolean)asCLogical(VECTOR_ELT(s_ans, 0))));
}

static void
S_virtual_gfile_copy_async(GFile* s_object, GFile* s_destination, GFileCopyFlags s_flags, int s_io_priority, GCancellable* s_cancellable, GFileProgressCallback s_progress_callback, gpointer s_progress_callback_data, GAsyncReadyCallback s_callback, gpointer s_user_data)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 10));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GFile_symbol, S_GOBJECT_GET_ENV(s_object)), 44));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GFile")));
  tmp = CDR(tmp);
  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_destination, toRPointerWithRef(s_destination, "GFile")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRFlag(s_flags, G_TYPE_FILE_COPY_FLAGS));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_io_priority));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_cancellable, "GCancellable"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerFn(((DL_FUNC)s_progress_callback), "GFileProgressCallback"));
  tmp = CDR(tmp);
  SETCAR(tmp, s_progress_callback_data);
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerFn(((DL_FUNC)s_callback), "GAsyncReadyCallback"));
  tmp = CDR(tmp);
  SETCAR(tmp, s_user_data);
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static gboolean
S_virtual_gfile_copy_finish(GFile* s_object, GAsyncResult* s_res, GError** s_error)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GFile_symbol, S_GOBJECT_GET_ENV(s_object)), 45));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GFile")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_res, "GAsyncResult"));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  *s_error = asCGError(VECTOR_ELT(s_ans, 1));
  return(((gboolean)asCLogical(VECTOR_ELT(s_ans, 0))));
}

static gboolean
S_virtual_gfile_move(GFile* s_object, GFile* s_destination, GFileCopyFlags s_flags, GCancellable* s_cancellable, GFileProgressCallback s_progress_callback, gpointer s_progress_callback_data, GError** s_error)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 7));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GFile_symbol, S_GOBJECT_GET_ENV(s_object)), 46));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GFile")));
  tmp = CDR(tmp);
  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_destination, toRPointerWithRef(s_destination, "GFile")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRFlag(s_flags, G_TYPE_FILE_COPY_FLAGS));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_cancellable, "GCancellable"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerFn(((DL_FUNC)s_progress_callback), "GFileProgressCallback"));
  tmp = CDR(tmp);
  SETCAR(tmp, s_progress_callback_data);
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  *s_error = asCGError(VECTOR_ELT(s_ans, 1));
  return(((gboolean)asCLogical(VECTOR_ELT(s_ans, 0))));
}

static gboolean
S_virtual_gfile_make_directory(GFile* s_object, GCancellable* s_cancellable, GError** s_error)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GFile_symbol, S_GOBJECT_GET_ENV(s_object)), 47));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GFile")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_cancellable, "GCancellable"));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  *s_error = asCGError(VECTOR_ELT(s_ans, 1));
  return(((gboolean)asCLogical(VECTOR_ELT(s_ans, 0))));
}

static gboolean
S_virtual_gfile_make_symbolic_link(GFile* s_object, const char* s_symlink_value, GCancellable* s_cancellable, GError** s_error)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 4));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GFile_symbol, S_GOBJECT_GET_ENV(s_object)), 48));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GFile")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRString(s_symlink_value));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_cancellable, "GCancellable"));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  *s_error = asCGError(VECTOR_ELT(s_ans, 1));
  return(((gboolean)asCLogical(VECTOR_ELT(s_ans, 0))));
}

static GFileAttributeInfoList*
S_virtual_gfile_query_settable_attributes(GFile* s_object, GCancellable* s_cancellable, GError** s_error)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GFile_symbol, S_GOBJECT_GET_ENV(s_object)), 49));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GFile")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_cancellable, "GCancellable"));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((GFileAttributeInfoList*)0));
  *s_error = asCGError(VECTOR_ELT(s_ans, 1));
  return(((GFileAttributeInfoList*)getPtrValue(VECTOR_ELT(s_ans, 0))));
}

static GFileAttributeInfoList*
S_virtual_gfile_query_writable_namespaces(GFile* s_object, GCancellable* s_cancellable, GError** s_error)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GFile_symbol, S_GOBJECT_GET_ENV(s_object)), 50));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GFile")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_cancellable, "GCancellable"));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((GFileAttributeInfoList*)0));
  *s_error = asCGError(VECTOR_ELT(s_ans, 1));
  return(((GFileAttributeInfoList*)getPtrValue(VECTOR_ELT(s_ans, 0))));
}

static gboolean
S_virtual_gfile_set_attribute(GFile* s_object, const char* s_attribute, GFileAttributeType s_type, gpointer s_value_p, GFileQueryInfoFlags s_flags, GCancellable* s_cancellable, GError** s_error)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 7));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GFile_symbol, S_GOBJECT_GET_ENV(s_object)), 51));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GFile")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRString(s_attribute));
  tmp = CDR(tmp);
  SETCAR(tmp, asREnum(s_type, G_TYPE_FILE_ATTRIBUTE_TYPE));
  tmp = CDR(tmp);
  SETCAR(tmp, s_value_p);
  tmp = CDR(tmp);
  SETCAR(tmp, asRFlag(s_flags, G_TYPE_FILE_QUERY_INFO_FLAGS));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_cancellable, "GCancellable"));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  *s_error = asCGError(VECTOR_ELT(s_ans, 1));
  return(((gboolean)asCLogical(VECTOR_ELT(s_ans, 0))));
}

static gboolean
S_virtual_gfile_set_attributes_from_info(GFile* s_object, GFileInfo* s_info, GFileQueryInfoFlags s_flags, GCancellable* s_cancellable, GError** s_error)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 5));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GFile_symbol, S_GOBJECT_GET_ENV(s_object)), 52));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GFile")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_info, "GFileInfo"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRFlag(s_flags, G_TYPE_FILE_QUERY_INFO_FLAGS));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_cancellable, "GCancellable"));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  *s_error = asCGError(VECTOR_ELT(s_ans, 1));
  return(((gboolean)asCLogical(VECTOR_ELT(s_ans, 0))));
}

static void
S_virtual_gfile_set_attributes_async(GFile* s_object, GFileInfo* s_info, GFileQueryInfoFlags s_flags, int s_io_priority, GCancellable* s_cancellable, GAsyncReadyCallback s_callback, gpointer s_user_data)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 8));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GFile_symbol, S_GOBJECT_GET_ENV(s_object)), 53));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GFile")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_info, "GFileInfo"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRFlag(s_flags, G_TYPE_FILE_QUERY_INFO_FLAGS));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_io_priority));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_cancellable, "GCancellable"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerFn(((DL_FUNC)s_callback), "GAsyncReadyCallback"));
  tmp = CDR(tmp);
  SETCAR(tmp, s_user_data);
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static gboolean
S_virtual_gfile_set_attributes_finish(GFile* s_object, GAsyncResult* s_result, GFileInfo** s_info, GError** s_error)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GFile_symbol, S_GOBJECT_GET_ENV(s_object)), 54));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GFile")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_result, "GAsyncResult"));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  *s_info = G_FILE_INFO(getPtrValueWithRef(VECTOR_ELT(s_ans, 1)));
  *s_error = asCGError(VECTOR_ELT(s_ans, 2));
  return(((gboolean)asCLogical(VECTOR_ELT(s_ans, 0))));
}

static void
S_virtual_gfile_mount_enclosing_volume(GFile* s_object, GMountMountFlags s_flags, GMountOperation* s_mount_operation, GCancellable* s_cancellable, GAsyncReadyCallback s_callback, gpointer s_user_data)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 7));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GFile_symbol, S_GOBJECT_GET_ENV(s_object)), 55));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GFile")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRFlag(s_flags, G_TYPE_MOUNT_MOUNT_FLAGS));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_mount_operation, "GMountOperation"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_cancellable, "GCancellable"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerFn(((DL_FUNC)s_callback), "GAsyncReadyCallback"));
  tmp = CDR(tmp);
  SETCAR(tmp, s_user_data);
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static gboolean
S_virtual_gfile_mount_enclosing_volume_finish(GFile* s_object, GAsyncResult* s_result, GError** s_error)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GFile_symbol, S_GOBJECT_GET_ENV(s_object)), 56));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GFile")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_result, "GAsyncResult"));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  *s_error = asCGError(VECTOR_ELT(s_ans, 1));
  return(((gboolean)asCLogical(VECTOR_ELT(s_ans, 0))));
}

static void
S_virtual_gfile_mount_mountable(GFile* s_object, GMountMountFlags s_flags, GMountOperation* s_mount_operation, GCancellable* s_cancellable, GAsyncReadyCallback s_callback, gpointer s_user_data)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 7));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GFile_symbol, S_GOBJECT_GET_ENV(s_object)), 57));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GFile")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRFlag(s_flags, G_TYPE_MOUNT_MOUNT_FLAGS));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_mount_operation, "GMountOperation"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_cancellable, "GCancellable"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerFn(((DL_FUNC)s_callback), "GAsyncReadyCallback"));
  tmp = CDR(tmp);
  SETCAR(tmp, s_user_data);
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static GFile*
S_virtual_gfile_mount_mountable_finish(GFile* s_object, GAsyncResult* s_result, GError** s_error)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GFile_symbol, S_GOBJECT_GET_ENV(s_object)), 58));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GFile")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_result, "GAsyncResult"));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((GFile*)0));
  *s_error = asCGError(VECTOR_ELT(s_ans, 1));
  return(G_FILE(getPtrValue(VECTOR_ELT(s_ans, 0))));
}

static void
S_virtual_gfile_unmount_mountable(GFile* s_object, GMountUnmountFlags s_flags, GCancellable* s_cancellable, GAsyncReadyCallback s_callback, gpointer s_user_data)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 6));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GFile_symbol, S_GOBJECT_GET_ENV(s_object)), 59));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GFile")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRFlag(s_flags, G_TYPE_MOUNT_UNMOUNT_FLAGS));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_cancellable, "GCancellable"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerFn(((DL_FUNC)s_callback), "GAsyncReadyCallback"));
  tmp = CDR(tmp);
  SETCAR(tmp, s_user_data);
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static gboolean
S_virtual_gfile_unmount_mountable_finish(GFile* s_object, GAsyncResult* s_result, GError** s_error)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GFile_symbol, S_GOBJECT_GET_ENV(s_object)), 60));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GFile")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_result, "GAsyncResult"));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  *s_error = asCGError(VECTOR_ELT(s_ans, 1));
  return(((gboolean)asCLogical(VECTOR_ELT(s_ans, 0))));
}

static void
S_virtual_gfile_eject_mountable(GFile* s_object, GMountUnmountFlags s_flags, GCancellable* s_cancellable, GAsyncReadyCallback s_callback, gpointer s_user_data)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 6));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GFile_symbol, S_GOBJECT_GET_ENV(s_object)), 61));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GFile")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRFlag(s_flags, G_TYPE_MOUNT_UNMOUNT_FLAGS));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_cancellable, "GCancellable"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerFn(((DL_FUNC)s_callback), "GAsyncReadyCallback"));
  tmp = CDR(tmp);
  SETCAR(tmp, s_user_data);
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static gboolean
S_virtual_gfile_eject_mountable_finish(GFile* s_object, GAsyncResult* s_result, GError** s_error)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GFile_symbol, S_GOBJECT_GET_ENV(s_object)), 62));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GFile")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_result, "GAsyncResult"));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  *s_error = asCGError(VECTOR_ELT(s_ans, 1));
  return(((gboolean)asCLogical(VECTOR_ELT(s_ans, 0))));
}

static GFileMonitor*
S_virtual_gfile_monitor_dir(GFile* s_object, GFileMonitorFlags s_flags, GCancellable* s_cancellable, GError** s_error)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 4));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GFile_symbol, S_GOBJECT_GET_ENV(s_object)), 63));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GFile")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRFlag(s_flags, G_TYPE_FILE_MONITOR_FLAGS));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_cancellable, "GCancellable"));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((GFileMonitor*)0));
  *s_error = asCGError(VECTOR_ELT(s_ans, 1));
  return(G_FILE_MONITOR(getPtrValueWithRef(VECTOR_ELT(s_ans, 0))));
}

static GFileMonitor*
S_virtual_gfile_monitor_file(GFile* s_object, GFileMonitorFlags s_flags, GCancellable* s_cancellable, GError** s_error)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 4));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GFile_symbol, S_GOBJECT_GET_ENV(s_object)), 64));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GFile")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRFlag(s_flags, G_TYPE_FILE_MONITOR_FLAGS));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_cancellable, "GCancellable"));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((GFileMonitor*)0));
  *s_error = asCGError(VECTOR_ELT(s_ans, 1));
  return(G_FILE_MONITOR(getPtrValueWithRef(VECTOR_ELT(s_ans, 0))));
}

static GFileIOStream*
S_virtual_gfile_create_readwrite(GFile* s_object, GFileCreateFlags s_flags, GCancellable* s_cancellable, GError** s_error)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 4));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GFile_symbol, S_GOBJECT_GET_ENV(s_object)), 65));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GFile")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRFlag(s_flags, G_TYPE_FILE_CREATE_FLAGS));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_cancellable, "GCancellable"));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((GFileIOStream*)0));
  *s_error = asCGError(VECTOR_ELT(s_ans, 1));
  return(G_FILE_IO_STREAM(getPtrValue(VECTOR_ELT(s_ans, 0))));
}

static void
S_virtual_gfile_create_readwrite_async(GFile* s_object, GFileCreateFlags s_flags, int s_io_priority, GCancellable* s_cancellable, GAsyncReadyCallback s_callback, gpointer s_user_data)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 7));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GFile_symbol, S_GOBJECT_GET_ENV(s_object)), 66));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GFile")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRFlag(s_flags, G_TYPE_FILE_CREATE_FLAGS));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_io_priority));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_cancellable, "GCancellable"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerFn(((DL_FUNC)s_callback), "GAsyncReadyCallback"));
  tmp = CDR(tmp);
  SETCAR(tmp, s_user_data);
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static GFileIOStream*
S_virtual_gfile_create_readwrite_finish(GFile* s_object, GAsyncResult* s_res, GError** s_error)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GFile_symbol, S_GOBJECT_GET_ENV(s_object)), 67));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GFile")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_res, "GAsyncResult"));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((GFileIOStream*)0));
  *s_error = asCGError(VECTOR_ELT(s_ans, 1));
  return(G_FILE_IO_STREAM(getPtrValue(VECTOR_ELT(s_ans, 0))));
}

static void
S_virtual_gfile_eject_mountable_with_operation(GFile* s_object, GMountUnmountFlags s_flags, GMountOperation* s_mount_operation, GCancellable* s_cancellable, GAsyncReadyCallback s_callback, gpointer s_user_data)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 7));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GFile_symbol, S_GOBJECT_GET_ENV(s_object)), 68));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GFile")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRFlag(s_flags, G_TYPE_MOUNT_UNMOUNT_FLAGS));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_mount_operation, "GMountOperation"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_cancellable, "GCancellable"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerFn(((DL_FUNC)s_callback), "GAsyncReadyCallback"));
  tmp = CDR(tmp);
  SETCAR(tmp, s_user_data);
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static gboolean
S_virtual_gfile_eject_mountable_with_operation_finish(GFile* s_object, GAsyncResult* s_result, GError** s_error)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GFile_symbol, S_GOBJECT_GET_ENV(s_object)), 69));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GFile")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_result, "GAsyncResult"));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  *s_error = asCGError(VECTOR_ELT(s_ans, 1));
  return(((gboolean)asCLogical(VECTOR_ELT(s_ans, 0))));
}

static GFileIOStream*
S_virtual_gfile_open_readwrite(GFile* s_object, GCancellable* s_cancellable, GError** s_error)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GFile_symbol, S_GOBJECT_GET_ENV(s_object)), 70));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GFile")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_cancellable, "GCancellable"));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((GFileIOStream*)0));
  *s_error = asCGError(VECTOR_ELT(s_ans, 1));
  return(G_FILE_IO_STREAM(getPtrValue(VECTOR_ELT(s_ans, 0))));
}

static void
S_virtual_gfile_open_readwrite_async(GFile* s_object, int s_io_priority, GCancellable* s_cancellable, GAsyncReadyCallback s_callback, gpointer s_user_data)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 6));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GFile_symbol, S_GOBJECT_GET_ENV(s_object)), 71));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GFile")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_io_priority));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_cancellable, "GCancellable"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerFn(((DL_FUNC)s_callback), "GAsyncReadyCallback"));
  tmp = CDR(tmp);
  SETCAR(tmp, s_user_data);
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static GFileIOStream*
S_virtual_gfile_open_readwrite_finish(GFile* s_object, GAsyncResult* s_res, GError** s_error)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GFile_symbol, S_GOBJECT_GET_ENV(s_object)), 72));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GFile")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_res, "GAsyncResult"));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((GFileIOStream*)0));
  *s_error = asCGError(VECTOR_ELT(s_ans, 1));
  return(G_FILE_IO_STREAM(getPtrValue(VECTOR_ELT(s_ans, 0))));
}

static void
S_virtual_gfile_poll_mountable(GFile* s_object, GCancellable* s_cancellable, GAsyncReadyCallback s_callback, gpointer s_user_data)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 5));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GFile_symbol, S_GOBJECT_GET_ENV(s_object)), 73));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GFile")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_cancellable, "GCancellable"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerFn(((DL_FUNC)s_callback), "GAsyncReadyCallback"));
  tmp = CDR(tmp);
  SETCAR(tmp, s_user_data);
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static gboolean
S_virtual_gfile_poll_mountable_finish(GFile* s_object, GAsyncResult* s_result, GError** s_error)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GFile_symbol, S_GOBJECT_GET_ENV(s_object)), 74));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GFile")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_result, "GAsyncResult"));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  *s_error = asCGError(VECTOR_ELT(s_ans, 1));
  return(((gboolean)asCLogical(VECTOR_ELT(s_ans, 0))));
}

static GFileIOStream*
S_virtual_gfile_replace_readwrite(GFile* s_object, const char* s_etag, gboolean s_make_backup, GFileCreateFlags s_flags, GCancellable* s_cancellable, GError** s_error)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 6));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GFile_symbol, S_GOBJECT_GET_ENV(s_object)), 75));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GFile")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRString(s_etag));
  tmp = CDR(tmp);
  SETCAR(tmp, asRLogical(s_make_backup));
  tmp = CDR(tmp);
  SETCAR(tmp, asRFlag(s_flags, G_TYPE_FILE_CREATE_FLAGS));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_cancellable, "GCancellable"));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((GFileIOStream*)0));
  *s_error = asCGError(VECTOR_ELT(s_ans, 1));
  return(G_FILE_IO_STREAM(getPtrValue(VECTOR_ELT(s_ans, 0))));
}

static void
S_virtual_gfile_replace_readwrite_async(GFile* s_object, const char* s_etag, gboolean s_make_backup, GFileCreateFlags s_flags, int s_io_priority, GCancellable* s_cancellable, GAsyncReadyCallback s_callback, gpointer s_user_data)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 9));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GFile_symbol, S_GOBJECT_GET_ENV(s_object)), 76));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GFile")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRString(s_etag));
  tmp = CDR(tmp);
  SETCAR(tmp, asRLogical(s_make_backup));
  tmp = CDR(tmp);
  SETCAR(tmp, asRFlag(s_flags, G_TYPE_FILE_CREATE_FLAGS));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_io_priority));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_cancellable, "GCancellable"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerFn(((DL_FUNC)s_callback), "GAsyncReadyCallback"));
  tmp = CDR(tmp);
  SETCAR(tmp, s_user_data);
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static GFileIOStream*
S_virtual_gfile_replace_readwrite_finish(GFile* s_object, GAsyncResult* s_res, GError** s_error)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GFile_symbol, S_GOBJECT_GET_ENV(s_object)), 77));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GFile")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_res, "GAsyncResult"));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((GFileIOStream*)0));
  *s_error = asCGError(VECTOR_ELT(s_ans, 1));
  return(G_FILE_IO_STREAM(getPtrValue(VECTOR_ELT(s_ans, 0))));
}

static void
S_virtual_gfile_start_mountable(GFile* s_object, GDriveStartFlags s_flags, GMountOperation* s_start_operation, GCancellable* s_cancellable, GAsyncReadyCallback s_callback, gpointer s_user_data)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 7));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GFile_symbol, S_GOBJECT_GET_ENV(s_object)), 78));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GFile")));
  tmp = CDR(tmp);
  SETCAR(tmp, asREnum(s_flags, G_TYPE_DRIVE_START_FLAGS));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_start_operation, "GMountOperation"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_cancellable, "GCancellable"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerFn(((DL_FUNC)s_callback), "GAsyncReadyCallback"));
  tmp = CDR(tmp);
  SETCAR(tmp, s_user_data);
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static gboolean
S_virtual_gfile_start_mountable_finish(GFile* s_object, GAsyncResult* s_result, GError** s_error)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GFile_symbol, S_GOBJECT_GET_ENV(s_object)), 79));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GFile")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_result, "GAsyncResult"));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  *s_error = asCGError(VECTOR_ELT(s_ans, 1));
  return(((gboolean)asCLogical(VECTOR_ELT(s_ans, 0))));
}

static void
S_virtual_gfile_stop_mountable(GFile* s_object, GMountUnmountFlags s_flags, GMountOperation* s_mount_operation, GCancellable* s_cancellable, GAsyncReadyCallback s_callback, gpointer s_user_data)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 7));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GFile_symbol, S_GOBJECT_GET_ENV(s_object)), 80));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GFile")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRFlag(s_flags, G_TYPE_MOUNT_UNMOUNT_FLAGS));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_mount_operation, "GMountOperation"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_cancellable, "GCancellable"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerFn(((DL_FUNC)s_callback), "GAsyncReadyCallback"));
  tmp = CDR(tmp);
  SETCAR(tmp, s_user_data);
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static gboolean
S_virtual_gfile_stop_mountable_finish(GFile* s_object, GAsyncResult* s_result, GError** s_error)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GFile_symbol, S_GOBJECT_GET_ENV(s_object)), 81));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GFile")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_result, "GAsyncResult"));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  *s_error = asCGError(VECTOR_ELT(s_ans, 1));
  return(((gboolean)asCLogical(VECTOR_ELT(s_ans, 0))));
}

static void
S_virtual_gfile_unmount_mountable_with_operation(GFile* s_object, GMountUnmountFlags s_flags, GMountOperation* s_mount_operation, GCancellable* s_cancellable, GAsyncReadyCallback s_callback, gpointer s_user_data)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 7));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GFile_symbol, S_GOBJECT_GET_ENV(s_object)), 82));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GFile")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRFlag(s_flags, G_TYPE_MOUNT_UNMOUNT_FLAGS));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_mount_operation, "GMountOperation"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_cancellable, "GCancellable"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerFn(((DL_FUNC)s_callback), "GAsyncReadyCallback"));
  tmp = CDR(tmp);
  SETCAR(tmp, s_user_data);
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static gboolean
S_virtual_gfile_unmount_mountable_with_operation_finish(GFile* s_object, GAsyncResult* s_result, GError** s_error)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GFile_symbol, S_GOBJECT_GET_ENV(s_object)), 83));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GFile")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_result, "GAsyncResult"));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  *s_error = asCGError(VECTOR_ELT(s_ans, 1));
  return(((gboolean)asCLogical(VECTOR_ELT(s_ans, 0))));
}
void
S_gfile_class_init(GFileIface * c, SEXP e)
{
  SEXP s;

  S_GFile_symbol = install("GFile");
  s = PROTECT(findVar(S_GFile_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GFileIface)) = e;

  UNPROTECT(1);

#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 0) != NULL_USER_OBJECT)
    c->dup = S_virtual_gfile_dup;
#endif
#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 1) != NULL_USER_OBJECT)
    c->equal = S_virtual_gfile_equal;
#endif
#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 2) != NULL_USER_OBJECT)
    c->get_basename = S_virtual_gfile_get_basename;
#endif
#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 3) != NULL_USER_OBJECT)
    c->get_path = S_virtual_gfile_get_path;
#endif
#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 4) != NULL_USER_OBJECT)
    c->get_uri = S_virtual_gfile_get_uri;
#endif
#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 5) != NULL_USER_OBJECT)
    c->get_parse_name = S_virtual_gfile_get_parse_name;
#endif
#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 6) != NULL_USER_OBJECT)
    c->get_parent = S_virtual_gfile_get_parent;
#endif
#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 7) != NULL_USER_OBJECT)
    c->get_child_for_display_name = S_virtual_gfile_get_child_for_display_name;
#endif
#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 8) != NULL_USER_OBJECT)
    c->prefix_matches = S_virtual_gfile_prefix_matches;
#endif
#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 9) != NULL_USER_OBJECT)
    c->get_relative_path = S_virtual_gfile_get_relative_path;
#endif
#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 10) != NULL_USER_OBJECT)
    c->resolve_relative_path = S_virtual_gfile_resolve_relative_path;
#endif
#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 11) != NULL_USER_OBJECT)
    c->is_native = S_virtual_gfile_is_native;
#endif
#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 12) != NULL_USER_OBJECT)
    c->has_uri_scheme = S_virtual_gfile_has_uri_scheme;
#endif
#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 13) != NULL_USER_OBJECT)
    c->get_uri_scheme = S_virtual_gfile_get_uri_scheme;
#endif
#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 14) != NULL_USER_OBJECT)
    c->read_fn = S_virtual_gfile_read_fn;
#endif
#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 15) != NULL_USER_OBJECT)
    c->read_async = S_virtual_gfile_read_async;
#endif
#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 16) != NULL_USER_OBJECT)
    c->read_finish = S_virtual_gfile_read_finish;
#endif
#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 17) != NULL_USER_OBJECT)
    c->append_to = S_virtual_gfile_append_to;
#endif
#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 18) != NULL_USER_OBJECT)
    c->create = S_virtual_gfile_create;
#endif
#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 19) != NULL_USER_OBJECT)
    c->replace = S_virtual_gfile_replace;
#endif
#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 20) != NULL_USER_OBJECT)
    c->append_to_async = S_virtual_gfile_append_to_async;
#endif
#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 21) != NULL_USER_OBJECT)
    c->append_to_finish = S_virtual_gfile_append_to_finish;
#endif
#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 22) != NULL_USER_OBJECT)
    c->create_async = S_virtual_gfile_create_async;
#endif
#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 23) != NULL_USER_OBJECT)
    c->create_finish = S_virtual_gfile_create_finish;
#endif
#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 24) != NULL_USER_OBJECT)
    c->replace_async = S_virtual_gfile_replace_async;
#endif
#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 25) != NULL_USER_OBJECT)
    c->replace_finish = S_virtual_gfile_replace_finish;
#endif
#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 26) != NULL_USER_OBJECT)
    c->query_info = S_virtual_gfile_query_info;
#endif
#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 27) != NULL_USER_OBJECT)
    c->query_info_async = S_virtual_gfile_query_info_async;
#endif
#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 28) != NULL_USER_OBJECT)
    c->query_info_finish = S_virtual_gfile_query_info_finish;
#endif
#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 29) != NULL_USER_OBJECT)
    c->query_filesystem_info = S_virtual_gfile_query_filesystem_info;
#endif
#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 30) != NULL_USER_OBJECT)
    c->query_filesystem_info_async = S_virtual_gfile_query_filesystem_info_async;
#endif
#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 31) != NULL_USER_OBJECT)
    c->query_filesystem_info_finish = S_virtual_gfile_query_filesystem_info_finish;
#endif
#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 32) != NULL_USER_OBJECT)
    c->find_enclosing_mount = S_virtual_gfile_find_enclosing_mount;
#endif
#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 33) != NULL_USER_OBJECT)
    c->find_enclosing_mount_async = S_virtual_gfile_find_enclosing_mount_async;
#endif
#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 34) != NULL_USER_OBJECT)
    c->find_enclosing_mount_finish = S_virtual_gfile_find_enclosing_mount_finish;
#endif
#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 35) != NULL_USER_OBJECT)
    c->enumerate_children = S_virtual_gfile_enumerate_children;
#endif
#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 36) != NULL_USER_OBJECT)
    c->enumerate_children_async = S_virtual_gfile_enumerate_children_async;
#endif
#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 37) != NULL_USER_OBJECT)
    c->enumerate_children_finish = S_virtual_gfile_enumerate_children_finish;
#endif
#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 38) != NULL_USER_OBJECT)
    c->set_display_name = S_virtual_gfile_set_display_name;
#endif
#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 39) != NULL_USER_OBJECT)
    c->set_display_name_async = S_virtual_gfile_set_display_name_async;
#endif
#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 40) != NULL_USER_OBJECT)
    c->set_display_name_finish = S_virtual_gfile_set_display_name_finish;
#endif
#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 41) != NULL_USER_OBJECT)
    c->delete_file = S_virtual_gfile_delete_file;
#endif
#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 42) != NULL_USER_OBJECT)
    c->trash = S_virtual_gfile_trash;
#endif
#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 43) != NULL_USER_OBJECT)
    c->copy = S_virtual_gfile_copy;
#endif
#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 44) != NULL_USER_OBJECT)
    c->copy_async = S_virtual_gfile_copy_async;
#endif
#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 45) != NULL_USER_OBJECT)
    c->copy_finish = S_virtual_gfile_copy_finish;
#endif
#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 46) != NULL_USER_OBJECT)
    c->move = S_virtual_gfile_move;
#endif
#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 47) != NULL_USER_OBJECT)
    c->make_directory = S_virtual_gfile_make_directory;
#endif
#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 48) != NULL_USER_OBJECT)
    c->make_symbolic_link = S_virtual_gfile_make_symbolic_link;
#endif
#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 49) != NULL_USER_OBJECT)
    c->query_settable_attributes = S_virtual_gfile_query_settable_attributes;
#endif
#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 50) != NULL_USER_OBJECT)
    c->query_writable_namespaces = S_virtual_gfile_query_writable_namespaces;
#endif
#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 51) != NULL_USER_OBJECT)
    c->set_attribute = S_virtual_gfile_set_attribute;
#endif
#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 52) != NULL_USER_OBJECT)
    c->set_attributes_from_info = S_virtual_gfile_set_attributes_from_info;
#endif
#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 53) != NULL_USER_OBJECT)
    c->set_attributes_async = S_virtual_gfile_set_attributes_async;
#endif
#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 54) != NULL_USER_OBJECT)
    c->set_attributes_finish = S_virtual_gfile_set_attributes_finish;
#endif
#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 55) != NULL_USER_OBJECT)
    c->mount_enclosing_volume = S_virtual_gfile_mount_enclosing_volume;
#endif
#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 56) != NULL_USER_OBJECT)
    c->mount_enclosing_volume_finish = S_virtual_gfile_mount_enclosing_volume_finish;
#endif
#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 57) != NULL_USER_OBJECT)
    c->mount_mountable = S_virtual_gfile_mount_mountable;
#endif
#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 58) != NULL_USER_OBJECT)
    c->mount_mountable_finish = S_virtual_gfile_mount_mountable_finish;
#endif
#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 59) != NULL_USER_OBJECT)
    c->unmount_mountable = S_virtual_gfile_unmount_mountable;
#endif
#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 60) != NULL_USER_OBJECT)
    c->unmount_mountable_finish = S_virtual_gfile_unmount_mountable_finish;
#endif
#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 61) != NULL_USER_OBJECT)
    c->eject_mountable = S_virtual_gfile_eject_mountable;
#endif
#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 62) != NULL_USER_OBJECT)
    c->eject_mountable_finish = S_virtual_gfile_eject_mountable_finish;
#endif
#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 63) != NULL_USER_OBJECT)
    c->monitor_dir = S_virtual_gfile_monitor_dir;
#endif
#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 64) != NULL_USER_OBJECT)
    c->monitor_file = S_virtual_gfile_monitor_file;
#endif
#if GIO_CHECK_VERSION(2, 22, 0)
  if(VECTOR_ELT(s, 65) != NULL_USER_OBJECT)
    c->create_readwrite = S_virtual_gfile_create_readwrite;
#endif
#if GIO_CHECK_VERSION(2, 22, 0)
  if(VECTOR_ELT(s, 66) != NULL_USER_OBJECT)
    c->create_readwrite_async = S_virtual_gfile_create_readwrite_async;
#endif
#if GIO_CHECK_VERSION(2, 22, 0)
  if(VECTOR_ELT(s, 67) != NULL_USER_OBJECT)
    c->create_readwrite_finish = S_virtual_gfile_create_readwrite_finish;
#endif
#if GIO_CHECK_VERSION(2, 22, 0)
  if(VECTOR_ELT(s, 68) != NULL_USER_OBJECT)
    c->eject_mountable_with_operation = S_virtual_gfile_eject_mountable_with_operation;
#endif
#if GIO_CHECK_VERSION(2, 22, 0)
  if(VECTOR_ELT(s, 69) != NULL_USER_OBJECT)
    c->eject_mountable_with_operation_finish = S_virtual_gfile_eject_mountable_with_operation_finish;
#endif
#if GIO_CHECK_VERSION(2, 22, 0)
  if(VECTOR_ELT(s, 70) != NULL_USER_OBJECT)
    c->open_readwrite = S_virtual_gfile_open_readwrite;
#endif
#if GIO_CHECK_VERSION(2, 22, 0)
  if(VECTOR_ELT(s, 71) != NULL_USER_OBJECT)
    c->open_readwrite_async = S_virtual_gfile_open_readwrite_async;
#endif
#if GIO_CHECK_VERSION(2, 22, 0)
  if(VECTOR_ELT(s, 72) != NULL_USER_OBJECT)
    c->open_readwrite_finish = S_virtual_gfile_open_readwrite_finish;
#endif
#if GIO_CHECK_VERSION(2, 22, 0)
  if(VECTOR_ELT(s, 73) != NULL_USER_OBJECT)
    c->poll_mountable = S_virtual_gfile_poll_mountable;
#endif
#if GIO_CHECK_VERSION(2, 22, 0)
  if(VECTOR_ELT(s, 74) != NULL_USER_OBJECT)
    c->poll_mountable_finish = S_virtual_gfile_poll_mountable_finish;
#endif
#if GIO_CHECK_VERSION(2, 22, 0)
  if(VECTOR_ELT(s, 75) != NULL_USER_OBJECT)
    c->replace_readwrite = S_virtual_gfile_replace_readwrite;
#endif
#if GIO_CHECK_VERSION(2, 22, 0)
  if(VECTOR_ELT(s, 76) != NULL_USER_OBJECT)
    c->replace_readwrite_async = S_virtual_gfile_replace_readwrite_async;
#endif
#if GIO_CHECK_VERSION(2, 22, 0)
  if(VECTOR_ELT(s, 77) != NULL_USER_OBJECT)
    c->replace_readwrite_finish = S_virtual_gfile_replace_readwrite_finish;
#endif
#if GIO_CHECK_VERSION(2, 22, 0)
  if(VECTOR_ELT(s, 78) != NULL_USER_OBJECT)
    c->start_mountable = S_virtual_gfile_start_mountable;
#endif
#if GIO_CHECK_VERSION(2, 22, 0)
  if(VECTOR_ELT(s, 79) != NULL_USER_OBJECT)
    c->start_mountable_finish = S_virtual_gfile_start_mountable_finish;
#endif
#if GIO_CHECK_VERSION(2, 22, 0)
  if(VECTOR_ELT(s, 80) != NULL_USER_OBJECT)
    c->stop_mountable = S_virtual_gfile_stop_mountable;
#endif
#if GIO_CHECK_VERSION(2, 22, 0)
  if(VECTOR_ELT(s, 81) != NULL_USER_OBJECT)
    c->stop_mountable_finish = S_virtual_gfile_stop_mountable_finish;
#endif
#if GIO_CHECK_VERSION(2, 22, 0)
  if(VECTOR_ELT(s, 82) != NULL_USER_OBJECT)
    c->unmount_mountable_with_operation = S_virtual_gfile_unmount_mountable_with_operation;
#endif
#if GIO_CHECK_VERSION(2, 22, 0)
  if(VECTOR_ELT(s, 83) != NULL_USER_OBJECT)
    c->unmount_mountable_with_operation_finish = S_virtual_gfile_unmount_mountable_with_operation_finish;
#endif
}
#endif
USER_OBJECT_
S_gfile_iface_dup(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFileIface* object_class = ((GFileIface*)getPtrValue(s_object_class));
  GFile* object = G_FILE(getPtrValue(s_object));

  GFile* ans;

  ans = object_class->dup(object);

  _result = toRPointerWithFinalizer(ans, "GFile", (RPointerFinalizer) g_object_unref);
#else
  error("gfile_dup exists only in gio >= 2.16.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gfile_iface_equal(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_file2)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFileIface* object_class = ((GFileIface*)getPtrValue(s_object_class));
  GFile* object = G_FILE(getPtrValue(s_object));
  GFile* file2 = G_FILE(getPtrValue(s_file2));

  gboolean ans;

  ans = object_class->equal(object, file2);

  _result = asRLogical(ans);
#else
  error("gfile_equal exists only in gio >= 2.16.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gfile_iface_get_basename(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFileIface* object_class = ((GFileIface*)getPtrValue(s_object_class));
  GFile* object = G_FILE(getPtrValue(s_object));

  char* ans;

  ans = object_class->get_basename(object);

  _result = asRString(ans);
    CLEANUP(g_free, ans);;
#else
  error("gfile_get_basename exists only in gio >= 2.16.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gfile_iface_get_path(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFileIface* object_class = ((GFileIface*)getPtrValue(s_object_class));
  GFile* object = G_FILE(getPtrValue(s_object));

  char* ans;

  ans = object_class->get_path(object);

  _result = asRString(ans);
    CLEANUP(g_free, ans);;
#else
  error("gfile_get_path exists only in gio >= 2.16.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gfile_iface_get_uri(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFileIface* object_class = ((GFileIface*)getPtrValue(s_object_class));
  GFile* object = G_FILE(getPtrValue(s_object));

  char* ans;

  ans = object_class->get_uri(object);

  _result = asRString(ans);
    CLEANUP(g_free, ans);;
#else
  error("gfile_get_uri exists only in gio >= 2.16.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gfile_iface_get_parse_name(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFileIface* object_class = ((GFileIface*)getPtrValue(s_object_class));
  GFile* object = G_FILE(getPtrValue(s_object));

  char* ans;

  ans = object_class->get_parse_name(object);

  _result = asRString(ans);
    CLEANUP(g_free, ans);;
#else
  error("gfile_get_parse_name exists only in gio >= 2.16.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gfile_iface_get_parent(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFileIface* object_class = ((GFileIface*)getPtrValue(s_object_class));
  GFile* object = G_FILE(getPtrValue(s_object));

  GFile* ans;

  ans = object_class->get_parent(object);

  _result = toRPointerWithFinalizer(ans, "GFile", (RPointerFinalizer) g_object_unref);
#else
  error("gfile_get_parent exists only in gio >= 2.16.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gfile_iface_get_child_for_display_name(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_display_name)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFileIface* object_class = ((GFileIface*)getPtrValue(s_object_class));
  GFile* object = G_FILE(getPtrValue(s_object));
  const char* display_name = ((const char*)asCString(s_display_name));

  GFile* ans;
  GError* error = NULL;

  ans = object_class->get_child_for_display_name(object, display_name, &error);

  _result = toRPointerWithFinalizer(ans, "GFile", (RPointerFinalizer) g_object_unref);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("gfile_get_child_for_display_name exists only in gio >= 2.16.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gfile_iface_prefix_matches(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_file)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFileIface* object_class = ((GFileIface*)getPtrValue(s_object_class));
  GFile* object = G_FILE(getPtrValue(s_object));
  GFile* file = G_FILE(getPtrValue(s_file));

  gboolean ans;

  ans = object_class->prefix_matches(object, file);

  _result = asRLogical(ans);
#else
  error("gfile_prefix_matches exists only in gio >= 2.16.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gfile_iface_get_relative_path(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_descendant)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFileIface* object_class = ((GFileIface*)getPtrValue(s_object_class));
  GFile* object = G_FILE(getPtrValue(s_object));
  GFile* descendant = G_FILE(getPtrValue(s_descendant));

  char* ans;

  ans = object_class->get_relative_path(object, descendant);

  _result = asRString(ans);
    CLEANUP(g_free, ans);;
#else
  error("gfile_get_relative_path exists only in gio >= 2.16.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gfile_iface_resolve_relative_path(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_relative_path)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFileIface* object_class = ((GFileIface*)getPtrValue(s_object_class));
  GFile* object = G_FILE(getPtrValue(s_object));
  const char* relative_path = ((const char*)asCString(s_relative_path));

  GFile* ans;

  ans = object_class->resolve_relative_path(object, relative_path);

  _result = toRPointerWithFinalizer(ans, "GFile", (RPointerFinalizer) g_object_unref);
#else
  error("gfile_resolve_relative_path exists only in gio >= 2.16.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gfile_iface_is_native(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFileIface* object_class = ((GFileIface*)getPtrValue(s_object_class));
  GFile* object = G_FILE(getPtrValue(s_object));

  gboolean ans;

  ans = object_class->is_native(object);

  _result = asRLogical(ans);
#else
  error("gfile_is_native exists only in gio >= 2.16.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gfile_iface_has_uri_scheme(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_uri_scheme)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFileIface* object_class = ((GFileIface*)getPtrValue(s_object_class));
  GFile* object = G_FILE(getPtrValue(s_object));
  const char* uri_scheme = ((const char*)asCString(s_uri_scheme));

  gboolean ans;

  ans = object_class->has_uri_scheme(object, uri_scheme);

  _result = asRLogical(ans);
#else
  error("gfile_has_uri_scheme exists only in gio >= 2.16.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gfile_iface_get_uri_scheme(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFileIface* object_class = ((GFileIface*)getPtrValue(s_object_class));
  GFile* object = G_FILE(getPtrValue(s_object));

  char* ans;

  ans = object_class->get_uri_scheme(object);

  _result = asRString(ans);
    CLEANUP(g_free, ans);;
#else
  error("gfile_get_uri_scheme exists only in gio >= 2.16.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gfile_iface_read_fn(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_cancellable)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFileIface* object_class = ((GFileIface*)getPtrValue(s_object_class));
  GFile* object = G_FILE(getPtrValue(s_object));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));

  GFileInputStream* ans;
  GError* error = NULL;

  ans = object_class->read_fn(object, cancellable, &error);

  _result = toRPointerWithFinalizer(ans, "GFileInputStream", (RPointerFinalizer) g_object_unref);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("gfile_read_fn exists only in gio >= 2.16.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gfile_iface_read_async(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_io_priority, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GAsyncReadyCallback callback = ((GAsyncReadyCallback)S_GAsyncReadyCallback);
  R_CallbackData* user_data = R_createCBData(s_callback, s_user_data);
  GFileIface* object_class = ((GFileIface*)getPtrValue(s_object_class));
  GFile* object = G_FILE(getPtrValue(s_object));
  int io_priority = ((int)asCInteger(s_io_priority));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));


  object_class->read_async(object, io_priority, cancellable, callback, user_data);

#else
  error("gfile_read_async exists only in gio >= 2.16.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gfile_iface_read_finish(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_res)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFileIface* object_class = ((GFileIface*)getPtrValue(s_object_class));
  GFile* object = G_FILE(getPtrValue(s_object));
  GAsyncResult* res = G_ASYNC_RESULT(getPtrValue(s_res));

  GFileInputStream* ans;
  GError* error = NULL;

  ans = object_class->read_finish(object, res, &error);

  _result = toRPointerWithFinalizer(ans, "GFileInputStream", (RPointerFinalizer) g_object_unref);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("gfile_read_finish exists only in gio >= 2.16.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gfile_iface_append_to(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_flags, USER_OBJECT_ s_cancellable)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFileIface* object_class = ((GFileIface*)getPtrValue(s_object_class));
  GFile* object = G_FILE(getPtrValue(s_object));
  GFileCreateFlags flags = ((GFileCreateFlags)asCFlag(s_flags, G_TYPE_FILE_CREATE_FLAGS));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));

  GFileOutputStream* ans;
  GError* error = NULL;

  ans = object_class->append_to(object, flags, cancellable, &error);

  _result = toRPointerWithFinalizer(ans, "GFileOutputStream", (RPointerFinalizer) g_object_unref);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("gfile_append_to exists only in gio >= 2.16.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gfile_iface_create(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_flags, USER_OBJECT_ s_cancellable)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFileIface* object_class = ((GFileIface*)getPtrValue(s_object_class));
  GFile* object = G_FILE(getPtrValue(s_object));
  GFileCreateFlags flags = ((GFileCreateFlags)asCFlag(s_flags, G_TYPE_FILE_CREATE_FLAGS));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));

  GFileOutputStream* ans;
  GError* error = NULL;

  ans = object_class->create(object, flags, cancellable, &error);

  _result = toRPointerWithFinalizer(ans, "GFileOutputStream", (RPointerFinalizer) g_object_unref);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("gfile_create exists only in gio >= 2.16.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gfile_iface_replace(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_etag, USER_OBJECT_ s_make_backup, USER_OBJECT_ s_flags, USER_OBJECT_ s_cancellable)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFileIface* object_class = ((GFileIface*)getPtrValue(s_object_class));
  GFile* object = G_FILE(getPtrValue(s_object));
  const char* etag = ((const char*)asCString(s_etag));
  gboolean make_backup = ((gboolean)asCLogical(s_make_backup));
  GFileCreateFlags flags = ((GFileCreateFlags)asCFlag(s_flags, G_TYPE_FILE_CREATE_FLAGS));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));

  GFileOutputStream* ans;
  GError* error = NULL;

  ans = object_class->replace(object, etag, make_backup, flags, cancellable, &error);

  _result = toRPointerWithFinalizer(ans, "GFileOutputStream", (RPointerFinalizer) g_object_unref);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("gfile_replace exists only in gio >= 2.16.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gfile_iface_append_to_async(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_flags, USER_OBJECT_ s_io_priority, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GAsyncReadyCallback callback = ((GAsyncReadyCallback)S_GAsyncReadyCallback);
  R_CallbackData* user_data = R_createCBData(s_callback, s_user_data);
  GFileIface* object_class = ((GFileIface*)getPtrValue(s_object_class));
  GFile* object = G_FILE(getPtrValue(s_object));
  GFileCreateFlags flags = ((GFileCreateFlags)asCFlag(s_flags, G_TYPE_FILE_CREATE_FLAGS));
  int io_priority = ((int)asCInteger(s_io_priority));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));


  object_class->append_to_async(object, flags, io_priority, cancellable, callback, user_data);

#else
  error("gfile_append_to_async exists only in gio >= 2.16.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gfile_iface_append_to_finish(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_res)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFileIface* object_class = ((GFileIface*)getPtrValue(s_object_class));
  GFile* object = G_FILE(getPtrValue(s_object));
  GAsyncResult* res = G_ASYNC_RESULT(getPtrValue(s_res));

  GFileOutputStream* ans;
  GError* error = NULL;

  ans = object_class->append_to_finish(object, res, &error);

  _result = toRPointerWithFinalizer(ans, "GFileOutputStream", (RPointerFinalizer) g_object_unref);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("gfile_append_to_finish exists only in gio >= 2.16.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gfile_iface_create_async(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_flags, USER_OBJECT_ s_io_priority, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GAsyncReadyCallback callback = ((GAsyncReadyCallback)S_GAsyncReadyCallback);
  R_CallbackData* user_data = R_createCBData(s_callback, s_user_data);
  GFileIface* object_class = ((GFileIface*)getPtrValue(s_object_class));
  GFile* object = G_FILE(getPtrValue(s_object));
  GFileCreateFlags flags = ((GFileCreateFlags)asCFlag(s_flags, G_TYPE_FILE_CREATE_FLAGS));
  int io_priority = ((int)asCInteger(s_io_priority));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));


  object_class->create_async(object, flags, io_priority, cancellable, callback, user_data);

#else
  error("gfile_create_async exists only in gio >= 2.16.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gfile_iface_create_finish(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_res)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFileIface* object_class = ((GFileIface*)getPtrValue(s_object_class));
  GFile* object = G_FILE(getPtrValue(s_object));
  GAsyncResult* res = G_ASYNC_RESULT(getPtrValue(s_res));

  GFileOutputStream* ans;
  GError* error = NULL;

  ans = object_class->create_finish(object, res, &error);

  _result = toRPointerWithFinalizer(ans, "GFileOutputStream", (RPointerFinalizer) g_object_unref);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("gfile_create_finish exists only in gio >= 2.16.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gfile_iface_replace_async(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_etag, USER_OBJECT_ s_make_backup, USER_OBJECT_ s_flags, USER_OBJECT_ s_io_priority, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GAsyncReadyCallback callback = ((GAsyncReadyCallback)S_GAsyncReadyCallback);
  R_CallbackData* user_data = R_createCBData(s_callback, s_user_data);
  GFileIface* object_class = ((GFileIface*)getPtrValue(s_object_class));
  GFile* object = G_FILE(getPtrValue(s_object));
  const char* etag = ((const char*)asCString(s_etag));
  gboolean make_backup = ((gboolean)asCLogical(s_make_backup));
  GFileCreateFlags flags = ((GFileCreateFlags)asCFlag(s_flags, G_TYPE_FILE_CREATE_FLAGS));
  int io_priority = ((int)asCInteger(s_io_priority));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));


  object_class->replace_async(object, etag, make_backup, flags, io_priority, cancellable, callback, user_data);

#else
  error("gfile_replace_async exists only in gio >= 2.16.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gfile_iface_replace_finish(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_res)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFileIface* object_class = ((GFileIface*)getPtrValue(s_object_class));
  GFile* object = G_FILE(getPtrValue(s_object));
  GAsyncResult* res = G_ASYNC_RESULT(getPtrValue(s_res));

  GFileOutputStream* ans;
  GError* error = NULL;

  ans = object_class->replace_finish(object, res, &error);

  _result = toRPointerWithFinalizer(ans, "GFileOutputStream", (RPointerFinalizer) g_object_unref);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("gfile_replace_finish exists only in gio >= 2.16.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gfile_iface_query_info(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_attributes, USER_OBJECT_ s_flags, USER_OBJECT_ s_cancellable)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFileIface* object_class = ((GFileIface*)getPtrValue(s_object_class));
  GFile* object = G_FILE(getPtrValue(s_object));
  const char* attributes = ((const char*)asCString(s_attributes));
  GFileQueryInfoFlags flags = ((GFileQueryInfoFlags)asCFlag(s_flags, G_TYPE_FILE_QUERY_INFO_FLAGS));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));

  GFileInfo* ans;
  GError* error = NULL;

  ans = object_class->query_info(object, attributes, flags, cancellable, &error);

  _result = toRPointerWithFinalizer(ans, "GFileInfo", (RPointerFinalizer) g_object_unref);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("gfile_query_info exists only in gio >= 2.16.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gfile_iface_query_info_async(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_attributes, USER_OBJECT_ s_flags, USER_OBJECT_ s_io_priority, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GAsyncReadyCallback callback = ((GAsyncReadyCallback)S_GAsyncReadyCallback);
  R_CallbackData* user_data = R_createCBData(s_callback, s_user_data);
  GFileIface* object_class = ((GFileIface*)getPtrValue(s_object_class));
  GFile* object = G_FILE(getPtrValue(s_object));
  const char* attributes = ((const char*)asCString(s_attributes));
  GFileQueryInfoFlags flags = ((GFileQueryInfoFlags)asCFlag(s_flags, G_TYPE_FILE_QUERY_INFO_FLAGS));
  int io_priority = ((int)asCInteger(s_io_priority));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));


  object_class->query_info_async(object, attributes, flags, io_priority, cancellable, callback, user_data);

#else
  error("gfile_query_info_async exists only in gio >= 2.16.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gfile_iface_query_info_finish(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_res)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFileIface* object_class = ((GFileIface*)getPtrValue(s_object_class));
  GFile* object = G_FILE(getPtrValue(s_object));
  GAsyncResult* res = G_ASYNC_RESULT(getPtrValue(s_res));

  GFileInfo* ans;
  GError* error = NULL;

  ans = object_class->query_info_finish(object, res, &error);

  _result = toRPointerWithFinalizer(ans, "GFileInfo", (RPointerFinalizer) g_object_unref);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("gfile_query_info_finish exists only in gio >= 2.16.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gfile_iface_query_filesystem_info(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_attributes, USER_OBJECT_ s_cancellable)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFileIface* object_class = ((GFileIface*)getPtrValue(s_object_class));
  GFile* object = G_FILE(getPtrValue(s_object));
  const char* attributes = ((const char*)asCString(s_attributes));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));

  GFileInfo* ans;
  GError* error = NULL;

  ans = object_class->query_filesystem_info(object, attributes, cancellable, &error);

  _result = toRPointerWithFinalizer(ans, "GFileInfo", (RPointerFinalizer) g_object_unref);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("gfile_query_filesystem_info exists only in gio >= 2.16.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gfile_iface_query_filesystem_info_async(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_attributes, USER_OBJECT_ s_io_priority, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GAsyncReadyCallback callback = ((GAsyncReadyCallback)S_GAsyncReadyCallback);
  R_CallbackData* user_data = R_createCBData(s_callback, s_user_data);
  GFileIface* object_class = ((GFileIface*)getPtrValue(s_object_class));
  GFile* object = G_FILE(getPtrValue(s_object));
  const char* attributes = ((const char*)asCString(s_attributes));
  int io_priority = ((int)asCInteger(s_io_priority));
  GCancellable* cancellable = G_CANCELLABLE(getPtrValue(s_cancellable));


  object_class->query_filesystem_info_async(object, attributes, io_priority, cancellable, callback, user_data);

#else
  error("gfile_query_filesystem_info_async exists only in gio >= 2.16.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gfile_iface_query_filesystem_info_finish(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_res)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFileIface* object_class = ((GFileIface*)getPtrValue(s_object_class));
  GFile* object = G_FILE(getPtrValue(s_object));
  GAsyncResult* res = G_ASYNC_RESULT(getPtrValue(s_res));

  GFileInfo* ans;
  GError* error = NULL;

  ans = object_class->query_filesystem_info_finish(object, res, &error);

  _result = toRPointerWithRef(ans, "GFileInfo");

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("gfile_query_filesystem_info_finish exists only in gio >= 2.16.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gfile_iface_find_enclosing_mount(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_cancellable)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFileIface* object_class = ((GFileIface*)getPtrValue(s_object_class));
  GFile* object = G_FILE(getPtrValue(s_object));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));

  GMount* ans;
  GError* error = NULL;

  ans = object_class->find_enclosing_mount(object, cancellable, &error);

  _result = toRPointerWithFinalizer(ans, "GMount", (RPointerFinalizer) g_object_unref);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("gfile_find_enclosing_mount exists only in gio >= 2.16.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gfile_iface_find_enclosing_mount_async(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_io_priority, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GAsyncReadyCallback callback = ((GAsyncReadyCallback)S_GAsyncReadyCallback);
  R_CallbackData* user_data = R_createCBData(s_callback, s_user_data);
  GFileIface* object_class = ((GFileIface*)getPtrValue(s_object_class));
  GFile* object = G_FILE(getPtrValue(s_object));
  int io_priority = ((int)asCInteger(s_io_priority));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));


  object_class->find_enclosing_mount_async(object, io_priority, cancellable, callback, user_data);

#else
  error("gfile_find_enclosing_mount_async exists only in gio >= 2.16.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gfile_iface_find_enclosing_mount_finish(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_res)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFileIface* object_class = ((GFileIface*)getPtrValue(s_object_class));
  GFile* object = G_FILE(getPtrValue(s_object));
  GAsyncResult* res = G_ASYNC_RESULT(getPtrValue(s_res));

  GMount* ans;
  GError* error = NULL;

  ans = object_class->find_enclosing_mount_finish(object, res, &error);

  _result = toRPointerWithFinalizer(ans, "GMount", (RPointerFinalizer) g_object_unref);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("gfile_find_enclosing_mount_finish exists only in gio >= 2.16.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gfile_iface_enumerate_children(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_attributes, USER_OBJECT_ s_flags, USER_OBJECT_ s_cancellable)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFileIface* object_class = ((GFileIface*)getPtrValue(s_object_class));
  GFile* object = G_FILE(getPtrValue(s_object));
  const char* attributes = ((const char*)asCString(s_attributes));
  GFileQueryInfoFlags flags = ((GFileQueryInfoFlags)asCFlag(s_flags, G_TYPE_FILE_QUERY_INFO_FLAGS));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));

  GFileEnumerator* ans;
  GError* error = NULL;

  ans = object_class->enumerate_children(object, attributes, flags, cancellable, &error);

  _result = toRPointerWithFinalizer(ans, "GFileEnumerator", (RPointerFinalizer) g_object_unref);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("gfile_enumerate_children exists only in gio >= 2.16.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gfile_iface_enumerate_children_async(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_attributes, USER_OBJECT_ s_flags, USER_OBJECT_ s_io_priority, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GAsyncReadyCallback callback = ((GAsyncReadyCallback)S_GAsyncReadyCallback);
  R_CallbackData* user_data = R_createCBData(s_callback, s_user_data);
  GFileIface* object_class = ((GFileIface*)getPtrValue(s_object_class));
  GFile* object = G_FILE(getPtrValue(s_object));
  const char* attributes = ((const char*)asCString(s_attributes));
  GFileQueryInfoFlags flags = ((GFileQueryInfoFlags)asCFlag(s_flags, G_TYPE_FILE_QUERY_INFO_FLAGS));
  int io_priority = ((int)asCInteger(s_io_priority));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));


  object_class->enumerate_children_async(object, attributes, flags, io_priority, cancellable, callback, user_data);

#else
  error("gfile_enumerate_children_async exists only in gio >= 2.16.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gfile_iface_enumerate_children_finish(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_res)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFileIface* object_class = ((GFileIface*)getPtrValue(s_object_class));
  GFile* object = G_FILE(getPtrValue(s_object));
  GAsyncResult* res = G_ASYNC_RESULT(getPtrValue(s_res));

  GFileEnumerator* ans;
  GError* error = NULL;

  ans = object_class->enumerate_children_finish(object, res, &error);

  _result = toRPointerWithFinalizer(ans, "GFileEnumerator", (RPointerFinalizer) g_object_unref);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("gfile_enumerate_children_finish exists only in gio >= 2.16.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gfile_iface_set_display_name(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_display_name, USER_OBJECT_ s_cancellable)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFileIface* object_class = ((GFileIface*)getPtrValue(s_object_class));
  GFile* object = G_FILE(getPtrValue(s_object));
  const char* display_name = ((const char*)asCString(s_display_name));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));

  GFile* ans;
  GError* error = NULL;

  ans = object_class->set_display_name(object, display_name, cancellable, &error);

  _result = toRPointerWithFinalizer(ans, "GFile", (RPointerFinalizer) g_object_unref);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("gfile_set_display_name exists only in gio >= 2.16.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gfile_iface_set_display_name_async(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_display_name, USER_OBJECT_ s_io_priority, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GAsyncReadyCallback callback = ((GAsyncReadyCallback)S_GAsyncReadyCallback);
  R_CallbackData* user_data = R_createCBData(s_callback, s_user_data);
  GFileIface* object_class = ((GFileIface*)getPtrValue(s_object_class));
  GFile* object = G_FILE(getPtrValue(s_object));
  const char* display_name = ((const char*)asCString(s_display_name));
  int io_priority = ((int)asCInteger(s_io_priority));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));


  object_class->set_display_name_async(object, display_name, io_priority, cancellable, callback, user_data);

#else
  error("gfile_set_display_name_async exists only in gio >= 2.16.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gfile_iface_set_display_name_finish(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_res)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFileIface* object_class = ((GFileIface*)getPtrValue(s_object_class));
  GFile* object = G_FILE(getPtrValue(s_object));
  GAsyncResult* res = G_ASYNC_RESULT(getPtrValue(s_res));

  GFile* ans;
  GError* error = NULL;

  ans = object_class->set_display_name_finish(object, res, &error);

  _result = toRPointerWithFinalizer(ans, "GFile", (RPointerFinalizer) g_object_unref);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("gfile_set_display_name_finish exists only in gio >= 2.16.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gfile_iface_delete_file(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_cancellable)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFileIface* object_class = ((GFileIface*)getPtrValue(s_object_class));
  GFile* object = G_FILE(getPtrValue(s_object));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));

  gboolean ans;
  GError* error = NULL;

  ans = object_class->delete_file(object, cancellable, &error);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("gfile_delete_file exists only in gio >= 2.16.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gfile_iface_trash(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_cancellable)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFileIface* object_class = ((GFileIface*)getPtrValue(s_object_class));
  GFile* object = G_FILE(getPtrValue(s_object));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));

  gboolean ans;
  GError* error = NULL;

  ans = object_class->trash(object, cancellable, &error);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("gfile_trash exists only in gio >= 2.16.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gfile_iface_copy(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_destination, USER_OBJECT_ s_flags, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_progress_callback, USER_OBJECT_ s_progress_callback_data)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFileProgressCallback progress_callback = ((GFileProgressCallback)S_GFileProgressCallback);
  R_CallbackData* progress_callback_data = R_createCBData(s_progress_callback, s_progress_callback_data);
  GFileIface* object_class = ((GFileIface*)getPtrValue(s_object_class));
  GFile* object = G_FILE(getPtrValue(s_object));
  GFile* destination = G_FILE(getPtrValue(s_destination));
  GFileCopyFlags flags = ((GFileCopyFlags)asCFlag(s_flags, G_TYPE_FILE_COPY_FLAGS));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));

  gboolean ans;
  GError* error = NULL;

  ans = object_class->copy(object, destination, flags, cancellable, progress_callback, progress_callback_data, &error);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
  R_freeCBData(progress_callback_data);
    CLEANUP(g_error_free, error);;
#else
  error("gfile_copy exists only in gio >= 2.16.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gfile_iface_copy_async(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_destination, USER_OBJECT_ s_flags, USER_OBJECT_ s_io_priority, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_progress_callback, USER_OBJECT_ s_progress_callback_data, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFileProgressCallback progress_callback = ((GFileProgressCallback)S_GFileProgressCallback);
  R_CallbackData* progress_callback_data = R_createCBData(s_progress_callback, s_progress_callback_data);
  GAsyncReadyCallback callback = ((GAsyncReadyCallback)S_GAsyncReadyCallback);
  R_CallbackData* user_data = R_createCBData(s_callback, s_user_data);
  GFileIface* object_class = ((GFileIface*)getPtrValue(s_object_class));
  GFile* object = G_FILE(getPtrValue(s_object));
  GFile* destination = G_FILE(getPtrValue(s_destination));
  GFileCopyFlags flags = ((GFileCopyFlags)asCFlag(s_flags, G_TYPE_FILE_COPY_FLAGS));
  int io_priority = ((int)asCInteger(s_io_priority));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));


  object_class->copy_async(object, destination, flags, io_priority, cancellable, progress_callback, progress_callback_data, callback, user_data);

  R_freeCBData(progress_callback_data);
#else
  error("gfile_copy_async exists only in gio >= 2.16.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gfile_iface_copy_finish(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_res)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFileIface* object_class = ((GFileIface*)getPtrValue(s_object_class));
  GFile* object = G_FILE(getPtrValue(s_object));
  GAsyncResult* res = G_ASYNC_RESULT(getPtrValue(s_res));

  gboolean ans;
  GError* error = NULL;

  ans = object_class->copy_finish(object, res, &error);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("gfile_copy_finish exists only in gio >= 2.16.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gfile_iface_move(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_destination, USER_OBJECT_ s_flags, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_progress_callback, USER_OBJECT_ s_progress_callback_data)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFileProgressCallback progress_callback = ((GFileProgressCallback)S_GFileProgressCallback);
  R_CallbackData* progress_callback_data = R_createCBData(s_progress_callback, s_progress_callback_data);
  GFileIface* object_class = ((GFileIface*)getPtrValue(s_object_class));
  GFile* object = G_FILE(getPtrValue(s_object));
  GFile* destination = G_FILE(getPtrValue(s_destination));
  GFileCopyFlags flags = ((GFileCopyFlags)asCFlag(s_flags, G_TYPE_FILE_COPY_FLAGS));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));

  gboolean ans;
  GError* error = NULL;

  ans = object_class->move(object, destination, flags, cancellable, progress_callback, progress_callback_data, &error);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
  R_freeCBData(progress_callback_data);
    CLEANUP(g_error_free, error);;
#else
  error("gfile_move exists only in gio >= 2.16.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gfile_iface_make_directory(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_cancellable)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFileIface* object_class = ((GFileIface*)getPtrValue(s_object_class));
  GFile* object = G_FILE(getPtrValue(s_object));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));

  gboolean ans;
  GError* error = NULL;

  ans = object_class->make_directory(object, cancellable, &error);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("gfile_make_directory exists only in gio >= 2.16.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gfile_iface_make_symbolic_link(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_symlink_value, USER_OBJECT_ s_cancellable)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFileIface* object_class = ((GFileIface*)getPtrValue(s_object_class));
  GFile* object = G_FILE(getPtrValue(s_object));
  const char* symlink_value = ((const char*)asCString(s_symlink_value));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));

  gboolean ans;
  GError* error = NULL;

  ans = object_class->make_symbolic_link(object, symlink_value, cancellable, &error);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("gfile_make_symbolic_link exists only in gio >= 2.16.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gfile_iface_query_settable_attributes(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_cancellable)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFileIface* object_class = ((GFileIface*)getPtrValue(s_object_class));
  GFile* object = G_FILE(getPtrValue(s_object));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));

  GFileAttributeInfoList* ans;
  GError* error = NULL;

  ans = object_class->query_settable_attributes(object, cancellable, &error);

  _result = toRPointerWithFinalizer(ans ? g_file_attribute_info_list_ref(ans) : NULL, "GFileAttributeInfoList", (RPointerFinalizer) g_file_attribute_info_list_unref);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("gfile_query_settable_attributes exists only in gio >= 2.16.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gfile_iface_query_writable_namespaces(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_cancellable)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFileIface* object_class = ((GFileIface*)getPtrValue(s_object_class));
  GFile* object = G_FILE(getPtrValue(s_object));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));

  GFileAttributeInfoList* ans;
  GError* error = NULL;

  ans = object_class->query_writable_namespaces(object, cancellable, &error);

  _result = toRPointerWithFinalizer(ans ? g_file_attribute_info_list_ref(ans) : NULL, "GFileAttributeInfoList", (RPointerFinalizer) g_file_attribute_info_list_unref);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("gfile_query_writable_namespaces exists only in gio >= 2.16.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gfile_iface_set_attribute(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_attribute, USER_OBJECT_ s_type, USER_OBJECT_ s_value_p, USER_OBJECT_ s_flags, USER_OBJECT_ s_cancellable)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFileIface* object_class = ((GFileIface*)getPtrValue(s_object_class));
  GFile* object = G_FILE(getPtrValue(s_object));
  const char* attribute = ((const char*)asCString(s_attribute));
  GFileAttributeType type = ((GFileAttributeType)asCEnum(s_type, G_TYPE_FILE_ATTRIBUTE_TYPE));
  gpointer value_p = ((gpointer)asCGenericData(s_value_p));
  GFileQueryInfoFlags flags = ((GFileQueryInfoFlags)asCFlag(s_flags, G_TYPE_FILE_QUERY_INFO_FLAGS));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));

  gboolean ans;
  GError* error = NULL;

  ans = object_class->set_attribute(object, attribute, type, value_p, flags, cancellable, &error);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("gfile_set_attribute exists only in gio >= 2.16.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gfile_iface_set_attributes_from_info(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_info, USER_OBJECT_ s_flags, USER_OBJECT_ s_cancellable)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFileIface* object_class = ((GFileIface*)getPtrValue(s_object_class));
  GFile* object = G_FILE(getPtrValue(s_object));
  GFileInfo* info = G_FILE_INFO(getPtrValue(s_info));
  GFileQueryInfoFlags flags = ((GFileQueryInfoFlags)asCFlag(s_flags, G_TYPE_FILE_QUERY_INFO_FLAGS));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));

  gboolean ans;
  GError* error = NULL;

  ans = object_class->set_attributes_from_info(object, info, flags, cancellable, &error);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("gfile_set_attributes_from_info exists only in gio >= 2.16.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gfile_iface_set_attributes_async(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_info, USER_OBJECT_ s_flags, USER_OBJECT_ s_io_priority, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GAsyncReadyCallback callback = ((GAsyncReadyCallback)S_GAsyncReadyCallback);
  R_CallbackData* user_data = R_createCBData(s_callback, s_user_data);
  GFileIface* object_class = ((GFileIface*)getPtrValue(s_object_class));
  GFile* object = G_FILE(getPtrValue(s_object));
  GFileInfo* info = G_FILE_INFO(getPtrValue(s_info));
  GFileQueryInfoFlags flags = ((GFileQueryInfoFlags)asCFlag(s_flags, G_TYPE_FILE_QUERY_INFO_FLAGS));
  int io_priority = ((int)asCInteger(s_io_priority));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));


  object_class->set_attributes_async(object, info, flags, io_priority, cancellable, callback, user_data);

#else
  error("gfile_set_attributes_async exists only in gio >= 2.16.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gfile_iface_set_attributes_finish(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_result)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFileIface* object_class = ((GFileIface*)getPtrValue(s_object_class));
  GFile* object = G_FILE(getPtrValue(s_object));
  GAsyncResult* result = G_ASYNC_RESULT(getPtrValue(s_result));

  gboolean ans;
  GFileInfo* info = NULL;
  GError* error = NULL;

  ans = object_class->set_attributes_finish(object, result, &info, &error);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "info", PROTECT(toRPointerWithRef(info, "GFileInfo")), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(3);
  ;
    CLEANUP(g_error_free, error);;
#else
  error("gfile_set_attributes_finish exists only in gio >= 2.16.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gfile_iface_mount_enclosing_volume(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_flags, USER_OBJECT_ s_mount_operation, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GAsyncReadyCallback callback = ((GAsyncReadyCallback)S_GAsyncReadyCallback);
  R_CallbackData* user_data = R_createCBData(s_callback, s_user_data);
  GFileIface* object_class = ((GFileIface*)getPtrValue(s_object_class));
  GFile* object = G_FILE(getPtrValue(s_object));
  GMountMountFlags flags = ((GMountMountFlags)asCFlag(s_flags, G_TYPE_MOUNT_MOUNT_FLAGS));
  GMountOperation* mount_operation = G_MOUNT_OPERATION(getPtrValue(s_mount_operation));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));


  object_class->mount_enclosing_volume(object, flags, mount_operation, cancellable, callback, user_data);

#else
  error("gfile_mount_enclosing_volume exists only in gio >= 2.16.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gfile_iface_mount_enclosing_volume_finish(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_result)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFileIface* object_class = ((GFileIface*)getPtrValue(s_object_class));
  GFile* object = G_FILE(getPtrValue(s_object));
  GAsyncResult* result = G_ASYNC_RESULT(getPtrValue(s_result));

  gboolean ans;
  GError* error = NULL;

  ans = object_class->mount_enclosing_volume_finish(object, result, &error);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("gfile_mount_enclosing_volume_finish exists only in gio >= 2.16.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gfile_iface_mount_mountable(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_flags, USER_OBJECT_ s_mount_operation, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GAsyncReadyCallback callback = ((GAsyncReadyCallback)S_GAsyncReadyCallback);
  R_CallbackData* user_data = R_createCBData(s_callback, s_user_data);
  GFileIface* object_class = ((GFileIface*)getPtrValue(s_object_class));
  GFile* object = G_FILE(getPtrValue(s_object));
  GMountMountFlags flags = ((GMountMountFlags)asCFlag(s_flags, G_TYPE_MOUNT_MOUNT_FLAGS));
  GMountOperation* mount_operation = G_MOUNT_OPERATION(getPtrValue(s_mount_operation));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));


  object_class->mount_mountable(object, flags, mount_operation, cancellable, callback, user_data);

#else
  error("gfile_mount_mountable exists only in gio >= 2.16.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gfile_iface_mount_mountable_finish(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_result)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFileIface* object_class = ((GFileIface*)getPtrValue(s_object_class));
  GFile* object = G_FILE(getPtrValue(s_object));
  GAsyncResult* result = G_ASYNC_RESULT(getPtrValue(s_result));

  GFile* ans;
  GError* error = NULL;

  ans = object_class->mount_mountable_finish(object, result, &error);

  _result = toRPointerWithFinalizer(ans, "GFile", (RPointerFinalizer) g_object_unref);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("gfile_mount_mountable_finish exists only in gio >= 2.16.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gfile_iface_unmount_mountable(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_flags, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GAsyncReadyCallback callback = ((GAsyncReadyCallback)S_GAsyncReadyCallback);
  R_CallbackData* user_data = R_createCBData(s_callback, s_user_data);
  GFileIface* object_class = ((GFileIface*)getPtrValue(s_object_class));
  GFile* object = G_FILE(getPtrValue(s_object));
  GMountUnmountFlags flags = ((GMountUnmountFlags)asCFlag(s_flags, G_TYPE_MOUNT_UNMOUNT_FLAGS));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));


  object_class->unmount_mountable(object, flags, cancellable, callback, user_data);

#else
  error("gfile_unmount_mountable exists only in gio >= 2.16.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gfile_iface_unmount_mountable_finish(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_result)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFileIface* object_class = ((GFileIface*)getPtrValue(s_object_class));
  GFile* object = G_FILE(getPtrValue(s_object));
  GAsyncResult* result = G_ASYNC_RESULT(getPtrValue(s_result));

  gboolean ans;
  GError* error = NULL;

  ans = object_class->unmount_mountable_finish(object, result, &error);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("gfile_unmount_mountable_finish exists only in gio >= 2.16.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gfile_iface_eject_mountable(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_flags, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GAsyncReadyCallback callback = ((GAsyncReadyCallback)S_GAsyncReadyCallback);
  R_CallbackData* user_data = R_createCBData(s_callback, s_user_data);
  GFileIface* object_class = ((GFileIface*)getPtrValue(s_object_class));
  GFile* object = G_FILE(getPtrValue(s_object));
  GMountUnmountFlags flags = ((GMountUnmountFlags)asCFlag(s_flags, G_TYPE_MOUNT_UNMOUNT_FLAGS));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));


  object_class->eject_mountable(object, flags, cancellable, callback, user_data);

#else
  error("gfile_eject_mountable exists only in gio >= 2.16.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gfile_iface_eject_mountable_finish(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_result)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFileIface* object_class = ((GFileIface*)getPtrValue(s_object_class));
  GFile* object = G_FILE(getPtrValue(s_object));
  GAsyncResult* result = G_ASYNC_RESULT(getPtrValue(s_result));

  gboolean ans;
  GError* error = NULL;

  ans = object_class->eject_mountable_finish(object, result, &error);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("gfile_eject_mountable_finish exists only in gio >= 2.16.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gfile_iface_monitor_dir(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_flags, USER_OBJECT_ s_cancellable)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFileIface* object_class = ((GFileIface*)getPtrValue(s_object_class));
  GFile* object = G_FILE(getPtrValue(s_object));
  GFileMonitorFlags flags = ((GFileMonitorFlags)asCFlag(s_flags, G_TYPE_FILE_MONITOR_FLAGS));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));

  GFileMonitor* ans;
  GError* error = NULL;

  ans = object_class->monitor_dir(object, flags, cancellable, &error);

  _result = toRPointerWithFinalizer(ans, "GFileMonitor", (RPointerFinalizer) g_object_unref);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("gfile_monitor_dir exists only in gio >= 2.16.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gfile_iface_monitor_file(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_flags, USER_OBJECT_ s_cancellable)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFileIface* object_class = ((GFileIface*)getPtrValue(s_object_class));
  GFile* object = G_FILE(getPtrValue(s_object));
  GFileMonitorFlags flags = ((GFileMonitorFlags)asCFlag(s_flags, G_TYPE_FILE_MONITOR_FLAGS));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));

  GFileMonitor* ans;
  GError* error = NULL;

  ans = object_class->monitor_file(object, flags, cancellable, &error);

  _result = toRPointerWithFinalizer(ans, "GFileMonitor", (RPointerFinalizer) g_object_unref);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("gfile_monitor_file exists only in gio >= 2.16.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gfile_iface_create_readwrite(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_flags, USER_OBJECT_ s_cancellable)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GFileIface* object_class = ((GFileIface*)getPtrValue(s_object_class));
  GFile* object = G_FILE(getPtrValue(s_object));
  GFileCreateFlags flags = ((GFileCreateFlags)asCFlag(s_flags, G_TYPE_FILE_CREATE_FLAGS));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));

  GFileIOStream* ans;
  GError* error = NULL;

  ans = object_class->create_readwrite(object, flags, cancellable, &error);

  _result = toRPointerWithRef(ans, "GFileIOStream");

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("gfile_create_readwrite exists only in gio >= 2.22.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gfile_iface_create_readwrite_async(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_flags, USER_OBJECT_ s_io_priority, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GAsyncReadyCallback callback = ((GAsyncReadyCallback)S_GAsyncReadyCallback);
  R_CallbackData* user_data = R_createCBData(s_callback, s_user_data);
  GFileIface* object_class = ((GFileIface*)getPtrValue(s_object_class));
  GFile* object = G_FILE(getPtrValue(s_object));
  GFileCreateFlags flags = ((GFileCreateFlags)asCFlag(s_flags, G_TYPE_FILE_CREATE_FLAGS));
  int io_priority = ((int)asCInteger(s_io_priority));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));


  object_class->create_readwrite_async(object, flags, io_priority, cancellable, callback, user_data);

#else
  error("gfile_create_readwrite_async exists only in gio >= 2.22.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gfile_iface_create_readwrite_finish(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_res)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GFileIface* object_class = ((GFileIface*)getPtrValue(s_object_class));
  GFile* object = G_FILE(getPtrValue(s_object));
  GAsyncResult* res = G_ASYNC_RESULT(getPtrValue(s_res));

  GFileIOStream* ans;
  GError* error = NULL;

  ans = object_class->create_readwrite_finish(object, res, &error);

  _result = toRPointerWithRef(ans, "GFileIOStream");

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("gfile_create_readwrite_finish exists only in gio >= 2.22.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gfile_iface_eject_mountable_with_operation(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_flags, USER_OBJECT_ s_mount_operation, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GAsyncReadyCallback callback = ((GAsyncReadyCallback)S_GAsyncReadyCallback);
  R_CallbackData* user_data = R_createCBData(s_callback, s_user_data);
  GFileIface* object_class = ((GFileIface*)getPtrValue(s_object_class));
  GFile* object = G_FILE(getPtrValue(s_object));
  GMountUnmountFlags flags = ((GMountUnmountFlags)asCFlag(s_flags, G_TYPE_MOUNT_UNMOUNT_FLAGS));
  GMountOperation* mount_operation = G_MOUNT_OPERATION(getPtrValue(s_mount_operation));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));


  object_class->eject_mountable_with_operation(object, flags, mount_operation, cancellable, callback, user_data);

#else
  error("gfile_eject_mountable_with_operation exists only in gio >= 2.22.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gfile_iface_eject_mountable_with_operation_finish(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_result)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GFileIface* object_class = ((GFileIface*)getPtrValue(s_object_class));
  GFile* object = G_FILE(getPtrValue(s_object));
  GAsyncResult* result = G_ASYNC_RESULT(getPtrValue(s_result));

  gboolean ans;
  GError* error = NULL;

  ans = object_class->eject_mountable_with_operation_finish(object, result, &error);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("gfile_eject_mountable_with_operation_finish exists only in gio >= 2.22.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gfile_iface_open_readwrite(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_cancellable)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GFileIface* object_class = ((GFileIface*)getPtrValue(s_object_class));
  GFile* object = G_FILE(getPtrValue(s_object));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));

  GFileIOStream* ans;
  GError* error = NULL;

  ans = object_class->open_readwrite(object, cancellable, &error);

  _result = toRPointerWithRef(ans, "GFileIOStream");

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("gfile_open_readwrite exists only in gio >= 2.22.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gfile_iface_open_readwrite_async(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_io_priority, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GAsyncReadyCallback callback = ((GAsyncReadyCallback)S_GAsyncReadyCallback);
  R_CallbackData* user_data = R_createCBData(s_callback, s_user_data);
  GFileIface* object_class = ((GFileIface*)getPtrValue(s_object_class));
  GFile* object = G_FILE(getPtrValue(s_object));
  int io_priority = ((int)asCInteger(s_io_priority));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));


  object_class->open_readwrite_async(object, io_priority, cancellable, callback, user_data);

#else
  error("gfile_open_readwrite_async exists only in gio >= 2.22.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gfile_iface_open_readwrite_finish(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_res)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GFileIface* object_class = ((GFileIface*)getPtrValue(s_object_class));
  GFile* object = G_FILE(getPtrValue(s_object));
  GAsyncResult* res = G_ASYNC_RESULT(getPtrValue(s_res));

  GFileIOStream* ans;
  GError* error = NULL;

  ans = object_class->open_readwrite_finish(object, res, &error);

  _result = toRPointerWithRef(ans, "GFileIOStream");

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("gfile_open_readwrite_finish exists only in gio >= 2.22.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gfile_iface_poll_mountable(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GAsyncReadyCallback callback = ((GAsyncReadyCallback)S_GAsyncReadyCallback);
  R_CallbackData* user_data = R_createCBData(s_callback, s_user_data);
  GFileIface* object_class = ((GFileIface*)getPtrValue(s_object_class));
  GFile* object = G_FILE(getPtrValue(s_object));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));


  object_class->poll_mountable(object, cancellable, callback, user_data);

#else
  error("gfile_poll_mountable exists only in gio >= 2.22.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gfile_iface_poll_mountable_finish(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_result)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GFileIface* object_class = ((GFileIface*)getPtrValue(s_object_class));
  GFile* object = G_FILE(getPtrValue(s_object));
  GAsyncResult* result = G_ASYNC_RESULT(getPtrValue(s_result));

  gboolean ans;
  GError* error = NULL;

  ans = object_class->poll_mountable_finish(object, result, &error);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("gfile_poll_mountable_finish exists only in gio >= 2.22.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gfile_iface_replace_readwrite(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_etag, USER_OBJECT_ s_make_backup, USER_OBJECT_ s_flags, USER_OBJECT_ s_cancellable)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GFileIface* object_class = ((GFileIface*)getPtrValue(s_object_class));
  GFile* object = G_FILE(getPtrValue(s_object));
  const char* etag = ((const char*)asCString(s_etag));
  gboolean make_backup = ((gboolean)asCLogical(s_make_backup));
  GFileCreateFlags flags = ((GFileCreateFlags)asCFlag(s_flags, G_TYPE_FILE_CREATE_FLAGS));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));

  GFileIOStream* ans;
  GError* error = NULL;

  ans = object_class->replace_readwrite(object, etag, make_backup, flags, cancellable, &error);

  _result = toRPointerWithRef(ans, "GFileIOStream");

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("gfile_replace_readwrite exists only in gio >= 2.22.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gfile_iface_replace_readwrite_async(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_etag, USER_OBJECT_ s_make_backup, USER_OBJECT_ s_flags, USER_OBJECT_ s_io_priority, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GAsyncReadyCallback callback = ((GAsyncReadyCallback)S_GAsyncReadyCallback);
  R_CallbackData* user_data = R_createCBData(s_callback, s_user_data);
  GFileIface* object_class = ((GFileIface*)getPtrValue(s_object_class));
  GFile* object = G_FILE(getPtrValue(s_object));
  const char* etag = ((const char*)asCString(s_etag));
  gboolean make_backup = ((gboolean)asCLogical(s_make_backup));
  GFileCreateFlags flags = ((GFileCreateFlags)asCFlag(s_flags, G_TYPE_FILE_CREATE_FLAGS));
  int io_priority = ((int)asCInteger(s_io_priority));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));


  object_class->replace_readwrite_async(object, etag, make_backup, flags, io_priority, cancellable, callback, user_data);

#else
  error("gfile_replace_readwrite_async exists only in gio >= 2.22.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gfile_iface_replace_readwrite_finish(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_res)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GFileIface* object_class = ((GFileIface*)getPtrValue(s_object_class));
  GFile* object = G_FILE(getPtrValue(s_object));
  GAsyncResult* res = G_ASYNC_RESULT(getPtrValue(s_res));

  GFileIOStream* ans;
  GError* error = NULL;

  ans = object_class->replace_readwrite_finish(object, res, &error);

  _result = toRPointerWithRef(ans, "GFileIOStream");

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("gfile_replace_readwrite_finish exists only in gio >= 2.22.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gfile_iface_start_mountable(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_flags, USER_OBJECT_ s_start_operation, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GAsyncReadyCallback callback = ((GAsyncReadyCallback)S_GAsyncReadyCallback);
  R_CallbackData* user_data = R_createCBData(s_callback, s_user_data);
  GFileIface* object_class = ((GFileIface*)getPtrValue(s_object_class));
  GFile* object = G_FILE(getPtrValue(s_object));
  GDriveStartFlags flags = ((GDriveStartFlags)asCEnum(s_flags, G_TYPE_DRIVE_START_FLAGS));
  GMountOperation* start_operation = G_MOUNT_OPERATION(getPtrValue(s_start_operation));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));


  object_class->start_mountable(object, flags, start_operation, cancellable, callback, user_data);

#else
  error("gfile_start_mountable exists only in gio >= 2.22.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gfile_iface_start_mountable_finish(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_result)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GFileIface* object_class = ((GFileIface*)getPtrValue(s_object_class));
  GFile* object = G_FILE(getPtrValue(s_object));
  GAsyncResult* result = G_ASYNC_RESULT(getPtrValue(s_result));

  gboolean ans;
  GError* error = NULL;

  ans = object_class->start_mountable_finish(object, result, &error);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("gfile_start_mountable_finish exists only in gio >= 2.22.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gfile_iface_stop_mountable(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_flags, USER_OBJECT_ s_mount_operation, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GAsyncReadyCallback callback = ((GAsyncReadyCallback)S_GAsyncReadyCallback);
  R_CallbackData* user_data = R_createCBData(s_callback, s_user_data);
  GFileIface* object_class = ((GFileIface*)getPtrValue(s_object_class));
  GFile* object = G_FILE(getPtrValue(s_object));
  GMountUnmountFlags flags = ((GMountUnmountFlags)asCFlag(s_flags, G_TYPE_MOUNT_UNMOUNT_FLAGS));
  GMountOperation* mount_operation = G_MOUNT_OPERATION(getPtrValue(s_mount_operation));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));


  object_class->stop_mountable(object, flags, mount_operation, cancellable, callback, user_data);

#else
  error("gfile_stop_mountable exists only in gio >= 2.22.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gfile_iface_stop_mountable_finish(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_result)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GFileIface* object_class = ((GFileIface*)getPtrValue(s_object_class));
  GFile* object = G_FILE(getPtrValue(s_object));
  GAsyncResult* result = G_ASYNC_RESULT(getPtrValue(s_result));

  gboolean ans;
  GError* error = NULL;

  ans = object_class->stop_mountable_finish(object, result, &error);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("gfile_stop_mountable_finish exists only in gio >= 2.22.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gfile_iface_unmount_mountable_with_operation(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_flags, USER_OBJECT_ s_mount_operation, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GAsyncReadyCallback callback = ((GAsyncReadyCallback)S_GAsyncReadyCallback);
  R_CallbackData* user_data = R_createCBData(s_callback, s_user_data);
  GFileIface* object_class = ((GFileIface*)getPtrValue(s_object_class));
  GFile* object = G_FILE(getPtrValue(s_object));
  GMountUnmountFlags flags = ((GMountUnmountFlags)asCFlag(s_flags, G_TYPE_MOUNT_UNMOUNT_FLAGS));
  GMountOperation* mount_operation = G_MOUNT_OPERATION(getPtrValue(s_mount_operation));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));


  object_class->unmount_mountable_with_operation(object, flags, mount_operation, cancellable, callback, user_data);

#else
  error("gfile_unmount_mountable_with_operation exists only in gio >= 2.22.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gfile_iface_unmount_mountable_with_operation_finish(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_result)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GFileIface* object_class = ((GFileIface*)getPtrValue(s_object_class));
  GFile* object = G_FILE(getPtrValue(s_object));
  GAsyncResult* result = G_ASYNC_RESULT(getPtrValue(s_result));

  gboolean ans;
  GError* error = NULL;

  ans = object_class->unmount_mountable_with_operation_finish(object, result, &error);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("gfile_unmount_mountable_with_operation_finish exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

#if GIO_CHECK_VERSION(2, 16, 0)
static SEXP S_GIcon_symbol;

static guint
S_virtual_gicon_hash(GIcon* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GIcon_symbol, S_GOBJECT_GET_ENV(s_object)), 0));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GIcon")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((guint)0));
  return(((guint)asCNumeric(s_ans)));
}

static gboolean
S_virtual_gicon_equal(GIcon* s_object, GIcon* s_icon2)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GIcon_symbol, S_GOBJECT_GET_ENV(s_object)), 1));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GIcon")));
  tmp = CDR(tmp);
  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_icon2, toRPointerWithRef(s_icon2, "GIcon")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  return(((gboolean)asCLogical(s_ans)));
}
void
S_gicon_class_init(GIconIface * c, SEXP e)
{
  SEXP s;

  S_GIcon_symbol = install("GIcon");
  s = PROTECT(findVar(S_GIcon_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GIconIface)) = e;

  UNPROTECT(1);

#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 0) != NULL_USER_OBJECT)
    c->hash = S_virtual_gicon_hash;
#endif
#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 1) != NULL_USER_OBJECT)
    c->equal = S_virtual_gicon_equal;
#endif
}
#endif
USER_OBJECT_
S_gicon_iface_hash(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GIconIface* object_class = ((GIconIface*)getPtrValue(s_object_class));
  GIcon* object = G_ICON(getPtrValue(s_object));

  guint ans;

  ans = object_class->hash(object);

  _result = asRNumeric(ans);
#else
  error("gicon_hash exists only in gio >= 2.16.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gicon_iface_equal(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_icon2)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GIconIface* object_class = ((GIconIface*)getPtrValue(s_object_class));
  GIcon* object = G_ICON(getPtrValue(s_object));
  GIcon* icon2 = G_ICON(getPtrValue(s_icon2));

  gboolean ans;

  ans = object_class->equal(object, icon2);

  _result = asRLogical(ans);
#else
  error("gicon_equal exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

#if GIO_CHECK_VERSION(2, 16, 0)
static SEXP S_GLoadableIcon_symbol;

static GInputStream*
S_virtual_gloadable_icon_load(GLoadableIcon* s_object, int s_size, char** s_type, GCancellable* s_cancellable, GError** s_error)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 4));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GLoadableIcon_symbol, S_GOBJECT_GET_ENV(s_object)), 0));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GLoadableIcon")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_size));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_cancellable, "GCancellable"));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((GInputStream*)0));
  *s_type = ((char*)g_strdup(asCString(VECTOR_ELT(s_ans, 1))));
  *s_error = asCGError(VECTOR_ELT(s_ans, 2));
  return(G_INPUT_STREAM(getPtrValue(VECTOR_ELT(s_ans, 0))));
}

static void
S_virtual_gloadable_icon_load_async(GLoadableIcon* s_object, int s_size, GCancellable* s_cancellable, GAsyncReadyCallback s_callback, gpointer s_user_data)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 6));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GLoadableIcon_symbol, S_GOBJECT_GET_ENV(s_object)), 1));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GLoadableIcon")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_size));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_cancellable, "GCancellable"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerFn(((DL_FUNC)s_callback), "GAsyncReadyCallback"));
  tmp = CDR(tmp);
  SETCAR(tmp, s_user_data);
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static GInputStream*
S_virtual_gloadable_icon_load_finish(GLoadableIcon* s_object, GAsyncResult* s_res, char** s_type, GError** s_error)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 4));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GLoadableIcon_symbol, S_GOBJECT_GET_ENV(s_object)), 2));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GLoadableIcon")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_res, "GAsyncResult"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRStringArray(s_type));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((GInputStream*)0));
  *s_error = asCGError(VECTOR_ELT(s_ans, 1));
  return(G_INPUT_STREAM(getPtrValue(VECTOR_ELT(s_ans, 0))));
}
void
S_gloadable_icon_class_init(GLoadableIconIface * c, SEXP e)
{
  SEXP s;

  S_GLoadableIcon_symbol = install("GLoadableIcon");
  s = PROTECT(findVar(S_GLoadableIcon_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GLoadableIconIface)) = e;

  UNPROTECT(1);

#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 0) != NULL_USER_OBJECT)
    c->load = S_virtual_gloadable_icon_load;
#endif
#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 1) != NULL_USER_OBJECT)
    c->load_async = S_virtual_gloadable_icon_load_async;
#endif
#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 2) != NULL_USER_OBJECT)
    c->load_finish = S_virtual_gloadable_icon_load_finish;
#endif
}
#endif
USER_OBJECT_
S_gloadable_icon_iface_load(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_size, USER_OBJECT_ s_cancellable)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GLoadableIconIface* object_class = ((GLoadableIconIface*)getPtrValue(s_object_class));
  GLoadableIcon* object = G_LOADABLE_ICON(getPtrValue(s_object));
  int size = ((int)asCInteger(s_size));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));

  GInputStream* ans;
  char* type = NULL;
  GError* error = NULL;

  ans = object_class->load(object, size, &type, cancellable, &error);

  _result = toRPointerWithRef(ans, "GInputStream");

  _result = retByVal(PROTECT(_result), "type", PROTECT(asRString(type)), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(3);
    CLEANUP(g_error_free, error);;
#else
  error("gloadable_icon_load exists only in gio >= 2.16.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gloadable_icon_iface_load_async(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_size, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GAsyncReadyCallback callback = ((GAsyncReadyCallback)S_GAsyncReadyCallback);
  R_CallbackData* user_data = R_createCBData(s_callback, s_user_data);
  GLoadableIconIface* object_class = ((GLoadableIconIface*)getPtrValue(s_object_class));
  GLoadableIcon* object = G_LOADABLE_ICON(getPtrValue(s_object));
  int size = ((int)asCInteger(s_size));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));


  object_class->load_async(object, size, cancellable, callback, user_data);

#else
  error("gloadable_icon_load_async exists only in gio >= 2.16.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gloadable_icon_iface_load_finish(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_res, USER_OBJECT_ s_type)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GLoadableIconIface* object_class = ((GLoadableIconIface*)getPtrValue(s_object_class));
  GLoadableIcon* object = G_LOADABLE_ICON(getPtrValue(s_object));
  GAsyncResult* res = G_ASYNC_RESULT(getPtrValue(s_res));
  char** type = ((char**)asCStringArray(s_type));

  GInputStream* ans;
  GError* error = NULL;

  ans = object_class->load_finish(object, res, type, &error);

  _result = toRPointerWithRef(ans, "GInputStream");

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("gloadable_icon_load_finish exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

#if GIO_CHECK_VERSION(2, 16, 0)
static SEXP S_GMount_symbol;

static GFile*
S_virtual_gmount_get_root(GMount* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GMount_symbol, S_GOBJECT_GET_ENV(s_object)), 0));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GMount")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((GFile*)0));
  return(G_FILE(getPtrValue(s_ans)));
}

static char*
S_virtual_gmount_get_name(GMount* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GMount_symbol, S_GOBJECT_GET_ENV(s_object)), 1));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GMount")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((char*)0));
  return(((char*)g_strdup(asCString(s_ans))));
}

static GIcon*
S_virtual_gmount_get_icon(GMount* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GMount_symbol, S_GOBJECT_GET_ENV(s_object)), 2));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GMount")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((GIcon*)0));
  return(G_ICON(getPtrValue(s_ans)));
}

static char*
S_virtual_gmount_get_uuid(GMount* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GMount_symbol, S_GOBJECT_GET_ENV(s_object)), 3));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GMount")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((char*)0));
  return(((char*)g_strdup(asCString(s_ans))));
}

static GVolume*
S_virtual_gmount_get_volume(GMount* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GMount_symbol, S_GOBJECT_GET_ENV(s_object)), 4));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GMount")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((GVolume*)0));
  return(G_VOLUME(getPtrValue(s_ans)));
}

static GDrive*
S_virtual_gmount_get_drive(GMount* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GMount_symbol, S_GOBJECT_GET_ENV(s_object)), 5));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GMount")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((GDrive*)0));
  return(G_DRIVE(getPtrValue(s_ans)));
}

static gboolean
S_virtual_gmount_can_unmount(GMount* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GMount_symbol, S_GOBJECT_GET_ENV(s_object)), 6));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GMount")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  return(((gboolean)asCLogical(s_ans)));
}

static gboolean
S_virtual_gmount_can_eject(GMount* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GMount_symbol, S_GOBJECT_GET_ENV(s_object)), 7));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GMount")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  return(((gboolean)asCLogical(s_ans)));
}

static void
S_virtual_gmount_unmount(GMount* s_object, GMountUnmountFlags s_flags, GCancellable* s_cancellable, GAsyncReadyCallback s_callback, gpointer s_user_data)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 6));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GMount_symbol, S_GOBJECT_GET_ENV(s_object)), 8));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GMount")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRFlag(s_flags, G_TYPE_MOUNT_UNMOUNT_FLAGS));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_cancellable, "GCancellable"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerFn(((DL_FUNC)s_callback), "GAsyncReadyCallback"));
  tmp = CDR(tmp);
  SETCAR(tmp, s_user_data);
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static gboolean
S_virtual_gmount_unmount_finish(GMount* s_object, GAsyncResult* s_result, GError** s_error)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GMount_symbol, S_GOBJECT_GET_ENV(s_object)), 9));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GMount")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_result, "GAsyncResult"));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  *s_error = asCGError(VECTOR_ELT(s_ans, 1));
  return(((gboolean)asCLogical(VECTOR_ELT(s_ans, 0))));
}

static void
S_virtual_gmount_eject(GMount* s_object, GMountUnmountFlags s_flags, GCancellable* s_cancellable, GAsyncReadyCallback s_callback, gpointer s_user_data)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 6));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GMount_symbol, S_GOBJECT_GET_ENV(s_object)), 10));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GMount")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRFlag(s_flags, G_TYPE_MOUNT_UNMOUNT_FLAGS));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_cancellable, "GCancellable"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerFn(((DL_FUNC)s_callback), "GAsyncReadyCallback"));
  tmp = CDR(tmp);
  SETCAR(tmp, s_user_data);
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static gboolean
S_virtual_gmount_eject_finish(GMount* s_object, GAsyncResult* s_result, GError** s_error)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GMount_symbol, S_GOBJECT_GET_ENV(s_object)), 11));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GMount")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_result, "GAsyncResult"));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  *s_error = asCGError(VECTOR_ELT(s_ans, 1));
  return(((gboolean)asCLogical(VECTOR_ELT(s_ans, 0))));
}

static void
S_virtual_gmount_remount(GMount* s_object, GMountMountFlags s_flags, GMountOperation* s_mount_operation, GCancellable* s_cancellable, GAsyncReadyCallback s_callback, gpointer s_user_data)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 7));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GMount_symbol, S_GOBJECT_GET_ENV(s_object)), 12));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GMount")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRFlag(s_flags, G_TYPE_MOUNT_MOUNT_FLAGS));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_mount_operation, "GMountOperation"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_cancellable, "GCancellable"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerFn(((DL_FUNC)s_callback), "GAsyncReadyCallback"));
  tmp = CDR(tmp);
  SETCAR(tmp, s_user_data);
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static gboolean
S_virtual_gmount_remount_finish(GMount* s_object, GAsyncResult* s_result, GError** s_error)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GMount_symbol, S_GOBJECT_GET_ENV(s_object)), 13));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GMount")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_result, "GAsyncResult"));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  *s_error = asCGError(VECTOR_ELT(s_ans, 1));
  return(((gboolean)asCLogical(VECTOR_ELT(s_ans, 0))));
}

static void
S_virtual_gmount_guess_content_type(GMount* s_object, gboolean s_force_rescan, GCancellable* s_cancellable, GAsyncReadyCallback s_callback, gpointer s_user_data)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 6));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GMount_symbol, S_GOBJECT_GET_ENV(s_object)), 14));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GMount")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRLogical(s_force_rescan));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_cancellable, "GCancellable"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerFn(((DL_FUNC)s_callback), "GAsyncReadyCallback"));
  tmp = CDR(tmp);
  SETCAR(tmp, s_user_data);
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static gchar**
S_virtual_gmount_guess_content_type_finish(GMount* s_object, GAsyncResult* s_result, GError** s_error)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GMount_symbol, S_GOBJECT_GET_ENV(s_object)), 15));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GMount")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_result, "GAsyncResult"));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gchar**)0));
  *s_error = asCGError(VECTOR_ELT(s_ans, 1));
  return(((gchar**)asCStringArray(VECTOR_ELT(s_ans, 0))));
}

static gchar**
S_virtual_gmount_guess_content_type_sync(GMount* s_object, gboolean s_force_rescan, GCancellable* s_cancellable, GError** s_error)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 4));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GMount_symbol, S_GOBJECT_GET_ENV(s_object)), 16));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GMount")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRLogical(s_force_rescan));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_cancellable, "GCancellable"));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gchar**)0));
  *s_error = asCGError(VECTOR_ELT(s_ans, 1));
  return(((gchar**)asCStringArray(VECTOR_ELT(s_ans, 0))));
}

static void
S_virtual_gmount_unmount_with_operation(GMount* s_object, GMountUnmountFlags s_flags, GMountOperation* s_mount_operation, GCancellable* s_cancellable, GAsyncReadyCallback s_callback, gpointer s_user_data)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 7));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GMount_symbol, S_GOBJECT_GET_ENV(s_object)), 17));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GMount")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRFlag(s_flags, G_TYPE_MOUNT_UNMOUNT_FLAGS));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_mount_operation, "GMountOperation"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_cancellable, "GCancellable"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerFn(((DL_FUNC)s_callback), "GAsyncReadyCallback"));
  tmp = CDR(tmp);
  SETCAR(tmp, s_user_data);
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static gboolean
S_virtual_gmount_unmount_with_operation_finish(GMount* s_object, GAsyncResult* s_result, GError** s_error)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GMount_symbol, S_GOBJECT_GET_ENV(s_object)), 18));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GMount")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_result, "GAsyncResult"));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  *s_error = asCGError(VECTOR_ELT(s_ans, 1));
  return(((gboolean)asCLogical(VECTOR_ELT(s_ans, 0))));
}

static void
S_virtual_gmount_eject_with_operation(GMount* s_object, GMountUnmountFlags s_flags, GMountOperation* s_mount_operation, GCancellable* s_cancellable, GAsyncReadyCallback s_callback, gpointer s_user_data)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 7));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GMount_symbol, S_GOBJECT_GET_ENV(s_object)), 19));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GMount")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRFlag(s_flags, G_TYPE_MOUNT_UNMOUNT_FLAGS));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_mount_operation, "GMountOperation"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_cancellable, "GCancellable"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerFn(((DL_FUNC)s_callback), "GAsyncReadyCallback"));
  tmp = CDR(tmp);
  SETCAR(tmp, s_user_data);
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static gboolean
S_virtual_gmount_eject_with_operation_finish(GMount* s_object, GAsyncResult* s_result, GError** s_error)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GMount_symbol, S_GOBJECT_GET_ENV(s_object)), 20));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GMount")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_result, "GAsyncResult"));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  *s_error = asCGError(VECTOR_ELT(s_ans, 1));
  return(((gboolean)asCLogical(VECTOR_ELT(s_ans, 0))));
}
void
S_gmount_class_init(GMountIface * c, SEXP e)
{
  SEXP s;

  S_GMount_symbol = install("GMount");
  s = PROTECT(findVar(S_GMount_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GMountIface)) = e;

  UNPROTECT(1);

#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 0) != NULL_USER_OBJECT)
    c->get_root = S_virtual_gmount_get_root;
#endif
#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 1) != NULL_USER_OBJECT)
    c->get_name = S_virtual_gmount_get_name;
#endif
#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 2) != NULL_USER_OBJECT)
    c->get_icon = S_virtual_gmount_get_icon;
#endif
#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 3) != NULL_USER_OBJECT)
    c->get_uuid = S_virtual_gmount_get_uuid;
#endif
#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 4) != NULL_USER_OBJECT)
    c->get_volume = S_virtual_gmount_get_volume;
#endif
#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 5) != NULL_USER_OBJECT)
    c->get_drive = S_virtual_gmount_get_drive;
#endif
#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 6) != NULL_USER_OBJECT)
    c->can_unmount = S_virtual_gmount_can_unmount;
#endif
#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 7) != NULL_USER_OBJECT)
    c->can_eject = S_virtual_gmount_can_eject;
#endif
#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 8) != NULL_USER_OBJECT)
    c->unmount = S_virtual_gmount_unmount;
#endif
#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 9) != NULL_USER_OBJECT)
    c->unmount_finish = S_virtual_gmount_unmount_finish;
#endif
#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 10) != NULL_USER_OBJECT)
    c->eject = S_virtual_gmount_eject;
#endif
#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 11) != NULL_USER_OBJECT)
    c->eject_finish = S_virtual_gmount_eject_finish;
#endif
#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 12) != NULL_USER_OBJECT)
    c->remount = S_virtual_gmount_remount;
#endif
#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 13) != NULL_USER_OBJECT)
    c->remount_finish = S_virtual_gmount_remount_finish;
#endif
#if GIO_CHECK_VERSION(2, 18, 0)
  if(VECTOR_ELT(s, 14) != NULL_USER_OBJECT)
    c->guess_content_type = S_virtual_gmount_guess_content_type;
#endif
#if GIO_CHECK_VERSION(2, 18, 0)
  if(VECTOR_ELT(s, 15) != NULL_USER_OBJECT)
    c->guess_content_type_finish = S_virtual_gmount_guess_content_type_finish;
#endif
#if GIO_CHECK_VERSION(2, 18, 0)
  if(VECTOR_ELT(s, 16) != NULL_USER_OBJECT)
    c->guess_content_type_sync = S_virtual_gmount_guess_content_type_sync;
#endif
#if GIO_CHECK_VERSION(2, 22, 0)
  if(VECTOR_ELT(s, 17) != NULL_USER_OBJECT)
    c->unmount_with_operation = S_virtual_gmount_unmount_with_operation;
#endif
#if GIO_CHECK_VERSION(2, 22, 0)
  if(VECTOR_ELT(s, 18) != NULL_USER_OBJECT)
    c->unmount_with_operation_finish = S_virtual_gmount_unmount_with_operation_finish;
#endif
#if GIO_CHECK_VERSION(2, 22, 0)
  if(VECTOR_ELT(s, 19) != NULL_USER_OBJECT)
    c->eject_with_operation = S_virtual_gmount_eject_with_operation;
#endif
#if GIO_CHECK_VERSION(2, 22, 0)
  if(VECTOR_ELT(s, 20) != NULL_USER_OBJECT)
    c->eject_with_operation_finish = S_virtual_gmount_eject_with_operation_finish;
#endif
}
#endif
USER_OBJECT_
S_gmount_iface_get_root(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GMountIface* object_class = ((GMountIface*)getPtrValue(s_object_class));
  GMount* object = G_MOUNT(getPtrValue(s_object));

  GFile* ans;

  ans = object_class->get_root(object);

  _result = toRPointerWithFinalizer(ans, "GFile", (RPointerFinalizer) g_object_unref);
#else
  error("gmount_get_root exists only in gio >= 2.16.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gmount_iface_get_name(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GMountIface* object_class = ((GMountIface*)getPtrValue(s_object_class));
  GMount* object = G_MOUNT(getPtrValue(s_object));

  char* ans;

  ans = object_class->get_name(object);

  _result = asRString(ans);
    CLEANUP(g_free, ans);;
#else
  error("gmount_get_name exists only in gio >= 2.16.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gmount_iface_get_icon(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GMountIface* object_class = ((GMountIface*)getPtrValue(s_object_class));
  GMount* object = G_MOUNT(getPtrValue(s_object));

  GIcon* ans;

  ans = object_class->get_icon(object);

  _result = toRPointerWithFinalizer(ans, "GIcon", (RPointerFinalizer) g_object_unref);
#else
  error("gmount_get_icon exists only in gio >= 2.16.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gmount_iface_get_uuid(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GMountIface* object_class = ((GMountIface*)getPtrValue(s_object_class));
  GMount* object = G_MOUNT(getPtrValue(s_object));

  char* ans;

  ans = object_class->get_uuid(object);

  _result = asRString(ans);
    CLEANUP(g_free, ans);;
#else
  error("gmount_get_uuid exists only in gio >= 2.16.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gmount_iface_get_volume(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GMountIface* object_class = ((GMountIface*)getPtrValue(s_object_class));
  GMount* object = G_MOUNT(getPtrValue(s_object));

  GVolume* ans;

  ans = object_class->get_volume(object);

  _result = toRPointerWithFinalizer(ans, "GVolume", (RPointerFinalizer) g_object_unref);
#else
  error("gmount_get_volume exists only in gio >= 2.16.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gmount_iface_get_drive(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GMountIface* object_class = ((GMountIface*)getPtrValue(s_object_class));
  GMount* object = G_MOUNT(getPtrValue(s_object));

  GDrive* ans;

  ans = object_class->get_drive(object);

  _result = toRPointerWithFinalizer(ans, "GDrive", (RPointerFinalizer) g_object_unref);
#else
  error("gmount_get_drive exists only in gio >= 2.16.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gmount_iface_can_unmount(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GMountIface* object_class = ((GMountIface*)getPtrValue(s_object_class));
  GMount* object = G_MOUNT(getPtrValue(s_object));

  gboolean ans;

  ans = object_class->can_unmount(object);

  _result = asRLogical(ans);
#else
  error("gmount_can_unmount exists only in gio >= 2.16.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gmount_iface_can_eject(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GMountIface* object_class = ((GMountIface*)getPtrValue(s_object_class));
  GMount* object = G_MOUNT(getPtrValue(s_object));

  gboolean ans;

  ans = object_class->can_eject(object);

  _result = asRLogical(ans);
#else
  error("gmount_can_eject exists only in gio >= 2.16.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gmount_iface_unmount(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_flags, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GAsyncReadyCallback callback = ((GAsyncReadyCallback)S_GAsyncReadyCallback);
  R_CallbackData* user_data = R_createCBData(s_callback, s_user_data);
  GMountIface* object_class = ((GMountIface*)getPtrValue(s_object_class));
  GMount* object = G_MOUNT(getPtrValue(s_object));
  GMountUnmountFlags flags = ((GMountUnmountFlags)asCFlag(s_flags, G_TYPE_MOUNT_UNMOUNT_FLAGS));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));


  object_class->unmount(object, flags, cancellable, callback, user_data);

#else
  error("gmount_unmount exists only in gio >= 2.16.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gmount_iface_unmount_finish(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_result)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GMountIface* object_class = ((GMountIface*)getPtrValue(s_object_class));
  GMount* object = G_MOUNT(getPtrValue(s_object));
  GAsyncResult* result = G_ASYNC_RESULT(getPtrValue(s_result));

  gboolean ans;
  GError* error = NULL;

  ans = object_class->unmount_finish(object, result, &error);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("gmount_unmount_finish exists only in gio >= 2.16.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gmount_iface_eject(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_flags, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GAsyncReadyCallback callback = ((GAsyncReadyCallback)S_GAsyncReadyCallback);
  R_CallbackData* user_data = R_createCBData(s_callback, s_user_data);
  GMountIface* object_class = ((GMountIface*)getPtrValue(s_object_class));
  GMount* object = G_MOUNT(getPtrValue(s_object));
  GMountUnmountFlags flags = ((GMountUnmountFlags)asCFlag(s_flags, G_TYPE_MOUNT_UNMOUNT_FLAGS));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));


  object_class->eject(object, flags, cancellable, callback, user_data);

#else
  error("gmount_eject exists only in gio >= 2.16.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gmount_iface_eject_finish(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_result)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GMountIface* object_class = ((GMountIface*)getPtrValue(s_object_class));
  GMount* object = G_MOUNT(getPtrValue(s_object));
  GAsyncResult* result = G_ASYNC_RESULT(getPtrValue(s_result));

  gboolean ans;
  GError* error = NULL;

  ans = object_class->eject_finish(object, result, &error);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("gmount_eject_finish exists only in gio >= 2.16.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gmount_iface_remount(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_flags, USER_OBJECT_ s_mount_operation, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GAsyncReadyCallback callback = ((GAsyncReadyCallback)S_GAsyncReadyCallback);
  R_CallbackData* user_data = R_createCBData(s_callback, s_user_data);
  GMountIface* object_class = ((GMountIface*)getPtrValue(s_object_class));
  GMount* object = G_MOUNT(getPtrValue(s_object));
  GMountMountFlags flags = ((GMountMountFlags)asCFlag(s_flags, G_TYPE_MOUNT_MOUNT_FLAGS));
  GMountOperation* mount_operation = G_MOUNT_OPERATION(getPtrValue(s_mount_operation));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));


  object_class->remount(object, flags, mount_operation, cancellable, callback, user_data);

#else
  error("gmount_remount exists only in gio >= 2.16.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gmount_iface_remount_finish(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_result)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GMountIface* object_class = ((GMountIface*)getPtrValue(s_object_class));
  GMount* object = G_MOUNT(getPtrValue(s_object));
  GAsyncResult* result = G_ASYNC_RESULT(getPtrValue(s_result));

  gboolean ans;
  GError* error = NULL;

  ans = object_class->remount_finish(object, result, &error);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("gmount_remount_finish exists only in gio >= 2.16.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gmount_iface_guess_content_type(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_force_rescan, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 18, 0)
  GAsyncReadyCallback callback = ((GAsyncReadyCallback)S_GAsyncReadyCallback);
  R_CallbackData* user_data = R_createCBData(s_callback, s_user_data);
  GMountIface* object_class = ((GMountIface*)getPtrValue(s_object_class));
  GMount* object = G_MOUNT(getPtrValue(s_object));
  gboolean force_rescan = ((gboolean)asCLogical(s_force_rescan));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));


  object_class->guess_content_type(object, force_rescan, cancellable, callback, user_data);

#else
  error("gmount_guess_content_type exists only in gio >= 2.18.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gmount_iface_guess_content_type_finish(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_result)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 18, 0)
  GMountIface* object_class = ((GMountIface*)getPtrValue(s_object_class));
  GMount* object = G_MOUNT(getPtrValue(s_object));
  GAsyncResult* result = G_ASYNC_RESULT(getPtrValue(s_result));

  gchar** ans;
  GError* error = NULL;

  ans = object_class->guess_content_type_finish(object, result, &error);

  _result = asRStringArray(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("gmount_guess_content_type_finish exists only in gio >= 2.18.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gmount_iface_guess_content_type_sync(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_force_rescan, USER_OBJECT_ s_cancellable)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 18, 0)
  GMountIface* object_class = ((GMountIface*)getPtrValue(s_object_class));
  GMount* object = G_MOUNT(getPtrValue(s_object));
  gboolean force_rescan = ((gboolean)asCLogical(s_force_rescan));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));

  gchar** ans;
  GError* error = NULL;

  ans = object_class->guess_content_type_sync(object, force_rescan, cancellable, &error);

  _result = asRStringArray(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("gmount_guess_content_type_sync exists only in gio >= 2.18.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gmount_iface_unmount_with_operation(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_flags, USER_OBJECT_ s_mount_operation, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GAsyncReadyCallback callback = ((GAsyncReadyCallback)S_GAsyncReadyCallback);
  R_CallbackData* user_data = R_createCBData(s_callback, s_user_data);
  GMountIface* object_class = ((GMountIface*)getPtrValue(s_object_class));
  GMount* object = G_MOUNT(getPtrValue(s_object));
  GMountUnmountFlags flags = ((GMountUnmountFlags)asCFlag(s_flags, G_TYPE_MOUNT_UNMOUNT_FLAGS));
  GMountOperation* mount_operation = G_MOUNT_OPERATION(getPtrValue(s_mount_operation));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));


  object_class->unmount_with_operation(object, flags, mount_operation, cancellable, callback, user_data);

#else
  error("gmount_unmount_with_operation exists only in gio >= 2.22.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gmount_iface_unmount_with_operation_finish(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_result)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GMountIface* object_class = ((GMountIface*)getPtrValue(s_object_class));
  GMount* object = G_MOUNT(getPtrValue(s_object));
  GAsyncResult* result = G_ASYNC_RESULT(getPtrValue(s_result));

  gboolean ans;
  GError* error = NULL;

  ans = object_class->unmount_with_operation_finish(object, result, &error);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("gmount_unmount_with_operation_finish exists only in gio >= 2.22.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gmount_iface_eject_with_operation(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_flags, USER_OBJECT_ s_mount_operation, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GAsyncReadyCallback callback = ((GAsyncReadyCallback)S_GAsyncReadyCallback);
  R_CallbackData* user_data = R_createCBData(s_callback, s_user_data);
  GMountIface* object_class = ((GMountIface*)getPtrValue(s_object_class));
  GMount* object = G_MOUNT(getPtrValue(s_object));
  GMountUnmountFlags flags = ((GMountUnmountFlags)asCFlag(s_flags, G_TYPE_MOUNT_UNMOUNT_FLAGS));
  GMountOperation* mount_operation = G_MOUNT_OPERATION(getPtrValue(s_mount_operation));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));


  object_class->eject_with_operation(object, flags, mount_operation, cancellable, callback, user_data);

#else
  error("gmount_eject_with_operation exists only in gio >= 2.22.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gmount_iface_eject_with_operation_finish(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_result)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GMountIface* object_class = ((GMountIface*)getPtrValue(s_object_class));
  GMount* object = G_MOUNT(getPtrValue(s_object));
  GAsyncResult* result = G_ASYNC_RESULT(getPtrValue(s_result));

  gboolean ans;
  GError* error = NULL;

  ans = object_class->eject_with_operation_finish(object, result, &error);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("gmount_eject_with_operation_finish exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

#if GIO_CHECK_VERSION(2, 16, 0)
static SEXP S_GSeekable_symbol;

static goffset
S_virtual_gseekable_tell(GSeekable* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GSeekable_symbol, S_GOBJECT_GET_ENV(s_object)), 0));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GSeekable")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((goffset)0));
  return(((goffset)asCNumeric(s_ans)));
}

static gboolean
S_virtual_gseekable_can_seek(GSeekable* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GSeekable_symbol, S_GOBJECT_GET_ENV(s_object)), 1));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GSeekable")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  return(((gboolean)asCLogical(s_ans)));
}

static gboolean
S_virtual_gseekable_seek(GSeekable* s_object, goffset s_offset, GSeekType s_type, GCancellable* s_cancellable, GError** s_error)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 5));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GSeekable_symbol, S_GOBJECT_GET_ENV(s_object)), 2));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GSeekable")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRNumeric(s_offset));
  tmp = CDR(tmp);
  SETCAR(tmp, asREnum(s_type, G_TYPE_SEEK_TYPE));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_cancellable, "GCancellable"));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  *s_error = asCGError(VECTOR_ELT(s_ans, 1));
  return(((gboolean)asCLogical(VECTOR_ELT(s_ans, 0))));
}

static gboolean
S_virtual_gseekable_can_truncate(GSeekable* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GSeekable_symbol, S_GOBJECT_GET_ENV(s_object)), 3));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GSeekable")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  return(((gboolean)asCLogical(s_ans)));
}

static gboolean
S_virtual_gseekable_truncate_fn(GSeekable* s_object, goffset s_offset, GCancellable* s_cancellable, GError** s_error)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 4));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GSeekable_symbol, S_GOBJECT_GET_ENV(s_object)), 4));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GSeekable")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRNumeric(s_offset));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_cancellable, "GCancellable"));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  *s_error = asCGError(VECTOR_ELT(s_ans, 1));
  return(((gboolean)asCLogical(VECTOR_ELT(s_ans, 0))));
}
void
S_gseekable_class_init(GSeekableIface * c, SEXP e)
{
  SEXP s;

  S_GSeekable_symbol = install("GSeekable");
  s = PROTECT(findVar(S_GSeekable_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GSeekableIface)) = e;

  UNPROTECT(1);

#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 0) != NULL_USER_OBJECT)
    c->tell = S_virtual_gseekable_tell;
#endif
#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 1) != NULL_USER_OBJECT)
    c->can_seek = S_virtual_gseekable_can_seek;
#endif
#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 2) != NULL_USER_OBJECT)
    c->seek = S_virtual_gseekable_seek;
#endif
#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 3) != NULL_USER_OBJECT)
    c->can_truncate = S_virtual_gseekable_can_truncate;
#endif
#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 4) != NULL_USER_OBJECT)
    c->truncate_fn = S_virtual_gseekable_truncate_fn;
#endif
}
#endif
USER_OBJECT_
S_gseekable_iface_tell(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GSeekableIface* object_class = ((GSeekableIface*)getPtrValue(s_object_class));
  GSeekable* object = G_SEEKABLE(getPtrValue(s_object));

  goffset ans;

  ans = object_class->tell(object);

  _result = asRNumeric(ans);
#else
  error("gseekable_tell exists only in gio >= 2.16.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gseekable_iface_can_seek(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GSeekableIface* object_class = ((GSeekableIface*)getPtrValue(s_object_class));
  GSeekable* object = G_SEEKABLE(getPtrValue(s_object));

  gboolean ans;

  ans = object_class->can_seek(object);

  _result = asRLogical(ans);
#else
  error("gseekable_can_seek exists only in gio >= 2.16.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gseekable_iface_seek(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_offset, USER_OBJECT_ s_type, USER_OBJECT_ s_cancellable)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GSeekableIface* object_class = ((GSeekableIface*)getPtrValue(s_object_class));
  GSeekable* object = G_SEEKABLE(getPtrValue(s_object));
  goffset offset = ((goffset)asCNumeric(s_offset));
  GSeekType type = ((GSeekType)asCEnum(s_type, G_TYPE_SEEK_TYPE));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));

  gboolean ans;
  GError* error = NULL;

  ans = object_class->seek(object, offset, type, cancellable, &error);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("gseekable_seek exists only in gio >= 2.16.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gseekable_iface_can_truncate(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GSeekableIface* object_class = ((GSeekableIface*)getPtrValue(s_object_class));
  GSeekable* object = G_SEEKABLE(getPtrValue(s_object));

  gboolean ans;

  ans = object_class->can_truncate(object);

  _result = asRLogical(ans);
#else
  error("gseekable_can_truncate exists only in gio >= 2.16.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gseekable_iface_truncate_fn(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_offset, USER_OBJECT_ s_cancellable)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GSeekableIface* object_class = ((GSeekableIface*)getPtrValue(s_object_class));
  GSeekable* object = G_SEEKABLE(getPtrValue(s_object));
  goffset offset = ((goffset)asCNumeric(s_offset));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));

  gboolean ans;
  GError* error = NULL;

  ans = object_class->truncate_fn(object, offset, cancellable, &error);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("gseekable_truncate_fn exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

#if GIO_CHECK_VERSION(2, 16, 0)
static SEXP S_GVolume_symbol;

static char*
S_virtual_gvolume_get_name(GVolume* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GVolume_symbol, S_GOBJECT_GET_ENV(s_object)), 0));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GVolume")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((char*)0));
  return(((char*)g_strdup(asCString(s_ans))));
}

static GIcon*
S_virtual_gvolume_get_icon(GVolume* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GVolume_symbol, S_GOBJECT_GET_ENV(s_object)), 1));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GVolume")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((GIcon*)0));
  return(G_ICON(getPtrValue(s_ans)));
}

static char*
S_virtual_gvolume_get_uuid(GVolume* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GVolume_symbol, S_GOBJECT_GET_ENV(s_object)), 2));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GVolume")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((char*)0));
  return(((char*)g_strdup(asCString(s_ans))));
}

static GDrive*
S_virtual_gvolume_get_drive(GVolume* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GVolume_symbol, S_GOBJECT_GET_ENV(s_object)), 3));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GVolume")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((GDrive*)0));
  return(G_DRIVE(getPtrValue(s_ans)));
}

static GMount*
S_virtual_gvolume_get_mount(GVolume* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GVolume_symbol, S_GOBJECT_GET_ENV(s_object)), 4));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GVolume")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((GMount*)0));
  return(G_MOUNT(getPtrValue(s_ans)));
}

static gboolean
S_virtual_gvolume_can_mount(GVolume* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GVolume_symbol, S_GOBJECT_GET_ENV(s_object)), 5));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GVolume")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  return(((gboolean)asCLogical(s_ans)));
}

static gboolean
S_virtual_gvolume_can_eject(GVolume* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GVolume_symbol, S_GOBJECT_GET_ENV(s_object)), 6));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GVolume")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  return(((gboolean)asCLogical(s_ans)));
}

static gboolean
S_virtual_gvolume_should_automount(GVolume* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GVolume_symbol, S_GOBJECT_GET_ENV(s_object)), 7));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GVolume")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  return(((gboolean)asCLogical(s_ans)));
}

static void
S_virtual_gvolume_mount_fn(GVolume* s_object, GMountMountFlags s_flags, GMountOperation* s_mount_operation, GCancellable* s_cancellable, GAsyncReadyCallback s_callback, gpointer s_user_data)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 7));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GVolume_symbol, S_GOBJECT_GET_ENV(s_object)), 8));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GVolume")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRFlag(s_flags, G_TYPE_MOUNT_MOUNT_FLAGS));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_mount_operation, "GMountOperation"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_cancellable, "GCancellable"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerFn(((DL_FUNC)s_callback), "GAsyncReadyCallback"));
  tmp = CDR(tmp);
  SETCAR(tmp, s_user_data);
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static gboolean
S_virtual_gvolume_mount_finish(GVolume* s_object, GAsyncResult* s_result, GError** s_error)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GVolume_symbol, S_GOBJECT_GET_ENV(s_object)), 9));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GVolume")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_result, "GAsyncResult"));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  *s_error = asCGError(VECTOR_ELT(s_ans, 1));
  return(((gboolean)asCLogical(VECTOR_ELT(s_ans, 0))));
}

static void
S_virtual_gvolume_eject(GVolume* s_object, GMountUnmountFlags s_flags, GCancellable* s_cancellable, GAsyncReadyCallback s_callback, gpointer s_user_data)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 6));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GVolume_symbol, S_GOBJECT_GET_ENV(s_object)), 10));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GVolume")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRFlag(s_flags, G_TYPE_MOUNT_UNMOUNT_FLAGS));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_cancellable, "GCancellable"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerFn(((DL_FUNC)s_callback), "GAsyncReadyCallback"));
  tmp = CDR(tmp);
  SETCAR(tmp, s_user_data);
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static gboolean
S_virtual_gvolume_eject_finish(GVolume* s_object, GAsyncResult* s_result, GError** s_error)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GVolume_symbol, S_GOBJECT_GET_ENV(s_object)), 11));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GVolume")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_result, "GAsyncResult"));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  *s_error = asCGError(VECTOR_ELT(s_ans, 1));
  return(((gboolean)asCLogical(VECTOR_ELT(s_ans, 0))));
}

static char*
S_virtual_gvolume_get_identifier(GVolume* s_object, const char* s_kind)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GVolume_symbol, S_GOBJECT_GET_ENV(s_object)), 12));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GVolume")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRString(s_kind));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((char*)0));
  return(((char*)g_strdup(asCString(s_ans))));
}

static char**
S_virtual_gvolume_enumerate_identifiers(GVolume* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GVolume_symbol, S_GOBJECT_GET_ENV(s_object)), 13));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GVolume")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((char**)0));
  return(((char**)asCStringArray(s_ans)));
}

static GFile*
S_virtual_gvolume_get_activation_root(GVolume* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GVolume_symbol, S_GOBJECT_GET_ENV(s_object)), 14));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GVolume")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((GFile*)0));
  return(G_FILE(getPtrValue(s_ans)));
}

static void
S_virtual_gvolume_eject_with_operation(GVolume* s_object, GMountUnmountFlags s_flags, GMountOperation* s_mount_operation, GCancellable* s_cancellable, GAsyncReadyCallback s_callback, gpointer s_user_data)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 7));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GVolume_symbol, S_GOBJECT_GET_ENV(s_object)), 15));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GVolume")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRFlag(s_flags, G_TYPE_MOUNT_UNMOUNT_FLAGS));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_mount_operation, "GMountOperation"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_cancellable, "GCancellable"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerFn(((DL_FUNC)s_callback), "GAsyncReadyCallback"));
  tmp = CDR(tmp);
  SETCAR(tmp, s_user_data);
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static gboolean
S_virtual_gvolume_eject_with_operation_finish(GVolume* s_object, GAsyncResult* s_result, GError** s_error)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GVolume_symbol, S_GOBJECT_GET_ENV(s_object)), 16));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GVolume")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_result, "GAsyncResult"));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  *s_error = asCGError(VECTOR_ELT(s_ans, 1));
  return(((gboolean)asCLogical(VECTOR_ELT(s_ans, 0))));
}
void
S_gvolume_class_init(GVolumeIface * c, SEXP e)
{
  SEXP s;

  S_GVolume_symbol = install("GVolume");
  s = PROTECT(findVar(S_GVolume_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GVolumeIface)) = e;

  UNPROTECT(1);

#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 0) != NULL_USER_OBJECT)
    c->get_name = S_virtual_gvolume_get_name;
#endif
#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 1) != NULL_USER_OBJECT)
    c->get_icon = S_virtual_gvolume_get_icon;
#endif
#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 2) != NULL_USER_OBJECT)
    c->get_uuid = S_virtual_gvolume_get_uuid;
#endif
#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 3) != NULL_USER_OBJECT)
    c->get_drive = S_virtual_gvolume_get_drive;
#endif
#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 4) != NULL_USER_OBJECT)
    c->get_mount = S_virtual_gvolume_get_mount;
#endif
#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 5) != NULL_USER_OBJECT)
    c->can_mount = S_virtual_gvolume_can_mount;
#endif
#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 6) != NULL_USER_OBJECT)
    c->can_eject = S_virtual_gvolume_can_eject;
#endif
#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 7) != NULL_USER_OBJECT)
    c->should_automount = S_virtual_gvolume_should_automount;
#endif
#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 8) != NULL_USER_OBJECT)
    c->mount_fn = S_virtual_gvolume_mount_fn;
#endif
#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 9) != NULL_USER_OBJECT)
    c->mount_finish = S_virtual_gvolume_mount_finish;
#endif
#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 10) != NULL_USER_OBJECT)
    c->eject = S_virtual_gvolume_eject;
#endif
#if GIO_CHECK_VERSION(2, 16, 0)
  if(VECTOR_ELT(s, 11) != NULL_USER_OBJECT)
    c->eject_finish = S_virtual_gvolume_eject_finish;
#endif
#if GIO_CHECK_VERSION(2, 18, 0)
  if(VECTOR_ELT(s, 12) != NULL_USER_OBJECT)
    c->get_identifier = S_virtual_gvolume_get_identifier;
#endif
#if GIO_CHECK_VERSION(2, 18, 0)
  if(VECTOR_ELT(s, 13) != NULL_USER_OBJECT)
    c->enumerate_identifiers = S_virtual_gvolume_enumerate_identifiers;
#endif
#if GIO_CHECK_VERSION(2, 18, 0)
  if(VECTOR_ELT(s, 14) != NULL_USER_OBJECT)
    c->get_activation_root = S_virtual_gvolume_get_activation_root;
#endif
#if GIO_CHECK_VERSION(2, 22, 0)
  if(VECTOR_ELT(s, 15) != NULL_USER_OBJECT)
    c->eject_with_operation = S_virtual_gvolume_eject_with_operation;
#endif
#if GIO_CHECK_VERSION(2, 22, 0)
  if(VECTOR_ELT(s, 16) != NULL_USER_OBJECT)
    c->eject_with_operation_finish = S_virtual_gvolume_eject_with_operation_finish;
#endif
}
#endif
USER_OBJECT_
S_gvolume_iface_get_name(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GVolumeIface* object_class = ((GVolumeIface*)getPtrValue(s_object_class));
  GVolume* object = G_VOLUME(getPtrValue(s_object));

  char* ans;

  ans = object_class->get_name(object);

  _result = asRString(ans);
    CLEANUP(g_free, ans);;
#else
  error("gvolume_get_name exists only in gio >= 2.16.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gvolume_iface_get_icon(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GVolumeIface* object_class = ((GVolumeIface*)getPtrValue(s_object_class));
  GVolume* object = G_VOLUME(getPtrValue(s_object));

  GIcon* ans;

  ans = object_class->get_icon(object);

  _result = toRPointerWithFinalizer(ans, "GIcon", (RPointerFinalizer) g_object_unref);
#else
  error("gvolume_get_icon exists only in gio >= 2.16.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gvolume_iface_get_uuid(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GVolumeIface* object_class = ((GVolumeIface*)getPtrValue(s_object_class));
  GVolume* object = G_VOLUME(getPtrValue(s_object));

  char* ans;

  ans = object_class->get_uuid(object);

  _result = asRString(ans);
    CLEANUP(g_free, ans);;
#else
  error("gvolume_get_uuid exists only in gio >= 2.16.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gvolume_iface_get_drive(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GVolumeIface* object_class = ((GVolumeIface*)getPtrValue(s_object_class));
  GVolume* object = G_VOLUME(getPtrValue(s_object));

  GDrive* ans;

  ans = object_class->get_drive(object);

  _result = toRPointerWithFinalizer(ans, "GDrive", (RPointerFinalizer) g_object_unref);
#else
  error("gvolume_get_drive exists only in gio >= 2.16.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gvolume_iface_get_mount(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GVolumeIface* object_class = ((GVolumeIface*)getPtrValue(s_object_class));
  GVolume* object = G_VOLUME(getPtrValue(s_object));

  GMount* ans;

  ans = object_class->get_mount(object);

  _result = toRPointerWithFinalizer(ans, "GMount", (RPointerFinalizer) g_object_unref);
#else
  error("gvolume_get_mount exists only in gio >= 2.16.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gvolume_iface_can_mount(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GVolumeIface* object_class = ((GVolumeIface*)getPtrValue(s_object_class));
  GVolume* object = G_VOLUME(getPtrValue(s_object));

  gboolean ans;

  ans = object_class->can_mount(object);

  _result = asRLogical(ans);
#else
  error("gvolume_can_mount exists only in gio >= 2.16.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gvolume_iface_can_eject(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GVolumeIface* object_class = ((GVolumeIface*)getPtrValue(s_object_class));
  GVolume* object = G_VOLUME(getPtrValue(s_object));

  gboolean ans;

  ans = object_class->can_eject(object);

  _result = asRLogical(ans);
#else
  error("gvolume_can_eject exists only in gio >= 2.16.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gvolume_iface_should_automount(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GVolumeIface* object_class = ((GVolumeIface*)getPtrValue(s_object_class));
  GVolume* object = G_VOLUME(getPtrValue(s_object));

  gboolean ans;

  ans = object_class->should_automount(object);

  _result = asRLogical(ans);
#else
  error("gvolume_should_automount exists only in gio >= 2.16.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gvolume_iface_mount_fn(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_flags, USER_OBJECT_ s_mount_operation, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GAsyncReadyCallback callback = ((GAsyncReadyCallback)S_GAsyncReadyCallback);
  R_CallbackData* user_data = R_createCBData(s_callback, s_user_data);
  GVolumeIface* object_class = ((GVolumeIface*)getPtrValue(s_object_class));
  GVolume* object = G_VOLUME(getPtrValue(s_object));
  GMountMountFlags flags = ((GMountMountFlags)asCFlag(s_flags, G_TYPE_MOUNT_MOUNT_FLAGS));
  GMountOperation* mount_operation = G_MOUNT_OPERATION(getPtrValue(s_mount_operation));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));


  object_class->mount_fn(object, flags, mount_operation, cancellable, callback, user_data);

#else
  error("gvolume_mount_fn exists only in gio >= 2.16.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gvolume_iface_mount_finish(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_result)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GVolumeIface* object_class = ((GVolumeIface*)getPtrValue(s_object_class));
  GVolume* object = G_VOLUME(getPtrValue(s_object));
  GAsyncResult* result = G_ASYNC_RESULT(getPtrValue(s_result));

  gboolean ans;
  GError* error = NULL;

  ans = object_class->mount_finish(object, result, &error);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("gvolume_mount_finish exists only in gio >= 2.16.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gvolume_iface_eject(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_flags, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GAsyncReadyCallback callback = ((GAsyncReadyCallback)S_GAsyncReadyCallback);
  R_CallbackData* user_data = R_createCBData(s_callback, s_user_data);
  GVolumeIface* object_class = ((GVolumeIface*)getPtrValue(s_object_class));
  GVolume* object = G_VOLUME(getPtrValue(s_object));
  GMountUnmountFlags flags = ((GMountUnmountFlags)asCFlag(s_flags, G_TYPE_MOUNT_UNMOUNT_FLAGS));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));


  object_class->eject(object, flags, cancellable, callback, user_data);

#else
  error("gvolume_eject exists only in gio >= 2.16.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gvolume_iface_eject_finish(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_result)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GVolumeIface* object_class = ((GVolumeIface*)getPtrValue(s_object_class));
  GVolume* object = G_VOLUME(getPtrValue(s_object));
  GAsyncResult* result = G_ASYNC_RESULT(getPtrValue(s_result));

  gboolean ans;
  GError* error = NULL;

  ans = object_class->eject_finish(object, result, &error);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("gvolume_eject_finish exists only in gio >= 2.16.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gvolume_iface_get_identifier(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_kind)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 18, 0)
  GVolumeIface* object_class = ((GVolumeIface*)getPtrValue(s_object_class));
  GVolume* object = G_VOLUME(getPtrValue(s_object));
  const char* kind = ((const char*)asCString(s_kind));

  char* ans;

  ans = object_class->get_identifier(object, kind);

  _result = asRString(ans);
    CLEANUP(g_free, ans);;
#else
  error("gvolume_get_identifier exists only in gio >= 2.18.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gvolume_iface_enumerate_identifiers(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 18, 0)
  GVolumeIface* object_class = ((GVolumeIface*)getPtrValue(s_object_class));
  GVolume* object = G_VOLUME(getPtrValue(s_object));

  char** ans;

  ans = object_class->enumerate_identifiers(object);

  _result = asRStringArray(ans);
#else
  error("gvolume_enumerate_identifiers exists only in gio >= 2.18.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gvolume_iface_get_activation_root(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 18, 0)
  GVolumeIface* object_class = ((GVolumeIface*)getPtrValue(s_object_class));
  GVolume* object = G_VOLUME(getPtrValue(s_object));

  GFile* ans;

  ans = object_class->get_activation_root(object);

  _result = toRPointerWithRef(ans, "GFile");
#else
  error("gvolume_get_activation_root exists only in gio >= 2.18.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gvolume_iface_eject_with_operation(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_flags, USER_OBJECT_ s_mount_operation, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GAsyncReadyCallback callback = ((GAsyncReadyCallback)S_GAsyncReadyCallback);
  R_CallbackData* user_data = R_createCBData(s_callback, s_user_data);
  GVolumeIface* object_class = ((GVolumeIface*)getPtrValue(s_object_class));
  GVolume* object = G_VOLUME(getPtrValue(s_object));
  GMountUnmountFlags flags = ((GMountUnmountFlags)asCFlag(s_flags, G_TYPE_MOUNT_UNMOUNT_FLAGS));
  GMountOperation* mount_operation = G_MOUNT_OPERATION(getPtrValue(s_mount_operation));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));


  object_class->eject_with_operation(object, flags, mount_operation, cancellable, callback, user_data);

#else
  error("gvolume_eject_with_operation exists only in gio >= 2.22.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gvolume_iface_eject_with_operation_finish(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_result)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GVolumeIface* object_class = ((GVolumeIface*)getPtrValue(s_object_class));
  GVolume* object = G_VOLUME(getPtrValue(s_object));
  GAsyncResult* result = G_ASYNC_RESULT(getPtrValue(s_result));

  gboolean ans;
  GError* error = NULL;

  ans = object_class->eject_with_operation_finish(object, result, &error);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("gvolume_eject_with_operation_finish exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

#if GIO_CHECK_VERSION(2, 22, 0)
static SEXP S_GAsyncInitable_symbol;

static void
S_virtual_gasync_initable_init_async(GAsyncInitable* s_object, int s_io_priority, GCancellable* s_cancellable, GAsyncReadyCallback s_callback, gpointer s_user_data)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 6));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GAsyncInitable_symbol, S_GOBJECT_GET_ENV(s_object)), 0));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GAsyncInitable")));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_io_priority));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_cancellable, "GCancellable"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerFn(((DL_FUNC)s_callback), "GAsyncReadyCallback"));
  tmp = CDR(tmp);
  SETCAR(tmp, s_user_data);
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}

static gboolean
S_virtual_gasync_initable_init_finish(GAsyncInitable* s_object, GAsyncResult* s_res, GError** s_error)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GAsyncInitable_symbol, S_GOBJECT_GET_ENV(s_object)), 1));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GAsyncInitable")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_res, "GAsyncResult"));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  *s_error = asCGError(VECTOR_ELT(s_ans, 1));
  return(((gboolean)asCLogical(VECTOR_ELT(s_ans, 0))));
}
void
S_gasync_initable_class_init(GAsyncInitableIface * c, SEXP e)
{
  SEXP s;

  S_GAsyncInitable_symbol = install("GAsyncInitable");
  s = PROTECT(findVar(S_GAsyncInitable_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GAsyncInitableIface)) = e;

  UNPROTECT(1);

#if GIO_CHECK_VERSION(2, 22, 0)
  if(VECTOR_ELT(s, 0) != NULL_USER_OBJECT)
    c->init_async = S_virtual_gasync_initable_init_async;
#endif
#if GIO_CHECK_VERSION(2, 22, 0)
  if(VECTOR_ELT(s, 1) != NULL_USER_OBJECT)
    c->init_finish = S_virtual_gasync_initable_init_finish;
#endif
}
#endif
USER_OBJECT_
S_gasync_initable_iface_init_async(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_io_priority, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GAsyncReadyCallback callback = ((GAsyncReadyCallback)S_GAsyncReadyCallback);
  R_CallbackData* user_data = R_createCBData(s_callback, s_user_data);
  GAsyncInitableIface* object_class = ((GAsyncInitableIface*)getPtrValue(s_object_class));
  GAsyncInitable* object = G_ASYNC_INITABLE(getPtrValue(s_object));
  int io_priority = ((int)asCInteger(s_io_priority));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));


  object_class->init_async(object, io_priority, cancellable, callback, user_data);

#else
  error("gasync_initable_init_async exists only in gio >= 2.22.0");
#endif

  return(_result);
}

USER_OBJECT_
S_gasync_initable_iface_init_finish(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_res)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GAsyncInitableIface* object_class = ((GAsyncInitableIface*)getPtrValue(s_object_class));
  GAsyncInitable* object = G_ASYNC_INITABLE(getPtrValue(s_object));
  GAsyncResult* res = G_ASYNC_RESULT(getPtrValue(s_res));

  gboolean ans;
  GError* error = NULL;

  ans = object_class->init_finish(object, res, &error);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("gasync_initable_init_finish exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

#if GIO_CHECK_VERSION(2, 22, 0)
static SEXP S_GInitable_symbol;

static gboolean
S_virtual_ginitable_init(GInitable* s_object, GCancellable* s_cancellable, GError** s_error)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GInitable_symbol, S_GOBJECT_GET_ENV(s_object)), 0));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GInitable")));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_cancellable, "GCancellable"));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  *s_error = asCGError(VECTOR_ELT(s_ans, 1));
  return(((gboolean)asCLogical(VECTOR_ELT(s_ans, 0))));
}
void
S_ginitable_class_init(GInitableIface * c, SEXP e)
{
  SEXP s;

  S_GInitable_symbol = install("GInitable");
  s = PROTECT(findVar(S_GInitable_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GInitableIface)) = e;

  UNPROTECT(1);

#if GIO_CHECK_VERSION(2, 22, 0)
  if(VECTOR_ELT(s, 0) != NULL_USER_OBJECT)
    c->init = S_virtual_ginitable_init;
#endif
}
#endif
USER_OBJECT_
S_ginitable_iface_init(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_cancellable)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GInitableIface* object_class = ((GInitableIface*)getPtrValue(s_object_class));
  GInitable* object = G_INITABLE(getPtrValue(s_object));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));

  gboolean ans;
  GError* error = NULL;

  ans = object_class->init(object, cancellable, &error);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("ginitable_init exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

#if GIO_CHECK_VERSION(2, 22, 0)
static SEXP S_GSocketConnectable_symbol;

static GSocketAddressEnumerator*
S_virtual_gsocket_connectable_enumerate(GSocketConnectable* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GSocketConnectable_symbol, S_GOBJECT_GET_ENV(s_object)), 0));
  tmp = CDR(tmp);

  SETCAR(tmp, S_G_OBJECT_ADD_ENV(s_object, toRPointerWithRef(s_object, "GSocketConnectable")));
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((GSocketAddressEnumerator*)0));
  return(G_SOCKET_ADDRESS_ENUMERATOR(getPtrValue(s_ans)));
}
void
S_gsocket_connectable_class_init(GSocketConnectableIface * c, SEXP e)
{
  SEXP s;

  S_GSocketConnectable_symbol = install("GSocketConnectable");
  s = PROTECT(findVar(S_GSocketConnectable_symbol, e));
  G_STRUCT_MEMBER(SEXP, c, sizeof(GSocketConnectableIface)) = e;

  UNPROTECT(1);

#if GIO_CHECK_VERSION(2, 22, 0)
  if(VECTOR_ELT(s, 0) != NULL_USER_OBJECT)
    c->enumerate = S_virtual_gsocket_connectable_enumerate;
#endif
}
#endif
USER_OBJECT_
S_gsocket_connectable_iface_enumerate(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GSocketConnectableIface* object_class = ((GSocketConnectableIface*)getPtrValue(s_object_class));
  GSocketConnectable* object = G_SOCKET_CONNECTABLE(getPtrValue(s_object));

  GSocketAddressEnumerator* ans;

  ans = object_class->enumerate(object);

  _result = toRPointerWithRef(ans, "GSocketAddressEnumerator");
#else
  error("gsocket_connectable_enumerate exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

