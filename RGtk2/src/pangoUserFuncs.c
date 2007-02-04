#include "RGtk2/pangoUserFuncs.h"

gboolean
S_PangoFontsetForeachFunc(PangoFontset* s_fontset, PangoFont* s_font, gpointer s_data)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 4));
  tmp = e;

  SETCAR(tmp, ((R_CallbackData *)s_data)->function);
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_fontset, "PangoFontset"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_font, "PangoFont"));
  tmp = CDR(tmp);
  SETCAR(tmp, ((R_CallbackData *)s_data)->data);
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);
  if(err)
    return(((gboolean)0));

  UNPROTECT(1);
  return(((gboolean)asCLogical(s_ans)));
} 


gboolean
S_PangoAttrFilterFunc(PangoAttribute* s_attribute, gpointer s_data)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, ((R_CallbackData *)s_data)->function);
  tmp = CDR(tmp);

  SETCAR(tmp, asRPangoAttributeCopy(s_attribute));
  tmp = CDR(tmp);
  SETCAR(tmp, ((R_CallbackData *)s_data)->data);
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);
  if(err)
    return(((gboolean)0));

  UNPROTECT(1);
  return(((gboolean)asCLogical(s_ans)));
} 

