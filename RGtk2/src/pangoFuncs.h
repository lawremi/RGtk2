#ifndef S_PANGO_FUNCS_H
#define S_PANGO_FUNCS_H
#include <RGtk2/RSCommon.h>

  USER_OBJECT_
S_pango_color_get_type(void); 

  USER_OBJECT_
S_pango_color_copy(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_pango_color_free(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_pango_color_parse(USER_OBJECT_ s_spec); 

  USER_OBJECT_
S_pango_attr_type_register(USER_OBJECT_ s_name); 

  USER_OBJECT_
S_pango_attribute_copy(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_pango_attribute_destroy(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_pango_attribute_equal(USER_OBJECT_ s_object, USER_OBJECT_ s_attr2); 

  USER_OBJECT_
S_pango_attr_language_new(USER_OBJECT_ s_language); 

  USER_OBJECT_
S_pango_attr_family_new(USER_OBJECT_ s_family); 

  USER_OBJECT_
S_pango_attr_foreground_new(USER_OBJECT_ s_red, USER_OBJECT_ s_green, USER_OBJECT_ s_blue); 

  USER_OBJECT_
S_pango_attr_background_new(USER_OBJECT_ s_red, USER_OBJECT_ s_green, USER_OBJECT_ s_blue); 

  USER_OBJECT_
S_pango_attr_strikethrough_color_new(USER_OBJECT_ s_red, USER_OBJECT_ s_green, USER_OBJECT_ s_blue); 

  USER_OBJECT_
S_pango_attr_underline_color_new(USER_OBJECT_ s_red, USER_OBJECT_ s_green, USER_OBJECT_ s_blue); 

  USER_OBJECT_
S_pango_attr_size_new(USER_OBJECT_ s_size); 

  USER_OBJECT_
S_pango_attr_size_new_absolute(USER_OBJECT_ s_size); 

  USER_OBJECT_
S_pango_attr_style_new(USER_OBJECT_ s_style); 

  USER_OBJECT_
S_pango_attr_weight_new(USER_OBJECT_ s_weight); 

  USER_OBJECT_
S_pango_attr_variant_new(USER_OBJECT_ s_variant); 

  USER_OBJECT_
S_pango_attr_stretch_new(USER_OBJECT_ s_stretch); 

  USER_OBJECT_
S_pango_attr_font_desc_new(USER_OBJECT_ s_desc); 

  USER_OBJECT_
S_pango_attr_underline_new(USER_OBJECT_ s_underline); 

  USER_OBJECT_
S_pango_attr_strikethrough_new(USER_OBJECT_ s_strikethrough); 

  USER_OBJECT_
S_pango_attr_rise_new(USER_OBJECT_ s_rise); 

  USER_OBJECT_
S_pango_attr_shape_new(USER_OBJECT_ s_ink_rect, USER_OBJECT_ s_logical_rect); 

  USER_OBJECT_
S_pango_attr_shape_new_with_data(USER_OBJECT_ s_ink_rect, USER_OBJECT_ s_logical_rect, USER_OBJECT_ s_data); 

  USER_OBJECT_
S_pango_attr_letter_spacing_new(USER_OBJECT_ s_letter_spacing); 

  USER_OBJECT_
S_pango_attr_scale_new(USER_OBJECT_ s_scale_factor); 

  USER_OBJECT_
S_pango_attr_fallback_new(USER_OBJECT_ s_fallback); 

  USER_OBJECT_
S_pango_attr_list_get_type(void); 

  USER_OBJECT_
S_pango_attr_list_new(void); 

  USER_OBJECT_
S_pango_attr_list_ref(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_pango_attr_list_unref(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_pango_attr_list_copy(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_pango_attr_list_insert(USER_OBJECT_ s_object, USER_OBJECT_ s_attr); 

  USER_OBJECT_
S_pango_attr_list_insert_before(USER_OBJECT_ s_object, USER_OBJECT_ s_attr); 

  USER_OBJECT_
S_pango_attr_list_change(USER_OBJECT_ s_object, USER_OBJECT_ s_attr); 

  USER_OBJECT_
S_pango_attr_list_splice(USER_OBJECT_ s_object, USER_OBJECT_ s_other, USER_OBJECT_ s_pos, USER_OBJECT_ s_len); 

  USER_OBJECT_
S_pango_attr_list_get_iterator(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_pango_attr_list_filter(USER_OBJECT_ s_object, USER_OBJECT_ s_func, USER_OBJECT_ s_data); 

  USER_OBJECT_
S_pango_attr_iterator_range(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_pango_attr_iterator_next(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_pango_attr_iterator_copy(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_pango_attr_iterator_destroy(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_pango_attr_iterator_get(USER_OBJECT_ s_object, USER_OBJECT_ s_type); 

  USER_OBJECT_
S_pango_attr_iterator_get_attrs(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_pango_parse_markup(USER_OBJECT_ s_markup_text, USER_OBJECT_ s_length, USER_OBJECT_ s_accel_marker); 

  USER_OBJECT_
S_pango_find_paragraph_boundary(USER_OBJECT_ s_text, USER_OBJECT_ s_length); 

  USER_OBJECT_
S_pango_cairo_font_map_get_type(void); 

  USER_OBJECT_
S_pango_cairo_font_map_new(void); 

  USER_OBJECT_
S_pango_cairo_font_map_get_default(void); 

  USER_OBJECT_
S_pango_cairo_font_map_set_resolution(USER_OBJECT_ s_object, USER_OBJECT_ s_dpi); 

  USER_OBJECT_
S_pango_cairo_font_map_get_resolution(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_pango_cairo_font_map_create_context(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_pango_cairo_update_context(USER_OBJECT_ s_cr, USER_OBJECT_ s_context); 

  USER_OBJECT_
S_pango_cairo_context_set_font_options(USER_OBJECT_ s_context, USER_OBJECT_ s_options); 

  USER_OBJECT_
S_pango_cairo_context_get_font_options(USER_OBJECT_ s_context); 

  USER_OBJECT_
S_pango_cairo_context_set_resolution(USER_OBJECT_ s_context, USER_OBJECT_ s_dpi); 

  USER_OBJECT_
S_pango_cairo_context_get_resolution(USER_OBJECT_ s_context); 

  USER_OBJECT_
S_pango_cairo_create_layout(USER_OBJECT_ s_cr); 

  USER_OBJECT_
S_pango_cairo_update_layout(USER_OBJECT_ s_cr, USER_OBJECT_ s_layout); 

  USER_OBJECT_
S_pango_cairo_show_glyph_string(USER_OBJECT_ s_cr, USER_OBJECT_ s_font, USER_OBJECT_ s_glyphs); 

  USER_OBJECT_
S_pango_cairo_show_layout_line(USER_OBJECT_ s_cr, USER_OBJECT_ s_line); 

  USER_OBJECT_
S_pango_cairo_show_layout(USER_OBJECT_ s_cr, USER_OBJECT_ s_layout); 

  USER_OBJECT_
S_pango_cairo_glyph_string_path(USER_OBJECT_ s_cr, USER_OBJECT_ s_font, USER_OBJECT_ s_glyphs); 

  USER_OBJECT_
S_pango_cairo_layout_line_path(USER_OBJECT_ s_cr, USER_OBJECT_ s_line); 

  USER_OBJECT_
S_pango_cairo_layout_path(USER_OBJECT_ s_cr, USER_OBJECT_ s_layout); 

  USER_OBJECT_
S_pango_context_set_font_map(USER_OBJECT_ s_object, USER_OBJECT_ s_font_map); 

  USER_OBJECT_
S_pango_context_get_font_map(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_pango_context_list_families(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_pango_get_mirror_char(USER_OBJECT_ s_ch); 

  USER_OBJECT_
S_pango_unichar_direction(USER_OBJECT_ s_ch); 

  USER_OBJECT_
S_pango_find_base_dir(USER_OBJECT_ s_text, USER_OBJECT_ s_length); 

  USER_OBJECT_
S_pango_context_load_font(USER_OBJECT_ s_object, USER_OBJECT_ s_desc); 

  USER_OBJECT_
S_pango_context_load_fontset(USER_OBJECT_ s_object, USER_OBJECT_ s_desc, USER_OBJECT_ s_language); 

  USER_OBJECT_
S_pango_context_set_matrix(USER_OBJECT_ s_object, USER_OBJECT_ s_matrix); 

  USER_OBJECT_
S_pango_context_get_matrix(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_pango_context_get_metrics(USER_OBJECT_ s_object, USER_OBJECT_ s_desc, USER_OBJECT_ s_language); 

  USER_OBJECT_
S_pango_context_set_font_description(USER_OBJECT_ s_object, USER_OBJECT_ s_desc); 

  USER_OBJECT_
S_pango_context_get_font_description(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_pango_context_get_language(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_pango_context_set_language(USER_OBJECT_ s_object, USER_OBJECT_ s_language); 

  USER_OBJECT_
S_pango_context_set_base_dir(USER_OBJECT_ s_object, USER_OBJECT_ s_direction); 

  USER_OBJECT_
S_pango_context_get_base_dir(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_pango_itemize(USER_OBJECT_ s_context, USER_OBJECT_ s_text, USER_OBJECT_ s_start_index, USER_OBJECT_ s_length, USER_OBJECT_ s_attrs, USER_OBJECT_ s_cached_iter); 

  USER_OBJECT_
S_pango_itemize_with_base_dir(USER_OBJECT_ s_context, USER_OBJECT_ s_base_dir, USER_OBJECT_ s_text, USER_OBJECT_ s_start_index, USER_OBJECT_ s_length, USER_OBJECT_ s_attrs, USER_OBJECT_ s_cached_iter); 

  USER_OBJECT_
S_pango_coverage_new(void); 

  USER_OBJECT_
S_pango_coverage_ref(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_pango_coverage_unref(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_pango_coverage_copy(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_pango_coverage_get(USER_OBJECT_ s_object, USER_OBJECT_ s_index); 

  USER_OBJECT_
S_pango_coverage_set(USER_OBJECT_ s_object, USER_OBJECT_ s_index, USER_OBJECT_ s_level); 

  USER_OBJECT_
S_pango_coverage_max(USER_OBJECT_ s_object, USER_OBJECT_ s_other); 

  USER_OBJECT_
S_pango_coverage_to_bytes(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_pango_coverage_from_bytes(USER_OBJECT_ s_bytes); 

  USER_OBJECT_
S_pango_font_description_new(void); 

  USER_OBJECT_
S_pango_font_description_copy(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_pango_font_description_copy_static(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_pango_font_description_hash(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_pango_font_description_equal(USER_OBJECT_ s_object, USER_OBJECT_ s_desc2); 

  USER_OBJECT_
S_pango_font_description_free(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_pango_font_description_set_family(USER_OBJECT_ s_object, USER_OBJECT_ s_family); 

  USER_OBJECT_
S_pango_font_description_set_family_static(USER_OBJECT_ s_object, USER_OBJECT_ s_family); 

  USER_OBJECT_
S_pango_font_description_get_family(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_pango_font_description_set_style(USER_OBJECT_ s_object, USER_OBJECT_ s_style); 

  USER_OBJECT_
S_pango_font_description_get_style(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_pango_font_description_set_variant(USER_OBJECT_ s_object, USER_OBJECT_ s_variant); 

  USER_OBJECT_
S_pango_font_description_get_variant(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_pango_font_description_set_weight(USER_OBJECT_ s_object, USER_OBJECT_ s_weight); 

  USER_OBJECT_
S_pango_font_description_get_weight(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_pango_font_description_set_stretch(USER_OBJECT_ s_object, USER_OBJECT_ s_stretch); 

  USER_OBJECT_
S_pango_font_description_get_stretch(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_pango_font_description_set_absolute_size(USER_OBJECT_ s_object, USER_OBJECT_ s_size); 

  USER_OBJECT_
S_pango_font_description_get_size_is_absolute(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_pango_font_description_set_size(USER_OBJECT_ s_object, USER_OBJECT_ s_size); 

  USER_OBJECT_
S_pango_font_description_get_size(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_pango_font_description_get_set_fields(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_pango_font_description_unset_fields(USER_OBJECT_ s_object, USER_OBJECT_ s_to_unset); 

  USER_OBJECT_
S_pango_font_description_merge(USER_OBJECT_ s_object, USER_OBJECT_ s_desc_to_merge, USER_OBJECT_ s_replace_existing); 

  USER_OBJECT_
S_pango_font_description_merge_static(USER_OBJECT_ s_object, USER_OBJECT_ s_desc_to_merge, USER_OBJECT_ s_replace_existing); 

  USER_OBJECT_
S_pango_font_description_better_match(USER_OBJECT_ s_object, USER_OBJECT_ s_old_match, USER_OBJECT_ s_new_match); 

  USER_OBJECT_
S_pango_font_description_from_string(USER_OBJECT_ s_str); 

  USER_OBJECT_
S_pango_font_description_to_string(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_pango_font_description_to_filename(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_pango_font_metrics_get_type(void); 

  USER_OBJECT_
S_pango_font_metrics_ref(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_pango_font_metrics_unref(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_pango_font_metrics_get_ascent(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_pango_font_metrics_get_descent(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_pango_font_metrics_get_approximate_char_width(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_pango_font_metrics_get_approximate_digit_width(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_pango_font_metrics_get_strikethrough_position(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_pango_font_metrics_get_strikethrough_thickness(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_pango_font_metrics_get_underline_position(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_pango_font_metrics_get_underline_thickness(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_pango_font_family_get_type(void); 

  USER_OBJECT_
S_pango_font_family_list_faces(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_pango_font_family_get_name(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_pango_font_family_is_monospace(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_pango_font_face_get_type(void); 

  USER_OBJECT_
S_pango_font_face_describe(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_pango_font_face_get_face_name(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_pango_font_face_list_sizes(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_pango_font_get_type(void); 

  USER_OBJECT_
S_pango_font_describe(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_pango_font_get_coverage(USER_OBJECT_ s_object, USER_OBJECT_ s_language); 

  USER_OBJECT_
S_pango_font_get_metrics(USER_OBJECT_ s_object, USER_OBJECT_ s_language); 

  USER_OBJECT_
S_pango_font_get_glyph_extents(USER_OBJECT_ s_object, USER_OBJECT_ s_glyph); 

  USER_OBJECT_
S_pango_font_get_font_map(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_pango_font_map_load_font(USER_OBJECT_ s_object, USER_OBJECT_ s_context, USER_OBJECT_ s_desc); 

  USER_OBJECT_
S_pango_font_map_load_fontset(USER_OBJECT_ s_object, USER_OBJECT_ s_context, USER_OBJECT_ s_desc, USER_OBJECT_ s_language); 

  USER_OBJECT_
S_pango_font_map_list_families(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_pango_fontset_get_font(USER_OBJECT_ s_object, USER_OBJECT_ s_wc); 

  USER_OBJECT_
S_pango_fontset_get_metrics(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_pango_fontset_foreach(USER_OBJECT_ s_object, USER_OBJECT_ s_func, USER_OBJECT_ s_data); 

  USER_OBJECT_
S_pango_glyph_string_new(void); 

  USER_OBJECT_
S_pango_glyph_string_set_size(USER_OBJECT_ s_object, USER_OBJECT_ s_new_len); 

  USER_OBJECT_
S_pango_glyph_string_get_type(void); 

  USER_OBJECT_
S_pango_glyph_string_copy(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_pango_glyph_string_free(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_pango_glyph_string_extents(USER_OBJECT_ s_object, USER_OBJECT_ s_font); 

  USER_OBJECT_
S_pango_glyph_string_extents_range(USER_OBJECT_ s_object, USER_OBJECT_ s_start, USER_OBJECT_ s_end, USER_OBJECT_ s_font); 

  USER_OBJECT_
S_pango_glyph_string_index_to_x(USER_OBJECT_ s_object, USER_OBJECT_ s_text, USER_OBJECT_ s_length, USER_OBJECT_ s_analysis, USER_OBJECT_ s_index, USER_OBJECT_ s_trailing); 

  USER_OBJECT_
S_pango_glyph_string_x_to_index(USER_OBJECT_ s_object, USER_OBJECT_ s_text, USER_OBJECT_ s_length, USER_OBJECT_ s_analysis, USER_OBJECT_ s_x_pos); 

  USER_OBJECT_
S_pango_glyph_item_split(USER_OBJECT_ s_orig, USER_OBJECT_ s_text, USER_OBJECT_ s_split_index); 

  USER_OBJECT_
S_pango_glyph_item_apply_attrs(USER_OBJECT_ s_glyph_item, USER_OBJECT_ s_text, USER_OBJECT_ s_list); 

  USER_OBJECT_
S_pango_glyph_item_letter_space(USER_OBJECT_ s_glyph_item, USER_OBJECT_ s_text, USER_OBJECT_ s_log_attrs); 

  USER_OBJECT_
S_pango_matrix_translate(USER_OBJECT_ s_object, USER_OBJECT_ s_tx, USER_OBJECT_ s_ty); 

  USER_OBJECT_
S_pango_matrix_scale(USER_OBJECT_ s_object, USER_OBJECT_ s_scale_x, USER_OBJECT_ s_scale_y); 

  USER_OBJECT_
S_pango_matrix_rotate(USER_OBJECT_ s_object, USER_OBJECT_ s_degrees); 

  USER_OBJECT_
S_pango_matrix_concat(USER_OBJECT_ s_object, USER_OBJECT_ s_new_matrix); 

  USER_OBJECT_
S_pango_matrix_copy(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_pango_shape(USER_OBJECT_ s_text, USER_OBJECT_ s_length, USER_OBJECT_ s_analysis, USER_OBJECT_ s_glyphs); 

  USER_OBJECT_
S_pango_item_copy(USER_OBJECT_ s_item); 

  USER_OBJECT_
S_pango_item_new(void); 

  USER_OBJECT_
S_pango_item_split(USER_OBJECT_ s_orig, USER_OBJECT_ s_split_index, USER_OBJECT_ s_split_offset); 

  USER_OBJECT_
S_pango_reorder_items(USER_OBJECT_ s_logical_items); 

  USER_OBJECT_
S_pango_layout_get_type(void); 

  USER_OBJECT_
S_pango_layout_new(USER_OBJECT_ s_context); 

  USER_OBJECT_
S_pango_layout_copy(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_pango_layout_get_context(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_pango_layout_set_attributes(USER_OBJECT_ s_object, USER_OBJECT_ s_attrs); 

  USER_OBJECT_
S_pango_layout_get_attributes(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_pango_layout_set_text(USER_OBJECT_ s_object, USER_OBJECT_ s_text, USER_OBJECT_ s_length); 

  USER_OBJECT_
S_pango_layout_get_text(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_pango_layout_set_markup(USER_OBJECT_ s_object, USER_OBJECT_ s_markup, USER_OBJECT_ s_length); 

  USER_OBJECT_
S_pango_layout_set_markup_with_accel(USER_OBJECT_ s_object, USER_OBJECT_ s_markup, USER_OBJECT_ s_length, USER_OBJECT_ s_accel_marker); 

  USER_OBJECT_
S_pango_layout_set_font_description(USER_OBJECT_ s_object, USER_OBJECT_ s_desc); 

  USER_OBJECT_
S_pango_layout_get_font_description(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_pango_layout_set_width(USER_OBJECT_ s_object, USER_OBJECT_ s_width); 

  USER_OBJECT_
S_pango_layout_get_width(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_pango_layout_set_wrap(USER_OBJECT_ s_object, USER_OBJECT_ s_wrap); 

  USER_OBJECT_
S_pango_layout_get_wrap(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_pango_layout_set_indent(USER_OBJECT_ s_object, USER_OBJECT_ s_indent); 

  USER_OBJECT_
S_pango_layout_get_indent(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_pango_layout_set_spacing(USER_OBJECT_ s_object, USER_OBJECT_ s_spacing); 

  USER_OBJECT_
S_pango_layout_get_spacing(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_pango_layout_set_justify(USER_OBJECT_ s_object, USER_OBJECT_ s_justify); 

  USER_OBJECT_
S_pango_layout_get_justify(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_pango_layout_set_auto_dir(USER_OBJECT_ s_object, USER_OBJECT_ s_auto_dir); 

  USER_OBJECT_
S_pango_layout_get_auto_dir(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_pango_layout_set_alignment(USER_OBJECT_ s_object, USER_OBJECT_ s_alignment); 

  USER_OBJECT_
S_pango_layout_get_alignment(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_pango_layout_set_tabs(USER_OBJECT_ s_object, USER_OBJECT_ s_tabs); 

  USER_OBJECT_
S_pango_layout_get_tabs(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_pango_layout_set_single_paragraph_mode(USER_OBJECT_ s_object, USER_OBJECT_ s_setting); 

  USER_OBJECT_
S_pango_layout_get_single_paragraph_mode(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_pango_layout_set_ellipsize(USER_OBJECT_ s_object, USER_OBJECT_ s_ellipsize); 

  USER_OBJECT_
S_pango_layout_get_ellipsize(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_pango_layout_context_changed(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_pango_layout_get_log_attrs(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_pango_layout_index_to_pos(USER_OBJECT_ s_object, USER_OBJECT_ s_index, USER_OBJECT_ s_pos); 

  USER_OBJECT_
S_pango_layout_get_cursor_pos(USER_OBJECT_ s_object, USER_OBJECT_ s_index); 

  USER_OBJECT_
S_pango_layout_move_cursor_visually(USER_OBJECT_ s_object, USER_OBJECT_ s_strong, USER_OBJECT_ s_old_index, USER_OBJECT_ s_old_trailing, USER_OBJECT_ s_direction); 

  USER_OBJECT_
S_pango_layout_xy_to_index(USER_OBJECT_ s_object, USER_OBJECT_ s_x, USER_OBJECT_ s_y); 

  USER_OBJECT_
S_pango_layout_get_extents(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_pango_layout_get_pixel_extents(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_pango_layout_get_size(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_pango_layout_get_pixel_size(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_pango_layout_get_line_count(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_pango_layout_get_line(USER_OBJECT_ s_object, USER_OBJECT_ s_line); 

  USER_OBJECT_
S_pango_layout_line_x_to_index(USER_OBJECT_ s_object, USER_OBJECT_ s_x_pos); 

  USER_OBJECT_
S_pango_layout_line_index_to_x(USER_OBJECT_ s_object, USER_OBJECT_ s_index, USER_OBJECT_ s_trailing); 

  USER_OBJECT_
S_pango_layout_line_get_x_ranges(USER_OBJECT_ s_object, USER_OBJECT_ s_start_index, USER_OBJECT_ s_end_index); 

  USER_OBJECT_
S_pango_layout_line_get_extents(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_pango_layout_line_get_pixel_extents(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_pango_layout_iter_get_type(void); 

  USER_OBJECT_
S_pango_layout_get_iter(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_pango_layout_iter_free(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_pango_layout_iter_get_index(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_pango_layout_iter_get_run(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_pango_layout_iter_get_line(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_pango_layout_iter_at_last_line(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_pango_layout_iter_next_char(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_pango_layout_iter_next_cluster(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_pango_layout_iter_next_run(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_pango_layout_iter_next_line(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_pango_layout_iter_get_char_extents(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_pango_layout_iter_get_cluster_extents(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_pango_layout_iter_get_run_extents(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_pango_layout_iter_get_line_extents(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_pango_layout_iter_get_line_yrange(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_pango_layout_iter_get_layout_extents(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_pango_layout_iter_get_baseline(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_pango_renderer_get_type(void); 

  USER_OBJECT_
S_pango_renderer_draw_layout(USER_OBJECT_ s_object, USER_OBJECT_ s_layout, USER_OBJECT_ s_x, USER_OBJECT_ s_y); 

  USER_OBJECT_
S_pango_renderer_draw_layout_line(USER_OBJECT_ s_object, USER_OBJECT_ s_line, USER_OBJECT_ s_x, USER_OBJECT_ s_y); 

  USER_OBJECT_
S_pango_renderer_draw_glyphs(USER_OBJECT_ s_object, USER_OBJECT_ s_font, USER_OBJECT_ s_glyphs, USER_OBJECT_ s_x, USER_OBJECT_ s_y); 

  USER_OBJECT_
S_pango_renderer_draw_rectangle(USER_OBJECT_ s_object, USER_OBJECT_ s_part, USER_OBJECT_ s_x, USER_OBJECT_ s_y, USER_OBJECT_ s_width, USER_OBJECT_ s_height); 

  USER_OBJECT_
S_pango_renderer_draw_error_underline(USER_OBJECT_ s_object, USER_OBJECT_ s_x, USER_OBJECT_ s_y, USER_OBJECT_ s_width, USER_OBJECT_ s_height); 

  USER_OBJECT_
S_pango_renderer_draw_trapezoid(USER_OBJECT_ s_object, USER_OBJECT_ s_part, USER_OBJECT_ s_y1_, USER_OBJECT_ s_x11, USER_OBJECT_ s_x21, USER_OBJECT_ s_y2, USER_OBJECT_ s_x12, USER_OBJECT_ s_x22); 

  USER_OBJECT_
S_pango_renderer_draw_glyph(USER_OBJECT_ s_object, USER_OBJECT_ s_font, USER_OBJECT_ s_glyph, USER_OBJECT_ s_x, USER_OBJECT_ s_y); 

  USER_OBJECT_
S_pango_renderer_activate(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_pango_renderer_deactivate(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_pango_renderer_part_changed(USER_OBJECT_ s_object, USER_OBJECT_ s_part); 

  USER_OBJECT_
S_pango_renderer_set_color(USER_OBJECT_ s_object, USER_OBJECT_ s_part, USER_OBJECT_ s_color); 

  USER_OBJECT_
S_pango_renderer_get_color(USER_OBJECT_ s_object, USER_OBJECT_ s_part); 

  USER_OBJECT_
S_pango_renderer_set_matrix(USER_OBJECT_ s_object, USER_OBJECT_ s_matrix); 

  USER_OBJECT_
S_pango_renderer_get_matrix(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_pango_tab_array_new(USER_OBJECT_ s_initial_size, USER_OBJECT_ s_positions_in_pixels); 

  USER_OBJECT_
S_pango_tab_array_get_type(void); 

  USER_OBJECT_
S_pango_tab_array_copy(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_pango_tab_array_free(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_pango_tab_array_get_size(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_pango_tab_array_resize(USER_OBJECT_ s_object, USER_OBJECT_ s_new_size); 

  USER_OBJECT_
S_pango_tab_array_set_tab(USER_OBJECT_ s_object, USER_OBJECT_ s_tab_index, USER_OBJECT_ s_alignment, USER_OBJECT_ s_location); 

  USER_OBJECT_
S_pango_tab_array_get_tab(USER_OBJECT_ s_object, USER_OBJECT_ s_tab_index); 

  USER_OBJECT_
S_pango_tab_array_get_positions_in_pixels(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_pango_language_from_string(USER_OBJECT_ s_language); 

  USER_OBJECT_
S_pango_language_matches(USER_OBJECT_ s_object, USER_OBJECT_ s_range_list); 

  USER_OBJECT_
S_pango_language_to_string(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_PANGO_PIXELS(USER_OBJECT_ s_size); 

  USER_OBJECT_
S_pango_script_for_unichar(USER_OBJECT_ s_ch); 

  USER_OBJECT_
S_pango_script_iter_new(USER_OBJECT_ s_text, USER_OBJECT_ s_length); 

  USER_OBJECT_
S_pango_script_iter_get_range(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_pango_script_iter_next(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_pango_script_iter_free(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_pango_script_get_sample_language(USER_OBJECT_ s_script); 

  USER_OBJECT_
S_pango_language_includes_script(USER_OBJECT_ s_object, USER_OBJECT_ s_script); 

  USER_OBJECT_
S_pango_cairo_show_error_underline(USER_OBJECT_ s_cr, USER_OBJECT_ s_x, USER_OBJECT_ s_y, USER_OBJECT_ s_width, USER_OBJECT_ s_height); 

  USER_OBJECT_
S_pango_cairo_error_underline_path(USER_OBJECT_ s_cr, USER_OBJECT_ s_x, USER_OBJECT_ s_y, USER_OBJECT_ s_width, USER_OBJECT_ s_height); 

  USER_OBJECT_
S_pango_font_describe_with_absolute_size(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_pango_glyph_string_get_width(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_pango_matrix_get_font_scale_factor(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_pango_layout_index_to_line_x(USER_OBJECT_ s_object, USER_OBJECT_ s_index_, USER_OBJECT_ s_trailing); 

  USER_OBJECT_
S_pango_gravity_to_rotation(USER_OBJECT_ s_base_gravity); 

  USER_OBJECT_
S_pango_gravity_get_for_matrix(USER_OBJECT_ s_matrix); 

  USER_OBJECT_
S_pango_gravity_get_for_script(USER_OBJECT_ s_script, USER_OBJECT_ s_base_gravity, USER_OBJECT_ s_hint); 

  USER_OBJECT_
S_pango_attr_gravity_new(USER_OBJECT_ s_gravity); 

  USER_OBJECT_
S_pango_attr_gravity_hint_new(USER_OBJECT_ s_hint); 

  USER_OBJECT_
S_pango_context_set_base_gravity(USER_OBJECT_ s_object, USER_OBJECT_ s_gravity); 

  USER_OBJECT_
S_pango_context_get_base_gravity(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_pango_context_get_gravity(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_pango_context_set_gravity_hint(USER_OBJECT_ s_object, USER_OBJECT_ s_hint); 

  USER_OBJECT_
S_pango_context_get_gravity_hint(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_pango_font_description_set_gravity(USER_OBJECT_ s_object, USER_OBJECT_ s_gravity); 

  USER_OBJECT_
S_pango_font_description_get_gravity(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_pango_layout_get_line_readonly(USER_OBJECT_ s_object, USER_OBJECT_ s_line); 

  USER_OBJECT_
S_pango_layout_get_lines_readonly(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_pango_layout_iter_get_line_readonly(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_pango_layout_iter_get_run_readonly(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_pango_color_to_string(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_pango_matrix_transform_point(USER_OBJECT_ s_object, USER_OBJECT_ s_x, USER_OBJECT_ s_y); 

  USER_OBJECT_
S_pango_matrix_transform_distance(USER_OBJECT_ s_object, USER_OBJECT_ s_dx, USER_OBJECT_ s_dy); 

  USER_OBJECT_
S_pango_matrix_transform_rectangle(USER_OBJECT_ s_object, USER_OBJECT_ s_rect); 

  USER_OBJECT_
S_pango_matrix_transform_pixel_rectangle(USER_OBJECT_ s_object, USER_OBJECT_ s_rect); 

  USER_OBJECT_
S_pango_units_from_double(USER_OBJECT_ s_d); 

  USER_OBJECT_
S_pango_units_to_double(USER_OBJECT_ s_i); 

  USER_OBJECT_
S_pango_extents_to_pixels(USER_OBJECT_ s_inclusive, USER_OBJECT_ s_nearest); 

  USER_OBJECT_
S_pango_layout_is_wrapped(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_pango_layout_is_ellipsized(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_pango_layout_get_unknown_glyphs_count(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_pango_version(void); 

  USER_OBJECT_
S_pango_version_string(void); 

  USER_OBJECT_
S_pango_version_check(USER_OBJECT_ s_required_major, USER_OBJECT_ s_required_minor, USER_OBJECT_ s_required_micro); 

  USER_OBJECT_
S_pango_layout_get_height(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_pango_layout_set_height(USER_OBJECT_ s_object, USER_OBJECT_ s_height); 

  USER_OBJECT_
S_pango_attribute_init(USER_OBJECT_ s_attr, USER_OBJECT_ s_klass); 

  USER_OBJECT_
S_pango_layout_iter_get_layout(USER_OBJECT_ s_iter); 

  USER_OBJECT_
S_pango_renderer_get_layout(USER_OBJECT_ s_renderer); 

  USER_OBJECT_
S_pango_renderer_get_layout_line(USER_OBJECT_ s_renderer); 

  USER_OBJECT_
S_pango_font_face_is_synthesized(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_pango_cairo_font_get_scaled_font(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_pango_cairo_font_map_new_for_font_type(USER_OBJECT_ s_fonttype); 

  USER_OBJECT_
S_pango_cairo_font_map_get_font_type(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_pango_cairo_context_set_shape_renderer(USER_OBJECT_ s_object, USER_OBJECT_ s_func, USER_OBJECT_ s_data); 

  USER_OBJECT_
S_pango_cairo_context_get_shape_renderer(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_pango_language_get_default(void); 

  USER_OBJECT_
S_pango_language_get_sample_string(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_pango_bidi_type_for_unichar(USER_OBJECT_ s_ch); 

  USER_OBJECT_
S_pango_attr_type_get_name(USER_OBJECT_ s_type); 

  USER_OBJECT_
S_pango_cairo_create_context(USER_OBJECT_ s_cr); 

  USER_OBJECT_
S_pango_cairo_font_map_set_default(USER_OBJECT_ s_fontmap); 

  USER_OBJECT_
S_pango_cairo_show_glyph_item(USER_OBJECT_ s_cr, USER_OBJECT_ s_text, USER_OBJECT_ s_glyph_item); 

  USER_OBJECT_
S_pango_renderer_draw_glyph_item(USER_OBJECT_ s_object, USER_OBJECT_ s_text, USER_OBJECT_ s_glyph_item, USER_OBJECT_ s_x, USER_OBJECT_ s_y); 

  USER_OBJECT_
S_pango_font_map_create_context(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_pango_glyph_item_iter_init_start(USER_OBJECT_ s_object, USER_OBJECT_ s_glyph_item, USER_OBJECT_ s_text); 

  USER_OBJECT_
S_pango_glyph_item_iter_init_end(USER_OBJECT_ s_object, USER_OBJECT_ s_glyph_item, USER_OBJECT_ s_text); 

  USER_OBJECT_
S_pango_glyph_item_iter_next_cluster(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_pango_glyph_item_iter_prev_cluster(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_pango_language_get_scripts(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_pango_layout_get_baseline(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_pango_gravity_get_for_script_and_width(USER_OBJECT_ s_script, USER_OBJECT_ s_wide, USER_OBJECT_ s_base_gravity, USER_OBJECT_ s_hint); 

#endif
