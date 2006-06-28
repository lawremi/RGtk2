#include "atkUserFuncs.h"
#include "conversion.h"
#include "utils.h"
#include "RGtk2.h"


gint
S_AtkKeySnoopFunc(AtkKeyEventStruct* s_event, gpointer s_func_data)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, ((R_CallbackData *)s_func_data)->function);
  tmp = CDR(tmp);

  SETCAR(tmp, asRAtkKeyEventStruct(s_event));
  tmp = CDR(tmp);
  SETCAR(tmp, ((R_CallbackData *)s_func_data)->data);
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
  return(((gint)asCInteger(s_ans)));
} 

