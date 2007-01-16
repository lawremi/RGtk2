GtkWidget*
S_GladeXMLCustomWidgetHandler(GladeXML* xml, gchar* func_name, gchar* name, gchar* string1, gchar* string2, gint int1, gint int2, gpointer user_data)
{
  static GtkWidget* (*fun)(GladeXML*, gchar*, gchar*, gchar*, gchar*, gint, gint, gpointer) = NULL;
  if(!fun) fun = ((GtkWidget* (*)(GladeXML*, gchar*, gchar*, gchar*, gchar*, gint, gint, gpointer))R_GetCCallable("RGtk2", "S_GladeXMLCustomWidgetHandler"));
  return(fun(xml, func_name, name, string1, string2, int1, int2, user_data));
} 

void
S_GladeXMLConnectFunc(const gchar* handler_name, GObject* object, const gchar* signal_name, const gchar* signal_data, GObject* connect_object, gboolean after, gpointer user_data)
{
  static void (*fun)(const gchar*, GObject*, const gchar*, const gchar*, GObject*, gboolean, gpointer) = NULL;
  if(!fun) fun = ((void (*)(const gchar*, GObject*, const gchar*, const gchar*, GObject*, gboolean, gpointer))R_GetCCallable("RGtk2", "S_GladeXMLConnectFunc"));
  return(fun(handler_name, object, signal_name, signal_data, connect_object, after, user_data));
} 

