#include <exports/cairoUserFuncExports.c>

R_RegisterCCallable("RGtk2", "S_cairo_read_func_t", ((DL_FUNC)S_cairo_read_func_t)); 
R_RegisterCCallable("RGtk2", "asRCairoPath", ((DL_FUNC)asRCairoPath)); 
R_RegisterCCallable("RGtk2", "asCCairoPath", ((DL_FUNC)asCCairoPath)); 
R_RegisterCCallable("RGtk2", "asCCairoGlyph", ((DL_FUNC)asCCairoGlyph)); 
