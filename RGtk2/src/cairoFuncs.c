#include "utils.h"
#include "conversion.h"
#include "gobject.h"
#include "cairoFuncs.h"
#include "userfuncs.h"
#include "glib.h"


#include "RGtk2.h"

USER_OBJECT_
S_cairo_version(void)
{

  int ans;
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  ans = cairo_version();

  _result = asRInteger(ans);

  return(_result);
}
 

USER_OBJECT_
S_cairo_version_string(void)
{

  const char* ans;
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  ans = cairo_version_string();

  _result = asRString(ans);

  return(_result);
}
 

USER_OBJECT_
S_cairo_create(USER_OBJECT_ s_target)
{
  cairo_surface_t* target = ((cairo_surface_t*)getPtrValue(s_target));

  cairo_t* ans;
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  ans = cairo_create(target);

  _result = toRPointerWithFinalizer(ans, "Cairo", (RPointerFinalizer) cairo_destroy);

  return(_result);
}
 

USER_OBJECT_
S_cairo_reference(USER_OBJECT_ s_cr)
{
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));

  cairo_t* ans;
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  ans = cairo_reference(cr);

  _result = toRPointerWithCairoRef(ans, "Cairo", cairo);

  return(_result);
}
 

USER_OBJECT_
S_cairo_destroy(USER_OBJECT_ s_cr)
{
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));

  USER_OBJECT_ _result = NULL_USER_OBJECT;

  cairo_destroy(cr);


  return(_result);
}
 

USER_OBJECT_
S_cairo_save(USER_OBJECT_ s_cr)
{
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));

  USER_OBJECT_ _result = NULL_USER_OBJECT;

  cairo_save(cr);


  return(_result);
}
 

USER_OBJECT_
S_cairo_restore(USER_OBJECT_ s_cr)
{
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));

  USER_OBJECT_ _result = NULL_USER_OBJECT;

  cairo_restore(cr);


  return(_result);
}
 

USER_OBJECT_
S_cairo_set_operator(USER_OBJECT_ s_cr, USER_OBJECT_ s_op)
{
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));
  cairo_operator_t op = ((cairo_operator_t)asCEnum(s_op, CAIRO_TYPE_OPERATOR));

  USER_OBJECT_ _result = NULL_USER_OBJECT;

  cairo_set_operator(cr, op);


  return(_result);
}
 

USER_OBJECT_
S_cairo_set_source(USER_OBJECT_ s_cr, USER_OBJECT_ s_source)
{
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));
  cairo_pattern_t* source = ((cairo_pattern_t*)getPtrValue(s_source));

  USER_OBJECT_ _result = NULL_USER_OBJECT;

  cairo_set_source(cr, source);


  return(_result);
}
 

USER_OBJECT_
S_cairo_set_source_rgb(USER_OBJECT_ s_cr, USER_OBJECT_ s_red, USER_OBJECT_ s_green, USER_OBJECT_ s_blue)
{
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));
  double red = ((double)asCNumeric(s_red));
  double green = ((double)asCNumeric(s_green));
  double blue = ((double)asCNumeric(s_blue));

  USER_OBJECT_ _result = NULL_USER_OBJECT;

  cairo_set_source_rgb(cr, red, green, blue);


  return(_result);
}
 

USER_OBJECT_
S_cairo_set_source_rgba(USER_OBJECT_ s_cr, USER_OBJECT_ s_red, USER_OBJECT_ s_green, USER_OBJECT_ s_blue, USER_OBJECT_ s_alpha)
{
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));
  double red = ((double)asCNumeric(s_red));
  double green = ((double)asCNumeric(s_green));
  double blue = ((double)asCNumeric(s_blue));
  double alpha = ((double)asCNumeric(s_alpha));

  USER_OBJECT_ _result = NULL_USER_OBJECT;

  cairo_set_source_rgba(cr, red, green, blue, alpha);


  return(_result);
}
 

USER_OBJECT_
S_cairo_set_source_surface(USER_OBJECT_ s_cr, USER_OBJECT_ s_surface, USER_OBJECT_ s_x, USER_OBJECT_ s_y)
{
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));
  cairo_surface_t* surface = ((cairo_surface_t*)getPtrValue(s_surface));
  double x = ((double)asCNumeric(s_x));
  double y = ((double)asCNumeric(s_y));

  USER_OBJECT_ _result = NULL_USER_OBJECT;

  cairo_set_source_surface(cr, surface, x, y);


  return(_result);
}
 

USER_OBJECT_
S_cairo_set_tolerance(USER_OBJECT_ s_cr, USER_OBJECT_ s_tolerance)
{
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));
  double tolerance = ((double)asCNumeric(s_tolerance));

  USER_OBJECT_ _result = NULL_USER_OBJECT;

  cairo_set_tolerance(cr, tolerance);


  return(_result);
}
 

USER_OBJECT_
S_cairo_set_antialias(USER_OBJECT_ s_cr, USER_OBJECT_ s_antialias)
{
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));
  cairo_antialias_t antialias = ((cairo_antialias_t)asCEnum(s_antialias, CAIRO_TYPE_ANTIALIAS));

  USER_OBJECT_ _result = NULL_USER_OBJECT;

  cairo_set_antialias(cr, antialias);


  return(_result);
}
 

USER_OBJECT_
S_cairo_set_fill_rule(USER_OBJECT_ s_cr, USER_OBJECT_ s_fill_rule)
{
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));
  cairo_fill_rule_t fill_rule = ((cairo_fill_rule_t)asCEnum(s_fill_rule, CAIRO_TYPE_FILL_RULE));

  USER_OBJECT_ _result = NULL_USER_OBJECT;

  cairo_set_fill_rule(cr, fill_rule);


  return(_result);
}
 

USER_OBJECT_
S_cairo_set_line_width(USER_OBJECT_ s_cr, USER_OBJECT_ s_width)
{
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));
  double width = ((double)asCNumeric(s_width));

  USER_OBJECT_ _result = NULL_USER_OBJECT;

  cairo_set_line_width(cr, width);


  return(_result);
}
 

USER_OBJECT_
S_cairo_set_line_cap(USER_OBJECT_ s_cr, USER_OBJECT_ s_line_cap)
{
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));
  cairo_line_cap_t line_cap = ((cairo_line_cap_t)asCEnum(s_line_cap, CAIRO_TYPE_LINE_CAP));

  USER_OBJECT_ _result = NULL_USER_OBJECT;

  cairo_set_line_cap(cr, line_cap);


  return(_result);
}
 

USER_OBJECT_
S_cairo_set_line_join(USER_OBJECT_ s_cr, USER_OBJECT_ s_line_join)
{
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));
  cairo_line_join_t line_join = ((cairo_line_join_t)asCEnum(s_line_join, CAIRO_TYPE_LINE_JOIN));

  USER_OBJECT_ _result = NULL_USER_OBJECT;

  cairo_set_line_join(cr, line_join);


  return(_result);
}
 

USER_OBJECT_
S_cairo_set_dash(USER_OBJECT_ s_cr, USER_OBJECT_ s_dashes, USER_OBJECT_ s_offset)
{
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));
  double* dashes = ((double*)asCArray(s_dashes, double, asCNumeric));
  int ndash = ((int)GET_LENGTH(s_dashes));
  double offset = ((double)asCNumeric(s_offset));

  USER_OBJECT_ _result = NULL_USER_OBJECT;

  cairo_set_dash(cr, dashes, ndash, offset);


  return(_result);
}
 

USER_OBJECT_
S_cairo_set_miter_limit(USER_OBJECT_ s_cr, USER_OBJECT_ s_limit)
{
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));
  double limit = ((double)asCNumeric(s_limit));

  USER_OBJECT_ _result = NULL_USER_OBJECT;

  cairo_set_miter_limit(cr, limit);


  return(_result);
}
 

USER_OBJECT_
S_cairo_translate(USER_OBJECT_ s_cr, USER_OBJECT_ s_tx, USER_OBJECT_ s_ty)
{
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));
  double tx = ((double)asCNumeric(s_tx));
  double ty = ((double)asCNumeric(s_ty));

  USER_OBJECT_ _result = NULL_USER_OBJECT;

  cairo_translate(cr, tx, ty);


  return(_result);
}
 

USER_OBJECT_
S_cairo_scale(USER_OBJECT_ s_cr, USER_OBJECT_ s_sx, USER_OBJECT_ s_sy)
{
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));
  double sx = ((double)asCNumeric(s_sx));
  double sy = ((double)asCNumeric(s_sy));

  USER_OBJECT_ _result = NULL_USER_OBJECT;

  cairo_scale(cr, sx, sy);


  return(_result);
}
 

USER_OBJECT_
S_cairo_rotate(USER_OBJECT_ s_cr, USER_OBJECT_ s_angle)
{
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));
  double angle = ((double)asCNumeric(s_angle));

  USER_OBJECT_ _result = NULL_USER_OBJECT;

  cairo_rotate(cr, angle);


  return(_result);
}
 

USER_OBJECT_
S_cairo_transform(USER_OBJECT_ s_cr, USER_OBJECT_ s_matrix)
{
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));
  const cairo_matrix_t* matrix = ((const cairo_matrix_t*)getPtrValue(s_matrix));

  USER_OBJECT_ _result = NULL_USER_OBJECT;

  cairo_transform(cr, matrix);


  return(_result);
}
 

USER_OBJECT_
S_cairo_set_matrix(USER_OBJECT_ s_cr, USER_OBJECT_ s_matrix)
{
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));
  const cairo_matrix_t* matrix = ((const cairo_matrix_t*)getPtrValue(s_matrix));

  USER_OBJECT_ _result = NULL_USER_OBJECT;

  cairo_set_matrix(cr, matrix);


  return(_result);
}
 

USER_OBJECT_
S_cairo_identity_matrix(USER_OBJECT_ s_cr)
{
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));

  USER_OBJECT_ _result = NULL_USER_OBJECT;

  cairo_identity_matrix(cr);


  return(_result);
}
 

USER_OBJECT_
S_cairo_user_to_device(USER_OBJECT_ s_cr, USER_OBJECT_ s_x, USER_OBJECT_ s_y)
{
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));
  double* x = ((double*)asCArray(s_x, double, asCNumeric));
  double* y = ((double*)asCArray(s_y, double, asCNumeric));

  USER_OBJECT_ _result = NULL_USER_OBJECT;

  cairo_user_to_device(cr, x, y);


  return(_result);
}
 

USER_OBJECT_
S_cairo_user_to_device_distance(USER_OBJECT_ s_cr, USER_OBJECT_ s_dx, USER_OBJECT_ s_dy)
{
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));
  double* dx = ((double*)asCArray(s_dx, double, asCNumeric));
  double* dy = ((double*)asCArray(s_dy, double, asCNumeric));

  USER_OBJECT_ _result = NULL_USER_OBJECT;

  cairo_user_to_device_distance(cr, dx, dy);


  return(_result);
}
 

USER_OBJECT_
S_cairo_device_to_user(USER_OBJECT_ s_cr, USER_OBJECT_ s_x, USER_OBJECT_ s_y)
{
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));
  double* x = ((double*)asCArray(s_x, double, asCNumeric));
  double* y = ((double*)asCArray(s_y, double, asCNumeric));

  USER_OBJECT_ _result = NULL_USER_OBJECT;

  cairo_device_to_user(cr, x, y);


  return(_result);
}
 

USER_OBJECT_
S_cairo_device_to_user_distance(USER_OBJECT_ s_cr, USER_OBJECT_ s_dx, USER_OBJECT_ s_dy)
{
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));
  double* dx = ((double*)asCArray(s_dx, double, asCNumeric));
  double* dy = ((double*)asCArray(s_dy, double, asCNumeric));

  USER_OBJECT_ _result = NULL_USER_OBJECT;

  cairo_device_to_user_distance(cr, dx, dy);


  return(_result);
}
 

USER_OBJECT_
S_cairo_new_path(USER_OBJECT_ s_cr)
{
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));

  USER_OBJECT_ _result = NULL_USER_OBJECT;

  cairo_new_path(cr);


  return(_result);
}
 

USER_OBJECT_
S_cairo_move_to(USER_OBJECT_ s_cr, USER_OBJECT_ s_x, USER_OBJECT_ s_y)
{
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));
  double x = ((double)asCNumeric(s_x));
  double y = ((double)asCNumeric(s_y));

  USER_OBJECT_ _result = NULL_USER_OBJECT;

  cairo_move_to(cr, x, y);


  return(_result);
}
 

USER_OBJECT_
S_cairo_line_to(USER_OBJECT_ s_cr, USER_OBJECT_ s_x, USER_OBJECT_ s_y)
{
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));
  double x = ((double)asCNumeric(s_x));
  double y = ((double)asCNumeric(s_y));

  USER_OBJECT_ _result = NULL_USER_OBJECT;

  cairo_line_to(cr, x, y);


  return(_result);
}
 

USER_OBJECT_
S_cairo_curve_to(USER_OBJECT_ s_cr, USER_OBJECT_ s_x1, USER_OBJECT_ s_y1, USER_OBJECT_ s_x2, USER_OBJECT_ s_y2, USER_OBJECT_ s_x3, USER_OBJECT_ s_y3)
{
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));
  double x1 = ((double)asCNumeric(s_x1));
  double y1 = ((double)asCNumeric(s_y1));
  double x2 = ((double)asCNumeric(s_x2));
  double y2 = ((double)asCNumeric(s_y2));
  double x3 = ((double)asCNumeric(s_x3));
  double y3 = ((double)asCNumeric(s_y3));

  USER_OBJECT_ _result = NULL_USER_OBJECT;

  cairo_curve_to(cr, x1, y1, x2, y2, x3, y3);


  return(_result);
}
 

USER_OBJECT_
S_cairo_arc(USER_OBJECT_ s_cr, USER_OBJECT_ s_xc, USER_OBJECT_ s_yc, USER_OBJECT_ s_radius, USER_OBJECT_ s_angle1, USER_OBJECT_ s_angle2)
{
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));
  double xc = ((double)asCNumeric(s_xc));
  double yc = ((double)asCNumeric(s_yc));
  double radius = ((double)asCNumeric(s_radius));
  double angle1 = ((double)asCNumeric(s_angle1));
  double angle2 = ((double)asCNumeric(s_angle2));

  USER_OBJECT_ _result = NULL_USER_OBJECT;

  cairo_arc(cr, xc, yc, radius, angle1, angle2);


  return(_result);
}
 

USER_OBJECT_
S_cairo_arc_negative(USER_OBJECT_ s_cr, USER_OBJECT_ s_xc, USER_OBJECT_ s_yc, USER_OBJECT_ s_radius, USER_OBJECT_ s_angle1, USER_OBJECT_ s_angle2)
{
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));
  double xc = ((double)asCNumeric(s_xc));
  double yc = ((double)asCNumeric(s_yc));
  double radius = ((double)asCNumeric(s_radius));
  double angle1 = ((double)asCNumeric(s_angle1));
  double angle2 = ((double)asCNumeric(s_angle2));

  USER_OBJECT_ _result = NULL_USER_OBJECT;

  cairo_arc_negative(cr, xc, yc, radius, angle1, angle2);


  return(_result);
}
 

USER_OBJECT_
S_cairo_rel_move_to(USER_OBJECT_ s_cr, USER_OBJECT_ s_dx, USER_OBJECT_ s_dy)
{
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));
  double dx = ((double)asCNumeric(s_dx));
  double dy = ((double)asCNumeric(s_dy));

  USER_OBJECT_ _result = NULL_USER_OBJECT;

  cairo_rel_move_to(cr, dx, dy);


  return(_result);
}
 

USER_OBJECT_
S_cairo_rel_line_to(USER_OBJECT_ s_cr, USER_OBJECT_ s_dx, USER_OBJECT_ s_dy)
{
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));
  double dx = ((double)asCNumeric(s_dx));
  double dy = ((double)asCNumeric(s_dy));

  USER_OBJECT_ _result = NULL_USER_OBJECT;

  cairo_rel_line_to(cr, dx, dy);


  return(_result);
}
 

USER_OBJECT_
S_cairo_rel_curve_to(USER_OBJECT_ s_cr, USER_OBJECT_ s_dx1, USER_OBJECT_ s_dy1, USER_OBJECT_ s_dx2, USER_OBJECT_ s_dy2, USER_OBJECT_ s_dx3, USER_OBJECT_ s_dy3)
{
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));
  double dx1 = ((double)asCNumeric(s_dx1));
  double dy1 = ((double)asCNumeric(s_dy1));
  double dx2 = ((double)asCNumeric(s_dx2));
  double dy2 = ((double)asCNumeric(s_dy2));
  double dx3 = ((double)asCNumeric(s_dx3));
  double dy3 = ((double)asCNumeric(s_dy3));

  USER_OBJECT_ _result = NULL_USER_OBJECT;

  cairo_rel_curve_to(cr, dx1, dy1, dx2, dy2, dx3, dy3);


  return(_result);
}
 

USER_OBJECT_
S_cairo_rectangle(USER_OBJECT_ s_cr, USER_OBJECT_ s_x, USER_OBJECT_ s_y, USER_OBJECT_ s_width, USER_OBJECT_ s_height)
{
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));
  double x = ((double)asCNumeric(s_x));
  double y = ((double)asCNumeric(s_y));
  double width = ((double)asCNumeric(s_width));
  double height = ((double)asCNumeric(s_height));

  USER_OBJECT_ _result = NULL_USER_OBJECT;

  cairo_rectangle(cr, x, y, width, height);


  return(_result);
}
 

USER_OBJECT_
S_cairo_close_path(USER_OBJECT_ s_cr)
{
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));

  USER_OBJECT_ _result = NULL_USER_OBJECT;

  cairo_close_path(cr);


  return(_result);
}
 

USER_OBJECT_
S_cairo_paint(USER_OBJECT_ s_cr)
{
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));

  USER_OBJECT_ _result = NULL_USER_OBJECT;

  cairo_paint(cr);


  return(_result);
}
 

USER_OBJECT_
S_cairo_paint_with_alpha(USER_OBJECT_ s_cr, USER_OBJECT_ s_alpha)
{
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));
  double alpha = ((double)asCNumeric(s_alpha));

  USER_OBJECT_ _result = NULL_USER_OBJECT;

  cairo_paint_with_alpha(cr, alpha);


  return(_result);
}
 

USER_OBJECT_
S_cairo_mask(USER_OBJECT_ s_cr, USER_OBJECT_ s_pattern)
{
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));
  cairo_pattern_t* pattern = ((cairo_pattern_t*)getPtrValue(s_pattern));

  USER_OBJECT_ _result = NULL_USER_OBJECT;

  cairo_mask(cr, pattern);


  return(_result);
}
 

USER_OBJECT_
S_cairo_mask_surface(USER_OBJECT_ s_cr, USER_OBJECT_ s_surface, USER_OBJECT_ s_surface_x, USER_OBJECT_ s_surface_y)
{
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));
  cairo_surface_t* surface = ((cairo_surface_t*)getPtrValue(s_surface));
  double surface_x = ((double)asCNumeric(s_surface_x));
  double surface_y = ((double)asCNumeric(s_surface_y));

  USER_OBJECT_ _result = NULL_USER_OBJECT;

  cairo_mask_surface(cr, surface, surface_x, surface_y);


  return(_result);
}
 

USER_OBJECT_
S_cairo_stroke(USER_OBJECT_ s_cr)
{
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));

  USER_OBJECT_ _result = NULL_USER_OBJECT;

  cairo_stroke(cr);


  return(_result);
}
 

USER_OBJECT_
S_cairo_stroke_preserve(USER_OBJECT_ s_cr)
{
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));

  USER_OBJECT_ _result = NULL_USER_OBJECT;

  cairo_stroke_preserve(cr);


  return(_result);
}
 

USER_OBJECT_
S_cairo_fill(USER_OBJECT_ s_cr)
{
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));

  USER_OBJECT_ _result = NULL_USER_OBJECT;

  cairo_fill(cr);


  return(_result);
}
 

USER_OBJECT_
S_cairo_fill_preserve(USER_OBJECT_ s_cr)
{
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));

  USER_OBJECT_ _result = NULL_USER_OBJECT;

  cairo_fill_preserve(cr);


  return(_result);
}
 

USER_OBJECT_
S_cairo_copy_page(USER_OBJECT_ s_cr)
{
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));

  USER_OBJECT_ _result = NULL_USER_OBJECT;

  cairo_copy_page(cr);


  return(_result);
}
 

USER_OBJECT_
S_cairo_show_page(USER_OBJECT_ s_cr)
{
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));

  USER_OBJECT_ _result = NULL_USER_OBJECT;

  cairo_show_page(cr);


  return(_result);
}
 

USER_OBJECT_
S_cairo_in_stroke(USER_OBJECT_ s_cr, USER_OBJECT_ s_x, USER_OBJECT_ s_y)
{
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));
  double x = ((double)asCNumeric(s_x));
  double y = ((double)asCNumeric(s_y));

  gboolean ans;
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  ans = cairo_in_stroke(cr, x, y);

  _result = asRLogical(ans);

  return(_result);
}
 

USER_OBJECT_
S_cairo_in_fill(USER_OBJECT_ s_cr, USER_OBJECT_ s_x, USER_OBJECT_ s_y)
{
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));
  double x = ((double)asCNumeric(s_x));
  double y = ((double)asCNumeric(s_y));

  gboolean ans;
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  ans = cairo_in_fill(cr, x, y);

  _result = asRLogical(ans);

  return(_result);
}
 

USER_OBJECT_
S_cairo_stroke_extents(USER_OBJECT_ s_cr)
{
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));

  USER_OBJECT_ _result = NULL_USER_OBJECT;
  double x1;
  double y1;
  double x2;
  double y2;

  cairo_stroke_extents(cr, &x1, &y1, &x2, &y2);


  _result = retByVal(_result, "x1", asRNumeric(x1), "y1", asRNumeric(y1), "x2", asRNumeric(x2), "y2", asRNumeric(y2), NULL);

  return(_result);
}
 

USER_OBJECT_
S_cairo_fill_extents(USER_OBJECT_ s_cr)
{
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));

  USER_OBJECT_ _result = NULL_USER_OBJECT;
  double x1;
  double y1;
  double x2;
  double y2;

  cairo_fill_extents(cr, &x1, &y1, &x2, &y2);


  _result = retByVal(_result, "x1", asRNumeric(x1), "y1", asRNumeric(y1), "x2", asRNumeric(x2), "y2", asRNumeric(y2), NULL);

  return(_result);
}
 

USER_OBJECT_
S_cairo_reset_clip(USER_OBJECT_ s_cr)
{
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));

  USER_OBJECT_ _result = NULL_USER_OBJECT;

  cairo_reset_clip(cr);


  return(_result);
}
 

USER_OBJECT_
S_cairo_clip(USER_OBJECT_ s_cr)
{
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));

  USER_OBJECT_ _result = NULL_USER_OBJECT;

  cairo_clip(cr);


  return(_result);
}
 

USER_OBJECT_
S_cairo_clip_preserve(USER_OBJECT_ s_cr)
{
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));

  USER_OBJECT_ _result = NULL_USER_OBJECT;

  cairo_clip_preserve(cr);


  return(_result);
}
 

USER_OBJECT_
S_cairo_select_font_face(USER_OBJECT_ s_cr, USER_OBJECT_ s_family, USER_OBJECT_ s_slant, USER_OBJECT_ s_weight)
{
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));
  const char* family = ((const char*)asCString(s_family));
  cairo_font_slant_t slant = ((cairo_font_slant_t)asCEnum(s_slant, CAIRO_TYPE_FONT_SLANT));
  cairo_font_weight_t weight = ((cairo_font_weight_t)asCEnum(s_weight, CAIRO_TYPE_FONT_WEIGHT));

  USER_OBJECT_ _result = NULL_USER_OBJECT;

  cairo_select_font_face(cr, family, slant, weight);


  return(_result);
}
 

USER_OBJECT_
S_cairo_set_font_size(USER_OBJECT_ s_cr, USER_OBJECT_ s_size)
{
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));
  double size = ((double)asCNumeric(s_size));

  USER_OBJECT_ _result = NULL_USER_OBJECT;

  cairo_set_font_size(cr, size);


  return(_result);
}
 

USER_OBJECT_
S_cairo_set_font_matrix(USER_OBJECT_ s_cr, USER_OBJECT_ s_matrix)
{
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));
  const cairo_matrix_t* matrix = ((const cairo_matrix_t*)getPtrValue(s_matrix));

  USER_OBJECT_ _result = NULL_USER_OBJECT;

  cairo_set_font_matrix(cr, matrix);


  return(_result);
}
 

USER_OBJECT_
S_cairo_get_font_matrix(USER_OBJECT_ s_cr, USER_OBJECT_ s_matrix)
{
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));
  cairo_matrix_t* matrix = ((cairo_matrix_t*)getPtrValue(s_matrix));

  USER_OBJECT_ _result = NULL_USER_OBJECT;

  cairo_get_font_matrix(cr, matrix);


  return(_result);
}
 

USER_OBJECT_
S_cairo_show_text(USER_OBJECT_ s_cr, USER_OBJECT_ s_utf8)
{
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));
  const char* utf8 = ((const char*)asCString(s_utf8));

  USER_OBJECT_ _result = NULL_USER_OBJECT;

  cairo_show_text(cr, utf8);


  return(_result);
}
 

USER_OBJECT_
S_cairo_show_glyphs(USER_OBJECT_ s_cr, USER_OBJECT_ s_glyphs, USER_OBJECT_ s_num_glyphs)
{
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));
  cairo_glyph_t* glyphs = asCCairoGlyph(s_glyphs);
  int num_glyphs = ((int)asCInteger(s_num_glyphs));

  USER_OBJECT_ _result = NULL_USER_OBJECT;

  cairo_show_glyphs(cr, glyphs, num_glyphs);


  return(_result);
}
 

USER_OBJECT_
S_cairo_get_font_face(USER_OBJECT_ s_cr)
{
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));

  cairo_font_face_t* ans;
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  ans = cairo_get_font_face(cr);

  _result = toRPointerWithCairoRef(ans, "CairoFontFace", cairo_font_face);

  return(_result);
}
 

USER_OBJECT_
S_cairo_font_extents(USER_OBJECT_ s_cr)
{
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));

  USER_OBJECT_ _result = NULL_USER_OBJECT;
  cairo_font_extents_t* extents = ((cairo_font_extents_t *)g_new0(cairo_font_extents_t, 1));

  cairo_font_extents(cr, extents);


  _result = retByVal(_result, "extents", toRPointerWithFinalizer(extents, "CairoFontExtents", (RPointerFinalizer) g_free), NULL);

  return(_result);
}
 

USER_OBJECT_
S_cairo_set_font_face(USER_OBJECT_ s_cr, USER_OBJECT_ s_font_face)
{
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));
  cairo_font_face_t* font_face = ((cairo_font_face_t*)getPtrValue(s_font_face));

  USER_OBJECT_ _result = NULL_USER_OBJECT;

  cairo_set_font_face(cr, font_face);


  return(_result);
}
 

USER_OBJECT_
S_cairo_text_extents(USER_OBJECT_ s_cr, USER_OBJECT_ s_utf8)
{
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));
  const char* utf8 = ((const char*)asCString(s_utf8));

  USER_OBJECT_ _result = NULL_USER_OBJECT;
  cairo_text_extents_t* extents = ((cairo_text_extents_t *)g_new0(cairo_text_extents_t, 1));

  cairo_text_extents(cr, utf8, extents);


  _result = retByVal(_result, "extents", toRPointerWithFinalizer(extents, "CairoTextExtents", (RPointerFinalizer) g_free), NULL);

  return(_result);
}
 

USER_OBJECT_
S_cairo_glyph_extents(USER_OBJECT_ s_cr, USER_OBJECT_ s_glyphs)
{
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));
  cairo_glyph_t* glyphs = ((cairo_glyph_t*)asCArrayRef(s_glyphs, cairo_glyph_t, asCCairoGlyph));
  int num_glyphs = ((int)GET_LENGTH(s_glyphs));

  USER_OBJECT_ _result = NULL_USER_OBJECT;
  cairo_text_extents_t* extents = ((cairo_text_extents_t *)g_new0(cairo_text_extents_t, 1));

  cairo_glyph_extents(cr, glyphs, num_glyphs, extents);


  _result = retByVal(_result, "extents", toRPointerWithFinalizer(extents, "CairoTextExtents", (RPointerFinalizer) g_free), NULL);

  return(_result);
}
 

USER_OBJECT_
S_cairo_text_path(USER_OBJECT_ s_cr, USER_OBJECT_ s_utf8)
{
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));
  const char* utf8 = ((const char*)asCString(s_utf8));

  USER_OBJECT_ _result = NULL_USER_OBJECT;

  cairo_text_path(cr, utf8);


  return(_result);
}
 

USER_OBJECT_
S_cairo_glyph_path(USER_OBJECT_ s_cr, USER_OBJECT_ s_glyphs)
{
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));
  cairo_glyph_t* glyphs = ((cairo_glyph_t*)asCArrayRef(s_glyphs, cairo_glyph_t, asCCairoGlyph));
  int num_glyphs = ((int)GET_LENGTH(s_glyphs));

  USER_OBJECT_ _result = NULL_USER_OBJECT;

  cairo_glyph_path(cr, glyphs, num_glyphs);


  return(_result);
}
 

USER_OBJECT_
S_cairo_set_font_options(USER_OBJECT_ s_cr, USER_OBJECT_ s_options)
{
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));
  const cairo_font_options_t* options = ((const cairo_font_options_t*)getPtrValue(s_options));

  USER_OBJECT_ _result = NULL_USER_OBJECT;

  cairo_set_font_options(cr, options);


  return(_result);
}
 

USER_OBJECT_
S_cairo_get_font_options(USER_OBJECT_ s_cr)
{
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));

  USER_OBJECT_ _result = NULL_USER_OBJECT;
  cairo_font_options_t* options = cairo_font_options_create();

  cairo_get_font_options(cr, options);


  _result = retByVal(_result, "options", toRPointerWithFinalizer(options, "CairoFontOptions", (RPointerFinalizer) cairo_font_options_destroy), NULL);

  return(_result);
}
 

USER_OBJECT_
S_cairo_font_face_reference(USER_OBJECT_ s_font_face)
{
  cairo_font_face_t* font_face = ((cairo_font_face_t*)getPtrValue(s_font_face));

  cairo_font_face_t* ans;
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  ans = cairo_font_face_reference(font_face);

  _result = toRPointerWithCairoRef(ans, "CairoFontFace", cairo_font_face);

  return(_result);
}
 

USER_OBJECT_
S_cairo_font_face_destroy(USER_OBJECT_ s_font_face)
{
  cairo_font_face_t* font_face = ((cairo_font_face_t*)getPtrValue(s_font_face));

  USER_OBJECT_ _result = NULL_USER_OBJECT;

  cairo_font_face_destroy(font_face);


  return(_result);
}
 

USER_OBJECT_
S_cairo_font_face_get_user_data(USER_OBJECT_ s_font_face, USER_OBJECT_ s_key)
{
  cairo_font_face_t* font_face = ((cairo_font_face_t*)getPtrValue(s_font_face));
  const cairo_user_data_key_t* key = ((const cairo_user_data_key_t*)getPtrValue(s_key));

  gpointer ans;
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  ans = cairo_font_face_get_user_data(font_face, key);

  _result = ans;

  return(_result);
}
 

USER_OBJECT_
S_cairo_font_face_set_user_data(USER_OBJECT_ s_font_face, USER_OBJECT_ s_key, USER_OBJECT_ s_user_data)
{
  cairo_font_face_t* font_face = ((cairo_font_face_t*)getPtrValue(s_font_face));
  const cairo_user_data_key_t* key = ((const cairo_user_data_key_t*)getPtrValue(s_key));
  gpointer user_data = ((gpointer)asCGenericData(s_user_data));
  cairo_destroy_func_t destroy = ((cairo_destroy_func_t)R_ReleaseObject);

  cairo_status_t ans;
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  ans = cairo_font_face_set_user_data(font_face, key, user_data, destroy);

  _result = asREnum(ans, CAIRO_TYPE_STATUS);

  return(_result);
}
 

USER_OBJECT_
S_cairo_font_face_status(USER_OBJECT_ s_font_face)
{
  cairo_font_face_t* font_face = ((cairo_font_face_t*)getPtrValue(s_font_face));

  cairo_status_t ans;
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  ans = cairo_font_face_status(font_face);

  _result = asREnum(ans, CAIRO_TYPE_STATUS);

  return(_result);
}
 

USER_OBJECT_
S_cairo_scaled_font_create(USER_OBJECT_ s_font_face, USER_OBJECT_ s_font_matrix, USER_OBJECT_ s_ctm, USER_OBJECT_ s_option)
{
  cairo_font_face_t* font_face = ((cairo_font_face_t*)getPtrValue(s_font_face));
  const cairo_matrix_t* font_matrix = ((const cairo_matrix_t*)getPtrValue(s_font_matrix));
  const cairo_matrix_t* ctm = ((const cairo_matrix_t*)getPtrValue(s_ctm));
  const cairo_font_options_t* option = ((const cairo_font_options_t*)getPtrValue(s_option));

  cairo_scaled_font_t* ans;
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  ans = cairo_scaled_font_create(font_face, font_matrix, ctm, option);

  _result = toRPointerWithFinalizer(ans, "CairoScaledFont", (RPointerFinalizer) cairo_scaled_font_destroy);

  return(_result);
}
 

USER_OBJECT_
S_cairo_scaled_font_reference(USER_OBJECT_ s_scaled_font)
{
  cairo_scaled_font_t* scaled_font = ((cairo_scaled_font_t*)getPtrValue(s_scaled_font));

  cairo_scaled_font_t* ans;
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  ans = cairo_scaled_font_reference(scaled_font);

  _result = toRPointerWithCairoRef(ans, "CairoScaledFont", cairo_scaled_font);

  return(_result);
}
 

USER_OBJECT_
S_cairo_scaled_font_destroy(USER_OBJECT_ s_scaled_font)
{
  cairo_scaled_font_t* scaled_font = ((cairo_scaled_font_t*)getPtrValue(s_scaled_font));

  USER_OBJECT_ _result = NULL_USER_OBJECT;

  cairo_scaled_font_destroy(scaled_font);


  return(_result);
}
 

USER_OBJECT_
S_cairo_scaled_font_extents(USER_OBJECT_ s_scaled_font)
{
  cairo_scaled_font_t* scaled_font = ((cairo_scaled_font_t*)getPtrValue(s_scaled_font));

  USER_OBJECT_ _result = NULL_USER_OBJECT;
  cairo_font_extents_t* extents = ((cairo_font_extents_t *)g_new0(cairo_font_extents_t, 1));

  cairo_scaled_font_extents(scaled_font, extents);


  _result = retByVal(_result, "extents", toRPointerWithFinalizer(extents, "CairoFontExtents", (RPointerFinalizer) g_free), NULL);

  return(_result);
}
 

USER_OBJECT_
S_cairo_scaled_font_glyph_extents(USER_OBJECT_ s_scaled_font, USER_OBJECT_ s_glyphs, USER_OBJECT_ s_num_glyphs)
{
  cairo_scaled_font_t* scaled_font = ((cairo_scaled_font_t*)getPtrValue(s_scaled_font));
  cairo_glyph_t* glyphs = asCCairoGlyph(s_glyphs);
  int num_glyphs = ((int)asCInteger(s_num_glyphs));

  USER_OBJECT_ _result = NULL_USER_OBJECT;
  cairo_text_extents_t* extents = ((cairo_text_extents_t *)g_new0(cairo_text_extents_t, 1));

  cairo_scaled_font_glyph_extents(scaled_font, glyphs, num_glyphs, extents);


  _result = retByVal(_result, "extents", toRPointerWithFinalizer(extents, "CairoTextExtents", (RPointerFinalizer) g_free), NULL);

  return(_result);
}
 

USER_OBJECT_
S_cairo_scaled_font_status(USER_OBJECT_ s_scaled_font)
{
  cairo_scaled_font_t* scaled_font = ((cairo_scaled_font_t*)getPtrValue(s_scaled_font));

  cairo_status_t ans;
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  ans = cairo_scaled_font_status(scaled_font);

  _result = asREnum(ans, CAIRO_TYPE_STATUS);

  return(_result);
}
 

USER_OBJECT_
S_cairo_get_operator(USER_OBJECT_ s_cr)
{
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));

  cairo_operator_t ans;
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  ans = cairo_get_operator(cr);

  _result = asREnum(ans, CAIRO_TYPE_OPERATOR);

  return(_result);
}
 

USER_OBJECT_
S_cairo_get_source(USER_OBJECT_ s_cr)
{
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));

  cairo_pattern_t* ans;
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  ans = cairo_get_source(cr);

  _result = toRPointerWithCairoRef(ans, "CairoPattern", cairo_pattern);

  return(_result);
}
 

USER_OBJECT_
S_cairo_get_tolerance(USER_OBJECT_ s_cr)
{
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));

  double ans;
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  ans = cairo_get_tolerance(cr);

  _result = asRNumeric(ans);

  return(_result);
}
 

USER_OBJECT_
S_cairo_get_antialias(USER_OBJECT_ s_cr)
{
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));

  cairo_antialias_t ans;
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  ans = cairo_get_antialias(cr);

  _result = asREnum(ans, CAIRO_TYPE_ANTIALIAS);

  return(_result);
}
 

USER_OBJECT_
S_cairo_get_current_point(USER_OBJECT_ s_cr, USER_OBJECT_ s_x, USER_OBJECT_ s_y)
{
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));
  double* x = ((double*)asCArray(s_x, double, asCNumeric));
  double* y = ((double*)asCArray(s_y, double, asCNumeric));

  USER_OBJECT_ _result = NULL_USER_OBJECT;

  cairo_get_current_point(cr, x, y);


  return(_result);
}
 

USER_OBJECT_
S_cairo_get_fill_rule(USER_OBJECT_ s_cr)
{
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));

  cairo_fill_rule_t ans;
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  ans = cairo_get_fill_rule(cr);

  _result = asREnum(ans, CAIRO_TYPE_FILL_RULE);

  return(_result);
}
 

USER_OBJECT_
S_cairo_get_line_width(USER_OBJECT_ s_cr)
{
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));

  double ans;
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  ans = cairo_get_line_width(cr);

  _result = asRNumeric(ans);

  return(_result);
}
 

USER_OBJECT_
S_cairo_get_line_cap(USER_OBJECT_ s_cr)
{
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));

  cairo_line_cap_t ans;
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  ans = cairo_get_line_cap(cr);

  _result = asREnum(ans, CAIRO_TYPE_LINE_CAP);

  return(_result);
}
 

USER_OBJECT_
S_cairo_get_line_join(USER_OBJECT_ s_cr)
{
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));

  cairo_line_join_t ans;
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  ans = cairo_get_line_join(cr);

  _result = asREnum(ans, CAIRO_TYPE_LINE_JOIN);

  return(_result);
}
 

USER_OBJECT_
S_cairo_get_miter_limit(USER_OBJECT_ s_cr)
{
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));

  double ans;
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  ans = cairo_get_miter_limit(cr);

  _result = asRNumeric(ans);

  return(_result);
}
 

USER_OBJECT_
S_cairo_get_matrix(USER_OBJECT_ s_cr, USER_OBJECT_ s_matrix)
{
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));
  cairo_matrix_t* matrix = ((cairo_matrix_t*)getPtrValue(s_matrix));

  USER_OBJECT_ _result = NULL_USER_OBJECT;

  cairo_get_matrix(cr, matrix);


  return(_result);
}
 

USER_OBJECT_
S_cairo_get_target(USER_OBJECT_ s_cr)
{
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));

  cairo_surface_t* ans;
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  ans = cairo_get_target(cr);

  _result = toRPointerWithCairoRef(ans, "CairoSurface", cairo_surface);

  return(_result);
}
 

USER_OBJECT_
S_cairo_copy_path(USER_OBJECT_ s_cr)
{
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));

  cairo_path_t* ans;
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  ans = cairo_copy_path(cr);

  _result = asRCairoPath(ans);
  CLEANUP(cairo_path_destroy, ans);

  return(_result);
}
 

USER_OBJECT_
S_cairo_copy_path_flat(USER_OBJECT_ s_cr)
{
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));

  cairo_path_t* ans;
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  ans = cairo_copy_path_flat(cr);

  _result = asRCairoPath(ans);
  CLEANUP(cairo_path_destroy, ans);

  return(_result);
}
 

USER_OBJECT_
S_cairo_path_destroy(USER_OBJECT_ s_path)
{
  cairo_path_t* path = asCCairoPath(s_path);

  USER_OBJECT_ _result = NULL_USER_OBJECT;

  cairo_path_destroy(path);

  CLEANUP(cairo_path_destroy, ((cairo_path_t*)path));

  return(_result);
}
 

USER_OBJECT_
S_cairo_status(USER_OBJECT_ s_cr)
{
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));

  cairo_status_t ans;
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  ans = cairo_status(cr);

  _result = asREnum(ans, CAIRO_TYPE_STATUS);

  return(_result);
}
 

USER_OBJECT_
S_cairo_status_to_string(USER_OBJECT_ s_status)
{
  cairo_status_t status = ((cairo_status_t)asCEnum(s_status, CAIRO_TYPE_STATUS));

  const char* ans;
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  ans = cairo_status_to_string(status);

  _result = asRString(ans);

  return(_result);
}
 

USER_OBJECT_
S_cairo_surface_create_similar(USER_OBJECT_ s_other, USER_OBJECT_ s_content, USER_OBJECT_ s_width, USER_OBJECT_ s_height)
{
  cairo_surface_t* other = ((cairo_surface_t*)getPtrValue(s_other));
  cairo_content_t content = ((cairo_content_t)asCEnum(s_content, CAIRO_TYPE_CONTENT));
  int width = ((int)asCInteger(s_width));
  int height = ((int)asCInteger(s_height));

  cairo_surface_t* ans;
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  ans = cairo_surface_create_similar(other, content, width, height);

  _result = toRPointerWithFinalizer(ans, "CairoSurface", (RPointerFinalizer) cairo_surface_destroy);

  return(_result);
}
 

USER_OBJECT_
S_cairo_surface_reference(USER_OBJECT_ s_surface)
{
  cairo_surface_t* surface = ((cairo_surface_t*)getPtrValue(s_surface));

  cairo_surface_t* ans;
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  ans = cairo_surface_reference(surface);

  _result = toRPointerWithCairoRef(ans, "CairoSurface", cairo_surface);

  return(_result);
}
 

USER_OBJECT_
S_cairo_surface_destroy(USER_OBJECT_ s_surface)
{
  cairo_surface_t* surface = ((cairo_surface_t*)getPtrValue(s_surface));

  USER_OBJECT_ _result = NULL_USER_OBJECT;

  cairo_surface_destroy(surface);


  return(_result);
}
 

USER_OBJECT_
S_cairo_surface_finish(USER_OBJECT_ s_surface)
{
  cairo_surface_t* surface = ((cairo_surface_t*)getPtrValue(s_surface));

  USER_OBJECT_ _result = NULL_USER_OBJECT;

  cairo_surface_finish(surface);


  return(_result);
}
 

USER_OBJECT_
S_cairo_surface_write_to_png(USER_OBJECT_ s_surface, USER_OBJECT_ s_filename)
{
  cairo_surface_t* surface = ((cairo_surface_t*)getPtrValue(s_surface));
  const char* filename = ((const char*)asCString(s_filename));

  cairo_status_t ans;
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  ans = cairo_surface_write_to_png(surface, filename);

  _result = asREnum(ans, CAIRO_TYPE_STATUS);

  return(_result);
}
 

USER_OBJECT_
S_cairo_surface_write_to_png_stream(USER_OBJECT_ s_surface, USER_OBJECT_ s_write_func, USER_OBJECT_ s_closure)
{
  cairo_write_func_t write_func = ((cairo_write_func_t)S_cairo_write_func_t);
  R_CallbackData* closure = R_createCBData(s_write_func, s_closure);
  cairo_surface_t* surface = ((cairo_surface_t*)getPtrValue(s_surface));

  cairo_status_t ans;
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  ans = cairo_surface_write_to_png_stream(surface, write_func, closure);

  _result = asREnum(ans, CAIRO_TYPE_STATUS);
  R_freeCBData(closure);

  return(_result);
}
 

USER_OBJECT_
S_cairo_surface_get_user_data(USER_OBJECT_ s_surface, USER_OBJECT_ s_key)
{
  cairo_surface_t* surface = ((cairo_surface_t*)getPtrValue(s_surface));
  const cairo_user_data_key_t* key = ((const cairo_user_data_key_t*)getPtrValue(s_key));

  gpointer ans;
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  ans = cairo_surface_get_user_data(surface, key);

  _result = ans;

  return(_result);
}
 

USER_OBJECT_
S_cairo_surface_set_user_data(USER_OBJECT_ s_surface, USER_OBJECT_ s_key, USER_OBJECT_ s_user_data)
{
  cairo_surface_t* surface = ((cairo_surface_t*)getPtrValue(s_surface));
  const cairo_user_data_key_t* key = ((const cairo_user_data_key_t*)getPtrValue(s_key));
  gpointer user_data = ((gpointer)asCGenericData(s_user_data));
  cairo_destroy_func_t destroy = ((cairo_destroy_func_t)R_ReleaseObject);

  cairo_status_t ans;
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  ans = cairo_surface_set_user_data(surface, key, user_data, destroy);

  _result = asREnum(ans, CAIRO_TYPE_STATUS);

  return(_result);
}
 

USER_OBJECT_
S_cairo_surface_flush(USER_OBJECT_ s_surface)
{
  cairo_surface_t* surface = ((cairo_surface_t*)getPtrValue(s_surface));

  USER_OBJECT_ _result = NULL_USER_OBJECT;

  cairo_surface_flush(surface);


  return(_result);
}
 

USER_OBJECT_
S_cairo_surface_mark_dirty(USER_OBJECT_ s_surface)
{
  cairo_surface_t* surface = ((cairo_surface_t*)getPtrValue(s_surface));

  USER_OBJECT_ _result = NULL_USER_OBJECT;

  cairo_surface_mark_dirty(surface);


  return(_result);
}
 

USER_OBJECT_
S_cairo_surface_mark_dirty_rectangle(USER_OBJECT_ s_surface, USER_OBJECT_ s_x, USER_OBJECT_ s_y, USER_OBJECT_ s_width, USER_OBJECT_ s_height)
{
  cairo_surface_t* surface = ((cairo_surface_t*)getPtrValue(s_surface));
  int x = ((int)asCInteger(s_x));
  int y = ((int)asCInteger(s_y));
  int width = ((int)asCInteger(s_width));
  int height = ((int)asCInteger(s_height));

  USER_OBJECT_ _result = NULL_USER_OBJECT;

  cairo_surface_mark_dirty_rectangle(surface, x, y, width, height);


  return(_result);
}
 

USER_OBJECT_
S_cairo_surface_set_device_offset(USER_OBJECT_ s_surface, USER_OBJECT_ s_x_offset, USER_OBJECT_ s_y_offset)
{
  cairo_surface_t* surface = ((cairo_surface_t*)getPtrValue(s_surface));
  double x_offset = ((double)asCNumeric(s_x_offset));
  double y_offset = ((double)asCNumeric(s_y_offset));

  USER_OBJECT_ _result = NULL_USER_OBJECT;

  cairo_surface_set_device_offset(surface, x_offset, y_offset);


  return(_result);
}
 

USER_OBJECT_
S_cairo_surface_get_font_options(USER_OBJECT_ s_surface)
{
  cairo_surface_t* surface = ((cairo_surface_t*)getPtrValue(s_surface));

  USER_OBJECT_ _result = NULL_USER_OBJECT;
  cairo_font_options_t* options = cairo_font_options_create();

  cairo_surface_get_font_options(surface, options);


  _result = retByVal(_result, "options", toRPointerWithFinalizer(options, "CairoFontOptions", (RPointerFinalizer) cairo_font_options_destroy), NULL);

  return(_result);
}
 

USER_OBJECT_
S_cairo_surface_status(USER_OBJECT_ s_surface)
{
  cairo_surface_t* surface = ((cairo_surface_t*)getPtrValue(s_surface));

  cairo_status_t ans;
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  ans = cairo_surface_status(surface);

  _result = asREnum(ans, CAIRO_TYPE_STATUS);

  return(_result);
}
 

USER_OBJECT_
S_cairo_image_surface_create(USER_OBJECT_ s_format, USER_OBJECT_ s_width, USER_OBJECT_ s_height)
{
  cairo_format_t format = ((cairo_format_t)asCEnum(s_format, CAIRO_TYPE_FORMAT));
  int width = ((int)asCInteger(s_width));
  int height = ((int)asCInteger(s_height));

  cairo_surface_t* ans;
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  ans = cairo_image_surface_create(format, width, height);

  _result = toRPointerWithFinalizer(ans, "CairoSurface", (RPointerFinalizer) cairo_surface_destroy);

  return(_result);
}
 

USER_OBJECT_
S_cairo_image_surface_create_for_data(USER_OBJECT_ s_data, USER_OBJECT_ s_format, USER_OBJECT_ s_width, USER_OBJECT_ s_height, USER_OBJECT_ s_stride)
{
  guchar* data = ((guchar*)asCArray(s_data, guchar, asCRaw));
  cairo_format_t format = ((cairo_format_t)asCEnum(s_format, CAIRO_TYPE_FORMAT));
  int width = ((int)asCInteger(s_width));
  int height = ((int)asCInteger(s_height));
  int stride = ((int)asCInteger(s_stride));

  cairo_surface_t* ans;
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  ans = cairo_image_surface_create_for_data(data, format, width, height, stride);

  _result = toRPointerWithFinalizer(ans, "CairoSurface", (RPointerFinalizer) cairo_surface_destroy);

  return(_result);
}
 

USER_OBJECT_
S_cairo_image_surface_get_width(USER_OBJECT_ s_surface)
{
  cairo_surface_t* surface = ((cairo_surface_t*)getPtrValue(s_surface));

  int ans;
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  ans = cairo_image_surface_get_width(surface);

  _result = asRInteger(ans);

  return(_result);
}
 

USER_OBJECT_
S_cairo_image_surface_get_height(USER_OBJECT_ s_surface)
{
  cairo_surface_t* surface = ((cairo_surface_t*)getPtrValue(s_surface));

  int ans;
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  ans = cairo_image_surface_get_height(surface);

  _result = asRInteger(ans);

  return(_result);
}
 

USER_OBJECT_
S_cairo_image_surface_create_from_png(USER_OBJECT_ s_filename)
{
  const char* filename = ((const char*)asCString(s_filename));

  cairo_surface_t* ans;
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  ans = cairo_image_surface_create_from_png(filename);

  _result = toRPointerWithFinalizer(ans, "CairoSurface", (RPointerFinalizer) cairo_surface_destroy);

  return(_result);
}
 

USER_OBJECT_
S_cairo_image_surface_create_from_png_stream(USER_OBJECT_ s_read_func, USER_OBJECT_ s_closure)
{
  cairo_read_func_t read_func = ((cairo_read_func_t)S_cairo_read_func_t);
  R_CallbackData* closure = R_createCBData(s_read_func, s_closure);

  cairo_surface_t* ans;
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  ans = cairo_image_surface_create_from_png_stream(read_func, closure);

  _result = toRPointerWithFinalizer(ans, "CairoSurface", (RPointerFinalizer) cairo_surface_destroy);
  R_freeCBData(closure);

  return(_result);
}
 

USER_OBJECT_
S_cairo_pattern_create_rgb(USER_OBJECT_ s_red, USER_OBJECT_ s_green, USER_OBJECT_ s_blue)
{
  double red = ((double)asCNumeric(s_red));
  double green = ((double)asCNumeric(s_green));
  double blue = ((double)asCNumeric(s_blue));

  cairo_pattern_t* ans;
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  ans = cairo_pattern_create_rgb(red, green, blue);

  _result = toRPointerWithFinalizer(ans, "CairoPattern", (RPointerFinalizer) cairo_pattern_destroy);

  return(_result);
}
 

USER_OBJECT_
S_cairo_pattern_create_rgba(USER_OBJECT_ s_red, USER_OBJECT_ s_green, USER_OBJECT_ s_blue, USER_OBJECT_ s_alpha)
{
  double red = ((double)asCNumeric(s_red));
  double green = ((double)asCNumeric(s_green));
  double blue = ((double)asCNumeric(s_blue));
  double alpha = ((double)asCNumeric(s_alpha));

  cairo_pattern_t* ans;
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  ans = cairo_pattern_create_rgba(red, green, blue, alpha);

  _result = toRPointerWithFinalizer(ans, "CairoPattern", (RPointerFinalizer) cairo_pattern_destroy);

  return(_result);
}
 

USER_OBJECT_
S_cairo_pattern_create_for_surface(USER_OBJECT_ s_surface)
{
  cairo_surface_t* surface = ((cairo_surface_t*)getPtrValue(s_surface));

  cairo_pattern_t* ans;
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  ans = cairo_pattern_create_for_surface(surface);

  _result = toRPointerWithFinalizer(ans, "CairoPattern", (RPointerFinalizer) cairo_pattern_destroy);

  return(_result);
}
 

USER_OBJECT_
S_cairo_pattern_create_linear(USER_OBJECT_ s_x0, USER_OBJECT_ s_y0, USER_OBJECT_ s_x1, USER_OBJECT_ s_y1)
{
  double x0 = ((double)asCNumeric(s_x0));
  double y0 = ((double)asCNumeric(s_y0));
  double x1 = ((double)asCNumeric(s_x1));
  double y1 = ((double)asCNumeric(s_y1));

  cairo_pattern_t* ans;
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  ans = cairo_pattern_create_linear(x0, y0, x1, y1);

  _result = toRPointerWithFinalizer(ans, "CairoPattern", (RPointerFinalizer) cairo_pattern_destroy);

  return(_result);
}
 

USER_OBJECT_
S_cairo_pattern_create_radial(USER_OBJECT_ s_cx0, USER_OBJECT_ s_cy0, USER_OBJECT_ s_radius0, USER_OBJECT_ s_cx1, USER_OBJECT_ s_cy1, USER_OBJECT_ s_radius1)
{
  double cx0 = ((double)asCNumeric(s_cx0));
  double cy0 = ((double)asCNumeric(s_cy0));
  double radius0 = ((double)asCNumeric(s_radius0));
  double cx1 = ((double)asCNumeric(s_cx1));
  double cy1 = ((double)asCNumeric(s_cy1));
  double radius1 = ((double)asCNumeric(s_radius1));

  cairo_pattern_t* ans;
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  ans = cairo_pattern_create_radial(cx0, cy0, radius0, cx1, cy1, radius1);

  _result = toRPointerWithFinalizer(ans, "CairoPattern", (RPointerFinalizer) cairo_pattern_destroy);

  return(_result);
}
 

USER_OBJECT_
S_cairo_pattern_reference(USER_OBJECT_ s_pattern)
{
  cairo_pattern_t* pattern = ((cairo_pattern_t*)getPtrValue(s_pattern));

  cairo_pattern_t* ans;
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  ans = cairo_pattern_reference(pattern);

  _result = toRPointerWithCairoRef(ans, "CairoPattern", cairo_pattern);

  return(_result);
}
 

USER_OBJECT_
S_cairo_pattern_destroy(USER_OBJECT_ s_pattern)
{
  cairo_pattern_t* pattern = ((cairo_pattern_t*)getPtrValue(s_pattern));

  USER_OBJECT_ _result = NULL_USER_OBJECT;

  cairo_pattern_destroy(pattern);


  return(_result);
}
 

USER_OBJECT_
S_cairo_pattern_status(USER_OBJECT_ s_pattern)
{
  cairo_pattern_t* pattern = ((cairo_pattern_t*)getPtrValue(s_pattern));

  cairo_status_t ans;
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  ans = cairo_pattern_status(pattern);

  _result = asREnum(ans, CAIRO_TYPE_STATUS);

  return(_result);
}
 

USER_OBJECT_
S_cairo_pattern_add_color_stop_rgb(USER_OBJECT_ s_pattern, USER_OBJECT_ s_offset, USER_OBJECT_ s_red, USER_OBJECT_ s_green, USER_OBJECT_ s_blue)
{
  cairo_pattern_t* pattern = ((cairo_pattern_t*)getPtrValue(s_pattern));
  double offset = ((double)asCNumeric(s_offset));
  double red = ((double)asCNumeric(s_red));
  double green = ((double)asCNumeric(s_green));
  double blue = ((double)asCNumeric(s_blue));

  USER_OBJECT_ _result = NULL_USER_OBJECT;

  cairo_pattern_add_color_stop_rgb(pattern, offset, red, green, blue);


  return(_result);
}
 

USER_OBJECT_
S_cairo_pattern_add_color_stop_rgba(USER_OBJECT_ s_pattern, USER_OBJECT_ s_offset, USER_OBJECT_ s_red, USER_OBJECT_ s_green, USER_OBJECT_ s_blue, USER_OBJECT_ s_alpha)
{
  cairo_pattern_t* pattern = ((cairo_pattern_t*)getPtrValue(s_pattern));
  double offset = ((double)asCNumeric(s_offset));
  double red = ((double)asCNumeric(s_red));
  double green = ((double)asCNumeric(s_green));
  double blue = ((double)asCNumeric(s_blue));
  double alpha = ((double)asCNumeric(s_alpha));

  USER_OBJECT_ _result = NULL_USER_OBJECT;

  cairo_pattern_add_color_stop_rgba(pattern, offset, red, green, blue, alpha);


  return(_result);
}
 

USER_OBJECT_
S_cairo_pattern_set_matrix(USER_OBJECT_ s_pattern, USER_OBJECT_ s_matrix)
{
  cairo_pattern_t* pattern = ((cairo_pattern_t*)getPtrValue(s_pattern));
  const cairo_matrix_t* matrix = ((const cairo_matrix_t*)getPtrValue(s_matrix));

  USER_OBJECT_ _result = NULL_USER_OBJECT;

  cairo_pattern_set_matrix(pattern, matrix);


  return(_result);
}
 

USER_OBJECT_
S_cairo_pattern_get_matrix(USER_OBJECT_ s_pattern, USER_OBJECT_ s_matrix)
{
  cairo_pattern_t* pattern = ((cairo_pattern_t*)getPtrValue(s_pattern));
  cairo_matrix_t* matrix = ((cairo_matrix_t*)getPtrValue(s_matrix));

  USER_OBJECT_ _result = NULL_USER_OBJECT;

  cairo_pattern_get_matrix(pattern, matrix);


  return(_result);
}
 

USER_OBJECT_
S_cairo_pattern_set_extend(USER_OBJECT_ s_pattern, USER_OBJECT_ s_extend)
{
  cairo_pattern_t* pattern = ((cairo_pattern_t*)getPtrValue(s_pattern));
  cairo_extend_t extend = ((cairo_extend_t)asCEnum(s_extend, CAIRO_TYPE_EXTEND));

  USER_OBJECT_ _result = NULL_USER_OBJECT;

  cairo_pattern_set_extend(pattern, extend);


  return(_result);
}
 

USER_OBJECT_
S_cairo_pattern_get_extend(USER_OBJECT_ s_pattern)
{
  cairo_pattern_t* pattern = ((cairo_pattern_t*)getPtrValue(s_pattern));

  cairo_extend_t ans;
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  ans = cairo_pattern_get_extend(pattern);

  _result = asREnum(ans, CAIRO_TYPE_EXTEND);

  return(_result);
}
 

USER_OBJECT_
S_cairo_pattern_set_filter(USER_OBJECT_ s_pattern, USER_OBJECT_ s_filter)
{
  cairo_pattern_t* pattern = ((cairo_pattern_t*)getPtrValue(s_pattern));
  cairo_filter_t filter = ((cairo_filter_t)asCEnum(s_filter, CAIRO_TYPE_FILTER));

  USER_OBJECT_ _result = NULL_USER_OBJECT;

  cairo_pattern_set_filter(pattern, filter);


  return(_result);
}
 

USER_OBJECT_
S_cairo_pattern_get_filter(USER_OBJECT_ s_pattern)
{
  cairo_pattern_t* pattern = ((cairo_pattern_t*)getPtrValue(s_pattern));

  cairo_filter_t ans;
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  ans = cairo_pattern_get_filter(pattern);

  _result = asREnum(ans, CAIRO_TYPE_FILTER);

  return(_result);
}
 

USER_OBJECT_
S_cairo_matrix_init(USER_OBJECT_ s_xx, USER_OBJECT_ s_yx, USER_OBJECT_ s_xy, USER_OBJECT_ s_yy, USER_OBJECT_ s_x0, USER_OBJECT_ s_y0)
{
  double xx = ((double)asCNumeric(s_xx));
  double yx = ((double)asCNumeric(s_yx));
  double xy = ((double)asCNumeric(s_xy));
  double yy = ((double)asCNumeric(s_yy));
  double x0 = ((double)asCNumeric(s_x0));
  double y0 = ((double)asCNumeric(s_y0));

  USER_OBJECT_ _result = NULL_USER_OBJECT;
  cairo_matrix_t* matrix = ((cairo_matrix_t *)g_new0(cairo_matrix_t, 1));

  cairo_matrix_init(matrix, xx, yx, xy, yy, x0, y0);


  _result = retByVal(_result, "matrix", toRPointerWithFinalizer(matrix, "CairoMatrix", (RPointerFinalizer) g_free), NULL);

  return(_result);
}
 

USER_OBJECT_
S_cairo_matrix_init_identity(void)
{

  USER_OBJECT_ _result = NULL_USER_OBJECT;
  cairo_matrix_t* matrix = ((cairo_matrix_t *)g_new0(cairo_matrix_t, 1));

  cairo_matrix_init_identity(matrix);


  _result = retByVal(_result, "matrix", toRPointerWithFinalizer(matrix, "CairoMatrix", (RPointerFinalizer) g_free), NULL);

  return(_result);
}
 

USER_OBJECT_
S_cairo_matrix_init_translate(USER_OBJECT_ s_tx, USER_OBJECT_ s_ty)
{
  double tx = ((double)asCNumeric(s_tx));
  double ty = ((double)asCNumeric(s_ty));

  USER_OBJECT_ _result = NULL_USER_OBJECT;
  cairo_matrix_t* matrix = ((cairo_matrix_t *)g_new0(cairo_matrix_t, 1));

  cairo_matrix_init_translate(matrix, tx, ty);


  _result = retByVal(_result, "matrix", toRPointerWithFinalizer(matrix, "CairoMatrix", (RPointerFinalizer) g_free), NULL);

  return(_result);
}
 

USER_OBJECT_
S_cairo_matrix_init_scale(USER_OBJECT_ s_sx, USER_OBJECT_ s_sy)
{
  double sx = ((double)asCNumeric(s_sx));
  double sy = ((double)asCNumeric(s_sy));

  USER_OBJECT_ _result = NULL_USER_OBJECT;
  cairo_matrix_t* matrix = ((cairo_matrix_t *)g_new0(cairo_matrix_t, 1));

  cairo_matrix_init_scale(matrix, sx, sy);


  _result = retByVal(_result, "matrix", toRPointerWithFinalizer(matrix, "CairoMatrix", (RPointerFinalizer) g_free), NULL);

  return(_result);
}
 

USER_OBJECT_
S_cairo_matrix_init_rotate(USER_OBJECT_ s_radians)
{
  double radians = ((double)asCNumeric(s_radians));

  USER_OBJECT_ _result = NULL_USER_OBJECT;
  cairo_matrix_t* matrix = ((cairo_matrix_t *)g_new0(cairo_matrix_t, 1));

  cairo_matrix_init_rotate(matrix, radians);


  _result = retByVal(_result, "matrix", toRPointerWithFinalizer(matrix, "CairoMatrix", (RPointerFinalizer) g_free), NULL);

  return(_result);
}
 

USER_OBJECT_
S_cairo_matrix_translate(USER_OBJECT_ s_matrix, USER_OBJECT_ s_tx, USER_OBJECT_ s_ty)
{
  cairo_matrix_t* matrix = ((cairo_matrix_t*)getPtrValue(s_matrix));
  double tx = ((double)asCNumeric(s_tx));
  double ty = ((double)asCNumeric(s_ty));

  USER_OBJECT_ _result = NULL_USER_OBJECT;

  cairo_matrix_translate(matrix, tx, ty);


  return(_result);
}
 

USER_OBJECT_
S_cairo_matrix_scale(USER_OBJECT_ s_matrix, USER_OBJECT_ s_sx, USER_OBJECT_ s_sy)
{
  cairo_matrix_t* matrix = ((cairo_matrix_t*)getPtrValue(s_matrix));
  double sx = ((double)asCNumeric(s_sx));
  double sy = ((double)asCNumeric(s_sy));

  USER_OBJECT_ _result = NULL_USER_OBJECT;

  cairo_matrix_scale(matrix, sx, sy);


  return(_result);
}
 

USER_OBJECT_
S_cairo_matrix_rotate(USER_OBJECT_ s_matrix, USER_OBJECT_ s_radians)
{
  cairo_matrix_t* matrix = ((cairo_matrix_t*)getPtrValue(s_matrix));
  double radians = ((double)asCNumeric(s_radians));

  USER_OBJECT_ _result = NULL_USER_OBJECT;

  cairo_matrix_rotate(matrix, radians);


  return(_result);
}
 

USER_OBJECT_
S_cairo_matrix_invert(USER_OBJECT_ s_matrix)
{
  cairo_matrix_t* matrix = ((cairo_matrix_t*)getPtrValue(s_matrix));

  cairo_status_t ans;
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  ans = cairo_matrix_invert(matrix);

  _result = asREnum(ans, CAIRO_TYPE_STATUS);

  return(_result);
}
 

USER_OBJECT_
S_cairo_matrix_multiply(USER_OBJECT_ s_result, USER_OBJECT_ s_a, USER_OBJECT_ s_b)
{
  cairo_matrix_t* result = ((cairo_matrix_t*)getPtrValue(s_result));
  const cairo_matrix_t* a = ((const cairo_matrix_t*)getPtrValue(s_a));
  const cairo_matrix_t* b = ((const cairo_matrix_t*)getPtrValue(s_b));

  USER_OBJECT_ _result = NULL_USER_OBJECT;

  cairo_matrix_multiply(result, a, b);


  return(_result);
}
 

USER_OBJECT_
S_cairo_matrix_transform_distance(USER_OBJECT_ s_matrix, USER_OBJECT_ s_dx, USER_OBJECT_ s_dy)
{
  const cairo_matrix_t* matrix = ((const cairo_matrix_t*)getPtrValue(s_matrix));
  double* dx = ((double*)asCArray(s_dx, double, asCNumeric));
  double* dy = ((double*)asCArray(s_dy, double, asCNumeric));

  USER_OBJECT_ _result = NULL_USER_OBJECT;

  cairo_matrix_transform_distance(matrix, dx, dy);


  return(_result);
}
 

USER_OBJECT_
S_cairo_matrix_transform_point(USER_OBJECT_ s_matrix, USER_OBJECT_ s_x, USER_OBJECT_ s_y)
{
  const cairo_matrix_t* matrix = ((const cairo_matrix_t*)getPtrValue(s_matrix));
  double* x = ((double*)asCArray(s_x, double, asCNumeric));
  double* y = ((double*)asCArray(s_y, double, asCNumeric));

  USER_OBJECT_ _result = NULL_USER_OBJECT;

  cairo_matrix_transform_point(matrix, x, y);


  return(_result);
}
 

USER_OBJECT_
S_cairo_font_options_create(void)
{

  cairo_font_options_t* ans;
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  ans = cairo_font_options_create();

  _result = toRPointerWithFinalizer(ans, "CairoFontOptions", (RPointerFinalizer) cairo_font_options_destroy);

  return(_result);
}
 

USER_OBJECT_
S_cairo_font_options_copy(USER_OBJECT_ s_original)
{
  const cairo_font_options_t* original = ((const cairo_font_options_t*)getPtrValue(s_original));

  cairo_font_options_t* ans;
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  ans = cairo_font_options_copy(original);

  _result = toRPointerWithFinalizer(ans, "CairoFontOptions", (RPointerFinalizer) cairo_font_options_destroy);

  return(_result);
}
 

USER_OBJECT_
S_cairo_font_options_destroy(USER_OBJECT_ s_options)
{
  cairo_font_options_t* options = ((cairo_font_options_t*)getPtrValue(s_options));

  USER_OBJECT_ _result = NULL_USER_OBJECT;

  cairo_font_options_destroy(options);


  return(_result);
}
 

USER_OBJECT_
S_cairo_font_options_status(USER_OBJECT_ s_options)
{
  cairo_font_options_t* options = ((cairo_font_options_t*)getPtrValue(s_options));

  cairo_status_t ans;
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  ans = cairo_font_options_status(options);

  _result = asREnum(ans, CAIRO_TYPE_STATUS);

  return(_result);
}
 

USER_OBJECT_
S_cairo_font_options_merge(USER_OBJECT_ s_options, USER_OBJECT_ s_other)
{
  cairo_font_options_t* options = ((cairo_font_options_t*)getPtrValue(s_options));
  const cairo_font_options_t* other = ((const cairo_font_options_t*)getPtrValue(s_other));

  USER_OBJECT_ _result = NULL_USER_OBJECT;

  cairo_font_options_merge(options, other);


  return(_result);
}
 

USER_OBJECT_
S_cairo_font_options_equal(USER_OBJECT_ s_options, USER_OBJECT_ s_other)
{
  const cairo_font_options_t* options = ((const cairo_font_options_t*)getPtrValue(s_options));
  const cairo_font_options_t* other = ((const cairo_font_options_t*)getPtrValue(s_other));

  gboolean ans;
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  ans = cairo_font_options_equal(options, other);

  _result = asRLogical(ans);

  return(_result);
}
 

USER_OBJECT_
S_cairo_font_options_set_antialias(USER_OBJECT_ s_options, USER_OBJECT_ s_antialias)
{
  cairo_font_options_t* options = ((cairo_font_options_t*)getPtrValue(s_options));
  cairo_antialias_t antialias = ((cairo_antialias_t)asCEnum(s_antialias, CAIRO_TYPE_ANTIALIAS));

  USER_OBJECT_ _result = NULL_USER_OBJECT;

  cairo_font_options_set_antialias(options, antialias);


  return(_result);
}
 

USER_OBJECT_
S_cairo_font_options_get_antialias(USER_OBJECT_ s_options)
{
  const cairo_font_options_t* options = ((const cairo_font_options_t*)getPtrValue(s_options));

  cairo_antialias_t ans;
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  ans = cairo_font_options_get_antialias(options);

  _result = asREnum(ans, CAIRO_TYPE_ANTIALIAS);

  return(_result);
}
 

USER_OBJECT_
S_cairo_font_options_set_subpixel_order(USER_OBJECT_ s_options, USER_OBJECT_ s_subpixel_order)
{
  cairo_font_options_t* options = ((cairo_font_options_t*)getPtrValue(s_options));
  cairo_subpixel_order_t subpixel_order = ((cairo_subpixel_order_t)asCEnum(s_subpixel_order, CAIRO_TYPE_SUBPIXEL_ORDER));

  USER_OBJECT_ _result = NULL_USER_OBJECT;

  cairo_font_options_set_subpixel_order(options, subpixel_order);


  return(_result);
}
 

USER_OBJECT_
S_cairo_font_options_get_subpixel_order(USER_OBJECT_ s_options)
{
  const cairo_font_options_t* options = ((const cairo_font_options_t*)getPtrValue(s_options));

  cairo_subpixel_order_t ans;
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  ans = cairo_font_options_get_subpixel_order(options);

  _result = asREnum(ans, CAIRO_TYPE_SUBPIXEL_ORDER);

  return(_result);
}
 

USER_OBJECT_
S_cairo_font_options_set_hint_style(USER_OBJECT_ s_options, USER_OBJECT_ s_hint_style)
{
  cairo_font_options_t* options = ((cairo_font_options_t*)getPtrValue(s_options));
  cairo_hint_style_t hint_style = ((cairo_hint_style_t)asCEnum(s_hint_style, CAIRO_TYPE_HINT_STYLE));

  USER_OBJECT_ _result = NULL_USER_OBJECT;

  cairo_font_options_set_hint_style(options, hint_style);


  return(_result);
}
 

USER_OBJECT_
S_cairo_font_options_get_hint_style(USER_OBJECT_ s_options)
{
  const cairo_font_options_t* options = ((const cairo_font_options_t*)getPtrValue(s_options));

  cairo_hint_style_t ans;
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  ans = cairo_font_options_get_hint_style(options);

  _result = asREnum(ans, CAIRO_TYPE_HINT_STYLE);

  return(_result);
}
 

USER_OBJECT_
S_cairo_font_options_set_hint_metrics(USER_OBJECT_ s_options, USER_OBJECT_ s_hint_metrics)
{
  cairo_font_options_t* options = ((cairo_font_options_t*)getPtrValue(s_options));
  cairo_hint_metrics_t hint_metrics = ((cairo_hint_metrics_t)asCEnum(s_hint_metrics, CAIRO_TYPE_HINT_METRICS));

  USER_OBJECT_ _result = NULL_USER_OBJECT;

  cairo_font_options_set_hint_metrics(options, hint_metrics);


  return(_result);
}
 

USER_OBJECT_
S_cairo_font_options_get_hint_metrics(USER_OBJECT_ s_options)
{
  const cairo_font_options_t* options = ((const cairo_font_options_t*)getPtrValue(s_options));

  cairo_hint_metrics_t ans;
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  ans = cairo_font_options_get_hint_metrics(options);

  _result = asREnum(ans, CAIRO_TYPE_HINT_METRICS);

  return(_result);
}
 

USER_OBJECT_
S_cairo_push_group(USER_OBJECT_ s_cr)
{
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));

  USER_OBJECT_ _result = NULL_USER_OBJECT;

  cairo_push_group(cr);


  return(_result);
}
 

USER_OBJECT_
S_cairo_push_group_with_content(USER_OBJECT_ s_cr, USER_OBJECT_ s_content)
{
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));
  cairo_content_t content = ((cairo_content_t)asCEnum(s_content, CAIRO_TYPE_CONTENT));

  USER_OBJECT_ _result = NULL_USER_OBJECT;

  cairo_push_group_with_content(cr, content);


  return(_result);
}
 

USER_OBJECT_
S_cairo_pop_group(USER_OBJECT_ s_cr)
{
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));

  cairo_pattern_t* ans;
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  ans = cairo_pop_group(cr);

  _result = toRPointerWithCairoRef(ans, "CairoPattern", cairo_pattern);

  return(_result);
}
 

USER_OBJECT_
S_cairo_pop_group_to_source(USER_OBJECT_ s_cr)
{
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));

  USER_OBJECT_ _result = NULL_USER_OBJECT;

  cairo_pop_group_to_source(cr);


  return(_result);
}
 

USER_OBJECT_
S_cairo_get_group_target(USER_OBJECT_ s_cr)
{
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));

  cairo_surface_t* ans;
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  ans = cairo_get_group_target(cr);

  _result = toRPointerWithCairoRef(ans, "CairoSurface", cairo_surface);

  return(_result);
}
 

USER_OBJECT_
S_cairo_new_sub_path(USER_OBJECT_ s_cr)
{
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));

  USER_OBJECT_ _result = NULL_USER_OBJECT;

  cairo_new_sub_path(cr);


  return(_result);
}
 

USER_OBJECT_
S_cairo_scaled_font_get_font_face(USER_OBJECT_ s_scaled_font)
{
  cairo_scaled_font_t* scaled_font = ((cairo_scaled_font_t*)getPtrValue(s_scaled_font));

  cairo_font_face_t* ans;
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  ans = cairo_scaled_font_get_font_face(scaled_font);

  _result = toRPointerWithCairoRef(ans, "CairoFontFace", cairo_font_face);

  return(_result);
}
 

USER_OBJECT_
S_cairo_scaled_font_get_font_matrix(USER_OBJECT_ s_scaled_font)
{
  cairo_scaled_font_t* scaled_font = ((cairo_scaled_font_t*)getPtrValue(s_scaled_font));

  USER_OBJECT_ _result = NULL_USER_OBJECT;
  cairo_matrix_t* font_matrix = ((cairo_matrix_t *)g_new0(cairo_matrix_t, 1));

  cairo_scaled_font_get_font_matrix(scaled_font, font_matrix);


  _result = retByVal(_result, "font_matrix", toRPointerWithFinalizer(font_matrix, "CairoMatrix", (RPointerFinalizer) g_free), NULL);

  return(_result);
}
 

USER_OBJECT_
S_cairo_scaled_font_get_ctm(USER_OBJECT_ s_scaled_font)
{
  cairo_scaled_font_t* scaled_font = ((cairo_scaled_font_t*)getPtrValue(s_scaled_font));

  USER_OBJECT_ _result = NULL_USER_OBJECT;
  cairo_matrix_t* ctm = ((cairo_matrix_t *)g_new0(cairo_matrix_t, 1));

  cairo_scaled_font_get_ctm(scaled_font, ctm);


  _result = retByVal(_result, "ctm", toRPointerWithFinalizer(ctm, "CairoMatrix", (RPointerFinalizer) g_free), NULL);

  return(_result);
}
 

