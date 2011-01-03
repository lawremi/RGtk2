#include <RGtk2/gobject.h>
#include <RGtk2/gdk.h>

USER_OBJECT_
S_GdkDeviceGetName (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result = NULL_USER_OBJECT;

   GdkDevice *obj;
   gchar* val;

   obj = GDK_DEVICE(getPtrValue(s_obj)) ;
   val = obj->name;
   _result = asRString(val);

   return(_result);
} 
USER_OBJECT_
S_GdkDeviceGetSource (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result = NULL_USER_OBJECT;

   GdkDevice *obj;
   GdkInputSource val;

   obj = GDK_DEVICE(getPtrValue(s_obj)) ;
   val = obj->source;
   _result = asREnum(val, GDK_TYPE_INPUT_SOURCE);

   return(_result);
} 
USER_OBJECT_
S_GdkDeviceGetMode (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result = NULL_USER_OBJECT;

   GdkDevice *obj;
   GdkInputMode val;

   obj = GDK_DEVICE(getPtrValue(s_obj)) ;
   val = obj->mode;
   _result = asREnum(val, GDK_TYPE_INPUT_MODE);

   return(_result);
} 
USER_OBJECT_
S_GdkDeviceGetHasCursor (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result = NULL_USER_OBJECT;

   GdkDevice *obj;
   gboolean val;

   obj = GDK_DEVICE(getPtrValue(s_obj)) ;
   val = obj->has_cursor;
   _result = asRLogical(val);

   return(_result);
} 
USER_OBJECT_
S_GdkDeviceGetNumAxes (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result = NULL_USER_OBJECT;

   GdkDevice *obj;
   gint val;

   obj = GDK_DEVICE(getPtrValue(s_obj)) ;
   val = obj->num_axes;
   _result = asRInteger(val);

   return(_result);
} 
USER_OBJECT_
S_GdkDeviceGetAxes (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result = NULL_USER_OBJECT;

   GdkDevice *obj;
   GdkDeviceAxis* val;

   obj = GDK_DEVICE(getPtrValue(s_obj)) ;
   val = obj->axes;
   _result = toRPointer(val, "GdkDeviceAxis");

   return(_result);
} 
USER_OBJECT_
S_GdkDeviceGetNumKeys (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result = NULL_USER_OBJECT;

   GdkDevice *obj;
   gint val;

   obj = GDK_DEVICE(getPtrValue(s_obj)) ;
   val = obj->num_keys;
   _result = asRInteger(val);

   return(_result);
} 
USER_OBJECT_
S_GdkDeviceGetKeys (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result = NULL_USER_OBJECT;

   GdkDevice *obj;
   GdkDeviceKey* val;

   obj = GDK_DEVICE(getPtrValue(s_obj)) ;
   val = obj->keys;
   _result = toRPointer(val, "GdkDeviceKey");

   return(_result);
} 
USER_OBJECT_
S_GdkDragContextGetProtocol (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result = NULL_USER_OBJECT;

   GdkDragContext *obj;
   GdkDragProtocol val;

   obj = GDK_DRAG_CONTEXT(getPtrValue(s_obj)) ;
   val = obj->protocol;
   _result = asREnum(val, GDK_TYPE_DRAG_PROTOCOL);

   return(_result);
} 
USER_OBJECT_
S_GdkDragContextGetIsSource (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result = NULL_USER_OBJECT;

   GdkDragContext *obj;
   gboolean val;

   obj = GDK_DRAG_CONTEXT(getPtrValue(s_obj)) ;
   val = obj->is_source;
   _result = asRLogical(val);

   return(_result);
} 
USER_OBJECT_
S_GdkDragContextGetSourceWindow (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result = NULL_USER_OBJECT;

   GdkDragContext *obj;
   GdkWindow* val;

   obj = GDK_DRAG_CONTEXT(getPtrValue(s_obj)) ;
   val = obj->source_window;
   _result = toRPointerWithRef(val, "GdkWindow");

   return(_result);
} 
USER_OBJECT_
S_GdkDragContextGetDestWindow (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result = NULL_USER_OBJECT;

   GdkDragContext *obj;
   GdkWindow* val;

   obj = GDK_DRAG_CONTEXT(getPtrValue(s_obj)) ;
   val = obj->dest_window;
   _result = toRPointerWithRef(val, "GdkWindow");

   return(_result);
} 
USER_OBJECT_
S_GdkDragContextGetTargets (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result = NULL_USER_OBJECT;

   GdkDragContext *obj;
   GList* val;

   obj = GDK_DRAG_CONTEXT(getPtrValue(s_obj)) ;
   val = obj->targets;
   _result = asRGListConv(val, ((ElementConverter)asRGdkAtom));

   return(_result);
} 
USER_OBJECT_
S_GdkDragContextGetActions (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result = NULL_USER_OBJECT;

   GdkDragContext *obj;
   GdkDragAction val;

   obj = GDK_DRAG_CONTEXT(getPtrValue(s_obj)) ;
   val = obj->actions;
   _result = asRFlag(val, GDK_TYPE_DRAG_ACTION);

   return(_result);
} 
USER_OBJECT_
S_GdkDragContextGetSuggestedAction (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result = NULL_USER_OBJECT;

   GdkDragContext *obj;
   GdkDragAction val;

   obj = GDK_DRAG_CONTEXT(getPtrValue(s_obj)) ;
   val = obj->suggested_action;
   _result = asRFlag(val, GDK_TYPE_DRAG_ACTION);

   return(_result);
} 
USER_OBJECT_
S_GdkDragContextGetAction (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result = NULL_USER_OBJECT;

   GdkDragContext *obj;
   GdkDragAction val;

   obj = GDK_DRAG_CONTEXT(getPtrValue(s_obj)) ;
   val = obj->action;
   _result = asRFlag(val, GDK_TYPE_DRAG_ACTION);

   return(_result);
} 
USER_OBJECT_
S_GdkDragContextGetStartTime (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result = NULL_USER_OBJECT;

   GdkDragContext *obj;
   guint32 val;

   obj = GDK_DRAG_CONTEXT(getPtrValue(s_obj)) ;
   val = obj->start_time;
   _result = asRNumeric(val);

   return(_result);
} 
USER_OBJECT_
S_GdkImageGetType (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result = NULL_USER_OBJECT;

   GdkImage *obj;
   GdkImageType val;

   obj = GDK_IMAGE(getPtrValue(s_obj)) ;
   val = obj->type;
   _result = asREnum(val, GDK_TYPE_IMAGE_TYPE);

   return(_result);
} 
USER_OBJECT_
S_GdkImageGetVisual (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result = NULL_USER_OBJECT;

   GdkImage *obj;
   GdkVisual* val;

   obj = GDK_IMAGE(getPtrValue(s_obj)) ;
   val = obj->visual;
   _result = toRPointerWithRef(val, "GdkVisual");

   return(_result);
} 
USER_OBJECT_
S_GdkImageGetByteOrder (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result = NULL_USER_OBJECT;

   GdkImage *obj;
   GdkByteOrder val;

   obj = GDK_IMAGE(getPtrValue(s_obj)) ;
   val = obj->byte_order;
   _result = asREnum(val, GDK_TYPE_BYTE_ORDER);

   return(_result);
} 
USER_OBJECT_
S_GdkImageGetWidth (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result = NULL_USER_OBJECT;

   GdkImage *obj;
   gint val;

   obj = GDK_IMAGE(getPtrValue(s_obj)) ;
   val = obj->width;
   _result = asRInteger(val);

   return(_result);
} 
USER_OBJECT_
S_GdkImageGetHeight (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result = NULL_USER_OBJECT;

   GdkImage *obj;
   gint val;

   obj = GDK_IMAGE(getPtrValue(s_obj)) ;
   val = obj->height;
   _result = asRInteger(val);

   return(_result);
} 
USER_OBJECT_
S_GdkImageGetDepth (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result = NULL_USER_OBJECT;

   GdkImage *obj;
   guint16 val;

   obj = GDK_IMAGE(getPtrValue(s_obj)) ;
   val = obj->depth;
   _result = asRInteger(val);

   return(_result);
} 
USER_OBJECT_
S_GdkImageGetBpp (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result = NULL_USER_OBJECT;

   GdkImage *obj;
   guint16 val;

   obj = GDK_IMAGE(getPtrValue(s_obj)) ;
   val = obj->bpp;
   _result = asRInteger(val);

   return(_result);
} 
USER_OBJECT_
S_GdkImageGetBpl (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result = NULL_USER_OBJECT;

   GdkImage *obj;
   guint16 val;

   obj = GDK_IMAGE(getPtrValue(s_obj)) ;
   val = obj->bpl;
   _result = asRInteger(val);

   return(_result);
} 
USER_OBJECT_
S_GdkImageGetBitsPerPixel (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result = NULL_USER_OBJECT;

   GdkImage *obj;
   guint16 val;

   obj = GDK_IMAGE(getPtrValue(s_obj)) ;
   val = obj->bits_per_pixel;
   _result = asRInteger(val);

   return(_result);
} 
USER_OBJECT_
S_GdkImageGetMem (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result = NULL_USER_OBJECT;

   GdkImage *obj;
   guchar* val;

   obj = GDK_IMAGE(getPtrValue(s_obj)) ;
   val = obj->mem;
   _result = asRRawArrayWithSize(val, obj->width*obj->height*obj->bpp);

   return(_result);
} 
USER_OBJECT_
S_GdkImageGetColormap (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result = NULL_USER_OBJECT;

   GdkImage *obj;
   GdkColormap* val;

   obj = GDK_IMAGE(getPtrValue(s_obj)) ;
   val = obj->colormap;
   _result = toRPointerWithRef(val, "GdkColormap");

   return(_result);
} 
USER_OBJECT_
S_GdkVisualGetType (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result = NULL_USER_OBJECT;

   GdkVisual *obj;
   GdkVisualType val;

   obj = GDK_VISUAL(getPtrValue(s_obj)) ;
   val = obj->type;
   _result = asREnum(val, GDK_TYPE_VISUAL_TYPE);

   return(_result);
} 
USER_OBJECT_
S_GdkVisualGetDepth (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result = NULL_USER_OBJECT;

   GdkVisual *obj;
   gint val;

   obj = GDK_VISUAL(getPtrValue(s_obj)) ;
   val = obj->depth;
   _result = asRInteger(val);

   return(_result);
} 
USER_OBJECT_
S_GdkVisualGetByteOrder (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result = NULL_USER_OBJECT;

   GdkVisual *obj;
   GdkByteOrder val;

   obj = GDK_VISUAL(getPtrValue(s_obj)) ;
   val = obj->byte_order;
   _result = asREnum(val, GDK_TYPE_BYTE_ORDER);

   return(_result);
} 
USER_OBJECT_
S_GdkVisualGetColormapSize (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result = NULL_USER_OBJECT;

   GdkVisual *obj;
   gint val;

   obj = GDK_VISUAL(getPtrValue(s_obj)) ;
   val = obj->colormap_size;
   _result = asRInteger(val);

   return(_result);
} 
USER_OBJECT_
S_GdkVisualGetBitsPerRgb (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result = NULL_USER_OBJECT;

   GdkVisual *obj;
   gint val;

   obj = GDK_VISUAL(getPtrValue(s_obj)) ;
   val = obj->bits_per_rgb;
   _result = asRInteger(val);

   return(_result);
} 
USER_OBJECT_
S_GdkVisualGetRedMask (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result = NULL_USER_OBJECT;

   GdkVisual *obj;
   guint32 val;

   obj = GDK_VISUAL(getPtrValue(s_obj)) ;
   val = obj->red_mask;
   _result = asRNumeric(val);

   return(_result);
} 
USER_OBJECT_
S_GdkVisualGetRedShift (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result = NULL_USER_OBJECT;

   GdkVisual *obj;
   gint val;

   obj = GDK_VISUAL(getPtrValue(s_obj)) ;
   val = obj->red_shift;
   _result = asRInteger(val);

   return(_result);
} 
USER_OBJECT_
S_GdkVisualGetRedPrec (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result = NULL_USER_OBJECT;

   GdkVisual *obj;
   gint val;

   obj = GDK_VISUAL(getPtrValue(s_obj)) ;
   val = obj->red_prec;
   _result = asRInteger(val);

   return(_result);
} 
USER_OBJECT_
S_GdkVisualGetGreenMask (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result = NULL_USER_OBJECT;

   GdkVisual *obj;
   guint32 val;

   obj = GDK_VISUAL(getPtrValue(s_obj)) ;
   val = obj->green_mask;
   _result = asRNumeric(val);

   return(_result);
} 
USER_OBJECT_
S_GdkVisualGetGreenShift (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result = NULL_USER_OBJECT;

   GdkVisual *obj;
   gint val;

   obj = GDK_VISUAL(getPtrValue(s_obj)) ;
   val = obj->green_shift;
   _result = asRInteger(val);

   return(_result);
} 
USER_OBJECT_
S_GdkVisualGetGreenPrec (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result = NULL_USER_OBJECT;

   GdkVisual *obj;
   gint val;

   obj = GDK_VISUAL(getPtrValue(s_obj)) ;
   val = obj->green_prec;
   _result = asRInteger(val);

   return(_result);
} 
USER_OBJECT_
S_GdkVisualGetBlueMask (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result = NULL_USER_OBJECT;

   GdkVisual *obj;
   guint32 val;

   obj = GDK_VISUAL(getPtrValue(s_obj)) ;
   val = obj->blue_mask;
   _result = asRNumeric(val);

   return(_result);
} 
USER_OBJECT_
S_GdkVisualGetBlueShift (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result = NULL_USER_OBJECT;

   GdkVisual *obj;
   gint val;

   obj = GDK_VISUAL(getPtrValue(s_obj)) ;
   val = obj->blue_shift;
   _result = asRInteger(val);

   return(_result);
} 
USER_OBJECT_
S_GdkVisualGetBluePrec (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result = NULL_USER_OBJECT;

   GdkVisual *obj;
   gint val;

   obj = GDK_VISUAL(getPtrValue(s_obj)) ;
   val = obj->blue_prec;
   _result = asRInteger(val);

   return(_result);
} 
USER_OBJECT_
S_GdkFontGetType (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result = NULL_USER_OBJECT;

   GdkFont *obj;
   GdkFontType val;

   obj = ((GdkFont*)getPtrValue(s_obj)) ;
   val = obj->type;
   _result = asREnum(val, GDK_TYPE_FONT_TYPE);

   return(_result);
} 
USER_OBJECT_
S_GdkFontGetAscent (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result = NULL_USER_OBJECT;

   GdkFont *obj;
   gint val;

   obj = ((GdkFont*)getPtrValue(s_obj)) ;
   val = obj->ascent;
   _result = asRInteger(val);

   return(_result);
} 
USER_OBJECT_
S_GdkFontGetDescent (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result = NULL_USER_OBJECT;

   GdkFont *obj;
   gint val;

   obj = ((GdkFont*)getPtrValue(s_obj)) ;
   val = obj->descent;
   _result = asRInteger(val);

   return(_result);
} 
USER_OBJECT_
S_GdkCursorGetType (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result = NULL_USER_OBJECT;

   GdkCursor *obj;
   GdkCursorType val;

   obj = ((GdkCursor*)getPtrValue(s_obj)) ;
   val = obj->type;
   _result = asREnum(val, GDK_TYPE_CURSOR_TYPE);

   return(_result);
} 
USER_OBJECT_
S_GdkEventAnyGetType (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result = NULL_USER_OBJECT;

   GdkEventAny *obj;
   GdkEventType val;

   obj = ((GdkEventAny*)getPtrValue(s_obj)) ;
   val = obj->type;
   _result = asREnum(val, GDK_TYPE_EVENT_TYPE);

   return(_result);
} 
USER_OBJECT_
S_GdkEventAnyGetWindow (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result = NULL_USER_OBJECT;

   GdkEventAny *obj;
   GdkWindow* val;

   obj = ((GdkEventAny*)getPtrValue(s_obj)) ;
   val = obj->window;
   _result = toRPointerWithRef(val, "GdkWindow");

   return(_result);
} 
USER_OBJECT_
S_GdkEventAnyGetSendEvent (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result = NULL_USER_OBJECT;

   GdkEventAny *obj;
   gint8 val;

   obj = ((GdkEventAny*)getPtrValue(s_obj)) ;
   val = obj->send_event;
   _result = asRRaw(val);

   return(_result);
} 
USER_OBJECT_
S_GdkEventKeyGetTime (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result = NULL_USER_OBJECT;

   GdkEventKey *obj;
   guint32 val;

   obj = ((GdkEventKey*)getPtrValue(s_obj)) ;
   val = obj->time;
   _result = asRNumeric(val);

   return(_result);
} 
USER_OBJECT_
S_GdkEventKeyGetState (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result = NULL_USER_OBJECT;

   GdkEventKey *obj;
   guint val;

   obj = ((GdkEventKey*)getPtrValue(s_obj)) ;
   val = obj->state;
   _result = asRNumeric(val);

   return(_result);
} 
USER_OBJECT_
S_GdkEventKeyGetKeyval (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result = NULL_USER_OBJECT;

   GdkEventKey *obj;
   guint val;

   obj = ((GdkEventKey*)getPtrValue(s_obj)) ;
   val = obj->keyval;
   _result = asRNumeric(val);

   return(_result);
} 
USER_OBJECT_
S_GdkEventKeyGetLength (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result = NULL_USER_OBJECT;

   GdkEventKey *obj;
   gint val;

   obj = ((GdkEventKey*)getPtrValue(s_obj)) ;
   val = obj->length;
   _result = asRInteger(val);

   return(_result);
} 
USER_OBJECT_
S_GdkEventKeyGetString (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result = NULL_USER_OBJECT;

   GdkEventKey *obj;
   gchar* val;

   obj = ((GdkEventKey*)getPtrValue(s_obj)) ;
   val = obj->string;
   _result = asRString(val);

   return(_result);
} 
USER_OBJECT_
S_GdkEventKeyGetHardwareKeycode (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result = NULL_USER_OBJECT;

   GdkEventKey *obj;
   guint16 val;

   obj = ((GdkEventKey*)getPtrValue(s_obj)) ;
   val = obj->hardware_keycode;
   _result = asRInteger(val);

   return(_result);
} 
USER_OBJECT_
S_GdkEventKeyGetGroup (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result = NULL_USER_OBJECT;

   GdkEventKey *obj;
   guint8 val;

   obj = ((GdkEventKey*)getPtrValue(s_obj)) ;
   val = obj->group;
   _result = asRRaw(val);

   return(_result);
} 
USER_OBJECT_
S_GdkEventSelectionGetSelection (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result = NULL_USER_OBJECT;

   GdkEventSelection *obj;
   GdkAtom val;

   obj = ((GdkEventSelection*)getPtrValue(s_obj)) ;
   val = obj->selection;
   _result = asRGdkAtom(val);

   return(_result);
} 
USER_OBJECT_
S_GdkEventSelectionGetTarget (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result = NULL_USER_OBJECT;

   GdkEventSelection *obj;
   GdkAtom val;

   obj = ((GdkEventSelection*)getPtrValue(s_obj)) ;
   val = obj->target;
   _result = asRGdkAtom(val);

   return(_result);
} 
USER_OBJECT_
S_GdkEventSelectionGetProperty (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result = NULL_USER_OBJECT;

   GdkEventSelection *obj;
   GdkAtom val;

   obj = ((GdkEventSelection*)getPtrValue(s_obj)) ;
   val = obj->property;
   _result = asRGdkAtom(val);

   return(_result);
} 
USER_OBJECT_
S_GdkEventSelectionGetTime (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result = NULL_USER_OBJECT;

   GdkEventSelection *obj;
   guint32 val;

   obj = ((GdkEventSelection*)getPtrValue(s_obj)) ;
   val = obj->time;
   _result = asRNumeric(val);

   return(_result);
} 
USER_OBJECT_
S_GdkEventSelectionGetRequestor (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result = NULL_USER_OBJECT;

   GdkEventSelection *obj;
   GdkNativeWindow val;

   obj = ((GdkEventSelection*)getPtrValue(s_obj)) ;
   val = obj->requestor;
   _result = asRGdkNativeWindow(val);

   return(_result);
} 
USER_OBJECT_
S_GdkEventDNDGetContext (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result = NULL_USER_OBJECT;

   GdkEventDND *obj;
   GdkDragContext* val;

   obj = ((GdkEventDND*)getPtrValue(s_obj)) ;
   val = obj->context;
   _result = toRPointerWithRef(val, "GdkDragContext");

   return(_result);
} 
USER_OBJECT_
S_GdkEventDNDGetTime (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result = NULL_USER_OBJECT;

   GdkEventDND *obj;
   guint32 val;

   obj = ((GdkEventDND*)getPtrValue(s_obj)) ;
   val = obj->time;
   _result = asRNumeric(val);

   return(_result);
} 
USER_OBJECT_
S_GdkEventDNDGetXRoot (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result = NULL_USER_OBJECT;

   GdkEventDND *obj;
   gshort val;

   obj = ((GdkEventDND*)getPtrValue(s_obj)) ;
   val = obj->x_root;
   _result = asRInteger(val);

   return(_result);
} 
USER_OBJECT_
S_GdkEventDNDGetYRoot (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result = NULL_USER_OBJECT;

   GdkEventDND *obj;
   gshort val;

   obj = ((GdkEventDND*)getPtrValue(s_obj)) ;
   val = obj->y_root;
   _result = asRInteger(val);

   return(_result);
} 
USER_OBJECT_
S_GdkEventExposeGetArea (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result = NULL_USER_OBJECT;

   GdkEventExpose *obj;
   GdkRectangle val;

   obj = ((GdkEventExpose*)getPtrValue(s_obj)) ;
   val = obj->area;
   _result = asRGdkRectangle(&val);

   return(_result);
} 
USER_OBJECT_
S_GdkEventExposeGetRegion (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result = NULL_USER_OBJECT;

   GdkEventExpose *obj;
   GdkRegion* val;

   obj = ((GdkEventExpose*)getPtrValue(s_obj)) ;
   val = obj->region;
   _result = toRPointer(val, "GdkRegion");

   return(_result);
} 
USER_OBJECT_
S_GdkEventExposeGetCount (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result = NULL_USER_OBJECT;

   GdkEventExpose *obj;
   gint val;

   obj = ((GdkEventExpose*)getPtrValue(s_obj)) ;
   val = obj->count;
   _result = asRInteger(val);

   return(_result);
} 
USER_OBJECT_
S_GdkEventButtonGetTime (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result = NULL_USER_OBJECT;

   GdkEventButton *obj;
   guint32 val;

   obj = ((GdkEventButton*)getPtrValue(s_obj)) ;
   val = obj->time;
   _result = asRNumeric(val);

   return(_result);
} 
USER_OBJECT_
S_GdkEventButtonGetX (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result = NULL_USER_OBJECT;

   GdkEventButton *obj;
   gdouble val;

   obj = ((GdkEventButton*)getPtrValue(s_obj)) ;
   val = obj->x;
   _result = asRNumeric(val);

   return(_result);
} 
USER_OBJECT_
S_GdkEventButtonGetY (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result = NULL_USER_OBJECT;

   GdkEventButton *obj;
   gdouble val;

   obj = ((GdkEventButton*)getPtrValue(s_obj)) ;
   val = obj->y;
   _result = asRNumeric(val);

   return(_result);
} 
USER_OBJECT_
S_GdkEventButtonGetAxes (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result = NULL_USER_OBJECT;

   GdkEventButton *obj;
   gdouble* val;

   obj = ((GdkEventButton*)getPtrValue(s_obj)) ;
   val = obj->axes;
   _result = asRNumericArray(val);

   return(_result);
} 
USER_OBJECT_
S_GdkEventButtonGetState (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result = NULL_USER_OBJECT;

   GdkEventButton *obj;
   guint val;

   obj = ((GdkEventButton*)getPtrValue(s_obj)) ;
   val = obj->state;
   _result = asRNumeric(val);

   return(_result);
} 
USER_OBJECT_
S_GdkEventButtonGetButton (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result = NULL_USER_OBJECT;

   GdkEventButton *obj;
   guint val;

   obj = ((GdkEventButton*)getPtrValue(s_obj)) ;
   val = obj->button;
   _result = asRNumeric(val);

   return(_result);
} 
USER_OBJECT_
S_GdkEventButtonGetDevice (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result = NULL_USER_OBJECT;

   GdkEventButton *obj;
   GdkDevice* val;

   obj = ((GdkEventButton*)getPtrValue(s_obj)) ;
   val = obj->device;
   _result = toRPointerWithRef(val, "GdkDevice");

   return(_result);
} 
USER_OBJECT_
S_GdkEventButtonGetXRoot (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result = NULL_USER_OBJECT;

   GdkEventButton *obj;
   gdouble val;

   obj = ((GdkEventButton*)getPtrValue(s_obj)) ;
   val = obj->x_root;
   _result = asRNumeric(val);

   return(_result);
} 
USER_OBJECT_
S_GdkEventButtonGetYRoot (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result = NULL_USER_OBJECT;

   GdkEventButton *obj;
   gdouble val;

   obj = ((GdkEventButton*)getPtrValue(s_obj)) ;
   val = obj->y_root;
   _result = asRNumeric(val);

   return(_result);
} 
USER_OBJECT_
S_GdkEventScrollGetTime (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result = NULL_USER_OBJECT;

   GdkEventScroll *obj;
   guint32 val;

   obj = ((GdkEventScroll*)getPtrValue(s_obj)) ;
   val = obj->time;
   _result = asRNumeric(val);

   return(_result);
} 
USER_OBJECT_
S_GdkEventScrollGetX (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result = NULL_USER_OBJECT;

   GdkEventScroll *obj;
   gdouble val;

   obj = ((GdkEventScroll*)getPtrValue(s_obj)) ;
   val = obj->x;
   _result = asRNumeric(val);

   return(_result);
} 
USER_OBJECT_
S_GdkEventScrollGetY (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result = NULL_USER_OBJECT;

   GdkEventScroll *obj;
   gdouble val;

   obj = ((GdkEventScroll*)getPtrValue(s_obj)) ;
   val = obj->y;
   _result = asRNumeric(val);

   return(_result);
} 
USER_OBJECT_
S_GdkEventScrollGetState (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result = NULL_USER_OBJECT;

   GdkEventScroll *obj;
   guint val;

   obj = ((GdkEventScroll*)getPtrValue(s_obj)) ;
   val = obj->state;
   _result = asRNumeric(val);

   return(_result);
} 
USER_OBJECT_
S_GdkEventScrollGetDirection (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result = NULL_USER_OBJECT;

   GdkEventScroll *obj;
   GdkScrollDirection val;

   obj = ((GdkEventScroll*)getPtrValue(s_obj)) ;
   val = obj->direction;
   _result = asREnum(val, GDK_TYPE_SCROLL_DIRECTION);

   return(_result);
} 
USER_OBJECT_
S_GdkEventScrollGetDevice (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result = NULL_USER_OBJECT;

   GdkEventScroll *obj;
   GdkDevice* val;

   obj = ((GdkEventScroll*)getPtrValue(s_obj)) ;
   val = obj->device;
   _result = toRPointerWithRef(val, "GdkDevice");

   return(_result);
} 
USER_OBJECT_
S_GdkEventScrollGetXRoot (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result = NULL_USER_OBJECT;

   GdkEventScroll *obj;
   gdouble val;

   obj = ((GdkEventScroll*)getPtrValue(s_obj)) ;
   val = obj->x_root;
   _result = asRNumeric(val);

   return(_result);
} 
USER_OBJECT_
S_GdkEventScrollGetYRoot (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result = NULL_USER_OBJECT;

   GdkEventScroll *obj;
   gdouble val;

   obj = ((GdkEventScroll*)getPtrValue(s_obj)) ;
   val = obj->y_root;
   _result = asRNumeric(val);

   return(_result);
} 
USER_OBJECT_
S_GdkEventMotionGetTime (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result = NULL_USER_OBJECT;

   GdkEventMotion *obj;
   guint32 val;

   obj = ((GdkEventMotion*)getPtrValue(s_obj)) ;
   val = obj->time;
   _result = asRNumeric(val);

   return(_result);
} 
USER_OBJECT_
S_GdkEventMotionGetX (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result = NULL_USER_OBJECT;

   GdkEventMotion *obj;
   gdouble val;

   obj = ((GdkEventMotion*)getPtrValue(s_obj)) ;
   val = obj->x;
   _result = asRNumeric(val);

   return(_result);
} 
USER_OBJECT_
S_GdkEventMotionGetY (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result = NULL_USER_OBJECT;

   GdkEventMotion *obj;
   gdouble val;

   obj = ((GdkEventMotion*)getPtrValue(s_obj)) ;
   val = obj->y;
   _result = asRNumeric(val);

   return(_result);
} 
USER_OBJECT_
S_GdkEventMotionGetAxes (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result = NULL_USER_OBJECT;

   GdkEventMotion *obj;
   gdouble* val;

   obj = ((GdkEventMotion*)getPtrValue(s_obj)) ;
   val = obj->axes;
   _result = asRNumericArray(val);

   return(_result);
} 
USER_OBJECT_
S_GdkEventMotionGetState (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result = NULL_USER_OBJECT;

   GdkEventMotion *obj;
   guint val;

   obj = ((GdkEventMotion*)getPtrValue(s_obj)) ;
   val = obj->state;
   _result = asRNumeric(val);

   return(_result);
} 
USER_OBJECT_
S_GdkEventMotionGetIsHint (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result = NULL_USER_OBJECT;

   GdkEventMotion *obj;
   gint16 val;

   obj = ((GdkEventMotion*)getPtrValue(s_obj)) ;
   val = obj->is_hint;
   _result = asRInteger(val);

   return(_result);
} 
USER_OBJECT_
S_GdkEventMotionGetDevice (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result = NULL_USER_OBJECT;

   GdkEventMotion *obj;
   GdkDevice* val;

   obj = ((GdkEventMotion*)getPtrValue(s_obj)) ;
   val = obj->device;
   _result = toRPointerWithRef(val, "GdkDevice");

   return(_result);
} 
USER_OBJECT_
S_GdkEventMotionGetXRoot (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result = NULL_USER_OBJECT;

   GdkEventMotion *obj;
   gdouble val;

   obj = ((GdkEventMotion*)getPtrValue(s_obj)) ;
   val = obj->x_root;
   _result = asRNumeric(val);

   return(_result);
} 
USER_OBJECT_
S_GdkEventMotionGetYRoot (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result = NULL_USER_OBJECT;

   GdkEventMotion *obj;
   gdouble val;

   obj = ((GdkEventMotion*)getPtrValue(s_obj)) ;
   val = obj->y_root;
   _result = asRNumeric(val);

   return(_result);
} 
USER_OBJECT_
S_GdkEventVisibilityGetState (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result = NULL_USER_OBJECT;

   GdkEventVisibility *obj;
   GdkVisibilityState val;

   obj = ((GdkEventVisibility*)getPtrValue(s_obj)) ;
   val = obj->state;
   _result = asREnum(val, GDK_TYPE_VISIBILITY_STATE);

   return(_result);
} 
USER_OBJECT_
S_GdkEventCrossingGetTime (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result = NULL_USER_OBJECT;

   GdkEventCrossing *obj;
   guint32 val;

   obj = ((GdkEventCrossing*)getPtrValue(s_obj)) ;
   val = obj->time;
   _result = asRNumeric(val);

   return(_result);
} 
USER_OBJECT_
S_GdkEventCrossingGetX (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result = NULL_USER_OBJECT;

   GdkEventCrossing *obj;
   gdouble val;

   obj = ((GdkEventCrossing*)getPtrValue(s_obj)) ;
   val = obj->x;
   _result = asRNumeric(val);

   return(_result);
} 
USER_OBJECT_
S_GdkEventCrossingGetY (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result = NULL_USER_OBJECT;

   GdkEventCrossing *obj;
   gdouble val;

   obj = ((GdkEventCrossing*)getPtrValue(s_obj)) ;
   val = obj->y;
   _result = asRNumeric(val);

   return(_result);
} 
USER_OBJECT_
S_GdkEventCrossingGetXRoot (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result = NULL_USER_OBJECT;

   GdkEventCrossing *obj;
   gdouble val;

   obj = ((GdkEventCrossing*)getPtrValue(s_obj)) ;
   val = obj->x_root;
   _result = asRNumeric(val);

   return(_result);
} 
USER_OBJECT_
S_GdkEventCrossingGetYRoot (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result = NULL_USER_OBJECT;

   GdkEventCrossing *obj;
   gdouble val;

   obj = ((GdkEventCrossing*)getPtrValue(s_obj)) ;
   val = obj->y_root;
   _result = asRNumeric(val);

   return(_result);
} 
USER_OBJECT_
S_GdkEventCrossingGetMode (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result = NULL_USER_OBJECT;

   GdkEventCrossing *obj;
   GdkCrossingMode val;

   obj = ((GdkEventCrossing*)getPtrValue(s_obj)) ;
   val = obj->mode;
   _result = asREnum(val, GDK_TYPE_CROSSING_MODE);

   return(_result);
} 
USER_OBJECT_
S_GdkEventCrossingGetDetail (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result = NULL_USER_OBJECT;

   GdkEventCrossing *obj;
   GdkNotifyType val;

   obj = ((GdkEventCrossing*)getPtrValue(s_obj)) ;
   val = obj->detail;
   _result = asREnum(val, GDK_TYPE_NOTIFY_TYPE);

   return(_result);
} 
USER_OBJECT_
S_GdkEventCrossingGetFocus (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result = NULL_USER_OBJECT;

   GdkEventCrossing *obj;
   gboolean val;

   obj = ((GdkEventCrossing*)getPtrValue(s_obj)) ;
   val = obj->focus;
   _result = asRLogical(val);

   return(_result);
} 
USER_OBJECT_
S_GdkEventCrossingGetState (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result = NULL_USER_OBJECT;

   GdkEventCrossing *obj;
   guint val;

   obj = ((GdkEventCrossing*)getPtrValue(s_obj)) ;
   val = obj->state;
   _result = asRNumeric(val);

   return(_result);
} 
USER_OBJECT_
S_GdkEventFocusGetIn (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result = NULL_USER_OBJECT;

   GdkEventFocus *obj;
   gint16 val;

   obj = ((GdkEventFocus*)getPtrValue(s_obj)) ;
   val = obj->in;
   _result = asRInteger(val);

   return(_result);
} 
USER_OBJECT_
S_GdkEventConfigureGetX (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result = NULL_USER_OBJECT;

   GdkEventConfigure *obj;
   gint val;

   obj = ((GdkEventConfigure*)getPtrValue(s_obj)) ;
   val = obj->x;
   _result = asRInteger(val);

   return(_result);
} 
USER_OBJECT_
S_GdkEventConfigureGetY (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result = NULL_USER_OBJECT;

   GdkEventConfigure *obj;
   gint val;

   obj = ((GdkEventConfigure*)getPtrValue(s_obj)) ;
   val = obj->y;
   _result = asRInteger(val);

   return(_result);
} 
USER_OBJECT_
S_GdkEventConfigureGetWidth (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result = NULL_USER_OBJECT;

   GdkEventConfigure *obj;
   gint val;

   obj = ((GdkEventConfigure*)getPtrValue(s_obj)) ;
   val = obj->width;
   _result = asRInteger(val);

   return(_result);
} 
USER_OBJECT_
S_GdkEventConfigureGetHeight (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result = NULL_USER_OBJECT;

   GdkEventConfigure *obj;
   gint val;

   obj = ((GdkEventConfigure*)getPtrValue(s_obj)) ;
   val = obj->height;
   _result = asRInteger(val);

   return(_result);
} 
USER_OBJECT_
S_GdkEventPropertyGetAtom (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result = NULL_USER_OBJECT;

   GdkEventProperty *obj;
   GdkAtom val;

   obj = ((GdkEventProperty*)getPtrValue(s_obj)) ;
   val = obj->atom;
   _result = asRGdkAtom(val);

   return(_result);
} 
USER_OBJECT_
S_GdkEventPropertyGetTime (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result = NULL_USER_OBJECT;

   GdkEventProperty *obj;
   guint32 val;

   obj = ((GdkEventProperty*)getPtrValue(s_obj)) ;
   val = obj->time;
   _result = asRNumeric(val);

   return(_result);
} 
USER_OBJECT_
S_GdkEventPropertyGetState (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result = NULL_USER_OBJECT;

   GdkEventProperty *obj;
   guint val;

   obj = ((GdkEventProperty*)getPtrValue(s_obj)) ;
   val = obj->state;
   _result = asRNumeric(val);

   return(_result);
} 
USER_OBJECT_
S_GdkEventProximityGetTime (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result = NULL_USER_OBJECT;

   GdkEventProximity *obj;
   guint32 val;

   obj = ((GdkEventProximity*)getPtrValue(s_obj)) ;
   val = obj->time;
   _result = asRNumeric(val);

   return(_result);
} 
USER_OBJECT_
S_GdkEventProximityGetDevice (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result = NULL_USER_OBJECT;

   GdkEventProximity *obj;
   GdkDevice* val;

   obj = ((GdkEventProximity*)getPtrValue(s_obj)) ;
   val = obj->device;
   _result = toRPointerWithRef(val, "GdkDevice");

   return(_result);
} 
USER_OBJECT_
S_GdkEventWindowStateGetChangedMask (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result = NULL_USER_OBJECT;

   GdkEventWindowState *obj;
   GdkWindowState val;

   obj = ((GdkEventWindowState*)getPtrValue(s_obj)) ;
   val = obj->changed_mask;
   _result = asRFlag(val, GDK_TYPE_WINDOW_STATE);

   return(_result);
} 
USER_OBJECT_
S_GdkEventWindowStateGetNewWindowState (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result = NULL_USER_OBJECT;

   GdkEventWindowState *obj;
   GdkWindowState val;

   obj = ((GdkEventWindowState*)getPtrValue(s_obj)) ;
   val = obj->new_window_state;
   _result = asRFlag(val, GDK_TYPE_WINDOW_STATE);

   return(_result);
} 
USER_OBJECT_
S_GdkEventSettingGetAction (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result = NULL_USER_OBJECT;

   GdkEventSetting *obj;
   GdkSettingAction val;

   obj = ((GdkEventSetting*)getPtrValue(s_obj)) ;
   val = obj->action;
   _result = asREnum(val, GDK_TYPE_SETTING_ACTION);

   return(_result);
} 
USER_OBJECT_
S_GdkEventSettingGetName (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result = NULL_USER_OBJECT;

   GdkEventSetting *obj;
   char* val;

   obj = ((GdkEventSetting*)getPtrValue(s_obj)) ;
   val = obj->name;
   _result = asRString(val);

   return(_result);
} 
USER_OBJECT_
S_GdkEventOwnerChangeGetOwner (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result = NULL_USER_OBJECT;

   GdkEventOwnerChange *obj;
   GdkNativeWindow val;

   obj = ((GdkEventOwnerChange*)getPtrValue(s_obj)) ;
   val = obj->owner;
   _result = asRGdkNativeWindow(val);

   return(_result);
} 
USER_OBJECT_
S_GdkEventOwnerChangeGetReason (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result = NULL_USER_OBJECT;

   GdkEventOwnerChange *obj;
   GdkOwnerChange val;

   obj = ((GdkEventOwnerChange*)getPtrValue(s_obj)) ;
   val = obj->reason;
   _result = asREnum(val, GDK_TYPE_OWNER_CHANGE);

   return(_result);
} 
USER_OBJECT_
S_GdkEventOwnerChangeGetSelection (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result = NULL_USER_OBJECT;

   GdkEventOwnerChange *obj;
   GdkAtom val;

   obj = ((GdkEventOwnerChange*)getPtrValue(s_obj)) ;
   val = obj->selection;
   _result = asRGdkAtom(val);

   return(_result);
} 
USER_OBJECT_
S_GdkEventOwnerChangeGetTime (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result = NULL_USER_OBJECT;

   GdkEventOwnerChange *obj;
   guint32 val;

   obj = ((GdkEventOwnerChange*)getPtrValue(s_obj)) ;
   val = obj->time;
   _result = asRNumeric(val);

   return(_result);
} 
USER_OBJECT_
S_GdkEventOwnerChangeGetSelectionTime (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result = NULL_USER_OBJECT;

   GdkEventOwnerChange *obj;
   guint32 val;

   obj = ((GdkEventOwnerChange*)getPtrValue(s_obj)) ;
   val = obj->selection_time;
   _result = asRNumeric(val);

   return(_result);
} 
USER_OBJECT_
S_GdkEventClientGetMessageType (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result = NULL_USER_OBJECT;

   GdkEventClient *obj;
   GdkAtom val;

   obj = ((GdkEventClient*)getPtrValue(s_obj)) ;
   val = obj->message_type;
   _result = asRGdkAtom(val);

   return(_result);
} 
USER_OBJECT_
S_GdkEventGrabBrokenGetKeyboard (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result = NULL_USER_OBJECT;

   GdkEventGrabBroken *obj;
   gboolean val;

   obj = ((GdkEventGrabBroken*)getPtrValue(s_obj)) ;
   val = obj->keyboard;
   _result = asRLogical(val);

   return(_result);
} 
USER_OBJECT_
S_GdkEventGrabBrokenGetImplicit (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result = NULL_USER_OBJECT;

   GdkEventGrabBroken *obj;
   gboolean val;

   obj = ((GdkEventGrabBroken*)getPtrValue(s_obj)) ;
   val = obj->implicit;
   _result = asRLogical(val);

   return(_result);
} 
USER_OBJECT_
S_GdkEventGrabBrokenGetGrabWindow (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result = NULL_USER_OBJECT;

   GdkEventGrabBroken *obj;
   GdkWindow* val;

   obj = ((GdkEventGrabBroken*)getPtrValue(s_obj)) ;
   val = obj->grab_window;
   _result = toRPointerWithRef(val, "GdkWindow");

   return(_result);
} 
USER_OBJECT_
S_GdkDeviceKeyGetKeyval (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result = NULL_USER_OBJECT;

   GdkDeviceKey *obj;
   guint val;

   obj = ((GdkDeviceKey*)getPtrValue(s_obj)) ;
   val = obj->keyval;
   _result = asRNumeric(val);

   return(_result);
} 
USER_OBJECT_
S_GdkDeviceKeyGetModifiers (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result = NULL_USER_OBJECT;

   GdkDeviceKey *obj;
   GdkModifierType val;

   obj = ((GdkDeviceKey*)getPtrValue(s_obj)) ;
   val = obj->modifiers;
   _result = asRFlag(val, GDK_TYPE_MODIFIER_TYPE);

   return(_result);
} 
USER_OBJECT_
S_GdkDeviceAxisGetUse (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result = NULL_USER_OBJECT;

   GdkDeviceAxis *obj;
   GdkAxisUse val;

   obj = ((GdkDeviceAxis*)getPtrValue(s_obj)) ;
   val = obj->use;
   _result = asREnum(val, GDK_TYPE_AXIS_USE);

   return(_result);
} 
USER_OBJECT_
S_GdkDeviceAxisGetMin (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result = NULL_USER_OBJECT;

   GdkDeviceAxis *obj;
   gdouble val;

   obj = ((GdkDeviceAxis*)getPtrValue(s_obj)) ;
   val = obj->min;
   _result = asRNumeric(val);

   return(_result);
} 
USER_OBJECT_
S_GdkDeviceAxisGetMax (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result = NULL_USER_OBJECT;

   GdkDeviceAxis *obj;
   gdouble val;

   obj = ((GdkDeviceAxis*)getPtrValue(s_obj)) ;
   val = obj->max;
   _result = asRNumeric(val);

   return(_result);
} 
USER_OBJECT_
S_GdkPangoAttrEmbossedGetEmbossed (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result = NULL_USER_OBJECT;

   GdkPangoAttrEmbossed *obj;
   gboolean val;

   obj = ((GdkPangoAttrEmbossed*)getPtrValue(s_obj)) ;
   val = obj->embossed;
   _result = asRLogical(val);

   return(_result);
} 
USER_OBJECT_
S_GdkPangoAttrStippleGetStipple (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result = NULL_USER_OBJECT;

   GdkPangoAttrStipple *obj;
   GdkBitmap* val;

   obj = ((GdkPangoAttrStipple*)getPtrValue(s_obj)) ;
   val = obj->stipple;
   _result = toRPointerWithRef(val, "GdkBitmap");

   return(_result);
} 
