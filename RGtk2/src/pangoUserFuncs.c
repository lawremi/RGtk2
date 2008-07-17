#include "RGtk2/pangoUserFuncs.h"

gboolean
S_PangoFontsetForeachFunc(PangoFontset* s_fontset, PangoFont* s_font, gpointer s_data)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3+((R_CallbackData *)s_data)->useData));
  tmp = e;

  SETCAR(tmp, ((R_CallbackData *)s_data)->function);
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_fontset, "PangoFontset"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_font, "PangoFont"));
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
  return(((gboolean)asCLogical(s_ans)));
} 


gboolean
S_PangoAttrFilterFunc(PangoAttribute* s_attribute, gpointer s_data)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2+((R_CallbackData *)s_data)->useData));
  tmp = e;

  SETCAR(tmp, ((R_CallbackData *)s_data)->function);
  tmp = CDR(tmp);

  SETCAR(tmp, asRPangoAttributeCopy(s_attribute));
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
  return(((gboolean)asCLogical(s_ans)));
} 

#if PANGO_CHECK_VERSION(1, 18, 0)

gboolean
S_PangoCairoShapeRendererFunc(cairo_t* s_cr, PangoAttrShape* s_attr, gboolean s_do_path, gpointer s_data)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 4+((R_CallbackData *)s_data)->useData));
  tmp = e;

  SETCAR(tmp, ((R_CallbackData *)s_data)->function);
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithCairoRef(s_cr, "Cairo", cairo));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointer(s_attr, "PangoAttrShape"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRLogical(s_do_path));
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
  return(((gboolean)asCLogical(s_ans)));
}
#endif 

