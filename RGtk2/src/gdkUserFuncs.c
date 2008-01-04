#include "RGtk2/gdkUserFuncs.h"

void
S_GdkFilterFunc(GdkXEvent* s_xevent, GdkEvent* s_event, gpointer s_data)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3+((R_CallbackData *)s_data)->useData));
  tmp = e;

  SETCAR(tmp, ((R_CallbackData *)s_data)->function);
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointer(s_xevent, "GdkXEvent"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRGdkEvent(((GdkEvent *)s_event), FALSE));
  tmp = CDR(tmp);
  if(((R_CallbackData *)s_data)->useData)
  {
    SETCAR(tmp, ((R_CallbackData *)s_data)->data);
    tmp = CDR(tmp);
  }

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
} 


void
S_GdkEventFunc(GdkEvent* s_event, gpointer s_data)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2+((R_CallbackData *)s_data)->useData));
  tmp = e;

  SETCAR(tmp, ((R_CallbackData *)s_data)->function);
  tmp = CDR(tmp);

  SETCAR(tmp, toRGdkEvent(((GdkEvent *)s_event), FALSE));
  tmp = CDR(tmp);
  if(((R_CallbackData *)s_data)->useData)
  {
    SETCAR(tmp, ((R_CallbackData *)s_data)->data);
    tmp = CDR(tmp);
  }

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
} 


gboolean
S_GdkPixbufSaveFunc(const guchar* s_buf, gsize s_count, GError** s_error, gpointer s_data)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3+((R_CallbackData *)s_data)->useData));
  tmp = e;

  SETCAR(tmp, ((R_CallbackData *)s_data)->function);
  tmp = CDR(tmp);

  SETCAR(tmp, asRRawArrayWithSize(s_buf, s_count));
  tmp = CDR(tmp);
  SETCAR(tmp, asRNumeric(s_count));
  tmp = CDR(tmp);
  if(((R_CallbackData *)s_data)->useData)
  {
    SETCAR(tmp, ((R_CallbackData *)s_data)->data);
    tmp = CDR(tmp);
  }

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  *s_error = asCGError(VECTOR_ELT(s_ans, 1));
  return(((gboolean)asCLogical(VECTOR_ELT(s_ans, 0))));
} 


void
S_GdkSpanFunc(GdkSpan* s_span, gpointer s_data)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2+((R_CallbackData *)s_data)->useData));
  tmp = e;

  SETCAR(tmp, ((R_CallbackData *)s_data)->function);
  tmp = CDR(tmp);

  SETCAR(tmp, asRGdkSpan(s_span));
  tmp = CDR(tmp);
  if(((R_CallbackData *)s_data)->useData)
  {
    SETCAR(tmp, ((R_CallbackData *)s_data)->data);
    tmp = CDR(tmp);
  }

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
} 

