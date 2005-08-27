#include "pangoUserFuncs.h"
#include "RGtk.h"


gboolean
S_PangoFontsetForeachFunc(PangoFontset* s_fontset, PangoFont* s_font, gpointer s_data)
{
	GValue * params = (GValue *)S_alloc(2, sizeof(GValue));

	GValue * ans = (GValue *)S_alloc(1, sizeof(GValue));

	g_value_init(ans, G_TYPE_BOOLEAN);

	g_value_init(&params[0], PANGO_TYPE_FONTSET);
	g_value_init(&params[1], PANGO_TYPE_FONT);

	g_value_set_object(&params[0], s_fontset);
	g_value_set_object(&params[1], s_font);

	g_closure_invoke(s_data, ans, 2, params, NULL);

	return(g_value_get_boolean(ans));
} 


gboolean
S_PangoAttrFilterFunc(PangoAttribute* s_attribute, gpointer s_data)
{
	GValue * params = (GValue *)S_alloc(1, sizeof(GValue));

	GValue * ans = (GValue *)S_alloc(1, sizeof(GValue));

	g_value_init(ans, G_TYPE_BOOLEAN);

	g_value_init(&params[0], G_TYPE_POINTER);

	g_value_set_pointer(&params[0], s_attribute);

	g_closure_invoke(s_data, ans, 1, params, NULL);

	return(g_value_get_boolean(ans));
} 

