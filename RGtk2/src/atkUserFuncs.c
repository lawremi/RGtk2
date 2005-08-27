#include "atkUserFuncs.h"
#include "RGtk.h"


gint
S_AtkKeySnoopFunc(AtkKeyEventStruct* s_event, gpointer s_func_data)
{
	GValue * params = (GValue *)S_alloc(1, sizeof(GValue));

	GValue * ans = (GValue *)S_alloc(1, sizeof(GValue));

	g_value_init(ans, G_TYPE_INT);

	g_value_init(&params[0], G_TYPE_POINTER);

	g_value_set_pointer(&params[0], s_event);

	g_closure_invoke(s_func_data, ans, 1, params, NULL);

	return(g_value_get_int(ans));
} 

