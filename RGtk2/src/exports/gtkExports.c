#include <exports/gtkUserFuncExports.c>

#include <exports/gtkClassExports.c>

R_RegisterCCallable("RGtk2", "S_GtkClipboardClearFunc", ((DL_FUNC)S_GtkClipboardClearFunc)); 
R_RegisterCCallable("RGtk2", "S_GtkSignalFunc", ((DL_FUNC)S_GtkSignalFunc)); 
R_RegisterCCallable("RGtk2", "S_GtkTextBufferSerializeFunc", ((DL_FUNC)S_GtkTextBufferSerializeFunc)); 
R_RegisterCCallable("RGtk2", "asRGdkAtom", ((DL_FUNC)asRGdkAtom)); 
R_RegisterCCallable("RGtk2", "asCGdkAtom", ((DL_FUNC)asCGdkAtom)); 
R_RegisterCCallable("RGtk2", "asCGdkAtomArray", ((DL_FUNC)asCGdkAtomArray)); 
R_RegisterCCallable("RGtk2", "asCGdkGeometry", ((DL_FUNC)asCGdkGeometry)); 
R_RegisterCCallable("RGtk2", "asCGdkGCValues", ((DL_FUNC)asCGdkGCValues)); 
R_RegisterCCallable("RGtk2", "asCGdkGCValuesWithMask", ((DL_FUNC)asCGdkGCValuesWithMask)); 
R_RegisterCCallable("RGtk2", "asCGdkWindowAttr", ((DL_FUNC)asCGdkWindowAttr)); 
R_RegisterCCallable("RGtk2", "asRGdkTimeCoord", ((DL_FUNC)asRGdkTimeCoord)); 
R_RegisterCCallable("RGtk2", "asCGdkRectangle", ((DL_FUNC)asCGdkRectangle)); 
R_RegisterCCallable("RGtk2", "asRGdkRectangle", ((DL_FUNC)asRGdkRectangle)); 
R_RegisterCCallable("RGtk2", "asCGdkRgbCmap", ((DL_FUNC)asCGdkRgbCmap)); 
R_RegisterCCallable("RGtk2", "asRGdkRgbCmap", ((DL_FUNC)asRGdkRgbCmap)); 
R_RegisterCCallable("RGtk2", "asCGdkKeymapKey", ((DL_FUNC)asCGdkKeymapKey)); 
R_RegisterCCallable("RGtk2", "asRGdkKeymapKey", ((DL_FUNC)asRGdkKeymapKey)); 
R_RegisterCCallable("RGtk2", "asCGdkPoint", ((DL_FUNC)asCGdkPoint)); 
R_RegisterCCallable("RGtk2", "asRGdkPoint", ((DL_FUNC)asRGdkPoint)); 
R_RegisterCCallable("RGtk2", "asCGdkSegment", ((DL_FUNC)asCGdkSegment)); 
R_RegisterCCallable("RGtk2", "asRGdkSegment", ((DL_FUNC)asRGdkSegment)); 
R_RegisterCCallable("RGtk2", "asCGdkColor", ((DL_FUNC)asCGdkColor)); 
R_RegisterCCallable("RGtk2", "asRGdkColor", ((DL_FUNC)asRGdkColor)); 
R_RegisterCCallable("RGtk2", "asRGdkNativeWindow", ((DL_FUNC)asRGdkNativeWindow)); 
R_RegisterCCallable("RGtk2", "asCGdkNativeWindow", ((DL_FUNC)asCGdkNativeWindow)); 
R_RegisterCCallable("RGtk2", "asRGdkEvent", ((DL_FUNC)asRGdkEvent)); 
R_RegisterCCallable("RGtk2", "toRGdkEvent", ((DL_FUNC)toRGdkEvent)); 
R_RegisterCCallable("RGtk2", "toRGdkFont", ((DL_FUNC)toRGdkFont)); 
R_RegisterCCallable("RGtk2", "asCGdkTrapezoid", ((DL_FUNC)asCGdkTrapezoid)); 
R_RegisterCCallable("RGtk2", "asRGdkTrapezoid", ((DL_FUNC)asRGdkTrapezoid)); 
R_RegisterCCallable("RGtk2", "asRGdkGCValues", ((DL_FUNC)asRGdkGCValues)); 
R_RegisterCCallable("RGtk2", "asCGdkSpan", ((DL_FUNC)asCGdkSpan)); 
R_RegisterCCallable("RGtk2", "asRGdkSpan", ((DL_FUNC)asRGdkSpan)); 
R_RegisterCCallable("RGtk2", "asCGtkTargetEntry", ((DL_FUNC)asCGtkTargetEntry)); 
R_RegisterCCallable("RGtk2", "asRGtkTargetEntry", ((DL_FUNC)asRGtkTargetEntry)); 
R_RegisterCCallable("RGtk2", "asCGtkFileFilterInfo", ((DL_FUNC)asCGtkFileFilterInfo)); 
R_RegisterCCallable("RGtk2", "asRGtkFileFilterInfo", ((DL_FUNC)asRGtkFileFilterInfo)); 
R_RegisterCCallable("RGtk2", "asCGtkSettingsValue", ((DL_FUNC)asCGtkSettingsValue)); 
R_RegisterCCallable("RGtk2", "asCGtkStockItem", ((DL_FUNC)asCGtkStockItem)); 
R_RegisterCCallable("RGtk2", "asRGtkStockItem", ((DL_FUNC)asRGtkStockItem)); 
R_RegisterCCallable("RGtk2", "asCGtkItemFactoryEntry", ((DL_FUNC)asCGtkItemFactoryEntry)); 
R_RegisterCCallable("RGtk2", "asCGtkItemFactoryEntry2", ((DL_FUNC)asCGtkItemFactoryEntry2)); 
R_RegisterCCallable("RGtk2", "R_createGtkItemFactoryEntry", ((DL_FUNC)R_createGtkItemFactoryEntry)); 
R_RegisterCCallable("RGtk2", "asCGtkAllocation", ((DL_FUNC)asCGtkAllocation)); 
R_RegisterCCallable("RGtk2", "asRGtkAllocation", ((DL_FUNC)asRGtkAllocation)); 
#if GTK_CHECK_VERSION(2, 10, 0)
R_RegisterCCallable("RGtk2", "asCGtkRecentFilterInfo", ((DL_FUNC)asCGtkRecentFilterInfo));
#endif 
#if GTK_CHECK_VERSION(2, 10, 0)
R_RegisterCCallable("RGtk2", "asRGtkRecentFilterInfo", ((DL_FUNC)asRGtkRecentFilterInfo));
#endif 
#if GTK_CHECK_VERSION(2, 10, 0)
R_RegisterCCallable("RGtk2", "asCGtkRecentData", ((DL_FUNC)asCGtkRecentData));
#endif 
#if GTK_CHECK_VERSION(2, 10, 0)
R_RegisterCCallable("RGtk2", "asRGtkPageRange", ((DL_FUNC)asRGtkPageRange));
#endif 
#if GTK_CHECK_VERSION(2, 10, 0)
R_RegisterCCallable("RGtk2", "asCGtkPageRange", ((DL_FUNC)asCGtkPageRange));
#endif 
R_RegisterCCallable("RGtk2", "asRGtkAccelKey", ((DL_FUNC)asRGtkAccelKey)); 
