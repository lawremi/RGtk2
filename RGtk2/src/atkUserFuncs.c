#include "RGtk2/atkUserFuncs.h"

gint
S_AtkKeySnoopFunc(AtkKeyEventStruct* s_event, gpointer s_func_data)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2+((R_CallbackData *)s_func_data)->useData));
  tmp = e;

  SETCAR(tmp, ((R_CallbackData *)s_func_data)->function);
  tmp = CDR(tmp);

  SETCAR(tmp, asRAtkKeyEventStruct(s_event));
  tmp = CDR(tmp);
  if(((R_CallbackData *)s_func_data)->useData)
  {
    SETCAR(tmp, ((R_CallbackData *)s_func_data)->data);
    tmp = CDR(tmp);
  }

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gint)0));
  return(((gint)asCInteger(s_ans)));
} 

