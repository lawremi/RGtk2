#include "RGtk2/libgladeUserFuncs.h"

GtkWidget*
S_GladeXMLCustomWidgetHandler(GladeXML* s_xml, gchar* s_func_name, gchar* s_name, gchar* s_string1, gchar* s_string2, gint s_int1, gint s_int2, gpointer s_user_data)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 9));
  tmp = e;

  SETCAR(tmp, ((R_CallbackData *)s_user_data)->function);
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_xml, "GladeXML"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRString(s_func_name));
  tmp = CDR(tmp);
  SETCAR(tmp, asRString(s_name));
  tmp = CDR(tmp);
  SETCAR(tmp, asRString(s_string1));
  tmp = CDR(tmp);
  SETCAR(tmp, asRString(s_string2));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_int1));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_int2));
  tmp = CDR(tmp);
  SETCAR(tmp, ((R_CallbackData *)s_user_data)->data);
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);
  if(err)
    return(((GtkWidget*)0));

  UNPROTECT(1);
  return(GTK_WIDGET(getPtrValue(s_ans)));
} 


void
S_GladeXMLConnectFunc(const gchar* s_handler_name, GObject* s_object, const gchar* s_signal_name, const gchar* s_signal_data, GObject* s_connect_object, gboolean s_after, gpointer s_user_data)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 8));
  tmp = e;

  SETCAR(tmp, ((R_CallbackData *)s_user_data)->function);
  tmp = CDR(tmp);

  SETCAR(tmp, asRString(s_handler_name));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_object, "GObject"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRString(s_signal_name));
  tmp = CDR(tmp);
  SETCAR(tmp, asRString(s_signal_data));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_connect_object, "GObject"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRLogical(s_after));
  tmp = CDR(tmp);
  SETCAR(tmp, ((R_CallbackData *)s_user_data)->data);
  tmp = CDR(tmp);

  s_ans = R_tryEval(e, R_GlobalEnv, &err);
  if(err)
    return;

  UNPROTECT(1);
} 

