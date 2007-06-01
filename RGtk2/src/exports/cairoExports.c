#include <exports/cairoUserFuncExports.c>

R_RegisterCCallable("RGtk2", "S_cairo_read_func_t", ((DL_FUNC)S_cairo_read_func_t)); 
R_RegisterCCallable("RGtk2", "asRCairoPath", ((DL_FUNC)asRCairoPath)); 
R_RegisterCCallable("RGtk2", "asCCairoPath", ((DL_FUNC)asCCairoPath)); 
R_RegisterCCallable("RGtk2", "asCCairoGlyph", ((DL_FUNC)asCCairoGlyph)); 
#if CAIRO_CHECK_VERSION(1, 4, 0)
R_RegisterCCallable("RGtk2", "asRCairoRectangle", ((DL_FUNC)asRCairoRectangle));
#endif 
#if CAIRO_CHECK_VERSION(1, 4, 0)
R_RegisterCCallable("RGtk2", "asRCairoRectangleList", ((DL_FUNC)asRCairoRectangleList));
#endif 
