#ifndef S_CAIRO_FUNCS_H
#define S_CAIRO_FUNCS_H
#include <RGtk2/RSCommon.h>

  USER_OBJECT_
S_cairo_version(void); 

  USER_OBJECT_
S_cairo_version_string(void); 

  USER_OBJECT_
S_cairo_create(USER_OBJECT_ s_target); 

  USER_OBJECT_
S_cairo_reference(USER_OBJECT_ s_cr); 

  USER_OBJECT_
S_cairo_destroy(USER_OBJECT_ s_cr); 

  USER_OBJECT_
S_cairo_save(USER_OBJECT_ s_cr); 

  USER_OBJECT_
S_cairo_restore(USER_OBJECT_ s_cr); 

  USER_OBJECT_
S_cairo_set_operator(USER_OBJECT_ s_cr, USER_OBJECT_ s_op); 

  USER_OBJECT_
S_cairo_set_source(USER_OBJECT_ s_cr, USER_OBJECT_ s_source); 

  USER_OBJECT_
S_cairo_set_source_rgb(USER_OBJECT_ s_cr, USER_OBJECT_ s_red, USER_OBJECT_ s_green, USER_OBJECT_ s_blue); 

  USER_OBJECT_
S_cairo_set_source_rgba(USER_OBJECT_ s_cr, USER_OBJECT_ s_red, USER_OBJECT_ s_green, USER_OBJECT_ s_blue, USER_OBJECT_ s_alpha); 

  USER_OBJECT_
S_cairo_set_source_surface(USER_OBJECT_ s_cr, USER_OBJECT_ s_surface, USER_OBJECT_ s_x, USER_OBJECT_ s_y); 

  USER_OBJECT_
S_cairo_set_tolerance(USER_OBJECT_ s_cr, USER_OBJECT_ s_tolerance); 

  USER_OBJECT_
S_cairo_set_antialias(USER_OBJECT_ s_cr, USER_OBJECT_ s_antialias); 

  USER_OBJECT_
S_cairo_set_fill_rule(USER_OBJECT_ s_cr, USER_OBJECT_ s_fill_rule); 

  USER_OBJECT_
S_cairo_set_line_width(USER_OBJECT_ s_cr, USER_OBJECT_ s_width); 

  USER_OBJECT_
S_cairo_set_line_cap(USER_OBJECT_ s_cr, USER_OBJECT_ s_line_cap); 

  USER_OBJECT_
S_cairo_set_line_join(USER_OBJECT_ s_cr, USER_OBJECT_ s_line_join); 

  USER_OBJECT_
S_cairo_set_dash(USER_OBJECT_ s_cr, USER_OBJECT_ s_dashes, USER_OBJECT_ s_offset); 

  USER_OBJECT_
S_cairo_set_miter_limit(USER_OBJECT_ s_cr, USER_OBJECT_ s_limit); 

  USER_OBJECT_
S_cairo_translate(USER_OBJECT_ s_cr, USER_OBJECT_ s_tx, USER_OBJECT_ s_ty); 

  USER_OBJECT_
S_cairo_scale(USER_OBJECT_ s_cr, USER_OBJECT_ s_sx, USER_OBJECT_ s_sy); 

  USER_OBJECT_
S_cairo_rotate(USER_OBJECT_ s_cr, USER_OBJECT_ s_angle); 

  USER_OBJECT_
S_cairo_transform(USER_OBJECT_ s_cr, USER_OBJECT_ s_matrix); 

  USER_OBJECT_
S_cairo_set_matrix(USER_OBJECT_ s_cr, USER_OBJECT_ s_matrix); 

  USER_OBJECT_
S_cairo_identity_matrix(USER_OBJECT_ s_cr); 

  USER_OBJECT_
S_cairo_user_to_device(USER_OBJECT_ s_cr, USER_OBJECT_ s_x, USER_OBJECT_ s_y); 

  USER_OBJECT_
S_cairo_user_to_device_distance(USER_OBJECT_ s_cr, USER_OBJECT_ s_dx, USER_OBJECT_ s_dy); 

  USER_OBJECT_
S_cairo_device_to_user(USER_OBJECT_ s_cr, USER_OBJECT_ s_x, USER_OBJECT_ s_y); 

  USER_OBJECT_
S_cairo_device_to_user_distance(USER_OBJECT_ s_cr, USER_OBJECT_ s_dx, USER_OBJECT_ s_dy); 

  USER_OBJECT_
S_cairo_new_path(USER_OBJECT_ s_cr); 

  USER_OBJECT_
S_cairo_move_to(USER_OBJECT_ s_cr, USER_OBJECT_ s_x, USER_OBJECT_ s_y); 

  USER_OBJECT_
S_cairo_line_to(USER_OBJECT_ s_cr, USER_OBJECT_ s_x, USER_OBJECT_ s_y); 

  USER_OBJECT_
S_cairo_curve_to(USER_OBJECT_ s_cr, USER_OBJECT_ s_x1, USER_OBJECT_ s_y1, USER_OBJECT_ s_x2, USER_OBJECT_ s_y2, USER_OBJECT_ s_x3, USER_OBJECT_ s_y3); 

  USER_OBJECT_
S_cairo_arc(USER_OBJECT_ s_cr, USER_OBJECT_ s_xc, USER_OBJECT_ s_yc, USER_OBJECT_ s_radius, USER_OBJECT_ s_angle1, USER_OBJECT_ s_angle2); 

  USER_OBJECT_
S_cairo_arc_negative(USER_OBJECT_ s_cr, USER_OBJECT_ s_xc, USER_OBJECT_ s_yc, USER_OBJECT_ s_radius, USER_OBJECT_ s_angle1, USER_OBJECT_ s_angle2); 

  USER_OBJECT_
S_cairo_rel_move_to(USER_OBJECT_ s_cr, USER_OBJECT_ s_dx, USER_OBJECT_ s_dy); 

  USER_OBJECT_
S_cairo_rel_line_to(USER_OBJECT_ s_cr, USER_OBJECT_ s_dx, USER_OBJECT_ s_dy); 

  USER_OBJECT_
S_cairo_rel_curve_to(USER_OBJECT_ s_cr, USER_OBJECT_ s_dx1, USER_OBJECT_ s_dy1, USER_OBJECT_ s_dx2, USER_OBJECT_ s_dy2, USER_OBJECT_ s_dx3, USER_OBJECT_ s_dy3); 

  USER_OBJECT_
S_cairo_rectangle(USER_OBJECT_ s_cr, USER_OBJECT_ s_x, USER_OBJECT_ s_y, USER_OBJECT_ s_width, USER_OBJECT_ s_height); 

  USER_OBJECT_
S_cairo_close_path(USER_OBJECT_ s_cr); 

  USER_OBJECT_
S_cairo_paint(USER_OBJECT_ s_cr); 

  USER_OBJECT_
S_cairo_paint_with_alpha(USER_OBJECT_ s_cr, USER_OBJECT_ s_alpha); 

  USER_OBJECT_
S_cairo_mask(USER_OBJECT_ s_cr, USER_OBJECT_ s_pattern); 

  USER_OBJECT_
S_cairo_mask_surface(USER_OBJECT_ s_cr, USER_OBJECT_ s_surface, USER_OBJECT_ s_surface_x, USER_OBJECT_ s_surface_y); 

  USER_OBJECT_
S_cairo_stroke(USER_OBJECT_ s_cr); 

  USER_OBJECT_
S_cairo_stroke_preserve(USER_OBJECT_ s_cr); 

  USER_OBJECT_
S_cairo_fill(USER_OBJECT_ s_cr); 

  USER_OBJECT_
S_cairo_fill_preserve(USER_OBJECT_ s_cr); 

  USER_OBJECT_
S_cairo_copy_page(USER_OBJECT_ s_cr); 

  USER_OBJECT_
S_cairo_show_page(USER_OBJECT_ s_cr); 

  USER_OBJECT_
S_cairo_in_stroke(USER_OBJECT_ s_cr, USER_OBJECT_ s_x, USER_OBJECT_ s_y); 

  USER_OBJECT_
S_cairo_in_fill(USER_OBJECT_ s_cr, USER_OBJECT_ s_x, USER_OBJECT_ s_y); 

  USER_OBJECT_
S_cairo_stroke_extents(USER_OBJECT_ s_cr); 

  USER_OBJECT_
S_cairo_fill_extents(USER_OBJECT_ s_cr); 

  USER_OBJECT_
S_cairo_reset_clip(USER_OBJECT_ s_cr); 

  USER_OBJECT_
S_cairo_clip(USER_OBJECT_ s_cr); 

  USER_OBJECT_
S_cairo_clip_preserve(USER_OBJECT_ s_cr); 

  USER_OBJECT_
S_cairo_select_font_face(USER_OBJECT_ s_cr, USER_OBJECT_ s_family, USER_OBJECT_ s_slant, USER_OBJECT_ s_weight); 

  USER_OBJECT_
S_cairo_set_font_size(USER_OBJECT_ s_cr, USER_OBJECT_ s_size); 

  USER_OBJECT_
S_cairo_set_font_matrix(USER_OBJECT_ s_cr, USER_OBJECT_ s_matrix); 

  USER_OBJECT_
S_cairo_get_font_matrix(USER_OBJECT_ s_cr, USER_OBJECT_ s_matrix); 

  USER_OBJECT_
S_cairo_show_text(USER_OBJECT_ s_cr, USER_OBJECT_ s_utf8); 

  USER_OBJECT_
S_cairo_show_glyphs(USER_OBJECT_ s_cr, USER_OBJECT_ s_glyphs, USER_OBJECT_ s_num_glyphs); 

  USER_OBJECT_
S_cairo_get_font_face(USER_OBJECT_ s_cr); 

  USER_OBJECT_
S_cairo_font_extents(USER_OBJECT_ s_cr); 

  USER_OBJECT_
S_cairo_set_font_face(USER_OBJECT_ s_cr, USER_OBJECT_ s_font_face); 

  USER_OBJECT_
S_cairo_text_extents(USER_OBJECT_ s_cr, USER_OBJECT_ s_utf8); 

  USER_OBJECT_
S_cairo_glyph_extents(USER_OBJECT_ s_cr, USER_OBJECT_ s_glyphs); 

  USER_OBJECT_
S_cairo_text_path(USER_OBJECT_ s_cr, USER_OBJECT_ s_utf8); 

  USER_OBJECT_
S_cairo_glyph_path(USER_OBJECT_ s_cr, USER_OBJECT_ s_glyphs); 

  USER_OBJECT_
S_cairo_set_font_options(USER_OBJECT_ s_cr, USER_OBJECT_ s_options); 

  USER_OBJECT_
S_cairo_get_font_options(USER_OBJECT_ s_cr); 

  USER_OBJECT_
S_cairo_font_face_reference(USER_OBJECT_ s_font_face); 

  USER_OBJECT_
S_cairo_font_face_destroy(USER_OBJECT_ s_font_face); 

  USER_OBJECT_
S_cairo_font_face_get_user_data(USER_OBJECT_ s_font_face, USER_OBJECT_ s_key); 

  USER_OBJECT_
S_cairo_font_face_set_user_data(USER_OBJECT_ s_font_face, USER_OBJECT_ s_key, USER_OBJECT_ s_user_data); 

  USER_OBJECT_
S_cairo_font_face_status(USER_OBJECT_ s_font_face); 

  USER_OBJECT_
S_cairo_scaled_font_create(USER_OBJECT_ s_font_face, USER_OBJECT_ s_font_matrix, USER_OBJECT_ s_ctm, USER_OBJECT_ s_option); 

  USER_OBJECT_
S_cairo_scaled_font_reference(USER_OBJECT_ s_scaled_font); 

  USER_OBJECT_
S_cairo_scaled_font_destroy(USER_OBJECT_ s_scaled_font); 

  USER_OBJECT_
S_cairo_scaled_font_extents(USER_OBJECT_ s_scaled_font); 

  USER_OBJECT_
S_cairo_scaled_font_glyph_extents(USER_OBJECT_ s_scaled_font, USER_OBJECT_ s_glyphs, USER_OBJECT_ s_num_glyphs); 

  USER_OBJECT_
S_cairo_scaled_font_status(USER_OBJECT_ s_scaled_font); 

  USER_OBJECT_
S_cairo_get_operator(USER_OBJECT_ s_cr); 

  USER_OBJECT_
S_cairo_get_source(USER_OBJECT_ s_cr); 

  USER_OBJECT_
S_cairo_get_tolerance(USER_OBJECT_ s_cr); 

  USER_OBJECT_
S_cairo_get_antialias(USER_OBJECT_ s_cr); 

  USER_OBJECT_
S_cairo_get_current_point(USER_OBJECT_ s_cr, USER_OBJECT_ s_x, USER_OBJECT_ s_y); 

  USER_OBJECT_
S_cairo_get_fill_rule(USER_OBJECT_ s_cr); 

  USER_OBJECT_
S_cairo_get_line_width(USER_OBJECT_ s_cr); 

  USER_OBJECT_
S_cairo_get_line_cap(USER_OBJECT_ s_cr); 

  USER_OBJECT_
S_cairo_get_line_join(USER_OBJECT_ s_cr); 

  USER_OBJECT_
S_cairo_get_miter_limit(USER_OBJECT_ s_cr); 

  USER_OBJECT_
S_cairo_get_matrix(USER_OBJECT_ s_cr, USER_OBJECT_ s_matrix); 

  USER_OBJECT_
S_cairo_get_target(USER_OBJECT_ s_cr); 

  USER_OBJECT_
S_cairo_copy_path(USER_OBJECT_ s_cr); 

  USER_OBJECT_
S_cairo_copy_path_flat(USER_OBJECT_ s_cr); 

  USER_OBJECT_
S_cairo_path_destroy(USER_OBJECT_ s_path); 

  USER_OBJECT_
S_cairo_status(USER_OBJECT_ s_cr); 

  USER_OBJECT_
S_cairo_status_to_string(USER_OBJECT_ s_status); 

  USER_OBJECT_
S_cairo_surface_create_similar(USER_OBJECT_ s_other, USER_OBJECT_ s_content, USER_OBJECT_ s_width, USER_OBJECT_ s_height); 

  USER_OBJECT_
S_cairo_surface_reference(USER_OBJECT_ s_surface); 

  USER_OBJECT_
S_cairo_surface_destroy(USER_OBJECT_ s_surface); 

  USER_OBJECT_
S_cairo_surface_finish(USER_OBJECT_ s_surface); 

  USER_OBJECT_
S_cairo_surface_write_to_png(USER_OBJECT_ s_surface, USER_OBJECT_ s_filename); 

  USER_OBJECT_
S_cairo_surface_write_to_png_stream(USER_OBJECT_ s_surface, USER_OBJECT_ s_write_func, USER_OBJECT_ s_closure); 

  USER_OBJECT_
S_cairo_surface_get_user_data(USER_OBJECT_ s_surface, USER_OBJECT_ s_key); 

  USER_OBJECT_
S_cairo_surface_set_user_data(USER_OBJECT_ s_surface, USER_OBJECT_ s_key, USER_OBJECT_ s_user_data); 

  USER_OBJECT_
S_cairo_surface_flush(USER_OBJECT_ s_surface); 

  USER_OBJECT_
S_cairo_surface_mark_dirty(USER_OBJECT_ s_surface); 

  USER_OBJECT_
S_cairo_surface_mark_dirty_rectangle(USER_OBJECT_ s_surface, USER_OBJECT_ s_x, USER_OBJECT_ s_y, USER_OBJECT_ s_width, USER_OBJECT_ s_height); 

  USER_OBJECT_
S_cairo_surface_set_device_offset(USER_OBJECT_ s_surface, USER_OBJECT_ s_x_offset, USER_OBJECT_ s_y_offset); 

  USER_OBJECT_
S_cairo_surface_get_font_options(USER_OBJECT_ s_surface); 

  USER_OBJECT_
S_cairo_surface_status(USER_OBJECT_ s_surface); 

  USER_OBJECT_
S_cairo_image_surface_create(USER_OBJECT_ s_format, USER_OBJECT_ s_width, USER_OBJECT_ s_height); 

  USER_OBJECT_
S_cairo_image_surface_create_for_data(USER_OBJECT_ s_data, USER_OBJECT_ s_format, USER_OBJECT_ s_width, USER_OBJECT_ s_height, USER_OBJECT_ s_stride); 

  USER_OBJECT_
S_cairo_image_surface_get_width(USER_OBJECT_ s_surface); 

  USER_OBJECT_
S_cairo_image_surface_get_height(USER_OBJECT_ s_surface); 

  USER_OBJECT_
S_cairo_image_surface_create_from_png(USER_OBJECT_ s_filename); 

  USER_OBJECT_
S_cairo_image_surface_create_from_png_stream(USER_OBJECT_ s_read_func, USER_OBJECT_ s_closure); 

  USER_OBJECT_
S_cairo_pattern_create_rgb(USER_OBJECT_ s_red, USER_OBJECT_ s_green, USER_OBJECT_ s_blue); 

  USER_OBJECT_
S_cairo_pattern_create_rgba(USER_OBJECT_ s_red, USER_OBJECT_ s_green, USER_OBJECT_ s_blue, USER_OBJECT_ s_alpha); 

  USER_OBJECT_
S_cairo_pattern_create_for_surface(USER_OBJECT_ s_surface); 

  USER_OBJECT_
S_cairo_pattern_create_linear(USER_OBJECT_ s_x0, USER_OBJECT_ s_y0, USER_OBJECT_ s_x1, USER_OBJECT_ s_y1); 

  USER_OBJECT_
S_cairo_pattern_create_radial(USER_OBJECT_ s_cx0, USER_OBJECT_ s_cy0, USER_OBJECT_ s_radius0, USER_OBJECT_ s_cx1, USER_OBJECT_ s_cy1, USER_OBJECT_ s_radius1); 

  USER_OBJECT_
S_cairo_pattern_reference(USER_OBJECT_ s_pattern); 

  USER_OBJECT_
S_cairo_pattern_destroy(USER_OBJECT_ s_pattern); 

  USER_OBJECT_
S_cairo_pattern_status(USER_OBJECT_ s_pattern); 

  USER_OBJECT_
S_cairo_pattern_add_color_stop_rgb(USER_OBJECT_ s_pattern, USER_OBJECT_ s_offset, USER_OBJECT_ s_red, USER_OBJECT_ s_green, USER_OBJECT_ s_blue); 

  USER_OBJECT_
S_cairo_pattern_add_color_stop_rgba(USER_OBJECT_ s_pattern, USER_OBJECT_ s_offset, USER_OBJECT_ s_red, USER_OBJECT_ s_green, USER_OBJECT_ s_blue, USER_OBJECT_ s_alpha); 

  USER_OBJECT_
S_cairo_pattern_set_matrix(USER_OBJECT_ s_pattern, USER_OBJECT_ s_matrix); 

  USER_OBJECT_
S_cairo_pattern_get_matrix(USER_OBJECT_ s_pattern, USER_OBJECT_ s_matrix); 

  USER_OBJECT_
S_cairo_pattern_set_extend(USER_OBJECT_ s_pattern, USER_OBJECT_ s_extend); 

  USER_OBJECT_
S_cairo_pattern_get_extend(USER_OBJECT_ s_pattern); 

  USER_OBJECT_
S_cairo_pattern_set_filter(USER_OBJECT_ s_pattern, USER_OBJECT_ s_filter); 

  USER_OBJECT_
S_cairo_pattern_get_filter(USER_OBJECT_ s_pattern); 

  USER_OBJECT_
S_cairo_matrix_init(USER_OBJECT_ s_xx, USER_OBJECT_ s_yx, USER_OBJECT_ s_xy, USER_OBJECT_ s_yy, USER_OBJECT_ s_x0, USER_OBJECT_ s_y0); 

  USER_OBJECT_
S_cairo_matrix_init_identity(void); 

  USER_OBJECT_
S_cairo_matrix_init_translate(USER_OBJECT_ s_tx, USER_OBJECT_ s_ty); 

  USER_OBJECT_
S_cairo_matrix_init_scale(USER_OBJECT_ s_sx, USER_OBJECT_ s_sy); 

  USER_OBJECT_
S_cairo_matrix_init_rotate(USER_OBJECT_ s_radians); 

  USER_OBJECT_
S_cairo_matrix_translate(USER_OBJECT_ s_matrix, USER_OBJECT_ s_tx, USER_OBJECT_ s_ty); 

  USER_OBJECT_
S_cairo_matrix_scale(USER_OBJECT_ s_matrix, USER_OBJECT_ s_sx, USER_OBJECT_ s_sy); 

  USER_OBJECT_
S_cairo_matrix_rotate(USER_OBJECT_ s_matrix, USER_OBJECT_ s_radians); 

  USER_OBJECT_
S_cairo_matrix_invert(USER_OBJECT_ s_matrix); 

  USER_OBJECT_
S_cairo_matrix_multiply(USER_OBJECT_ s_result, USER_OBJECT_ s_a, USER_OBJECT_ s_b); 

  USER_OBJECT_
S_cairo_matrix_transform_distance(USER_OBJECT_ s_matrix, USER_OBJECT_ s_dx, USER_OBJECT_ s_dy); 

  USER_OBJECT_
S_cairo_matrix_transform_point(USER_OBJECT_ s_matrix, USER_OBJECT_ s_x, USER_OBJECT_ s_y); 

  USER_OBJECT_
S_cairo_font_options_create(void); 

  USER_OBJECT_
S_cairo_font_options_copy(USER_OBJECT_ s_original); 

  USER_OBJECT_
S_cairo_font_options_destroy(USER_OBJECT_ s_options); 

  USER_OBJECT_
S_cairo_font_options_status(USER_OBJECT_ s_options); 

  USER_OBJECT_
S_cairo_font_options_merge(USER_OBJECT_ s_options, USER_OBJECT_ s_other); 

  USER_OBJECT_
S_cairo_font_options_equal(USER_OBJECT_ s_options, USER_OBJECT_ s_other); 

  USER_OBJECT_
S_cairo_font_options_set_antialias(USER_OBJECT_ s_options, USER_OBJECT_ s_antialias); 

  USER_OBJECT_
S_cairo_font_options_get_antialias(USER_OBJECT_ s_options); 

  USER_OBJECT_
S_cairo_font_options_set_subpixel_order(USER_OBJECT_ s_options, USER_OBJECT_ s_subpixel_order); 

  USER_OBJECT_
S_cairo_font_options_get_subpixel_order(USER_OBJECT_ s_options); 

  USER_OBJECT_
S_cairo_font_options_set_hint_style(USER_OBJECT_ s_options, USER_OBJECT_ s_hint_style); 

  USER_OBJECT_
S_cairo_font_options_get_hint_style(USER_OBJECT_ s_options); 

  USER_OBJECT_
S_cairo_font_options_set_hint_metrics(USER_OBJECT_ s_options, USER_OBJECT_ s_hint_metrics); 

  USER_OBJECT_
S_cairo_font_options_get_hint_metrics(USER_OBJECT_ s_options); 

  USER_OBJECT_
S_cairo_push_group(USER_OBJECT_ s_cr); 

  USER_OBJECT_
S_cairo_push_group_with_content(USER_OBJECT_ s_cr, USER_OBJECT_ s_content); 

  USER_OBJECT_
S_cairo_pop_group(USER_OBJECT_ s_cr); 

  USER_OBJECT_
S_cairo_pop_group_to_source(USER_OBJECT_ s_cr); 

  USER_OBJECT_
S_cairo_get_group_target(USER_OBJECT_ s_cr); 

  USER_OBJECT_
S_cairo_new_sub_path(USER_OBJECT_ s_cr); 

  USER_OBJECT_
S_cairo_set_scaled_font(USER_OBJECT_ s_cr, USER_OBJECT_ s_scaled_font); 

  USER_OBJECT_
S_cairo_scaled_font_get_font_face(USER_OBJECT_ s_scaled_font); 

  USER_OBJECT_
S_cairo_scaled_font_get_font_matrix(USER_OBJECT_ s_scaled_font); 

  USER_OBJECT_
S_cairo_scaled_font_get_ctm(USER_OBJECT_ s_scaled_font); 

  USER_OBJECT_
S_cairo_scaled_font_get_font_options(USER_OBJECT_ s_scaled_font); 

  USER_OBJECT_
S_cairo_scaled_font_text_extents(USER_OBJECT_ s_scaled_font, USER_OBJECT_ s_utf8); 

  USER_OBJECT_
S_cairo_scaled_font_get_type(USER_OBJECT_ s_scaled_font); 

  USER_OBJECT_
S_cairo_font_face_get_type(USER_OBJECT_ s_font_face); 

  USER_OBJECT_
S_cairo_surface_get_type(USER_OBJECT_ s_surface); 

  USER_OBJECT_
S_cairo_surface_get_device_offset(USER_OBJECT_ s_surface); 

  USER_OBJECT_
S_cairo_surface_set_fallback_resolution(USER_OBJECT_ s_surface, USER_OBJECT_ s_x_pixels_per_inch, USER_OBJECT_ s_y_pixels_per_inch); 

  USER_OBJECT_
S_cairo_surface_get_content(USER_OBJECT_ s_surface); 

  USER_OBJECT_
S_cairo_image_surface_get_format(USER_OBJECT_ s_surface); 

  USER_OBJECT_
S_cairo_image_surface_get_stride(USER_OBJECT_ s_surface); 

  USER_OBJECT_
S_cairo_image_surface_get_data(USER_OBJECT_ s_surface); 

  USER_OBJECT_
S_cairo_pattern_get_type(USER_OBJECT_ s_pattern); 

  USER_OBJECT_
S_cairo_pdf_surface_create(USER_OBJECT_ s_filename, USER_OBJECT_ s_width_in_points, USER_OBJECT_ s_height_in_points); 

  USER_OBJECT_
S_cairo_pdf_surface_create_for_stream(USER_OBJECT_ s_write_func, USER_OBJECT_ s_closure, USER_OBJECT_ s_width_in_points, USER_OBJECT_ s_height_in_points); 

  USER_OBJECT_
S_cairo_pdf_surface_set_size(USER_OBJECT_ s_surface, USER_OBJECT_ s_width_in_points, USER_OBJECT_ s_height_in_points); 

  USER_OBJECT_
S_cairo_ps_surface_create(USER_OBJECT_ s_filename, USER_OBJECT_ s_width_in_points, USER_OBJECT_ s_height_in_points); 

  USER_OBJECT_
S_cairo_ps_surface_create_for_stream(USER_OBJECT_ s_write_func, USER_OBJECT_ s_closure, USER_OBJECT_ s_width_in_points, USER_OBJECT_ s_height_in_points); 

  USER_OBJECT_
S_cairo_ps_surface_set_size(USER_OBJECT_ s_surface, USER_OBJECT_ s_width_in_points, USER_OBJECT_ s_height_in_points); 

  USER_OBJECT_
S_cairo_ps_surface_dsc_comment(USER_OBJECT_ s_surface, USER_OBJECT_ s_comment); 

  USER_OBJECT_
S_cairo_ps_surface_dsc_begin_setup(USER_OBJECT_ s_surface); 

  USER_OBJECT_
S_cairo_ps_surface_dsc_begin_page_setup(USER_OBJECT_ s_surface); 

  USER_OBJECT_
S_cairo_svg_surface_create(USER_OBJECT_ s_filename, USER_OBJECT_ s_width_in_points, USER_OBJECT_ s_height_in_points); 

  USER_OBJECT_
S_cairo_svg_surface_create_for_stream(USER_OBJECT_ s_write_func, USER_OBJECT_ s_closure, USER_OBJECT_ s_width_in_points, USER_OBJECT_ s_height_in_points); 

  USER_OBJECT_
S_cairo_svg_surface_restrict_to_version(USER_OBJECT_ s_surface, USER_OBJECT_ s_version); 

  USER_OBJECT_
S_cairo_svg_get_versions(void); 

  USER_OBJECT_
S_cairo_svg_version_to_string(USER_OBJECT_ s_version); 

  USER_OBJECT_
S_cairo_clip_extents(USER_OBJECT_ s_cr); 

  USER_OBJECT_
S_cairo_copy_clip_rectangle_list(USER_OBJECT_ s_cr); 

  USER_OBJECT_
S_cairo_get_dash_count(USER_OBJECT_ s_cr); 

  USER_OBJECT_
S_cairo_pattern_get_rgba(USER_OBJECT_ s_pattern); 

  USER_OBJECT_
S_cairo_pattern_get_surface(USER_OBJECT_ s_pattern); 

  USER_OBJECT_
S_cairo_pattern_get_color_stop_rgba(USER_OBJECT_ s_pattern, USER_OBJECT_ s_index); 

  USER_OBJECT_
S_cairo_pattern_get_color_stop_count(USER_OBJECT_ s_pattern); 

  USER_OBJECT_
S_cairo_pattern_get_linear_points(USER_OBJECT_ s_pattern); 

  USER_OBJECT_
S_cairo_pattern_get_radial_circles(USER_OBJECT_ s_pattern); 

  USER_OBJECT_
S_cairo_get_scaled_font(USER_OBJECT_ s_cr); 

  USER_OBJECT_
S_cairo_set_user_data(USER_OBJECT_ s_cr, USER_OBJECT_ s_key, USER_OBJECT_ s_user_data); 

  USER_OBJECT_
S_cairo_get_user_data(USER_OBJECT_ s_cr, USER_OBJECT_ s_key); 

  USER_OBJECT_
S_cairo_scaled_font_get_user_data(USER_OBJECT_ s_scaled_font, USER_OBJECT_ s_key); 

  USER_OBJECT_
S_cairo_scaled_font_set_user_data(USER_OBJECT_ s_scaled_font, USER_OBJECT_ s_key, USER_OBJECT_ s_user_data); 

  USER_OBJECT_
S_cairo_pattern_get_user_data(USER_OBJECT_ s_pattern, USER_OBJECT_ s_key); 

  USER_OBJECT_
S_cairo_pattern_set_user_data(USER_OBJECT_ s_pattern, USER_OBJECT_ s_key, USER_OBJECT_ s_user_data); 

  USER_OBJECT_
S_cairo_format_stride_for_width(USER_OBJECT_ s_format, USER_OBJECT_ s_width); 

  USER_OBJECT_
S_cairo_has_current_point(USER_OBJECT_ s_cr); 

  USER_OBJECT_
S_cairo_path_extents(USER_OBJECT_ s_cr); 

  USER_OBJECT_
S_cairo_surface_copy_page(USER_OBJECT_ s_surface); 

  USER_OBJECT_
S_cairo_surface_show_page(USER_OBJECT_ s_surface); 

  USER_OBJECT_
S_cairo_ps_surface_restrict_to_level(USER_OBJECT_ s_surface, USER_OBJECT_ s_level); 

  USER_OBJECT_
S_cairo_ps_get_levels(void); 

  USER_OBJECT_
S_cairo_ps_level_to_string(USER_OBJECT_ s_level); 

  USER_OBJECT_
S_cairo_ps_surface_set_eps(USER_OBJECT_ s_surface, USER_OBJECT_ s_eps); 

  USER_OBJECT_
S_cairo_ps_surface_get_eps(USER_OBJECT_ s_surface); 

  USER_OBJECT_
S_cairo_toy_font_face_create(USER_OBJECT_ s_family, USER_OBJECT_ s_slant, USER_OBJECT_ s_weight); 

  USER_OBJECT_
S_cairo_toy_font_face_get_family(USER_OBJECT_ s_font_face); 

  USER_OBJECT_
S_cairo_toy_font_face_get_slant(USER_OBJECT_ s_font_face); 

  USER_OBJECT_
S_cairo_toy_font_face_get_weight(USER_OBJECT_ s_font_face); 

  USER_OBJECT_
S_cairo_surface_get_fallback_resolution(USER_OBJECT_ s_surface); 

  USER_OBJECT_
S_cairo_surface_has_show_text_glyphs(USER_OBJECT_ s_surface); 

  USER_OBJECT_
S_cairo_show_text_glyphs(USER_OBJECT_ s_cr, USER_OBJECT_ s_utf8, USER_OBJECT_ s_glyphs, USER_OBJECT_ s_clusters, USER_OBJECT_ s_cluster_flags); 

  USER_OBJECT_
S_cairo_scaled_font_get_scale_matrix(USER_OBJECT_ s_scaled_font); 

  USER_OBJECT_
S_cairo_scaled_font_text_to_glyphs(USER_OBJECT_ s_scaled_font, USER_OBJECT_ s_x, USER_OBJECT_ s_y, USER_OBJECT_ s_utf8, USER_OBJECT_ s_utf8_len); 

  USER_OBJECT_
S_cairo_user_font_face_create(void); 

#endif
