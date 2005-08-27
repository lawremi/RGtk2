#include "gdkUserFuncs.h"
#include "RGtk.h"


void
S_GdkFilterFunc(GdkXEvent* s_xevent, GdkEvent* s_event, gpointer s_data)
{
	GValue * params = (GValue *)S_alloc(2, sizeof(GValue));

	g_value_init(&params[0], G_TYPE_POINTER);
	g_value_init(&params[1], GDK_TYPE_EVENT);

	g_value_set_pointer(&params[0], s_xevent);
	g_value_set_boxed(&params[1], s_event);

	g_closure_invoke(s_data, NULL, 2, params, NULL);
} 


void
S_GdkEventFunc(GdkEvent* s_event, gpointer s_data)
{
	GValue * params = (GValue *)S_alloc(1, sizeof(GValue));

	g_value_init(&params[0], GDK_TYPE_EVENT);

	g_value_set_boxed(&params[0], s_event);

	g_closure_invoke(s_data, NULL, 1, params, NULL);
} 


void
S_GdkInputFunction(gpointer s_data, gint s_source, GdkInputCondition s_condition)
{
	GValue * params = (GValue *)S_alloc(2, sizeof(GValue));

	g_value_init(&params[0], G_TYPE_INT);
	g_value_init(&params[1], GDK_TYPE_INPUT_CONDITION);

	g_value_set_int(&params[0], s_source);
	g_value_set_flags(&params[1], s_condition);

	g_closure_invoke(s_data, NULL, 2, params, NULL);
} 


gboolean
S_GdkPixbufSaveFunc(const gchar* s_buf, gsize s_count, GError** s_error, gpointer s_data)
{
	GValue * params = (GValue *)S_alloc(3, sizeof(GValue));

	GValue * ans = (GValue *)S_alloc(1, sizeof(GValue));

	g_value_init(ans, G_TYPE_BOOLEAN);

	g_value_init(&params[0], G_TYPE_STRING);
	g_value_init(&params[1], G_TYPE_UINT);
	g_value_init(&params[2], G_TYPE_POINTER);

	g_value_set_string(&params[0], s_buf);
	g_value_set_uint(&params[1], s_count);
	g_value_set_pointer(&params[2], s_error);

	g_closure_invoke(s_data, ans, 3, params, NULL);

	return(g_value_get_boolean(ans));
} 

