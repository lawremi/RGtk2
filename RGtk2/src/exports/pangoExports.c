#include <exports/pangoUserFuncExports.c>

#include <exports/pangoClassExports.c>

R_RegisterCCallable("RGtk2", "asCPangoRectangle", ((DL_FUNC)asCPangoRectangle)); 
R_RegisterCCallable("RGtk2", "asRPangoRectangle", ((DL_FUNC)asRPangoRectangle)); 
R_RegisterCCallable("RGtk2", "asRPangoAttribute", ((DL_FUNC)asRPangoAttribute)); 
R_RegisterCCallable("RGtk2", "asRPangoAttributeCopy", ((DL_FUNC)asRPangoAttributeCopy)); 
R_RegisterCCallable("RGtk2", "toRPangoAttribute", ((DL_FUNC)toRPangoAttribute)); 
