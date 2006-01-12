#include "cairoUserFuncs.h"
#include "RGtk2.h"


cairo_status_t
S_cairo_write_func_t(gpointer s_closure, guchar* s_data, guint s_length)
{
	GValue * params = (GValue *)S_alloc(2, sizeof(GValue));

	GValue * ans = (GValue *)S_alloc(1, sizeof(GValue));

	g_value_init(ans, CAIRO_TYPE_STATUS);

	g_value_init(&params[0], G_TYPE_POINTER);
	g_value_init(&params[1], G_TYPE_UINT);

	g_value_set_pointer(&params[0], s_data);
	g_value_set_uint(&params[1], s_length);

	g_closure_invoke(s_closure, ans, 2, params, NULL);

	return(g_value_get_enum(ans));
} 


cairo_status_t
S_cairo_read_func_t(gpointer s_closure, guchar* s_data, guint s_length)
{
	GValue * params = (GValue *)S_alloc(2, sizeof(GValue));

	GValue * ans = (GValue *)S_alloc(1, sizeof(GValue));

	g_value_init(ans, CAIRO_TYPE_STATUS);

	g_value_init(&params[0], G_TYPE_POINTER);
	g_value_init(&params[1], G_TYPE_UINT);

	g_value_set_pointer(&params[0], s_data);
	g_value_set_uint(&params[1], s_length);

	g_closure_invoke(s_closure, ans, 2, params, NULL);

	return(g_value_get_enum(ans));
} 

