#include "gdkClasses.h"
#include "conversion.h"
#include "utils.h"
#include "RGtk2.h"

static SEXP S_GdkBitmap_symbol;
void
S_gdk_bitmap_class_init(GdkDrawableClass * c, SEXP e)
{
  SEXP s;

  S_GdkBitmap_symbol = install("GdkBitmap");
  s = findVar(S_GdkBitmap_symbol, e);
  G_STRUCT_MEMBER(SEXP, c, sizeof(GdkDrawableClass)) = e;

  S_gdk_drawable_class_init(((GdkDrawableClass *)c), e);

} 

static SEXP S_GdkColormap_symbol;
void
S_gdk_colormap_class_init(GdkColormapClass * c, SEXP e)
{
  SEXP s;

  S_GdkColormap_symbol = install("GdkColormap");
  s = findVar(S_GdkColormap_symbol, e);
  G_STRUCT_MEMBER(SEXP, c, sizeof(GdkColormapClass)) = e;

  S_gobject_class_init(((GObjectClass *)c), e);

} 

static SEXP S_GdkDisplay_symbol;
static 
const gchar*
S_virtual_gdk_display_get_display_name(GdkDisplay* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GdkDisplay_symbol, S_GOBJECT_GET_ENV(s_object)), 0));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "GdkDisplay"));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
  return(((const gchar*)asCString(s_ans)));
}
static 
gint
S_virtual_gdk_display_get_n_screens(GdkDisplay* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GdkDisplay_symbol, S_GOBJECT_GET_ENV(s_object)), 1));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "GdkDisplay"));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
  return(((gint)asCInteger(s_ans)));
}
static 
GdkScreen*
S_virtual_gdk_display_get_screen(GdkDisplay* s_object, gint s_screen_num)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GdkDisplay_symbol, S_GOBJECT_GET_ENV(s_object)), 2));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "GdkDisplay"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_screen_num));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
  return(GDK_SCREEN(getPtrValue(s_ans)));
}
static 
GdkScreen*
S_virtual_gdk_display_get_default_screen(GdkDisplay* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GdkDisplay_symbol, S_GOBJECT_GET_ENV(s_object)), 3));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "GdkDisplay"));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
  return(GDK_SCREEN(getPtrValue(s_ans)));
}
static 
void
S_virtual_gdk_display_closed(GdkDisplay* s_object, gboolean s_is_error)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GdkDisplay_symbol, S_GOBJECT_GET_ENV(s_object)), 4));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "GdkDisplay"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRLogical(s_is_error));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
}
void
S_gdk_display_class_init(GdkDisplayClass * c, SEXP e)
{
  SEXP s;

  S_GdkDisplay_symbol = install("GdkDisplay");
  s = findVar(S_GdkDisplay_symbol, e);
  G_STRUCT_MEMBER(SEXP, c, sizeof(GdkDisplayClass)) = e;

  S_gobject_class_init(((GObjectClass *)c), e);

  if(VECTOR_ELT(s, 0) != NULL_USER_OBJECT)
    c->get_display_name = S_virtual_gdk_display_get_display_name;
  if(VECTOR_ELT(s, 1) != NULL_USER_OBJECT)
    c->get_n_screens = S_virtual_gdk_display_get_n_screens;
  if(VECTOR_ELT(s, 2) != NULL_USER_OBJECT)
    c->get_screen = S_virtual_gdk_display_get_screen;
  if(VECTOR_ELT(s, 3) != NULL_USER_OBJECT)
    c->get_default_screen = S_virtual_gdk_display_get_default_screen;
  if(VECTOR_ELT(s, 4) != NULL_USER_OBJECT)
    c->closed = S_virtual_gdk_display_closed;
} 

static SEXP S_GdkDisplayManager_symbol;
static 
void
S_virtual_gdk_display_manager_display_opened(GdkDisplayManager* s_object, GdkDisplay* s_display)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GdkDisplayManager_symbol, S_GOBJECT_GET_ENV(s_object)), 0));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "GdkDisplayManager"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_display, "GdkDisplay"));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
}
void
S_gdk_display_manager_class_init(GdkDisplayManagerClass * c, SEXP e)
{
  SEXP s;

  S_GdkDisplayManager_symbol = install("GdkDisplayManager");
  s = findVar(S_GdkDisplayManager_symbol, e);
  G_STRUCT_MEMBER(SEXP, c, sizeof(GdkDisplayManagerClass)) = e;

  S_gobject_class_init(((GObjectClass *)c), e);

  if(VECTOR_ELT(s, 0) != NULL_USER_OBJECT)
    c->display_opened = S_virtual_gdk_display_manager_display_opened;
} 

static SEXP S_GdkDragContext_symbol;
void
S_gdk_drag_context_class_init(GdkDragContextClass * c, SEXP e)
{
  SEXP s;

  S_GdkDragContext_symbol = install("GdkDragContext");
  s = findVar(S_GdkDragContext_symbol, e);
  G_STRUCT_MEMBER(SEXP, c, sizeof(GdkDragContextClass)) = e;

  S_gobject_class_init(((GObjectClass *)c), e);

} 

static SEXP S_GdkDrawable_symbol;
static 
GdkGC*
S_virtual_gdk_drawable_create_gc(GdkDrawable* s_object, GdkGCValues* s_values, GdkGCValuesMask s_mask)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 4));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GdkDrawable_symbol, S_GOBJECT_GET_ENV(s_object)), 0));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithFinalizer(s_object, "GdkDrawable", (RPointerFinalizer) g_object_unref));
  tmp = CDR(tmp);
  SETCAR(tmp, asRGdkGCValues(s_values));
  tmp = CDR(tmp);
  SETCAR(tmp, asRFlag(s_mask, GDK_TYPE_GC_VALUES_MASK));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
  return(GDK_GC(getPtrValueWithRef(s_ans)));
}
static 
void
S_virtual_gdk_drawable_draw_rectangle(GdkDrawable* s_object, GdkGC* s_gc, gboolean s_filled, gint s_x, gint s_y, gint s_width, gint s_height)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 8));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GdkDrawable_symbol, S_GOBJECT_GET_ENV(s_object)), 1));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "GdkDrawable"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_gc, "GdkGC"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRLogical(s_filled));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_x));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_y));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_width));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_height));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
}
static 
void
S_virtual_gdk_drawable_draw_arc(GdkDrawable* s_object, GdkGC* s_gc, gboolean s_filled, gint s_x, gint s_y, gint s_width, gint s_height, gint s_angle1, gint s_angle2)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 10));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GdkDrawable_symbol, S_GOBJECT_GET_ENV(s_object)), 2));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "GdkDrawable"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_gc, "GdkGC"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRLogical(s_filled));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_x));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_y));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_width));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_height));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_angle1));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_angle2));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
}
static 
void
S_virtual_gdk_drawable_draw_polygon(GdkDrawable* s_object, GdkGC* s_gc, gboolean s_filled, GdkPoint* s_points, gint s_npoints)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 6));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GdkDrawable_symbol, S_GOBJECT_GET_ENV(s_object)), 3));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "GdkDrawable"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_gc, "GdkGC"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRLogical(s_filled));
  tmp = CDR(tmp);
  SETCAR(tmp, asRGdkPoint(s_points));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_npoints));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
}
static 
void
S_virtual_gdk_drawable_draw_text(GdkDrawable* s_object, GdkFont* s_font, GdkGC* s_gc, gint s_x, gint s_y, const gchar* s_text, gint s_text_length)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 8));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GdkDrawable_symbol, S_GOBJECT_GET_ENV(s_object)), 4));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "GdkDrawable"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRGdkFont(s_font));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_gc, "GdkGC"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_x));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_y));
  tmp = CDR(tmp);
  SETCAR(tmp, asRString(s_text));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_text_length));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
}
static 
void
S_virtual_gdk_drawable_draw_text_wc(GdkDrawable* s_object, GdkFont* s_font, GdkGC* s_gc, gint s_x, gint s_y, const GdkWChar* s_text, gint s_text_length)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 8));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GdkDrawable_symbol, S_GOBJECT_GET_ENV(s_object)), 5));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "GdkDrawable"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRGdkFont(s_font));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_gc, "GdkGC"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_x));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_y));
  tmp = CDR(tmp);
  SETCAR(tmp, asRNumericArrayWithSize(s_text, s_x));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_text_length));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
}
static 
void
S_virtual_gdk_drawable_draw_drawable(GdkDrawable* s_object, GdkGC* s_gc, GdkDrawable* s_src, gint s_xsrc, gint s_ysrc, gint s_xdest, gint s_ydest, gint s_width, gint s_height)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 10));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GdkDrawable_symbol, S_GOBJECT_GET_ENV(s_object)), 6));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "GdkDrawable"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_gc, "GdkGC"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_src, "GdkDrawable"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_xsrc));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_ysrc));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_xdest));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_ydest));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_width));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_height));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
}
static 
void
S_virtual_gdk_drawable_draw_points(GdkDrawable* s_object, GdkGC* s_gc, GdkPoint* s_points, gint s_npoints)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 5));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GdkDrawable_symbol, S_GOBJECT_GET_ENV(s_object)), 7));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "GdkDrawable"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_gc, "GdkGC"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRArrayRefWithSize(s_points, asRGdkPoint, s_npoints));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_npoints));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
}
static 
void
S_virtual_gdk_drawable_draw_segments(GdkDrawable* s_object, GdkGC* s_gc, GdkSegment* s_segs, gint s_nsegs)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 5));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GdkDrawable_symbol, S_GOBJECT_GET_ENV(s_object)), 8));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "GdkDrawable"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_gc, "GdkGC"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRArrayRefWithSize(s_segs, asRGdkSegment, s_nsegs));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_nsegs));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
}
static 
void
S_virtual_gdk_drawable_draw_lines(GdkDrawable* s_object, GdkGC* s_gc, GdkPoint* s_points, gint s_npoints)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 5));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GdkDrawable_symbol, S_GOBJECT_GET_ENV(s_object)), 9));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "GdkDrawable"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_gc, "GdkGC"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRArrayRefWithSize(s_points, asRGdkPoint, s_npoints));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_npoints));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
}
static 
void
S_virtual_gdk_drawable_draw_glyphs(GdkDrawable* s_object, GdkGC* s_gc, PangoFont* s_font, gint s_x, gint s_y, PangoGlyphString* s_glyphs)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 7));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GdkDrawable_symbol, S_GOBJECT_GET_ENV(s_object)), 10));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "GdkDrawable"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_gc, "GdkGC"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_font, "PangoFont"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_x));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_y));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithFinalizer(pango_glyph_string_copy(s_glyphs), "PangoGlyphString", (RPointerFinalizer) pango_glyph_string_free));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
}
static 
void
S_virtual_gdk_drawable_draw_image(GdkDrawable* s_object, GdkGC* s_gc, GdkImage* s_image, gint s_xsrc, gint s_ysrc, gint s_xdest, gint s_ydest, gint s_width, gint s_height)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 10));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GdkDrawable_symbol, S_GOBJECT_GET_ENV(s_object)), 11));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "GdkDrawable"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_gc, "GdkGC"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_image, "GdkImage"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_xsrc));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_ysrc));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_xdest));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_ydest));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_width));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_height));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
}
static 
gint
S_virtual_gdk_drawable_get_depth(GdkDrawable* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GdkDrawable_symbol, S_GOBJECT_GET_ENV(s_object)), 12));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "GdkDrawable"));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
  return(((gint)asCInteger(s_ans)));
}
static 
void
S_virtual_gdk_drawable_get_size(GdkDrawable* s_object, gint* s_width, gint* s_height)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GdkDrawable_symbol, S_GOBJECT_GET_ENV(s_object)), 13));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "GdkDrawable"));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
  *s_width = ((gint)asCInteger(VECTOR_ELT(s_ans, 0)));
  *s_height = ((gint)asCInteger(VECTOR_ELT(s_ans, 1)));
}
static 
void
S_virtual_gdk_drawable_set_colormap(GdkDrawable* s_object, GdkColormap* s_cmap)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GdkDrawable_symbol, S_GOBJECT_GET_ENV(s_object)), 14));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "GdkDrawable"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_cmap, "GdkColormap"));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
}
static 
GdkColormap*
S_virtual_gdk_drawable_get_colormap(GdkDrawable* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GdkDrawable_symbol, S_GOBJECT_GET_ENV(s_object)), 15));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "GdkDrawable"));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
  return(GDK_COLORMAP(getPtrValue(s_ans)));
}
static 
GdkVisual*
S_virtual_gdk_drawable_get_visual(GdkDrawable* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GdkDrawable_symbol, S_GOBJECT_GET_ENV(s_object)), 16));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "GdkDrawable"));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
  return(GDK_VISUAL(getPtrValue(s_ans)));
}
static 
GdkScreen*
S_virtual_gdk_drawable_get_screen(GdkDrawable* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GdkDrawable_symbol, S_GOBJECT_GET_ENV(s_object)), 17));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "GdkDrawable"));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
  return(GDK_SCREEN(getPtrValue(s_ans)));
}
static 
GdkImage*
S_virtual_gdk_drawable_get_image(GdkDrawable* s_object, gint s_x, gint s_y, gint s_width, gint s_height)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 6));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GdkDrawable_symbol, S_GOBJECT_GET_ENV(s_object)), 18));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "GdkDrawable"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_x));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_y));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_width));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_height));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
  return(GDK_IMAGE(getPtrValue(s_ans)));
}
static 
GdkRegion*
S_virtual_gdk_drawable_get_clip_region(GdkDrawable* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GdkDrawable_symbol, S_GOBJECT_GET_ENV(s_object)), 19));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithFinalizer(s_object, "GdkDrawable", (RPointerFinalizer) g_object_unref));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
  return(((GdkRegion*)gdk_region_copy(getPtrValue(s_ans))));
}
static 
GdkRegion*
S_virtual_gdk_drawable_get_visible_region(GdkDrawable* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GdkDrawable_symbol, S_GOBJECT_GET_ENV(s_object)), 20));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithFinalizer(s_object, "GdkDrawable", (RPointerFinalizer) g_object_unref));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
  return(((GdkRegion*)gdk_region_copy(getPtrValue(s_ans))));
}
static 
GdkDrawable*
S_virtual_gdk_drawable_get_composite_drawable(GdkDrawable* s_object, gint s_x, gint s_y, gint s_width, gint s_height, gint* s_composite_x_offset, gint* s_composite_y_offset)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 6));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GdkDrawable_symbol, S_GOBJECT_GET_ENV(s_object)), 21));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithFinalizer(s_object, "GdkDrawable", (RPointerFinalizer) g_object_unref));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_x));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_y));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_width));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_height));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
  *s_composite_x_offset = ((gint)asCInteger(VECTOR_ELT(s_ans, 1)));
  *s_composite_y_offset = ((gint)asCInteger(VECTOR_ELT(s_ans, 2)));
  return(GDK_DRAWABLE(getPtrValueWithRef(VECTOR_ELT(s_ans, 0))));
}
static 
void
S_virtual_gdk_drawable_draw_pixbuf(GdkDrawable* s_object, GdkGC* s_gc, GdkPixbuf* s_pixbuf, gint s_src_x, gint s_src_y, gint s_dest_x, gint s_dest_y, gint s_width, gint s_height, GdkRgbDither s_dither, gint s_x_dither, gint s_y_dither)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 13));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GdkDrawable_symbol, S_GOBJECT_GET_ENV(s_object)), 22));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "GdkDrawable"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_gc, "GdkGC"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_pixbuf, "GdkPixbuf"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_src_x));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_src_y));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_dest_x));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_dest_y));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_width));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_height));
  tmp = CDR(tmp);
  SETCAR(tmp, asREnum(s_dither, GDK_TYPE_RGB_DITHER));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_x_dither));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_y_dither));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
}
static 
void
S_virtual_gdk_drawable_draw_glyphs_transformed(GdkDrawable* s_object, GdkGC* s_gc, PangoMatrix* s_matrix, PangoFont* s_font, gint s_x, gint s_y, PangoGlyphString* s_glyphs)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 8));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GdkDrawable_symbol, S_GOBJECT_GET_ENV(s_object)), 23));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "GdkDrawable"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_gc, "GdkGC"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithFinalizer(pango_matrix_copy(s_matrix), "PangoMatrix", (RPointerFinalizer) pango_matrix_free));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_font, "PangoFont"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_x));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_y));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithFinalizer(pango_glyph_string_copy(s_glyphs), "PangoGlyphString", (RPointerFinalizer) pango_glyph_string_free));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
}
static 
void
S_virtual_gdk_drawable_draw_trapezoids(GdkDrawable* s_object, GdkGC* s_gc, GdkTrapezoid* s_trapezoids, gint s_n_trapezoids)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 5));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GdkDrawable_symbol, S_GOBJECT_GET_ENV(s_object)), 24));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "GdkDrawable"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_gc, "GdkGC"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRArrayRefWithSize(s_trapezoids, asRGdkTrapezoid, s_n_trapezoids));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_n_trapezoids));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
}
static 
cairo_surface_t*
S_virtual_gdk_drawable_ref_cairo_surface(GdkDrawable* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GdkDrawable_symbol, S_GOBJECT_GET_ENV(s_object)), 25));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "GdkDrawable"));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
  return(((cairo_surface_t*)getPtrValue(s_ans)));
}
void
S_gdk_drawable_class_init(GdkDrawableClass * c, SEXP e)
{
  SEXP s;

  S_GdkDrawable_symbol = install("GdkDrawable");
  s = findVar(S_GdkDrawable_symbol, e);
  G_STRUCT_MEMBER(SEXP, c, sizeof(GdkDrawableClass)) = e;

  S_gobject_class_init(((GObjectClass *)c), e);

  if(VECTOR_ELT(s, 0) != NULL_USER_OBJECT)
    c->create_gc = S_virtual_gdk_drawable_create_gc;
  if(VECTOR_ELT(s, 1) != NULL_USER_OBJECT)
    c->draw_rectangle = S_virtual_gdk_drawable_draw_rectangle;
  if(VECTOR_ELT(s, 2) != NULL_USER_OBJECT)
    c->draw_arc = S_virtual_gdk_drawable_draw_arc;
  if(VECTOR_ELT(s, 3) != NULL_USER_OBJECT)
    c->draw_polygon = S_virtual_gdk_drawable_draw_polygon;
  if(VECTOR_ELT(s, 4) != NULL_USER_OBJECT)
    c->draw_text = S_virtual_gdk_drawable_draw_text;
  if(VECTOR_ELT(s, 5) != NULL_USER_OBJECT)
    c->draw_text_wc = S_virtual_gdk_drawable_draw_text_wc;
  if(VECTOR_ELT(s, 6) != NULL_USER_OBJECT)
    c->draw_drawable = S_virtual_gdk_drawable_draw_drawable;
  if(VECTOR_ELT(s, 7) != NULL_USER_OBJECT)
    c->draw_points = S_virtual_gdk_drawable_draw_points;
  if(VECTOR_ELT(s, 8) != NULL_USER_OBJECT)
    c->draw_segments = S_virtual_gdk_drawable_draw_segments;
  if(VECTOR_ELT(s, 9) != NULL_USER_OBJECT)
    c->draw_lines = S_virtual_gdk_drawable_draw_lines;
  if(VECTOR_ELT(s, 10) != NULL_USER_OBJECT)
    c->draw_glyphs = S_virtual_gdk_drawable_draw_glyphs;
  if(VECTOR_ELT(s, 11) != NULL_USER_OBJECT)
    c->draw_image = S_virtual_gdk_drawable_draw_image;
  if(VECTOR_ELT(s, 12) != NULL_USER_OBJECT)
    c->get_depth = S_virtual_gdk_drawable_get_depth;
  if(VECTOR_ELT(s, 13) != NULL_USER_OBJECT)
    c->get_size = S_virtual_gdk_drawable_get_size;
  if(VECTOR_ELT(s, 14) != NULL_USER_OBJECT)
    c->set_colormap = S_virtual_gdk_drawable_set_colormap;
  if(VECTOR_ELT(s, 15) != NULL_USER_OBJECT)
    c->get_colormap = S_virtual_gdk_drawable_get_colormap;
  if(VECTOR_ELT(s, 16) != NULL_USER_OBJECT)
    c->get_visual = S_virtual_gdk_drawable_get_visual;
  if(VECTOR_ELT(s, 17) != NULL_USER_OBJECT)
    c->get_screen = S_virtual_gdk_drawable_get_screen;
  if(VECTOR_ELT(s, 18) != NULL_USER_OBJECT)
    c->get_image = S_virtual_gdk_drawable_get_image;
  if(VECTOR_ELT(s, 19) != NULL_USER_OBJECT)
    c->get_clip_region = S_virtual_gdk_drawable_get_clip_region;
  if(VECTOR_ELT(s, 20) != NULL_USER_OBJECT)
    c->get_visible_region = S_virtual_gdk_drawable_get_visible_region;
  if(VECTOR_ELT(s, 21) != NULL_USER_OBJECT)
    c->get_composite_drawable = S_virtual_gdk_drawable_get_composite_drawable;
  if(VECTOR_ELT(s, 22) != NULL_USER_OBJECT)
    c->draw_pixbuf = S_virtual_gdk_drawable_draw_pixbuf;
  if(VECTOR_ELT(s, 23) != NULL_USER_OBJECT)
    c->draw_glyphs_transformed = S_virtual_gdk_drawable_draw_glyphs_transformed;
  if(VECTOR_ELT(s, 24) != NULL_USER_OBJECT)
    c->draw_trapezoids = S_virtual_gdk_drawable_draw_trapezoids;
  if(VECTOR_ELT(s, 25) != NULL_USER_OBJECT)
    c->ref_cairo_surface = S_virtual_gdk_drawable_ref_cairo_surface;
} 

static SEXP S_GdkWindow_symbol;
void
S_gdk_window_class_init(GdkWindowClass * c, SEXP e)
{
  SEXP s;

  S_GdkWindow_symbol = install("GdkWindow");
  s = findVar(S_GdkWindow_symbol, e);
  G_STRUCT_MEMBER(SEXP, c, sizeof(GdkWindowClass)) = e;

  S_gdk_drawable_class_init(((GdkDrawableClass *)c), e);

} 

static SEXP S_GdkPixmap_symbol;
void
S_gdk_pixmap_class_init(GdkPixmapObjectClass * c, SEXP e)
{
  SEXP s;

  S_GdkPixmap_symbol = install("GdkPixmap");
  s = findVar(S_GdkPixmap_symbol, e);
  G_STRUCT_MEMBER(SEXP, c, sizeof(GdkPixmapObjectClass)) = e;

  S_gdk_drawable_class_init(((GdkDrawableClass *)c), e);

} 

static SEXP S_GdkGC_symbol;
static 
void
S_virtual_gdk_gc_get_values(GdkGC* s_object, GdkGCValues* s_values)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GdkGC_symbol, S_GOBJECT_GET_ENV(s_object)), 0));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "GdkGC"));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
  *s_values = *asCGdkGCValues(VECTOR_ELT(s_ans, 0));
}
static 
void
S_virtual_gdk_gc_set_values(GdkGC* s_object, GdkGCValues* s_values, GdkGCValuesMask s_mask)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 4));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GdkGC_symbol, S_GOBJECT_GET_ENV(s_object)), 1));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "GdkGC"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRGdkGCValues(s_values));
  tmp = CDR(tmp);
  SETCAR(tmp, asRFlag(s_mask, GDK_TYPE_GC_VALUES_MASK));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
}
static 
void
S_virtual_gdk_gc_set_dashes(GdkGC* s_object, gint s_dash_offset, gint8* s_dash_list, gint s_n)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 5));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GdkGC_symbol, S_GOBJECT_GET_ENV(s_object)), 2));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "GdkGC"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_dash_offset));
  tmp = CDR(tmp);
  SETCAR(tmp, asRRawArrayWithSize(s_dash_list, s_dash_offset));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_n));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
}
void
S_gdk_gc_class_init(GdkGCClass * c, SEXP e)
{
  SEXP s;

  S_GdkGC_symbol = install("GdkGC");
  s = findVar(S_GdkGC_symbol, e);
  G_STRUCT_MEMBER(SEXP, c, sizeof(GdkGCClass)) = e;

  S_gobject_class_init(((GObjectClass *)c), e);

  if(VECTOR_ELT(s, 0) != NULL_USER_OBJECT)
    c->get_values = S_virtual_gdk_gc_get_values;
  if(VECTOR_ELT(s, 1) != NULL_USER_OBJECT)
    c->set_values = S_virtual_gdk_gc_set_values;
  if(VECTOR_ELT(s, 2) != NULL_USER_OBJECT)
    c->set_dashes = S_virtual_gdk_gc_set_dashes;
} 

static SEXP S_GdkImage_symbol;
void
S_gdk_image_class_init(GdkImageClass * c, SEXP e)
{
  SEXP s;

  S_GdkImage_symbol = install("GdkImage");
  s = findVar(S_GdkImage_symbol, e);
  G_STRUCT_MEMBER(SEXP, c, sizeof(GdkImageClass)) = e;

  S_gobject_class_init(((GObjectClass *)c), e);

} 

static SEXP S_GdkKeymap_symbol;
static 
void
S_virtual_gdk_keymap_direction_changed(GdkKeymap* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GdkKeymap_symbol, S_GOBJECT_GET_ENV(s_object)), 0));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "GdkKeymap"));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
}
static 
void
S_virtual_gdk_keymap_keys_changed(GdkKeymap* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GdkKeymap_symbol, S_GOBJECT_GET_ENV(s_object)), 1));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "GdkKeymap"));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
}
void
S_gdk_keymap_class_init(GdkKeymapClass * c, SEXP e)
{
  SEXP s;

  S_GdkKeymap_symbol = install("GdkKeymap");
  s = findVar(S_GdkKeymap_symbol, e);
  G_STRUCT_MEMBER(SEXP, c, sizeof(GdkKeymapClass)) = e;

  S_gobject_class_init(((GObjectClass *)c), e);

  if(VECTOR_ELT(s, 0) != NULL_USER_OBJECT)
    c->direction_changed = S_virtual_gdk_keymap_direction_changed;
  if(VECTOR_ELT(s, 1) != NULL_USER_OBJECT)
    c->keys_changed = S_virtual_gdk_keymap_keys_changed;
} 

static SEXP S_GdkPixbufAnimation_symbol;
static 
gboolean
S_virtual_gdk_pixbuf_animation_is_static_image(GdkPixbufAnimation* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GdkPixbufAnimation_symbol, S_GOBJECT_GET_ENV(s_object)), 0));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "GdkPixbufAnimation"));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
  return(((gboolean)asCLogical(s_ans)));
}
static 
GdkPixbuf*
S_virtual_gdk_pixbuf_animation_get_static_image(GdkPixbufAnimation* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GdkPixbufAnimation_symbol, S_GOBJECT_GET_ENV(s_object)), 1));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "GdkPixbufAnimation"));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
  return(GDK_PIXBUF(getPtrValue(s_ans)));
}
static 
void
S_virtual_gdk_pixbuf_animation_get_size(GdkPixbufAnimation* s_object, int* s_width, int* s_height)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GdkPixbufAnimation_symbol, S_GOBJECT_GET_ENV(s_object)), 2));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "GdkPixbufAnimation"));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
  *s_width = ((int)asCInteger(VECTOR_ELT(s_ans, 0)));
  *s_height = ((int)asCInteger(VECTOR_ELT(s_ans, 1)));
}
static 
GdkPixbufAnimationIter*
S_virtual_gdk_pixbuf_animation_get_iter(GdkPixbufAnimation* s_object, const GTimeVal* s_start_time)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GdkPixbufAnimation_symbol, S_GOBJECT_GET_ENV(s_object)), 3));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "GdkPixbufAnimation"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRGTimeVal(s_start_time));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
  return(GDK_PIXBUF_ANIMATION_ITER(getPtrValue(s_ans)));
}
void
S_gdk_pixbuf_animation_class_init(GdkPixbufAnimationClass * c, SEXP e)
{
  SEXP s;

  S_GdkPixbufAnimation_symbol = install("GdkPixbufAnimation");
  s = findVar(S_GdkPixbufAnimation_symbol, e);
  G_STRUCT_MEMBER(SEXP, c, sizeof(GdkPixbufAnimationClass)) = e;

  S_gobject_class_init(((GObjectClass *)c), e);

  if(VECTOR_ELT(s, 0) != NULL_USER_OBJECT)
    c->is_static_image = S_virtual_gdk_pixbuf_animation_is_static_image;
  if(VECTOR_ELT(s, 1) != NULL_USER_OBJECT)
    c->get_static_image = S_virtual_gdk_pixbuf_animation_get_static_image;
  if(VECTOR_ELT(s, 2) != NULL_USER_OBJECT)
    c->get_size = S_virtual_gdk_pixbuf_animation_get_size;
  if(VECTOR_ELT(s, 3) != NULL_USER_OBJECT)
    c->get_iter = S_virtual_gdk_pixbuf_animation_get_iter;
} 

static SEXP S_GdkPixbufAnimationIter_symbol;
static 
int
S_virtual_gdk_pixbuf_animation_iter_get_delay_time(GdkPixbufAnimationIter* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GdkPixbufAnimationIter_symbol, S_GOBJECT_GET_ENV(s_object)), 0));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "GdkPixbufAnimationIter"));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
  return(((int)asCInteger(s_ans)));
}
static 
GdkPixbuf*
S_virtual_gdk_pixbuf_animation_iter_get_pixbuf(GdkPixbufAnimationIter* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GdkPixbufAnimationIter_symbol, S_GOBJECT_GET_ENV(s_object)), 1));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "GdkPixbufAnimationIter"));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
  return(GDK_PIXBUF(getPtrValue(s_ans)));
}
static 
gboolean
S_virtual_gdk_pixbuf_animation_iter_on_currently_loading_frame(GdkPixbufAnimationIter* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GdkPixbufAnimationIter_symbol, S_GOBJECT_GET_ENV(s_object)), 2));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "GdkPixbufAnimationIter"));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
  return(((gboolean)asCLogical(s_ans)));
}
static 
gboolean
S_virtual_gdk_pixbuf_animation_iter_advance(GdkPixbufAnimationIter* s_object, const GTimeVal* s_current_time)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GdkPixbufAnimationIter_symbol, S_GOBJECT_GET_ENV(s_object)), 3));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "GdkPixbufAnimationIter"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRGTimeVal(s_current_time));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
  return(((gboolean)asCLogical(s_ans)));
}
void
S_gdk_pixbuf_animation_iter_class_init(GdkPixbufAnimationIterClass * c, SEXP e)
{
  SEXP s;

  S_GdkPixbufAnimationIter_symbol = install("GdkPixbufAnimationIter");
  s = findVar(S_GdkPixbufAnimationIter_symbol, e);
  G_STRUCT_MEMBER(SEXP, c, sizeof(GdkPixbufAnimationIterClass)) = e;

  S_gobject_class_init(((GObjectClass *)c), e);

  if(VECTOR_ELT(s, 0) != NULL_USER_OBJECT)
    c->get_delay_time = S_virtual_gdk_pixbuf_animation_iter_get_delay_time;
  if(VECTOR_ELT(s, 1) != NULL_USER_OBJECT)
    c->get_pixbuf = S_virtual_gdk_pixbuf_animation_iter_get_pixbuf;
  if(VECTOR_ELT(s, 2) != NULL_USER_OBJECT)
    c->on_currently_loading_frame = S_virtual_gdk_pixbuf_animation_iter_on_currently_loading_frame;
  if(VECTOR_ELT(s, 3) != NULL_USER_OBJECT)
    c->advance = S_virtual_gdk_pixbuf_animation_iter_advance;
} 

static SEXP S_GdkPixbufLoader_symbol;
static 
void
S_virtual_gdk_pixbuf_loader_size_prepared(GdkPixbufLoader* s_object, int s_width, int s_height)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 4));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GdkPixbufLoader_symbol, S_GOBJECT_GET_ENV(s_object)), 0));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "GdkPixbufLoader"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_width));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_height));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
}
static 
void
S_virtual_gdk_pixbuf_loader_area_prepared(GdkPixbufLoader* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GdkPixbufLoader_symbol, S_GOBJECT_GET_ENV(s_object)), 1));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "GdkPixbufLoader"));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
}
static 
void
S_virtual_gdk_pixbuf_loader_area_updated(GdkPixbufLoader* s_object, int s_x, int s_y, int s_width, int s_height)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 6));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GdkPixbufLoader_symbol, S_GOBJECT_GET_ENV(s_object)), 2));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "GdkPixbufLoader"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_x));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_y));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_width));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_height));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
}
static 
void
S_virtual_gdk_pixbuf_loader_closed(GdkPixbufLoader* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GdkPixbufLoader_symbol, S_GOBJECT_GET_ENV(s_object)), 3));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "GdkPixbufLoader"));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
}
void
S_gdk_pixbuf_loader_class_init(GdkPixbufLoaderClass * c, SEXP e)
{
  SEXP s;

  S_GdkPixbufLoader_symbol = install("GdkPixbufLoader");
  s = findVar(S_GdkPixbufLoader_symbol, e);
  G_STRUCT_MEMBER(SEXP, c, sizeof(GdkPixbufLoaderClass)) = e;

  S_gobject_class_init(((GObjectClass *)c), e);

  if(VECTOR_ELT(s, 0) != NULL_USER_OBJECT)
    c->size_prepared = S_virtual_gdk_pixbuf_loader_size_prepared;
  if(VECTOR_ELT(s, 1) != NULL_USER_OBJECT)
    c->area_prepared = S_virtual_gdk_pixbuf_loader_area_prepared;
  if(VECTOR_ELT(s, 2) != NULL_USER_OBJECT)
    c->area_updated = S_virtual_gdk_pixbuf_loader_area_updated;
  if(VECTOR_ELT(s, 3) != NULL_USER_OBJECT)
    c->closed = S_virtual_gdk_pixbuf_loader_closed;
} 

static SEXP S_GdkPangoRenderer_symbol;
void
S_gdk_pango_renderer_class_init(GdkPangoRendererClass * c, SEXP e)
{
  SEXP s;

  S_GdkPangoRenderer_symbol = install("GdkPangoRenderer");
  s = findVar(S_GdkPangoRenderer_symbol, e);
  G_STRUCT_MEMBER(SEXP, c, sizeof(GdkPangoRendererClass)) = e;

  S_pango_renderer_class_init(((PangoRendererClass *)c), e);

} 

static SEXP S_GdkScreen_symbol;
static 
void
S_virtual_gdk_screen_size_changed(GdkScreen* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GdkScreen_symbol, S_GOBJECT_GET_ENV(s_object)), 0));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "GdkScreen"));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
}
static 
void
S_virtual_gdk_screen_composited_changed(GdkScreen* s_object)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 2));
  tmp = e;

  SETCAR(tmp, VECTOR_ELT(findVar(S_GdkScreen_symbol, S_GOBJECT_GET_ENV(s_object)), 1));
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_object, "GdkScreen"));
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  UNPROTECT(1);
}
void
S_gdk_screen_class_init(GdkScreenClass * c, SEXP e)
{
  SEXP s;

  S_GdkScreen_symbol = install("GdkScreen");
  s = findVar(S_GdkScreen_symbol, e);
  G_STRUCT_MEMBER(SEXP, c, sizeof(GdkScreenClass)) = e;

  S_gobject_class_init(((GObjectClass *)c), e);

  if(VECTOR_ELT(s, 0) != NULL_USER_OBJECT)
    c->size_changed = S_virtual_gdk_screen_size_changed;
  if(VECTOR_ELT(s, 1) != NULL_USER_OBJECT)
    c->composited_changed = S_virtual_gdk_screen_composited_changed;
} 

