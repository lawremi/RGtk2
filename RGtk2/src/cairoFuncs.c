#include <RGtk2/gobject.h>
#include <RGtk2/cairo.h>

#include "cairoFuncs.h"


USER_OBJECT_
S_cairo_version(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  int ans;

  ans = cairo_version();

  _result = asRInteger(ans);

  return(_result);
}
 

USER_OBJECT_
S_cairo_version_string(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  const char* ans;

  ans = cairo_version_string();

  _result = asRString(ans);

  return(_result);
}
 

USER_OBJECT_
S_cairo_create(USER_OBJECT_ s_target)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  cairo_surface_t* target = ((cairo_surface_t*)getPtrValue(s_target));

  cairo_t* ans;

  ans = cairo_create(target);

  _result = toRPointerWithFinalizer(ans, "Cairo", (RPointerFinalizer) cairo_destroy);

  return(_result);
}
 

USER_OBJECT_
S_cairo_reference(USER_OBJECT_ s_cr)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));

  cairo_t* ans;

  ans = cairo_reference(cr);

  _result = toRPointerWithCairoRef(ans, "Cairo", cairo);

  return(_result);
}
 

USER_OBJECT_
S_cairo_destroy(USER_OBJECT_ s_cr)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));


  cairo_destroy(cr);


  return(_result);
}
 

USER_OBJECT_
S_cairo_save(USER_OBJECT_ s_cr)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));


  cairo_save(cr);


  return(_result);
}
 

USER_OBJECT_
S_cairo_restore(USER_OBJECT_ s_cr)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));


  cairo_restore(cr);


  return(_result);
}
 

USER_OBJECT_
S_cairo_set_operator(USER_OBJECT_ s_cr, USER_OBJECT_ s_op)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));
  cairo_operator_t op = ((cairo_operator_t)asCEnum(s_op, CAIRO_TYPE_OPERATOR));


  cairo_set_operator(cr, op);


  return(_result);
}
 

USER_OBJECT_
S_cairo_set_source(USER_OBJECT_ s_cr, USER_OBJECT_ s_source)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));
  cairo_pattern_t* source = ((cairo_pattern_t*)getPtrValue(s_source));


  cairo_set_source(cr, source);


  return(_result);
}
 

USER_OBJECT_
S_cairo_set_source_rgb(USER_OBJECT_ s_cr, USER_OBJECT_ s_red, USER_OBJECT_ s_green, USER_OBJECT_ s_blue)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));
  double red = ((double)asCNumeric(s_red));
  double green = ((double)asCNumeric(s_green));
  double blue = ((double)asCNumeric(s_blue));


  cairo_set_source_rgb(cr, red, green, blue);


  return(_result);
}
 

USER_OBJECT_
S_cairo_set_source_rgba(USER_OBJECT_ s_cr, USER_OBJECT_ s_red, USER_OBJECT_ s_green, USER_OBJECT_ s_blue, USER_OBJECT_ s_alpha)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));
  double red = ((double)asCNumeric(s_red));
  double green = ((double)asCNumeric(s_green));
  double blue = ((double)asCNumeric(s_blue));
  double alpha = ((double)asCNumeric(s_alpha));


  cairo_set_source_rgba(cr, red, green, blue, alpha);


  return(_result);
}
 

USER_OBJECT_
S_cairo_set_source_surface(USER_OBJECT_ s_cr, USER_OBJECT_ s_surface, USER_OBJECT_ s_x, USER_OBJECT_ s_y)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));
  cairo_surface_t* surface = ((cairo_surface_t*)getPtrValue(s_surface));
  double x = ((double)asCNumeric(s_x));
  double y = ((double)asCNumeric(s_y));


  cairo_set_source_surface(cr, surface, x, y);


  return(_result);
}
 

USER_OBJECT_
S_cairo_set_tolerance(USER_OBJECT_ s_cr, USER_OBJECT_ s_tolerance)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));
  double tolerance = ((double)asCNumeric(s_tolerance));


  cairo_set_tolerance(cr, tolerance);


  return(_result);
}
 

USER_OBJECT_
S_cairo_set_antialias(USER_OBJECT_ s_cr, USER_OBJECT_ s_antialias)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));
  cairo_antialias_t antialias = ((cairo_antialias_t)asCEnum(s_antialias, CAIRO_TYPE_ANTIALIAS));


  cairo_set_antialias(cr, antialias);


  return(_result);
}
 

USER_OBJECT_
S_cairo_set_fill_rule(USER_OBJECT_ s_cr, USER_OBJECT_ s_fill_rule)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));
  cairo_fill_rule_t fill_rule = ((cairo_fill_rule_t)asCEnum(s_fill_rule, CAIRO_TYPE_FILL_RULE));


  cairo_set_fill_rule(cr, fill_rule);


  return(_result);
}
 

USER_OBJECT_
S_cairo_set_line_width(USER_OBJECT_ s_cr, USER_OBJECT_ s_width)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));
  double width = ((double)asCNumeric(s_width));


  cairo_set_line_width(cr, width);


  return(_result);
}
 

USER_OBJECT_
S_cairo_set_line_cap(USER_OBJECT_ s_cr, USER_OBJECT_ s_line_cap)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));
  cairo_line_cap_t line_cap = ((cairo_line_cap_t)asCEnum(s_line_cap, CAIRO_TYPE_LINE_CAP));


  cairo_set_line_cap(cr, line_cap);


  return(_result);
}
 

USER_OBJECT_
S_cairo_set_line_join(USER_OBJECT_ s_cr, USER_OBJECT_ s_line_join)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));
  cairo_line_join_t line_join = ((cairo_line_join_t)asCEnum(s_line_join, CAIRO_TYPE_LINE_JOIN));


  cairo_set_line_join(cr, line_join);


  return(_result);
}
 

USER_OBJECT_
S_cairo_set_dash(USER_OBJECT_ s_cr, USER_OBJECT_ s_dashes, USER_OBJECT_ s_offset)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));
  double* dashes = ((double*)asCArray(s_dashes, double, asCNumeric));
  int ndash = ((int)GET_LENGTH(s_dashes));
  double offset = ((double)asCNumeric(s_offset));


  cairo_set_dash(cr, dashes, ndash, offset);


  return(_result);
}
 

USER_OBJECT_
S_cairo_set_miter_limit(USER_OBJECT_ s_cr, USER_OBJECT_ s_limit)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));
  double limit = ((double)asCNumeric(s_limit));


  cairo_set_miter_limit(cr, limit);


  return(_result);
}
 

USER_OBJECT_
S_cairo_translate(USER_OBJECT_ s_cr, USER_OBJECT_ s_tx, USER_OBJECT_ s_ty)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));
  double tx = ((double)asCNumeric(s_tx));
  double ty = ((double)asCNumeric(s_ty));


  cairo_translate(cr, tx, ty);


  return(_result);
}
 

USER_OBJECT_
S_cairo_scale(USER_OBJECT_ s_cr, USER_OBJECT_ s_sx, USER_OBJECT_ s_sy)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));
  double sx = ((double)asCNumeric(s_sx));
  double sy = ((double)asCNumeric(s_sy));


  cairo_scale(cr, sx, sy);


  return(_result);
}
 

USER_OBJECT_
S_cairo_rotate(USER_OBJECT_ s_cr, USER_OBJECT_ s_angle)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));
  double angle = ((double)asCNumeric(s_angle));


  cairo_rotate(cr, angle);


  return(_result);
}
 

USER_OBJECT_
S_cairo_transform(USER_OBJECT_ s_cr, USER_OBJECT_ s_matrix)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));
  const cairo_matrix_t* matrix = ((const cairo_matrix_t*)getPtrValue(s_matrix));


  cairo_transform(cr, matrix);


  return(_result);
}
 

USER_OBJECT_
S_cairo_set_matrix(USER_OBJECT_ s_cr, USER_OBJECT_ s_matrix)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));
  const cairo_matrix_t* matrix = ((const cairo_matrix_t*)getPtrValue(s_matrix));


  cairo_set_matrix(cr, matrix);


  return(_result);
}
 

USER_OBJECT_
S_cairo_identity_matrix(USER_OBJECT_ s_cr)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));


  cairo_identity_matrix(cr);


  return(_result);
}
 

USER_OBJECT_
S_cairo_user_to_device(USER_OBJECT_ s_cr, USER_OBJECT_ s_x, USER_OBJECT_ s_y)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));
  double* x = ((double*)asCArray(s_x, double, asCNumeric));
  double* y = ((double*)asCArray(s_y, double, asCNumeric));


  cairo_user_to_device(cr, x, y);


  return(_result);
}
 

USER_OBJECT_
S_cairo_user_to_device_distance(USER_OBJECT_ s_cr, USER_OBJECT_ s_dx, USER_OBJECT_ s_dy)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));
  double* dx = ((double*)asCArray(s_dx, double, asCNumeric));
  double* dy = ((double*)asCArray(s_dy, double, asCNumeric));


  cairo_user_to_device_distance(cr, dx, dy);


  return(_result);
}
 

USER_OBJECT_
S_cairo_device_to_user(USER_OBJECT_ s_cr, USER_OBJECT_ s_x, USER_OBJECT_ s_y)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));
  double* x = ((double*)asCArray(s_x, double, asCNumeric));
  double* y = ((double*)asCArray(s_y, double, asCNumeric));


  cairo_device_to_user(cr, x, y);


  return(_result);
}
 

USER_OBJECT_
S_cairo_device_to_user_distance(USER_OBJECT_ s_cr, USER_OBJECT_ s_dx, USER_OBJECT_ s_dy)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));
  double* dx = ((double*)asCArray(s_dx, double, asCNumeric));
  double* dy = ((double*)asCArray(s_dy, double, asCNumeric));


  cairo_device_to_user_distance(cr, dx, dy);


  return(_result);
}
 

USER_OBJECT_
S_cairo_new_path(USER_OBJECT_ s_cr)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));


  cairo_new_path(cr);


  return(_result);
}
 

USER_OBJECT_
S_cairo_move_to(USER_OBJECT_ s_cr, USER_OBJECT_ s_x, USER_OBJECT_ s_y)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));
  double x = ((double)asCNumeric(s_x));
  double y = ((double)asCNumeric(s_y));


  cairo_move_to(cr, x, y);


  return(_result);
}
 

USER_OBJECT_
S_cairo_line_to(USER_OBJECT_ s_cr, USER_OBJECT_ s_x, USER_OBJECT_ s_y)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));
  double x = ((double)asCNumeric(s_x));
  double y = ((double)asCNumeric(s_y));


  cairo_line_to(cr, x, y);


  return(_result);
}
 

USER_OBJECT_
S_cairo_curve_to(USER_OBJECT_ s_cr, USER_OBJECT_ s_x1, USER_OBJECT_ s_y1, USER_OBJECT_ s_x2, USER_OBJECT_ s_y2, USER_OBJECT_ s_x3, USER_OBJECT_ s_y3)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));
  double x1 = ((double)asCNumeric(s_x1));
  double y1 = ((double)asCNumeric(s_y1));
  double x2 = ((double)asCNumeric(s_x2));
  double y2 = ((double)asCNumeric(s_y2));
  double x3 = ((double)asCNumeric(s_x3));
  double y3 = ((double)asCNumeric(s_y3));


  cairo_curve_to(cr, x1, y1, x2, y2, x3, y3);


  return(_result);
}
 

USER_OBJECT_
S_cairo_arc(USER_OBJECT_ s_cr, USER_OBJECT_ s_xc, USER_OBJECT_ s_yc, USER_OBJECT_ s_radius, USER_OBJECT_ s_angle1, USER_OBJECT_ s_angle2)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));
  double xc = ((double)asCNumeric(s_xc));
  double yc = ((double)asCNumeric(s_yc));
  double radius = ((double)asCNumeric(s_radius));
  double angle1 = ((double)asCNumeric(s_angle1));
  double angle2 = ((double)asCNumeric(s_angle2));


  cairo_arc(cr, xc, yc, radius, angle1, angle2);


  return(_result);
}
 

USER_OBJECT_
S_cairo_arc_negative(USER_OBJECT_ s_cr, USER_OBJECT_ s_xc, USER_OBJECT_ s_yc, USER_OBJECT_ s_radius, USER_OBJECT_ s_angle1, USER_OBJECT_ s_angle2)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));
  double xc = ((double)asCNumeric(s_xc));
  double yc = ((double)asCNumeric(s_yc));
  double radius = ((double)asCNumeric(s_radius));
  double angle1 = ((double)asCNumeric(s_angle1));
  double angle2 = ((double)asCNumeric(s_angle2));


  cairo_arc_negative(cr, xc, yc, radius, angle1, angle2);


  return(_result);
}
 

USER_OBJECT_
S_cairo_rel_move_to(USER_OBJECT_ s_cr, USER_OBJECT_ s_dx, USER_OBJECT_ s_dy)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));
  double dx = ((double)asCNumeric(s_dx));
  double dy = ((double)asCNumeric(s_dy));


  cairo_rel_move_to(cr, dx, dy);


  return(_result);
}
 

USER_OBJECT_
S_cairo_rel_line_to(USER_OBJECT_ s_cr, USER_OBJECT_ s_dx, USER_OBJECT_ s_dy)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));
  double dx = ((double)asCNumeric(s_dx));
  double dy = ((double)asCNumeric(s_dy));


  cairo_rel_line_to(cr, dx, dy);


  return(_result);
}
 

USER_OBJECT_
S_cairo_rel_curve_to(USER_OBJECT_ s_cr, USER_OBJECT_ s_dx1, USER_OBJECT_ s_dy1, USER_OBJECT_ s_dx2, USER_OBJECT_ s_dy2, USER_OBJECT_ s_dx3, USER_OBJECT_ s_dy3)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));
  double dx1 = ((double)asCNumeric(s_dx1));
  double dy1 = ((double)asCNumeric(s_dy1));
  double dx2 = ((double)asCNumeric(s_dx2));
  double dy2 = ((double)asCNumeric(s_dy2));
  double dx3 = ((double)asCNumeric(s_dx3));
  double dy3 = ((double)asCNumeric(s_dy3));


  cairo_rel_curve_to(cr, dx1, dy1, dx2, dy2, dx3, dy3);


  return(_result);
}
 

USER_OBJECT_
S_cairo_rectangle(USER_OBJECT_ s_cr, USER_OBJECT_ s_x, USER_OBJECT_ s_y, USER_OBJECT_ s_width, USER_OBJECT_ s_height)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));
  double x = ((double)asCNumeric(s_x));
  double y = ((double)asCNumeric(s_y));
  double width = ((double)asCNumeric(s_width));
  double height = ((double)asCNumeric(s_height));


  cairo_rectangle(cr, x, y, width, height);


  return(_result);
}
 

USER_OBJECT_
S_cairo_close_path(USER_OBJECT_ s_cr)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));


  cairo_close_path(cr);


  return(_result);
}
 

USER_OBJECT_
S_cairo_paint(USER_OBJECT_ s_cr)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));


  cairo_paint(cr);


  return(_result);
}
 

USER_OBJECT_
S_cairo_paint_with_alpha(USER_OBJECT_ s_cr, USER_OBJECT_ s_alpha)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));
  double alpha = ((double)asCNumeric(s_alpha));


  cairo_paint_with_alpha(cr, alpha);


  return(_result);
}
 

USER_OBJECT_
S_cairo_mask(USER_OBJECT_ s_cr, USER_OBJECT_ s_pattern)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));
  cairo_pattern_t* pattern = ((cairo_pattern_t*)getPtrValue(s_pattern));


  cairo_mask(cr, pattern);


  return(_result);
}
 

USER_OBJECT_
S_cairo_mask_surface(USER_OBJECT_ s_cr, USER_OBJECT_ s_surface, USER_OBJECT_ s_surface_x, USER_OBJECT_ s_surface_y)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));
  cairo_surface_t* surface = ((cairo_surface_t*)getPtrValue(s_surface));
  double surface_x = ((double)asCNumeric(s_surface_x));
  double surface_y = ((double)asCNumeric(s_surface_y));


  cairo_mask_surface(cr, surface, surface_x, surface_y);


  return(_result);
}
 

USER_OBJECT_
S_cairo_stroke(USER_OBJECT_ s_cr)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));


  cairo_stroke(cr);


  return(_result);
}
 

USER_OBJECT_
S_cairo_stroke_preserve(USER_OBJECT_ s_cr)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));


  cairo_stroke_preserve(cr);


  return(_result);
}
 

USER_OBJECT_
S_cairo_fill(USER_OBJECT_ s_cr)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));


  cairo_fill(cr);


  return(_result);
}
 

USER_OBJECT_
S_cairo_fill_preserve(USER_OBJECT_ s_cr)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));


  cairo_fill_preserve(cr);


  return(_result);
}
 

USER_OBJECT_
S_cairo_copy_page(USER_OBJECT_ s_cr)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));


  cairo_copy_page(cr);


  return(_result);
}
 

USER_OBJECT_
S_cairo_show_page(USER_OBJECT_ s_cr)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));


  cairo_show_page(cr);


  return(_result);
}
 

USER_OBJECT_
S_cairo_in_stroke(USER_OBJECT_ s_cr, USER_OBJECT_ s_x, USER_OBJECT_ s_y)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));
  double x = ((double)asCNumeric(s_x));
  double y = ((double)asCNumeric(s_y));

  gboolean ans;

  ans = cairo_in_stroke(cr, x, y);

  _result = asRLogical(ans);

  return(_result);
}
 

USER_OBJECT_
S_cairo_in_fill(USER_OBJECT_ s_cr, USER_OBJECT_ s_x, USER_OBJECT_ s_y)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));
  double x = ((double)asCNumeric(s_x));
  double y = ((double)asCNumeric(s_y));

  gboolean ans;

  ans = cairo_in_fill(cr, x, y);

  _result = asRLogical(ans);

  return(_result);
}
 

USER_OBJECT_
S_cairo_stroke_extents(USER_OBJECT_ s_cr)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));

  double x1;
  double y1;
  double x2;
  double y2;

  cairo_stroke_extents(cr, &x1, &y1, &x2, &y2);


  _result = retByVal(PROTECT(_result), "x1", PROTECT(asRNumeric(x1)), "y1", PROTECT(asRNumeric(y1)), "x2", PROTECT(asRNumeric(x2)), "y2", PROTECT(asRNumeric(y2)), NULL);
  UNPROTECT(5);
  ;
  ;
  ;
  ;

  return(_result);
}
 

USER_OBJECT_
S_cairo_fill_extents(USER_OBJECT_ s_cr)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));

  double x1;
  double y1;
  double x2;
  double y2;

  cairo_fill_extents(cr, &x1, &y1, &x2, &y2);


  _result = retByVal(PROTECT(_result), "x1", PROTECT(asRNumeric(x1)), "y1", PROTECT(asRNumeric(y1)), "x2", PROTECT(asRNumeric(x2)), "y2", PROTECT(asRNumeric(y2)), NULL);
  UNPROTECT(5);
  ;
  ;
  ;
  ;

  return(_result);
}
 

USER_OBJECT_
S_cairo_reset_clip(USER_OBJECT_ s_cr)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));


  cairo_reset_clip(cr);


  return(_result);
}
 

USER_OBJECT_
S_cairo_clip(USER_OBJECT_ s_cr)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));


  cairo_clip(cr);


  return(_result);
}
 

USER_OBJECT_
S_cairo_clip_preserve(USER_OBJECT_ s_cr)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));


  cairo_clip_preserve(cr);


  return(_result);
}
 

USER_OBJECT_
S_cairo_select_font_face(USER_OBJECT_ s_cr, USER_OBJECT_ s_family, USER_OBJECT_ s_slant, USER_OBJECT_ s_weight)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));
  const char* family = ((const char*)asCString(s_family));
  cairo_font_slant_t slant = ((cairo_font_slant_t)asCEnum(s_slant, CAIRO_TYPE_FONT_SLANT));
  cairo_font_weight_t weight = ((cairo_font_weight_t)asCEnum(s_weight, CAIRO_TYPE_FONT_WEIGHT));


  cairo_select_font_face(cr, family, slant, weight);


  return(_result);
}
 

USER_OBJECT_
S_cairo_set_font_size(USER_OBJECT_ s_cr, USER_OBJECT_ s_size)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));
  double size = ((double)asCNumeric(s_size));


  cairo_set_font_size(cr, size);


  return(_result);
}
 

USER_OBJECT_
S_cairo_set_font_matrix(USER_OBJECT_ s_cr, USER_OBJECT_ s_matrix)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));
  const cairo_matrix_t* matrix = ((const cairo_matrix_t*)getPtrValue(s_matrix));


  cairo_set_font_matrix(cr, matrix);


  return(_result);
}
 

USER_OBJECT_
S_cairo_get_font_matrix(USER_OBJECT_ s_cr, USER_OBJECT_ s_matrix)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));
  cairo_matrix_t* matrix = ((cairo_matrix_t*)getPtrValue(s_matrix));


  cairo_get_font_matrix(cr, matrix);


  return(_result);
}
 

USER_OBJECT_
S_cairo_show_text(USER_OBJECT_ s_cr, USER_OBJECT_ s_utf8)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));
  const char* utf8 = ((const char*)asCString(s_utf8));


  cairo_show_text(cr, utf8);


  return(_result);
}
 

USER_OBJECT_
S_cairo_show_glyphs(USER_OBJECT_ s_cr, USER_OBJECT_ s_glyphs, USER_OBJECT_ s_num_glyphs)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));
  cairo_glyph_t* glyphs = asCCairoGlyph(s_glyphs);
  int num_glyphs = ((int)asCInteger(s_num_glyphs));


  cairo_show_glyphs(cr, glyphs, num_glyphs);


  return(_result);
}
 

USER_OBJECT_
S_cairo_get_font_face(USER_OBJECT_ s_cr)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));

  cairo_font_face_t* ans;

  ans = cairo_get_font_face(cr);

  _result = toRPointerWithCairoRef(ans, "CairoFontFace", cairo_font_face);

  return(_result);
}
 

USER_OBJECT_
S_cairo_font_extents(USER_OBJECT_ s_cr)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));

  cairo_font_extents_t* extents = ((cairo_font_extents_t *)g_new0(cairo_font_extents_t, 1));

  cairo_font_extents(cr, extents);


  _result = retByVal(PROTECT(_result), "extents", PROTECT(asRCairoFontExtents(extents)), NULL);
  UNPROTECT(2);
    CLEANUP(g_free, extents);;

  return(_result);
}
 

USER_OBJECT_
S_cairo_set_font_face(USER_OBJECT_ s_cr, USER_OBJECT_ s_font_face)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));
  cairo_font_face_t* font_face = ((cairo_font_face_t*)getPtrValue(s_font_face));


  cairo_set_font_face(cr, font_face);


  return(_result);
}
 

USER_OBJECT_
S_cairo_text_extents(USER_OBJECT_ s_cr, USER_OBJECT_ s_utf8)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));
  const char* utf8 = ((const char*)asCString(s_utf8));

  cairo_text_extents_t* extents = ((cairo_text_extents_t *)g_new0(cairo_text_extents_t, 1));

  cairo_text_extents(cr, utf8, extents);


  _result = retByVal(PROTECT(_result), "extents", PROTECT(toRPointerWithFinalizer(extents, "CairoTextExtents", (RPointerFinalizer) g_free)), NULL);
  UNPROTECT(2);
  ;

  return(_result);
}
 

USER_OBJECT_
S_cairo_glyph_extents(USER_OBJECT_ s_cr, USER_OBJECT_ s_glyphs)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));
  cairo_glyph_t* glyphs = ((cairo_glyph_t*)asCArrayRef(s_glyphs, cairo_glyph_t, asCCairoGlyph));
  int num_glyphs = ((int)GET_LENGTH(s_glyphs));

  cairo_text_extents_t* extents = ((cairo_text_extents_t *)g_new0(cairo_text_extents_t, 1));

  cairo_glyph_extents(cr, glyphs, num_glyphs, extents);


  _result = retByVal(PROTECT(_result), "extents", PROTECT(toRPointerWithFinalizer(extents, "CairoTextExtents", (RPointerFinalizer) g_free)), NULL);
  UNPROTECT(2);
    CLEANUP(cairo_glyph_free, ((cairo_glyph_t*)glyphs));;
  ;

  return(_result);
}
 

USER_OBJECT_
S_cairo_text_path(USER_OBJECT_ s_cr, USER_OBJECT_ s_utf8)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));
  const char* utf8 = ((const char*)asCString(s_utf8));


  cairo_text_path(cr, utf8);


  return(_result);
}
 

USER_OBJECT_
S_cairo_glyph_path(USER_OBJECT_ s_cr, USER_OBJECT_ s_glyphs)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));
  cairo_glyph_t* glyphs = ((cairo_glyph_t*)asCArrayRef(s_glyphs, cairo_glyph_t, asCCairoGlyph));
  int num_glyphs = ((int)GET_LENGTH(s_glyphs));


  cairo_glyph_path(cr, glyphs, num_glyphs);

    CLEANUP(cairo_glyph_free, ((cairo_glyph_t*)glyphs));;

  return(_result);
}
 

USER_OBJECT_
S_cairo_set_font_options(USER_OBJECT_ s_cr, USER_OBJECT_ s_options)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));
  const cairo_font_options_t* options = ((const cairo_font_options_t*)getPtrValue(s_options));


  cairo_set_font_options(cr, options);


  return(_result);
}
 

USER_OBJECT_
S_cairo_get_font_options(USER_OBJECT_ s_cr)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));

  cairo_font_options_t* options = cairo_font_options_create();

  cairo_get_font_options(cr, options);


  _result = retByVal(PROTECT(_result), "options", PROTECT(toRPointerWithFinalizer(options, "CairoFontOptions", (RPointerFinalizer) cairo_font_options_destroy)), NULL);
  UNPROTECT(2);
  ;

  return(_result);
}
 

USER_OBJECT_
S_cairo_font_face_reference(USER_OBJECT_ s_font_face)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  cairo_font_face_t* font_face = ((cairo_font_face_t*)getPtrValue(s_font_face));

  cairo_font_face_t* ans;

  ans = cairo_font_face_reference(font_face);

  _result = toRPointerWithCairoRef(ans, "CairoFontFace", cairo_font_face);

  return(_result);
}
 

USER_OBJECT_
S_cairo_font_face_destroy(USER_OBJECT_ s_font_face)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  cairo_font_face_t* font_face = ((cairo_font_face_t*)getPtrValue(s_font_face));


  cairo_font_face_destroy(font_face);


  return(_result);
}
 

USER_OBJECT_
S_cairo_font_face_get_user_data(USER_OBJECT_ s_font_face, USER_OBJECT_ s_key)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  cairo_font_face_t* font_face = ((cairo_font_face_t*)getPtrValue(s_font_face));
  const cairo_user_data_key_t* key = ((const cairo_user_data_key_t*)getPtrValue(s_key));

  gpointer ans;

  ans = cairo_font_face_get_user_data(font_face, key);

  _result = ans;

  return(_result);
}
 

USER_OBJECT_
S_cairo_font_face_set_user_data(USER_OBJECT_ s_font_face, USER_OBJECT_ s_key, USER_OBJECT_ s_user_data)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  cairo_font_face_t* font_face = ((cairo_font_face_t*)getPtrValue(s_font_face));
  const cairo_user_data_key_t* key = ((const cairo_user_data_key_t*)getPtrValue(s_key));
  gpointer user_data = ((gpointer)asCGenericData(s_user_data));
  cairo_destroy_func_t destroy = ((cairo_destroy_func_t)R_ReleaseObject);

  cairo_status_t ans;

  ans = cairo_font_face_set_user_data(font_face, key, user_data, destroy);

  _result = asREnum(ans, CAIRO_TYPE_STATUS);

  return(_result);
}
 

USER_OBJECT_
S_cairo_font_face_status(USER_OBJECT_ s_font_face)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  cairo_font_face_t* font_face = ((cairo_font_face_t*)getPtrValue(s_font_face));

  cairo_status_t ans;

  ans = cairo_font_face_status(font_face);

  _result = asREnum(ans, CAIRO_TYPE_STATUS);

  return(_result);
}
 

USER_OBJECT_
S_cairo_scaled_font_create(USER_OBJECT_ s_font_face, USER_OBJECT_ s_font_matrix, USER_OBJECT_ s_ctm, USER_OBJECT_ s_option)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  cairo_font_face_t* font_face = ((cairo_font_face_t*)getPtrValue(s_font_face));
  const cairo_matrix_t* font_matrix = ((const cairo_matrix_t*)getPtrValue(s_font_matrix));
  const cairo_matrix_t* ctm = ((const cairo_matrix_t*)getPtrValue(s_ctm));
  const cairo_font_options_t* option = ((const cairo_font_options_t*)getPtrValue(s_option));

  cairo_scaled_font_t* ans;

  ans = cairo_scaled_font_create(font_face, font_matrix, ctm, option);

  _result = toRPointerWithFinalizer(ans, "CairoScaledFont", (RPointerFinalizer) cairo_scaled_font_destroy);

  return(_result);
}
 

USER_OBJECT_
S_cairo_scaled_font_reference(USER_OBJECT_ s_scaled_font)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  cairo_scaled_font_t* scaled_font = ((cairo_scaled_font_t*)getPtrValue(s_scaled_font));

  cairo_scaled_font_t* ans;

  ans = cairo_scaled_font_reference(scaled_font);

  _result = toRPointerWithCairoRef(ans, "CairoScaledFont", cairo_scaled_font);

  return(_result);
}
 

USER_OBJECT_
S_cairo_scaled_font_destroy(USER_OBJECT_ s_scaled_font)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  cairo_scaled_font_t* scaled_font = ((cairo_scaled_font_t*)getPtrValue(s_scaled_font));


  cairo_scaled_font_destroy(scaled_font);


  return(_result);
}
 

USER_OBJECT_
S_cairo_scaled_font_extents(USER_OBJECT_ s_scaled_font)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  cairo_scaled_font_t* scaled_font = ((cairo_scaled_font_t*)getPtrValue(s_scaled_font));

  cairo_font_extents_t* extents = ((cairo_font_extents_t *)g_new0(cairo_font_extents_t, 1));

  cairo_scaled_font_extents(scaled_font, extents);


  _result = retByVal(PROTECT(_result), "extents", PROTECT(asRCairoFontExtents(extents)), NULL);
  UNPROTECT(2);
    CLEANUP(g_free, extents);;

  return(_result);
}
 

USER_OBJECT_
S_cairo_scaled_font_glyph_extents(USER_OBJECT_ s_scaled_font, USER_OBJECT_ s_glyphs, USER_OBJECT_ s_num_glyphs)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  cairo_scaled_font_t* scaled_font = ((cairo_scaled_font_t*)getPtrValue(s_scaled_font));
  cairo_glyph_t* glyphs = asCCairoGlyph(s_glyphs);
  int num_glyphs = ((int)asCInteger(s_num_glyphs));

  cairo_text_extents_t* extents = ((cairo_text_extents_t *)g_new0(cairo_text_extents_t, 1));

  cairo_scaled_font_glyph_extents(scaled_font, glyphs, num_glyphs, extents);


  _result = retByVal(PROTECT(_result), "extents", PROTECT(toRPointerWithFinalizer(extents, "CairoTextExtents", (RPointerFinalizer) g_free)), NULL);
  UNPROTECT(2);
  ;

  return(_result);
}
 

USER_OBJECT_
S_cairo_scaled_font_status(USER_OBJECT_ s_scaled_font)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  cairo_scaled_font_t* scaled_font = ((cairo_scaled_font_t*)getPtrValue(s_scaled_font));

  cairo_status_t ans;

  ans = cairo_scaled_font_status(scaled_font);

  _result = asREnum(ans, CAIRO_TYPE_STATUS);

  return(_result);
}
 

USER_OBJECT_
S_cairo_get_operator(USER_OBJECT_ s_cr)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));

  cairo_operator_t ans;

  ans = cairo_get_operator(cr);

  _result = asREnum(ans, CAIRO_TYPE_OPERATOR);

  return(_result);
}
 

USER_OBJECT_
S_cairo_get_source(USER_OBJECT_ s_cr)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));

  cairo_pattern_t* ans;

  ans = cairo_get_source(cr);

  _result = toRPointerWithCairoRef(ans, "CairoPattern", cairo_pattern);

  return(_result);
}
 

USER_OBJECT_
S_cairo_get_tolerance(USER_OBJECT_ s_cr)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));

  double ans;

  ans = cairo_get_tolerance(cr);

  _result = asRNumeric(ans);

  return(_result);
}
 

USER_OBJECT_
S_cairo_get_antialias(USER_OBJECT_ s_cr)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));

  cairo_antialias_t ans;

  ans = cairo_get_antialias(cr);

  _result = asREnum(ans, CAIRO_TYPE_ANTIALIAS);

  return(_result);
}
 

USER_OBJECT_
S_cairo_get_current_point(USER_OBJECT_ s_cr, USER_OBJECT_ s_x, USER_OBJECT_ s_y)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));
  double* x = ((double*)asCArray(s_x, double, asCNumeric));
  double* y = ((double*)asCArray(s_y, double, asCNumeric));


  cairo_get_current_point(cr, x, y);


  return(_result);
}
 

USER_OBJECT_
S_cairo_get_fill_rule(USER_OBJECT_ s_cr)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));

  cairo_fill_rule_t ans;

  ans = cairo_get_fill_rule(cr);

  _result = asREnum(ans, CAIRO_TYPE_FILL_RULE);

  return(_result);
}
 

USER_OBJECT_
S_cairo_get_line_width(USER_OBJECT_ s_cr)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));

  double ans;

  ans = cairo_get_line_width(cr);

  _result = asRNumeric(ans);

  return(_result);
}
 

USER_OBJECT_
S_cairo_get_line_cap(USER_OBJECT_ s_cr)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));

  cairo_line_cap_t ans;

  ans = cairo_get_line_cap(cr);

  _result = asREnum(ans, CAIRO_TYPE_LINE_CAP);

  return(_result);
}
 

USER_OBJECT_
S_cairo_get_line_join(USER_OBJECT_ s_cr)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));

  cairo_line_join_t ans;

  ans = cairo_get_line_join(cr);

  _result = asREnum(ans, CAIRO_TYPE_LINE_JOIN);

  return(_result);
}
 

USER_OBJECT_
S_cairo_get_miter_limit(USER_OBJECT_ s_cr)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));

  double ans;

  ans = cairo_get_miter_limit(cr);

  _result = asRNumeric(ans);

  return(_result);
}
 

USER_OBJECT_
S_cairo_get_matrix(USER_OBJECT_ s_cr, USER_OBJECT_ s_matrix)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));
  cairo_matrix_t* matrix = ((cairo_matrix_t*)getPtrValue(s_matrix));


  cairo_get_matrix(cr, matrix);


  return(_result);
}
 

USER_OBJECT_
S_cairo_get_target(USER_OBJECT_ s_cr)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));

  cairo_surface_t* ans;

  ans = cairo_get_target(cr);

  _result = toRPointerWithCairoRef(ans, "CairoSurface", cairo_surface);

  return(_result);
}
 

USER_OBJECT_
S_cairo_copy_path(USER_OBJECT_ s_cr)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));

  cairo_path_t* ans;

  ans = cairo_copy_path(cr);

  _result = asRCairoPath(ans);
    CLEANUP(cairo_path_destroy, ans);;

  return(_result);
}
 

USER_OBJECT_
S_cairo_copy_path_flat(USER_OBJECT_ s_cr)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));

  cairo_path_t* ans;

  ans = cairo_copy_path_flat(cr);

  _result = asRCairoPath(ans);
    CLEANUP(cairo_path_destroy, ans);;

  return(_result);
}
 

USER_OBJECT_
S_cairo_path_destroy(USER_OBJECT_ s_path)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  cairo_path_t* path = asCCairoPath(s_path);


  cairo_path_destroy(path);

    CLEANUP(cairo_path_destroy, ((cairo_path_t*)path));;

  return(_result);
}
 

USER_OBJECT_
S_cairo_status(USER_OBJECT_ s_cr)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));

  cairo_status_t ans;

  ans = cairo_status(cr);

  _result = asREnum(ans, CAIRO_TYPE_STATUS);

  return(_result);
}
 

USER_OBJECT_
S_cairo_status_to_string(USER_OBJECT_ s_status)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  cairo_status_t status = ((cairo_status_t)asCEnum(s_status, CAIRO_TYPE_STATUS));

  const char* ans;

  ans = cairo_status_to_string(status);

  _result = asRString(ans);

  return(_result);
}
 

USER_OBJECT_
S_cairo_surface_create_similar(USER_OBJECT_ s_other, USER_OBJECT_ s_content, USER_OBJECT_ s_width, USER_OBJECT_ s_height)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  cairo_surface_t* other = ((cairo_surface_t*)getPtrValue(s_other));
  cairo_content_t content = ((cairo_content_t)asCEnum(s_content, CAIRO_TYPE_CONTENT));
  int width = ((int)asCInteger(s_width));
  int height = ((int)asCInteger(s_height));

  cairo_surface_t* ans;

  ans = cairo_surface_create_similar(other, content, width, height);

  _result = toRPointerWithFinalizer(ans, "CairoSurface", (RPointerFinalizer) cairo_surface_destroy);

  return(_result);
}
 

USER_OBJECT_
S_cairo_surface_reference(USER_OBJECT_ s_surface)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  cairo_surface_t* surface = ((cairo_surface_t*)getPtrValue(s_surface));

  cairo_surface_t* ans;

  ans = cairo_surface_reference(surface);

  _result = toRPointerWithCairoRef(ans, "CairoSurface", cairo_surface);

  return(_result);
}
 

USER_OBJECT_
S_cairo_surface_destroy(USER_OBJECT_ s_surface)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  cairo_surface_t* surface = ((cairo_surface_t*)getPtrValue(s_surface));


  cairo_surface_destroy(surface);


  return(_result);
}
 

USER_OBJECT_
S_cairo_surface_finish(USER_OBJECT_ s_surface)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  cairo_surface_t* surface = ((cairo_surface_t*)getPtrValue(s_surface));


  cairo_surface_finish(surface);


  return(_result);
}
 

USER_OBJECT_
S_cairo_surface_write_to_png(USER_OBJECT_ s_surface, USER_OBJECT_ s_filename)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  cairo_surface_t* surface = ((cairo_surface_t*)getPtrValue(s_surface));
  const char* filename = ((const char*)asCString(s_filename));

  cairo_status_t ans;

  ans = cairo_surface_write_to_png(surface, filename);

  _result = asREnum(ans, CAIRO_TYPE_STATUS);

  return(_result);
}
 

USER_OBJECT_
S_cairo_surface_write_to_png_stream(USER_OBJECT_ s_surface, USER_OBJECT_ s_write_func, USER_OBJECT_ s_closure)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  cairo_write_func_t write_func = ((cairo_write_func_t)S_cairo_write_func_t);
  R_CallbackData* closure = R_createCBData(s_write_func, s_closure);
  cairo_surface_t* surface = ((cairo_surface_t*)getPtrValue(s_surface));

  cairo_status_t ans;

  ans = cairo_surface_write_to_png_stream(surface, write_func, closure);

  _result = asREnum(ans, CAIRO_TYPE_STATUS);
  R_freeCBData(closure);

  return(_result);
}
 

USER_OBJECT_
S_cairo_surface_get_user_data(USER_OBJECT_ s_surface, USER_OBJECT_ s_key)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  cairo_surface_t* surface = ((cairo_surface_t*)getPtrValue(s_surface));
  const cairo_user_data_key_t* key = ((const cairo_user_data_key_t*)getPtrValue(s_key));

  gpointer ans;

  ans = cairo_surface_get_user_data(surface, key);

  _result = ans;

  return(_result);
}
 

USER_OBJECT_
S_cairo_surface_set_user_data(USER_OBJECT_ s_surface, USER_OBJECT_ s_key, USER_OBJECT_ s_user_data)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  cairo_surface_t* surface = ((cairo_surface_t*)getPtrValue(s_surface));
  const cairo_user_data_key_t* key = ((const cairo_user_data_key_t*)getPtrValue(s_key));
  gpointer user_data = ((gpointer)asCGenericData(s_user_data));
  cairo_destroy_func_t destroy = ((cairo_destroy_func_t)R_ReleaseObject);

  cairo_status_t ans;

  ans = cairo_surface_set_user_data(surface, key, user_data, destroy);

  _result = asREnum(ans, CAIRO_TYPE_STATUS);

  return(_result);
}
 

USER_OBJECT_
S_cairo_surface_flush(USER_OBJECT_ s_surface)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  cairo_surface_t* surface = ((cairo_surface_t*)getPtrValue(s_surface));


  cairo_surface_flush(surface);


  return(_result);
}
 

USER_OBJECT_
S_cairo_surface_mark_dirty(USER_OBJECT_ s_surface)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  cairo_surface_t* surface = ((cairo_surface_t*)getPtrValue(s_surface));


  cairo_surface_mark_dirty(surface);


  return(_result);
}
 

USER_OBJECT_
S_cairo_surface_mark_dirty_rectangle(USER_OBJECT_ s_surface, USER_OBJECT_ s_x, USER_OBJECT_ s_y, USER_OBJECT_ s_width, USER_OBJECT_ s_height)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  cairo_surface_t* surface = ((cairo_surface_t*)getPtrValue(s_surface));
  int x = ((int)asCInteger(s_x));
  int y = ((int)asCInteger(s_y));
  int width = ((int)asCInteger(s_width));
  int height = ((int)asCInteger(s_height));


  cairo_surface_mark_dirty_rectangle(surface, x, y, width, height);


  return(_result);
}
 

USER_OBJECT_
S_cairo_surface_set_device_offset(USER_OBJECT_ s_surface, USER_OBJECT_ s_x_offset, USER_OBJECT_ s_y_offset)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  cairo_surface_t* surface = ((cairo_surface_t*)getPtrValue(s_surface));
  double x_offset = ((double)asCNumeric(s_x_offset));
  double y_offset = ((double)asCNumeric(s_y_offset));


  cairo_surface_set_device_offset(surface, x_offset, y_offset);


  return(_result);
}
 

USER_OBJECT_
S_cairo_surface_get_font_options(USER_OBJECT_ s_surface)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  cairo_surface_t* surface = ((cairo_surface_t*)getPtrValue(s_surface));

  cairo_font_options_t* options = cairo_font_options_create();

  cairo_surface_get_font_options(surface, options);


  _result = retByVal(PROTECT(_result), "options", PROTECT(toRPointerWithFinalizer(options, "CairoFontOptions", (RPointerFinalizer) cairo_font_options_destroy)), NULL);
  UNPROTECT(2);
  ;

  return(_result);
}
 

USER_OBJECT_
S_cairo_surface_status(USER_OBJECT_ s_surface)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  cairo_surface_t* surface = ((cairo_surface_t*)getPtrValue(s_surface));

  cairo_status_t ans;

  ans = cairo_surface_status(surface);

  _result = asREnum(ans, CAIRO_TYPE_STATUS);

  return(_result);
}
 

USER_OBJECT_
S_cairo_image_surface_create(USER_OBJECT_ s_format, USER_OBJECT_ s_width, USER_OBJECT_ s_height)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  cairo_format_t format = ((cairo_format_t)asCEnum(s_format, CAIRO_TYPE_FORMAT));
  int width = ((int)asCInteger(s_width));
  int height = ((int)asCInteger(s_height));

  cairo_surface_t* ans;

  ans = cairo_image_surface_create(format, width, height);

  _result = toRPointerWithFinalizer(ans, "CairoSurface", (RPointerFinalizer) cairo_surface_destroy);

  return(_result);
}
 

USER_OBJECT_
S_cairo_image_surface_create_for_data(USER_OBJECT_ s_data, USER_OBJECT_ s_format, USER_OBJECT_ s_width, USER_OBJECT_ s_height, USER_OBJECT_ s_stride)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  guchar* data = ((guchar*)asCArray(s_data, guchar, asCRaw));
  cairo_format_t format = ((cairo_format_t)asCEnum(s_format, CAIRO_TYPE_FORMAT));
  int width = ((int)asCInteger(s_width));
  int height = ((int)asCInteger(s_height));
  int stride = ((int)asCInteger(s_stride));

  cairo_surface_t* ans;

  ans = cairo_image_surface_create_for_data(data, format, width, height, stride);

  _result = toRPointerWithFinalizer(ans, "CairoSurface", (RPointerFinalizer) cairo_surface_destroy);

  return(_result);
}
 

USER_OBJECT_
S_cairo_image_surface_get_width(USER_OBJECT_ s_surface)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  cairo_surface_t* surface = ((cairo_surface_t*)getPtrValue(s_surface));

  int ans;

  ans = cairo_image_surface_get_width(surface);

  _result = asRInteger(ans);

  return(_result);
}
 

USER_OBJECT_
S_cairo_image_surface_get_height(USER_OBJECT_ s_surface)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  cairo_surface_t* surface = ((cairo_surface_t*)getPtrValue(s_surface));

  int ans;

  ans = cairo_image_surface_get_height(surface);

  _result = asRInteger(ans);

  return(_result);
}
 

USER_OBJECT_
S_cairo_image_surface_create_from_png(USER_OBJECT_ s_filename)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  const char* filename = ((const char*)asCString(s_filename));

  cairo_surface_t* ans;

  ans = cairo_image_surface_create_from_png(filename);

  _result = toRPointerWithFinalizer(ans, "CairoSurface", (RPointerFinalizer) cairo_surface_destroy);

  return(_result);
}
 

USER_OBJECT_
S_cairo_image_surface_create_from_png_stream(USER_OBJECT_ s_read_func, USER_OBJECT_ s_closure)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  cairo_read_func_t read_func = ((cairo_read_func_t)S_cairo_read_func_t);
  R_CallbackData* closure = R_createCBData(s_read_func, s_closure);

  cairo_surface_t* ans;

  ans = cairo_image_surface_create_from_png_stream(read_func, closure);

  _result = toRPointerWithFinalizer(ans, "CairoSurface", (RPointerFinalizer) cairo_surface_destroy);
  R_freeCBData(closure);

  return(_result);
}
 

USER_OBJECT_
S_cairo_pattern_create_rgb(USER_OBJECT_ s_red, USER_OBJECT_ s_green, USER_OBJECT_ s_blue)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  double red = ((double)asCNumeric(s_red));
  double green = ((double)asCNumeric(s_green));
  double blue = ((double)asCNumeric(s_blue));

  cairo_pattern_t* ans;

  ans = cairo_pattern_create_rgb(red, green, blue);

  _result = toRPointerWithFinalizer(ans, "CairoPattern", (RPointerFinalizer) cairo_pattern_destroy);

  return(_result);
}
 

USER_OBJECT_
S_cairo_pattern_create_rgba(USER_OBJECT_ s_red, USER_OBJECT_ s_green, USER_OBJECT_ s_blue, USER_OBJECT_ s_alpha)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  double red = ((double)asCNumeric(s_red));
  double green = ((double)asCNumeric(s_green));
  double blue = ((double)asCNumeric(s_blue));
  double alpha = ((double)asCNumeric(s_alpha));

  cairo_pattern_t* ans;

  ans = cairo_pattern_create_rgba(red, green, blue, alpha);

  _result = toRPointerWithFinalizer(ans, "CairoPattern", (RPointerFinalizer) cairo_pattern_destroy);

  return(_result);
}
 

USER_OBJECT_
S_cairo_pattern_create_for_surface(USER_OBJECT_ s_surface)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  cairo_surface_t* surface = ((cairo_surface_t*)getPtrValue(s_surface));

  cairo_pattern_t* ans;

  ans = cairo_pattern_create_for_surface(surface);

  _result = toRPointerWithFinalizer(ans, "CairoPattern", (RPointerFinalizer) cairo_pattern_destroy);

  return(_result);
}
 

USER_OBJECT_
S_cairo_pattern_create_linear(USER_OBJECT_ s_x0, USER_OBJECT_ s_y0, USER_OBJECT_ s_x1, USER_OBJECT_ s_y1)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  double x0 = ((double)asCNumeric(s_x0));
  double y0 = ((double)asCNumeric(s_y0));
  double x1 = ((double)asCNumeric(s_x1));
  double y1 = ((double)asCNumeric(s_y1));

  cairo_pattern_t* ans;

  ans = cairo_pattern_create_linear(x0, y0, x1, y1);

  _result = toRPointerWithFinalizer(ans, "CairoPattern", (RPointerFinalizer) cairo_pattern_destroy);

  return(_result);
}
 

USER_OBJECT_
S_cairo_pattern_create_radial(USER_OBJECT_ s_cx0, USER_OBJECT_ s_cy0, USER_OBJECT_ s_radius0, USER_OBJECT_ s_cx1, USER_OBJECT_ s_cy1, USER_OBJECT_ s_radius1)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  double cx0 = ((double)asCNumeric(s_cx0));
  double cy0 = ((double)asCNumeric(s_cy0));
  double radius0 = ((double)asCNumeric(s_radius0));
  double cx1 = ((double)asCNumeric(s_cx1));
  double cy1 = ((double)asCNumeric(s_cy1));
  double radius1 = ((double)asCNumeric(s_radius1));

  cairo_pattern_t* ans;

  ans = cairo_pattern_create_radial(cx0, cy0, radius0, cx1, cy1, radius1);

  _result = toRPointerWithFinalizer(ans, "CairoPattern", (RPointerFinalizer) cairo_pattern_destroy);

  return(_result);
}
 

USER_OBJECT_
S_cairo_pattern_reference(USER_OBJECT_ s_pattern)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  cairo_pattern_t* pattern = ((cairo_pattern_t*)getPtrValue(s_pattern));

  cairo_pattern_t* ans;

  ans = cairo_pattern_reference(pattern);

  _result = toRPointerWithCairoRef(ans, "CairoPattern", cairo_pattern);

  return(_result);
}
 

USER_OBJECT_
S_cairo_pattern_destroy(USER_OBJECT_ s_pattern)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  cairo_pattern_t* pattern = ((cairo_pattern_t*)getPtrValue(s_pattern));


  cairo_pattern_destroy(pattern);


  return(_result);
}
 

USER_OBJECT_
S_cairo_pattern_status(USER_OBJECT_ s_pattern)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  cairo_pattern_t* pattern = ((cairo_pattern_t*)getPtrValue(s_pattern));

  cairo_status_t ans;

  ans = cairo_pattern_status(pattern);

  _result = asREnum(ans, CAIRO_TYPE_STATUS);

  return(_result);
}
 

USER_OBJECT_
S_cairo_pattern_add_color_stop_rgb(USER_OBJECT_ s_pattern, USER_OBJECT_ s_offset, USER_OBJECT_ s_red, USER_OBJECT_ s_green, USER_OBJECT_ s_blue)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  cairo_pattern_t* pattern = ((cairo_pattern_t*)getPtrValue(s_pattern));
  double offset = ((double)asCNumeric(s_offset));
  double red = ((double)asCNumeric(s_red));
  double green = ((double)asCNumeric(s_green));
  double blue = ((double)asCNumeric(s_blue));


  cairo_pattern_add_color_stop_rgb(pattern, offset, red, green, blue);


  return(_result);
}
 

USER_OBJECT_
S_cairo_pattern_add_color_stop_rgba(USER_OBJECT_ s_pattern, USER_OBJECT_ s_offset, USER_OBJECT_ s_red, USER_OBJECT_ s_green, USER_OBJECT_ s_blue, USER_OBJECT_ s_alpha)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  cairo_pattern_t* pattern = ((cairo_pattern_t*)getPtrValue(s_pattern));
  double offset = ((double)asCNumeric(s_offset));
  double red = ((double)asCNumeric(s_red));
  double green = ((double)asCNumeric(s_green));
  double blue = ((double)asCNumeric(s_blue));
  double alpha = ((double)asCNumeric(s_alpha));


  cairo_pattern_add_color_stop_rgba(pattern, offset, red, green, blue, alpha);


  return(_result);
}
 

USER_OBJECT_
S_cairo_pattern_set_matrix(USER_OBJECT_ s_pattern, USER_OBJECT_ s_matrix)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  cairo_pattern_t* pattern = ((cairo_pattern_t*)getPtrValue(s_pattern));
  const cairo_matrix_t* matrix = ((const cairo_matrix_t*)getPtrValue(s_matrix));


  cairo_pattern_set_matrix(pattern, matrix);


  return(_result);
}
 

USER_OBJECT_
S_cairo_pattern_get_matrix(USER_OBJECT_ s_pattern, USER_OBJECT_ s_matrix)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  cairo_pattern_t* pattern = ((cairo_pattern_t*)getPtrValue(s_pattern));
  cairo_matrix_t* matrix = ((cairo_matrix_t*)getPtrValue(s_matrix));


  cairo_pattern_get_matrix(pattern, matrix);


  return(_result);
}
 

USER_OBJECT_
S_cairo_pattern_set_extend(USER_OBJECT_ s_pattern, USER_OBJECT_ s_extend)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  cairo_pattern_t* pattern = ((cairo_pattern_t*)getPtrValue(s_pattern));
  cairo_extend_t extend = ((cairo_extend_t)asCEnum(s_extend, CAIRO_TYPE_EXTEND));


  cairo_pattern_set_extend(pattern, extend);


  return(_result);
}
 

USER_OBJECT_
S_cairo_pattern_get_extend(USER_OBJECT_ s_pattern)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  cairo_pattern_t* pattern = ((cairo_pattern_t*)getPtrValue(s_pattern));

  cairo_extend_t ans;

  ans = cairo_pattern_get_extend(pattern);

  _result = asREnum(ans, CAIRO_TYPE_EXTEND);

  return(_result);
}
 

USER_OBJECT_
S_cairo_pattern_set_filter(USER_OBJECT_ s_pattern, USER_OBJECT_ s_filter)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  cairo_pattern_t* pattern = ((cairo_pattern_t*)getPtrValue(s_pattern));
  cairo_filter_t filter = ((cairo_filter_t)asCEnum(s_filter, CAIRO_TYPE_FILTER));


  cairo_pattern_set_filter(pattern, filter);


  return(_result);
}
 

USER_OBJECT_
S_cairo_pattern_get_filter(USER_OBJECT_ s_pattern)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  cairo_pattern_t* pattern = ((cairo_pattern_t*)getPtrValue(s_pattern));

  cairo_filter_t ans;

  ans = cairo_pattern_get_filter(pattern);

  _result = asREnum(ans, CAIRO_TYPE_FILTER);

  return(_result);
}
 

USER_OBJECT_
S_cairo_matrix_init(USER_OBJECT_ s_xx, USER_OBJECT_ s_yx, USER_OBJECT_ s_xy, USER_OBJECT_ s_yy, USER_OBJECT_ s_x0, USER_OBJECT_ s_y0)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  double xx = ((double)asCNumeric(s_xx));
  double yx = ((double)asCNumeric(s_yx));
  double xy = ((double)asCNumeric(s_xy));
  double yy = ((double)asCNumeric(s_yy));
  double x0 = ((double)asCNumeric(s_x0));
  double y0 = ((double)asCNumeric(s_y0));

  cairo_matrix_t* matrix = ((cairo_matrix_t *)g_new0(cairo_matrix_t, 1));

  cairo_matrix_init(matrix, xx, yx, xy, yy, x0, y0);


  _result = retByVal(PROTECT(_result), "matrix", PROTECT(toRPointerWithFinalizer(matrix, "CairoMatrix", (RPointerFinalizer) g_free)), NULL);
  UNPROTECT(2);
  ;

  return(_result);
}
 

USER_OBJECT_
S_cairo_matrix_init_identity(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  cairo_matrix_t* matrix = ((cairo_matrix_t *)g_new0(cairo_matrix_t, 1));

  cairo_matrix_init_identity(matrix);


  _result = retByVal(PROTECT(_result), "matrix", PROTECT(toRPointerWithFinalizer(matrix, "CairoMatrix", (RPointerFinalizer) g_free)), NULL);
  UNPROTECT(2);
  ;

  return(_result);
}
 

USER_OBJECT_
S_cairo_matrix_init_translate(USER_OBJECT_ s_tx, USER_OBJECT_ s_ty)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  double tx = ((double)asCNumeric(s_tx));
  double ty = ((double)asCNumeric(s_ty));

  cairo_matrix_t* matrix = ((cairo_matrix_t *)g_new0(cairo_matrix_t, 1));

  cairo_matrix_init_translate(matrix, tx, ty);


  _result = retByVal(PROTECT(_result), "matrix", PROTECT(toRPointerWithFinalizer(matrix, "CairoMatrix", (RPointerFinalizer) g_free)), NULL);
  UNPROTECT(2);
  ;

  return(_result);
}
 

USER_OBJECT_
S_cairo_matrix_init_scale(USER_OBJECT_ s_sx, USER_OBJECT_ s_sy)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  double sx = ((double)asCNumeric(s_sx));
  double sy = ((double)asCNumeric(s_sy));

  cairo_matrix_t* matrix = ((cairo_matrix_t *)g_new0(cairo_matrix_t, 1));

  cairo_matrix_init_scale(matrix, sx, sy);


  _result = retByVal(PROTECT(_result), "matrix", PROTECT(toRPointerWithFinalizer(matrix, "CairoMatrix", (RPointerFinalizer) g_free)), NULL);
  UNPROTECT(2);
  ;

  return(_result);
}
 

USER_OBJECT_
S_cairo_matrix_init_rotate(USER_OBJECT_ s_radians)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  double radians = ((double)asCNumeric(s_radians));

  cairo_matrix_t* matrix = ((cairo_matrix_t *)g_new0(cairo_matrix_t, 1));

  cairo_matrix_init_rotate(matrix, radians);


  _result = retByVal(PROTECT(_result), "matrix", PROTECT(toRPointerWithFinalizer(matrix, "CairoMatrix", (RPointerFinalizer) g_free)), NULL);
  UNPROTECT(2);
  ;

  return(_result);
}
 

USER_OBJECT_
S_cairo_matrix_translate(USER_OBJECT_ s_matrix, USER_OBJECT_ s_tx, USER_OBJECT_ s_ty)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  cairo_matrix_t* matrix = ((cairo_matrix_t*)getPtrValue(s_matrix));
  double tx = ((double)asCNumeric(s_tx));
  double ty = ((double)asCNumeric(s_ty));


  cairo_matrix_translate(matrix, tx, ty);


  return(_result);
}
 

USER_OBJECT_
S_cairo_matrix_scale(USER_OBJECT_ s_matrix, USER_OBJECT_ s_sx, USER_OBJECT_ s_sy)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  cairo_matrix_t* matrix = ((cairo_matrix_t*)getPtrValue(s_matrix));
  double sx = ((double)asCNumeric(s_sx));
  double sy = ((double)asCNumeric(s_sy));


  cairo_matrix_scale(matrix, sx, sy);


  return(_result);
}
 

USER_OBJECT_
S_cairo_matrix_rotate(USER_OBJECT_ s_matrix, USER_OBJECT_ s_radians)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  cairo_matrix_t* matrix = ((cairo_matrix_t*)getPtrValue(s_matrix));
  double radians = ((double)asCNumeric(s_radians));


  cairo_matrix_rotate(matrix, radians);


  return(_result);
}
 

USER_OBJECT_
S_cairo_matrix_invert(USER_OBJECT_ s_matrix)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  cairo_matrix_t* matrix = ((cairo_matrix_t*)getPtrValue(s_matrix));

  cairo_status_t ans;

  ans = cairo_matrix_invert(matrix);

  _result = asREnum(ans, CAIRO_TYPE_STATUS);

  return(_result);
}
 

USER_OBJECT_
S_cairo_matrix_multiply(USER_OBJECT_ s_result, USER_OBJECT_ s_a, USER_OBJECT_ s_b)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  cairo_matrix_t* result = ((cairo_matrix_t*)getPtrValue(s_result));
  const cairo_matrix_t* a = ((const cairo_matrix_t*)getPtrValue(s_a));
  const cairo_matrix_t* b = ((const cairo_matrix_t*)getPtrValue(s_b));


  cairo_matrix_multiply(result, a, b);


  return(_result);
}
 

USER_OBJECT_
S_cairo_matrix_transform_distance(USER_OBJECT_ s_matrix, USER_OBJECT_ s_dx, USER_OBJECT_ s_dy)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  const cairo_matrix_t* matrix = ((const cairo_matrix_t*)getPtrValue(s_matrix));
  double* dx = ((double*)asCArray(s_dx, double, asCNumeric));
  double* dy = ((double*)asCArray(s_dy, double, asCNumeric));


  cairo_matrix_transform_distance(matrix, dx, dy);


  return(_result);
}
 

USER_OBJECT_
S_cairo_matrix_transform_point(USER_OBJECT_ s_matrix, USER_OBJECT_ s_x, USER_OBJECT_ s_y)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  const cairo_matrix_t* matrix = ((const cairo_matrix_t*)getPtrValue(s_matrix));
  double* x = ((double*)asCArray(s_x, double, asCNumeric));
  double* y = ((double*)asCArray(s_y, double, asCNumeric));


  cairo_matrix_transform_point(matrix, x, y);


  return(_result);
}
 

USER_OBJECT_
S_cairo_font_options_create(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  cairo_font_options_t* ans;

  ans = cairo_font_options_create();

  _result = toRPointerWithFinalizer(ans, "CairoFontOptions", (RPointerFinalizer) cairo_font_options_destroy);

  return(_result);
}
 

USER_OBJECT_
S_cairo_font_options_copy(USER_OBJECT_ s_original)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  const cairo_font_options_t* original = ((const cairo_font_options_t*)getPtrValue(s_original));

  cairo_font_options_t* ans;

  ans = cairo_font_options_copy(original);

  _result = toRPointerWithFinalizer(ans, "CairoFontOptions", (RPointerFinalizer) cairo_font_options_destroy);

  return(_result);
}
 

USER_OBJECT_
S_cairo_font_options_destroy(USER_OBJECT_ s_options)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  cairo_font_options_t* options = ((cairo_font_options_t*)getPtrValue(s_options));


  cairo_font_options_destroy(options);


  return(_result);
}
 

USER_OBJECT_
S_cairo_font_options_status(USER_OBJECT_ s_options)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  cairo_font_options_t* options = ((cairo_font_options_t*)getPtrValue(s_options));

  cairo_status_t ans;

  ans = cairo_font_options_status(options);

  _result = asREnum(ans, CAIRO_TYPE_STATUS);

  return(_result);
}
 

USER_OBJECT_
S_cairo_font_options_merge(USER_OBJECT_ s_options, USER_OBJECT_ s_other)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  cairo_font_options_t* options = ((cairo_font_options_t*)getPtrValue(s_options));
  const cairo_font_options_t* other = ((const cairo_font_options_t*)getPtrValue(s_other));


  cairo_font_options_merge(options, other);


  return(_result);
}
 

USER_OBJECT_
S_cairo_font_options_equal(USER_OBJECT_ s_options, USER_OBJECT_ s_other)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  const cairo_font_options_t* options = ((const cairo_font_options_t*)getPtrValue(s_options));
  const cairo_font_options_t* other = ((const cairo_font_options_t*)getPtrValue(s_other));

  gboolean ans;

  ans = cairo_font_options_equal(options, other);

  _result = asRLogical(ans);

  return(_result);
}
 

USER_OBJECT_
S_cairo_font_options_set_antialias(USER_OBJECT_ s_options, USER_OBJECT_ s_antialias)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  cairo_font_options_t* options = ((cairo_font_options_t*)getPtrValue(s_options));
  cairo_antialias_t antialias = ((cairo_antialias_t)asCEnum(s_antialias, CAIRO_TYPE_ANTIALIAS));


  cairo_font_options_set_antialias(options, antialias);


  return(_result);
}
 

USER_OBJECT_
S_cairo_font_options_get_antialias(USER_OBJECT_ s_options)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  const cairo_font_options_t* options = ((const cairo_font_options_t*)getPtrValue(s_options));

  cairo_antialias_t ans;

  ans = cairo_font_options_get_antialias(options);

  _result = asREnum(ans, CAIRO_TYPE_ANTIALIAS);

  return(_result);
}
 

USER_OBJECT_
S_cairo_font_options_set_subpixel_order(USER_OBJECT_ s_options, USER_OBJECT_ s_subpixel_order)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  cairo_font_options_t* options = ((cairo_font_options_t*)getPtrValue(s_options));
  cairo_subpixel_order_t subpixel_order = ((cairo_subpixel_order_t)asCEnum(s_subpixel_order, CAIRO_TYPE_SUBPIXEL_ORDER));


  cairo_font_options_set_subpixel_order(options, subpixel_order);


  return(_result);
}
 

USER_OBJECT_
S_cairo_font_options_get_subpixel_order(USER_OBJECT_ s_options)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  const cairo_font_options_t* options = ((const cairo_font_options_t*)getPtrValue(s_options));

  cairo_subpixel_order_t ans;

  ans = cairo_font_options_get_subpixel_order(options);

  _result = asREnum(ans, CAIRO_TYPE_SUBPIXEL_ORDER);

  return(_result);
}
 

USER_OBJECT_
S_cairo_font_options_set_hint_style(USER_OBJECT_ s_options, USER_OBJECT_ s_hint_style)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  cairo_font_options_t* options = ((cairo_font_options_t*)getPtrValue(s_options));
  cairo_hint_style_t hint_style = ((cairo_hint_style_t)asCEnum(s_hint_style, CAIRO_TYPE_HINT_STYLE));


  cairo_font_options_set_hint_style(options, hint_style);


  return(_result);
}
 

USER_OBJECT_
S_cairo_font_options_get_hint_style(USER_OBJECT_ s_options)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  const cairo_font_options_t* options = ((const cairo_font_options_t*)getPtrValue(s_options));

  cairo_hint_style_t ans;

  ans = cairo_font_options_get_hint_style(options);

  _result = asREnum(ans, CAIRO_TYPE_HINT_STYLE);

  return(_result);
}
 

USER_OBJECT_
S_cairo_font_options_set_hint_metrics(USER_OBJECT_ s_options, USER_OBJECT_ s_hint_metrics)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  cairo_font_options_t* options = ((cairo_font_options_t*)getPtrValue(s_options));
  cairo_hint_metrics_t hint_metrics = ((cairo_hint_metrics_t)asCEnum(s_hint_metrics, CAIRO_TYPE_HINT_METRICS));


  cairo_font_options_set_hint_metrics(options, hint_metrics);


  return(_result);
}
 

USER_OBJECT_
S_cairo_font_options_get_hint_metrics(USER_OBJECT_ s_options)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  const cairo_font_options_t* options = ((const cairo_font_options_t*)getPtrValue(s_options));

  cairo_hint_metrics_t ans;

  ans = cairo_font_options_get_hint_metrics(options);

  _result = asREnum(ans, CAIRO_TYPE_HINT_METRICS);

  return(_result);
}
 

USER_OBJECT_
S_cairo_push_group(USER_OBJECT_ s_cr)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if CAIRO_CHECK_VERSION(1, 2, 0)
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));


  cairo_push_group(cr);

#else
  error("cairo_push_group exists only in cairo >= 1.2.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_cairo_push_group_with_content(USER_OBJECT_ s_cr, USER_OBJECT_ s_content)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if CAIRO_CHECK_VERSION(1, 2, 0)
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));
  cairo_content_t content = ((cairo_content_t)asCEnum(s_content, CAIRO_TYPE_CONTENT));


  cairo_push_group_with_content(cr, content);

#else
  error("cairo_push_group_with_content exists only in cairo >= 1.2.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_cairo_pop_group(USER_OBJECT_ s_cr)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if CAIRO_CHECK_VERSION(1, 2, 0)
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));

  cairo_pattern_t* ans;

  ans = cairo_pop_group(cr);

  _result = toRPointerWithCairoRef(ans, "CairoPattern", cairo_pattern);
#else
  error("cairo_pop_group exists only in cairo >= 1.2.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_cairo_pop_group_to_source(USER_OBJECT_ s_cr)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if CAIRO_CHECK_VERSION(1, 2, 0)
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));


  cairo_pop_group_to_source(cr);

#else
  error("cairo_pop_group_to_source exists only in cairo >= 1.2.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_cairo_get_group_target(USER_OBJECT_ s_cr)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if CAIRO_CHECK_VERSION(1, 2, 0)
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));

  cairo_surface_t* ans;

  ans = cairo_get_group_target(cr);

  _result = toRPointerWithCairoRef(ans, "CairoSurface", cairo_surface);
#else
  error("cairo_get_group_target exists only in cairo >= 1.2.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_cairo_new_sub_path(USER_OBJECT_ s_cr)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if CAIRO_CHECK_VERSION(1, 2, 0)
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));


  cairo_new_sub_path(cr);

#else
  error("cairo_new_sub_path exists only in cairo >= 1.2.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_cairo_set_scaled_font(USER_OBJECT_ s_cr, USER_OBJECT_ s_scaled_font)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if CAIRO_CHECK_VERSION(1, 2, 0)
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));
  cairo_scaled_font_t* scaled_font = ((cairo_scaled_font_t*)getPtrValue(s_scaled_font));


  cairo_set_scaled_font(cr, scaled_font);

#else
  error("cairo_set_scaled_font exists only in cairo >= 1.2.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_cairo_scaled_font_get_font_face(USER_OBJECT_ s_scaled_font)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if CAIRO_CHECK_VERSION(1, 2, 0)
  cairo_scaled_font_t* scaled_font = ((cairo_scaled_font_t*)getPtrValue(s_scaled_font));

  cairo_font_face_t* ans;

  ans = cairo_scaled_font_get_font_face(scaled_font);

  _result = toRPointerWithCairoRef(ans, "CairoFontFace", cairo_font_face);
#else
  error("cairo_scaled_font_get_font_face exists only in cairo >= 1.2.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_cairo_scaled_font_get_font_matrix(USER_OBJECT_ s_scaled_font)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if CAIRO_CHECK_VERSION(1, 2, 0)
  cairo_scaled_font_t* scaled_font = ((cairo_scaled_font_t*)getPtrValue(s_scaled_font));

  cairo_matrix_t* font_matrix = ((cairo_matrix_t *)g_new0(cairo_matrix_t, 1));

  cairo_scaled_font_get_font_matrix(scaled_font, font_matrix);


  _result = retByVal(PROTECT(_result), "font.matrix", PROTECT(toRPointerWithFinalizer(font_matrix, "CairoMatrix", (RPointerFinalizer) g_free)), NULL);
  UNPROTECT(2);
  ;
#else
  error("cairo_scaled_font_get_font_matrix exists only in cairo >= 1.2.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_cairo_scaled_font_get_ctm(USER_OBJECT_ s_scaled_font)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if CAIRO_CHECK_VERSION(1, 2, 0)
  cairo_scaled_font_t* scaled_font = ((cairo_scaled_font_t*)getPtrValue(s_scaled_font));

  cairo_matrix_t* ctm = ((cairo_matrix_t *)g_new0(cairo_matrix_t, 1));

  cairo_scaled_font_get_ctm(scaled_font, ctm);


  _result = retByVal(PROTECT(_result), "ctm", PROTECT(toRPointerWithFinalizer(ctm, "CairoMatrix", (RPointerFinalizer) g_free)), NULL);
  UNPROTECT(2);
  ;
#else
  error("cairo_scaled_font_get_ctm exists only in cairo >= 1.2.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_cairo_scaled_font_get_font_options(USER_OBJECT_ s_scaled_font)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if CAIRO_CHECK_VERSION(1, 2, 0)
  cairo_scaled_font_t* scaled_font = ((cairo_scaled_font_t*)getPtrValue(s_scaled_font));

  cairo_font_options_t* options = cairo_font_options_create();

  cairo_scaled_font_get_font_options(scaled_font, options);


  _result = retByVal(PROTECT(_result), "options", PROTECT(toRPointerWithFinalizer(options, "CairoFontOptions", (RPointerFinalizer) cairo_font_options_destroy)), NULL);
  UNPROTECT(2);
  ;
#else
  error("cairo_scaled_font_get_font_options exists only in cairo >= 1.2.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_cairo_scaled_font_text_extents(USER_OBJECT_ s_scaled_font, USER_OBJECT_ s_utf8)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if CAIRO_CHECK_VERSION(1, 2, 0)
  cairo_scaled_font_t* scaled_font = ((cairo_scaled_font_t*)getPtrValue(s_scaled_font));
  const char* utf8 = ((const char*)asCString(s_utf8));

  cairo_text_extents_t* extents = ((cairo_text_extents_t *)g_new0(cairo_text_extents_t, 1));

  cairo_scaled_font_text_extents(scaled_font, utf8, extents);


  _result = retByVal(PROTECT(_result), "extents", PROTECT(toRPointerWithFinalizer(extents, "CairoTextExtents", (RPointerFinalizer) g_free)), NULL);
  UNPROTECT(2);
  ;
#else
  error("cairo_scaled_font_text_extents exists only in cairo >= 1.2.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_cairo_scaled_font_get_type(USER_OBJECT_ s_scaled_font)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if CAIRO_CHECK_VERSION(1, 2, 0)
  cairo_scaled_font_t* scaled_font = ((cairo_scaled_font_t*)getPtrValue(s_scaled_font));

  cairo_font_type_t ans;

  ans = cairo_scaled_font_get_type(scaled_font);

  _result = asREnum(ans, CAIRO_TYPE_FONT_TYPE);
#else
  error("cairo_scaled_font_get_type exists only in cairo >= 1.2.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_cairo_font_face_get_type(USER_OBJECT_ s_font_face)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if CAIRO_CHECK_VERSION(1, 2, 0)
  cairo_font_face_t* font_face = ((cairo_font_face_t*)getPtrValue(s_font_face));

  cairo_font_type_t ans;

  ans = cairo_font_face_get_type(font_face);

  _result = asREnum(ans, CAIRO_TYPE_FONT_TYPE);
#else
  error("cairo_font_face_get_type exists only in cairo >= 1.2.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_cairo_surface_get_type(USER_OBJECT_ s_surface)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if CAIRO_CHECK_VERSION(1, 2, 0)
  cairo_surface_t* surface = ((cairo_surface_t*)getPtrValue(s_surface));

  cairo_surface_type_t ans;

  ans = cairo_surface_get_type(surface);

  _result = asREnum(ans, CAIRO_TYPE_SURFACE_TYPE);
#else
  error("cairo_surface_get_type exists only in cairo >= 1.2.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_cairo_surface_get_device_offset(USER_OBJECT_ s_surface)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if CAIRO_CHECK_VERSION(1, 2, 0)
  cairo_surface_t* surface = ((cairo_surface_t*)getPtrValue(s_surface));

  double x_offset;
  double y_offset;

  cairo_surface_get_device_offset(surface, &x_offset, &y_offset);


  _result = retByVal(PROTECT(_result), "x.offset", PROTECT(asRNumeric(x_offset)), "y.offset", PROTECT(asRNumeric(y_offset)), NULL);
  UNPROTECT(3);
  ;
  ;
#else
  error("cairo_surface_get_device_offset exists only in cairo >= 1.2.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_cairo_surface_set_fallback_resolution(USER_OBJECT_ s_surface, USER_OBJECT_ s_x_pixels_per_inch, USER_OBJECT_ s_y_pixels_per_inch)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if CAIRO_CHECK_VERSION(1, 2, 0)
  cairo_surface_t* surface = ((cairo_surface_t*)getPtrValue(s_surface));
  double x_pixels_per_inch = ((double)asCNumeric(s_x_pixels_per_inch));
  double y_pixels_per_inch = ((double)asCNumeric(s_y_pixels_per_inch));


  cairo_surface_set_fallback_resolution(surface, x_pixels_per_inch, y_pixels_per_inch);

#else
  error("cairo_surface_set_fallback_resolution exists only in cairo >= 1.2.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_cairo_surface_get_content(USER_OBJECT_ s_surface)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if CAIRO_CHECK_VERSION(1, 2, 0)
  cairo_surface_t* surface = ((cairo_surface_t*)getPtrValue(s_surface));

  cairo_content_t ans;

  ans = cairo_surface_get_content(surface);

  _result = asREnum(ans, CAIRO_TYPE_CONTENT);
#else
  error("cairo_surface_get_content exists only in cairo >= 1.2.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_cairo_image_surface_get_format(USER_OBJECT_ s_surface)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if CAIRO_CHECK_VERSION(1, 2, 0)
  cairo_surface_t* surface = ((cairo_surface_t*)getPtrValue(s_surface));

  cairo_format_t ans;

  ans = cairo_image_surface_get_format(surface);

  _result = asREnum(ans, CAIRO_TYPE_FORMAT);
#else
  error("cairo_image_surface_get_format exists only in cairo >= 1.2.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_cairo_image_surface_get_stride(USER_OBJECT_ s_surface)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if CAIRO_CHECK_VERSION(1, 2, 0)
  cairo_surface_t* surface = ((cairo_surface_t*)getPtrValue(s_surface));

  int ans;

  ans = cairo_image_surface_get_stride(surface);

  _result = asRInteger(ans);
#else
  error("cairo_image_surface_get_stride exists only in cairo >= 1.2.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_cairo_image_surface_get_data(USER_OBJECT_ s_surface)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if CAIRO_CHECK_VERSION(1, 2, 0)
  cairo_surface_t* surface = ((cairo_surface_t*)getPtrValue(s_surface));

  guchar* ans;

  ans = cairo_image_surface_get_data(surface);

  _result = asRRawArray(ans);
#else
  error("cairo_image_surface_get_data exists only in cairo >= 1.2.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_cairo_pattern_get_type(USER_OBJECT_ s_pattern)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if CAIRO_CHECK_VERSION(1, 2, 0)
  cairo_pattern_t* pattern = ((cairo_pattern_t*)getPtrValue(s_pattern));

  cairo_pattern_type_t ans;

  ans = cairo_pattern_get_type(pattern);

  _result = asREnum(ans, CAIRO_TYPE_PATTERN_TYPE);
#else
  error("cairo_pattern_get_type exists only in cairo >= 1.2.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_cairo_pdf_surface_create(USER_OBJECT_ s_filename, USER_OBJECT_ s_width_in_points, USER_OBJECT_ s_height_in_points)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if CAIRO_CHECK_VERSION(1, 2, 0)
  const gchar* filename = ((const gchar*)asCString(s_filename));
  double width_in_points = ((double)asCNumeric(s_width_in_points));
  double height_in_points = ((double)asCNumeric(s_height_in_points));

  cairo_surface_t* ans;

  ans = cairo_pdf_surface_create(filename, width_in_points, height_in_points);

  _result = toRPointerWithFinalizer(ans, "CairoSurface", (RPointerFinalizer) cairo_surface_destroy);
#else
  error("cairo_pdf_surface_create exists only in cairo >= 1.2.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_cairo_pdf_surface_create_for_stream(USER_OBJECT_ s_write_func, USER_OBJECT_ s_closure, USER_OBJECT_ s_width_in_points, USER_OBJECT_ s_height_in_points)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if CAIRO_CHECK_VERSION(1, 2, 0)
  cairo_write_func_t write_func = ((cairo_write_func_t)S_cairo_write_func_t);
  R_CallbackData* closure = R_createCBData(s_write_func, s_closure);
  double width_in_points = ((double)asCNumeric(s_width_in_points));
  double height_in_points = ((double)asCNumeric(s_height_in_points));

  cairo_surface_t* ans;

  ans = cairo_pdf_surface_create_for_stream(write_func, closure, width_in_points, height_in_points);

  _result = toRPointerWithFinalizer(ans, "CairoSurface", (RPointerFinalizer) cairo_surface_destroy);
  R_freeCBData(closure);
#else
  error("cairo_pdf_surface_create_for_stream exists only in cairo >= 1.2.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_cairo_pdf_surface_set_size(USER_OBJECT_ s_surface, USER_OBJECT_ s_width_in_points, USER_OBJECT_ s_height_in_points)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if CAIRO_CHECK_VERSION(1, 2, 0)
  cairo_surface_t* surface = ((cairo_surface_t*)getPtrValue(s_surface));
  double width_in_points = ((double)asCNumeric(s_width_in_points));
  double height_in_points = ((double)asCNumeric(s_height_in_points));


  cairo_pdf_surface_set_size(surface, width_in_points, height_in_points);

#else
  error("cairo_pdf_surface_set_size exists only in cairo >= 1.2.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_cairo_ps_surface_create(USER_OBJECT_ s_filename, USER_OBJECT_ s_width_in_points, USER_OBJECT_ s_height_in_points)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if CAIRO_CHECK_VERSION(1, 2, 0)
  const char* filename = ((const char*)asCString(s_filename));
  double width_in_points = ((double)asCNumeric(s_width_in_points));
  double height_in_points = ((double)asCNumeric(s_height_in_points));

  cairo_surface_t* ans;

  ans = cairo_ps_surface_create(filename, width_in_points, height_in_points);

  _result = toRPointerWithFinalizer(ans, "CairoSurface", (RPointerFinalizer) cairo_surface_destroy);
#else
  error("cairo_ps_surface_create exists only in cairo >= 1.2.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_cairo_ps_surface_create_for_stream(USER_OBJECT_ s_write_func, USER_OBJECT_ s_closure, USER_OBJECT_ s_width_in_points, USER_OBJECT_ s_height_in_points)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if CAIRO_CHECK_VERSION(1, 2, 0)
  cairo_write_func_t write_func = ((cairo_write_func_t)S_cairo_write_func_t);
  R_CallbackData* closure = R_createCBData(s_write_func, s_closure);
  double width_in_points = ((double)asCNumeric(s_width_in_points));
  double height_in_points = ((double)asCNumeric(s_height_in_points));

  cairo_surface_t* ans;

  ans = cairo_ps_surface_create_for_stream(write_func, closure, width_in_points, height_in_points);

  _result = toRPointerWithFinalizer(ans, "CairoSurface", (RPointerFinalizer) cairo_surface_destroy);
  R_freeCBData(closure);
#else
  error("cairo_ps_surface_create_for_stream exists only in cairo >= 1.2.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_cairo_ps_surface_set_size(USER_OBJECT_ s_surface, USER_OBJECT_ s_width_in_points, USER_OBJECT_ s_height_in_points)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if CAIRO_CHECK_VERSION(1, 2, 0)
  cairo_surface_t* surface = ((cairo_surface_t*)getPtrValue(s_surface));
  double width_in_points = ((double)asCNumeric(s_width_in_points));
  double height_in_points = ((double)asCNumeric(s_height_in_points));


  cairo_ps_surface_set_size(surface, width_in_points, height_in_points);

#else
  error("cairo_ps_surface_set_size exists only in cairo >= 1.2.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_cairo_ps_surface_dsc_comment(USER_OBJECT_ s_surface, USER_OBJECT_ s_comment)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if CAIRO_CHECK_VERSION(1, 2, 0)
  cairo_surface_t* surface = ((cairo_surface_t*)getPtrValue(s_surface));
  const char* comment = ((const char*)asCString(s_comment));


  cairo_ps_surface_dsc_comment(surface, comment);

#else
  error("cairo_ps_surface_dsc_comment exists only in cairo >= 1.2.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_cairo_ps_surface_dsc_begin_setup(USER_OBJECT_ s_surface)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if CAIRO_CHECK_VERSION(1, 2, 0)
  cairo_surface_t* surface = ((cairo_surface_t*)getPtrValue(s_surface));


  cairo_ps_surface_dsc_begin_setup(surface);

#else
  error("cairo_ps_surface_dsc_begin_setup exists only in cairo >= 1.2.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_cairo_ps_surface_dsc_begin_page_setup(USER_OBJECT_ s_surface)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if CAIRO_CHECK_VERSION(1, 2, 0)
  cairo_surface_t* surface = ((cairo_surface_t*)getPtrValue(s_surface));


  cairo_ps_surface_dsc_begin_page_setup(surface);

#else
  error("cairo_ps_surface_dsc_begin_page_setup exists only in cairo >= 1.2.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_cairo_svg_surface_create(USER_OBJECT_ s_filename, USER_OBJECT_ s_width_in_points, USER_OBJECT_ s_height_in_points)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if CAIRO_CHECK_VERSION(1, 2, 0)
  const char* filename = ((const char*)asCString(s_filename));
  double width_in_points = ((double)asCNumeric(s_width_in_points));
  double height_in_points = ((double)asCNumeric(s_height_in_points));

  cairo_surface_t* ans;

  ans = cairo_svg_surface_create(filename, width_in_points, height_in_points);

  _result = toRPointerWithFinalizer(ans, "CairoSurface", (RPointerFinalizer) cairo_surface_destroy);
#else
  error("cairo_svg_surface_create exists only in cairo >= 1.2.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_cairo_svg_surface_create_for_stream(USER_OBJECT_ s_write_func, USER_OBJECT_ s_closure, USER_OBJECT_ s_width_in_points, USER_OBJECT_ s_height_in_points)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if CAIRO_CHECK_VERSION(1, 2, 0)
  cairo_write_func_t write_func = ((cairo_write_func_t)S_cairo_write_func_t);
  R_CallbackData* closure = R_createCBData(s_write_func, s_closure);
  double width_in_points = ((double)asCNumeric(s_width_in_points));
  double height_in_points = ((double)asCNumeric(s_height_in_points));

  cairo_surface_t* ans;

  ans = cairo_svg_surface_create_for_stream(write_func, closure, width_in_points, height_in_points);

  _result = toRPointerWithFinalizer(ans, "CairoSurface", (RPointerFinalizer) cairo_surface_destroy);
  R_freeCBData(closure);
#else
  error("cairo_svg_surface_create_for_stream exists only in cairo >= 1.2.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_cairo_svg_surface_restrict_to_version(USER_OBJECT_ s_surface, USER_OBJECT_ s_version)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if CAIRO_CHECK_VERSION(1, 2, 0)
  cairo_surface_t* surface = ((cairo_surface_t*)getPtrValue(s_surface));
  cairo_svg_version_t version = ((cairo_svg_version_t)asCEnum(s_version, CAIRO_TYPE_SVG_VERSION));


  cairo_svg_surface_restrict_to_version(surface, version);

#else
  error("cairo_svg_surface_restrict_to_version exists only in cairo >= 1.2.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_cairo_svg_get_versions(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if CAIRO_CHECK_VERSION(1, 2, 0)

  const cairo_svg_version_t* versions = NULL;
  int num_versions;

  cairo_svg_get_versions(&versions, &num_versions);


  _result = retByVal(PROTECT(_result), "versions", PROTECT(asREnumArrayWithSize(versions, CAIRO_TYPE_SVG_VERSION, num_versions)), "num.versions", PROTECT(asRInteger(num_versions)), NULL);
  UNPROTECT(3);
  ;
  ;
#else
  error("cairo_svg_get_versions exists only in cairo >= 1.2.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_cairo_svg_version_to_string(USER_OBJECT_ s_version)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if CAIRO_CHECK_VERSION(1, 2, 0)
  cairo_svg_version_t version = ((cairo_svg_version_t)asCEnum(s_version, CAIRO_TYPE_SVG_VERSION));

  const char* ans;

  ans = cairo_svg_version_to_string(version);

  _result = asRString(ans);
#else
  error("cairo_svg_version_to_string exists only in cairo >= 1.2.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_cairo_clip_extents(USER_OBJECT_ s_cr)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if CAIRO_CHECK_VERSION(1, 4, 0)
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));

  double x1;
  double y1;
  double x2;
  double y2;

  cairo_clip_extents(cr, &x1, &y1, &x2, &y2);


  _result = retByVal(PROTECT(_result), "x1", PROTECT(asRNumeric(x1)), "y1", PROTECT(asRNumeric(y1)), "x2", PROTECT(asRNumeric(x2)), "y2", PROTECT(asRNumeric(y2)), NULL);
  UNPROTECT(5);
  ;
  ;
  ;
  ;
#else
  error("cairo_clip_extents exists only in cairo >= 1.4.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_cairo_copy_clip_rectangle_list(USER_OBJECT_ s_cr)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if CAIRO_CHECK_VERSION(1, 4, 0)
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));

  cairo_rectangle_list_t* ans;

  ans = cairo_copy_clip_rectangle_list(cr);

  _result = asRCairoRectangleList(ans);
    CLEANUP(cairo_rectangle_list_destroy, ans);;
#else
  error("cairo_copy_clip_rectangle_list exists only in cairo >= 1.4.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_cairo_get_dash_count(USER_OBJECT_ s_cr)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if CAIRO_CHECK_VERSION(1, 4, 0)
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));

  int ans;

  ans = cairo_get_dash_count(cr);

  _result = asRInteger(ans);
#else
  error("cairo_get_dash_count exists only in cairo >= 1.4.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_cairo_pattern_get_rgba(USER_OBJECT_ s_pattern)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if CAIRO_CHECK_VERSION(1, 4, 0)
  cairo_pattern_t* pattern = ((cairo_pattern_t*)getPtrValue(s_pattern));

  cairo_status_t ans;
  double red;
  double green;
  double blue;
  double alpha;

  ans = cairo_pattern_get_rgba(pattern, &red, &green, &blue, &alpha);

  _result = asREnum(ans, CAIRO_TYPE_STATUS);

  _result = retByVal(PROTECT(_result), "red", PROTECT(asRNumeric(red)), "green", PROTECT(asRNumeric(green)), "blue", PROTECT(asRNumeric(blue)), "alpha", PROTECT(asRNumeric(alpha)), NULL);
  UNPROTECT(5);
  ;
  ;
  ;
  ;
#else
  error("cairo_pattern_get_rgba exists only in cairo >= 1.4.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_cairo_pattern_get_surface(USER_OBJECT_ s_pattern)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if CAIRO_CHECK_VERSION(1, 4, 0)
  cairo_pattern_t* pattern = ((cairo_pattern_t*)getPtrValue(s_pattern));

  cairo_status_t ans;
  cairo_surface_t* surface = NULL;

  ans = cairo_pattern_get_surface(pattern, &surface);

  _result = asREnum(ans, CAIRO_TYPE_STATUS);

  _result = retByVal(PROTECT(_result), "surface", PROTECT(toRPointerWithCairoRef(surface, "CairoSurface", cairo_surface)), NULL);
  UNPROTECT(2);
  ;
#else
  error("cairo_pattern_get_surface exists only in cairo >= 1.4.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_cairo_pattern_get_color_stop_rgba(USER_OBJECT_ s_pattern, USER_OBJECT_ s_index)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if CAIRO_CHECK_VERSION(1, 4, 0)
  cairo_pattern_t* pattern = ((cairo_pattern_t*)getPtrValue(s_pattern));
  int index = ((int)asCInteger(s_index));

  cairo_status_t ans;
  double offset;
  double red;
  double green;
  double blue;
  double alpha;

  ans = cairo_pattern_get_color_stop_rgba(pattern, index, &offset, &red, &green, &blue, &alpha);

  _result = asREnum(ans, CAIRO_TYPE_STATUS);

  _result = retByVal(PROTECT(_result), "offset", PROTECT(asRNumeric(offset)), "red", PROTECT(asRNumeric(red)), "green", PROTECT(asRNumeric(green)), "blue", PROTECT(asRNumeric(blue)), "alpha", PROTECT(asRNumeric(alpha)), NULL);
  UNPROTECT(6);
  ;
  ;
  ;
  ;
  ;
#else
  error("cairo_pattern_get_color_stop_rgba exists only in cairo >= 1.4.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_cairo_pattern_get_color_stop_count(USER_OBJECT_ s_pattern)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if CAIRO_CHECK_VERSION(1, 4, 0)
  cairo_pattern_t* pattern = ((cairo_pattern_t*)getPtrValue(s_pattern));

  cairo_status_t ans;
  int count;

  ans = cairo_pattern_get_color_stop_count(pattern, &count);

  _result = asREnum(ans, CAIRO_TYPE_STATUS);

  _result = retByVal(PROTECT(_result), "count", PROTECT(asRInteger(count)), NULL);
  UNPROTECT(2);
  ;
#else
  error("cairo_pattern_get_color_stop_count exists only in cairo >= 1.4.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_cairo_pattern_get_linear_points(USER_OBJECT_ s_pattern)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if CAIRO_CHECK_VERSION(1, 4, 0)
  cairo_pattern_t* pattern = ((cairo_pattern_t*)getPtrValue(s_pattern));

  cairo_status_t ans;
  double x0;
  double y0;
  double x1;
  double y1;

  ans = cairo_pattern_get_linear_points(pattern, &x0, &y0, &x1, &y1);

  _result = asREnum(ans, CAIRO_TYPE_STATUS);

  _result = retByVal(PROTECT(_result), "x0", PROTECT(asRNumeric(x0)), "y0", PROTECT(asRNumeric(y0)), "x1", PROTECT(asRNumeric(x1)), "y1", PROTECT(asRNumeric(y1)), NULL);
  UNPROTECT(5);
  ;
  ;
  ;
  ;
#else
  error("cairo_pattern_get_linear_points exists only in cairo >= 1.4.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_cairo_pattern_get_radial_circles(USER_OBJECT_ s_pattern)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if CAIRO_CHECK_VERSION(1, 4, 0)
  cairo_pattern_t* pattern = ((cairo_pattern_t*)getPtrValue(s_pattern));

  cairo_status_t ans;
  double x0;
  double y0;
  double r0;
  double x1;
  double y1;
  double r1;

  ans = cairo_pattern_get_radial_circles(pattern, &x0, &y0, &r0, &x1, &y1, &r1);

  _result = asREnum(ans, CAIRO_TYPE_STATUS);

  _result = retByVal(PROTECT(_result), "x0", PROTECT(asRNumeric(x0)), "y0", PROTECT(asRNumeric(y0)), "r0", PROTECT(asRNumeric(r0)), "x1", PROTECT(asRNumeric(x1)), "y1", PROTECT(asRNumeric(y1)), "r1", PROTECT(asRNumeric(r1)), NULL);
  UNPROTECT(7);
  ;
  ;
  ;
  ;
  ;
  ;
#else
  error("cairo_pattern_get_radial_circles exists only in cairo >= 1.4.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_cairo_get_scaled_font(USER_OBJECT_ s_cr)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if CAIRO_CHECK_VERSION(1, 4, 0)
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));

  cairo_scaled_font_t* ans;

  ans = cairo_get_scaled_font(cr);

  _result = toRPointerWithCairoRef(ans, "CairoScaledFont", cairo_scaled_font);
#else
  error("cairo_get_scaled_font exists only in cairo >= 1.4.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_cairo_set_user_data(USER_OBJECT_ s_cr, USER_OBJECT_ s_key, USER_OBJECT_ s_user_data)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if CAIRO_CHECK_VERSION(1, 4, 0)
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));
  const cairo_user_data_key_t* key = ((const cairo_user_data_key_t*)getPtrValue(s_key));
  gpointer user_data = ((gpointer)asCGenericData(s_user_data));
  cairo_destroy_func_t destroy = ((cairo_destroy_func_t)R_ReleaseObject);

  cairo_status_t ans;

  ans = cairo_set_user_data(cr, key, user_data, destroy);

  _result = asREnum(ans, CAIRO_TYPE_STATUS);
#else
  error("cairo_set_user_data exists only in cairo >= 1.4.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_cairo_get_user_data(USER_OBJECT_ s_cr, USER_OBJECT_ s_key)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if CAIRO_CHECK_VERSION(1, 4, 0)
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));
  const cairo_user_data_key_t* key = ((const cairo_user_data_key_t*)getPtrValue(s_key));

  gpointer ans;

  ans = cairo_get_user_data(cr, key);

  _result = ans;
#else
  error("cairo_get_user_data exists only in cairo >= 1.4.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_cairo_scaled_font_get_user_data(USER_OBJECT_ s_scaled_font, USER_OBJECT_ s_key)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if CAIRO_CHECK_VERSION(1, 4, 0)
  cairo_scaled_font_t* scaled_font = ((cairo_scaled_font_t*)getPtrValue(s_scaled_font));
  const cairo_user_data_key_t* key = ((const cairo_user_data_key_t*)getPtrValue(s_key));

  gpointer ans;

  ans = cairo_scaled_font_get_user_data(scaled_font, key);

  _result = ans;
#else
  error("cairo_scaled_font_get_user_data exists only in cairo >= 1.4.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_cairo_scaled_font_set_user_data(USER_OBJECT_ s_scaled_font, USER_OBJECT_ s_key, USER_OBJECT_ s_user_data)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if CAIRO_CHECK_VERSION(1, 4, 0)
  cairo_scaled_font_t* scaled_font = ((cairo_scaled_font_t*)getPtrValue(s_scaled_font));
  const cairo_user_data_key_t* key = ((const cairo_user_data_key_t*)getPtrValue(s_key));
  gpointer user_data = ((gpointer)asCGenericData(s_user_data));
  cairo_destroy_func_t destroy = ((cairo_destroy_func_t)R_ReleaseObject);

  cairo_status_t ans;

  ans = cairo_scaled_font_set_user_data(scaled_font, key, user_data, destroy);

  _result = asREnum(ans, CAIRO_TYPE_STATUS);
#else
  error("cairo_scaled_font_set_user_data exists only in cairo >= 1.4.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_cairo_pattern_get_user_data(USER_OBJECT_ s_pattern, USER_OBJECT_ s_key)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if CAIRO_CHECK_VERSION(1, 4, 0)
  cairo_pattern_t* pattern = ((cairo_pattern_t*)getPtrValue(s_pattern));
  const cairo_user_data_key_t* key = ((const cairo_user_data_key_t*)getPtrValue(s_key));

  gpointer ans;

  ans = cairo_pattern_get_user_data(pattern, key);

  _result = ans;
#else
  error("cairo_pattern_get_user_data exists only in cairo >= 1.4.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_cairo_pattern_set_user_data(USER_OBJECT_ s_pattern, USER_OBJECT_ s_key, USER_OBJECT_ s_user_data)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if CAIRO_CHECK_VERSION(1, 4, 0)
  cairo_pattern_t* pattern = ((cairo_pattern_t*)getPtrValue(s_pattern));
  const cairo_user_data_key_t* key = ((const cairo_user_data_key_t*)getPtrValue(s_key));
  gpointer user_data = ((gpointer)asCGenericData(s_user_data));
  cairo_destroy_func_t destroy = ((cairo_destroy_func_t)R_ReleaseObject);

  cairo_status_t ans;

  ans = cairo_pattern_set_user_data(pattern, key, user_data, destroy);

  _result = asREnum(ans, CAIRO_TYPE_STATUS);
#else
  error("cairo_pattern_set_user_data exists only in cairo >= 1.4.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_cairo_format_stride_for_width(USER_OBJECT_ s_format, USER_OBJECT_ s_width)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if CAIRO_CHECK_VERSION(1, 6, 0)
  cairo_format_t format = ((cairo_format_t)asCEnum(s_format, CAIRO_TYPE_FORMAT));
  int width = ((int)asCInteger(s_width));

  int ans;

  ans = cairo_format_stride_for_width(format, width);

  _result = asRInteger(ans);
#else
  error("cairo_format_stride_for_width exists only in cairo >= 1.6.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_cairo_has_current_point(USER_OBJECT_ s_cr)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if CAIRO_CHECK_VERSION(1, 6, 0)
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));

  gboolean ans;

  ans = cairo_has_current_point(cr);

  _result = asRLogical(ans);
#else
  error("cairo_has_current_point exists only in cairo >= 1.6.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_cairo_path_extents(USER_OBJECT_ s_cr)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if CAIRO_CHECK_VERSION(1, 6, 0)
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));

  double x1;
  double y1;
  double x2;
  double y2;

  cairo_path_extents(cr, &x1, &y1, &x2, &y2);


  _result = retByVal(PROTECT(_result), "x1", PROTECT(asRNumeric(x1)), "y1", PROTECT(asRNumeric(y1)), "x2", PROTECT(asRNumeric(x2)), "y2", PROTECT(asRNumeric(y2)), NULL);
  UNPROTECT(5);
  ;
  ;
  ;
  ;
#else
  error("cairo_path_extents exists only in cairo >= 1.6.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_cairo_surface_copy_page(USER_OBJECT_ s_surface)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if CAIRO_CHECK_VERSION(1, 6, 0)
  cairo_surface_t* surface = ((cairo_surface_t*)getPtrValue(s_surface));


  cairo_surface_copy_page(surface);

#else
  error("cairo_surface_copy_page exists only in cairo >= 1.6.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_cairo_surface_show_page(USER_OBJECT_ s_surface)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if CAIRO_CHECK_VERSION(1, 6, 0)
  cairo_surface_t* surface = ((cairo_surface_t*)getPtrValue(s_surface));


  cairo_surface_show_page(surface);

#else
  error("cairo_surface_show_page exists only in cairo >= 1.6.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_cairo_ps_surface_restrict_to_level(USER_OBJECT_ s_surface, USER_OBJECT_ s_level)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if CAIRO_CHECK_VERSION(1, 6, 0)
  cairo_surface_t* surface = ((cairo_surface_t*)getPtrValue(s_surface));
  cairo_ps_level_t level = ((cairo_ps_level_t)asCEnum(s_level, CAIRO_TYPE_PS_LEVEL));


  cairo_ps_surface_restrict_to_level(surface, level);

#else
  error("cairo_ps_surface_restrict_to_level exists only in cairo >= 1.6.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_cairo_ps_get_levels(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if CAIRO_CHECK_VERSION(1, 6, 0)

  const cairo_ps_level_t* levels = NULL;
  int nlevels;

  cairo_ps_get_levels(&levels, &nlevels);


  _result = retByVal(PROTECT(_result), "levels", PROTECT(asREnumArrayWithSize(levels, CAIRO_TYPE_PS_LEVEL, nlevels)), "nlevels", PROTECT(asRInteger(nlevels)), NULL);
  UNPROTECT(3);
  ;
  ;
#else
  error("cairo_ps_get_levels exists only in cairo >= 1.6.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_cairo_ps_level_to_string(USER_OBJECT_ s_level)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if CAIRO_CHECK_VERSION(1, 6, 0)
  cairo_ps_level_t level = ((cairo_ps_level_t)asCEnum(s_level, CAIRO_TYPE_PS_LEVEL));

  const char* ans;

  ans = cairo_ps_level_to_string(level);

  _result = asRString(ans);
#else
  error("cairo_ps_level_to_string exists only in cairo >= 1.6.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_cairo_ps_surface_set_eps(USER_OBJECT_ s_surface, USER_OBJECT_ s_eps)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if CAIRO_CHECK_VERSION(1, 6, 0)
  cairo_surface_t* surface = ((cairo_surface_t*)getPtrValue(s_surface));
  gboolean eps = ((gboolean)asCLogical(s_eps));


  cairo_ps_surface_set_eps(surface, eps);

#else
  error("cairo_ps_surface_set_eps exists only in cairo >= 1.6.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_cairo_ps_surface_get_eps(USER_OBJECT_ s_surface)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if CAIRO_CHECK_VERSION(1, 6, 0)
  cairo_surface_t* surface = ((cairo_surface_t*)getPtrValue(s_surface));

  gboolean ans;

  ans = cairo_ps_surface_get_eps(surface);

  _result = asRLogical(ans);
#else
  error("cairo_ps_surface_get_eps exists only in cairo >= 1.6.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_cairo_toy_font_face_create(USER_OBJECT_ s_family, USER_OBJECT_ s_slant, USER_OBJECT_ s_weight)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if CAIRO_CHECK_VERSION(1, 8, 0)
  const char* family = ((const char*)asCString(s_family));
  cairo_font_slant_t slant = ((cairo_font_slant_t)asCEnum(s_slant, CAIRO_TYPE_FONT_SLANT));
  cairo_font_weight_t weight = ((cairo_font_weight_t)asCEnum(s_weight, CAIRO_TYPE_FONT_WEIGHT));

  cairo_font_face_t* ans;

  ans = cairo_toy_font_face_create(family, slant, weight);

  _result = toRPointerWithFinalizer(ans, "CairoFontFace", (RPointerFinalizer) cairo_font_face_destroy);
#else
  error("cairo_toy_font_face_create exists only in cairo >= 1.8.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_cairo_toy_font_face_get_family(USER_OBJECT_ s_font_face)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if CAIRO_CHECK_VERSION(1, 8, 0)
  cairo_font_face_t* font_face = ((cairo_font_face_t*)getPtrValue(s_font_face));

  const char* ans;

  ans = cairo_toy_font_face_get_family(font_face);

  _result = asRString(ans);
#else
  error("cairo_toy_font_face_get_family exists only in cairo >= 1.8.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_cairo_toy_font_face_get_slant(USER_OBJECT_ s_font_face)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if CAIRO_CHECK_VERSION(1, 8, 0)
  cairo_font_face_t* font_face = ((cairo_font_face_t*)getPtrValue(s_font_face));

  cairo_font_slant_t ans;

  ans = cairo_toy_font_face_get_slant(font_face);

  _result = asREnum(ans, CAIRO_TYPE_FONT_SLANT);
#else
  error("cairo_toy_font_face_get_slant exists only in cairo >= 1.8.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_cairo_toy_font_face_get_weight(USER_OBJECT_ s_font_face)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if CAIRO_CHECK_VERSION(1, 8, 0)
  cairo_font_face_t* font_face = ((cairo_font_face_t*)getPtrValue(s_font_face));

  cairo_font_weight_t ans;

  ans = cairo_toy_font_face_get_weight(font_face);

  _result = asREnum(ans, CAIRO_TYPE_FONT_WEIGHT);
#else
  error("cairo_toy_font_face_get_weight exists only in cairo >= 1.8.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_cairo_surface_get_fallback_resolution(USER_OBJECT_ s_surface)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if CAIRO_CHECK_VERSION(1, 8, 0)
  cairo_surface_t* surface = ((cairo_surface_t*)getPtrValue(s_surface));

  double x_pixels_per_inch;
  double y_pixels_per_inch;

  cairo_surface_get_fallback_resolution(surface, &x_pixels_per_inch, &y_pixels_per_inch);


  _result = retByVal(PROTECT(_result), "x.pixels.per.inch", PROTECT(asRNumeric(x_pixels_per_inch)), "y.pixels.per.inch", PROTECT(asRNumeric(y_pixels_per_inch)), NULL);
  UNPROTECT(3);
  ;
  ;
#else
  error("cairo_surface_get_fallback_resolution exists only in cairo >= 1.8.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_cairo_surface_has_show_text_glyphs(USER_OBJECT_ s_surface)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if CAIRO_CHECK_VERSION(1, 8, 0)
  cairo_surface_t* surface = ((cairo_surface_t*)getPtrValue(s_surface));

  gboolean ans;

  ans = cairo_surface_has_show_text_glyphs(surface);

  _result = asRLogical(ans);
#else
  error("cairo_surface_has_show_text_glyphs exists only in cairo >= 1.8.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_cairo_show_text_glyphs(USER_OBJECT_ s_cr, USER_OBJECT_ s_utf8, USER_OBJECT_ s_glyphs, USER_OBJECT_ s_clusters, USER_OBJECT_ s_cluster_flags)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if CAIRO_CHECK_VERSION(1, 8, 0)
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));
  const char* utf8 = ((const char*)asCString(s_utf8));
  int utf8_len = ((int)GET_LENGTH(s_glyphs));
  const cairo_glyph_t* glyphs = ((const cairo_glyph_t*)asCArrayRef(s_glyphs, cairo_glyph_t, asCCairoGlyph));
  int num_glyphs = ((int)GET_LENGTH(s_glyphs));
  const cairo_text_cluster_t* clusters = ((const cairo_text_cluster_t*)asCArrayRef(s_clusters, cairo_text_cluster_t, asCCairoTextCluster));
  int num_clusters = ((int)GET_LENGTH(s_clusters));
  cairo_text_cluster_flags_t cluster_flags = ((cairo_text_cluster_flags_t)asCEnum(s_cluster_flags, CAIRO_TYPE_TEXT_CLUSTER_FLAGS));


  cairo_show_text_glyphs(cr, utf8, utf8_len, glyphs, num_glyphs, clusters, num_clusters, cluster_flags);

    CLEANUP(cairo_glyph_free, ((cairo_glyph_t*)glyphs));;
    CLEANUP(cairo_text_cluster_free, ((cairo_text_cluster_t*)clusters));;
#else
  error("cairo_show_text_glyphs exists only in cairo >= 1.8.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_cairo_scaled_font_get_scale_matrix(USER_OBJECT_ s_scaled_font)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if CAIRO_CHECK_VERSION(1, 8, 0)
  cairo_scaled_font_t* scaled_font = ((cairo_scaled_font_t*)getPtrValue(s_scaled_font));

  cairo_matrix_t* scale_matrix = ((cairo_matrix_t *)g_new0(cairo_matrix_t, 1));

  cairo_scaled_font_get_scale_matrix(scaled_font, scale_matrix);


  _result = retByVal(PROTECT(_result), "scale.matrix", PROTECT(toRPointerWithFinalizer(scale_matrix, "CairoMatrix", (RPointerFinalizer) g_free)), NULL);
  UNPROTECT(2);
  ;
#else
  error("cairo_scaled_font_get_scale_matrix exists only in cairo >= 1.8.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_cairo_scaled_font_text_to_glyphs(USER_OBJECT_ s_scaled_font, USER_OBJECT_ s_x, USER_OBJECT_ s_y, USER_OBJECT_ s_utf8, USER_OBJECT_ s_utf8_len)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if CAIRO_CHECK_VERSION(1, 8, 0)
  cairo_scaled_font_t* scaled_font = ((cairo_scaled_font_t*)getPtrValue(s_scaled_font));
  double x = ((double)asCNumeric(s_x));
  double y = ((double)asCNumeric(s_y));
  const char* utf8 = ((const char*)asCString(s_utf8));
  int utf8_len = ((int)asCInteger(s_utf8_len));

  cairo_status_t ans;
  cairo_glyph_t* glyphs = NULL;
  int num_glyphs;
  cairo_text_cluster_t* clusters = NULL;
  int num_clusters;
  cairo_text_cluster_flags_t cluster_flags;

  ans = cairo_scaled_font_text_to_glyphs(scaled_font, x, y, utf8, utf8_len, &glyphs, &num_glyphs, &clusters, &num_clusters, &cluster_flags);

  _result = asREnum(ans, CAIRO_TYPE_STATUS);

  _result = retByVal(PROTECT(_result), "glyphs", PROTECT(asRArrayRefWithSize(glyphs, asRCairoGlyph, num_glyphs)), "num.glyphs", PROTECT(asRInteger(num_glyphs)), "clusters", PROTECT(asRArrayRefWithSize(clusters, asRCairoTextCluster, num_glyphs)), "num.clusters", PROTECT(asRInteger(num_clusters)), "cluster.flags", PROTECT(asREnum(cluster_flags, CAIRO_TYPE_TEXT_CLUSTER_FLAGS)), NULL);
  UNPROTECT(6);
    CLEANUP(cairo_glyph_free, glyphs);;
  ;
    CLEANUP(cairo_text_cluster_free, clusters);;
  ;
  ;
#else
  error("cairo_scaled_font_text_to_glyphs exists only in cairo >= 1.8.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_cairo_user_font_face_create(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if CAIRO_CHECK_VERSION(1, 8, 0)

  cairo_font_face_t* ans;

  ans = cairo_user_font_face_create();

  _result = toRPointerWithFinalizer(ans, "CairoFontFace", (RPointerFinalizer) cairo_font_face_destroy);
#else
  error("cairo_user_font_face_create exists only in cairo >= 1.8.0");
#endif

  return(_result);
}
 

