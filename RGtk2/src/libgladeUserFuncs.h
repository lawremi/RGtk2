#include "RGtk2.h"

  GtkWidget*
S_GladeXMLCustomWidgetHandler(GladeXML* s_xml, gchar* s_func_name, gchar* s_name, gchar* s_string1, gchar* s_string2, gint s_int1, gint s_int2, gpointer s_user_data); 

  void
S_GladeXMLConnectFunc(const gchar* s_handler_name, GObject* s_object, const gchar* s_signal_name, const gchar* s_signal_data, GObject* s_connect_object, gboolean s_after, gpointer s_user_data); 

