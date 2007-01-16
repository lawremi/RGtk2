#include <exports/atkUserFuncExports.c>

#include <exports/atkClassExports.c>

R_RegisterCCallable("RGtk2", "asCAtkAttributeSet", ((DL_FUNC)asCAtkAttributeSet)); 
R_RegisterCCallable("RGtk2", "asCAtkAttribute", ((DL_FUNC)asCAtkAttribute)); 
R_RegisterCCallable("RGtk2", "asRAtkAttributeSet", ((DL_FUNC)asRAtkAttributeSet)); 
R_RegisterCCallable("RGtk2", "asRAtkAttribute", ((DL_FUNC)asRAtkAttribute)); 
R_RegisterCCallable("RGtk2", "asCAtkTextRectangle", ((DL_FUNC)asCAtkTextRectangle)); 
R_RegisterCCallable("RGtk2", "asRAtkTextRectangle", ((DL_FUNC)asRAtkTextRectangle)); 
R_RegisterCCallable("RGtk2", "asRAtkTextRange", ((DL_FUNC)asRAtkTextRange)); 
R_RegisterCCallable("RGtk2", "asCAtkTextRange", ((DL_FUNC)asCAtkTextRange)); 
R_RegisterCCallable("RGtk2", "asRAtkKeyEventStruct", ((DL_FUNC)asRAtkKeyEventStruct)); 
R_RegisterCCallable("RGtk2", "asCAtkRectangle", ((DL_FUNC)asCAtkRectangle)); 
R_RegisterCCallable("RGtk2", "asRAtkRectangle", ((DL_FUNC)asRAtkRectangle)); 
