#include <RGtk2/gobject.h>
#include <RGtk2/gdk.h>

#include "gdkFuncs.h"


USER_OBJECT_
S_gdk_notify_startup_complete(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;


  gdk_notify_startup_complete();


  return(_result);
}
 

USER_OBJECT_
S_gdk_get_display_arg_name(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  const gchar* ans;

  ans = gdk_get_display_arg_name();

  _result = asRString(ans);

  return(_result);
}
 

USER_OBJECT_
S_gdk_get_program_class(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  const gchar* ans;

  ans = gdk_get_program_class();

  _result = asRString(ans);

  return(_result);
}
 

USER_OBJECT_
S_gdk_set_program_class(USER_OBJECT_ s_program_class)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  const gchar* program_class = ((const gchar*)asCString(s_program_class));


  gdk_set_program_class(program_class);


  return(_result);
}
 

USER_OBJECT_
S_gdk_get_display(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  const gchar* ans;

  ans = gdk_get_display();

  _result = asRString(ans);

  return(_result);
}
 

USER_OBJECT_
S_gdk_pointer_grab(USER_OBJECT_ s_window, USER_OBJECT_ s_owner_events, USER_OBJECT_ s_event_mask, USER_OBJECT_ s_confine_to, USER_OBJECT_ s_cursor, USER_OBJECT_ s_time)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkWindow* window = GDK_WINDOW(getPtrValue(s_window));
  gboolean owner_events = ((gboolean)asCLogical(s_owner_events));
  GdkEventMask event_mask = ((GdkEventMask)asCFlag(s_event_mask, GDK_TYPE_EVENT_MASK));
  GdkWindow* confine_to = GET_LENGTH(s_confine_to) == 0 ? NULL : GDK_WINDOW(getPtrValue(s_confine_to));
  GdkCursor* cursor = GET_LENGTH(s_cursor) == 0 ? NULL : ((GdkCursor*)getPtrValue(s_cursor));
  guint32 time = ((guint32)asCNumeric(s_time));

  GdkGrabStatus ans;

  ans = gdk_pointer_grab(window, owner_events, event_mask, confine_to, cursor, time);

  _result = asREnum(ans, GDK_TYPE_GRAB_STATUS);

  return(_result);
}
 

USER_OBJECT_
S_gdk_pointer_ungrab(USER_OBJECT_ s_time)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  guint32 time = ((guint32)asCNumeric(s_time));


  gdk_pointer_ungrab(time);


  return(_result);
}
 

USER_OBJECT_
S_gdk_keyboard_grab(USER_OBJECT_ s_window, USER_OBJECT_ s_owner_events, USER_OBJECT_ s_time)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkWindow* window = GDK_WINDOW(getPtrValue(s_window));
  gboolean owner_events = ((gboolean)asCLogical(s_owner_events));
  guint32 time = ((guint32)asCNumeric(s_time));

  GdkGrabStatus ans;

  ans = gdk_keyboard_grab(window, owner_events, time);

  _result = asREnum(ans, GDK_TYPE_GRAB_STATUS);

  return(_result);
}
 

USER_OBJECT_
S_gdk_keyboard_ungrab(USER_OBJECT_ s_time)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  guint32 time = ((guint32)asCNumeric(s_time));


  gdk_keyboard_ungrab(time);


  return(_result);
}
 

USER_OBJECT_
S_gdk_pointer_is_grabbed(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  gboolean ans;

  ans = gdk_pointer_is_grabbed();

  _result = asRLogical(ans);

  return(_result);
}
 

USER_OBJECT_
S_gdk_screen_width(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  gint ans;

  ans = gdk_screen_width();

  _result = asRInteger(ans);

  return(_result);
}
 

USER_OBJECT_
S_gdk_screen_height(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  gint ans;

  ans = gdk_screen_height();

  _result = asRInteger(ans);

  return(_result);
}
 

USER_OBJECT_
S_gdk_screen_width_mm(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  gint ans;

  ans = gdk_screen_width_mm();

  _result = asRInteger(ans);

  return(_result);
}
 

USER_OBJECT_
S_gdk_screen_height_mm(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  gint ans;

  ans = gdk_screen_height_mm();

  _result = asRInteger(ans);

  return(_result);
}
 

USER_OBJECT_
S_gdk_flush(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;


  gdk_flush();


  return(_result);
}
 

USER_OBJECT_
S_gdk_beep(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;


  gdk_beep();


  return(_result);
}
 

USER_OBJECT_
S_gdk_set_double_click_time(USER_OBJECT_ s_msec)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  guint msec = ((guint)asCNumeric(s_msec));


  gdk_set_double_click_time(msec);


  return(_result);
}
 

USER_OBJECT_
S_gdk_cairo_create(USER_OBJECT_ s_drawable)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkDrawable* drawable = GDK_DRAWABLE(getPtrValue(s_drawable));

  cairo_t* ans;

  ans = gdk_cairo_create(drawable);

  _result = toRPointerWithCairoRef(ans, "Cairo", cairo);

  return(_result);
}
 

USER_OBJECT_
S_gdk_cairo_set_source_color(USER_OBJECT_ s_cr, USER_OBJECT_ s_color)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));
  GdkColor* color = asCGdkColor(s_color);


  gdk_cairo_set_source_color(cr, color);


  return(_result);
}
 

USER_OBJECT_
S_gdk_cairo_set_source_pixbuf(USER_OBJECT_ s_cr, USER_OBJECT_ s_pixbuf, USER_OBJECT_ s_pixbuf_x, USER_OBJECT_ s_pixbuf_y)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));
  GdkPixbuf* pixbuf = GDK_PIXBUF(getPtrValue(s_pixbuf));
  double pixbuf_x = ((double)asCNumeric(s_pixbuf_x));
  double pixbuf_y = ((double)asCNumeric(s_pixbuf_y));


  gdk_cairo_set_source_pixbuf(cr, pixbuf, pixbuf_x, pixbuf_y);


  return(_result);
}
 

USER_OBJECT_
S_gdk_cairo_rectangle(USER_OBJECT_ s_cr, USER_OBJECT_ s_rectangle)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));
  GdkRectangle* rectangle = asCGdkRectangle(s_rectangle);


  gdk_cairo_rectangle(cr, rectangle);


  return(_result);
}
 

USER_OBJECT_
S_gdk_cairo_region(USER_OBJECT_ s_cr, USER_OBJECT_ s_region)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));
  GdkRegion* region = ((GdkRegion*)getPtrValue(s_region));


  gdk_cairo_region(cr, region);


  return(_result);
}
 

USER_OBJECT_
S_gdk_colormap_get_type(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  GType ans;

  ans = gdk_colormap_get_type();

  _result = asRGType(ans);

  return(_result);
}
 

USER_OBJECT_
S_gdk_colormap_new(USER_OBJECT_ s_visual, USER_OBJECT_ s_allocate)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkVisual* visual = GDK_VISUAL(getPtrValue(s_visual));
  gboolean allocate = ((gboolean)asCLogical(s_allocate));

  GdkColormap* ans;

  ans = gdk_colormap_new(visual, allocate);

  _result = toRPointerWithFinalizer(ans, "GdkColormap", (RPointerFinalizer) g_object_unref);

  return(_result);
}
 

USER_OBJECT_
S_gdk_colormap_get_system(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  GdkColormap* ans;

  ans = gdk_colormap_get_system();

  _result = toRPointerWithRef(ans, "GdkColormap");

  return(_result);
}
 

USER_OBJECT_
S_gdk_colormap_get_system_size(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  gint ans;

  ans = gdk_colormap_get_system_size();

  _result = asRInteger(ans);

  return(_result);
}
 

USER_OBJECT_
S_gdk_colormap_free_colors(USER_OBJECT_ s_object, USER_OBJECT_ s_colors)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkColormap* object = GDK_COLORMAP(getPtrValue(s_object));
  GdkColor* colors = ((GdkColor*)asCArrayRef(s_colors, GdkColor, asCGdkColor));
  gint ncolors = ((gint)GET_LENGTH(s_colors));


  gdk_colormap_free_colors(object, colors, ncolors);


  return(_result);
}
 

USER_OBJECT_
S_gdk_colormap_query_color(USER_OBJECT_ s_object, USER_OBJECT_ s_pixel)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkColormap* object = GDK_COLORMAP(getPtrValue(s_object));
  gulong pixel = ((gulong)asCNumeric(s_pixel));

  GdkColor* result = ((GdkColor *)g_new0(GdkColor, 1));

  gdk_colormap_query_color(object, pixel, result);


  _result = retByVal(PROTECT(_result), "result", PROTECT(asRGdkColor(result)), NULL);
  UNPROTECT(2);
    CLEANUP(g_free, result);;

  return(_result);
}
 

USER_OBJECT_
S_gdk_colormap_get_visual(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkColormap* object = GDK_COLORMAP(getPtrValue(s_object));

  GdkVisual* ans;

  ans = gdk_colormap_get_visual(object);

  _result = toRPointerWithRef(ans, "GdkVisual");

  return(_result);
}
 

USER_OBJECT_
S_gdk_colormap_get_screen(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkColormap* object = GDK_COLORMAP(getPtrValue(s_object));

  GdkScreen* ans;

  ans = gdk_colormap_get_screen(object);

  _result = toRPointerWithRef(ans, "GdkScreen");

  return(_result);
}
 

USER_OBJECT_
S_gdk_color_parse(USER_OBJECT_ s_spec)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  const gchar* spec = ((const gchar*)asCString(s_spec));

  gint ans;
  GdkColor* color = ((GdkColor *)g_new0(GdkColor, 1));

  ans = gdk_color_parse(spec, color);

  _result = asRInteger(ans);

  _result = retByVal(PROTECT(_result), "color", PROTECT(asRGdkColor(color)), NULL);
  UNPROTECT(2);
    CLEANUP(g_free, color);;

  return(_result);
}
 

USER_OBJECT_
S_gdk_color_white(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkColormap* object = GDK_COLORMAP(getPtrValue(s_object));

  gint ans;
  GdkColor* color = ((GdkColor *)g_new0(GdkColor, 1));

  ans = gdk_color_white(object, color);

  _result = asRInteger(ans);

  _result = retByVal(PROTECT(_result), "color", PROTECT(asRGdkColor(color)), NULL);
  UNPROTECT(2);
    CLEANUP(g_free, color);;

  return(_result);
}
 

USER_OBJECT_
S_gdk_color_black(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkColormap* object = GDK_COLORMAP(getPtrValue(s_object));

  gint ans;
  GdkColor* color = ((GdkColor *)g_new0(GdkColor, 1));

  ans = gdk_color_black(object, color);

  _result = asRInteger(ans);

  _result = retByVal(PROTECT(_result), "color", PROTECT(asRGdkColor(color)), NULL);
  UNPROTECT(2);
    CLEANUP(g_free, color);;

  return(_result);
}
 

USER_OBJECT_
S_gdk_color_alloc(USER_OBJECT_ s_object, USER_OBJECT_ s_color)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkColormap* object = GDK_COLORMAP(getPtrValue(s_object));
  GdkColor* color = asCGdkColor(s_color);

  gint ans;

  ans = gdk_color_alloc(object, color);

  _result = asRInteger(ans);

  return(_result);
}
 

USER_OBJECT_
S_gdk_color_change(USER_OBJECT_ s_object, USER_OBJECT_ s_color)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkColormap* object = GDK_COLORMAP(getPtrValue(s_object));
  GdkColor* color = asCGdkColor(s_color);

  gint ans;

  ans = gdk_color_change(object, color);

  _result = asRInteger(ans);

  return(_result);
}
 

USER_OBJECT_
S_gdk_cursor_new(USER_OBJECT_ s_cursor_type)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkCursorType cursor_type = ((GdkCursorType)asCEnum(s_cursor_type, GDK_TYPE_CURSOR_TYPE));

  GdkCursor* ans;

  ans = gdk_cursor_new(cursor_type);

  _result = toRPointerWithFinalizer(ans, "GdkCursor", (RPointerFinalizer) gdk_cursor_unref);

  return(_result);
}
 

USER_OBJECT_
S_gdk_cursor_new_from_name(USER_OBJECT_ s_display, USER_OBJECT_ s_name)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkDisplay* display = GDK_DISPLAY_OBJECT(getPtrValue(s_display));
  const gchar* name = ((const gchar*)asCString(s_name));

  GdkCursor* ans;

  ans = gdk_cursor_new_from_name(display, name);

  _result = toRPointerWithFinalizer(ans, "GdkCursor", (RPointerFinalizer) gdk_cursor_unref);

  return(_result);
}
 

USER_OBJECT_
S_gdk_cursor_new_for_display(USER_OBJECT_ s_display, USER_OBJECT_ s_cursor_type)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkDisplay* display = GDK_DISPLAY_OBJECT(getPtrValue(s_display));
  GdkCursorType cursor_type = ((GdkCursorType)asCEnum(s_cursor_type, GDK_TYPE_CURSOR_TYPE));

  GdkCursor* ans;

  ans = gdk_cursor_new_for_display(display, cursor_type);

  _result = toRPointerWithFinalizer(ans, "GdkCursor", (RPointerFinalizer) gdk_cursor_unref);

  return(_result);
}
 

USER_OBJECT_
S_gdk_cursor_new_from_pixmap(USER_OBJECT_ s_source, USER_OBJECT_ s_mask, USER_OBJECT_ s_fg, USER_OBJECT_ s_bg, USER_OBJECT_ s_x, USER_OBJECT_ s_y)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkPixmap* source = GDK_PIXMAP(getPtrValue(s_source));
  GdkPixmap* mask = GDK_PIXMAP(getPtrValue(s_mask));
  GdkColor* fg = asCGdkColor(s_fg);
  GdkColor* bg = asCGdkColor(s_bg);
  gint x = ((gint)asCInteger(s_x));
  gint y = ((gint)asCInteger(s_y));

  GdkCursor* ans;

  ans = gdk_cursor_new_from_pixmap(source, mask, fg, bg, x, y);

  _result = toRPointerWithFinalizer(ans, "GdkCursor", (RPointerFinalizer) gdk_cursor_unref);

  return(_result);
}
 

USER_OBJECT_
S_gdk_cursor_new_from_pixbuf(USER_OBJECT_ s_display, USER_OBJECT_ s_source, USER_OBJECT_ s_x, USER_OBJECT_ s_y)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkDisplay* display = GDK_DISPLAY_OBJECT(getPtrValue(s_display));
  GdkPixbuf* source = GDK_PIXBUF(getPtrValue(s_source));
  gint x = ((gint)asCInteger(s_x));
  gint y = ((gint)asCInteger(s_y));

  GdkCursor* ans;

  ans = gdk_cursor_new_from_pixbuf(display, source, x, y);

  _result = toRPointerWithFinalizer(ans, "GdkCursor", (RPointerFinalizer) gdk_cursor_unref);

  return(_result);
}
 

USER_OBJECT_
S_gdk_cursor_get_display(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkCursor* object = ((GdkCursor*)getPtrValue(s_object));

  GdkDisplay* ans;

  ans = gdk_cursor_get_display(object);

  _result = toRPointerWithRef(ans, "GdkDisplay");

  return(_result);
}
 

USER_OBJECT_
S_gdk_cursor_get_image(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkCursor* object = ((GdkCursor*)getPtrValue(s_object));

  GdkPixbuf* ans;

  ans = gdk_cursor_get_image(object);

  _result = toRPointerWithRef(ans, "GdkPixbuf");

  return(_result);
}
 

USER_OBJECT_
S_gdk_display_get_type(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  GType ans;

  ans = gdk_display_get_type();

  _result = asRGType(ans);

  return(_result);
}
 

USER_OBJECT_
S_gdk_display_open(USER_OBJECT_ s_display_name)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  const gchar* display_name = ((const gchar*)asCString(s_display_name));

  GdkDisplay* ans;

  ans = gdk_display_open(display_name);

  _result = toRPointerWithFinalizer(ans, "GdkDisplay", (RPointerFinalizer) g_object_unref);

  return(_result);
}
 

USER_OBJECT_
S_gdk_display_get_name(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkDisplay* object = GDK_DISPLAY_OBJECT(getPtrValue(s_object));

  const gchar* ans;

  ans = gdk_display_get_name(object);

  _result = asRString(ans);

  return(_result);
}
 

USER_OBJECT_
S_gdk_display_get_n_screens(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkDisplay* object = GDK_DISPLAY_OBJECT(getPtrValue(s_object));

  gint ans;

  ans = gdk_display_get_n_screens(object);

  _result = asRInteger(ans);

  return(_result);
}
 

USER_OBJECT_
S_gdk_display_get_screen(USER_OBJECT_ s_object, USER_OBJECT_ s_screen_num)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkDisplay* object = GDK_DISPLAY_OBJECT(getPtrValue(s_object));
  gint screen_num = ((gint)asCInteger(s_screen_num));

  GdkScreen* ans;

  ans = gdk_display_get_screen(object, screen_num);

  _result = toRPointerWithRef(ans, "GdkScreen");

  return(_result);
}
 

USER_OBJECT_
S_gdk_display_get_default_screen(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkDisplay* object = GDK_DISPLAY_OBJECT(getPtrValue(s_object));

  GdkScreen* ans;

  ans = gdk_display_get_default_screen(object);

  _result = toRPointerWithRef(ans, "GdkScreen");

  return(_result);
}
 

USER_OBJECT_
S_gdk_display_pointer_ungrab(USER_OBJECT_ s_object, USER_OBJECT_ s_time_)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkDisplay* object = GDK_DISPLAY_OBJECT(getPtrValue(s_object));
  guint32 time_ = ((guint32)asCNumeric(s_time_));


  gdk_display_pointer_ungrab(object, time_);


  return(_result);
}
 

USER_OBJECT_
S_gdk_display_keyboard_ungrab(USER_OBJECT_ s_object, USER_OBJECT_ s_time_)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkDisplay* object = GDK_DISPLAY_OBJECT(getPtrValue(s_object));
  guint32 time_ = ((guint32)asCNumeric(s_time_));


  gdk_display_keyboard_ungrab(object, time_);


  return(_result);
}
 

USER_OBJECT_
S_gdk_display_pointer_is_grabbed(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkDisplay* object = GDK_DISPLAY_OBJECT(getPtrValue(s_object));

  gboolean ans;

  ans = gdk_display_pointer_is_grabbed(object);

  _result = asRLogical(ans);

  return(_result);
}
 

USER_OBJECT_
S_gdk_display_beep(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkDisplay* object = GDK_DISPLAY_OBJECT(getPtrValue(s_object));


  gdk_display_beep(object);


  return(_result);
}
 

USER_OBJECT_
S_gdk_display_sync(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkDisplay* object = GDK_DISPLAY_OBJECT(getPtrValue(s_object));


  gdk_display_sync(object);


  return(_result);
}
 

USER_OBJECT_
S_gdk_display_close(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkDisplay* object = GDK_DISPLAY_OBJECT(getPtrValue(s_object));


  gdk_display_close(object);


  return(_result);
}
 

USER_OBJECT_
S_gdk_display_list_devices(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkDisplay* object = GDK_DISPLAY_OBJECT(getPtrValue(s_object));

  GList* ans;

  ans = gdk_display_list_devices(object);

  _result = asRGListWithRef(ans, "GdkDevice");
    CLEANUP(g_list_free, ans);;

  return(_result);
}
 

USER_OBJECT_
S_gdk_display_get_event(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkDisplay* object = GDK_DISPLAY_OBJECT(getPtrValue(s_object));

  GdkEvent* ans;

  ans = gdk_display_get_event(object);

  _result = toRGdkEvent(((GdkEvent *)ans), TRUE);

  return(_result);
}
 

USER_OBJECT_
S_gdk_display_peek_event(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkDisplay* object = GDK_DISPLAY_OBJECT(getPtrValue(s_object));

  GdkEvent* ans;

  ans = gdk_display_peek_event(object);

  _result = toRGdkEvent(((GdkEvent *)ans), TRUE);

  return(_result);
}
 

USER_OBJECT_
S_gdk_display_put_event(USER_OBJECT_ s_object, USER_OBJECT_ s_event)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkDisplay* object = GDK_DISPLAY_OBJECT(getPtrValue(s_object));
  GdkEvent* event = ((GdkEvent*)getPtrValue(s_event));


  gdk_display_put_event(object, event);


  return(_result);
}
 

USER_OBJECT_
S_gdk_display_add_client_message_filter(USER_OBJECT_ s_object, USER_OBJECT_ s_message_type, USER_OBJECT_ s_func, USER_OBJECT_ s_data)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkFilterFunc func = ((GdkFilterFunc)S_GdkFilterFunc);
  R_CallbackData* data = R_createCBData(s_func, s_data);
  GdkDisplay* object = GDK_DISPLAY_OBJECT(getPtrValue(s_object));
  GdkAtom message_type = asCGdkAtom(s_message_type);


  gdk_display_add_client_message_filter(object, message_type, func, data);

  R_freeCBData(data);

  return(_result);
}
 

USER_OBJECT_
S_gdk_display_set_double_click_time(USER_OBJECT_ s_object, USER_OBJECT_ s_msec)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkDisplay* object = GDK_DISPLAY_OBJECT(getPtrValue(s_object));
  guint msec = ((guint)asCNumeric(s_msec));


  gdk_display_set_double_click_time(object, msec);


  return(_result);
}
 

USER_OBJECT_
S_gdk_display_get_default(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  GdkDisplay* ans;

  ans = gdk_display_get_default();

  _result = toRPointerWithRef(ans, "GdkDisplay");

  return(_result);
}
 

USER_OBJECT_
S_gdk_display_get_core_pointer(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkDisplay* object = GDK_DISPLAY_OBJECT(getPtrValue(s_object));

  GdkDevice* ans;

  ans = gdk_display_get_core_pointer(object);

  _result = toRPointerWithRef(ans, "GdkDevice");

  return(_result);
}
 

USER_OBJECT_
S_gdk_display_get_pointer(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkDisplay* object = GDK_DISPLAY_OBJECT(getPtrValue(s_object));

  GdkScreen* screen = NULL;
  gint x;
  gint y;
  GdkModifierType mask;

  gdk_display_get_pointer(object, &screen, &x, &y, &mask);


  _result = retByVal(PROTECT(_result), "screen", PROTECT(toRPointerWithRef(screen, "GdkScreen")), "x", PROTECT(asRInteger(x)), "y", PROTECT(asRInteger(y)), "mask", PROTECT(asRFlag(mask, GDK_TYPE_MODIFIER_TYPE)), NULL);
  UNPROTECT(5);
  ;
  ;
  ;
  ;

  return(_result);
}
 

USER_OBJECT_
S_gdk_display_get_window_at_pointer(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkDisplay* object = GDK_DISPLAY_OBJECT(getPtrValue(s_object));

  GdkWindow* ans;
  gint win_x;
  gint win_y;

  ans = gdk_display_get_window_at_pointer(object, &win_x, &win_y);

  _result = toRPointerWithRef(ans, "GdkWindow");

  _result = retByVal(PROTECT(_result), "win.x", PROTECT(asRInteger(win_x)), "win.y", PROTECT(asRInteger(win_y)), NULL);
  UNPROTECT(3);
  ;
  ;

  return(_result);
}
 

USER_OBJECT_
S_gdk_display_warp_pointer(USER_OBJECT_ s_object, USER_OBJECT_ s_screen, USER_OBJECT_ s_x, USER_OBJECT_ s_y)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkDisplay* object = GDK_DISPLAY_OBJECT(getPtrValue(s_object));
  GdkScreen* screen = GDK_SCREEN(getPtrValue(s_screen));
  gint x = ((gint)asCInteger(s_x));
  gint y = ((gint)asCInteger(s_y));


  gdk_display_warp_pointer(object, screen, x, y);


  return(_result);
}
 

USER_OBJECT_
S_gdk_display_store_clipboard(USER_OBJECT_ s_object, USER_OBJECT_ s_clipboard_window, USER_OBJECT_ s_targets)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkDisplay* object = GDK_DISPLAY_OBJECT(getPtrValue(s_object));
  GdkWindow* clipboard_window = GDK_WINDOW(getPtrValue(s_clipboard_window));
  guint32 time_ = ((guint32)GET_LENGTH(s_targets));
  GdkAtom* targets = ((GdkAtom*)asCGdkAtomArray(s_targets));
  gint n_targets = ((gint)GET_LENGTH(s_targets));


  gdk_display_store_clipboard(object, clipboard_window, time_, targets, n_targets);


  return(_result);
}
 

USER_OBJECT_
S_gdk_display_supports_selection_notification(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkDisplay* object = GDK_DISPLAY_OBJECT(getPtrValue(s_object));

  gboolean ans;

  ans = gdk_display_supports_selection_notification(object);

  _result = asRLogical(ans);

  return(_result);
}
 

USER_OBJECT_
S_gdk_display_request_selection_notification(USER_OBJECT_ s_object, USER_OBJECT_ s_selection)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkDisplay* object = GDK_DISPLAY_OBJECT(getPtrValue(s_object));
  GdkAtom selection = asCGdkAtom(s_selection);

  gboolean ans;

  ans = gdk_display_request_selection_notification(object, selection);

  _result = asRLogical(ans);

  return(_result);
}
 

USER_OBJECT_
S_gdk_display_supports_clipboard_persistence(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkDisplay* object = GDK_DISPLAY_OBJECT(getPtrValue(s_object));

  gboolean ans;

  ans = gdk_display_supports_clipboard_persistence(object);

  _result = asRLogical(ans);

  return(_result);
}
 

USER_OBJECT_
S_gdk_display_manager_get_type(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  GType ans;

  ans = gdk_display_manager_get_type();

  _result = asRGType(ans);

  return(_result);
}
 

USER_OBJECT_
S_gdk_display_manager_get(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  GdkDisplayManager* ans;

  ans = gdk_display_manager_get();

  _result = toRPointerWithRef(ans, "GdkDisplayManager");

  return(_result);
}
 

USER_OBJECT_
S_gdk_display_manager_get_default_display(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkDisplayManager* object = GDK_DISPLAY_MANAGER(getPtrValue(s_object));

  GdkDisplay* ans;

  ans = gdk_display_manager_get_default_display(object);

  _result = toRPointerWithRef(ans, "GdkDisplay");

  return(_result);
}
 

USER_OBJECT_
S_gdk_display_manager_set_default_display(USER_OBJECT_ s_object, USER_OBJECT_ s_display)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkDisplayManager* object = GDK_DISPLAY_MANAGER(getPtrValue(s_object));
  GdkDisplay* display = GDK_DISPLAY_OBJECT(getPtrValue(s_display));


  gdk_display_manager_set_default_display(object, display);


  return(_result);
}
 

USER_OBJECT_
S_gdk_display_manager_list_displays(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkDisplayManager* object = GDK_DISPLAY_MANAGER(getPtrValue(s_object));

  GSList* ans;

  ans = gdk_display_manager_list_displays(object);

  _result = asRGSListWithRef(ans, "GdkDisplay");
    CLEANUP(g_slist_free, ans);;

  return(_result);
}
 

USER_OBJECT_
S_gdk_display_flush(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkDisplay* object = GDK_DISPLAY_OBJECT(getPtrValue(s_object));


  gdk_display_flush(object);


  return(_result);
}
 

USER_OBJECT_
S_gdk_display_set_double_click_distance(USER_OBJECT_ s_object, USER_OBJECT_ s_distance)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkDisplay* object = GDK_DISPLAY_OBJECT(getPtrValue(s_object));
  guint distance = ((guint)asCNumeric(s_distance));


  gdk_display_set_double_click_distance(object, distance);


  return(_result);
}
 

USER_OBJECT_
S_gdk_display_supports_cursor_alpha(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkDisplay* object = GDK_DISPLAY_OBJECT(getPtrValue(s_object));

  gboolean ans;

  ans = gdk_display_supports_cursor_alpha(object);

  _result = asRLogical(ans);

  return(_result);
}
 

USER_OBJECT_
S_gdk_display_supports_cursor_color(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkDisplay* object = GDK_DISPLAY_OBJECT(getPtrValue(s_object));

  gboolean ans;

  ans = gdk_display_supports_cursor_color(object);

  _result = asRLogical(ans);

  return(_result);
}
 

USER_OBJECT_
S_gdk_display_get_default_cursor_size(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkDisplay* object = GDK_DISPLAY_OBJECT(getPtrValue(s_object));

  guint ans;

  ans = gdk_display_get_default_cursor_size(object);

  _result = asRNumeric(ans);

  return(_result);
}
 

USER_OBJECT_
S_gdk_display_get_maximal_cursor_size(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkDisplay* object = GDK_DISPLAY_OBJECT(getPtrValue(s_object));

  guint width;
  guint height;

  gdk_display_get_maximal_cursor_size(object, &width, &height);


  _result = retByVal(PROTECT(_result), "width", PROTECT(asRNumeric(width)), "height", PROTECT(asRNumeric(height)), NULL);
  UNPROTECT(3);
  ;
  ;

  return(_result);
}
 

USER_OBJECT_
S_gdk_display_get_default_group(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkDisplay* object = GDK_DISPLAY_OBJECT(getPtrValue(s_object));

  GdkWindow* ans;

  ans = gdk_display_get_default_group(object);

  _result = toRPointerWithRef(ans, "GdkWindow");

  return(_result);
}
 

USER_OBJECT_
S_gdk_drag_context_get_type(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  GType ans;

  ans = gdk_drag_context_get_type();

  _result = asRGType(ans);

  return(_result);
}
 

USER_OBJECT_
S_gdk_drag_context_new(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  GdkDragContext* ans;

  ans = gdk_drag_context_new();

  _result = toRPointerWithFinalizer(ans, "GdkDragContext", (RPointerFinalizer) g_object_unref);

  return(_result);
}
 

USER_OBJECT_
S_gdk_drag_context_ref(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkDragContext* object = GDK_DRAG_CONTEXT(getPtrValue(s_object));


  gdk_drag_context_ref(object);


  return(_result);
}
 

USER_OBJECT_
S_gdk_drag_context_unref(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkDragContext* object = GDK_DRAG_CONTEXT(getPtrValue(s_object));


  gdk_drag_context_unref(object);


  return(_result);
}
 

USER_OBJECT_
S_gdk_drag_status(USER_OBJECT_ s_object, USER_OBJECT_ s_action, USER_OBJECT_ s_time)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkDragContext* object = GDK_DRAG_CONTEXT(getPtrValue(s_object));
  GdkDragAction action = ((GdkDragAction)asCFlag(s_action, GDK_TYPE_DRAG_ACTION));
  guint32 time = ((guint32)asCNumeric(s_time));


  gdk_drag_status(object, action, time);


  return(_result);
}
 

USER_OBJECT_
S_gdk_drop_reply(USER_OBJECT_ s_object, USER_OBJECT_ s_ok, USER_OBJECT_ s_time)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkDragContext* object = GDK_DRAG_CONTEXT(getPtrValue(s_object));
  gboolean ok = ((gboolean)asCLogical(s_ok));
  guint32 time = ((guint32)asCNumeric(s_time));


  gdk_drop_reply(object, ok, time);


  return(_result);
}
 

USER_OBJECT_
S_gdk_drop_finish(USER_OBJECT_ s_object, USER_OBJECT_ s_success, USER_OBJECT_ s_time)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkDragContext* object = GDK_DRAG_CONTEXT(getPtrValue(s_object));
  gboolean success = ((gboolean)asCLogical(s_success));
  guint32 time = ((guint32)asCNumeric(s_time));


  gdk_drop_finish(object, success, time);


  return(_result);
}
 

USER_OBJECT_
S_gdk_drag_get_selection(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkDragContext* object = GDK_DRAG_CONTEXT(getPtrValue(s_object));

  GdkAtom ans;

  ans = gdk_drag_get_selection(object);

  _result = asRGdkAtom(ans);

  return(_result);
}
 

USER_OBJECT_
S_gdk_drag_begin(USER_OBJECT_ s_object, USER_OBJECT_ s_targets)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkWindow* object = GDK_WINDOW(getPtrValue(s_object));
  GList* targets = asCGList(s_targets);

  GdkDragContext* ans;

  ans = gdk_drag_begin(object, targets);

  _result = toRPointerWithRef(ans, "GdkDragContext");
    CLEANUP(g_list_free, ((GList*)targets));;

  return(_result);
}
 

USER_OBJECT_
S_gdk_drag_get_protocol(USER_OBJECT_ s_xid)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkNativeWindow xid = asCGdkNativeWindow(s_xid);

  GdkNativeWindow ans;
  GdkDragProtocol protocol;

  ans = gdk_drag_get_protocol(xid, &protocol);

  _result = asRGdkNativeWindow(ans);

  _result = retByVal(PROTECT(_result), "protocol", PROTECT(asREnum(protocol, GDK_TYPE_DRAG_PROTOCOL)), NULL);
  UNPROTECT(2);
  ;

  return(_result);
}
 

USER_OBJECT_
S_gdk_drag_find_window(USER_OBJECT_ s_object, USER_OBJECT_ s_drag_window, USER_OBJECT_ s_x_root, USER_OBJECT_ s_y_root)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkDragContext* object = GDK_DRAG_CONTEXT(getPtrValue(s_object));
  GdkWindow* drag_window = GDK_WINDOW(getPtrValue(s_drag_window));
  gint x_root = ((gint)asCInteger(s_x_root));
  gint y_root = ((gint)asCInteger(s_y_root));

  GdkWindow* dest_window = NULL;
  GdkDragProtocol protocol;

  gdk_drag_find_window(object, drag_window, x_root, y_root, &dest_window, &protocol);


  _result = retByVal(PROTECT(_result), "dest.window", PROTECT(toRPointerWithRef(dest_window, "GdkWindow")), "protocol", PROTECT(asREnum(protocol, GDK_TYPE_DRAG_PROTOCOL)), NULL);
  UNPROTECT(3);
  ;
  ;

  return(_result);
}
 

USER_OBJECT_
S_gdk_drag_get_protocol_for_display(USER_OBJECT_ s_display, USER_OBJECT_ s_xid)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkDisplay* display = GDK_DISPLAY_OBJECT(getPtrValue(s_display));
  GdkNativeWindow xid = asCGdkNativeWindow(s_xid);

  GdkNativeWindow ans;
  GdkDragProtocol protocol;

  ans = gdk_drag_get_protocol_for_display(display, xid, &protocol);

  _result = asRGdkNativeWindow(ans);

  _result = retByVal(PROTECT(_result), "protocol", PROTECT(asREnum(protocol, GDK_TYPE_DRAG_PROTOCOL)), NULL);
  UNPROTECT(2);
  ;

  return(_result);
}
 

USER_OBJECT_
S_gdk_drag_find_window_for_screen(USER_OBJECT_ s_object, USER_OBJECT_ s_drag_window, USER_OBJECT_ s_screen, USER_OBJECT_ s_x_root, USER_OBJECT_ s_y_root)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkDragContext* object = GDK_DRAG_CONTEXT(getPtrValue(s_object));
  GdkWindow* drag_window = GDK_WINDOW(getPtrValue(s_drag_window));
  GdkScreen* screen = GDK_SCREEN(getPtrValue(s_screen));
  gint x_root = ((gint)asCInteger(s_x_root));
  gint y_root = ((gint)asCInteger(s_y_root));

  GdkWindow* dest_window = NULL;
  GdkDragProtocol protocol;

  gdk_drag_find_window_for_screen(object, drag_window, screen, x_root, y_root, &dest_window, &protocol);


  _result = retByVal(PROTECT(_result), "dest.window", PROTECT(toRPointerWithRef(dest_window, "GdkWindow")), "protocol", PROTECT(asREnum(protocol, GDK_TYPE_DRAG_PROTOCOL)), NULL);
  UNPROTECT(3);
  ;
  ;

  return(_result);
}
 

USER_OBJECT_
S_gdk_drag_motion(USER_OBJECT_ s_object, USER_OBJECT_ s_dest_window, USER_OBJECT_ s_protocol, USER_OBJECT_ s_x_root, USER_OBJECT_ s_y_root, USER_OBJECT_ s_suggested_action, USER_OBJECT_ s_possible_actions, USER_OBJECT_ s_time)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkDragContext* object = GDK_DRAG_CONTEXT(getPtrValue(s_object));
  GdkWindow* dest_window = GDK_WINDOW(getPtrValue(s_dest_window));
  GdkDragProtocol protocol = ((GdkDragProtocol)asCEnum(s_protocol, GDK_TYPE_DRAG_PROTOCOL));
  gint x_root = ((gint)asCInteger(s_x_root));
  gint y_root = ((gint)asCInteger(s_y_root));
  GdkDragAction suggested_action = ((GdkDragAction)asCFlag(s_suggested_action, GDK_TYPE_DRAG_ACTION));
  GdkDragAction possible_actions = ((GdkDragAction)asCFlag(s_possible_actions, GDK_TYPE_DRAG_ACTION));
  guint32 time = ((guint32)asCNumeric(s_time));

  gboolean ans;

  ans = gdk_drag_motion(object, dest_window, protocol, x_root, y_root, suggested_action, possible_actions, time);

  _result = asRLogical(ans);

  return(_result);
}
 

USER_OBJECT_
S_gdk_drag_drop(USER_OBJECT_ s_object, USER_OBJECT_ s_time)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkDragContext* object = GDK_DRAG_CONTEXT(getPtrValue(s_object));
  guint32 time = ((guint32)asCNumeric(s_time));


  gdk_drag_drop(object, time);


  return(_result);
}
 

USER_OBJECT_
S_gdk_drag_abort(USER_OBJECT_ s_object, USER_OBJECT_ s_time)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkDragContext* object = GDK_DRAG_CONTEXT(getPtrValue(s_object));
  guint32 time = ((guint32)asCNumeric(s_time));


  gdk_drag_abort(object, time);


  return(_result);
}
 

USER_OBJECT_
S_gdk_drag_drop_succeeded(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkDragContext* object = GDK_DRAG_CONTEXT(getPtrValue(s_object));

  gboolean ans;

  ans = gdk_drag_drop_succeeded(object);

  _result = asRLogical(ans);

  return(_result);
}
 

USER_OBJECT_
S_gdk_drawable_get_type(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  GType ans;

  ans = gdk_drawable_get_type();

  _result = asRGType(ans);

  return(_result);
}
 

USER_OBJECT_
S_gdk_drawable_set_data(USER_OBJECT_ s_object, USER_OBJECT_ s_key, USER_OBJECT_ s_data)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkDrawable* object = GDK_DRAWABLE(getPtrValue(s_object));
  const gchar* key = ((const gchar*)asCString(s_key));
  gpointer data = ((gpointer)asCGenericData(s_data));
  GDestroyNotify destroy_func = ((GDestroyNotify)R_ReleaseObject);


  gdk_drawable_set_data(object, key, data, destroy_func);


  return(_result);
}
 

USER_OBJECT_
S_gdk_drawable_get_data(USER_OBJECT_ s_object, USER_OBJECT_ s_key)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkDrawable* object = GDK_DRAWABLE(getPtrValue(s_object));
  const gchar* key = ((const gchar*)asCString(s_key));

  gpointer ans;

  ans = gdk_drawable_get_data(object, key);

  _result = ans;

  return(_result);
}
 

USER_OBJECT_
S_gdk_drawable_get_size(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkDrawable* object = GDK_DRAWABLE(getPtrValue(s_object));

  gint width;
  gint height;

  gdk_drawable_get_size(object, &width, &height);


  _result = retByVal(PROTECT(_result), "width", PROTECT(asRInteger(width)), "height", PROTECT(asRInteger(height)), NULL);
  UNPROTECT(3);
  ;
  ;

  return(_result);
}
 

USER_OBJECT_
S_gdk_drawable_set_colormap(USER_OBJECT_ s_object, USER_OBJECT_ s_colormap)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkDrawable* object = GDK_DRAWABLE(getPtrValue(s_object));
  GdkColormap* colormap = GDK_COLORMAP(getPtrValue(s_colormap));


  gdk_drawable_set_colormap(object, colormap);


  return(_result);
}
 

USER_OBJECT_
S_gdk_drawable_get_colormap(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkDrawable* object = GDK_DRAWABLE(getPtrValue(s_object));

  GdkColormap* ans;

  ans = gdk_drawable_get_colormap(object);

  _result = toRPointerWithRef(ans, "GdkColormap");

  return(_result);
}
 

USER_OBJECT_
S_gdk_drawable_get_visual(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkDrawable* object = GDK_DRAWABLE(getPtrValue(s_object));

  GdkVisual* ans;

  ans = gdk_drawable_get_visual(object);

  _result = toRPointerWithRef(ans, "GdkVisual");

  return(_result);
}
 

USER_OBJECT_
S_gdk_drawable_get_depth(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkDrawable* object = GDK_DRAWABLE(getPtrValue(s_object));

  gint ans;

  ans = gdk_drawable_get_depth(object);

  _result = asRInteger(ans);

  return(_result);
}
 

USER_OBJECT_
S_gdk_drawable_get_screen(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkDrawable* object = GDK_DRAWABLE(getPtrValue(s_object));

  GdkScreen* ans;

  ans = gdk_drawable_get_screen(object);

  _result = toRPointerWithRef(ans, "GdkScreen");

  return(_result);
}
 

USER_OBJECT_
S_gdk_drawable_get_display(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkDrawable* object = GDK_DRAWABLE(getPtrValue(s_object));

  GdkDisplay* ans;

  ans = gdk_drawable_get_display(object);

  _result = toRPointerWithRef(ans, "GdkDisplay");

  return(_result);
}
 

USER_OBJECT_
S_gdk_drawable_ref(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkDrawable* object = GDK_DRAWABLE(getPtrValue(s_object));

  GdkDrawable* ans;

  ans = gdk_drawable_ref(object);

  _result = toRPointerWithRef(ans, "GdkDrawable");

  return(_result);
}
 

USER_OBJECT_
S_gdk_drawable_unref(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkDrawable* object = GDK_DRAWABLE(getPtrValue(s_object));


  gdk_drawable_unref(object);


  return(_result);
}
 

USER_OBJECT_
S_gdk_draw_point(USER_OBJECT_ s_object, USER_OBJECT_ s_gc, USER_OBJECT_ s_x, USER_OBJECT_ s_y)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkDrawable* object = GDK_DRAWABLE(getPtrValue(s_object));
  GdkGC* gc = GDK_GC(getPtrValue(s_gc));
  gint x = ((gint)asCInteger(s_x));
  gint y = ((gint)asCInteger(s_y));


  gdk_draw_point(object, gc, x, y);


  return(_result);
}
 

USER_OBJECT_
S_gdk_draw_line(USER_OBJECT_ s_object, USER_OBJECT_ s_gc, USER_OBJECT_ s_x1, USER_OBJECT_ s_y1, USER_OBJECT_ s_x2, USER_OBJECT_ s_y2)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkDrawable* object = GDK_DRAWABLE(getPtrValue(s_object));
  GdkGC* gc = GDK_GC(getPtrValue(s_gc));
  gint x1 = ((gint)asCInteger(s_x1));
  gint y1 = ((gint)asCInteger(s_y1));
  gint x2 = ((gint)asCInteger(s_x2));
  gint y2 = ((gint)asCInteger(s_y2));


  gdk_draw_line(object, gc, x1, y1, x2, y2);


  return(_result);
}
 

USER_OBJECT_
S_gdk_draw_rectangle(USER_OBJECT_ s_object, USER_OBJECT_ s_gc, USER_OBJECT_ s_filled, USER_OBJECT_ s_x, USER_OBJECT_ s_y, USER_OBJECT_ s_width, USER_OBJECT_ s_height)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkDrawable* object = GDK_DRAWABLE(getPtrValue(s_object));
  GdkGC* gc = GDK_GC(getPtrValue(s_gc));
  gboolean filled = ((gboolean)asCLogical(s_filled));
  gint x = ((gint)asCInteger(s_x));
  gint y = ((gint)asCInteger(s_y));
  gint width = ((gint)asCInteger(s_width));
  gint height = ((gint)asCInteger(s_height));


  gdk_draw_rectangle(object, gc, filled, x, y, width, height);


  return(_result);
}
 

USER_OBJECT_
S_gdk_draw_arc(USER_OBJECT_ s_object, USER_OBJECT_ s_gc, USER_OBJECT_ s_filled, USER_OBJECT_ s_x, USER_OBJECT_ s_y, USER_OBJECT_ s_width, USER_OBJECT_ s_height, USER_OBJECT_ s_angle1, USER_OBJECT_ s_angle2)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkDrawable* object = GDK_DRAWABLE(getPtrValue(s_object));
  GdkGC* gc = GDK_GC(getPtrValue(s_gc));
  gboolean filled = ((gboolean)asCLogical(s_filled));
  gint x = ((gint)asCInteger(s_x));
  gint y = ((gint)asCInteger(s_y));
  gint width = ((gint)asCInteger(s_width));
  gint height = ((gint)asCInteger(s_height));
  gint angle1 = ((gint)asCInteger(s_angle1));
  gint angle2 = ((gint)asCInteger(s_angle2));


  gdk_draw_arc(object, gc, filled, x, y, width, height, angle1, angle2);


  return(_result);
}
 

USER_OBJECT_
S_gdk_draw_polygon(USER_OBJECT_ s_object, USER_OBJECT_ s_gc, USER_OBJECT_ s_filled, USER_OBJECT_ s_points)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkDrawable* object = GDK_DRAWABLE(getPtrValue(s_object));
  GdkGC* gc = GDK_GC(getPtrValue(s_gc));
  gboolean filled = ((gboolean)asCLogical(s_filled));
  GdkPoint* points = ((GdkPoint*)asCArrayRef(s_points, GdkPoint, asCGdkPoint));
  gint npoints = ((gint)GET_LENGTH(s_points));


  gdk_draw_polygon(object, gc, filled, points, npoints);


  return(_result);
}
 

USER_OBJECT_
S_gdk_draw_string(USER_OBJECT_ s_object, USER_OBJECT_ s_font, USER_OBJECT_ s_gc, USER_OBJECT_ s_x, USER_OBJECT_ s_y, USER_OBJECT_ s_string)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkDrawable* object = GDK_DRAWABLE(getPtrValue(s_object));
  GdkFont* font = ((GdkFont*)getPtrValue(s_font));
  GdkGC* gc = GDK_GC(getPtrValue(s_gc));
  gint x = ((gint)asCInteger(s_x));
  gint y = ((gint)asCInteger(s_y));
  const gchar* string = ((const gchar*)asCString(s_string));


  gdk_draw_string(object, font, gc, x, y, string);


  return(_result);
}
 

USER_OBJECT_
S_gdk_draw_text(USER_OBJECT_ s_object, USER_OBJECT_ s_font, USER_OBJECT_ s_gc, USER_OBJECT_ s_x, USER_OBJECT_ s_y, USER_OBJECT_ s_text, USER_OBJECT_ s_text_length)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkDrawable* object = GDK_DRAWABLE(getPtrValue(s_object));
  GdkFont* font = ((GdkFont*)getPtrValue(s_font));
  GdkGC* gc = GDK_GC(getPtrValue(s_gc));
  gint x = ((gint)asCInteger(s_x));
  gint y = ((gint)asCInteger(s_y));
  const gchar* text = ((const gchar*)asCString(s_text));
  gint text_length = ((gint)asCInteger(s_text_length));


  gdk_draw_text(object, font, gc, x, y, text, text_length);


  return(_result);
}
 

USER_OBJECT_
S_gdk_draw_text_wc(USER_OBJECT_ s_object, USER_OBJECT_ s_font, USER_OBJECT_ s_gc, USER_OBJECT_ s_x, USER_OBJECT_ s_text)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkDrawable* object = GDK_DRAWABLE(getPtrValue(s_object));
  GdkFont* font = ((GdkFont*)getPtrValue(s_font));
  GdkGC* gc = GDK_GC(getPtrValue(s_gc));
  gint x = ((gint)asCInteger(s_x));
  gint y = ((gint)GET_LENGTH(s_text));
  const GdkWChar* text = ((const GdkWChar*)asCArray(s_text, GdkWChar, asCNumeric));
  gint text_length = ((gint)GET_LENGTH(s_text));


  gdk_draw_text_wc(object, font, gc, x, y, text, text_length);


  return(_result);
}
 

USER_OBJECT_
S_gdk_draw_drawable(USER_OBJECT_ s_object, USER_OBJECT_ s_gc, USER_OBJECT_ s_src, USER_OBJECT_ s_xsrc, USER_OBJECT_ s_ysrc, USER_OBJECT_ s_xdest, USER_OBJECT_ s_ydest, USER_OBJECT_ s_width, USER_OBJECT_ s_height)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkDrawable* object = GDK_DRAWABLE(getPtrValue(s_object));
  GdkGC* gc = GDK_GC(getPtrValue(s_gc));
  GdkDrawable* src = GDK_DRAWABLE(getPtrValue(s_src));
  gint xsrc = ((gint)asCInteger(s_xsrc));
  gint ysrc = ((gint)asCInteger(s_ysrc));
  gint xdest = ((gint)asCInteger(s_xdest));
  gint ydest = ((gint)asCInteger(s_ydest));
  gint width = ((gint)asCInteger(s_width));
  gint height = ((gint)asCInteger(s_height));


  gdk_draw_drawable(object, gc, src, xsrc, ysrc, xdest, ydest, width, height);


  return(_result);
}
 

USER_OBJECT_
S_gdk_draw_image(USER_OBJECT_ s_object, USER_OBJECT_ s_gc, USER_OBJECT_ s_image, USER_OBJECT_ s_xsrc, USER_OBJECT_ s_ysrc, USER_OBJECT_ s_xdest, USER_OBJECT_ s_ydest, USER_OBJECT_ s_width, USER_OBJECT_ s_height)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkDrawable* object = GDK_DRAWABLE(getPtrValue(s_object));
  GdkGC* gc = GDK_GC(getPtrValue(s_gc));
  GdkImage* image = GDK_IMAGE(getPtrValue(s_image));
  gint xsrc = ((gint)asCInteger(s_xsrc));
  gint ysrc = ((gint)asCInteger(s_ysrc));
  gint xdest = ((gint)asCInteger(s_xdest));
  gint ydest = ((gint)asCInteger(s_ydest));
  gint width = ((gint)asCInteger(s_width));
  gint height = ((gint)asCInteger(s_height));


  gdk_draw_image(object, gc, image, xsrc, ysrc, xdest, ydest, width, height);


  return(_result);
}
 

USER_OBJECT_
S_gdk_draw_points(USER_OBJECT_ s_object, USER_OBJECT_ s_gc, USER_OBJECT_ s_points)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkDrawable* object = GDK_DRAWABLE(getPtrValue(s_object));
  GdkGC* gc = GDK_GC(getPtrValue(s_gc));
  GdkPoint* points = ((GdkPoint*)asCArrayRef(s_points, GdkPoint, asCGdkPoint));
  gint npoints = ((gint)GET_LENGTH(s_points));


  gdk_draw_points(object, gc, points, npoints);


  return(_result);
}
 

USER_OBJECT_
S_gdk_draw_segments(USER_OBJECT_ s_object, USER_OBJECT_ s_gc, USER_OBJECT_ s_segs)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkDrawable* object = GDK_DRAWABLE(getPtrValue(s_object));
  GdkGC* gc = GDK_GC(getPtrValue(s_gc));
  GdkSegment* segs = ((GdkSegment*)asCArrayRef(s_segs, GdkSegment, asCGdkSegment));
  gint nsegs = ((gint)GET_LENGTH(s_segs));


  gdk_draw_segments(object, gc, segs, nsegs);


  return(_result);
}
 

USER_OBJECT_
S_gdk_draw_lines(USER_OBJECT_ s_object, USER_OBJECT_ s_gc, USER_OBJECT_ s_points)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkDrawable* object = GDK_DRAWABLE(getPtrValue(s_object));
  GdkGC* gc = GDK_GC(getPtrValue(s_gc));
  GdkPoint* points = ((GdkPoint*)asCArrayRef(s_points, GdkPoint, asCGdkPoint));
  gint npoints = ((gint)GET_LENGTH(s_points));


  gdk_draw_lines(object, gc, points, npoints);


  return(_result);
}
 

USER_OBJECT_
S_gdk_draw_pixbuf(USER_OBJECT_ s_object, USER_OBJECT_ s_gc, USER_OBJECT_ s_pixbuf, USER_OBJECT_ s_src_x, USER_OBJECT_ s_src_y, USER_OBJECT_ s_dest_x, USER_OBJECT_ s_dest_y, USER_OBJECT_ s_width, USER_OBJECT_ s_height, USER_OBJECT_ s_dither, USER_OBJECT_ s_x_dither, USER_OBJECT_ s_y_dither)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkDrawable* object = GDK_DRAWABLE(getPtrValue(s_object));
  GdkGC* gc = GET_LENGTH(s_gc) == 0 ? NULL : GDK_GC(getPtrValue(s_gc));
  GdkPixbuf* pixbuf = GDK_PIXBUF(getPtrValue(s_pixbuf));
  gint src_x = ((gint)asCInteger(s_src_x));
  gint src_y = ((gint)asCInteger(s_src_y));
  gint dest_x = ((gint)asCInteger(s_dest_x));
  gint dest_y = ((gint)asCInteger(s_dest_y));
  gint width = ((gint)asCInteger(s_width));
  gint height = ((gint)asCInteger(s_height));
  GdkRgbDither dither = ((GdkRgbDither)asCEnum(s_dither, GDK_TYPE_RGB_DITHER));
  gint x_dither = ((gint)asCInteger(s_x_dither));
  gint y_dither = ((gint)asCInteger(s_y_dither));


  gdk_draw_pixbuf(object, gc, pixbuf, src_x, src_y, dest_x, dest_y, width, height, dither, x_dither, y_dither);


  return(_result);
}
 

USER_OBJECT_
S_gdk_draw_glyphs(USER_OBJECT_ s_object, USER_OBJECT_ s_gc, USER_OBJECT_ s_font, USER_OBJECT_ s_x, USER_OBJECT_ s_y, USER_OBJECT_ s_glyphs)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkDrawable* object = GDK_DRAWABLE(getPtrValue(s_object));
  GdkGC* gc = GDK_GC(getPtrValue(s_gc));
  PangoFont* font = PANGO_FONT(getPtrValue(s_font));
  gint x = ((gint)asCInteger(s_x));
  gint y = ((gint)asCInteger(s_y));
  PangoGlyphString* glyphs = ((PangoGlyphString*)getPtrValue(s_glyphs));


  gdk_draw_glyphs(object, gc, font, x, y, glyphs);


  return(_result);
}
 

USER_OBJECT_
S_gdk_draw_layout_line(USER_OBJECT_ s_object, USER_OBJECT_ s_gc, USER_OBJECT_ s_x, USER_OBJECT_ s_y, USER_OBJECT_ s_line)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkDrawable* object = GDK_DRAWABLE(getPtrValue(s_object));
  GdkGC* gc = GDK_GC(getPtrValue(s_gc));
  gint x = ((gint)asCInteger(s_x));
  gint y = ((gint)asCInteger(s_y));
  PangoLayoutLine* line = ((PangoLayoutLine*)getPtrValue(s_line));


  gdk_draw_layout_line(object, gc, x, y, line);


  return(_result);
}
 

USER_OBJECT_
S_gdk_draw_layout(USER_OBJECT_ s_object, USER_OBJECT_ s_gc, USER_OBJECT_ s_x, USER_OBJECT_ s_y, USER_OBJECT_ s_layout)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkDrawable* object = GDK_DRAWABLE(getPtrValue(s_object));
  GdkGC* gc = GDK_GC(getPtrValue(s_gc));
  gint x = ((gint)asCInteger(s_x));
  gint y = ((gint)asCInteger(s_y));
  PangoLayout* layout = PANGO_LAYOUT(getPtrValue(s_layout));


  gdk_draw_layout(object, gc, x, y, layout);


  return(_result);
}
 

USER_OBJECT_
S_gdk_draw_layout_line_with_colors(USER_OBJECT_ s_drawable, USER_OBJECT_ s_gc, USER_OBJECT_ s_x, USER_OBJECT_ s_y, USER_OBJECT_ s_line, USER_OBJECT_ s_foreground, USER_OBJECT_ s_background)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkDrawable* drawable = GDK_DRAWABLE(getPtrValue(s_drawable));
  GdkGC* gc = GDK_GC(getPtrValue(s_gc));
  gint x = ((gint)asCInteger(s_x));
  gint y = ((gint)asCInteger(s_y));
  PangoLayoutLine* line = ((PangoLayoutLine*)getPtrValue(s_line));
  GdkColor* foreground = asCGdkColor(s_foreground);
  GdkColor* background = asCGdkColor(s_background);


  gdk_draw_layout_line_with_colors(drawable, gc, x, y, line, foreground, background);


  return(_result);
}
 

USER_OBJECT_
S_gdk_draw_layout_with_colors(USER_OBJECT_ s_drawable, USER_OBJECT_ s_gc, USER_OBJECT_ s_x, USER_OBJECT_ s_y, USER_OBJECT_ s_layout, USER_OBJECT_ s_foreground, USER_OBJECT_ s_background)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkDrawable* drawable = GDK_DRAWABLE(getPtrValue(s_drawable));
  GdkGC* gc = GDK_GC(getPtrValue(s_gc));
  gint x = ((gint)asCInteger(s_x));
  gint y = ((gint)asCInteger(s_y));
  PangoLayout* layout = PANGO_LAYOUT(getPtrValue(s_layout));
  GdkColor* foreground = asCGdkColor(s_foreground);
  GdkColor* background = asCGdkColor(s_background);


  gdk_draw_layout_with_colors(drawable, gc, x, y, layout, foreground, background);


  return(_result);
}
 

USER_OBJECT_
S_gdk_draw_glyphs_transformed(USER_OBJECT_ s_drawable, USER_OBJECT_ s_gc, USER_OBJECT_ s_matrix, USER_OBJECT_ s_font, USER_OBJECT_ s_x, USER_OBJECT_ s_y, USER_OBJECT_ s_glyphs)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkDrawable* drawable = GDK_DRAWABLE(getPtrValue(s_drawable));
  GdkGC* gc = GDK_GC(getPtrValue(s_gc));
  PangoMatrix* matrix = ((PangoMatrix*)getPtrValue(s_matrix));
  PangoFont* font = PANGO_FONT(getPtrValue(s_font));
  gint x = ((gint)asCInteger(s_x));
  gint y = ((gint)asCInteger(s_y));
  PangoGlyphString* glyphs = ((PangoGlyphString*)getPtrValue(s_glyphs));


  gdk_draw_glyphs_transformed(drawable, gc, matrix, font, x, y, glyphs);


  return(_result);
}
 

USER_OBJECT_
S_gdk_draw_trapezoids(USER_OBJECT_ s_drawable, USER_OBJECT_ s_gc, USER_OBJECT_ s_trapezoids)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkDrawable* drawable = GDK_DRAWABLE(getPtrValue(s_drawable));
  GdkGC* gc = GDK_GC(getPtrValue(s_gc));
  GdkTrapezoid* trapezoids = ((GdkTrapezoid*)asCArrayRef(s_trapezoids, GdkTrapezoid, asCGdkTrapezoid));
  gint n_trapezoids = ((gint)GET_LENGTH(s_trapezoids));


  gdk_draw_trapezoids(drawable, gc, trapezoids, n_trapezoids);


  return(_result);
}
 

USER_OBJECT_
S_gdk_drawable_get_image(USER_OBJECT_ s_object, USER_OBJECT_ s_x, USER_OBJECT_ s_y, USER_OBJECT_ s_width, USER_OBJECT_ s_height)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkDrawable* object = GDK_DRAWABLE(getPtrValue(s_object));
  gint x = ((gint)asCInteger(s_x));
  gint y = ((gint)asCInteger(s_y));
  gint width = ((gint)asCInteger(s_width));
  gint height = ((gint)asCInteger(s_height));

  GdkImage* ans;

  ans = gdk_drawable_get_image(object, x, y, width, height);

  _result = toRPointerWithFinalizer(ans, "GdkImage", (RPointerFinalizer) g_object_unref);

  return(_result);
}
 

USER_OBJECT_
S_gdk_drawable_get_clip_region(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkDrawable* object = GDK_DRAWABLE(getPtrValue(s_object));

  GdkRegion* ans;

  ans = gdk_drawable_get_clip_region(object);

  _result = toRPointerWithFinalizer(ans, "GdkRegion", (RPointerFinalizer) gdk_region_destroy);

  return(_result);
}
 

USER_OBJECT_
S_gdk_drawable_get_visible_region(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkDrawable* object = GDK_DRAWABLE(getPtrValue(s_object));

  GdkRegion* ans;

  ans = gdk_drawable_get_visible_region(object);

  _result = toRPointerWithFinalizer(ans, "GdkRegion", (RPointerFinalizer) gdk_region_destroy);

  return(_result);
}
 

USER_OBJECT_
S_gdk_event_get_type(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  GType ans;

  ans = gdk_event_get_type();

  _result = asRGType(ans);

  return(_result);
}
 

USER_OBJECT_
S_gdk_events_pending(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  gboolean ans;

  ans = gdk_events_pending();

  _result = asRLogical(ans);

  return(_result);
}
 

USER_OBJECT_
S_gdk_event_get(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  GdkEvent* ans;

  ans = gdk_event_get();

  _result = toRGdkEvent(((GdkEvent *)ans), TRUE);

  return(_result);
}
 

USER_OBJECT_
S_gdk_event_peek(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  GdkEvent* ans;

  ans = gdk_event_peek();

  _result = toRGdkEvent(((GdkEvent *)ans), TRUE);

  return(_result);
}
 

USER_OBJECT_
S_gdk_event_get_graphics_expose(USER_OBJECT_ s_window)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkWindow* window = GDK_WINDOW(getPtrValue(s_window));

  GdkEvent* ans;

  ans = gdk_event_get_graphics_expose(window);

  _result = toRGdkEvent(((GdkEvent *)ans), TRUE);

  return(_result);
}
 

USER_OBJECT_
S_gdk_event_put(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkEvent* object = ((GdkEvent*)getPtrValue(s_object));


  gdk_event_put(object);


  return(_result);
}
 

USER_OBJECT_
S_gdk_event_new(USER_OBJECT_ s_type)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkEventType type = ((GdkEventType)asCEnum(s_type, GDK_TYPE_EVENT_TYPE));

  GdkEvent* ans;

  ans = gdk_event_new(type);

  _result = toRGdkEvent(((GdkEvent *)ans), TRUE);

  return(_result);
}
 

USER_OBJECT_
S_gdk_event_copy(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkEvent* object = ((GdkEvent*)getPtrValue(s_object));

  GdkEvent* ans;

  ans = gdk_event_copy(object);

  _result = toRGdkEvent(((GdkEvent *)ans), TRUE);

  return(_result);
}
 

USER_OBJECT_
S_gdk_event_free(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkEvent* object = ((GdkEvent*)getPtrValue(s_object));


  gdk_event_free(object);


  return(_result);
}
 

USER_OBJECT_
S_gdk_event_get_time(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkEvent* object = ((GdkEvent*)getPtrValue(s_object));

  guint32 ans;

  ans = gdk_event_get_time(object);

  _result = asRNumeric(ans);

  return(_result);
}
 

USER_OBJECT_
S_gdk_event_get_state(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkEvent* object = ((GdkEvent*)getPtrValue(s_object));

  gboolean ans;
  GdkModifierType state;

  ans = gdk_event_get_state(object, &state);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "state", PROTECT(asRFlag(state, GDK_TYPE_MODIFIER_TYPE)), NULL);
  UNPROTECT(2);
  ;

  return(_result);
}
 

USER_OBJECT_
S_gdk_event_get_coords(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkEvent* object = ((GdkEvent*)getPtrValue(s_object));

  gboolean ans;
  gdouble x_win;
  gdouble y_win;

  ans = gdk_event_get_coords(object, &x_win, &y_win);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "x.win", PROTECT(asRNumeric(x_win)), "y.win", PROTECT(asRNumeric(y_win)), NULL);
  UNPROTECT(3);
  ;
  ;

  return(_result);
}
 

USER_OBJECT_
S_gdk_event_get_root_coords(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkEvent* object = ((GdkEvent*)getPtrValue(s_object));

  gboolean ans;
  gdouble x_root;
  gdouble y_root;

  ans = gdk_event_get_root_coords(object, &x_root, &y_root);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "x.root", PROTECT(asRNumeric(x_root)), "y.root", PROTECT(asRNumeric(y_root)), NULL);
  UNPROTECT(3);
  ;
  ;

  return(_result);
}
 

USER_OBJECT_
S_gdk_event_get_axis(USER_OBJECT_ s_object, USER_OBJECT_ s_axis_use)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkEvent* object = ((GdkEvent*)getPtrValue(s_object));
  GdkAxisUse axis_use = ((GdkAxisUse)asCEnum(s_axis_use, GDK_TYPE_AXIS_USE));

  gboolean ans;
  gdouble value;

  ans = gdk_event_get_axis(object, axis_use, &value);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "value", PROTECT(asRNumeric(value)), NULL);
  UNPROTECT(2);
  ;

  return(_result);
}
 

USER_OBJECT_
S_gdk_event_handler_set(USER_OBJECT_ s_func, USER_OBJECT_ s_data)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkEventFunc func = ((GdkEventFunc)S_GdkEventFunc);
  R_CallbackData* data = R_createCBData(s_func, s_data);
  GDestroyNotify notify = ((GDestroyNotify)R_freeCBData);


  gdk_event_handler_set(func, data, notify);


  return(_result);
}
 

USER_OBJECT_
S_gdk_event_set_screen(USER_OBJECT_ s_object, USER_OBJECT_ s_screen)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkEvent* object = ((GdkEvent*)getPtrValue(s_object));
  GdkScreen* screen = GDK_SCREEN(getPtrValue(s_screen));


  gdk_event_set_screen(object, screen);


  return(_result);
}
 

USER_OBJECT_
S_gdk_event_get_screen(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkEvent* object = ((GdkEvent*)getPtrValue(s_object));

  GdkScreen* ans;

  ans = gdk_event_get_screen(object);

  _result = toRPointerWithRef(ans, "GdkScreen");

  return(_result);
}
 

USER_OBJECT_
S_gdk_set_show_events(USER_OBJECT_ s_show_events)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  gboolean show_events = ((gboolean)asCLogical(s_show_events));


  gdk_set_show_events(show_events);


  return(_result);
}
 

USER_OBJECT_
S_gdk_get_show_events(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  gboolean ans;

  ans = gdk_get_show_events();

  _result = asRLogical(ans);

  return(_result);
}
 

USER_OBJECT_
S_gdk_add_client_message_filter(USER_OBJECT_ s_message_type, USER_OBJECT_ s_func, USER_OBJECT_ s_data)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkFilterFunc func = ((GdkFilterFunc)S_GdkFilterFunc);
  R_CallbackData* data = R_createCBData(s_func, s_data);
  GdkAtom message_type = asCGdkAtom(s_message_type);


  gdk_add_client_message_filter(message_type, func, data);

  R_freeCBData(data);

  return(_result);
}
 

USER_OBJECT_
S_gdk_setting_get(USER_OBJECT_ s_name)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  const gchar* name = ((const gchar*)asCString(s_name));

  gboolean ans;
  GValue* value = ((GValue *)g_new0(GValue, 1));

  ans = gdk_setting_get(name, value);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "value", PROTECT(asRGValue(value)), NULL);
  UNPROTECT(2);
    CLEANUP(g_value_unset, value);
  CLEANUP(g_free, value);;

  return(_result);
}
 

USER_OBJECT_
S_gdk_font_id(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkFont* object = ((GdkFont*)getPtrValue(s_object));

  gint ans;

  ans = gdk_font_id(object);

  _result = asRInteger(ans);

  return(_result);
}
 

USER_OBJECT_
S_gdk_font_load_for_display(USER_OBJECT_ s_display, USER_OBJECT_ s_font_name)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkDisplay* display = GDK_DISPLAY_OBJECT(getPtrValue(s_display));
  const gchar* font_name = ((const gchar*)asCString(s_font_name));

  GdkFont* ans;

  ans = gdk_font_load_for_display(display, font_name);

  _result = toRGdkFont(ans);

  return(_result);
}
 

USER_OBJECT_
S_gdk_fontset_load_for_display(USER_OBJECT_ s_display, USER_OBJECT_ s_fontset_name)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkDisplay* display = GDK_DISPLAY_OBJECT(getPtrValue(s_display));
  const gchar* fontset_name = ((const gchar*)asCString(s_fontset_name));

  GdkFont* ans;

  ans = gdk_fontset_load_for_display(display, fontset_name);

  _result = toRGdkFont(ans);

  return(_result);
}
 

USER_OBJECT_
S_gdk_font_from_description_for_display(USER_OBJECT_ s_display, USER_OBJECT_ s_font_desc)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkDisplay* display = GDK_DISPLAY_OBJECT(getPtrValue(s_display));
  PangoFontDescription* font_desc = ((PangoFontDescription*)getPtrValue(s_font_desc));

  GdkFont* ans;

  ans = gdk_font_from_description_for_display(display, font_desc);

  _result = toRGdkFont(ans);

  return(_result);
}
 

USER_OBJECT_
S_gdk_font_load(USER_OBJECT_ s_font_name)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  const gchar* font_name = ((const gchar*)asCString(s_font_name));

  GdkFont* ans;

  ans = gdk_font_load(font_name);

  _result = toRGdkFont(ans);

  return(_result);
}
 

USER_OBJECT_
S_gdk_fontset_load(USER_OBJECT_ s_fontset_name)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  const gchar* fontset_name = ((const gchar*)asCString(s_fontset_name));

  GdkFont* ans;

  ans = gdk_fontset_load(fontset_name);

  _result = toRGdkFont(ans);

  return(_result);
}
 

USER_OBJECT_
S_gdk_font_from_description(USER_OBJECT_ s_font_desc)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoFontDescription* font_desc = ((PangoFontDescription*)getPtrValue(s_font_desc));

  GdkFont* ans;

  ans = gdk_font_from_description(font_desc);

  _result = toRGdkFont(ans);

  return(_result);
}
 

USER_OBJECT_
S_gdk_string_width(USER_OBJECT_ s_object, USER_OBJECT_ s_string)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkFont* object = ((GdkFont*)getPtrValue(s_object));
  const gchar* string = ((const gchar*)asCString(s_string));

  gint ans;

  ans = gdk_string_width(object, string);

  _result = asRInteger(ans);

  return(_result);
}
 

USER_OBJECT_
S_gdk_text_width(USER_OBJECT_ s_object, USER_OBJECT_ s_text, USER_OBJECT_ s_text_length)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkFont* object = ((GdkFont*)getPtrValue(s_object));
  const gchar* text = ((const gchar*)asCString(s_text));
  gint text_length = ((gint)asCInteger(s_text_length));

  gint ans;

  ans = gdk_text_width(object, text, text_length);

  _result = asRInteger(ans);

  return(_result);
}
 

USER_OBJECT_
S_gdk_text_width_wc(USER_OBJECT_ s_object, USER_OBJECT_ s_text)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkFont* object = ((GdkFont*)getPtrValue(s_object));
  const GdkWChar* text = ((const GdkWChar*)asCArray(s_text, GdkWChar, asCNumeric));
  gint text_length = ((gint)GET_LENGTH(s_text));

  gint ans;

  ans = gdk_text_width_wc(object, text, text_length);

  _result = asRInteger(ans);

  return(_result);
}
 

USER_OBJECT_
S_gdk_char_width(USER_OBJECT_ s_object, USER_OBJECT_ s_character)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkFont* object = ((GdkFont*)getPtrValue(s_object));
  gchar character = ((gchar)asCCharacter(s_character));

  gint ans;

  ans = gdk_char_width(object, character);

  _result = asRInteger(ans);

  return(_result);
}
 

USER_OBJECT_
S_gdk_char_width_wc(USER_OBJECT_ s_object, USER_OBJECT_ s_character)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkFont* object = ((GdkFont*)getPtrValue(s_object));
  GdkWChar character = ((GdkWChar)asCNumeric(s_character));

  gint ans;

  ans = gdk_char_width_wc(object, character);

  _result = asRInteger(ans);

  return(_result);
}
 

USER_OBJECT_
S_gdk_string_measure(USER_OBJECT_ s_object, USER_OBJECT_ s_string)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkFont* object = ((GdkFont*)getPtrValue(s_object));
  const gchar* string = ((const gchar*)asCString(s_string));

  gint ans;

  ans = gdk_string_measure(object, string);

  _result = asRInteger(ans);

  return(_result);
}
 

USER_OBJECT_
S_gdk_text_measure(USER_OBJECT_ s_object, USER_OBJECT_ s_text, USER_OBJECT_ s_text_length)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkFont* object = ((GdkFont*)getPtrValue(s_object));
  const gchar* text = ((const gchar*)asCString(s_text));
  gint text_length = ((gint)asCInteger(s_text_length));

  gint ans;

  ans = gdk_text_measure(object, text, text_length);

  _result = asRInteger(ans);

  return(_result);
}
 

USER_OBJECT_
S_gdk_char_measure(USER_OBJECT_ s_object, USER_OBJECT_ s_character)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkFont* object = ((GdkFont*)getPtrValue(s_object));
  gchar character = ((gchar)asCCharacter(s_character));

  gint ans;

  ans = gdk_char_measure(object, character);

  _result = asRInteger(ans);

  return(_result);
}
 

USER_OBJECT_
S_gdk_string_height(USER_OBJECT_ s_object, USER_OBJECT_ s_string)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkFont* object = ((GdkFont*)getPtrValue(s_object));
  const gchar* string = ((const gchar*)asCString(s_string));

  gint ans;

  ans = gdk_string_height(object, string);

  _result = asRInteger(ans);

  return(_result);
}
 

USER_OBJECT_
S_gdk_text_height(USER_OBJECT_ s_object, USER_OBJECT_ s_text, USER_OBJECT_ s_text_length)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkFont* object = ((GdkFont*)getPtrValue(s_object));
  const gchar* text = ((const gchar*)asCString(s_text));
  gint text_length = ((gint)asCInteger(s_text_length));

  gint ans;

  ans = gdk_text_height(object, text, text_length);

  _result = asRInteger(ans);

  return(_result);
}
 

USER_OBJECT_
S_gdk_char_height(USER_OBJECT_ s_object, USER_OBJECT_ s_character)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkFont* object = ((GdkFont*)getPtrValue(s_object));
  gchar character = ((gchar)asCCharacter(s_character));

  gint ans;

  ans = gdk_char_height(object, character);

  _result = asRInteger(ans);

  return(_result);
}
 

USER_OBJECT_
S_gdk_text_extents(USER_OBJECT_ s_object, USER_OBJECT_ s_text, USER_OBJECT_ s_text_length)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkFont* object = ((GdkFont*)getPtrValue(s_object));
  const gchar* text = ((const gchar*)asCString(s_text));
  gint text_length = ((gint)asCInteger(s_text_length));

  gint lbearing;
  gint rbearing;
  gint width;
  gint ascent;
  gint descent;

  gdk_text_extents(object, text, text_length, &lbearing, &rbearing, &width, &ascent, &descent);


  _result = retByVal(PROTECT(_result), "lbearing", PROTECT(asRInteger(lbearing)), "rbearing", PROTECT(asRInteger(rbearing)), "width", PROTECT(asRInteger(width)), "ascent", PROTECT(asRInteger(ascent)), "descent", PROTECT(asRInteger(descent)), NULL);
  UNPROTECT(6);
  ;
  ;
  ;
  ;
  ;

  return(_result);
}
 

USER_OBJECT_
S_gdk_text_extents_wc(USER_OBJECT_ s_object, USER_OBJECT_ s_text)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkFont* object = ((GdkFont*)getPtrValue(s_object));
  const GdkWChar* text = ((const GdkWChar*)asCArray(s_text, GdkWChar, asCNumeric));
  gint text_length = ((gint)GET_LENGTH(s_text));

  gint lbearing;
  gint rbearing;
  gint width;
  gint ascent;
  gint descent;

  gdk_text_extents_wc(object, text, text_length, &lbearing, &rbearing, &width, &ascent, &descent);


  _result = retByVal(PROTECT(_result), "lbearing", PROTECT(asRInteger(lbearing)), "rbearing", PROTECT(asRInteger(rbearing)), "width", PROTECT(asRInteger(width)), "ascent", PROTECT(asRInteger(ascent)), "descent", PROTECT(asRInteger(descent)), NULL);
  UNPROTECT(6);
  ;
  ;
  ;
  ;
  ;

  return(_result);
}
 

USER_OBJECT_
S_gdk_string_extents(USER_OBJECT_ s_object, USER_OBJECT_ s_string)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkFont* object = ((GdkFont*)getPtrValue(s_object));
  const gchar* string = ((const gchar*)asCString(s_string));

  gint lbearing;
  gint rbearing;
  gint width;
  gint ascent;
  gint descent;

  gdk_string_extents(object, string, &lbearing, &rbearing, &width, &ascent, &descent);


  _result = retByVal(PROTECT(_result), "lbearing", PROTECT(asRInteger(lbearing)), "rbearing", PROTECT(asRInteger(rbearing)), "width", PROTECT(asRInteger(width)), "ascent", PROTECT(asRInteger(ascent)), "descent", PROTECT(asRInteger(descent)), NULL);
  UNPROTECT(6);
  ;
  ;
  ;
  ;
  ;

  return(_result);
}
 

USER_OBJECT_
S_gdk_font_get_display(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkFont* object = ((GdkFont*)getPtrValue(s_object));

  GdkDisplay* ans;

  ans = gdk_font_get_display(object);

  _result = toRPointerWithRef(ans, "GdkDisplay");

  return(_result);
}
 

USER_OBJECT_
S_gdk_gc_get_type(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  GType ans;

  ans = gdk_gc_get_type();

  _result = asRGType(ans);

  return(_result);
}
 

USER_OBJECT_
S_gdk_gc_new(USER_OBJECT_ s_drawable)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkDrawable* drawable = GDK_DRAWABLE(getPtrValue(s_drawable));

  GdkGC* ans;

  ans = gdk_gc_new(drawable);

  _result = toRPointerWithFinalizer(ans, "GdkGC", (RPointerFinalizer) g_object_unref);

  return(_result);
}
 

USER_OBJECT_
S_gdk_gc_get_values(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkGC* object = GDK_GC(getPtrValue(s_object));

  GdkGCValues* values = ((GdkGCValues *)g_new0(GdkGCValues, 1));

  gdk_gc_get_values(object, values);


  _result = retByVal(PROTECT(_result), "values", PROTECT(asRGdkGCValues(values)), NULL);
  UNPROTECT(2);
    CLEANUP(g_free, values);;

  return(_result);
}
 

USER_OBJECT_
S_gdk_gc_set_foreground(USER_OBJECT_ s_object, USER_OBJECT_ s_color)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkGC* object = GDK_GC(getPtrValue(s_object));
  GdkColor* color = asCGdkColor(s_color);


  gdk_gc_set_foreground(object, color);


  return(_result);
}
 

USER_OBJECT_
S_gdk_gc_set_background(USER_OBJECT_ s_object, USER_OBJECT_ s_color)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkGC* object = GDK_GC(getPtrValue(s_object));
  GdkColor* color = asCGdkColor(s_color);


  gdk_gc_set_background(object, color);


  return(_result);
}
 

USER_OBJECT_
S_gdk_gc_set_font(USER_OBJECT_ s_object, USER_OBJECT_ s_font)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkGC* object = GDK_GC(getPtrValue(s_object));
  GdkFont* font = ((GdkFont*)getPtrValue(s_font));


  gdk_gc_set_font(object, font);


  return(_result);
}
 

USER_OBJECT_
S_gdk_gc_set_function(USER_OBJECT_ s_object, USER_OBJECT_ s_function)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkGC* object = GDK_GC(getPtrValue(s_object));
  GdkFunction function = ((GdkFunction)asCEnum(s_function, GDK_TYPE_FUNCTION));


  gdk_gc_set_function(object, function);


  return(_result);
}
 

USER_OBJECT_
S_gdk_gc_set_fill(USER_OBJECT_ s_object, USER_OBJECT_ s_fill)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkGC* object = GDK_GC(getPtrValue(s_object));
  GdkFill fill = ((GdkFill)asCEnum(s_fill, GDK_TYPE_FILL));


  gdk_gc_set_fill(object, fill);


  return(_result);
}
 

USER_OBJECT_
S_gdk_gc_set_tile(USER_OBJECT_ s_object, USER_OBJECT_ s_tile)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkGC* object = GDK_GC(getPtrValue(s_object));
  GdkPixmap* tile = GDK_PIXMAP(getPtrValue(s_tile));


  gdk_gc_set_tile(object, tile);


  return(_result);
}
 

USER_OBJECT_
S_gdk_gc_set_stipple(USER_OBJECT_ s_object, USER_OBJECT_ s_stipple)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkGC* object = GDK_GC(getPtrValue(s_object));
  GdkPixmap* stipple = GDK_PIXMAP(getPtrValue(s_stipple));


  gdk_gc_set_stipple(object, stipple);


  return(_result);
}
 

USER_OBJECT_
S_gdk_gc_set_ts_origin(USER_OBJECT_ s_object, USER_OBJECT_ s_x, USER_OBJECT_ s_y)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkGC* object = GDK_GC(getPtrValue(s_object));
  gint x = ((gint)asCInteger(s_x));
  gint y = ((gint)asCInteger(s_y));


  gdk_gc_set_ts_origin(object, x, y);


  return(_result);
}
 

USER_OBJECT_
S_gdk_gc_set_clip_origin(USER_OBJECT_ s_object, USER_OBJECT_ s_x, USER_OBJECT_ s_y)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkGC* object = GDK_GC(getPtrValue(s_object));
  gint x = ((gint)asCInteger(s_x));
  gint y = ((gint)asCInteger(s_y));


  gdk_gc_set_clip_origin(object, x, y);


  return(_result);
}
 

USER_OBJECT_
S_gdk_gc_set_clip_mask(USER_OBJECT_ s_object, USER_OBJECT_ s_mask)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkGC* object = GDK_GC(getPtrValue(s_object));
  GdkBitmap* mask = GDK_DRAWABLE(getPtrValue(s_mask));


  gdk_gc_set_clip_mask(object, mask);


  return(_result);
}
 

USER_OBJECT_
S_gdk_gc_set_clip_rectangle(USER_OBJECT_ s_object, USER_OBJECT_ s_rectangle)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkGC* object = GDK_GC(getPtrValue(s_object));
  GdkRectangle* rectangle = asCGdkRectangle(s_rectangle);


  gdk_gc_set_clip_rectangle(object, rectangle);


  return(_result);
}
 

USER_OBJECT_
S_gdk_gc_set_clip_region(USER_OBJECT_ s_object, USER_OBJECT_ s_region)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkGC* object = GDK_GC(getPtrValue(s_object));
  GdkRegion* region = ((GdkRegion*)getPtrValue(s_region));


  gdk_gc_set_clip_region(object, region);


  return(_result);
}
 

USER_OBJECT_
S_gdk_gc_set_subwindow(USER_OBJECT_ s_object, USER_OBJECT_ s_mode)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkGC* object = GDK_GC(getPtrValue(s_object));
  GdkSubwindowMode mode = ((GdkSubwindowMode)asCEnum(s_mode, GDK_TYPE_SUBWINDOW_MODE));


  gdk_gc_set_subwindow(object, mode);


  return(_result);
}
 

USER_OBJECT_
S_gdk_gc_set_exposures(USER_OBJECT_ s_object, USER_OBJECT_ s_exposures)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkGC* object = GDK_GC(getPtrValue(s_object));
  gboolean exposures = ((gboolean)asCLogical(s_exposures));


  gdk_gc_set_exposures(object, exposures);


  return(_result);
}
 

USER_OBJECT_
S_gdk_gc_set_line_attributes(USER_OBJECT_ s_object, USER_OBJECT_ s_line_width, USER_OBJECT_ s_line_style, USER_OBJECT_ s_cap_style, USER_OBJECT_ s_join_style)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkGC* object = GDK_GC(getPtrValue(s_object));
  gint line_width = ((gint)asCInteger(s_line_width));
  GdkLineStyle line_style = ((GdkLineStyle)asCEnum(s_line_style, GDK_TYPE_LINE_STYLE));
  GdkCapStyle cap_style = ((GdkCapStyle)asCEnum(s_cap_style, GDK_TYPE_CAP_STYLE));
  GdkJoinStyle join_style = ((GdkJoinStyle)asCEnum(s_join_style, GDK_TYPE_JOIN_STYLE));


  gdk_gc_set_line_attributes(object, line_width, line_style, cap_style, join_style);


  return(_result);
}
 

USER_OBJECT_
S_gdk_gc_set_dashes(USER_OBJECT_ s_object, USER_OBJECT_ s_dash_list)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkGC* object = GDK_GC(getPtrValue(s_object));
  gint dash_offset = ((gint)GET_LENGTH(s_dash_list));
  gint8* dash_list = ((gint8*)asCArray(s_dash_list, gint8, asCRaw));
  gint n = ((gint)GET_LENGTH(s_dash_list));


  gdk_gc_set_dashes(object, dash_offset, dash_list, n);


  return(_result);
}
 

USER_OBJECT_
S_gdk_gc_offset(USER_OBJECT_ s_object, USER_OBJECT_ s_x_offset, USER_OBJECT_ s_y_offset)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkGC* object = GDK_GC(getPtrValue(s_object));
  gint x_offset = ((gint)asCInteger(s_x_offset));
  gint y_offset = ((gint)asCInteger(s_y_offset));


  gdk_gc_offset(object, x_offset, y_offset);


  return(_result);
}
 

USER_OBJECT_
S_gdk_gc_copy(USER_OBJECT_ s_object, USER_OBJECT_ s_src_gc)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkGC* object = GDK_GC(getPtrValue(s_object));
  GdkGC* src_gc = GDK_GC(getPtrValue(s_src_gc));


  gdk_gc_copy(object, src_gc);


  return(_result);
}
 

USER_OBJECT_
S_gdk_gc_set_colormap(USER_OBJECT_ s_object, USER_OBJECT_ s_colormap)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkGC* object = GDK_GC(getPtrValue(s_object));
  GdkColormap* colormap = GDK_COLORMAP(getPtrValue(s_colormap));


  gdk_gc_set_colormap(object, colormap);


  return(_result);
}
 

USER_OBJECT_
S_gdk_gc_get_colormap(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkGC* object = GDK_GC(getPtrValue(s_object));

  GdkColormap* ans;

  ans = gdk_gc_get_colormap(object);

  _result = toRPointerWithRef(ans, "GdkColormap");

  return(_result);
}
 

USER_OBJECT_
S_gdk_gc_set_rgb_fg_color(USER_OBJECT_ s_object, USER_OBJECT_ s_color)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkGC* object = GDK_GC(getPtrValue(s_object));
  GdkColor* color = asCGdkColor(s_color);


  gdk_gc_set_rgb_fg_color(object, color);


  return(_result);
}
 

USER_OBJECT_
S_gdk_gc_set_rgb_bg_color(USER_OBJECT_ s_object, USER_OBJECT_ s_color)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkGC* object = GDK_GC(getPtrValue(s_object));
  GdkColor* color = asCGdkColor(s_color);


  gdk_gc_set_rgb_bg_color(object, color);


  return(_result);
}
 

USER_OBJECT_
S_gdk_gc_get_screen(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkGC* object = GDK_GC(getPtrValue(s_object));

  GdkScreen* ans;

  ans = gdk_gc_get_screen(object);

  _result = toRPointerWithRef(ans, "GdkScreen");

  return(_result);
}
 

USER_OBJECT_
S_gdk_image_get_type(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  GType ans;

  ans = gdk_image_get_type();

  _result = asRGType(ans);

  return(_result);
}
 

USER_OBJECT_
S_gdk_image_new(USER_OBJECT_ s_type, USER_OBJECT_ s_visual, USER_OBJECT_ s_width, USER_OBJECT_ s_height)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkImageType type = ((GdkImageType)asCEnum(s_type, GDK_TYPE_IMAGE_TYPE));
  GdkVisual* visual = GDK_VISUAL(getPtrValue(s_visual));
  gint width = ((gint)asCInteger(s_width));
  gint height = ((gint)asCInteger(s_height));

  GdkImage* ans;

  ans = gdk_image_new(type, visual, width, height);

  _result = toRPointerWithFinalizer(ans, "GdkImage", (RPointerFinalizer) g_object_unref);

  return(_result);
}
 

USER_OBJECT_
S_gdk_image_get(USER_OBJECT_ s_object, USER_OBJECT_ s_x, USER_OBJECT_ s_y, USER_OBJECT_ s_width, USER_OBJECT_ s_height)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkDrawable* object = GDK_DRAWABLE(getPtrValue(s_object));
  gint x = ((gint)asCInteger(s_x));
  gint y = ((gint)asCInteger(s_y));
  gint width = ((gint)asCInteger(s_width));
  gint height = ((gint)asCInteger(s_height));

  GdkImage* ans;

  ans = gdk_image_get(object, x, y, width, height);

  _result = toRPointerWithFinalizer(ans, "GdkImage", (RPointerFinalizer) g_object_unref);

  return(_result);
}
 

USER_OBJECT_
S_gdk_image_put_pixel(USER_OBJECT_ s_object, USER_OBJECT_ s_x, USER_OBJECT_ s_y, USER_OBJECT_ s_pixel)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkImage* object = GDK_IMAGE(getPtrValue(s_object));
  gint x = ((gint)asCInteger(s_x));
  gint y = ((gint)asCInteger(s_y));
  guint32 pixel = ((guint32)asCNumeric(s_pixel));


  gdk_image_put_pixel(object, x, y, pixel);


  return(_result);
}
 

USER_OBJECT_
S_gdk_image_get_pixel(USER_OBJECT_ s_object, USER_OBJECT_ s_x, USER_OBJECT_ s_y)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkImage* object = GDK_IMAGE(getPtrValue(s_object));
  gint x = ((gint)asCInteger(s_x));
  gint y = ((gint)asCInteger(s_y));

  guint32 ans;

  ans = gdk_image_get_pixel(object, x, y);

  _result = asRNumeric(ans);

  return(_result);
}
 

USER_OBJECT_
S_gdk_image_set_colormap(USER_OBJECT_ s_object, USER_OBJECT_ s_colormap)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkImage* object = GDK_IMAGE(getPtrValue(s_object));
  GdkColormap* colormap = GDK_COLORMAP(getPtrValue(s_colormap));


  gdk_image_set_colormap(object, colormap);


  return(_result);
}
 

USER_OBJECT_
S_gdk_image_get_colormap(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkImage* object = GDK_IMAGE(getPtrValue(s_object));

  GdkColormap* ans;

  ans = gdk_image_get_colormap(object);

  _result = toRPointerWithRef(ans, "GdkColormap");

  return(_result);
}
 

USER_OBJECT_
S_gdk_device_get_type(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  GType ans;

  ans = gdk_device_get_type();

  _result = asRGType(ans);

  return(_result);
}
 

USER_OBJECT_
S_gdk_devices_list(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  GList* ans;

  ans = gdk_devices_list();

  _result = asRGListWithRef(ans, "GdkDevice");

  return(_result);
}
 

USER_OBJECT_
S_gdk_device_set_source(USER_OBJECT_ s_object, USER_OBJECT_ s_source)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkDevice* object = GDK_DEVICE(getPtrValue(s_object));
  GdkInputSource source = ((GdkInputSource)asCEnum(s_source, GDK_TYPE_INPUT_SOURCE));


  gdk_device_set_source(object, source);


  return(_result);
}
 

USER_OBJECT_
S_gdk_device_set_mode(USER_OBJECT_ s_object, USER_OBJECT_ s_mode)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkDevice* object = GDK_DEVICE(getPtrValue(s_object));
  GdkInputMode mode = ((GdkInputMode)asCEnum(s_mode, GDK_TYPE_INPUT_MODE));

  gboolean ans;

  ans = gdk_device_set_mode(object, mode);

  _result = asRLogical(ans);

  return(_result);
}
 

USER_OBJECT_
S_gdk_device_set_key(USER_OBJECT_ s_object, USER_OBJECT_ s_index, USER_OBJECT_ s_keyval, USER_OBJECT_ s_modifiers)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkDevice* object = GDK_DEVICE(getPtrValue(s_object));
  guint index = ((guint)asCNumeric(s_index));
  guint keyval = ((guint)asCNumeric(s_keyval));
  GdkModifierType modifiers = ((GdkModifierType)asCFlag(s_modifiers, GDK_TYPE_MODIFIER_TYPE));


  gdk_device_set_key(object, index, keyval, modifiers);


  return(_result);
}
 

USER_OBJECT_
S_gdk_device_set_axis_use(USER_OBJECT_ s_object, USER_OBJECT_ s_index, USER_OBJECT_ s_use)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkDevice* object = GDK_DEVICE(getPtrValue(s_object));
  guint index = ((guint)asCNumeric(s_index));
  GdkAxisUse use = ((GdkAxisUse)asCEnum(s_use, GDK_TYPE_AXIS_USE));


  gdk_device_set_axis_use(object, index, use);


  return(_result);
}
 

USER_OBJECT_
S_gdk_device_get_state(USER_OBJECT_ s_object, USER_OBJECT_ s_window)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkDevice* object = GDK_DEVICE(getPtrValue(s_object));
  GdkWindow* window = GDK_WINDOW(getPtrValue(s_window));

  gdouble axes;
  GdkModifierType mask;

  gdk_device_get_state(object, window, &axes, &mask);


  _result = retByVal(PROTECT(_result), "axes", PROTECT(asRNumeric(axes)), "mask", PROTECT(asRFlag(mask, GDK_TYPE_MODIFIER_TYPE)), NULL);
  UNPROTECT(3);
  ;
  ;

  return(_result);
}
 

USER_OBJECT_
S_gdk_device_get_axis(USER_OBJECT_ s_object, USER_OBJECT_ s_axes, USER_OBJECT_ s_use)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkDevice* object = GDK_DEVICE(getPtrValue(s_object));
  gdouble* axes = ((gdouble*)asCArray(s_axes, gdouble, asCNumeric));
  GdkAxisUse use = ((GdkAxisUse)asCEnum(s_use, GDK_TYPE_AXIS_USE));

  gboolean ans;
  gdouble value;

  ans = gdk_device_get_axis(object, axes, use, &value);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "value", PROTECT(asRNumeric(value)), NULL);
  UNPROTECT(2);
  ;

  return(_result);
}
 

USER_OBJECT_
S_gdk_input_set_extension_events(USER_OBJECT_ s_object, USER_OBJECT_ s_mask, USER_OBJECT_ s_mode)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkWindow* object = GDK_WINDOW(getPtrValue(s_object));
  gint mask = ((gint)asCInteger(s_mask));
  GdkExtensionMode mode = ((GdkExtensionMode)asCEnum(s_mode, GDK_TYPE_EXTENSION_MODE));


  gdk_input_set_extension_events(object, mask, mode);


  return(_result);
}
 

USER_OBJECT_
S_gdk_device_get_core_pointer(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  GdkDevice* ans;

  ans = gdk_device_get_core_pointer();

  _result = toRPointerWithRef(ans, "GdkDevice");

  return(_result);
}
 

USER_OBJECT_
S_gdk_keymap_get_type(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  GType ans;

  ans = gdk_keymap_get_type();

  _result = asRGType(ans);

  return(_result);
}
 

USER_OBJECT_
S_gdk_keymap_get_default(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  GdkKeymap* ans;

  ans = gdk_keymap_get_default();

  _result = toRPointerWithRef(ans, "GdkKeymap");

  return(_result);
}
 

USER_OBJECT_
S_gdk_keymap_get_for_display(USER_OBJECT_ s_display)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkDisplay* display = GDK_DISPLAY_OBJECT(getPtrValue(s_display));

  GdkKeymap* ans;

  ans = gdk_keymap_get_for_display(display);

  _result = toRPointerWithRef(ans, "GdkKeymap");

  return(_result);
}
 

USER_OBJECT_
S_gdk_keymap_lookup_key(USER_OBJECT_ s_object, USER_OBJECT_ s_key)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkKeymap* object = GDK_KEYMAP(getPtrValue(s_object));
  const GdkKeymapKey* key = asCGdkKeymapKey(s_key);

  guint ans;

  ans = gdk_keymap_lookup_key(object, key);

  _result = asRNumeric(ans);

  return(_result);
}
 

USER_OBJECT_
S_gdk_keymap_translate_keyboard_state(USER_OBJECT_ s_object, USER_OBJECT_ s_hardware_keycode, USER_OBJECT_ s_state, USER_OBJECT_ s_group)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkKeymap* object = GDK_KEYMAP(getPtrValue(s_object));
  guint hardware_keycode = ((guint)asCNumeric(s_hardware_keycode));
  GdkModifierType state = ((GdkModifierType)asCFlag(s_state, GDK_TYPE_MODIFIER_TYPE));
  gint group = ((gint)asCInteger(s_group));

  gboolean ans;
  guint keyval;
  gint effective_group;
  gint level;
  GdkModifierType consumed_modifiers;

  ans = gdk_keymap_translate_keyboard_state(object, hardware_keycode, state, group, &keyval, &effective_group, &level, &consumed_modifiers);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "keyval", PROTECT(asRNumeric(keyval)), "effective.group", PROTECT(asRInteger(effective_group)), "level", PROTECT(asRInteger(level)), "consumed.modifiers", PROTECT(asRFlag(consumed_modifiers, GDK_TYPE_MODIFIER_TYPE)), NULL);
  UNPROTECT(5);
  ;
  ;
  ;
  ;

  return(_result);
}
 

USER_OBJECT_
S_gdk_keymap_get_entries_for_keyval(USER_OBJECT_ s_object, USER_OBJECT_ s_keyval)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkKeymap* object = GDK_KEYMAP(getPtrValue(s_object));
  guint keyval = ((guint)asCNumeric(s_keyval));

  gboolean ans;
  GdkKeymapKey* keys = NULL;
  gint n_keys;

  ans = gdk_keymap_get_entries_for_keyval(object, keyval, &keys, &n_keys);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "keys", PROTECT(asRArrayRefWithSize(keys, asRGdkKeymapKey, n_keys)), "n.keys", PROTECT(asRInteger(n_keys)), NULL);
  UNPROTECT(3);
    CLEANUP(g_free, keys);;
  ;

  return(_result);
}
 

USER_OBJECT_
S_gdk_keymap_get_entries_for_keycode(USER_OBJECT_ s_object, USER_OBJECT_ s_hardware_keycode)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkKeymap* object = GDK_KEYMAP(getPtrValue(s_object));
  guint hardware_keycode = ((guint)asCNumeric(s_hardware_keycode));

  gboolean ans;
  GdkKeymapKey* keys = NULL;
  guint* keyvals = NULL;
  gint n_entries;

  ans = gdk_keymap_get_entries_for_keycode(object, hardware_keycode, &keys, &keyvals, &n_entries);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "keys", PROTECT(asRArrayRefWithSize(keys, asRGdkKeymapKey, n_entries)), "keyvals", PROTECT(asRNumericArrayWithSize(keyvals, n_entries)), "n.entries", PROTECT(asRInteger(n_entries)), NULL);
  UNPROTECT(4);
    CLEANUP(g_free, keys);;
    CLEANUP(g_free, keyvals);;
  ;

  return(_result);
}
 

USER_OBJECT_
S_gdk_keymap_get_direction(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkKeymap* object = GDK_KEYMAP(getPtrValue(s_object));

  PangoDirection ans;

  ans = gdk_keymap_get_direction(object);

  _result = asREnum(ans, PANGO_TYPE_DIRECTION);

  return(_result);
}
 

USER_OBJECT_
S_gdk_keyval_name(USER_OBJECT_ s_keyval)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  guint keyval = ((guint)asCNumeric(s_keyval));

  gchar* ans;

  ans = gdk_keyval_name(keyval);

  _result = asRString(ans);
    CLEANUP(g_free, ans);;

  return(_result);
}
 

USER_OBJECT_
S_gdk_keyval_from_name(USER_OBJECT_ s_keyval_name)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  const gchar* keyval_name = ((const gchar*)asCString(s_keyval_name));

  guint ans;

  ans = gdk_keyval_from_name(keyval_name);

  _result = asRNumeric(ans);

  return(_result);
}
 

USER_OBJECT_
S_gdk_keyval_convert_case(USER_OBJECT_ s_symbol)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  guint symbol = ((guint)asCNumeric(s_symbol));

  guint lower;
  guint upper;

  gdk_keyval_convert_case(symbol, &lower, &upper);


  _result = retByVal(PROTECT(_result), "lower", PROTECT(asRNumeric(lower)), "upper", PROTECT(asRNumeric(upper)), NULL);
  UNPROTECT(3);
  ;
  ;

  return(_result);
}
 

USER_OBJECT_
S_gdk_keyval_to_upper(USER_OBJECT_ s_keyval)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  guint keyval = ((guint)asCNumeric(s_keyval));

  guint ans;

  ans = gdk_keyval_to_upper(keyval);

  _result = asRNumeric(ans);

  return(_result);
}
 

USER_OBJECT_
S_gdk_keyval_to_lower(USER_OBJECT_ s_keyval)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  guint keyval = ((guint)asCNumeric(s_keyval));

  guint ans;

  ans = gdk_keyval_to_lower(keyval);

  _result = asRNumeric(ans);

  return(_result);
}
 

USER_OBJECT_
S_gdk_keyval_is_upper(USER_OBJECT_ s_keyval)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  guint keyval = ((guint)asCNumeric(s_keyval));

  gboolean ans;

  ans = gdk_keyval_is_upper(keyval);

  _result = asRLogical(ans);

  return(_result);
}
 

USER_OBJECT_
S_gdk_keyval_is_lower(USER_OBJECT_ s_keyval)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  guint keyval = ((guint)asCNumeric(s_keyval));

  gboolean ans;

  ans = gdk_keyval_is_lower(keyval);

  _result = asRLogical(ans);

  return(_result);
}
 

USER_OBJECT_
S_gdk_keyval_to_unicode(USER_OBJECT_ s_keyval)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  guint keyval = ((guint)asCNumeric(s_keyval));

  guint32 ans;

  ans = gdk_keyval_to_unicode(keyval);

  _result = asRNumeric(ans);

  return(_result);
}
 

USER_OBJECT_
S_gdk_unicode_to_keyval(USER_OBJECT_ s_wc)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  guint32 wc = ((guint32)asCNumeric(s_wc));

  guint ans;

  ans = gdk_unicode_to_keyval(wc);

  _result = asRNumeric(ans);

  return(_result);
}
 

USER_OBJECT_
S_gdk_pango_renderer_get_type(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  GType ans;

  ans = gdk_pango_renderer_get_type();

  _result = asRGType(ans);

  return(_result);
}
 

USER_OBJECT_
S_gdk_pango_renderer_new(USER_OBJECT_ s_screen)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkScreen* screen = GDK_SCREEN(getPtrValue(s_screen));

  PangoRenderer* ans;

  ans = gdk_pango_renderer_new(screen);

  _result = toRPointerWithFinalizer(ans, "PangoRenderer", (RPointerFinalizer) g_object_unref);

  return(_result);
}
 

USER_OBJECT_
S_gdk_pango_renderer_get_default(USER_OBJECT_ s_screen)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkScreen* screen = GDK_SCREEN(getPtrValue(s_screen));

  PangoRenderer* ans;

  ans = gdk_pango_renderer_get_default(screen);

  _result = toRPointerWithRef(ans, "PangoRenderer");

  return(_result);
}
 

USER_OBJECT_
S_gdk_pango_renderer_set_drawable(USER_OBJECT_ s_object, USER_OBJECT_ s_drawable)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkPangoRenderer* object = GDK_PANGO_RENDERER(getPtrValue(s_object));
  GdkDrawable* drawable = GET_LENGTH(s_drawable) == 0 ? NULL : GDK_DRAWABLE(getPtrValue(s_drawable));


  gdk_pango_renderer_set_drawable(object, drawable);


  return(_result);
}
 

USER_OBJECT_
S_gdk_pango_renderer_set_gc(USER_OBJECT_ s_object, USER_OBJECT_ s_gc)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkPangoRenderer* object = GDK_PANGO_RENDERER(getPtrValue(s_object));
  GdkGC* gc = GET_LENGTH(s_gc) == 0 ? NULL : GDK_GC(getPtrValue(s_gc));


  gdk_pango_renderer_set_gc(object, gc);


  return(_result);
}
 

USER_OBJECT_
S_gdk_pango_renderer_set_stipple(USER_OBJECT_ s_object, USER_OBJECT_ s_part, USER_OBJECT_ s_stipple)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkPangoRenderer* object = GDK_PANGO_RENDERER(getPtrValue(s_object));
  PangoRenderPart part = ((PangoRenderPart)asCEnum(s_part, PANGO_TYPE_RENDER_PART));
  GdkBitmap* stipple = GDK_DRAWABLE(getPtrValue(s_stipple));


  gdk_pango_renderer_set_stipple(object, part, stipple);


  return(_result);
}
 

USER_OBJECT_
S_gdk_pango_renderer_set_override_color(USER_OBJECT_ s_object, USER_OBJECT_ s_part, USER_OBJECT_ s_color)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkPangoRenderer* object = GDK_PANGO_RENDERER(getPtrValue(s_object));
  PangoRenderPart part = ((PangoRenderPart)asCEnum(s_part, PANGO_TYPE_RENDER_PART));
  const GdkColor* color = GET_LENGTH(s_color) == 0 ? NULL : asCGdkColor(s_color);


  gdk_pango_renderer_set_override_color(object, part, color);


  return(_result);
}
 

USER_OBJECT_
S_gdk_pango_context_get_for_screen(USER_OBJECT_ s_screen)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkScreen* screen = GDK_SCREEN(getPtrValue(s_screen));

  PangoContext* ans;

  ans = gdk_pango_context_get_for_screen(screen);

  _result = toRPointerWithRef(ans, "PangoContext");

  return(_result);
}
 

USER_OBJECT_
S_gdk_pango_context_get(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  PangoContext* ans;

  ans = gdk_pango_context_get();

  _result = toRPointerWithRef(ans, "PangoContext");

  return(_result);
}
 

USER_OBJECT_
S_gdk_pango_context_set_colormap(USER_OBJECT_ s_context, USER_OBJECT_ s_colormap)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoContext* context = PANGO_CONTEXT(getPtrValue(s_context));
  GdkColormap* colormap = GDK_COLORMAP(getPtrValue(s_colormap));


  gdk_pango_context_set_colormap(context, colormap);


  return(_result);
}
 

USER_OBJECT_
S_gdk_pango_layout_line_get_clip_region(USER_OBJECT_ s_line, USER_OBJECT_ s_x_origin, USER_OBJECT_ s_index_ranges)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoLayoutLine* line = ((PangoLayoutLine*)getPtrValue(s_line));
  gint x_origin = ((gint)asCInteger(s_x_origin));
  gint y_origin = ((gint)GET_LENGTH(s_index_ranges));
  gint* index_ranges = ((gint*)asCArray(s_index_ranges, gint, asCInteger));
  gint n_ranges = ((gint)GET_LENGTH(s_index_ranges));

  GdkRegion* ans;

  ans = gdk_pango_layout_line_get_clip_region(line, x_origin, y_origin, index_ranges, n_ranges);

  _result = toRPointerWithFinalizer(ans, "GdkRegion", (RPointerFinalizer) gdk_region_destroy);

  return(_result);
}
 

USER_OBJECT_
S_gdk_pango_layout_get_clip_region(USER_OBJECT_ s_layout, USER_OBJECT_ s_x_origin, USER_OBJECT_ s_index_ranges)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  PangoLayout* layout = PANGO_LAYOUT(getPtrValue(s_layout));
  gint x_origin = ((gint)asCInteger(s_x_origin));
  gint y_origin = ((gint)GET_LENGTH(s_index_ranges));
  gint* index_ranges = ((gint*)asCArray(s_index_ranges, gint, asCInteger));
  gint n_ranges = ((gint)GET_LENGTH(s_index_ranges));

  GdkRegion* ans;

  ans = gdk_pango_layout_get_clip_region(layout, x_origin, y_origin, index_ranges, n_ranges);

  _result = toRPointerWithFinalizer(ans, "GdkRegion", (RPointerFinalizer) gdk_region_destroy);

  return(_result);
}
 

USER_OBJECT_
S_gdk_pango_attr_stipple_new(USER_OBJECT_ s_stipple)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkBitmap* stipple = GDK_DRAWABLE(getPtrValue(s_stipple));

  PangoAttribute* ans;

  ans = gdk_pango_attr_stipple_new(stipple);

  _result = asRPangoAttribute(ans);

  return(_result);
}
 

USER_OBJECT_
S_gdk_pango_attr_embossed_new(USER_OBJECT_ s_embossed)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  gboolean embossed = ((gboolean)asCLogical(s_embossed));

  PangoAttribute* ans;

  ans = gdk_pango_attr_embossed_new(embossed);

  _result = asRPangoAttribute(ans);

  return(_result);
}
 

USER_OBJECT_
S_gdk_pixbuf_render_threshold_alpha(USER_OBJECT_ s_object, USER_OBJECT_ s_bitmap, USER_OBJECT_ s_src_x, USER_OBJECT_ s_src_y, USER_OBJECT_ s_dest_x, USER_OBJECT_ s_dest_y, USER_OBJECT_ s_width, USER_OBJECT_ s_height, USER_OBJECT_ s_alpha_threshold)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkPixbuf* object = GDK_PIXBUF(getPtrValue(s_object));
  GdkBitmap* bitmap = GDK_DRAWABLE(getPtrValue(s_bitmap));
  int src_x = ((int)asCInteger(s_src_x));
  int src_y = ((int)asCInteger(s_src_y));
  int dest_x = ((int)asCInteger(s_dest_x));
  int dest_y = ((int)asCInteger(s_dest_y));
  int width = ((int)asCInteger(s_width));
  int height = ((int)asCInteger(s_height));
  int alpha_threshold = ((int)asCInteger(s_alpha_threshold));


  gdk_pixbuf_render_threshold_alpha(object, bitmap, src_x, src_y, dest_x, dest_y, width, height, alpha_threshold);


  return(_result);
}
 

USER_OBJECT_
S_gdk_pixbuf_render_to_drawable(USER_OBJECT_ s_object, USER_OBJECT_ s_drawable, USER_OBJECT_ s_gc, USER_OBJECT_ s_src_x, USER_OBJECT_ s_src_y, USER_OBJECT_ s_dest_x, USER_OBJECT_ s_dest_y, USER_OBJECT_ s_width, USER_OBJECT_ s_height, USER_OBJECT_ s_dither, USER_OBJECT_ s_x_dither, USER_OBJECT_ s_y_dither)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkPixbuf* object = GDK_PIXBUF(getPtrValue(s_object));
  GdkDrawable* drawable = GDK_DRAWABLE(getPtrValue(s_drawable));
  GdkGC* gc = GDK_GC(getPtrValue(s_gc));
  int src_x = ((int)asCInteger(s_src_x));
  int src_y = ((int)asCInteger(s_src_y));
  int dest_x = ((int)asCInteger(s_dest_x));
  int dest_y = ((int)asCInteger(s_dest_y));
  int width = ((int)asCInteger(s_width));
  int height = ((int)asCInteger(s_height));
  GdkRgbDither dither = ((GdkRgbDither)asCEnum(s_dither, GDK_TYPE_RGB_DITHER));
  gint x_dither = ((gint)asCInteger(s_x_dither));
  gint y_dither = ((gint)asCInteger(s_y_dither));


  gdk_pixbuf_render_to_drawable(object, drawable, gc, src_x, src_y, dest_x, dest_y, width, height, dither, x_dither, y_dither);


  return(_result);
}
 

USER_OBJECT_
S_gdk_pixbuf_render_to_drawable_alpha(USER_OBJECT_ s_object, USER_OBJECT_ s_drawable, USER_OBJECT_ s_src_x, USER_OBJECT_ s_src_y, USER_OBJECT_ s_dest_x, USER_OBJECT_ s_dest_y, USER_OBJECT_ s_width, USER_OBJECT_ s_height, USER_OBJECT_ s_alpha_mode, USER_OBJECT_ s_alpha_threshold, USER_OBJECT_ s_dither, USER_OBJECT_ s_x_dither, USER_OBJECT_ s_y_dither)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkPixbuf* object = GDK_PIXBUF(getPtrValue(s_object));
  GdkDrawable* drawable = GDK_DRAWABLE(getPtrValue(s_drawable));
  int src_x = ((int)asCInteger(s_src_x));
  int src_y = ((int)asCInteger(s_src_y));
  int dest_x = ((int)asCInteger(s_dest_x));
  int dest_y = ((int)asCInteger(s_dest_y));
  int width = ((int)asCInteger(s_width));
  int height = ((int)asCInteger(s_height));
  GdkPixbufAlphaMode alpha_mode = ((GdkPixbufAlphaMode)asCEnum(s_alpha_mode, GDK_TYPE_PIXBUF_ALPHA_MODE));
  int alpha_threshold = ((int)asCInteger(s_alpha_threshold));
  GdkRgbDither dither = ((GdkRgbDither)asCEnum(s_dither, GDK_TYPE_RGB_DITHER));
  gint x_dither = ((gint)asCInteger(s_x_dither));
  gint y_dither = ((gint)asCInteger(s_y_dither));


  gdk_pixbuf_render_to_drawable_alpha(object, drawable, src_x, src_y, dest_x, dest_y, width, height, alpha_mode, alpha_threshold, dither, x_dither, y_dither);


  return(_result);
}
 

USER_OBJECT_
S_gdk_pixmap_get_type(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  GType ans;

  ans = gdk_pixmap_get_type();

  _result = asRGType(ans);

  return(_result);
}
 

USER_OBJECT_
S_gdk_pixmap_new(USER_OBJECT_ s_drawable, USER_OBJECT_ s_width, USER_OBJECT_ s_height, USER_OBJECT_ s_depth)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkDrawable* drawable = GET_LENGTH(s_drawable) == 0 ? NULL : GDK_DRAWABLE(getPtrValue(s_drawable));
  gint width = ((gint)asCInteger(s_width));
  gint height = ((gint)asCInteger(s_height));
  gint depth = ((gint)asCInteger(s_depth));

  GdkPixmap* ans;

  ans = gdk_pixmap_new(drawable, width, height, depth);

  _result = toRPointerWithFinalizer(ans, "GdkPixmap", (RPointerFinalizer) g_object_unref);

  return(_result);
}
 

USER_OBJECT_
S_gdk_bitmap_create_from_data(USER_OBJECT_ s_drawable, USER_OBJECT_ s_data, USER_OBJECT_ s_height)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkDrawable* drawable = GET_LENGTH(s_drawable) == 0 ? NULL : GDK_DRAWABLE(getPtrValue(s_drawable));
  const guchar* data = ((const guchar*)asCArray(s_data, guchar, asCRaw));
  gint width = ((gint)GET_LENGTH(s_data));
  gint height = ((gint)asCInteger(s_height));

  GdkBitmap* ans;

  ans = gdk_bitmap_create_from_data(drawable, data, width, height);

  _result = toRPointerWithFinalizer(ans, "GdkBitmap", (RPointerFinalizer) g_object_unref);

  return(_result);
}
 

USER_OBJECT_
S_gdk_pixmap_create_from_data(USER_OBJECT_ s_drawable, USER_OBJECT_ s_data, USER_OBJECT_ s_height, USER_OBJECT_ s_depth, USER_OBJECT_ s_fg, USER_OBJECT_ s_bg)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkDrawable* drawable = GET_LENGTH(s_drawable) == 0 ? NULL : GDK_DRAWABLE(getPtrValue(s_drawable));
  const guchar* data = ((const guchar*)asCArray(s_data, guchar, asCRaw));
  gint width = ((gint)GET_LENGTH(s_data));
  gint height = ((gint)asCInteger(s_height));
  gint depth = ((gint)asCInteger(s_depth));
  GdkColor* fg = asCGdkColor(s_fg);
  GdkColor* bg = asCGdkColor(s_bg);

  GdkPixmap* ans;

  ans = gdk_pixmap_create_from_data(drawable, data, width, height, depth, fg, bg);

  _result = toRPointerWithFinalizer(ans, "GdkPixmap", (RPointerFinalizer) g_object_unref);

  return(_result);
}
 

USER_OBJECT_
S_gdk_pixmap_create_from_xpm(USER_OBJECT_ s_drawable, USER_OBJECT_ s_transparent_color, USER_OBJECT_ s_filename)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkDrawable* drawable = GDK_DRAWABLE(getPtrValue(s_drawable));
  GdkColor* transparent_color = asCGdkColor(s_transparent_color);
  const gchar* filename = ((const gchar*)asCString(s_filename));

  GdkPixmap* ans;
  GdkBitmap* mask = NULL;

  ans = gdk_pixmap_create_from_xpm(drawable, &mask, transparent_color, filename);

  _result = toRPointerWithFinalizer(ans, "GdkPixmap", (RPointerFinalizer) g_object_unref);

  _result = retByVal(PROTECT(_result), "mask", PROTECT(toRPointerWithFinalizer(mask, "GdkBitmap", (RPointerFinalizer) g_object_unref)), NULL);
  UNPROTECT(2);
  ;

  return(_result);
}
 

USER_OBJECT_
S_gdk_pixmap_colormap_create_from_xpm(USER_OBJECT_ s_drawable, USER_OBJECT_ s_colormap, USER_OBJECT_ s_transparent_color, USER_OBJECT_ s_filename)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkDrawable* drawable = GDK_DRAWABLE(getPtrValue(s_drawable));
  GdkColormap* colormap = GDK_COLORMAP(getPtrValue(s_colormap));
  GdkColor* transparent_color = asCGdkColor(s_transparent_color);
  const gchar* filename = ((const gchar*)asCString(s_filename));

  GdkPixmap* ans;
  GdkBitmap* mask = NULL;

  ans = gdk_pixmap_colormap_create_from_xpm(drawable, colormap, &mask, transparent_color, filename);

  _result = toRPointerWithFinalizer(ans, "GdkPixmap", (RPointerFinalizer) g_object_unref);

  _result = retByVal(PROTECT(_result), "mask", PROTECT(toRPointerWithFinalizer(mask, "GdkBitmap", (RPointerFinalizer) g_object_unref)), NULL);
  UNPROTECT(2);
  ;

  return(_result);
}
 

USER_OBJECT_
S_gdk_pixmap_create_from_xpm_d(USER_OBJECT_ s_drawable, USER_OBJECT_ s_transparent_color, USER_OBJECT_ s_data)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkDrawable* drawable = GDK_DRAWABLE(getPtrValue(s_drawable));
  GdkColor* transparent_color = asCGdkColor(s_transparent_color);
  gchar** data = ((gchar**)asCStringArray(s_data));

  GdkPixmap* ans;
  GdkBitmap* mask = NULL;

  ans = gdk_pixmap_create_from_xpm_d(drawable, &mask, transparent_color, data);

  _result = toRPointerWithFinalizer(ans, "GdkPixmap", (RPointerFinalizer) g_object_unref);

  _result = retByVal(PROTECT(_result), "mask", PROTECT(toRPointerWithFinalizer(mask, "GdkBitmap", (RPointerFinalizer) g_object_unref)), NULL);
  UNPROTECT(2);
  ;

  return(_result);
}
 

USER_OBJECT_
S_gdk_pixmap_colormap_create_from_xpm_d(USER_OBJECT_ s_drawable, USER_OBJECT_ s_colormap, USER_OBJECT_ s_transparent_color, USER_OBJECT_ s_data)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkDrawable* drawable = GDK_DRAWABLE(getPtrValue(s_drawable));
  GdkColormap* colormap = GDK_COLORMAP(getPtrValue(s_colormap));
  GdkColor* transparent_color = asCGdkColor(s_transparent_color);
  gchar** data = ((gchar**)asCStringArray(s_data));

  GdkPixmap* ans;
  GdkBitmap* mask = NULL;

  ans = gdk_pixmap_colormap_create_from_xpm_d(drawable, colormap, &mask, transparent_color, data);

  _result = toRPointerWithFinalizer(ans, "GdkPixmap", (RPointerFinalizer) g_object_unref);

  _result = retByVal(PROTECT(_result), "mask", PROTECT(toRPointerWithFinalizer(mask, "GdkBitmap", (RPointerFinalizer) g_object_unref)), NULL);
  UNPROTECT(2);
  ;

  return(_result);
}
 

USER_OBJECT_
S_gdk_pixmap_foreign_new(USER_OBJECT_ s_anid)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkNativeWindow anid = asCGdkNativeWindow(s_anid);

  GdkPixmap* ans;

  ans = gdk_pixmap_foreign_new(anid);

  _result = toRPointerWithFinalizer(ans, "GdkPixmap", (RPointerFinalizer) g_object_unref);

  return(_result);
}
 

USER_OBJECT_
S_gdk_pixmap_lookup(USER_OBJECT_ s_anid)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkNativeWindow anid = asCGdkNativeWindow(s_anid);

  GdkPixmap* ans;

  ans = gdk_pixmap_lookup(anid);

  _result = toRPointerWithRef(ans, "GdkPixmap");

  return(_result);
}
 

USER_OBJECT_
S_gdk_pixmap_foreign_new_for_display(USER_OBJECT_ s_display, USER_OBJECT_ s_anid)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkDisplay* display = GDK_DISPLAY_OBJECT(getPtrValue(s_display));
  GdkNativeWindow anid = asCGdkNativeWindow(s_anid);

  GdkPixmap* ans;

  ans = gdk_pixmap_foreign_new_for_display(display, anid);

  _result = toRPointerWithFinalizer(ans, "GdkPixmap", (RPointerFinalizer) g_object_unref);

  return(_result);
}
 

USER_OBJECT_
S_gdk_pixmap_lookup_for_display(USER_OBJECT_ s_display, USER_OBJECT_ s_anid)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkDisplay* display = GDK_DISPLAY_OBJECT(getPtrValue(s_display));
  GdkNativeWindow anid = asCGdkNativeWindow(s_anid);

  GdkPixmap* ans;

  ans = gdk_pixmap_lookup_for_display(display, anid);

  _result = toRPointerWithRef(ans, "GdkPixmap");

  return(_result);
}
 

USER_OBJECT_
S_gdk_atom_name(USER_OBJECT_ s_atom)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkAtom atom = asCGdkAtom(s_atom);

  gchar* ans;

  ans = gdk_atom_name(atom);

  _result = asRString(ans);
    CLEANUP(g_free, ans);;

  return(_result);
}
 

USER_OBJECT_
S_gdk_atom_intern(USER_OBJECT_ s_atom_name, USER_OBJECT_ s_only_if_exists)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  gchar* atom_name = ((gchar*)asCString(s_atom_name));
  gboolean only_if_exists = ((gboolean)asCLogical(s_only_if_exists));

  GdkAtom ans;

  ans = gdk_atom_intern(atom_name, only_if_exists);

  _result = asRGdkAtom(ans);

  return(_result);
}
 

USER_OBJECT_
S_gdk_property_get(USER_OBJECT_ s_object, USER_OBJECT_ s_property, USER_OBJECT_ s_type, USER_OBJECT_ s_offset, USER_OBJECT_ s_length, USER_OBJECT_ s_pdelete)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkWindow* object = GDK_WINDOW(getPtrValue(s_object));
  GdkAtom property = asCGdkAtom(s_property);
  GdkAtom type = asCGdkAtom(s_type);
  gulong offset = ((gulong)asCNumeric(s_offset));
  gulong length = ((gulong)asCNumeric(s_length));
  gint pdelete = ((gint)asCInteger(s_pdelete));

  gboolean ans;
  GdkAtom actual_property_type;
  gint actual_format;
  gint actual_length;
  guchar* data = NULL;

  ans = gdk_property_get(object, property, type, offset, length, pdelete, &actual_property_type, &actual_format, &actual_length, &data);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "actual.property.type", PROTECT(asRGdkAtom(actual_property_type)), "actual.format", PROTECT(asRInteger(actual_format)), "actual.length", PROTECT(asRInteger(actual_length)), "data", PROTECT(asRRawArrayWithSize(data, actual_format)), NULL);
  UNPROTECT(5);
  ;
  ;
  ;
    CLEANUP(g_free, data);;

  return(_result);
}
 

USER_OBJECT_
S_gdk_property_change(USER_OBJECT_ s_object, USER_OBJECT_ s_property, USER_OBJECT_ s_type, USER_OBJECT_ s_format, USER_OBJECT_ s_mode, USER_OBJECT_ s_data)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkWindow* object = GDK_WINDOW(getPtrValue(s_object));
  GdkAtom property = asCGdkAtom(s_property);
  GdkAtom type = asCGdkAtom(s_type);
  gint format = ((gint)asCInteger(s_format));
  GdkPropMode mode = ((GdkPropMode)asCEnum(s_mode, GDK_TYPE_PROP_MODE));
  const guchar* data = ((const guchar*)asCArray(s_data, guchar, asCRaw));
  gint nelements = ((gint)GET_LENGTH(s_data));


  gdk_property_change(object, property, type, format, mode, data, nelements);


  return(_result);
}
 

USER_OBJECT_
S_gdk_property_delete(USER_OBJECT_ s_object, USER_OBJECT_ s_property)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkWindow* object = GDK_WINDOW(getPtrValue(s_object));
  GdkAtom property = asCGdkAtom(s_property);


  gdk_property_delete(object, property);


  return(_result);
}
 

USER_OBJECT_
S_gdk_rgb_xpixel_from_rgb(USER_OBJECT_ s_rgb)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  guint32 rgb = ((guint32)asCNumeric(s_rgb));

  gulong ans;

  ans = gdk_rgb_xpixel_from_rgb(rgb);

  _result = asRNumeric(ans);

  return(_result);
}
 

USER_OBJECT_
S_gdk_rgb_gc_set_foreground(USER_OBJECT_ s_gc, USER_OBJECT_ s_rgb)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkGC* gc = GDK_GC(getPtrValue(s_gc));
  guint32 rgb = ((guint32)asCNumeric(s_rgb));


  gdk_rgb_gc_set_foreground(gc, rgb);


  return(_result);
}
 

USER_OBJECT_
S_gdk_rgb_gc_set_background(USER_OBJECT_ s_gc, USER_OBJECT_ s_rgb)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkGC* gc = GDK_GC(getPtrValue(s_gc));
  guint32 rgb = ((guint32)asCNumeric(s_rgb));


  gdk_rgb_gc_set_background(gc, rgb);


  return(_result);
}
 

USER_OBJECT_
S_gdk_draw_rgb_image_dithalign(USER_OBJECT_ s_object, USER_OBJECT_ s_gc, USER_OBJECT_ s_x, USER_OBJECT_ s_y, USER_OBJECT_ s_width, USER_OBJECT_ s_height, USER_OBJECT_ s_dith, USER_OBJECT_ s_rgb_buf, USER_OBJECT_ s_xdith, USER_OBJECT_ s_ydith)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkDrawable* object = GDK_DRAWABLE(getPtrValue(s_object));
  GdkGC* gc = GDK_GC(getPtrValue(s_gc));
  gint x = ((gint)asCInteger(s_x));
  gint y = ((gint)asCInteger(s_y));
  gint width = ((gint)asCInteger(s_width));
  gint height = ((gint)asCInteger(s_height));
  GdkRgbDither dith = ((GdkRgbDither)asCEnum(s_dith, GDK_TYPE_RGB_DITHER));
  guchar* rgb_buf = ((guchar*)asCArray(s_rgb_buf, guchar, asCRaw));
  gint rowstride = ((gint)GET_LENGTH(s_rgb_buf));
  gint xdith = ((gint)asCInteger(s_xdith));
  gint ydith = ((gint)asCInteger(s_ydith));


  gdk_draw_rgb_image_dithalign(object, gc, x, y, width, height, dith, rgb_buf, rowstride, xdith, ydith);


  return(_result);
}
 

USER_OBJECT_
S_gdk_draw_rgb_32_image(USER_OBJECT_ s_object, USER_OBJECT_ s_gc, USER_OBJECT_ s_x, USER_OBJECT_ s_y, USER_OBJECT_ s_width, USER_OBJECT_ s_height, USER_OBJECT_ s_dith, USER_OBJECT_ s_buf)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkDrawable* object = GDK_DRAWABLE(getPtrValue(s_object));
  GdkGC* gc = GDK_GC(getPtrValue(s_gc));
  gint x = ((gint)asCInteger(s_x));
  gint y = ((gint)asCInteger(s_y));
  gint width = ((gint)asCInteger(s_width));
  gint height = ((gint)asCInteger(s_height));
  GdkRgbDither dith = ((GdkRgbDither)asCEnum(s_dith, GDK_TYPE_RGB_DITHER));
  guchar* buf = ((guchar*)asCArray(s_buf, guchar, asCRaw));
  gint rowstride = ((gint)GET_LENGTH(s_buf));


  gdk_draw_rgb_32_image(object, gc, x, y, width, height, dith, buf, rowstride);


  return(_result);
}
 

USER_OBJECT_
S_gdk_draw_rgb_32_image_dithalign(USER_OBJECT_ s_object, USER_OBJECT_ s_gc, USER_OBJECT_ s_x, USER_OBJECT_ s_y, USER_OBJECT_ s_width, USER_OBJECT_ s_height, USER_OBJECT_ s_dith, USER_OBJECT_ s_buf, USER_OBJECT_ s_xdith, USER_OBJECT_ s_ydith)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkDrawable* object = GDK_DRAWABLE(getPtrValue(s_object));
  GdkGC* gc = GDK_GC(getPtrValue(s_gc));
  gint x = ((gint)asCInteger(s_x));
  gint y = ((gint)asCInteger(s_y));
  gint width = ((gint)asCInteger(s_width));
  gint height = ((gint)asCInteger(s_height));
  GdkRgbDither dith = ((GdkRgbDither)asCEnum(s_dith, GDK_TYPE_RGB_DITHER));
  guchar* buf = ((guchar*)asCArray(s_buf, guchar, asCRaw));
  gint rowstride = ((gint)GET_LENGTH(s_buf));
  gint xdith = ((gint)asCInteger(s_xdith));
  gint ydith = ((gint)asCInteger(s_ydith));


  gdk_draw_rgb_32_image_dithalign(object, gc, x, y, width, height, dith, buf, rowstride, xdith, ydith);


  return(_result);
}
 

USER_OBJECT_
S_gdk_rgb_colormap_ditherable(USER_OBJECT_ s_colormap)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkColormap* colormap = GDK_COLORMAP(getPtrValue(s_colormap));

  gboolean ans;

  ans = gdk_rgb_colormap_ditherable(colormap);

  _result = asRLogical(ans);

  return(_result);
}
 

USER_OBJECT_
S_gdk_draw_gray_image(USER_OBJECT_ s_object, USER_OBJECT_ s_gc, USER_OBJECT_ s_x, USER_OBJECT_ s_y, USER_OBJECT_ s_width, USER_OBJECT_ s_height, USER_OBJECT_ s_dith, USER_OBJECT_ s_buf)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkDrawable* object = GDK_DRAWABLE(getPtrValue(s_object));
  GdkGC* gc = GDK_GC(getPtrValue(s_gc));
  gint x = ((gint)asCInteger(s_x));
  gint y = ((gint)asCInteger(s_y));
  gint width = ((gint)asCInteger(s_width));
  gint height = ((gint)asCInteger(s_height));
  GdkRgbDither dith = ((GdkRgbDither)asCEnum(s_dith, GDK_TYPE_RGB_DITHER));
  guchar* buf = ((guchar*)asCArray(s_buf, guchar, asCRaw));
  gint rowstride = ((gint)GET_LENGTH(s_buf));


  gdk_draw_gray_image(object, gc, x, y, width, height, dith, buf, rowstride);


  return(_result);
}
 

USER_OBJECT_
S_gdk_rgb_cmap_new(USER_OBJECT_ s_colors)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  guint32* colors = ((guint32*)asCArray(s_colors, guint32, asCNumeric));
  gint n_colors = ((gint)GET_LENGTH(s_colors));

  GdkRgbCmap* ans;

  ans = gdk_rgb_cmap_new(colors, n_colors);

  _result = asRGdkRgbCmap(ans);
    CLEANUP(g_free, ans);;

  return(_result);
}
 

USER_OBJECT_
S_gdk_draw_indexed_image(USER_OBJECT_ s_object, USER_OBJECT_ s_gc, USER_OBJECT_ s_x, USER_OBJECT_ s_y, USER_OBJECT_ s_width, USER_OBJECT_ s_height, USER_OBJECT_ s_dith, USER_OBJECT_ s_buf, USER_OBJECT_ s_cmap)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkDrawable* object = GDK_DRAWABLE(getPtrValue(s_object));
  GdkGC* gc = GDK_GC(getPtrValue(s_gc));
  gint x = ((gint)asCInteger(s_x));
  gint y = ((gint)asCInteger(s_y));
  gint width = ((gint)asCInteger(s_width));
  gint height = ((gint)asCInteger(s_height));
  GdkRgbDither dith = ((GdkRgbDither)asCEnum(s_dith, GDK_TYPE_RGB_DITHER));
  guchar* buf = ((guchar*)asCArray(s_buf, guchar, asCRaw));
  gint rowstride = ((gint)GET_LENGTH(s_buf));
  GdkRgbCmap* cmap = asCGdkRgbCmap(s_cmap);


  gdk_draw_indexed_image(object, gc, x, y, width, height, dith, buf, rowstride, cmap);


  return(_result);
}
 

USER_OBJECT_
S_gdk_rgb_ditherable(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  gboolean ans;

  ans = gdk_rgb_ditherable();

  _result = asRLogical(ans);

  return(_result);
}
 

USER_OBJECT_
S_gdk_rgb_set_verbose(USER_OBJECT_ s_verbose)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  gboolean verbose = ((gboolean)asCLogical(s_verbose));


  gdk_rgb_set_verbose(verbose);


  return(_result);
}
 

USER_OBJECT_
S_gdk_rgb_set_install(USER_OBJECT_ s_install)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  gboolean install = ((gboolean)asCLogical(s_install));


  gdk_rgb_set_install(install);


  return(_result);
}
 

USER_OBJECT_
S_gdk_rgb_set_min_colors(USER_OBJECT_ s_min_colors)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  gint min_colors = ((gint)asCInteger(s_min_colors));


  gdk_rgb_set_min_colors(min_colors);


  return(_result);
}
 

USER_OBJECT_
S_gdk_rgb_get_colormap(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  GdkColormap* ans;

  ans = gdk_rgb_get_colormap();

  _result = toRPointerWithRef(ans, "GdkColormap");

  return(_result);
}
 

USER_OBJECT_
S_gdk_rgb_get_cmap(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  GdkColormap* ans;

  ans = gdk_rgb_get_cmap();

  _result = toRPointerWithRef(ans, "GdkColormap");

  return(_result);
}
 

USER_OBJECT_
S_gdk_rgb_get_visual(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  GdkVisual* ans;

  ans = gdk_rgb_get_visual();

  _result = toRPointerWithRef(ans, "GdkVisual");

  return(_result);
}
 

USER_OBJECT_
S_gdk_screen_get_type(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  GType ans;

  ans = gdk_screen_get_type();

  _result = asRGType(ans);

  return(_result);
}
 

USER_OBJECT_
S_gdk_screen_get_default_colormap(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkScreen* object = GDK_SCREEN(getPtrValue(s_object));

  GdkColormap* ans;

  ans = gdk_screen_get_default_colormap(object);

  _result = toRPointerWithRef(ans, "GdkColormap");

  return(_result);
}
 

USER_OBJECT_
S_gdk_screen_set_default_colormap(USER_OBJECT_ s_object, USER_OBJECT_ s_colormap)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkScreen* object = GDK_SCREEN(getPtrValue(s_object));
  GdkColormap* colormap = GDK_COLORMAP(getPtrValue(s_colormap));


  gdk_screen_set_default_colormap(object, colormap);


  return(_result);
}
 

USER_OBJECT_
S_gdk_screen_get_system_colormap(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkScreen* object = GDK_SCREEN(getPtrValue(s_object));

  GdkColormap* ans;

  ans = gdk_screen_get_system_colormap(object);

  _result = toRPointerWithRef(ans, "GdkColormap");

  return(_result);
}
 

USER_OBJECT_
S_gdk_screen_get_system_visual(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkScreen* object = GDK_SCREEN(getPtrValue(s_object));

  GdkVisual* ans;

  ans = gdk_screen_get_system_visual(object);

  _result = toRPointerWithRef(ans, "GdkVisual");

  return(_result);
}
 

USER_OBJECT_
S_gdk_screen_get_rgb_colormap(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkScreen* object = GDK_SCREEN(getPtrValue(s_object));

  GdkColormap* ans;

  ans = gdk_screen_get_rgb_colormap(object);

  _result = toRPointerWithRef(ans, "GdkColormap");

  return(_result);
}
 

USER_OBJECT_
S_gdk_screen_get_rgba_colormap(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkScreen* object = GDK_SCREEN(getPtrValue(s_object));

  GdkColormap* ans;

  ans = gdk_screen_get_rgba_colormap(object);

  _result = toRPointerWithRef(ans, "GdkColormap");

  return(_result);
}
 

USER_OBJECT_
S_gdk_screen_get_rgb_visual(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkScreen* object = GDK_SCREEN(getPtrValue(s_object));

  GdkVisual* ans;

  ans = gdk_screen_get_rgb_visual(object);

  _result = toRPointerWithRef(ans, "GdkVisual");

  return(_result);
}
 

USER_OBJECT_
S_gdk_screen_get_rgba_visual(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkScreen* object = GDK_SCREEN(getPtrValue(s_object));

  GdkVisual* ans;

  ans = gdk_screen_get_rgba_visual(object);

  _result = toRPointerWithRef(ans, "GdkVisual");

  return(_result);
}
 

USER_OBJECT_
S_gdk_screen_get_root_window(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkScreen* object = GDK_SCREEN(getPtrValue(s_object));

  GdkWindow* ans;

  ans = gdk_screen_get_root_window(object);

  _result = toRPointerWithRef(ans, "GdkWindow");

  return(_result);
}
 

USER_OBJECT_
S_gdk_screen_get_display(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkScreen* object = GDK_SCREEN(getPtrValue(s_object));

  GdkDisplay* ans;

  ans = gdk_screen_get_display(object);

  _result = toRPointerWithRef(ans, "GdkDisplay");

  return(_result);
}
 

USER_OBJECT_
S_gdk_screen_get_number(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkScreen* object = GDK_SCREEN(getPtrValue(s_object));

  gint ans;

  ans = gdk_screen_get_number(object);

  _result = asRInteger(ans);

  return(_result);
}
 

USER_OBJECT_
S_gdk_screen_get_width(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkScreen* object = GDK_SCREEN(getPtrValue(s_object));

  gint ans;

  ans = gdk_screen_get_width(object);

  _result = asRInteger(ans);

  return(_result);
}
 

USER_OBJECT_
S_gdk_screen_get_height(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkScreen* object = GDK_SCREEN(getPtrValue(s_object));

  gint ans;

  ans = gdk_screen_get_height(object);

  _result = asRInteger(ans);

  return(_result);
}
 

USER_OBJECT_
S_gdk_screen_get_width_mm(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkScreen* object = GDK_SCREEN(getPtrValue(s_object));

  gint ans;

  ans = gdk_screen_get_width_mm(object);

  _result = asRInteger(ans);

  return(_result);
}
 

USER_OBJECT_
S_gdk_screen_get_height_mm(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkScreen* object = GDK_SCREEN(getPtrValue(s_object));

  gint ans;

  ans = gdk_screen_get_height_mm(object);

  _result = asRInteger(ans);

  return(_result);
}
 

USER_OBJECT_
S_gdk_screen_list_visuals(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkScreen* object = GDK_SCREEN(getPtrValue(s_object));

  GList* ans;

  ans = gdk_screen_list_visuals(object);

  _result = asRGListWithRef(ans, "GdkVisual");
    CLEANUP(g_list_free, ans);;

  return(_result);
}
 

USER_OBJECT_
S_gdk_screen_get_toplevel_windows(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkScreen* object = GDK_SCREEN(getPtrValue(s_object));

  GList* ans;

  ans = gdk_screen_get_toplevel_windows(object);

  _result = asRGListWithRef(ans, "GdkWindow");
    CLEANUP(g_list_free, ans);;

  return(_result);
}
 

USER_OBJECT_
S_gdk_screen_make_display_name(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkScreen* object = GDK_SCREEN(getPtrValue(s_object));

  gchar* ans;

  ans = gdk_screen_make_display_name(object);

  _result = asRString(ans);
    CLEANUP(g_free, ans);;

  return(_result);
}
 

USER_OBJECT_
S_gdk_screen_get_n_monitors(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkScreen* object = GDK_SCREEN(getPtrValue(s_object));

  gint ans;

  ans = gdk_screen_get_n_monitors(object);

  _result = asRInteger(ans);

  return(_result);
}
 

USER_OBJECT_
S_gdk_screen_get_monitor_geometry(USER_OBJECT_ s_object, USER_OBJECT_ s_monitor_num)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkScreen* object = GDK_SCREEN(getPtrValue(s_object));
  gint monitor_num = ((gint)asCInteger(s_monitor_num));

  GdkRectangle* dest = ((GdkRectangle *)g_new0(GdkRectangle, 1));

  gdk_screen_get_monitor_geometry(object, monitor_num, dest);


  _result = retByVal(PROTECT(_result), "dest", PROTECT(asRGdkRectangle(dest)), NULL);
  UNPROTECT(2);
    CLEANUP(g_free, dest);;

  return(_result);
}
 

USER_OBJECT_
S_gdk_screen_get_monitor_at_point(USER_OBJECT_ s_object, USER_OBJECT_ s_x, USER_OBJECT_ s_y)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkScreen* object = GDK_SCREEN(getPtrValue(s_object));
  gint x = ((gint)asCInteger(s_x));
  gint y = ((gint)asCInteger(s_y));

  gint ans;

  ans = gdk_screen_get_monitor_at_point(object, x, y);

  _result = asRInteger(ans);

  return(_result);
}
 

USER_OBJECT_
S_gdk_screen_get_monitor_at_window(USER_OBJECT_ s_object, USER_OBJECT_ s_window)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkScreen* object = GDK_SCREEN(getPtrValue(s_object));
  GdkWindow* window = GDK_WINDOW(getPtrValue(s_window));

  gint ans;

  ans = gdk_screen_get_monitor_at_window(object, window);

  _result = asRInteger(ans);

  return(_result);
}
 

USER_OBJECT_
S_gdk_screen_broadcast_client_message(USER_OBJECT_ s_object, USER_OBJECT_ s_event)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkScreen* object = GDK_SCREEN(getPtrValue(s_object));
  GdkEvent* event = ((GdkEvent*)getPtrValue(s_event));


  gdk_screen_broadcast_client_message(object, event);


  return(_result);
}
 

USER_OBJECT_
S_gdk_screen_get_default(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  GdkScreen* ans;

  ans = gdk_screen_get_default();

  _result = toRPointerWithRef(ans, "GdkScreen");

  return(_result);
}
 

USER_OBJECT_
S_gdk_screen_get_setting(USER_OBJECT_ s_object, USER_OBJECT_ s_name)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkScreen* object = GDK_SCREEN(getPtrValue(s_object));
  const gchar* name = ((const gchar*)asCString(s_name));

  gboolean ans;
  GValue* value = ((GValue *)g_new0(GValue, 1));

  ans = gdk_screen_get_setting(object, name, value);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "value", PROTECT(asRGValue(value)), NULL);
  UNPROTECT(2);
    CLEANUP(g_value_unset, value);
  CLEANUP(g_free, value);;

  return(_result);
}
 

USER_OBJECT_
S_gdk_spawn_command_line_on_screen(USER_OBJECT_ s_screen, USER_OBJECT_ s_command_line)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkScreen* screen = GDK_SCREEN(getPtrValue(s_screen));
  const gchar* command_line = ((const gchar*)asCString(s_command_line));

  gboolean ans;
  GError* error = NULL;

  ans = gdk_spawn_command_line_on_screen(screen, command_line, &error);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;

  return(_result);
}
 

USER_OBJECT_
S_gtk_alternative_dialog_button_order(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkScreen* object = GDK_SCREEN(getPtrValue(s_object));

  gboolean ans;

  ans = gtk_alternative_dialog_button_order(object);

  _result = asRLogical(ans);

  return(_result);
}
 

USER_OBJECT_
S_gdk_selection_owner_get(USER_OBJECT_ s_selection)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkAtom selection = asCGdkAtom(s_selection);

  GdkWindow* ans;

  ans = gdk_selection_owner_get(selection);

  _result = toRPointerWithRef(ans, "GdkWindow");

  return(_result);
}
 

USER_OBJECT_
S_gdk_selection_owner_get_for_display(USER_OBJECT_ s_display, USER_OBJECT_ s_selection)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkDisplay* display = GDK_DISPLAY_OBJECT(getPtrValue(s_display));
  GdkAtom selection = asCGdkAtom(s_selection);

  GdkWindow* ans;

  ans = gdk_selection_owner_get_for_display(display, selection);

  _result = toRPointerWithRef(ans, "GdkWindow");

  return(_result);
}
 

USER_OBJECT_
S_gdk_selection_property_get(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkWindow* object = GDK_WINDOW(getPtrValue(s_object));

  gboolean ans;
  guchar* data = NULL;
  GdkAtom prop_type;
  gint prop_format;

  ans = gdk_selection_property_get(object, &data, &prop_type, &prop_format);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "data", PROTECT(asRRawArrayWithSize(data, prop_format)), "prop.type", PROTECT(asRGdkAtom(prop_type)), "prop.format", PROTECT(asRInteger(prop_format)), NULL);
  UNPROTECT(4);
    CLEANUP(g_free, data);;
  ;
  ;

  return(_result);
}
 

USER_OBJECT_
S_gdk_visual_get_best_depth(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  gint ans;

  ans = gdk_visual_get_best_depth();

  _result = asRInteger(ans);

  return(_result);
}
 

USER_OBJECT_
S_gdk_visual_get_best_type(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  GdkVisualType ans;

  ans = gdk_visual_get_best_type();

  _result = asREnum(ans, GDK_TYPE_VISUAL_TYPE);

  return(_result);
}
 

USER_OBJECT_
S_gdk_visual_get_system(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  GdkVisual* ans;

  ans = gdk_visual_get_system();

  _result = toRPointerWithRef(ans, "GdkVisual");

  return(_result);
}
 

USER_OBJECT_
S_gdk_visual_get_best(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  GdkVisual* ans;

  ans = gdk_visual_get_best();

  _result = toRPointerWithRef(ans, "GdkVisual");

  return(_result);
}
 

USER_OBJECT_
S_gdk_visual_get_best_with_depth(USER_OBJECT_ s_depth)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  gint depth = ((gint)asCInteger(s_depth));

  GdkVisual* ans;

  ans = gdk_visual_get_best_with_depth(depth);

  _result = toRPointerWithRef(ans, "GdkVisual");

  return(_result);
}
 

USER_OBJECT_
S_gdk_visual_get_best_with_type(USER_OBJECT_ s_visual_type)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkVisualType visual_type = ((GdkVisualType)asCEnum(s_visual_type, GDK_TYPE_VISUAL_TYPE));

  GdkVisual* ans;

  ans = gdk_visual_get_best_with_type(visual_type);

  _result = toRPointerWithRef(ans, "GdkVisual");

  return(_result);
}
 

USER_OBJECT_
S_gdk_visual_get_best_with_both(USER_OBJECT_ s_depth, USER_OBJECT_ s_visual_type)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  gint depth = ((gint)asCInteger(s_depth));
  GdkVisualType visual_type = ((GdkVisualType)asCEnum(s_visual_type, GDK_TYPE_VISUAL_TYPE));

  GdkVisual* ans;

  ans = gdk_visual_get_best_with_both(depth, visual_type);

  _result = toRPointerWithRef(ans, "GdkVisual");

  return(_result);
}
 

USER_OBJECT_
S_gdk_list_visuals(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  GList* ans;

  ans = gdk_list_visuals();

  _result = asRGListWithRef(ans, "GdkVisual");
    CLEANUP(g_list_free, ans);;

  return(_result);
}
 

USER_OBJECT_
S_gdk_visual_get_screen(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkVisual* object = GDK_VISUAL(getPtrValue(s_object));

  GdkScreen* ans;

  ans = gdk_visual_get_screen(object);

  _result = toRPointerWithRef(ans, "GdkScreen");

  return(_result);
}
 

USER_OBJECT_
S_gdk_window_object_get_type(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  GType ans;

  ans = gdk_window_object_get_type();

  _result = asRGType(ans);

  return(_result);
}
 

USER_OBJECT_
S_gdk_window_set_keep_above(USER_OBJECT_ s_object, USER_OBJECT_ s_setting)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkWindow* object = GDK_WINDOW(getPtrValue(s_object));
  gboolean setting = ((gboolean)asCLogical(s_setting));


  gdk_window_set_keep_above(object, setting);


  return(_result);
}
 

USER_OBJECT_
S_gdk_window_set_keep_below(USER_OBJECT_ s_object, USER_OBJECT_ s_setting)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkWindow* object = GDK_WINDOW(getPtrValue(s_object));
  gboolean setting = ((gboolean)asCLogical(s_setting));


  gdk_window_set_keep_below(object, setting);


  return(_result);
}
 

USER_OBJECT_
S_gdk_window_destroy(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkWindow* object = GDK_WINDOW(getPtrValue(s_object));


  gdk_window_destroy(object);


  return(_result);
}
 

USER_OBJECT_
S_gdk_window_get_window_type(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkWindow* object = GDK_WINDOW(getPtrValue(s_object));

  GdkWindowType ans;

  ans = gdk_window_get_window_type(object);

  _result = asREnum(ans, GDK_TYPE_WINDOW_TYPE);

  return(_result);
}
 

USER_OBJECT_
S_gdk_window_at_pointer(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  GdkWindow* ans;
  gint win_x;
  gint win_y;

  ans = gdk_window_at_pointer(&win_x, &win_y);

  _result = toRPointerWithRef(ans, "GdkWindow");

  _result = retByVal(PROTECT(_result), "win.x", PROTECT(asRInteger(win_x)), "win.y", PROTECT(asRInteger(win_y)), NULL);
  UNPROTECT(3);
  ;
  ;

  return(_result);
}
 

USER_OBJECT_
S_gdk_window_show(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkWindow* object = GDK_WINDOW(getPtrValue(s_object));


  gdk_window_show(object);


  return(_result);
}
 

USER_OBJECT_
S_gdk_window_show_unraised(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkWindow* object = GDK_WINDOW(getPtrValue(s_object));


  gdk_window_show_unraised(object);


  return(_result);
}
 

USER_OBJECT_
S_gdk_window_hide(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkWindow* object = GDK_WINDOW(getPtrValue(s_object));


  gdk_window_hide(object);


  return(_result);
}
 

USER_OBJECT_
S_gdk_window_withdraw(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkWindow* object = GDK_WINDOW(getPtrValue(s_object));


  gdk_window_withdraw(object);


  return(_result);
}
 

USER_OBJECT_
S_gdk_window_move(USER_OBJECT_ s_object, USER_OBJECT_ s_x, USER_OBJECT_ s_y)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkWindow* object = GDK_WINDOW(getPtrValue(s_object));
  gint x = ((gint)asCInteger(s_x));
  gint y = ((gint)asCInteger(s_y));


  gdk_window_move(object, x, y);


  return(_result);
}
 

USER_OBJECT_
S_gdk_window_resize(USER_OBJECT_ s_object, USER_OBJECT_ s_width, USER_OBJECT_ s_height)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkWindow* object = GDK_WINDOW(getPtrValue(s_object));
  gint width = ((gint)asCInteger(s_width));
  gint height = ((gint)asCInteger(s_height));


  gdk_window_resize(object, width, height);


  return(_result);
}
 

USER_OBJECT_
S_gdk_window_move_resize(USER_OBJECT_ s_object, USER_OBJECT_ s_x, USER_OBJECT_ s_y, USER_OBJECT_ s_width, USER_OBJECT_ s_height)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkWindow* object = GDK_WINDOW(getPtrValue(s_object));
  gint x = ((gint)asCInteger(s_x));
  gint y = ((gint)asCInteger(s_y));
  gint width = ((gint)asCInteger(s_width));
  gint height = ((gint)asCInteger(s_height));


  gdk_window_move_resize(object, x, y, width, height);


  return(_result);
}
 

USER_OBJECT_
S_gdk_window_move_region(USER_OBJECT_ s_object, USER_OBJECT_ s_region, USER_OBJECT_ s_x, USER_OBJECT_ s_y)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkWindow* object = GDK_WINDOW(getPtrValue(s_object));
  GdkRegion* region = ((GdkRegion*)getPtrValue(s_region));
  gint x = ((gint)asCInteger(s_x));
  gint y = ((gint)asCInteger(s_y));


  gdk_window_move_region(object, region, x, y);


  return(_result);
}
 

USER_OBJECT_
S_gdk_window_reparent(USER_OBJECT_ s_object, USER_OBJECT_ s_new_parent, USER_OBJECT_ s_x, USER_OBJECT_ s_y)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkWindow* object = GDK_WINDOW(getPtrValue(s_object));
  GdkWindow* new_parent = GDK_WINDOW(getPtrValue(s_new_parent));
  gint x = ((gint)asCInteger(s_x));
  gint y = ((gint)asCInteger(s_y));


  gdk_window_reparent(object, new_parent, x, y);


  return(_result);
}
 

USER_OBJECT_
S_gdk_window_clear(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkWindow* object = GDK_WINDOW(getPtrValue(s_object));


  gdk_window_clear(object);


  return(_result);
}
 

USER_OBJECT_
S_gdk_window_clear_area(USER_OBJECT_ s_object, USER_OBJECT_ s_x, USER_OBJECT_ s_y, USER_OBJECT_ s_width, USER_OBJECT_ s_height)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkWindow* object = GDK_WINDOW(getPtrValue(s_object));
  gint x = ((gint)asCInteger(s_x));
  gint y = ((gint)asCInteger(s_y));
  gint width = ((gint)asCInteger(s_width));
  gint height = ((gint)asCInteger(s_height));


  gdk_window_clear_area(object, x, y, width, height);


  return(_result);
}
 

USER_OBJECT_
S_gdk_window_clear_area_e(USER_OBJECT_ s_object, USER_OBJECT_ s_x, USER_OBJECT_ s_y, USER_OBJECT_ s_width, USER_OBJECT_ s_height)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkWindow* object = GDK_WINDOW(getPtrValue(s_object));
  gint x = ((gint)asCInteger(s_x));
  gint y = ((gint)asCInteger(s_y));
  gint width = ((gint)asCInteger(s_width));
  gint height = ((gint)asCInteger(s_height));


  gdk_window_clear_area_e(object, x, y, width, height);


  return(_result);
}
 

USER_OBJECT_
S_gdk_window_raise(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkWindow* object = GDK_WINDOW(getPtrValue(s_object));


  gdk_window_raise(object);


  return(_result);
}
 

USER_OBJECT_
S_gdk_window_lower(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkWindow* object = GDK_WINDOW(getPtrValue(s_object));


  gdk_window_lower(object);


  return(_result);
}
 

USER_OBJECT_
S_gdk_window_focus(USER_OBJECT_ s_object, USER_OBJECT_ s_timestamp)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkWindow* object = GDK_WINDOW(getPtrValue(s_object));
  guint32 timestamp = ((guint32)asCNumeric(s_timestamp));


  gdk_window_focus(object, timestamp);


  return(_result);
}
 

USER_OBJECT_
S_gdk_window_set_user_data(USER_OBJECT_ s_object, USER_OBJECT_ s_user_data)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkWindow* object = GDK_WINDOW(getPtrValue(s_object));
  GtkWidget* user_data = GET_LENGTH(s_user_data) == 0 ? NULL : ((GtkWidget*)getPtrValue(s_user_data));


  gdk_window_set_user_data(object, user_data);


  return(_result);
}
 

USER_OBJECT_
S_gdk_window_get_user_data(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkWindow* object = GDK_WINDOW(getPtrValue(s_object));

  GtkWidget* user_data = NULL;

  gdk_window_get_user_data(object, &user_data);


  _result = retByVal(PROTECT(_result), "user.data", PROTECT(toRPointer(user_data, "GtkWidget")), NULL);
  UNPROTECT(2);
  ;

  return(_result);
}
 

USER_OBJECT_
S_gdk_window_set_override_redirect(USER_OBJECT_ s_object, USER_OBJECT_ s_override_redirect)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkWindow* object = GDK_WINDOW(getPtrValue(s_object));
  gboolean override_redirect = ((gboolean)asCLogical(s_override_redirect));


  gdk_window_set_override_redirect(object, override_redirect);


  return(_result);
}
 

USER_OBJECT_
S_gdk_window_add_filter(USER_OBJECT_ s_object, USER_OBJECT_ s_function, USER_OBJECT_ s_data)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkFilterFunc function = ((GdkFilterFunc)S_GdkFilterFunc);
  R_CallbackData* data = R_createCBData(s_function, s_data);
  GdkWindow* object = GDK_WINDOW(getPtrValue(s_object));


  gdk_window_add_filter(object, function, data);

  R_freeCBData(data);

  return(_result);
}
 

USER_OBJECT_
S_gdk_window_remove_filter(USER_OBJECT_ s_object, USER_OBJECT_ s_function, USER_OBJECT_ s_data)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkFilterFunc function = ((GdkFilterFunc)S_GdkFilterFunc);
  R_CallbackData* data = R_createCBData(s_function, s_data);
  GdkWindow* object = GDK_WINDOW(getPtrValue(s_object));


  gdk_window_remove_filter(object, function, data);

  R_freeCBData(data);

  return(_result);
}
 

USER_OBJECT_
S_gdk_window_scroll(USER_OBJECT_ s_object, USER_OBJECT_ s_dx, USER_OBJECT_ s_dy)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkWindow* object = GDK_WINDOW(getPtrValue(s_object));
  gint dx = ((gint)asCInteger(s_dx));
  gint dy = ((gint)asCInteger(s_dy));


  gdk_window_scroll(object, dx, dy);


  return(_result);
}
 

USER_OBJECT_
S_gdk_window_shape_combine_mask(USER_OBJECT_ s_object, USER_OBJECT_ s_shape_mask, USER_OBJECT_ s_offset_x, USER_OBJECT_ s_offset_y)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkWindow* object = GDK_WINDOW(getPtrValue(s_object));
  GdkBitmap* shape_mask = GET_LENGTH(s_shape_mask) == 0 ? NULL : GDK_DRAWABLE(getPtrValue(s_shape_mask));
  gint offset_x = ((gint)asCInteger(s_offset_x));
  gint offset_y = ((gint)asCInteger(s_offset_y));


  gdk_window_shape_combine_mask(object, shape_mask, offset_x, offset_y);


  return(_result);
}
 

USER_OBJECT_
S_gdk_window_shape_combine_region(USER_OBJECT_ s_object, USER_OBJECT_ s_shape_region, USER_OBJECT_ s_offset_x, USER_OBJECT_ s_offset_y)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkWindow* object = GDK_WINDOW(getPtrValue(s_object));
  GdkRegion* shape_region = GET_LENGTH(s_shape_region) == 0 ? NULL : ((GdkRegion*)getPtrValue(s_shape_region));
  gint offset_x = ((gint)asCInteger(s_offset_x));
  gint offset_y = ((gint)asCInteger(s_offset_y));


  gdk_window_shape_combine_region(object, shape_region, offset_x, offset_y);


  return(_result);
}
 

USER_OBJECT_
S_gdk_window_set_child_shapes(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkWindow* object = GDK_WINDOW(getPtrValue(s_object));


  gdk_window_set_child_shapes(object);


  return(_result);
}
 

USER_OBJECT_
S_gdk_window_merge_child_shapes(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkWindow* object = GDK_WINDOW(getPtrValue(s_object));


  gdk_window_merge_child_shapes(object);


  return(_result);
}
 

USER_OBJECT_
S_gdk_window_is_visible(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkWindow* object = GDK_WINDOW(getPtrValue(s_object));

  gboolean ans;

  ans = gdk_window_is_visible(object);

  _result = asRLogical(ans);

  return(_result);
}
 

USER_OBJECT_
S_gdk_window_is_viewable(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkWindow* object = GDK_WINDOW(getPtrValue(s_object));

  gboolean ans;

  ans = gdk_window_is_viewable(object);

  _result = asRLogical(ans);

  return(_result);
}
 

USER_OBJECT_
S_gdk_window_get_state(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkWindow* object = GDK_WINDOW(getPtrValue(s_object));

  GdkWindowState ans;

  ans = gdk_window_get_state(object);

  _result = asRFlag(ans, GDK_TYPE_WINDOW_STATE);

  return(_result);
}
 

USER_OBJECT_
S_gdk_window_set_static_gravities(USER_OBJECT_ s_object, USER_OBJECT_ s_use_static)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkWindow* object = GDK_WINDOW(getPtrValue(s_object));
  gboolean use_static = ((gboolean)asCLogical(s_use_static));

  gboolean ans;

  ans = gdk_window_set_static_gravities(object, use_static);

  _result = asRLogical(ans);

  return(_result);
}
 

USER_OBJECT_
S_gdk_window_set_hints(USER_OBJECT_ s_object, USER_OBJECT_ s_x, USER_OBJECT_ s_y, USER_OBJECT_ s_min_width, USER_OBJECT_ s_min_height, USER_OBJECT_ s_max_width, USER_OBJECT_ s_max_height, USER_OBJECT_ s_flags)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkWindow* object = GDK_WINDOW(getPtrValue(s_object));
  gint x = ((gint)asCInteger(s_x));
  gint y = ((gint)asCInteger(s_y));
  gint min_width = ((gint)asCInteger(s_min_width));
  gint min_height = ((gint)asCInteger(s_min_height));
  gint max_width = ((gint)asCInteger(s_max_width));
  gint max_height = ((gint)asCInteger(s_max_height));
  gint flags = ((gint)asCInteger(s_flags));


  gdk_window_set_hints(object, x, y, min_width, min_height, max_width, max_height, flags);


  return(_result);
}
 

USER_OBJECT_
S_gdk_window_set_type_hint(USER_OBJECT_ s_object, USER_OBJECT_ s_hint)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkWindow* object = GDK_WINDOW(getPtrValue(s_object));
  GdkWindowTypeHint hint = ((GdkWindowTypeHint)asCEnum(s_hint, GDK_TYPE_WINDOW_TYPE_HINT));


  gdk_window_set_type_hint(object, hint);


  return(_result);
}
 

USER_OBJECT_
S_gdk_window_set_modal_hint(USER_OBJECT_ s_object, USER_OBJECT_ s_modal)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkWindow* object = GDK_WINDOW(getPtrValue(s_object));
  gboolean modal = ((gboolean)asCLogical(s_modal));


  gdk_window_set_modal_hint(object, modal);


  return(_result);
}
 

USER_OBJECT_
S_gdk_window_set_skip_taskbar_hint(USER_OBJECT_ s_object, USER_OBJECT_ s_modal)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkWindow* object = GDK_WINDOW(getPtrValue(s_object));
  gboolean modal = ((gboolean)asCLogical(s_modal));


  gdk_window_set_skip_taskbar_hint(object, modal);


  return(_result);
}
 

USER_OBJECT_
S_gdk_window_set_skip_pager_hint(USER_OBJECT_ s_object, USER_OBJECT_ s_modal)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkWindow* object = GDK_WINDOW(getPtrValue(s_object));
  gboolean modal = ((gboolean)asCLogical(s_modal));


  gdk_window_set_skip_pager_hint(object, modal);


  return(_result);
}
 

USER_OBJECT_
S_gdk_window_set_urgency_hint(USER_OBJECT_ s_object, USER_OBJECT_ s_urgent)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkWindow* object = GDK_WINDOW(getPtrValue(s_object));
  gboolean urgent = ((gboolean)asCLogical(s_urgent));


  gdk_window_set_urgency_hint(object, urgent);


  return(_result);
}
 

USER_OBJECT_
S_gdk_set_sm_client_id(USER_OBJECT_ s_sm_client_id)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  const gchar* sm_client_id = ((const gchar*)asCString(s_sm_client_id));


  gdk_set_sm_client_id(sm_client_id);


  return(_result);
}
 

USER_OBJECT_
S_gdk_window_begin_paint_rect(USER_OBJECT_ s_object, USER_OBJECT_ s_rectangle)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkWindow* object = GDK_WINDOW(getPtrValue(s_object));
  GdkRectangle* rectangle = asCGdkRectangle(s_rectangle);


  gdk_window_begin_paint_rect(object, rectangle);


  return(_result);
}
 

USER_OBJECT_
S_gdk_window_begin_paint_region(USER_OBJECT_ s_object, USER_OBJECT_ s_region)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkWindow* object = GDK_WINDOW(getPtrValue(s_object));
  GdkRegion* region = ((GdkRegion*)getPtrValue(s_region));


  gdk_window_begin_paint_region(object, region);


  return(_result);
}
 

USER_OBJECT_
S_gdk_window_end_paint(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkWindow* object = GDK_WINDOW(getPtrValue(s_object));


  gdk_window_end_paint(object);


  return(_result);
}
 

USER_OBJECT_
S_gdk_window_set_title(USER_OBJECT_ s_object, USER_OBJECT_ s_title)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkWindow* object = GDK_WINDOW(getPtrValue(s_object));
  const gchar* title = ((const gchar*)asCString(s_title));


  gdk_window_set_title(object, title);


  return(_result);
}
 

USER_OBJECT_
S_gdk_window_set_role(USER_OBJECT_ s_object, USER_OBJECT_ s_role)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkWindow* object = GDK_WINDOW(getPtrValue(s_object));
  const gchar* role = ((const gchar*)asCString(s_role));


  gdk_window_set_role(object, role);


  return(_result);
}
 

USER_OBJECT_
S_gdk_window_set_transient_for(USER_OBJECT_ s_object, USER_OBJECT_ s_leader)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkWindow* object = GDK_WINDOW(getPtrValue(s_object));
  GdkWindow* leader = GDK_WINDOW(getPtrValue(s_leader));


  gdk_window_set_transient_for(object, leader);


  return(_result);
}
 

USER_OBJECT_
S_gdk_window_set_background(USER_OBJECT_ s_object, USER_OBJECT_ s_color)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkWindow* object = GDK_WINDOW(getPtrValue(s_object));
  GdkColor* color = asCGdkColor(s_color);


  gdk_window_set_background(object, color);


  return(_result);
}
 

USER_OBJECT_
S_gdk_window_set_back_pixmap(USER_OBJECT_ s_object, USER_OBJECT_ s_pixmap, USER_OBJECT_ s_parent_relative)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkWindow* object = GDK_WINDOW(getPtrValue(s_object));
  GdkPixmap* pixmap = GET_LENGTH(s_pixmap) == 0 ? NULL : GDK_PIXMAP(getPtrValue(s_pixmap));
  gboolean parent_relative = ((gboolean)asCLogical(s_parent_relative));


  gdk_window_set_back_pixmap(object, pixmap, parent_relative);


  return(_result);
}
 

USER_OBJECT_
S_gdk_window_set_cursor(USER_OBJECT_ s_object, USER_OBJECT_ s_cursor)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkWindow* object = GDK_WINDOW(getPtrValue(s_object));
  GdkCursor* cursor = GET_LENGTH(s_cursor) == 0 ? NULL : ((GdkCursor*)getPtrValue(s_cursor));


  gdk_window_set_cursor(object, cursor);


  return(_result);
}
 

USER_OBJECT_
S_gdk_window_get_geometry(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkWindow* object = GDK_WINDOW(getPtrValue(s_object));

  gint x;
  gint y;
  gint width;
  gint height;
  gint depth;

  gdk_window_get_geometry(object, &x, &y, &width, &height, &depth);


  _result = retByVal(PROTECT(_result), "x", PROTECT(asRInteger(x)), "y", PROTECT(asRInteger(y)), "width", PROTECT(asRInteger(width)), "height", PROTECT(asRInteger(height)), "depth", PROTECT(asRInteger(depth)), NULL);
  UNPROTECT(6);
  ;
  ;
  ;
  ;
  ;

  return(_result);
}
 

USER_OBJECT_
S_gdk_window_get_position(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkWindow* object = GDK_WINDOW(getPtrValue(s_object));

  gint x;
  gint y;

  gdk_window_get_position(object, &x, &y);


  _result = retByVal(PROTECT(_result), "x", PROTECT(asRInteger(x)), "y", PROTECT(asRInteger(y)), NULL);
  UNPROTECT(3);
  ;
  ;

  return(_result);
}
 

USER_OBJECT_
S_gdk_window_get_origin(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkWindow* object = GDK_WINDOW(getPtrValue(s_object));

  gint ans;
  gint x;
  gint y;

  ans = gdk_window_get_origin(object, &x, &y);

  _result = asRInteger(ans);

  _result = retByVal(PROTECT(_result), "x", PROTECT(asRInteger(x)), "y", PROTECT(asRInteger(y)), NULL);
  UNPROTECT(3);
  ;
  ;

  return(_result);
}
 

USER_OBJECT_
S_gdk_window_get_deskrelative_origin(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkWindow* object = GDK_WINDOW(getPtrValue(s_object));

  gboolean ans;
  gint x;
  gint y;

  ans = gdk_window_get_deskrelative_origin(object, &x, &y);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "x", PROTECT(asRInteger(x)), "y", PROTECT(asRInteger(y)), NULL);
  UNPROTECT(3);
  ;
  ;

  return(_result);
}
 

USER_OBJECT_
S_gdk_window_get_root_origin(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkWindow* object = GDK_WINDOW(getPtrValue(s_object));

  gint x;
  gint y;

  gdk_window_get_root_origin(object, &x, &y);


  _result = retByVal(PROTECT(_result), "x", PROTECT(asRInteger(x)), "y", PROTECT(asRInteger(y)), NULL);
  UNPROTECT(3);
  ;
  ;

  return(_result);
}
 

USER_OBJECT_
S_gdk_window_get_frame_extents(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkWindow* object = GDK_WINDOW(getPtrValue(s_object));

  GdkRectangle* rect = ((GdkRectangle *)g_new0(GdkRectangle, 1));

  gdk_window_get_frame_extents(object, rect);


  _result = retByVal(PROTECT(_result), "rect", PROTECT(asRGdkRectangle(rect)), NULL);
  UNPROTECT(2);
    CLEANUP(g_free, rect);;

  return(_result);
}
 

USER_OBJECT_
S_gdk_window_get_pointer(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkWindow* object = GDK_WINDOW(getPtrValue(s_object));

  GdkWindow* ans;
  gint x;
  gint y;
  GdkModifierType mask;

  ans = gdk_window_get_pointer(object, &x, &y, &mask);

  _result = toRPointerWithRef(ans, "GdkWindow");

  _result = retByVal(PROTECT(_result), "x", PROTECT(asRInteger(x)), "y", PROTECT(asRInteger(y)), "mask", PROTECT(asRFlag(mask, GDK_TYPE_MODIFIER_TYPE)), NULL);
  UNPROTECT(4);
  ;
  ;
  ;

  return(_result);
}
 

USER_OBJECT_
S_gdk_window_get_parent(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkWindow* object = GDK_WINDOW(getPtrValue(s_object));

  GdkWindow* ans;

  ans = gdk_window_get_parent(object);

  _result = toRPointerWithRef(ans, "GdkWindow");

  return(_result);
}
 

USER_OBJECT_
S_gdk_window_get_toplevel(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkWindow* object = GDK_WINDOW(getPtrValue(s_object));

  GdkWindow* ans;

  ans = gdk_window_get_toplevel(object);

  _result = toRPointerWithRef(ans, "GdkWindow");

  return(_result);
}
 

USER_OBJECT_
S_gdk_window_get_children(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkWindow* object = GDK_WINDOW(getPtrValue(s_object));

  GList* ans;

  ans = gdk_window_get_children(object);

  _result = asRGListWithRef(ans, "GdkWindow");
    CLEANUP(g_list_free, ans);;

  return(_result);
}
 

USER_OBJECT_
S_gdk_window_peek_children(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkWindow* object = GDK_WINDOW(getPtrValue(s_object));

  GList* ans;

  ans = gdk_window_peek_children(object);

  _result = asRGListWithRef(ans, "GdkWindow");
    CLEANUP(g_list_free, ans);;

  return(_result);
}
 

USER_OBJECT_
S_gdk_window_get_events(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkWindow* object = GDK_WINDOW(getPtrValue(s_object));

  GdkEventMask ans;

  ans = gdk_window_get_events(object);

  _result = asRFlag(ans, GDK_TYPE_EVENT_MASK);

  return(_result);
}
 

USER_OBJECT_
S_gdk_window_set_events(USER_OBJECT_ s_object, USER_OBJECT_ s_event_mask)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkWindow* object = GDK_WINDOW(getPtrValue(s_object));
  GdkEventMask event_mask = ((GdkEventMask)asCFlag(s_event_mask, GDK_TYPE_EVENT_MASK));


  gdk_window_set_events(object, event_mask);


  return(_result);
}
 

USER_OBJECT_
S_gdk_window_set_icon_list(USER_OBJECT_ s_object, USER_OBJECT_ s_pixbufs)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkWindow* object = GDK_WINDOW(getPtrValue(s_object));
  GList* pixbufs = ((GList*)asCArrayRef(s_pixbufs, GList, asCGList));


  gdk_window_set_icon_list(object, pixbufs);

    CLEANUP(g_list_free, ((GList*)pixbufs));;

  return(_result);
}
 

USER_OBJECT_
S_gdk_window_set_icon(USER_OBJECT_ s_object, USER_OBJECT_ s_icon_window, USER_OBJECT_ s_pixmap, USER_OBJECT_ s_mask)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkWindow* object = GDK_WINDOW(getPtrValue(s_object));
  GdkWindow* icon_window = GDK_WINDOW(getPtrValue(s_icon_window));
  GdkPixmap* pixmap = GDK_PIXMAP(getPtrValue(s_pixmap));
  GdkBitmap* mask = GDK_DRAWABLE(getPtrValue(s_mask));


  gdk_window_set_icon(object, icon_window, pixmap, mask);


  return(_result);
}
 

USER_OBJECT_
S_gdk_window_set_icon_name(USER_OBJECT_ s_object, USER_OBJECT_ s_name)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkWindow* object = GDK_WINDOW(getPtrValue(s_object));
  const gchar* name = ((const gchar*)asCString(s_name));


  gdk_window_set_icon_name(object, name);


  return(_result);
}
 

USER_OBJECT_
S_gdk_window_set_group(USER_OBJECT_ s_object, USER_OBJECT_ s_leader)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkWindow* object = GDK_WINDOW(getPtrValue(s_object));
  GdkWindow* leader = GDK_WINDOW(getPtrValue(s_leader));


  gdk_window_set_group(object, leader);


  return(_result);
}
 

USER_OBJECT_
S_gdk_window_get_group(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkWindow* object = GDK_WINDOW(getPtrValue(s_object));

  GdkWindow* ans;

  ans = gdk_window_get_group(object);

  _result = toRPointerWithRef(ans, "GdkWindow");

  return(_result);
}
 

USER_OBJECT_
S_gdk_window_set_decorations(USER_OBJECT_ s_object, USER_OBJECT_ s_decorations)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkWindow* object = GDK_WINDOW(getPtrValue(s_object));
  GdkWMDecoration decorations = ((GdkWMDecoration)asCFlag(s_decorations, GDK_TYPE_WM_DECORATION));


  gdk_window_set_decorations(object, decorations);


  return(_result);
}
 

USER_OBJECT_
S_gdk_window_get_decorations(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkWindow* object = GDK_WINDOW(getPtrValue(s_object));

  gboolean ans;
  GdkWMDecoration decorations;

  ans = gdk_window_get_decorations(object, &decorations);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "decorations", PROTECT(asRFlag(decorations, GDK_TYPE_WM_DECORATION)), NULL);
  UNPROTECT(2);
  ;

  return(_result);
}
 

USER_OBJECT_
S_gdk_window_set_functions(USER_OBJECT_ s_object, USER_OBJECT_ s_functions)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkWindow* object = GDK_WINDOW(getPtrValue(s_object));
  GdkWMFunction functions = ((GdkWMFunction)asCFlag(s_functions, GDK_TYPE_WM_FUNCTION));


  gdk_window_set_functions(object, functions);


  return(_result);
}
 

USER_OBJECT_
S_gdk_window_get_toplevels(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  GList* ans;

  ans = gdk_window_get_toplevels();

  _result = asRGListWithRef(ans, "GdkWindow");
    CLEANUP(g_list_free, ans);;

  return(_result);
}
 

USER_OBJECT_
S_gdk_window_iconify(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkWindow* object = GDK_WINDOW(getPtrValue(s_object));


  gdk_window_iconify(object);


  return(_result);
}
 

USER_OBJECT_
S_gdk_window_deiconify(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkWindow* object = GDK_WINDOW(getPtrValue(s_object));


  gdk_window_deiconify(object);


  return(_result);
}
 

USER_OBJECT_
S_gdk_window_stick(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkWindow* object = GDK_WINDOW(getPtrValue(s_object));


  gdk_window_stick(object);


  return(_result);
}
 

USER_OBJECT_
S_gdk_window_unstick(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkWindow* object = GDK_WINDOW(getPtrValue(s_object));


  gdk_window_unstick(object);


  return(_result);
}
 

USER_OBJECT_
S_gdk_window_maximize(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkWindow* object = GDK_WINDOW(getPtrValue(s_object));


  gdk_window_maximize(object);


  return(_result);
}
 

USER_OBJECT_
S_gdk_window_unmaximize(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkWindow* object = GDK_WINDOW(getPtrValue(s_object));


  gdk_window_unmaximize(object);


  return(_result);
}
 

USER_OBJECT_
S_gdk_window_fullscreen(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkWindow* object = GDK_WINDOW(getPtrValue(s_object));


  gdk_window_fullscreen(object);


  return(_result);
}
 

USER_OBJECT_
S_gdk_window_unfullscreen(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkWindow* object = GDK_WINDOW(getPtrValue(s_object));


  gdk_window_unfullscreen(object);


  return(_result);
}
 

USER_OBJECT_
S_gdk_window_register_dnd(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkWindow* object = GDK_WINDOW(getPtrValue(s_object));


  gdk_window_register_dnd(object);


  return(_result);
}
 

USER_OBJECT_
S_gdk_window_begin_resize_drag(USER_OBJECT_ s_object, USER_OBJECT_ s_edge, USER_OBJECT_ s_button, USER_OBJECT_ s_root_x, USER_OBJECT_ s_root_y, USER_OBJECT_ s_timestamp)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkWindow* object = GDK_WINDOW(getPtrValue(s_object));
  GdkWindowEdge edge = ((GdkWindowEdge)asCEnum(s_edge, GDK_TYPE_WINDOW_EDGE));
  gint button = ((gint)asCInteger(s_button));
  gint root_x = ((gint)asCInteger(s_root_x));
  gint root_y = ((gint)asCInteger(s_root_y));
  guint32 timestamp = ((guint32)asCNumeric(s_timestamp));


  gdk_window_begin_resize_drag(object, edge, button, root_x, root_y, timestamp);


  return(_result);
}
 

USER_OBJECT_
S_gdk_window_begin_move_drag(USER_OBJECT_ s_object, USER_OBJECT_ s_button, USER_OBJECT_ s_root_x, USER_OBJECT_ s_root_y, USER_OBJECT_ s_timestamp)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkWindow* object = GDK_WINDOW(getPtrValue(s_object));
  gint button = ((gint)asCInteger(s_button));
  gint root_x = ((gint)asCInteger(s_root_x));
  gint root_y = ((gint)asCInteger(s_root_y));
  guint32 timestamp = ((guint32)asCNumeric(s_timestamp));


  gdk_window_begin_move_drag(object, button, root_x, root_y, timestamp);


  return(_result);
}
 

USER_OBJECT_
S_gdk_window_invalidate_rect(USER_OBJECT_ s_object, USER_OBJECT_ s_rect, USER_OBJECT_ s_invalidate_children)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkWindow* object = GDK_WINDOW(getPtrValue(s_object));
  GdkRectangle* rect = GET_LENGTH(s_rect) == 0 ? NULL : asCGdkRectangle(s_rect);
  gboolean invalidate_children = ((gboolean)asCLogical(s_invalidate_children));


  gdk_window_invalidate_rect(object, rect, invalidate_children);


  return(_result);
}
 

USER_OBJECT_
S_gdk_window_invalidate_region(USER_OBJECT_ s_object, USER_OBJECT_ s_region, USER_OBJECT_ s_invalidate_children)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkWindow* object = GDK_WINDOW(getPtrValue(s_object));
  GdkRegion* region = ((GdkRegion*)getPtrValue(s_region));
  gboolean invalidate_children = ((gboolean)asCLogical(s_invalidate_children));


  gdk_window_invalidate_region(object, region, invalidate_children);


  return(_result);
}
 

USER_OBJECT_
S_gdk_window_get_update_area(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkWindow* object = GDK_WINDOW(getPtrValue(s_object));

  GdkRegion* ans;

  ans = gdk_window_get_update_area(object);

  _result = toRPointerWithFinalizer(ans, "GdkRegion", (RPointerFinalizer) gdk_region_destroy);

  return(_result);
}
 

USER_OBJECT_
S_gdk_window_freeze_updates(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkWindow* object = GDK_WINDOW(getPtrValue(s_object));


  gdk_window_freeze_updates(object);


  return(_result);
}
 

USER_OBJECT_
S_gdk_window_thaw_updates(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkWindow* object = GDK_WINDOW(getPtrValue(s_object));


  gdk_window_thaw_updates(object);


  return(_result);
}
 

USER_OBJECT_
S_gdk_window_process_all_updates(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;


  gdk_window_process_all_updates();


  return(_result);
}
 

USER_OBJECT_
S_gdk_window_process_updates(USER_OBJECT_ s_object, USER_OBJECT_ s_update_children)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkWindow* object = GDK_WINDOW(getPtrValue(s_object));
  gboolean update_children = ((gboolean)asCLogical(s_update_children));


  gdk_window_process_updates(object, update_children);


  return(_result);
}
 

USER_OBJECT_
S_gdk_window_set_debug_updates(USER_OBJECT_ s_setting)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  gboolean setting = ((gboolean)asCLogical(s_setting));


  gdk_window_set_debug_updates(setting);


  return(_result);
}
 

USER_OBJECT_
S_gdk_window_get_internal_paint_info(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkWindow* object = GDK_WINDOW(getPtrValue(s_object));

  GdkDrawable* real_drawable = NULL;
  gint x_offset;
  gint y_offset;

  gdk_window_get_internal_paint_info(object, &real_drawable, &x_offset, &y_offset);


  _result = retByVal(PROTECT(_result), "real.drawable", PROTECT(toRPointerWithRef(real_drawable, "GdkDrawable")), "x.offset", PROTECT(asRInteger(x_offset)), "y.offset", PROTECT(asRInteger(y_offset)), NULL);
  UNPROTECT(4);
  ;
  ;
  ;

  return(_result);
}
 

USER_OBJECT_
S_gdk_get_default_root_window(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  GdkWindow* ans;

  ans = gdk_get_default_root_window();

  _result = toRPointerWithRef(ans, "GdkWindow");

  return(_result);
}
 

USER_OBJECT_
S_gdk_window_set_accept_focus(USER_OBJECT_ s_object, USER_OBJECT_ s_accept_focus)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkWindow* object = GDK_WINDOW(getPtrValue(s_object));
  gboolean accept_focus = ((gboolean)asCLogical(s_accept_focus));


  gdk_window_set_accept_focus(object, accept_focus);


  return(_result);
}
 

USER_OBJECT_
S_gdk_window_set_focus_on_map(USER_OBJECT_ s_object, USER_OBJECT_ s_focus_on_map)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkWindow* object = GDK_WINDOW(getPtrValue(s_object));
  gboolean focus_on_map = ((gboolean)asCLogical(s_focus_on_map));


  gdk_window_set_focus_on_map(object, focus_on_map);


  return(_result);
}
 

USER_OBJECT_
S_gdk_window_enable_synchronized_configure(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkWindow* object = GDK_WINDOW(getPtrValue(s_object));


  gdk_window_enable_synchronized_configure(object);


  return(_result);
}
 

USER_OBJECT_
S_gdk_window_configure_finished(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkWindow* object = GDK_WINDOW(getPtrValue(s_object));


  gdk_window_configure_finished(object);


  return(_result);
}
 

USER_OBJECT_
S_gtk_drag_finish(USER_OBJECT_ s_object, USER_OBJECT_ s_success, USER_OBJECT_ s_del, USER_OBJECT_ s_time)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkDragContext* object = GDK_DRAG_CONTEXT(getPtrValue(s_object));
  gboolean success = ((gboolean)asCLogical(s_success));
  gboolean del = ((gboolean)asCLogical(s_del));
  guint32 time = ((guint32)asCNumeric(s_time));


  gtk_drag_finish(object, success, del, time);


  return(_result);
}
 

USER_OBJECT_
S_gtk_drag_set_icon_name(USER_OBJECT_ s_object, USER_OBJECT_ s_icon_name, USER_OBJECT_ s_hot_x, USER_OBJECT_ s_hot_y)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkDragContext* object = GDK_DRAG_CONTEXT(getPtrValue(s_object));
  const gchar* icon_name = ((const gchar*)asCString(s_icon_name));
  gint hot_x = ((gint)asCInteger(s_hot_x));
  gint hot_y = ((gint)asCInteger(s_hot_y));


  gtk_drag_set_icon_name(object, icon_name, hot_x, hot_y);


  return(_result);
}
 

USER_OBJECT_
S_gtk_drag_set_icon_widget(USER_OBJECT_ s_object, USER_OBJECT_ s_widget, USER_OBJECT_ s_hot_x, USER_OBJECT_ s_hot_y)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkDragContext* object = GDK_DRAG_CONTEXT(getPtrValue(s_object));
  GtkWidget* widget = ((GtkWidget*)getPtrValue(s_widget));
  gint hot_x = ((gint)asCInteger(s_hot_x));
  gint hot_y = ((gint)asCInteger(s_hot_y));


  gtk_drag_set_icon_widget(object, widget, hot_x, hot_y);


  return(_result);
}
 

USER_OBJECT_
S_gtk_drag_set_icon_pixmap(USER_OBJECT_ s_object, USER_OBJECT_ s_colormap, USER_OBJECT_ s_pixmap, USER_OBJECT_ s_mask, USER_OBJECT_ s_hot_x, USER_OBJECT_ s_hot_y)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkDragContext* object = GDK_DRAG_CONTEXT(getPtrValue(s_object));
  GdkColormap* colormap = GDK_COLORMAP(getPtrValue(s_colormap));
  GdkPixmap* pixmap = GDK_PIXMAP(getPtrValue(s_pixmap));
  GdkBitmap* mask = GDK_DRAWABLE(getPtrValue(s_mask));
  gint hot_x = ((gint)asCInteger(s_hot_x));
  gint hot_y = ((gint)asCInteger(s_hot_y));


  gtk_drag_set_icon_pixmap(object, colormap, pixmap, mask, hot_x, hot_y);


  return(_result);
}
 

USER_OBJECT_
S_gtk_drag_set_icon_pixbuf(USER_OBJECT_ s_object, USER_OBJECT_ s_pixbuf, USER_OBJECT_ s_hot_x, USER_OBJECT_ s_hot_y)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkDragContext* object = GDK_DRAG_CONTEXT(getPtrValue(s_object));
  GdkPixbuf* pixbuf = GDK_PIXBUF(getPtrValue(s_pixbuf));
  gint hot_x = ((gint)asCInteger(s_hot_x));
  gint hot_y = ((gint)asCInteger(s_hot_y));


  gtk_drag_set_icon_pixbuf(object, pixbuf, hot_x, hot_y);


  return(_result);
}
 

USER_OBJECT_
S_gtk_drag_set_icon_stock(USER_OBJECT_ s_object, USER_OBJECT_ s_stock_id, USER_OBJECT_ s_hot_x, USER_OBJECT_ s_hot_y)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkDragContext* object = GDK_DRAG_CONTEXT(getPtrValue(s_object));
  const gchar* stock_id = ((const gchar*)asCString(s_stock_id));
  gint hot_x = ((gint)asCInteger(s_hot_x));
  gint hot_y = ((gint)asCInteger(s_hot_y));


  gtk_drag_set_icon_stock(object, stock_id, hot_x, hot_y);


  return(_result);
}
 

USER_OBJECT_
S_gtk_drag_set_icon_default(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkDragContext* object = GDK_DRAG_CONTEXT(getPtrValue(s_object));


  gtk_drag_set_icon_default(object);


  return(_result);
}
 

USER_OBJECT_
S_gdk_pixbuf_get_colorspace(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkPixbuf* object = GDK_PIXBUF(getPtrValue(s_object));

  GdkColorspace ans;

  ans = gdk_pixbuf_get_colorspace(object);

  _result = asREnum(ans, GDK_TYPE_COLORSPACE);

  return(_result);
}
 

USER_OBJECT_
S_gdk_pixbuf_get_n_channels(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkPixbuf* object = GDK_PIXBUF(getPtrValue(s_object));

  int ans;

  ans = gdk_pixbuf_get_n_channels(object);

  _result = asRInteger(ans);

  return(_result);
}
 

USER_OBJECT_
S_gdk_pixbuf_get_has_alpha(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkPixbuf* object = GDK_PIXBUF(getPtrValue(s_object));

  gboolean ans;

  ans = gdk_pixbuf_get_has_alpha(object);

  _result = asRLogical(ans);

  return(_result);
}
 

USER_OBJECT_
S_gdk_pixbuf_get_bits_per_sample(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkPixbuf* object = GDK_PIXBUF(getPtrValue(s_object));

  int ans;

  ans = gdk_pixbuf_get_bits_per_sample(object);

  _result = asRInteger(ans);

  return(_result);
}
 

USER_OBJECT_
S_gdk_pixbuf_get_width(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkPixbuf* object = GDK_PIXBUF(getPtrValue(s_object));

  int ans;

  ans = gdk_pixbuf_get_width(object);

  _result = asRInteger(ans);

  return(_result);
}
 

USER_OBJECT_
S_gdk_pixbuf_get_height(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkPixbuf* object = GDK_PIXBUF(getPtrValue(s_object));

  int ans;

  ans = gdk_pixbuf_get_height(object);

  _result = asRInteger(ans);

  return(_result);
}
 

USER_OBJECT_
S_gdk_pixbuf_get_rowstride(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkPixbuf* object = GDK_PIXBUF(getPtrValue(s_object));

  int ans;

  ans = gdk_pixbuf_get_rowstride(object);

  _result = asRInteger(ans);

  return(_result);
}
 

USER_OBJECT_
S_gdk_pixbuf_new(USER_OBJECT_ s_colorspace, USER_OBJECT_ s_has_alpha, USER_OBJECT_ s_bits_per_sample, USER_OBJECT_ s_width, USER_OBJECT_ s_height)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkColorspace colorspace = ((GdkColorspace)asCEnum(s_colorspace, GDK_TYPE_COLORSPACE));
  gboolean has_alpha = ((gboolean)asCLogical(s_has_alpha));
  int bits_per_sample = ((int)asCInteger(s_bits_per_sample));
  int width = ((int)asCInteger(s_width));
  int height = ((int)asCInteger(s_height));

  GdkPixbuf* ans;

  ans = gdk_pixbuf_new(colorspace, has_alpha, bits_per_sample, width, height);

  _result = toRPointerWithFinalizer(ans, "GdkPixbuf", (RPointerFinalizer) g_object_unref);

  return(_result);
}
 

USER_OBJECT_
S_gdk_pixbuf_copy(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkPixbuf* object = GDK_PIXBUF(getPtrValue(s_object));

  GdkPixbuf* ans;

  ans = gdk_pixbuf_copy(object);

  _result = toRPointerWithFinalizer(ans, "GdkPixbuf", (RPointerFinalizer) g_object_unref);

  return(_result);
}
 

USER_OBJECT_
S_gdk_pixbuf_new_from_file(USER_OBJECT_ s_filename)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  const char* filename = ((const char*)asCString(s_filename));

  GdkPixbuf* ans;
  GError* error = NULL;

  ans = gdk_pixbuf_new_from_file(filename, &error);

  _result = toRPointerWithFinalizer(ans, "GdkPixbuf", (RPointerFinalizer) g_object_unref);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;

  return(_result);
}
 

USER_OBJECT_
S_gdk_pixbuf_new_from_file_at_size(USER_OBJECT_ s_filename, USER_OBJECT_ s_width, USER_OBJECT_ s_height)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  const char* filename = ((const char*)asCString(s_filename));
  int width = ((int)asCInteger(s_width));
  int height = ((int)asCInteger(s_height));

  GdkPixbuf* ans;
  GError* error = NULL;

  ans = gdk_pixbuf_new_from_file_at_size(filename, width, height, &error);

  _result = toRPointerWithFinalizer(ans, "GdkPixbuf", (RPointerFinalizer) g_object_unref);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;

  return(_result);
}
 

USER_OBJECT_
S_gdk_pixbuf_new_from_file_at_scale(USER_OBJECT_ s_filename, USER_OBJECT_ s_width, USER_OBJECT_ s_height, USER_OBJECT_ s_preserve_aspect_ratio)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  const char* filename = ((const char*)asCString(s_filename));
  int width = ((int)asCInteger(s_width));
  int height = ((int)asCInteger(s_height));
  gboolean preserve_aspect_ratio = ((gboolean)asCLogical(s_preserve_aspect_ratio));

  GdkPixbuf* ans;
  GError* error = NULL;

  ans = gdk_pixbuf_new_from_file_at_scale(filename, width, height, preserve_aspect_ratio, &error);

  _result = toRPointerWithFinalizer(ans, "GdkPixbuf", (RPointerFinalizer) g_object_unref);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;

  return(_result);
}
 

USER_OBJECT_
S_gdk_pixbuf_new_from_xpm_data(USER_OBJECT_ s_data)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  const char** data = ((const char**)asCStringArray(s_data));

  GdkPixbuf* ans;

  ans = gdk_pixbuf_new_from_xpm_data(data);

  _result = toRPointerWithFinalizer(ans, "GdkPixbuf", (RPointerFinalizer) g_object_unref);

  return(_result);
}
 

USER_OBJECT_
S_gdk_pixbuf_new_from_inline(USER_OBJECT_ s_data, USER_OBJECT_ s_copy_pixels)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  gint data_length = ((gint)GET_LENGTH(s_data));
  const guchar* data = ((const guchar*)asCArray(s_data, guchar, asCRaw));
  gboolean copy_pixels = ((gboolean)asCLogical(s_copy_pixels));

  GdkPixbuf* ans;
  GError* error = NULL;

  ans = gdk_pixbuf_new_from_inline(data_length, data, copy_pixels, &error);

  _result = toRPointerWithFinalizer(ans, "GdkPixbuf", (RPointerFinalizer) g_object_unref);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;

  return(_result);
}
 

USER_OBJECT_
S_gdk_pixbuf_new_subpixbuf(USER_OBJECT_ s_object, USER_OBJECT_ s_src_x, USER_OBJECT_ s_src_y, USER_OBJECT_ s_width, USER_OBJECT_ s_height)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkPixbuf* object = GDK_PIXBUF(getPtrValue(s_object));
  int src_x = ((int)asCInteger(s_src_x));
  int src_y = ((int)asCInteger(s_src_y));
  int width = ((int)asCInteger(s_width));
  int height = ((int)asCInteger(s_height));

  GdkPixbuf* ans;

  ans = gdk_pixbuf_new_subpixbuf(object, src_x, src_y, width, height);

  _result = toRPointerWithFinalizer(ans, "GdkPixbuf", (RPointerFinalizer) g_object_unref);

  return(_result);
}
 

USER_OBJECT_
S_gdk_pixbuf_fill(USER_OBJECT_ s_object, USER_OBJECT_ s_pixel)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkPixbuf* object = GDK_PIXBUF(getPtrValue(s_object));
  guint32 pixel = ((guint32)asCNumeric(s_pixel));


  gdk_pixbuf_fill(object, pixel);


  return(_result);
}
 

USER_OBJECT_
S_gdk_pixbuf_savev(USER_OBJECT_ s_object, USER_OBJECT_ s_filename, USER_OBJECT_ s_type, USER_OBJECT_ s_option_keys, USER_OBJECT_ s_option_values)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkPixbuf* object = GDK_PIXBUF(getPtrValue(s_object));
  const char* filename = ((const char*)asCString(s_filename));
  const char* type = ((const char*)asCString(s_type));
  char** option_keys = ((char**)asCStringArray(s_option_keys));
  char** option_values = ((char**)asCStringArray(s_option_values));

  gboolean ans;
  GError* error = NULL;

  ans = gdk_pixbuf_savev(object, filename, type, option_keys, option_values, &error);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;

  return(_result);
}
 

USER_OBJECT_
S_gdk_pixbuf_save_to_callbackv(USER_OBJECT_ s_object, USER_OBJECT_ s_save_func, USER_OBJECT_ s_user_data, USER_OBJECT_ s_type, USER_OBJECT_ s_option_keys, USER_OBJECT_ s_option_values)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkPixbufSaveFunc save_func = ((GdkPixbufSaveFunc)S_GdkPixbufSaveFunc);
  R_CallbackData* user_data = R_createCBData(s_save_func, s_user_data);
  GdkPixbuf* object = GDK_PIXBUF(getPtrValue(s_object));
  const char* type = ((const char*)asCString(s_type));
  char** option_keys = ((char**)asCStringArray(s_option_keys));
  char** option_values = ((char**)asCStringArray(s_option_values));

  GError* error = NULL;

  gdk_pixbuf_save_to_callbackv(object, save_func, user_data, type, option_keys, option_values, &error);


  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
  R_freeCBData(user_data);
    CLEANUP(g_error_free, error);;

  return(_result);
}
 

USER_OBJECT_
S_gdk_pixbuf_add_alpha(USER_OBJECT_ s_object, USER_OBJECT_ s_substitute_color, USER_OBJECT_ s_r, USER_OBJECT_ s_g, USER_OBJECT_ s_b)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkPixbuf* object = GDK_PIXBUF(getPtrValue(s_object));
  gboolean substitute_color = ((gboolean)asCLogical(s_substitute_color));
  guchar r = ((guchar)asCRaw(s_r));
  guchar g = ((guchar)asCRaw(s_g));
  guchar b = ((guchar)asCRaw(s_b));

  GdkPixbuf* ans;

  ans = gdk_pixbuf_add_alpha(object, substitute_color, r, g, b);

  _result = toRPointerWithFinalizer(ans, "GdkPixbuf", (RPointerFinalizer) g_object_unref);

  return(_result);
}
 

USER_OBJECT_
S_gdk_pixbuf_copy_area(USER_OBJECT_ s_object, USER_OBJECT_ s_src_x, USER_OBJECT_ s_src_y, USER_OBJECT_ s_width, USER_OBJECT_ s_height, USER_OBJECT_ s_dest_pixbuf, USER_OBJECT_ s_dest_x, USER_OBJECT_ s_dest_y)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkPixbuf* object = GDK_PIXBUF(getPtrValue(s_object));
  int src_x = ((int)asCInteger(s_src_x));
  int src_y = ((int)asCInteger(s_src_y));
  int width = ((int)asCInteger(s_width));
  int height = ((int)asCInteger(s_height));
  GdkPixbuf* dest_pixbuf = GDK_PIXBUF(getPtrValue(s_dest_pixbuf));
  int dest_x = ((int)asCInteger(s_dest_x));
  int dest_y = ((int)asCInteger(s_dest_y));


  gdk_pixbuf_copy_area(object, src_x, src_y, width, height, dest_pixbuf, dest_x, dest_y);


  return(_result);
}
 

USER_OBJECT_
S_gdk_pixbuf_saturate_and_pixelate(USER_OBJECT_ s_object, USER_OBJECT_ s_dest, USER_OBJECT_ s_saturation, USER_OBJECT_ s_pixelate)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkPixbuf* object = GDK_PIXBUF(getPtrValue(s_object));
  GdkPixbuf* dest = GDK_PIXBUF(getPtrValue(s_dest));
  gfloat saturation = ((gfloat)asCNumeric(s_saturation));
  gboolean pixelate = ((gboolean)asCLogical(s_pixelate));


  gdk_pixbuf_saturate_and_pixelate(object, dest, saturation, pixelate);


  return(_result);
}
 

USER_OBJECT_
S_gdk_pixbuf_scale(USER_OBJECT_ s_object, USER_OBJECT_ s_dest, USER_OBJECT_ s_dest_x, USER_OBJECT_ s_dest_y, USER_OBJECT_ s_dest_width, USER_OBJECT_ s_dest_height, USER_OBJECT_ s_offset_x, USER_OBJECT_ s_offset_y, USER_OBJECT_ s_scale_x, USER_OBJECT_ s_scale_y, USER_OBJECT_ s_interp_type)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkPixbuf* object = GDK_PIXBUF(getPtrValue(s_object));
  GdkPixbuf* dest = GDK_PIXBUF(getPtrValue(s_dest));
  int dest_x = ((int)asCInteger(s_dest_x));
  int dest_y = ((int)asCInteger(s_dest_y));
  int dest_width = ((int)asCInteger(s_dest_width));
  int dest_height = ((int)asCInteger(s_dest_height));
  double offset_x = ((double)asCNumeric(s_offset_x));
  double offset_y = ((double)asCNumeric(s_offset_y));
  double scale_x = ((double)asCNumeric(s_scale_x));
  double scale_y = ((double)asCNumeric(s_scale_y));
  GdkInterpType interp_type = ((GdkInterpType)asCEnum(s_interp_type, GDK_TYPE_INTERP_TYPE));


  gdk_pixbuf_scale(object, dest, dest_x, dest_y, dest_width, dest_height, offset_x, offset_y, scale_x, scale_y, interp_type);


  return(_result);
}
 

USER_OBJECT_
S_gdk_pixbuf_composite(USER_OBJECT_ s_object, USER_OBJECT_ s_dest, USER_OBJECT_ s_dest_x, USER_OBJECT_ s_dest_y, USER_OBJECT_ s_dest_width, USER_OBJECT_ s_dest_height, USER_OBJECT_ s_offset_x, USER_OBJECT_ s_offset_y, USER_OBJECT_ s_scale_x, USER_OBJECT_ s_scale_y, USER_OBJECT_ s_interp_type, USER_OBJECT_ s_overall_alpha)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkPixbuf* object = GDK_PIXBUF(getPtrValue(s_object));
  GdkPixbuf* dest = GDK_PIXBUF(getPtrValue(s_dest));
  int dest_x = ((int)asCInteger(s_dest_x));
  int dest_y = ((int)asCInteger(s_dest_y));
  int dest_width = ((int)asCInteger(s_dest_width));
  int dest_height = ((int)asCInteger(s_dest_height));
  double offset_x = ((double)asCNumeric(s_offset_x));
  double offset_y = ((double)asCNumeric(s_offset_y));
  double scale_x = ((double)asCNumeric(s_scale_x));
  double scale_y = ((double)asCNumeric(s_scale_y));
  GdkInterpType interp_type = ((GdkInterpType)asCEnum(s_interp_type, GDK_TYPE_INTERP_TYPE));
  int overall_alpha = ((int)asCInteger(s_overall_alpha));


  gdk_pixbuf_composite(object, dest, dest_x, dest_y, dest_width, dest_height, offset_x, offset_y, scale_x, scale_y, interp_type, overall_alpha);


  return(_result);
}
 

USER_OBJECT_
S_gdk_pixbuf_composite_color(USER_OBJECT_ s_object, USER_OBJECT_ s_dest, USER_OBJECT_ s_dest_x, USER_OBJECT_ s_dest_y, USER_OBJECT_ s_dest_width, USER_OBJECT_ s_dest_height, USER_OBJECT_ s_offset_x, USER_OBJECT_ s_offset_y, USER_OBJECT_ s_scale_x, USER_OBJECT_ s_scale_y, USER_OBJECT_ s_interp_type, USER_OBJECT_ s_overall_alpha, USER_OBJECT_ s_check_x, USER_OBJECT_ s_check_y, USER_OBJECT_ s_check_size, USER_OBJECT_ s_color1, USER_OBJECT_ s_color2)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkPixbuf* object = GDK_PIXBUF(getPtrValue(s_object));
  GdkPixbuf* dest = GDK_PIXBUF(getPtrValue(s_dest));
  int dest_x = ((int)asCInteger(s_dest_x));
  int dest_y = ((int)asCInteger(s_dest_y));
  int dest_width = ((int)asCInteger(s_dest_width));
  int dest_height = ((int)asCInteger(s_dest_height));
  double offset_x = ((double)asCNumeric(s_offset_x));
  double offset_y = ((double)asCNumeric(s_offset_y));
  double scale_x = ((double)asCNumeric(s_scale_x));
  double scale_y = ((double)asCNumeric(s_scale_y));
  GdkInterpType interp_type = ((GdkInterpType)asCEnum(s_interp_type, GDK_TYPE_INTERP_TYPE));
  int overall_alpha = ((int)asCInteger(s_overall_alpha));
  int check_x = ((int)asCInteger(s_check_x));
  int check_y = ((int)asCInteger(s_check_y));
  int check_size = ((int)asCInteger(s_check_size));
  guint32 color1 = ((guint32)asCNumeric(s_color1));
  guint32 color2 = ((guint32)asCNumeric(s_color2));


  gdk_pixbuf_composite_color(object, dest, dest_x, dest_y, dest_width, dest_height, offset_x, offset_y, scale_x, scale_y, interp_type, overall_alpha, check_x, check_y, check_size, color1, color2);


  return(_result);
}
 

USER_OBJECT_
S_gdk_pixbuf_rotate_simple(USER_OBJECT_ s_object, USER_OBJECT_ s_angle)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkPixbuf* object = GDK_PIXBUF(getPtrValue(s_object));
  GdkPixbufRotation angle = ((GdkPixbufRotation)asCEnum(s_angle, GDK_TYPE_PIXBUF_ROTATION));

  GdkPixbuf* ans;

  ans = gdk_pixbuf_rotate_simple(object, angle);

  _result = toRPointerWithFinalizer(ans, "GdkPixbuf", (RPointerFinalizer) g_object_unref);

  return(_result);
}
 

USER_OBJECT_
S_gdk_pixbuf_flip(USER_OBJECT_ s_object, USER_OBJECT_ s_horizontal)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkPixbuf* object = GDK_PIXBUF(getPtrValue(s_object));
  gboolean horizontal = ((gboolean)asCLogical(s_horizontal));

  GdkPixbuf* ans;

  ans = gdk_pixbuf_flip(object, horizontal);

  _result = toRPointerWithFinalizer(ans, "GdkPixbuf", (RPointerFinalizer) g_object_unref);

  return(_result);
}
 

USER_OBJECT_
S_gdk_pixbuf_scale_simple(USER_OBJECT_ s_object, USER_OBJECT_ s_dest_width, USER_OBJECT_ s_dest_height, USER_OBJECT_ s_interp_type)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkPixbuf* object = GDK_PIXBUF(getPtrValue(s_object));
  int dest_width = ((int)asCInteger(s_dest_width));
  int dest_height = ((int)asCInteger(s_dest_height));
  GdkInterpType interp_type = ((GdkInterpType)asCEnum(s_interp_type, GDK_TYPE_INTERP_TYPE));

  GdkPixbuf* ans;

  ans = gdk_pixbuf_scale_simple(object, dest_width, dest_height, interp_type);

  _result = toRPointerWithFinalizer(ans, "GdkPixbuf", (RPointerFinalizer) g_object_unref);

  return(_result);
}
 

USER_OBJECT_
S_gdk_pixbuf_composite_color_simple(USER_OBJECT_ s_object, USER_OBJECT_ s_dest_width, USER_OBJECT_ s_dest_height, USER_OBJECT_ s_interp_type, USER_OBJECT_ s_overall_alpha, USER_OBJECT_ s_check_size, USER_OBJECT_ s_color1, USER_OBJECT_ s_color2)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkPixbuf* object = GDK_PIXBUF(getPtrValue(s_object));
  int dest_width = ((int)asCInteger(s_dest_width));
  int dest_height = ((int)asCInteger(s_dest_height));
  GdkInterpType interp_type = ((GdkInterpType)asCEnum(s_interp_type, GDK_TYPE_INTERP_TYPE));
  int overall_alpha = ((int)asCInteger(s_overall_alpha));
  int check_size = ((int)asCInteger(s_check_size));
  guint32 color1 = ((guint32)asCNumeric(s_color1));
  guint32 color2 = ((guint32)asCNumeric(s_color2));

  GdkPixbuf* ans;

  ans = gdk_pixbuf_composite_color_simple(object, dest_width, dest_height, interp_type, overall_alpha, check_size, color1, color2);

  _result = toRPointerWithFinalizer(ans, "GdkPixbuf", (RPointerFinalizer) g_object_unref);

  return(_result);
}
 

USER_OBJECT_
S_gdk_pixbuf_animation_get_type(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  GType ans;

  ans = gdk_pixbuf_animation_get_type();

  _result = asRGType(ans);

  return(_result);
}
 

USER_OBJECT_
S_gdk_pixbuf_animation_new_from_file(USER_OBJECT_ s_filename)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  const char* filename = ((const char*)asCString(s_filename));

  GdkPixbufAnimation* ans;
  GError* error = NULL;

  ans = gdk_pixbuf_animation_new_from_file(filename, &error);

  _result = toRPointerWithFinalizer(ans, "GdkPixbufAnimation", (RPointerFinalizer) g_object_unref);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;

  return(_result);
}
 

USER_OBJECT_
S_gdk_pixbuf_animation_get_width(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkPixbufAnimation* object = GDK_PIXBUF_ANIMATION(getPtrValue(s_object));

  int ans;

  ans = gdk_pixbuf_animation_get_width(object);

  _result = asRInteger(ans);

  return(_result);
}
 

USER_OBJECT_
S_gdk_pixbuf_animation_get_height(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkPixbufAnimation* object = GDK_PIXBUF_ANIMATION(getPtrValue(s_object));

  int ans;

  ans = gdk_pixbuf_animation_get_height(object);

  _result = asRInteger(ans);

  return(_result);
}
 

USER_OBJECT_
S_gdk_pixbuf_animation_is_static_image(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkPixbufAnimation* object = GDK_PIXBUF_ANIMATION(getPtrValue(s_object));

  gboolean ans;

  ans = gdk_pixbuf_animation_is_static_image(object);

  _result = asRLogical(ans);

  return(_result);
}
 

USER_OBJECT_
S_gdk_pixbuf_animation_get_static_image(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkPixbufAnimation* object = GDK_PIXBUF_ANIMATION(getPtrValue(s_object));

  GdkPixbuf* ans;

  ans = gdk_pixbuf_animation_get_static_image(object);

  _result = toRPointerWithRef(ans, "GdkPixbuf");

  return(_result);
}
 

USER_OBJECT_
S_gdk_pixbuf_animation_get_iter(USER_OBJECT_ s_object, USER_OBJECT_ s_start_time)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkPixbufAnimation* object = GDK_PIXBUF_ANIMATION(getPtrValue(s_object));
  const GTimeVal* start_time = asCGTimeVal(s_start_time);

  GdkPixbufAnimationIter* ans;

  ans = gdk_pixbuf_animation_get_iter(object, start_time);

  _result = toRPointerWithRef(ans, "GdkPixbufAnimationIter");

  return(_result);
}
 

USER_OBJECT_
S_gdk_pixbuf_animation_iter_get_type(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  GType ans;

  ans = gdk_pixbuf_animation_iter_get_type();

  _result = asRGType(ans);

  return(_result);
}
 

USER_OBJECT_
S_gdk_pixbuf_animation_iter_get_delay_time(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkPixbufAnimationIter* object = GDK_PIXBUF_ANIMATION_ITER(getPtrValue(s_object));

  int ans;

  ans = gdk_pixbuf_animation_iter_get_delay_time(object);

  _result = asRInteger(ans);

  return(_result);
}
 

USER_OBJECT_
S_gdk_pixbuf_animation_iter_get_pixbuf(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkPixbufAnimationIter* object = GDK_PIXBUF_ANIMATION_ITER(getPtrValue(s_object));

  GdkPixbuf* ans;

  ans = gdk_pixbuf_animation_iter_get_pixbuf(object);

  _result = toRPointerWithRef(ans, "GdkPixbuf");

  return(_result);
}
 

USER_OBJECT_
S_gdk_pixbuf_animation_iter_on_currently_loading_frame(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkPixbufAnimationIter* object = GDK_PIXBUF_ANIMATION_ITER(getPtrValue(s_object));

  gboolean ans;

  ans = gdk_pixbuf_animation_iter_on_currently_loading_frame(object);

  _result = asRLogical(ans);

  return(_result);
}
 

USER_OBJECT_
S_gdk_pixbuf_animation_iter_advance(USER_OBJECT_ s_object, USER_OBJECT_ s_current_time)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkPixbufAnimationIter* object = GDK_PIXBUF_ANIMATION_ITER(getPtrValue(s_object));
  const GTimeVal* current_time = asCGTimeVal(s_current_time);

  gboolean ans;

  ans = gdk_pixbuf_animation_iter_advance(object, current_time);

  _result = asRLogical(ans);

  return(_result);
}
 

USER_OBJECT_
S_gdk_pixbuf_simple_anim_new(USER_OBJECT_ s_width, USER_OBJECT_ s_height, USER_OBJECT_ s_rate)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  gint width = ((gint)asCInteger(s_width));
  gint height = ((gint)asCInteger(s_height));
  gfloat rate = ((gfloat)asCNumeric(s_rate));

  GdkPixbufSimpleAnim* ans;

  ans = gdk_pixbuf_simple_anim_new(width, height, rate);

  _result = toRPointerWithFinalizer(ans, "GdkPixbufSimpleAnim", (RPointerFinalizer) g_object_unref);

  return(_result);
}
 

USER_OBJECT_
S_gdk_pixbuf_simple_anim_add_frame(USER_OBJECT_ s_object, USER_OBJECT_ s_pixbuf)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkPixbufSimpleAnim* object = GDK_PIXBUF_SIMPLE_ANIM(getPtrValue(s_object));
  GdkPixbuf* pixbuf = GDK_PIXBUF(getPtrValue(s_pixbuf));


  gdk_pixbuf_simple_anim_add_frame(object, pixbuf);


  return(_result);
}
 

USER_OBJECT_
S_gdk_pixbuf_get_option(USER_OBJECT_ s_object, USER_OBJECT_ s_key)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkPixbuf* object = GDK_PIXBUF(getPtrValue(s_object));
  const char* key = ((const char*)asCString(s_key));

  const char* ans;

  ans = gdk_pixbuf_get_option(object, key);

  _result = asRString(ans);

  return(_result);
}
 

USER_OBJECT_
S_gdk_pixbuf_set_option(USER_OBJECT_ s_object, USER_OBJECT_ s_key, USER_OBJECT_ s_value)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkPixbuf* object = GDK_PIXBUF(getPtrValue(s_object));
  const char* key = ((const char*)asCString(s_key));
  const char* value = ((const char*)asCString(s_value));

  gboolean ans;

  ans = gdk_pixbuf_set_option(object, key, value);

  _result = asRLogical(ans);

  return(_result);
}
 

USER_OBJECT_
S_gdk_pixbuf_get_formats(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  GSList* ans;

  ans = gdk_pixbuf_get_formats();

  _result = asRGSList(ans, "GdkPixbufFormat");
    CLEANUP(g_slist_free, ans);;

  return(_result);
}
 

USER_OBJECT_
S_gdk_pixbuf_get_file_info(USER_OBJECT_ s_filename)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  const gchar* filename = ((const gchar*)asCString(s_filename));

  GdkPixbufFormat* ans;
  gint width;
  gint height;

  ans = gdk_pixbuf_get_file_info(filename, &width, &height);

  _result = toRPointer(ans, "GdkPixbufFormat");

  _result = retByVal(PROTECT(_result), "width", PROTECT(asRInteger(width)), "height", PROTECT(asRInteger(height)), NULL);
  UNPROTECT(3);
  ;
  ;

  return(_result);
}
 

USER_OBJECT_
S_gdk_pixbuf_format_get_name(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkPixbufFormat* object = ((GdkPixbufFormat*)getPtrValue(s_object));

  gchar* ans;

  ans = gdk_pixbuf_format_get_name(object);

  _result = asRString(ans);
    CLEANUP(g_free, ans);;

  return(_result);
}
 

USER_OBJECT_
S_gdk_pixbuf_format_is_scalable(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkPixbufFormat* object = ((GdkPixbufFormat*)getPtrValue(s_object));

  gboolean ans;

  ans = gdk_pixbuf_format_is_scalable(object);

  _result = asRLogical(ans);

  return(_result);
}
 

USER_OBJECT_
S_gdk_pixbuf_format_is_disabled(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkPixbufFormat* object = ((GdkPixbufFormat*)getPtrValue(s_object));

  gboolean ans;

  ans = gdk_pixbuf_format_is_disabled(object);

  _result = asRLogical(ans);

  return(_result);
}
 

USER_OBJECT_
S_gdk_pixbuf_format_set_disabled(USER_OBJECT_ s_object, USER_OBJECT_ s_disabled)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkPixbufFormat* object = ((GdkPixbufFormat*)getPtrValue(s_object));
  gboolean disabled = ((gboolean)asCLogical(s_disabled));


  gdk_pixbuf_format_set_disabled(object, disabled);


  return(_result);
}
 

USER_OBJECT_
S_gdk_pixbuf_format_get_license(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkPixbufFormat* object = ((GdkPixbufFormat*)getPtrValue(s_object));

  gchar* ans;

  ans = gdk_pixbuf_format_get_license(object);

  _result = asRString(ans);
    CLEANUP(g_free, ans);;

  return(_result);
}
 

USER_OBJECT_
S_gdk_pixbuf_format_get_description(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkPixbufFormat* object = ((GdkPixbufFormat*)getPtrValue(s_object));

  gchar* ans;

  ans = gdk_pixbuf_format_get_description(object);

  _result = asRString(ans);
    CLEANUP(g_free, ans);;

  return(_result);
}
 

USER_OBJECT_
S_gdk_pixbuf_format_get_mime_types(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkPixbufFormat* object = ((GdkPixbufFormat*)getPtrValue(s_object));

  gchar** ans;

  ans = gdk_pixbuf_format_get_mime_types(object);

  _result = asRStringArray(ans);
    CLEANUP(g_strfreev, ans);;

  return(_result);
}
 

USER_OBJECT_
S_gdk_pixbuf_format_get_extensions(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkPixbufFormat* object = ((GdkPixbufFormat*)getPtrValue(s_object));

  gchar** ans;

  ans = gdk_pixbuf_format_get_extensions(object);

  _result = asRStringArray(ans);
    CLEANUP(g_strfreev, ans);;

  return(_result);
}
 

USER_OBJECT_
S_gdk_pixbuf_format_is_writable(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkPixbufFormat* object = ((GdkPixbufFormat*)getPtrValue(s_object));

  gboolean ans;

  ans = gdk_pixbuf_format_is_writable(object);

  _result = asRLogical(ans);

  return(_result);
}
 

USER_OBJECT_
S_gdk_pixbuf_loader_get_type(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  GType ans;

  ans = gdk_pixbuf_loader_get_type();

  _result = asRGType(ans);

  return(_result);
}
 

USER_OBJECT_
S_gdk_pixbuf_loader_new(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  GdkPixbufLoader* ans;

  ans = gdk_pixbuf_loader_new();

  _result = toRPointerWithFinalizer(ans, "GdkPixbufLoader", (RPointerFinalizer) g_object_unref);

  return(_result);
}
 

USER_OBJECT_
S_gdk_pixbuf_loader_new_with_type(USER_OBJECT_ s_image_type)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  const char* image_type = ((const char*)asCString(s_image_type));

  GdkPixbufLoader* ans;
  GError* error = NULL;

  ans = gdk_pixbuf_loader_new_with_type(image_type, &error);

  _result = toRPointerWithFinalizer(ans, "GdkPixbufLoader", (RPointerFinalizer) g_object_unref);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;

  return(_result);
}
 

USER_OBJECT_
S_gdk_pixbuf_loader_new_with_mime_type(USER_OBJECT_ s_mime_type)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  const char* mime_type = ((const char*)asCString(s_mime_type));

  GdkPixbufLoader* ans;
  GError* error = NULL;

  ans = gdk_pixbuf_loader_new_with_mime_type(mime_type, &error);

  _result = toRPointerWithFinalizer(ans, "GdkPixbufLoader", (RPointerFinalizer) g_object_unref);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;

  return(_result);
}
 

USER_OBJECT_
S_gdk_pixbuf_loader_write(USER_OBJECT_ s_object, USER_OBJECT_ s_buf)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkPixbufLoader* object = GDK_PIXBUF_LOADER(getPtrValue(s_object));
  const guchar* buf = ((const guchar*)asCArray(s_buf, guchar, asCRaw));
  gsize count = ((gsize)GET_LENGTH(s_buf));

  gboolean ans;
  GError* error = NULL;

  ans = gdk_pixbuf_loader_write(object, buf, count, &error);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;

  return(_result);
}
 

USER_OBJECT_
S_gdk_pixbuf_loader_get_pixbuf(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkPixbufLoader* object = GDK_PIXBUF_LOADER(getPtrValue(s_object));

  GdkPixbuf* ans;

  ans = gdk_pixbuf_loader_get_pixbuf(object);

  _result = toRPointerWithRef(ans, "GdkPixbuf");

  return(_result);
}
 

USER_OBJECT_
S_gdk_pixbuf_loader_get_animation(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkPixbufLoader* object = GDK_PIXBUF_LOADER(getPtrValue(s_object));

  GdkPixbufAnimation* ans;

  ans = gdk_pixbuf_loader_get_animation(object);

  _result = toRPointerWithRef(ans, "GdkPixbufAnimation");

  return(_result);
}
 

USER_OBJECT_
S_gdk_pixbuf_loader_close(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkPixbufLoader* object = GDK_PIXBUF_LOADER(getPtrValue(s_object));

  gboolean ans;
  GError* error = NULL;

  ans = gdk_pixbuf_loader_close(object, &error);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;

  return(_result);
}
 

USER_OBJECT_
S_gdk_pixbuf_loader_set_size(USER_OBJECT_ s_object, USER_OBJECT_ s_width, USER_OBJECT_ s_height)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkPixbufLoader* object = GDK_PIXBUF_LOADER(getPtrValue(s_object));
  int width = ((int)asCInteger(s_width));
  int height = ((int)asCInteger(s_height));


  gdk_pixbuf_loader_set_size(object, width, height);


  return(_result);
}
 

USER_OBJECT_
S_gdk_pixbuf_loader_get_format(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkPixbufLoader* object = GDK_PIXBUF_LOADER(getPtrValue(s_object));

  GdkPixbufFormat* ans;

  ans = gdk_pixbuf_loader_get_format(object);

  _result = toRPointer(ans, "GdkPixbufFormat");

  return(_result);
}
 

USER_OBJECT_
S_gdk_rectangle_intersect(USER_OBJECT_ s_src1, USER_OBJECT_ s_src2)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkRectangle* src1 = asCGdkRectangle(s_src1);
  GdkRectangle* src2 = asCGdkRectangle(s_src2);

  gboolean ans;
  GdkRectangle* dest = ((GdkRectangle *)g_new0(GdkRectangle, 1));

  ans = gdk_rectangle_intersect(src1, src2, dest);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "dest", PROTECT(asRGdkRectangle(dest)), NULL);
  UNPROTECT(2);
    CLEANUP(g_free, dest);;

  return(_result);
}
 

USER_OBJECT_
S_gdk_rectangle_union(USER_OBJECT_ s_src1, USER_OBJECT_ s_src2)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkRectangle* src1 = asCGdkRectangle(s_src1);
  GdkRectangle* src2 = asCGdkRectangle(s_src2);

  GdkRectangle* dest = ((GdkRectangle *)g_new0(GdkRectangle, 1));

  gdk_rectangle_union(src1, src2, dest);


  _result = retByVal(PROTECT(_result), "dest", PROTECT(asRGdkRectangle(dest)), NULL);
  UNPROTECT(2);
    CLEANUP(g_free, dest);;

  return(_result);
}
 

USER_OBJECT_
S_gdk_region_new(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  GdkRegion* ans;

  ans = gdk_region_new();

  _result = toRPointerWithFinalizer(ans, "GdkRegion", (RPointerFinalizer) gdk_region_destroy);

  return(_result);
}
 

USER_OBJECT_
S_gdk_region_polygon(USER_OBJECT_ s_points, USER_OBJECT_ s_fill_rule)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkPoint* points = ((GdkPoint*)asCArrayRef(s_points, GdkPoint, asCGdkPoint));
  gint npoints = ((gint)GET_LENGTH(s_points));
  GdkFillRule fill_rule = ((GdkFillRule)asCEnum(s_fill_rule, GDK_TYPE_FILL_RULE));

  GdkRegion* ans;

  ans = gdk_region_polygon(points, npoints, fill_rule);

  _result = toRPointerWithFinalizer(ans, "GdkRegion", (RPointerFinalizer) gdk_region_destroy);

  return(_result);
}
 

USER_OBJECT_
S_gdk_region_copy(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkRegion* object = ((GdkRegion*)getPtrValue(s_object));

  GdkRegion* ans;

  ans = gdk_region_copy(object);

  _result = toRPointerWithFinalizer(ans, "GdkRegion", (RPointerFinalizer) gdk_region_destroy);

  return(_result);
}
 

USER_OBJECT_
S_gdk_region_rectangle(USER_OBJECT_ s_rectangle)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkRectangle* rectangle = asCGdkRectangle(s_rectangle);

  GdkRegion* ans;

  ans = gdk_region_rectangle(rectangle);

  _result = toRPointerWithFinalizer(ans, "GdkRegion", (RPointerFinalizer) gdk_region_destroy);

  return(_result);
}
 

USER_OBJECT_
S_gdk_region_get_clipbox(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkRegion* object = ((GdkRegion*)getPtrValue(s_object));

  GdkRectangle* rectangle = ((GdkRectangle *)g_new0(GdkRectangle, 1));

  gdk_region_get_clipbox(object, rectangle);


  _result = retByVal(PROTECT(_result), "rectangle", PROTECT(asRGdkRectangle(rectangle)), NULL);
  UNPROTECT(2);
    CLEANUP(g_free, rectangle);;

  return(_result);
}
 

USER_OBJECT_
S_gdk_region_get_rectangles(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkRegion* object = ((GdkRegion*)getPtrValue(s_object));

  GdkRectangle* rectangles = NULL;
  gint n_rectangles;

  gdk_region_get_rectangles(object, &rectangles, &n_rectangles);


  _result = retByVal(PROTECT(_result), "rectangles", PROTECT(asRArrayRefWithSize(rectangles, asRGdkRectangle, n_rectangles)), "n.rectangles", PROTECT(asRInteger(n_rectangles)), NULL);
  UNPROTECT(3);
    CLEANUP(g_free, rectangles);;
  ;

  return(_result);
}
 

USER_OBJECT_
S_gdk_region_empty(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkRegion* object = ((GdkRegion*)getPtrValue(s_object));

  gboolean ans;

  ans = gdk_region_empty(object);

  _result = asRLogical(ans);

  return(_result);
}
 

USER_OBJECT_
S_gdk_region_equal(USER_OBJECT_ s_object, USER_OBJECT_ s_region2)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkRegion* object = ((GdkRegion*)getPtrValue(s_object));
  GdkRegion* region2 = ((GdkRegion*)getPtrValue(s_region2));

  gboolean ans;

  ans = gdk_region_equal(object, region2);

  _result = asRLogical(ans);

  return(_result);
}
 

USER_OBJECT_
S_gdk_region_point_in(USER_OBJECT_ s_object, USER_OBJECT_ s_x, USER_OBJECT_ s_y)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkRegion* object = ((GdkRegion*)getPtrValue(s_object));
  int x = ((int)asCInteger(s_x));
  int y = ((int)asCInteger(s_y));

  gboolean ans;

  ans = gdk_region_point_in(object, x, y);

  _result = asRLogical(ans);

  return(_result);
}
 

USER_OBJECT_
S_gdk_region_rect_in(USER_OBJECT_ s_object, USER_OBJECT_ s_rect)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkRegion* object = ((GdkRegion*)getPtrValue(s_object));
  GdkRectangle* rect = asCGdkRectangle(s_rect);

  GdkOverlapType ans;

  ans = gdk_region_rect_in(object, rect);

  _result = asREnum(ans, GDK_TYPE_OVERLAP_TYPE);

  return(_result);
}
 

USER_OBJECT_
S_gdk_region_offset(USER_OBJECT_ s_object, USER_OBJECT_ s_dx, USER_OBJECT_ s_dy)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkRegion* object = ((GdkRegion*)getPtrValue(s_object));
  gint dx = ((gint)asCInteger(s_dx));
  gint dy = ((gint)asCInteger(s_dy));


  gdk_region_offset(object, dx, dy);


  return(_result);
}
 

USER_OBJECT_
S_gdk_region_shrink(USER_OBJECT_ s_object, USER_OBJECT_ s_dx, USER_OBJECT_ s_dy)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkRegion* object = ((GdkRegion*)getPtrValue(s_object));
  gint dx = ((gint)asCInteger(s_dx));
  gint dy = ((gint)asCInteger(s_dy));


  gdk_region_shrink(object, dx, dy);


  return(_result);
}
 

USER_OBJECT_
S_gdk_region_union_with_rect(USER_OBJECT_ s_object, USER_OBJECT_ s_rect)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkRegion* object = ((GdkRegion*)getPtrValue(s_object));
  GdkRectangle* rect = asCGdkRectangle(s_rect);


  gdk_region_union_with_rect(object, rect);


  return(_result);
}
 

USER_OBJECT_
S_gdk_region_intersect(USER_OBJECT_ s_object, USER_OBJECT_ s_source2)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkRegion* object = ((GdkRegion*)getPtrValue(s_object));
  GdkRegion* source2 = ((GdkRegion*)getPtrValue(s_source2));


  gdk_region_intersect(object, source2);


  return(_result);
}
 

USER_OBJECT_
S_gdk_region_union(USER_OBJECT_ s_object, USER_OBJECT_ s_source2)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkRegion* object = ((GdkRegion*)getPtrValue(s_object));
  GdkRegion* source2 = ((GdkRegion*)getPtrValue(s_source2));


  gdk_region_union(object, source2);


  return(_result);
}
 

USER_OBJECT_
S_gdk_region_subtract(USER_OBJECT_ s_object, USER_OBJECT_ s_source2)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkRegion* object = ((GdkRegion*)getPtrValue(s_object));
  GdkRegion* source2 = ((GdkRegion*)getPtrValue(s_source2));


  gdk_region_subtract(object, source2);


  return(_result);
}
 

USER_OBJECT_
S_gdk_region_xor(USER_OBJECT_ s_object, USER_OBJECT_ s_source2)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkRegion* object = ((GdkRegion*)getPtrValue(s_object));
  GdkRegion* source2 = ((GdkRegion*)getPtrValue(s_source2));


  gdk_region_xor(object, source2);


  return(_result);
}
 

USER_OBJECT_
S_gdk_region_spans_intersect_foreach(USER_OBJECT_ s_object, USER_OBJECT_ s_spans, USER_OBJECT_ s_sorted, USER_OBJECT_ s_function, USER_OBJECT_ s_data)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  GdkSpanFunc function = ((GdkSpanFunc)S_GdkSpanFunc);
  R_CallbackData* data = R_createCBData(s_function, s_data);
  GdkRegion* object = ((GdkRegion*)getPtrValue(s_object));
  GdkSpan* spans = ((GdkSpan*)asCArrayRef(s_spans, GdkSpan, asCGdkSpan));
  int n_spans = ((int)GET_LENGTH(s_spans));
  gboolean sorted = ((gboolean)asCLogical(s_sorted));


  gdk_region_spans_intersect_foreach(object, spans, n_spans, sorted, function, data);

  R_freeCBData(data);

  return(_result);
}
 

USER_OBJECT_
S_gdk_cairo_set_source_pixmap(USER_OBJECT_ s_cr, USER_OBJECT_ s_pixmap, USER_OBJECT_ s_pixmap_x, USER_OBJECT_ s_pixmap_y)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GDK_CHECK_VERSION(2, 10, 0)
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));
  GdkPixmap* pixmap = GDK_PIXMAP(getPtrValue(s_pixmap));
  double pixmap_x = ((double)asCNumeric(s_pixmap_x));
  double pixmap_y = ((double)asCNumeric(s_pixmap_y));


  gdk_cairo_set_source_pixmap(cr, pixmap, pixmap_x, pixmap_y);

#else
  error("gdk_cairo_set_source_pixmap exists only in Gdk >= 2.10.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_gdk_display_supports_shapes(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GDK_CHECK_VERSION(2, 10, 0)
  GdkDisplay* object = GDK_DISPLAY_OBJECT(getPtrValue(s_object));

  gboolean ans;

  ans = gdk_display_supports_shapes(object);

  _result = asRLogical(ans);
#else
  error("gdk_display_supports_shapes exists only in Gdk >= 2.10.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_gdk_display_supports_input_shapes(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GDK_CHECK_VERSION(2, 10, 0)
  GdkDisplay* object = GDK_DISPLAY_OBJECT(getPtrValue(s_object));

  gboolean ans;

  ans = gdk_display_supports_input_shapes(object);

  _result = asRLogical(ans);
#else
  error("gdk_display_supports_input_shapes exists only in Gdk >= 2.10.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_gdk_pixmap_foreign_new_for_screen(USER_OBJECT_ s_screen, USER_OBJECT_ s_anid, USER_OBJECT_ s_width, USER_OBJECT_ s_height, USER_OBJECT_ s_depth)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GDK_CHECK_VERSION(2, 10, 0)
  GdkScreen* screen = GDK_SCREEN(getPtrValue(s_screen));
  GdkNativeWindow anid = asCGdkNativeWindow(s_anid);
  gint width = ((gint)asCInteger(s_width));
  gint height = ((gint)asCInteger(s_height));
  gint depth = ((gint)asCInteger(s_depth));

  GdkPixmap* ans;

  ans = gdk_pixmap_foreign_new_for_screen(screen, anid, width, height, depth);

  _result = toRPointerWithRef(ans, "GdkPixmap");
#else
  error("gdk_pixmap_foreign_new_for_screen exists only in Gdk >= 2.10.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_gdk_atom_intern_static_string(USER_OBJECT_ s_atom_name)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GDK_CHECK_VERSION(2, 10, 0)
  const gchar* atom_name = ((const gchar*)asCString(s_atom_name));

  GdkAtom ans;

  ans = gdk_atom_intern_static_string(atom_name);

  _result = asRGdkAtom(ans);
#else
  error("gdk_atom_intern_static_string exists only in Gdk >= 2.10.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_gdk_screen_is_composited(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GDK_CHECK_VERSION(2, 10, 0)
  GdkScreen* object = GDK_SCREEN(getPtrValue(s_object));

  gboolean ans;

  ans = gdk_screen_is_composited(object);

  _result = asRLogical(ans);
#else
  error("gdk_screen_is_composited exists only in Gdk >= 2.10.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_gdk_screen_set_font_options(USER_OBJECT_ s_object, USER_OBJECT_ s_options)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GDK_CHECK_VERSION(2, 10, 0)
  GdkScreen* object = GDK_SCREEN(getPtrValue(s_object));
  const cairo_font_options_t* options = ((const cairo_font_options_t*)getPtrValue(s_options));


  gdk_screen_set_font_options(object, options);

#else
  error("gdk_screen_set_font_options exists only in Gdk >= 2.10.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_gdk_screen_get_font_options(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GDK_CHECK_VERSION(2, 10, 0)
  GdkScreen* object = GDK_SCREEN(getPtrValue(s_object));

  const cairo_font_options_t* ans;

  ans = gdk_screen_get_font_options(object);

  _result = toRPointer(ans, "CairoFontOptions");
#else
  error("gdk_screen_get_font_options exists only in Gdk >= 2.10.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_gdk_screen_set_resolution(USER_OBJECT_ s_object, USER_OBJECT_ s_dpi)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GDK_CHECK_VERSION(2, 10, 0)
  GdkScreen* object = GDK_SCREEN(getPtrValue(s_object));
  gdouble dpi = ((gdouble)asCNumeric(s_dpi));


  gdk_screen_set_resolution(object, dpi);

#else
  error("gdk_screen_set_resolution exists only in Gdk >= 2.10.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_gdk_screen_get_resolution(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GDK_CHECK_VERSION(2, 10, 0)
  GdkScreen* object = GDK_SCREEN(getPtrValue(s_object));

  gdouble ans;

  ans = gdk_screen_get_resolution(object);

  _result = asRNumeric(ans);
#else
  error("gdk_screen_get_resolution exists only in Gdk >= 2.10.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_gdk_screen_get_active_window(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GDK_CHECK_VERSION(2, 10, 0)
  GdkScreen* object = GDK_SCREEN(getPtrValue(s_object));

  GdkWindow* ans;

  ans = gdk_screen_get_active_window(object);

  _result = toRPointerWithRef(ans, "GdkWindow");
#else
  error("gdk_screen_get_active_window exists only in Gdk >= 2.10.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_gdk_screen_get_window_stack(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GDK_CHECK_VERSION(2, 10, 0)
  GdkScreen* object = GDK_SCREEN(getPtrValue(s_object));

  GList* ans;

  ans = gdk_screen_get_window_stack(object);

  _result = asRGListWithRef(ans, "GdkWindow");
#else
  error("gdk_screen_get_window_stack exists only in Gdk >= 2.10.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_gdk_window_input_shape_combine_mask(USER_OBJECT_ s_object, USER_OBJECT_ s_mask, USER_OBJECT_ s_x, USER_OBJECT_ s_y)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GDK_CHECK_VERSION(2, 10, 0)
  GdkWindow* object = GDK_WINDOW(getPtrValue(s_object));
  GdkBitmap* mask = GDK_DRAWABLE(getPtrValue(s_mask));
  gint x = ((gint)asCInteger(s_x));
  gint y = ((gint)asCInteger(s_y));


  gdk_window_input_shape_combine_mask(object, mask, x, y);

#else
  error("gdk_window_input_shape_combine_mask exists only in Gdk >= 2.10.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_gdk_window_input_shape_combine_region(USER_OBJECT_ s_object, USER_OBJECT_ s_shape_region, USER_OBJECT_ s_offset_x, USER_OBJECT_ s_offset_y)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GDK_CHECK_VERSION(2, 10, 0)
  GdkWindow* object = GDK_WINDOW(getPtrValue(s_object));
  GdkRegion* shape_region = ((GdkRegion*)getPtrValue(s_shape_region));
  gint offset_x = ((gint)asCInteger(s_offset_x));
  gint offset_y = ((gint)asCInteger(s_offset_y));


  gdk_window_input_shape_combine_region(object, shape_region, offset_x, offset_y);

#else
  error("gdk_window_input_shape_combine_region exists only in Gdk >= 2.10.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_gdk_window_set_child_input_shapes(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GDK_CHECK_VERSION(2, 10, 0)
  GdkWindow* object = GDK_WINDOW(getPtrValue(s_object));


  gdk_window_set_child_input_shapes(object);

#else
  error("gdk_window_set_child_input_shapes exists only in Gdk >= 2.10.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_gdk_window_merge_child_input_shapes(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GDK_CHECK_VERSION(2, 10, 0)
  GdkWindow* object = GDK_WINDOW(getPtrValue(s_object));


  gdk_window_merge_child_input_shapes(object);

#else
  error("gdk_window_merge_child_input_shapes exists only in Gdk >= 2.10.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_gdk_window_get_type_hint(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GDK_CHECK_VERSION(2, 10, 0)
  GdkWindow* object = GDK_WINDOW(getPtrValue(s_object));

  GdkWindowTypeHint ans;

  ans = gdk_window_get_type_hint(object);

  _result = asREnum(ans, GDK_TYPE_WINDOW_TYPE_HINT);
#else
  error("gdk_window_get_type_hint exists only in Gdk >= 2.10.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_gdk_color_to_string(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GDK_CHECK_VERSION(2, 12, 0)
  GdkColor* object = asCGdkColor(s_object);

  gchar* ans;

  ans = gdk_color_to_string(object);

  _result = asRString(ans);
    CLEANUP(g_free, ans);;
#else
  error("gdk_color_to_string exists only in Gdk >= 2.12.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_gdk_display_supports_composite(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GDK_CHECK_VERSION(2, 12, 0)
  GdkDisplay* object = GDK_DISPLAY_OBJECT(getPtrValue(s_object));

  gboolean ans;

  ans = gdk_display_supports_composite(object);

  _result = asRLogical(ans);
#else
  error("gdk_display_supports_composite exists only in Gdk >= 2.12.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_gdk_event_request_motions(USER_OBJECT_ s_event)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GDK_CHECK_VERSION(2, 12, 0)
  GdkEventMotion* event = ((GdkEventMotion*)getPtrValue(s_event));


  gdk_event_request_motions(event);

#else
  error("gdk_event_request_motions exists only in Gdk >= 2.12.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_gdk_keymap_have_bidi_layouts(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GDK_CHECK_VERSION(2, 12, 0)
  GdkKeymap* object = GDK_KEYMAP(getPtrValue(s_object));

  gboolean ans;

  ans = gdk_keymap_have_bidi_layouts(object);

  _result = asRLogical(ans);
#else
  error("gdk_keymap_have_bidi_layouts exists only in Gdk >= 2.12.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_gdk_pango_attr_emboss_color_new(USER_OBJECT_ s_color)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GDK_CHECK_VERSION(2, 12, 0)
  const GdkColor* color = asCGdkColor(s_color);

  PangoAttribute* ans;

  ans = gdk_pango_attr_emboss_color_new(color);

  _result = asRPangoAttribute(ans);
#else
  error("gdk_pango_attr_emboss_color_new exists only in Gdk >= 2.12.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_gdk_window_set_composited(USER_OBJECT_ s_object, USER_OBJECT_ s_composited)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GDK_CHECK_VERSION(2, 12, 0)
  GdkWindow* object = GDK_WINDOW(getPtrValue(s_object));
  gboolean composited = ((gboolean)asCLogical(s_composited));


  gdk_window_set_composited(object, composited);

#else
  error("gdk_window_set_composited exists only in Gdk >= 2.12.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_gdk_window_set_startup_id(USER_OBJECT_ s_object, USER_OBJECT_ s_startup_id)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GDK_CHECK_VERSION(2, 12, 0)
  GdkWindow* object = GDK_WINDOW(getPtrValue(s_object));
  const gchar* startup_id = ((const gchar*)asCString(s_startup_id));


  gdk_window_set_startup_id(object, startup_id);

#else
  error("gdk_window_set_startup_id exists only in Gdk >= 2.12.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_gdk_window_beep(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GDK_CHECK_VERSION(2, 12, 0)
  GdkWindow* object = GDK_WINDOW(getPtrValue(s_object));


  gdk_window_beep(object);

#else
  error("gdk_window_beep exists only in Gdk >= 2.12.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_gdk_window_set_opacity(USER_OBJECT_ s_object, USER_OBJECT_ s_opacity)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GDK_CHECK_VERSION(2, 12, 0)
  GdkWindow* object = GDK_WINDOW(getPtrValue(s_object));
  gdouble opacity = ((gdouble)asCNumeric(s_opacity));


  gdk_window_set_opacity(object, opacity);

#else
  error("gdk_window_set_opacity exists only in Gdk >= 2.12.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_gdk_notify_startup_complete_with_id(USER_OBJECT_ s_id)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GDK_CHECK_VERSION(2, 12, 0)
  const gchar* id = ((const gchar*)asCString(s_id));


  gdk_notify_startup_complete_with_id(id);

#else
  error("gdk_notify_startup_complete_with_id exists only in Gdk >= 2.12.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_gdk_pixbuf_apply_embedded_orientation(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GDK_CHECK_VERSION(2, 12, 0)
  GdkPixbuf* object = GDK_PIXBUF(getPtrValue(s_object));

  GdkPixbuf* ans;

  ans = gdk_pixbuf_apply_embedded_orientation(object);

  _result = toRPointerWithFinalizer(ans, "GdkPixbuf", (RPointerFinalizer) g_object_unref);
#else
  error("gdk_pixbuf_apply_embedded_orientation exists only in Gdk >= 2.12.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_gdk_app_launch_context_get_type(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GDK_CHECK_VERSION(2, 14, 0)

  GType ans;

  ans = gdk_app_launch_context_get_type();

  _result = asRGType(ans);
#else
  error("gdk_app_launch_context_get_type exists only in Gdk >= 2.14.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_gdk_app_launch_context_new(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GDK_CHECK_VERSION(2, 14, 0)

  GdkAppLaunchContext* ans;

  ans = gdk_app_launch_context_new();

  _result = toRPointerWithFinalizer(ans, "GdkAppLaunchContext", (RPointerFinalizer) g_object_unref);
#else
  error("gdk_app_launch_context_new exists only in Gdk >= 2.14.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_gdk_app_launch_context_set_display(USER_OBJECT_ s_object, USER_OBJECT_ s_display)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GDK_CHECK_VERSION(2, 14, 0)
  GdkAppLaunchContext* object = GDK_APP_LAUNCH_CONTEXT(getPtrValue(s_object));
  GdkDisplay* display = GDK_DISPLAY_OBJECT(getPtrValue(s_display));


  gdk_app_launch_context_set_display(object, display);

#else
  error("gdk_app_launch_context_set_display exists only in Gdk >= 2.14.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_gdk_app_launch_context_set_screen(USER_OBJECT_ s_object, USER_OBJECT_ s_screen)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GDK_CHECK_VERSION(2, 14, 0)
  GdkAppLaunchContext* object = GDK_APP_LAUNCH_CONTEXT(getPtrValue(s_object));
  GdkScreen* screen = GDK_SCREEN(getPtrValue(s_screen));


  gdk_app_launch_context_set_screen(object, screen);

#else
  error("gdk_app_launch_context_set_screen exists only in Gdk >= 2.14.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_gdk_app_launch_context_set_desktop(USER_OBJECT_ s_object, USER_OBJECT_ s_desktop)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GDK_CHECK_VERSION(2, 14, 0)
  GdkAppLaunchContext* object = GDK_APP_LAUNCH_CONTEXT(getPtrValue(s_object));
  gint desktop = ((gint)asCInteger(s_desktop));


  gdk_app_launch_context_set_desktop(object, desktop);

#else
  error("gdk_app_launch_context_set_desktop exists only in Gdk >= 2.14.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_gdk_app_launch_context_set_timestamp(USER_OBJECT_ s_object, USER_OBJECT_ s_timestamp)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GDK_CHECK_VERSION(2, 14, 0)
  GdkAppLaunchContext* object = GDK_APP_LAUNCH_CONTEXT(getPtrValue(s_object));
  guint32 timestamp = ((guint32)asCNumeric(s_timestamp));


  gdk_app_launch_context_set_timestamp(object, timestamp);

#else
  error("gdk_app_launch_context_set_timestamp exists only in Gdk >= 2.14.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_gdk_app_launch_context_set_icon(USER_OBJECT_ s_object, USER_OBJECT_ s_icon)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GDK_CHECK_VERSION(2, 14, 0)
  GdkAppLaunchContext* object = GDK_APP_LAUNCH_CONTEXT(getPtrValue(s_object));
  GIcon* icon = GET_LENGTH(s_icon) == 0 ? NULL : G_ICON(getPtrValue(s_icon));


  gdk_app_launch_context_set_icon(object, icon);

#else
  error("gdk_app_launch_context_set_icon exists only in Gdk >= 2.14.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_gdk_app_launch_context_set_icon_name(USER_OBJECT_ s_object, USER_OBJECT_ s_icon_name)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GDK_CHECK_VERSION(2, 14, 0)
  GdkAppLaunchContext* object = GDK_APP_LAUNCH_CONTEXT(getPtrValue(s_object));
  const char* icon_name = GET_LENGTH(s_icon_name) == 0 ? NULL : ((const char*)asCString(s_icon_name));


  gdk_app_launch_context_set_icon_name(object, icon_name);

#else
  error("gdk_app_launch_context_set_icon_name exists only in Gdk >= 2.14.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_gdk_screen_get_monitor_width_mm(USER_OBJECT_ s_object, USER_OBJECT_ s_monitor_num)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GDK_CHECK_VERSION(2, 14, 0)
  GdkScreen* object = GDK_SCREEN(getPtrValue(s_object));
  gint monitor_num = ((gint)asCInteger(s_monitor_num));

  gint ans;

  ans = gdk_screen_get_monitor_width_mm(object, monitor_num);

  _result = asRInteger(ans);
#else
  error("gdk_screen_get_monitor_width_mm exists only in Gdk >= 2.14.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_gdk_screen_get_monitor_height_mm(USER_OBJECT_ s_object, USER_OBJECT_ s_monitor_num)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GDK_CHECK_VERSION(2, 14, 0)
  GdkScreen* object = GDK_SCREEN(getPtrValue(s_object));
  gint monitor_num = ((gint)asCInteger(s_monitor_num));

  gint ans;

  ans = gdk_screen_get_monitor_height_mm(object, monitor_num);

  _result = asRInteger(ans);
#else
  error("gdk_screen_get_monitor_height_mm exists only in Gdk >= 2.14.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_gdk_screen_get_monitor_plug_name(USER_OBJECT_ s_object, USER_OBJECT_ s_monitor_num)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GDK_CHECK_VERSION(2, 14, 0)
  GdkScreen* object = GDK_SCREEN(getPtrValue(s_object));
  gint monitor_num = ((gint)asCInteger(s_monitor_num));

  gchar* ans;

  ans = gdk_screen_get_monitor_plug_name(object, monitor_num);

  _result = asRString(ans);
    CLEANUP(g_free, ans);;
#else
  error("gdk_screen_get_monitor_plug_name exists only in Gdk >= 2.14.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_gdk_window_redirect_to_drawable(USER_OBJECT_ s_object, USER_OBJECT_ s_drawable, USER_OBJECT_ s_src_x, USER_OBJECT_ s_src_y, USER_OBJECT_ s_dest_x, USER_OBJECT_ s_dest_y, USER_OBJECT_ s_width, USER_OBJECT_ s_height)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GDK_CHECK_VERSION(2, 14, 0)
  GdkWindow* object = GDK_WINDOW(getPtrValue(s_object));
  GdkDrawable* drawable = GDK_DRAWABLE(getPtrValue(s_drawable));
  gint src_x = ((gint)asCInteger(s_src_x));
  gint src_y = ((gint)asCInteger(s_src_y));
  gint dest_x = ((gint)asCInteger(s_dest_x));
  gint dest_y = ((gint)asCInteger(s_dest_y));
  gint width = ((gint)asCInteger(s_width));
  gint height = ((gint)asCInteger(s_height));


  gdk_window_redirect_to_drawable(object, drawable, src_x, src_y, dest_x, dest_y, width, height);

#else
  error("gdk_window_redirect_to_drawable exists only in Gdk >= 2.14.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_gdk_window_remove_redirection(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GDK_CHECK_VERSION(2, 14, 0)
  GdkWindow* object = GDK_WINDOW(getPtrValue(s_object));


  gdk_window_remove_redirection(object);

#else
  error("gdk_window_remove_redirection exists only in Gdk >= 2.14.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_gdk_pixbuf_new_from_stream(USER_OBJECT_ s_stream, USER_OBJECT_ s_cancellable)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GDK_CHECK_VERSION(2, 14, 0)
  GInputStream* stream = G_INPUT_STREAM(getPtrValue(s_stream));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));

  GdkPixbuf* ans;
  GError* error = NULL;

  ans = gdk_pixbuf_new_from_stream(stream, cancellable, &error);

  _result = toRPointerWithFinalizer(ans, "GdkPixbuf", (RPointerFinalizer) g_object_unref);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("gdk_pixbuf_new_from_stream exists only in Gdk >= 2.14.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_gdk_pixbuf_new_from_stream_at_scale(USER_OBJECT_ s_stream, USER_OBJECT_ s_width, USER_OBJECT_ s_height, USER_OBJECT_ s_preserve_aspect_ratio, USER_OBJECT_ s_cancellable)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GDK_CHECK_VERSION(2, 14, 0)
  GInputStream* stream = G_INPUT_STREAM(getPtrValue(s_stream));
  gint width = ((gint)asCInteger(s_width));
  gint height = ((gint)asCInteger(s_height));
  gboolean preserve_aspect_ratio = ((gboolean)asCLogical(s_preserve_aspect_ratio));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));

  GdkPixbuf* ans;
  GError* error = NULL;

  ans = gdk_pixbuf_new_from_stream_at_scale(stream, width, height, preserve_aspect_ratio, cancellable, &error);

  _result = toRPointerWithFinalizer(ans, "GdkPixbuf", (RPointerFinalizer) g_object_unref);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("gdk_pixbuf_new_from_stream_at_scale exists only in Gdk >= 2.14.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_gdk_test_render_sync(USER_OBJECT_ s_window)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GDK_CHECK_VERSION(2, 14, 0)
  GdkWindow* window = GDK_WINDOW(getPtrValue(s_window));


  gdk_test_render_sync(window);

#else
  error("gdk_test_render_sync exists only in Gdk >= 2.14.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_gdk_test_simulate_key(USER_OBJECT_ s_window, USER_OBJECT_ s_x, USER_OBJECT_ s_y, USER_OBJECT_ s_keyval, USER_OBJECT_ s_modifiers, USER_OBJECT_ s_key_pressrelease)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GDK_CHECK_VERSION(2, 14, 0)
  GdkWindow* window = GDK_WINDOW(getPtrValue(s_window));
  gint x = ((gint)asCInteger(s_x));
  gint y = ((gint)asCInteger(s_y));
  guint keyval = ((guint)asCNumeric(s_keyval));
  GdkModifierType modifiers = ((GdkModifierType)asCFlag(s_modifiers, GDK_TYPE_MODIFIER_TYPE));
  GdkEventType key_pressrelease = ((GdkEventType)asCEnum(s_key_pressrelease, GDK_TYPE_EVENT_TYPE));

  gboolean ans;

  ans = gdk_test_simulate_key(window, x, y, keyval, modifiers, key_pressrelease);

  _result = asRLogical(ans);
#else
  error("gdk_test_simulate_key exists only in Gdk >= 2.14.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_gdk_test_simulate_button(USER_OBJECT_ s_window, USER_OBJECT_ s_x, USER_OBJECT_ s_y, USER_OBJECT_ s_button, USER_OBJECT_ s_modifiers, USER_OBJECT_ s_button_pressrelease)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GDK_CHECK_VERSION(2, 14, 0)
  GdkWindow* window = GDK_WINDOW(getPtrValue(s_window));
  gint x = ((gint)asCInteger(s_x));
  gint y = ((gint)asCInteger(s_y));
  guint button = ((guint)asCNumeric(s_button));
  GdkModifierType modifiers = ((GdkModifierType)asCFlag(s_modifiers, GDK_TYPE_MODIFIER_TYPE));
  GdkEventType button_pressrelease = ((GdkEventType)asCEnum(s_button_pressrelease, GDK_TYPE_EVENT_TYPE));

  gboolean ans;

  ans = gdk_test_simulate_button(window, x, y, button, modifiers, button_pressrelease);

  _result = asRLogical(ans);
#else
  error("gdk_test_simulate_button exists only in Gdk >= 2.14.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_gdk_pixbuf_save_to_stream(USER_OBJECT_ s_object, USER_OBJECT_ s_stream, USER_OBJECT_ s_type, USER_OBJECT_ s_cancellable)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GDK_CHECK_VERSION(2, 14, 0)
  GdkPixbuf* object = GDK_PIXBUF(getPtrValue(s_object));
  GOutputStream* stream = G_OUTPUT_STREAM(getPtrValue(s_stream));
  const char* type = ((const char*)asCString(s_type));
  GCancellable* cancellable = G_CANCELLABLE(getPtrValue(s_cancellable));

  gboolean ans;
  GError* error = NULL;

  ans = gdk_pixbuf_save_to_stream(object, stream, type, cancellable, &error);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("gdk_pixbuf_save_to_stream exists only in Gdk >= 2.14.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_gdk_keymap_get_caps_lock_state(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GDK_CHECK_VERSION(2, 16, 0)
  GdkKeymap* object = GDK_KEYMAP(getPtrValue(s_object));

  gboolean ans;

  ans = gdk_keymap_get_caps_lock_state(object);

  _result = asRLogical(ans);
#else
  error("gdk_keymap_get_caps_lock_state exists only in Gdk >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_gdk_cairo_reset_clip(USER_OBJECT_ s_cr, USER_OBJECT_ s_drawable)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GDK_CHECK_VERSION(2, 18, 0)
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));
  GdkDrawable* drawable = GDK_DRAWABLE(getPtrValue(s_drawable));


  gdk_cairo_reset_clip(cr, drawable);

#else
  error("gdk_cairo_reset_clip exists only in Gdk >= 2.18.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_gdk_offscreen_window_get_pixmap(USER_OBJECT_ s_window)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GDK_CHECK_VERSION(2, 18, 0)
  GdkWindow* window = GDK_WINDOW(getPtrValue(s_window));

  GdkPixmap* ans;

  ans = gdk_offscreen_window_get_pixmap(window);

  _result = toRPointerWithRef(ans, "GdkPixmap");
#else
  error("gdk_offscreen_window_get_pixmap exists only in Gdk >= 2.18.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_gdk_offscreen_window_set_embedder(USER_OBJECT_ s_window, USER_OBJECT_ s_embedder)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GDK_CHECK_VERSION(2, 18, 0)
  GdkWindow* window = GDK_WINDOW(getPtrValue(s_window));
  GdkWindow* embedder = GDK_WINDOW(getPtrValue(s_embedder));


  gdk_offscreen_window_set_embedder(window, embedder);

#else
  error("gdk_offscreen_window_set_embedder exists only in Gdk >= 2.18.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_gdk_offscreen_window_get_embedder(USER_OBJECT_ s_window)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GDK_CHECK_VERSION(2, 18, 0)
  GdkWindow* window = GDK_WINDOW(getPtrValue(s_window));

  GdkWindow* ans;

  ans = gdk_offscreen_window_get_embedder(window);

  _result = toRPointerWithRef(ans, "GdkWindow");
#else
  error("gdk_offscreen_window_get_embedder exists only in Gdk >= 2.18.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_gdk_region_rect_equal(USER_OBJECT_ s_object, USER_OBJECT_ s_rectangle)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GDK_CHECK_VERSION(2, 18, 0)
  GdkRegion* object = ((GdkRegion*)getPtrValue(s_object));
  const GdkRectangle* rectangle = asCGdkRectangle(s_rectangle);

  gboolean ans;

  ans = gdk_region_rect_equal(object, rectangle);

  _result = asRLogical(ans);
#else
  error("gdk_region_rect_equal exists only in Gdk >= 2.18.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_gdk_window_ensure_native(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GDK_CHECK_VERSION(2, 18, 0)
  GdkWindow* object = GDK_WINDOW(getPtrValue(s_object));

  gboolean ans;

  ans = gdk_window_ensure_native(object);

  _result = asRLogical(ans);
#else
  error("gdk_window_ensure_native exists only in Gdk >= 2.18.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_gdk_window_flush(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GDK_CHECK_VERSION(2, 18, 0)
  GdkWindow* object = GDK_WINDOW(getPtrValue(s_object));


  gdk_window_flush(object);

#else
  error("gdk_window_flush exists only in Gdk >= 2.18.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_gdk_window_geometry_changed(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GDK_CHECK_VERSION(2, 18, 0)
  GdkWindow* object = GDK_WINDOW(getPtrValue(s_object));


  gdk_window_geometry_changed(object);

#else
  error("gdk_window_geometry_changed exists only in Gdk >= 2.18.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_gdk_window_get_cursor(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GDK_CHECK_VERSION(2, 18, 0)
  GdkWindow* object = GDK_WINDOW(getPtrValue(s_object));

  GdkCursor* ans;

  ans = gdk_window_get_cursor(object);

  _result = toRPointerWithFinalizer(ans ? gdk_cursor_ref(ans) : NULL, "GdkCursor", (RPointerFinalizer) gdk_cursor_unref);
#else
  error("gdk_window_get_cursor exists only in Gdk >= 2.18.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_gdk_window_restack(USER_OBJECT_ s_object, USER_OBJECT_ s_sibling, USER_OBJECT_ s_above)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GDK_CHECK_VERSION(2, 18, 0)
  GdkWindow* object = GDK_WINDOW(getPtrValue(s_object));
  GdkWindow* sibling = GDK_WINDOW(getPtrValue(s_sibling));
  gboolean above = ((gboolean)asCLogical(s_above));


  gdk_window_restack(object, sibling, above);

#else
  error("gdk_window_restack exists only in Gdk >= 2.18.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_gdk_window_is_destroyed(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GDK_CHECK_VERSION(2, 18, 0)
  GdkWindow* object = GDK_WINDOW(getPtrValue(s_object));

  gboolean ans;

  ans = gdk_window_is_destroyed(object);

  _result = asRLogical(ans);
#else
  error("gdk_window_is_destroyed exists only in Gdk >= 2.18.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_gdk_window_get_root_coords(USER_OBJECT_ s_object, USER_OBJECT_ s_x, USER_OBJECT_ s_y)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GDK_CHECK_VERSION(2, 18, 0)
  GdkWindow* object = GDK_WINDOW(getPtrValue(s_object));
  gint x = ((gint)asCInteger(s_x));
  gint y = ((gint)asCInteger(s_y));

  gint root_x;
  gint root_y;

  gdk_window_get_root_coords(object, x, y, &root_x, &root_y);


  _result = retByVal(PROTECT(_result), "root.x", PROTECT(asRInteger(root_x)), "root.y", PROTECT(asRInteger(root_y)), NULL);
  UNPROTECT(3);
  ;
  ;
#else
  error("gdk_window_get_root_coords exists only in Gdk >= 2.18.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_gdk_pixbuf_simple_anim_set_loop(USER_OBJECT_ s_object, USER_OBJECT_ s_loop)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GDK_CHECK_VERSION(2, 18, 0)
  GdkPixbufSimpleAnim* object = GDK_PIXBUF_SIMPLE_ANIM(getPtrValue(s_object));
  gboolean loop = ((gboolean)asCLogical(s_loop));


  gdk_pixbuf_simple_anim_set_loop(object, loop);

#else
  error("gdk_pixbuf_simple_anim_set_loop exists only in Gdk >= 2.18.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_gdk_pixbuf_simple_anim_get_loop(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GDK_CHECK_VERSION(2, 18, 0)
  GdkPixbufSimpleAnim* object = GDK_PIXBUF_SIMPLE_ANIM(getPtrValue(s_object));

  gboolean ans;

  ans = gdk_pixbuf_simple_anim_get_loop(object);

  _result = asRLogical(ans);
#else
  error("gdk_pixbuf_simple_anim_get_loop exists only in Gdk >= 2.18.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_gdk_keymap_add_virtual_modifiers(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GDK_CHECK_VERSION(2, 20, 0)
  GdkKeymap* object = GDK_KEYMAP(getPtrValue(s_object));

  GdkModifierType state;

  gdk_keymap_add_virtual_modifiers(object, &state);


  _result = retByVal(PROTECT(_result), "state", PROTECT(asRFlag(state, GDK_TYPE_MODIFIER_TYPE)), NULL);
  UNPROTECT(2);
  ;
#else
  error("gdk_keymap_add_virtual_modifiers exists only in Gdk >= 2.20.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_gdk_keymap_map_virtual_modifiers(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GDK_CHECK_VERSION(2, 20, 0)
  GdkKeymap* object = GDK_KEYMAP(getPtrValue(s_object));

  gboolean ans;
  GdkModifierType state;

  ans = gdk_keymap_map_virtual_modifiers(object, &state);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "state", PROTECT(asRFlag(state, GDK_TYPE_MODIFIER_TYPE)), NULL);
  UNPROTECT(2);
  ;
#else
  error("gdk_keymap_map_virtual_modifiers exists only in Gdk >= 2.20.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_gdk_screen_get_primary_monitor(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GDK_CHECK_VERSION(2, 20, 0)
  GdkScreen* object = GDK_SCREEN(getPtrValue(s_object));

  gint ans;

  ans = gdk_screen_get_primary_monitor(object);

  _result = asRInteger(ans);
#else
  error("gdk_screen_get_primary_monitor exists only in Gdk >= 2.20.0");
#endif

  return(_result);
}
 

