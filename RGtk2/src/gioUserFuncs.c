#include "RGtk2/gioUserFuncs.h"
#if GIO_CHECK_VERSION(2, 16, 0)

gboolean
S_GIOSchedulerJobFunc(GIOSchedulerJob* s_job, GCancellable* s_cancellable, gpointer s_user_data)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3+((R_CallbackData *)s_user_data)->useData));
  tmp = e;

  SETCAR(tmp, ((R_CallbackData *)s_user_data)->function);
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointer(s_job, "GIOSchedulerJob"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_cancellable, "GCancellable"));
  tmp = CDR(tmp);
  if(((R_CallbackData *)s_user_data)->useData)
  {
    SETCAR(tmp, ((R_CallbackData *)s_user_data)->data);
    tmp = CDR(tmp);
  }

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  return(((gboolean)asCLogical(s_ans)));
}
#endif 

#if GIO_CHECK_VERSION(2, 16, 0)

  R_CallbackData * GSimpleAsyncThreadFunc_cbdata;
gboolean
S_GSimpleAsyncThreadFunc(GSimpleAsyncResult* s_res, GObject* s_object, GCancellable* s_cancellable)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 4+GSimpleAsyncThreadFunc_cbdata->useData));
  tmp = e;

  SETCAR(tmp, GSimpleAsyncThreadFunc_cbdata->function);
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_res, "GSimpleAsyncResult"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_object, "GObject"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_cancellable, "GCancellable"));
  tmp = CDR(tmp);
  if(GSimpleAsyncThreadFunc_cbdata->useData)
  {
    SETCAR(tmp, GSimpleAsyncThreadFunc_cbdata->data);
    tmp = CDR(tmp);
  }

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  return(((gboolean)asCLogical(s_ans)));
}
#endif 

#if GIO_CHECK_VERSION(2, 16, 0)

void
S_GAsyncReadyCallback(GObject* s_source_object, GSimpleAsyncResult* s_res, gpointer s_user_data)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3+((R_CallbackData *)s_user_data)->useData));
  tmp = e;

  SETCAR(tmp, ((R_CallbackData *)s_user_data)->function);
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_source_object, "GObject"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_res, "GSimpleAsyncResult"));
  tmp = CDR(tmp);
  if(((R_CallbackData *)s_user_data)->useData)
  {
    SETCAR(tmp, ((R_CallbackData *)s_user_data)->data);
    tmp = CDR(tmp);
  }

  s_ans = R_tryEval(e, R_GlobalEnv, &err);
  R_freeCBData(((R_CallbackData *)s_user_data));

  UNPROTECT(1);

  if(err)
    return;
}
#endif 

#if GIO_CHECK_VERSION(2, 16, 0)

void
S_GFileProgressCallback(goffset s_current_num_bytes, goffset s_total_num_bytes, gpointer s_user_data)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3+((R_CallbackData *)s_user_data)->useData));
  tmp = e;

  SETCAR(tmp, ((R_CallbackData *)s_user_data)->function);
  tmp = CDR(tmp);

  SETCAR(tmp, asRNumeric(s_current_num_bytes));
  tmp = CDR(tmp);
  SETCAR(tmp, asRNumeric(s_total_num_bytes));
  tmp = CDR(tmp);
  if(((R_CallbackData *)s_user_data)->useData)
  {
    SETCAR(tmp, ((R_CallbackData *)s_user_data)->data);
    tmp = CDR(tmp);
  }

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}
#endif 

#if GIO_CHECK_VERSION(2, 16, 0)

void
S_GFileReadMoreCallback(const char* s_file_contents, goffset s_file_size, gpointer s_callback_data)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3+((R_CallbackData *)s_callback_data)->useData));
  tmp = e;

  SETCAR(tmp, ((R_CallbackData *)s_callback_data)->function);
  tmp = CDR(tmp);

  SETCAR(tmp, asRString(s_file_contents));
  tmp = CDR(tmp);
  SETCAR(tmp, asRNumeric(s_file_size));
  tmp = CDR(tmp);
  if(((R_CallbackData *)s_callback_data)->useData)
  {
    SETCAR(tmp, ((R_CallbackData *)s_callback_data)->data);
    tmp = CDR(tmp);
  }

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}
#endif 

#if GIO_CHECK_VERSION(2, 16, 0)

gpointer
S_GReallocFunc(gpointer s_data, gsize s_size)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2+((R_CallbackData *)s_data)->useData));
  tmp = e;

  SETCAR(tmp, ((R_CallbackData *)s_data)->function);
  tmp = CDR(tmp);

  SETCAR(tmp, asRNumeric(s_size));
  tmp = CDR(tmp);
  if(((R_CallbackData *)s_data)->useData)
  {
    SETCAR(tmp, ((R_CallbackData *)s_data)->data);
    tmp = CDR(tmp);
  }

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gpointer)0));
  return(((gpointer)asCGenericData(s_ans)));
}
#endif 

