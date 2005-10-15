#include "libgladeUserFuncs.h"
#include "RGtk2.h"


GtkWidget*
S_GladeXMLCustomWidgetHandler(GladeXML* s_xml, gchar* s_func_name, gchar* s_name, gchar* s_string1, gchar* s_string2, gint s_int1, gint s_int2, gpointer s_user_data)
{
	GValue * params = (GValue *)S_alloc(7, sizeof(GValue));

	GValue * ans = (GValue *)S_alloc(1, sizeof(GValue));

	g_value_init(ans, GTK_TYPE_WIDGET);

	g_value_init(&params[0], GLADE_TYPE_XML);
	g_value_init(&params[1], G_TYPE_STRING);
	g_value_init(&params[2], G_TYPE_STRING);
	g_value_init(&params[3], G_TYPE_STRING);
	g_value_init(&params[4], G_TYPE_STRING);
	g_value_init(&params[5], G_TYPE_INT);
	g_value_init(&params[6], G_TYPE_INT);

	g_value_set_object(&params[0], s_xml);
	g_value_set_string(&params[1], s_func_name);
	g_value_set_string(&params[2], s_name);
	g_value_set_string(&params[3], s_string1);
	g_value_set_string(&params[4], s_string2);
	g_value_set_int(&params[5], s_int1);
	g_value_set_int(&params[6], s_int2);

	g_closure_invoke(s_user_data, ans, 7, params, NULL);

	return(g_value_get_pointer(ans));
} 


void
S_GladeXMLConnectFunc(const gchar* s_handler_name, GObject* s_object, const gchar* s_signal_name, const gchar* s_signal_data, GObject* s_connect_object, gboolean s_after, gpointer s_user_data)
{
	GValue * params = (GValue *)S_alloc(6, sizeof(GValue));

	g_value_init(&params[0], G_TYPE_STRING);
	g_value_init(&params[1], G_TYPE_OBJECT);
	g_value_init(&params[2], G_TYPE_STRING);
	g_value_init(&params[3], G_TYPE_STRING);
	g_value_init(&params[4], G_TYPE_OBJECT);
	g_value_init(&params[5], G_TYPE_BOOLEAN);

	g_value_set_string(&params[0], s_handler_name);
	g_value_set_pointer(&params[1], s_object);
	g_value_set_string(&params[2], s_signal_name);
	g_value_set_string(&params[3], s_signal_data);
	g_value_set_pointer(&params[4], s_connect_object);
	g_value_set_boolean(&params[5], s_after);

	g_closure_invoke(s_user_data, NULL, 6, params, NULL);
} 

