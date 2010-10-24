#ifndef S_GDK_FUNCS_H
#define S_GDK_FUNCS_H
#include <RGtk2/RSCommon.h>

  USER_OBJECT_
S_gdk_notify_startup_complete(void); 

  USER_OBJECT_
S_gdk_get_display_arg_name(void); 

  USER_OBJECT_
S_gdk_get_program_class(void); 

  USER_OBJECT_
S_gdk_set_program_class(USER_OBJECT_ s_program_class); 

  USER_OBJECT_
S_gdk_get_display(void); 

  USER_OBJECT_
S_gdk_pointer_grab(USER_OBJECT_ s_window, USER_OBJECT_ s_owner_events, USER_OBJECT_ s_event_mask, USER_OBJECT_ s_confine_to, USER_OBJECT_ s_cursor, USER_OBJECT_ s_time); 

  USER_OBJECT_
S_gdk_pointer_ungrab(USER_OBJECT_ s_time); 

  USER_OBJECT_
S_gdk_keyboard_grab(USER_OBJECT_ s_window, USER_OBJECT_ s_owner_events, USER_OBJECT_ s_time); 

  USER_OBJECT_
S_gdk_keyboard_ungrab(USER_OBJECT_ s_time); 

  USER_OBJECT_
S_gdk_pointer_is_grabbed(void); 

  USER_OBJECT_
S_gdk_screen_width(void); 

  USER_OBJECT_
S_gdk_screen_height(void); 

  USER_OBJECT_
S_gdk_screen_width_mm(void); 

  USER_OBJECT_
S_gdk_screen_height_mm(void); 

  USER_OBJECT_
S_gdk_flush(void); 

  USER_OBJECT_
S_gdk_beep(void); 

  USER_OBJECT_
S_gdk_set_double_click_time(USER_OBJECT_ s_msec); 

  USER_OBJECT_
S_gdk_cairo_create(USER_OBJECT_ s_drawable); 

  USER_OBJECT_
S_gdk_cairo_set_source_color(USER_OBJECT_ s_cr, USER_OBJECT_ s_color); 

  USER_OBJECT_
S_gdk_cairo_set_source_pixbuf(USER_OBJECT_ s_cr, USER_OBJECT_ s_pixbuf, USER_OBJECT_ s_pixbuf_x, USER_OBJECT_ s_pixbuf_y); 

  USER_OBJECT_
S_gdk_cairo_rectangle(USER_OBJECT_ s_cr, USER_OBJECT_ s_rectangle); 

  USER_OBJECT_
S_gdk_cairo_region(USER_OBJECT_ s_cr, USER_OBJECT_ s_region); 

  USER_OBJECT_
S_gdk_colormap_get_type(void); 

  USER_OBJECT_
S_gdk_colormap_new(USER_OBJECT_ s_visual, USER_OBJECT_ s_allocate); 

  USER_OBJECT_
S_gdk_colormap_get_system(void); 

  USER_OBJECT_
S_gdk_colormap_get_system_size(void); 

  USER_OBJECT_
S_gdk_colormap_free_colors(USER_OBJECT_ s_object, USER_OBJECT_ s_colors); 

  USER_OBJECT_
S_gdk_colormap_query_color(USER_OBJECT_ s_object, USER_OBJECT_ s_pixel); 

  USER_OBJECT_
S_gdk_colormap_get_visual(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_colormap_get_screen(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_color_parse(USER_OBJECT_ s_spec); 

  USER_OBJECT_
S_gdk_color_white(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_color_black(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_color_alloc(USER_OBJECT_ s_object, USER_OBJECT_ s_color); 

  USER_OBJECT_
S_gdk_color_change(USER_OBJECT_ s_object, USER_OBJECT_ s_color); 

  USER_OBJECT_
S_gdk_cursor_new(USER_OBJECT_ s_cursor_type); 

  USER_OBJECT_
S_gdk_cursor_new_from_name(USER_OBJECT_ s_display, USER_OBJECT_ s_name); 

  USER_OBJECT_
S_gdk_cursor_new_for_display(USER_OBJECT_ s_display, USER_OBJECT_ s_cursor_type); 

  USER_OBJECT_
S_gdk_cursor_new_from_pixmap(USER_OBJECT_ s_source, USER_OBJECT_ s_mask, USER_OBJECT_ s_fg, USER_OBJECT_ s_bg, USER_OBJECT_ s_x, USER_OBJECT_ s_y); 

  USER_OBJECT_
S_gdk_cursor_new_from_pixbuf(USER_OBJECT_ s_display, USER_OBJECT_ s_source, USER_OBJECT_ s_x, USER_OBJECT_ s_y); 

  USER_OBJECT_
S_gdk_cursor_get_display(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_cursor_get_image(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_display_get_type(void); 

  USER_OBJECT_
S_gdk_display_open(USER_OBJECT_ s_display_name); 

  USER_OBJECT_
S_gdk_display_get_name(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_display_get_n_screens(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_display_get_screen(USER_OBJECT_ s_object, USER_OBJECT_ s_screen_num); 

  USER_OBJECT_
S_gdk_display_get_default_screen(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_display_pointer_ungrab(USER_OBJECT_ s_object, USER_OBJECT_ s_time_); 

  USER_OBJECT_
S_gdk_display_keyboard_ungrab(USER_OBJECT_ s_object, USER_OBJECT_ s_time_); 

  USER_OBJECT_
S_gdk_display_pointer_is_grabbed(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_display_beep(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_display_sync(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_display_close(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_display_list_devices(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_display_get_event(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_display_peek_event(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_display_put_event(USER_OBJECT_ s_object, USER_OBJECT_ s_event); 

  USER_OBJECT_
S_gdk_display_add_client_message_filter(USER_OBJECT_ s_object, USER_OBJECT_ s_message_type, USER_OBJECT_ s_func, USER_OBJECT_ s_data); 

  USER_OBJECT_
S_gdk_display_set_double_click_time(USER_OBJECT_ s_object, USER_OBJECT_ s_msec); 

  USER_OBJECT_
S_gdk_display_get_default(void); 

  USER_OBJECT_
S_gdk_display_get_core_pointer(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_display_get_pointer(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_display_get_window_at_pointer(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_display_warp_pointer(USER_OBJECT_ s_object, USER_OBJECT_ s_screen, USER_OBJECT_ s_x, USER_OBJECT_ s_y); 

  USER_OBJECT_
S_gdk_display_store_clipboard(USER_OBJECT_ s_object, USER_OBJECT_ s_clipboard_window, USER_OBJECT_ s_targets); 

  USER_OBJECT_
S_gdk_display_supports_selection_notification(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_display_request_selection_notification(USER_OBJECT_ s_object, USER_OBJECT_ s_selection); 

  USER_OBJECT_
S_gdk_display_supports_clipboard_persistence(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_display_manager_get_type(void); 

  USER_OBJECT_
S_gdk_display_manager_get(void); 

  USER_OBJECT_
S_gdk_display_manager_get_default_display(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_display_manager_set_default_display(USER_OBJECT_ s_object, USER_OBJECT_ s_display); 

  USER_OBJECT_
S_gdk_display_manager_list_displays(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_display_flush(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_display_set_double_click_distance(USER_OBJECT_ s_object, USER_OBJECT_ s_distance); 

  USER_OBJECT_
S_gdk_display_supports_cursor_alpha(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_display_supports_cursor_color(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_display_get_default_cursor_size(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_display_get_maximal_cursor_size(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_display_get_default_group(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_drag_context_get_type(void); 

  USER_OBJECT_
S_gdk_drag_context_new(void); 

  USER_OBJECT_
S_gdk_drag_context_ref(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_drag_context_unref(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_drag_status(USER_OBJECT_ s_object, USER_OBJECT_ s_action, USER_OBJECT_ s_time); 

  USER_OBJECT_
S_gdk_drop_reply(USER_OBJECT_ s_object, USER_OBJECT_ s_ok, USER_OBJECT_ s_time); 

  USER_OBJECT_
S_gdk_drop_finish(USER_OBJECT_ s_object, USER_OBJECT_ s_success, USER_OBJECT_ s_time); 

  USER_OBJECT_
S_gdk_drag_get_selection(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_drag_begin(USER_OBJECT_ s_object, USER_OBJECT_ s_targets); 

  USER_OBJECT_
S_gdk_drag_get_protocol(USER_OBJECT_ s_xid); 

  USER_OBJECT_
S_gdk_drag_find_window(USER_OBJECT_ s_object, USER_OBJECT_ s_drag_window, USER_OBJECT_ s_x_root, USER_OBJECT_ s_y_root); 

  USER_OBJECT_
S_gdk_drag_get_protocol_for_display(USER_OBJECT_ s_display, USER_OBJECT_ s_xid); 

  USER_OBJECT_
S_gdk_drag_find_window_for_screen(USER_OBJECT_ s_object, USER_OBJECT_ s_drag_window, USER_OBJECT_ s_screen, USER_OBJECT_ s_x_root, USER_OBJECT_ s_y_root); 

  USER_OBJECT_
S_gdk_drag_motion(USER_OBJECT_ s_object, USER_OBJECT_ s_dest_window, USER_OBJECT_ s_protocol, USER_OBJECT_ s_x_root, USER_OBJECT_ s_y_root, USER_OBJECT_ s_suggested_action, USER_OBJECT_ s_possible_actions, USER_OBJECT_ s_time); 

  USER_OBJECT_
S_gdk_drag_drop(USER_OBJECT_ s_object, USER_OBJECT_ s_time); 

  USER_OBJECT_
S_gdk_drag_abort(USER_OBJECT_ s_object, USER_OBJECT_ s_time); 

  USER_OBJECT_
S_gdk_drag_drop_succeeded(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_drawable_get_type(void); 

  USER_OBJECT_
S_gdk_drawable_set_data(USER_OBJECT_ s_object, USER_OBJECT_ s_key, USER_OBJECT_ s_data); 

  USER_OBJECT_
S_gdk_drawable_get_data(USER_OBJECT_ s_object, USER_OBJECT_ s_key); 

  USER_OBJECT_
S_gdk_drawable_get_size(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_drawable_set_colormap(USER_OBJECT_ s_object, USER_OBJECT_ s_colormap); 

  USER_OBJECT_
S_gdk_drawable_get_colormap(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_drawable_get_visual(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_drawable_get_depth(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_drawable_get_screen(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_drawable_get_display(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_drawable_ref(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_drawable_unref(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_draw_point(USER_OBJECT_ s_object, USER_OBJECT_ s_gc, USER_OBJECT_ s_x, USER_OBJECT_ s_y); 

  USER_OBJECT_
S_gdk_draw_line(USER_OBJECT_ s_object, USER_OBJECT_ s_gc, USER_OBJECT_ s_x1, USER_OBJECT_ s_y1, USER_OBJECT_ s_x2, USER_OBJECT_ s_y2); 

  USER_OBJECT_
S_gdk_draw_rectangle(USER_OBJECT_ s_object, USER_OBJECT_ s_gc, USER_OBJECT_ s_filled, USER_OBJECT_ s_x, USER_OBJECT_ s_y, USER_OBJECT_ s_width, USER_OBJECT_ s_height); 

  USER_OBJECT_
S_gdk_draw_arc(USER_OBJECT_ s_object, USER_OBJECT_ s_gc, USER_OBJECT_ s_filled, USER_OBJECT_ s_x, USER_OBJECT_ s_y, USER_OBJECT_ s_width, USER_OBJECT_ s_height, USER_OBJECT_ s_angle1, USER_OBJECT_ s_angle2); 

  USER_OBJECT_
S_gdk_draw_polygon(USER_OBJECT_ s_object, USER_OBJECT_ s_gc, USER_OBJECT_ s_filled, USER_OBJECT_ s_points); 

  USER_OBJECT_
S_gdk_draw_string(USER_OBJECT_ s_object, USER_OBJECT_ s_font, USER_OBJECT_ s_gc, USER_OBJECT_ s_x, USER_OBJECT_ s_y, USER_OBJECT_ s_string); 

  USER_OBJECT_
S_gdk_draw_text(USER_OBJECT_ s_object, USER_OBJECT_ s_font, USER_OBJECT_ s_gc, USER_OBJECT_ s_x, USER_OBJECT_ s_y, USER_OBJECT_ s_text, USER_OBJECT_ s_text_length); 

  USER_OBJECT_
S_gdk_draw_text_wc(USER_OBJECT_ s_object, USER_OBJECT_ s_font, USER_OBJECT_ s_gc, USER_OBJECT_ s_x, USER_OBJECT_ s_text); 

  USER_OBJECT_
S_gdk_draw_drawable(USER_OBJECT_ s_object, USER_OBJECT_ s_gc, USER_OBJECT_ s_src, USER_OBJECT_ s_xsrc, USER_OBJECT_ s_ysrc, USER_OBJECT_ s_xdest, USER_OBJECT_ s_ydest, USER_OBJECT_ s_width, USER_OBJECT_ s_height); 

  USER_OBJECT_
S_gdk_draw_image(USER_OBJECT_ s_object, USER_OBJECT_ s_gc, USER_OBJECT_ s_image, USER_OBJECT_ s_xsrc, USER_OBJECT_ s_ysrc, USER_OBJECT_ s_xdest, USER_OBJECT_ s_ydest, USER_OBJECT_ s_width, USER_OBJECT_ s_height); 

  USER_OBJECT_
S_gdk_draw_points(USER_OBJECT_ s_object, USER_OBJECT_ s_gc, USER_OBJECT_ s_points); 

  USER_OBJECT_
S_gdk_draw_segments(USER_OBJECT_ s_object, USER_OBJECT_ s_gc, USER_OBJECT_ s_segs); 

  USER_OBJECT_
S_gdk_draw_lines(USER_OBJECT_ s_object, USER_OBJECT_ s_gc, USER_OBJECT_ s_points); 

  USER_OBJECT_
S_gdk_draw_pixbuf(USER_OBJECT_ s_object, USER_OBJECT_ s_gc, USER_OBJECT_ s_pixbuf, USER_OBJECT_ s_src_x, USER_OBJECT_ s_src_y, USER_OBJECT_ s_dest_x, USER_OBJECT_ s_dest_y, USER_OBJECT_ s_width, USER_OBJECT_ s_height, USER_OBJECT_ s_dither, USER_OBJECT_ s_x_dither, USER_OBJECT_ s_y_dither); 

  USER_OBJECT_
S_gdk_draw_glyphs(USER_OBJECT_ s_object, USER_OBJECT_ s_gc, USER_OBJECT_ s_font, USER_OBJECT_ s_x, USER_OBJECT_ s_y, USER_OBJECT_ s_glyphs); 

  USER_OBJECT_
S_gdk_draw_layout_line(USER_OBJECT_ s_object, USER_OBJECT_ s_gc, USER_OBJECT_ s_x, USER_OBJECT_ s_y, USER_OBJECT_ s_line); 

  USER_OBJECT_
S_gdk_draw_layout(USER_OBJECT_ s_object, USER_OBJECT_ s_gc, USER_OBJECT_ s_x, USER_OBJECT_ s_y, USER_OBJECT_ s_layout); 

  USER_OBJECT_
S_gdk_draw_layout_line_with_colors(USER_OBJECT_ s_drawable, USER_OBJECT_ s_gc, USER_OBJECT_ s_x, USER_OBJECT_ s_y, USER_OBJECT_ s_line, USER_OBJECT_ s_foreground, USER_OBJECT_ s_background); 

  USER_OBJECT_
S_gdk_draw_layout_with_colors(USER_OBJECT_ s_drawable, USER_OBJECT_ s_gc, USER_OBJECT_ s_x, USER_OBJECT_ s_y, USER_OBJECT_ s_layout, USER_OBJECT_ s_foreground, USER_OBJECT_ s_background); 

  USER_OBJECT_
S_gdk_draw_glyphs_transformed(USER_OBJECT_ s_drawable, USER_OBJECT_ s_gc, USER_OBJECT_ s_matrix, USER_OBJECT_ s_font, USER_OBJECT_ s_x, USER_OBJECT_ s_y, USER_OBJECT_ s_glyphs); 

  USER_OBJECT_
S_gdk_draw_trapezoids(USER_OBJECT_ s_drawable, USER_OBJECT_ s_gc, USER_OBJECT_ s_trapezoids); 

  USER_OBJECT_
S_gdk_drawable_get_image(USER_OBJECT_ s_object, USER_OBJECT_ s_x, USER_OBJECT_ s_y, USER_OBJECT_ s_width, USER_OBJECT_ s_height); 

  USER_OBJECT_
S_gdk_drawable_get_clip_region(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_drawable_get_visible_region(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_event_get_type(void); 

  USER_OBJECT_
S_gdk_events_pending(void); 

  USER_OBJECT_
S_gdk_event_get(void); 

  USER_OBJECT_
S_gdk_event_peek(void); 

  USER_OBJECT_
S_gdk_event_get_graphics_expose(USER_OBJECT_ s_window); 

  USER_OBJECT_
S_gdk_event_put(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_event_new(USER_OBJECT_ s_type); 

  USER_OBJECT_
S_gdk_event_copy(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_event_free(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_event_get_time(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_event_get_state(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_event_get_coords(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_event_get_root_coords(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_event_get_axis(USER_OBJECT_ s_object, USER_OBJECT_ s_axis_use); 

  USER_OBJECT_
S_gdk_event_handler_set(USER_OBJECT_ s_func, USER_OBJECT_ s_data); 

  USER_OBJECT_
S_gdk_event_set_screen(USER_OBJECT_ s_object, USER_OBJECT_ s_screen); 

  USER_OBJECT_
S_gdk_event_get_screen(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_set_show_events(USER_OBJECT_ s_show_events); 

  USER_OBJECT_
S_gdk_get_show_events(void); 

  USER_OBJECT_
S_gdk_add_client_message_filter(USER_OBJECT_ s_message_type, USER_OBJECT_ s_func, USER_OBJECT_ s_data); 

  USER_OBJECT_
S_gdk_setting_get(USER_OBJECT_ s_name); 

  USER_OBJECT_
S_gdk_font_id(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_font_load_for_display(USER_OBJECT_ s_display, USER_OBJECT_ s_font_name); 

  USER_OBJECT_
S_gdk_fontset_load_for_display(USER_OBJECT_ s_display, USER_OBJECT_ s_fontset_name); 

  USER_OBJECT_
S_gdk_font_from_description_for_display(USER_OBJECT_ s_display, USER_OBJECT_ s_font_desc); 

  USER_OBJECT_
S_gdk_font_load(USER_OBJECT_ s_font_name); 

  USER_OBJECT_
S_gdk_fontset_load(USER_OBJECT_ s_fontset_name); 

  USER_OBJECT_
S_gdk_font_from_description(USER_OBJECT_ s_font_desc); 

  USER_OBJECT_
S_gdk_string_width(USER_OBJECT_ s_object, USER_OBJECT_ s_string); 

  USER_OBJECT_
S_gdk_text_width(USER_OBJECT_ s_object, USER_OBJECT_ s_text, USER_OBJECT_ s_text_length); 

  USER_OBJECT_
S_gdk_text_width_wc(USER_OBJECT_ s_object, USER_OBJECT_ s_text); 

  USER_OBJECT_
S_gdk_char_width(USER_OBJECT_ s_object, USER_OBJECT_ s_character); 

  USER_OBJECT_
S_gdk_char_width_wc(USER_OBJECT_ s_object, USER_OBJECT_ s_character); 

  USER_OBJECT_
S_gdk_string_measure(USER_OBJECT_ s_object, USER_OBJECT_ s_string); 

  USER_OBJECT_
S_gdk_text_measure(USER_OBJECT_ s_object, USER_OBJECT_ s_text, USER_OBJECT_ s_text_length); 

  USER_OBJECT_
S_gdk_char_measure(USER_OBJECT_ s_object, USER_OBJECT_ s_character); 

  USER_OBJECT_
S_gdk_string_height(USER_OBJECT_ s_object, USER_OBJECT_ s_string); 

  USER_OBJECT_
S_gdk_text_height(USER_OBJECT_ s_object, USER_OBJECT_ s_text, USER_OBJECT_ s_text_length); 

  USER_OBJECT_
S_gdk_char_height(USER_OBJECT_ s_object, USER_OBJECT_ s_character); 

  USER_OBJECT_
S_gdk_text_extents(USER_OBJECT_ s_object, USER_OBJECT_ s_text, USER_OBJECT_ s_text_length); 

  USER_OBJECT_
S_gdk_text_extents_wc(USER_OBJECT_ s_object, USER_OBJECT_ s_text); 

  USER_OBJECT_
S_gdk_string_extents(USER_OBJECT_ s_object, USER_OBJECT_ s_string); 

  USER_OBJECT_
S_gdk_font_get_display(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_gc_get_type(void); 

  USER_OBJECT_
S_gdk_gc_new(USER_OBJECT_ s_drawable); 

  USER_OBJECT_
S_gdk_gc_get_values(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_gc_set_foreground(USER_OBJECT_ s_object, USER_OBJECT_ s_color); 

  USER_OBJECT_
S_gdk_gc_set_background(USER_OBJECT_ s_object, USER_OBJECT_ s_color); 

  USER_OBJECT_
S_gdk_gc_set_font(USER_OBJECT_ s_object, USER_OBJECT_ s_font); 

  USER_OBJECT_
S_gdk_gc_set_function(USER_OBJECT_ s_object, USER_OBJECT_ s_function); 

  USER_OBJECT_
S_gdk_gc_set_fill(USER_OBJECT_ s_object, USER_OBJECT_ s_fill); 

  USER_OBJECT_
S_gdk_gc_set_tile(USER_OBJECT_ s_object, USER_OBJECT_ s_tile); 

  USER_OBJECT_
S_gdk_gc_set_stipple(USER_OBJECT_ s_object, USER_OBJECT_ s_stipple); 

  USER_OBJECT_
S_gdk_gc_set_ts_origin(USER_OBJECT_ s_object, USER_OBJECT_ s_x, USER_OBJECT_ s_y); 

  USER_OBJECT_
S_gdk_gc_set_clip_origin(USER_OBJECT_ s_object, USER_OBJECT_ s_x, USER_OBJECT_ s_y); 

  USER_OBJECT_
S_gdk_gc_set_clip_mask(USER_OBJECT_ s_object, USER_OBJECT_ s_mask); 

  USER_OBJECT_
S_gdk_gc_set_clip_rectangle(USER_OBJECT_ s_object, USER_OBJECT_ s_rectangle); 

  USER_OBJECT_
S_gdk_gc_set_clip_region(USER_OBJECT_ s_object, USER_OBJECT_ s_region); 

  USER_OBJECT_
S_gdk_gc_set_subwindow(USER_OBJECT_ s_object, USER_OBJECT_ s_mode); 

  USER_OBJECT_
S_gdk_gc_set_exposures(USER_OBJECT_ s_object, USER_OBJECT_ s_exposures); 

  USER_OBJECT_
S_gdk_gc_set_line_attributes(USER_OBJECT_ s_object, USER_OBJECT_ s_line_width, USER_OBJECT_ s_line_style, USER_OBJECT_ s_cap_style, USER_OBJECT_ s_join_style); 

  USER_OBJECT_
S_gdk_gc_set_dashes(USER_OBJECT_ s_object, USER_OBJECT_ s_dash_list); 

  USER_OBJECT_
S_gdk_gc_offset(USER_OBJECT_ s_object, USER_OBJECT_ s_x_offset, USER_OBJECT_ s_y_offset); 

  USER_OBJECT_
S_gdk_gc_copy(USER_OBJECT_ s_object, USER_OBJECT_ s_src_gc); 

  USER_OBJECT_
S_gdk_gc_set_colormap(USER_OBJECT_ s_object, USER_OBJECT_ s_colormap); 

  USER_OBJECT_
S_gdk_gc_get_colormap(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_gc_set_rgb_fg_color(USER_OBJECT_ s_object, USER_OBJECT_ s_color); 

  USER_OBJECT_
S_gdk_gc_set_rgb_bg_color(USER_OBJECT_ s_object, USER_OBJECT_ s_color); 

  USER_OBJECT_
S_gdk_gc_get_screen(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_image_get_type(void); 

  USER_OBJECT_
S_gdk_image_new(USER_OBJECT_ s_type, USER_OBJECT_ s_visual, USER_OBJECT_ s_width, USER_OBJECT_ s_height); 

  USER_OBJECT_
S_gdk_image_get(USER_OBJECT_ s_object, USER_OBJECT_ s_x, USER_OBJECT_ s_y, USER_OBJECT_ s_width, USER_OBJECT_ s_height); 

  USER_OBJECT_
S_gdk_image_put_pixel(USER_OBJECT_ s_object, USER_OBJECT_ s_x, USER_OBJECT_ s_y, USER_OBJECT_ s_pixel); 

  USER_OBJECT_
S_gdk_image_get_pixel(USER_OBJECT_ s_object, USER_OBJECT_ s_x, USER_OBJECT_ s_y); 

  USER_OBJECT_
S_gdk_image_set_colormap(USER_OBJECT_ s_object, USER_OBJECT_ s_colormap); 

  USER_OBJECT_
S_gdk_image_get_colormap(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_device_get_type(void); 

  USER_OBJECT_
S_gdk_devices_list(void); 

  USER_OBJECT_
S_gdk_device_set_source(USER_OBJECT_ s_object, USER_OBJECT_ s_source); 

  USER_OBJECT_
S_gdk_device_set_mode(USER_OBJECT_ s_object, USER_OBJECT_ s_mode); 

  USER_OBJECT_
S_gdk_device_set_key(USER_OBJECT_ s_object, USER_OBJECT_ s_index, USER_OBJECT_ s_keyval, USER_OBJECT_ s_modifiers); 

  USER_OBJECT_
S_gdk_device_set_axis_use(USER_OBJECT_ s_object, USER_OBJECT_ s_index, USER_OBJECT_ s_use); 

  USER_OBJECT_
S_gdk_device_get_state(USER_OBJECT_ s_object, USER_OBJECT_ s_window); 

  USER_OBJECT_
S_gdk_device_get_axis(USER_OBJECT_ s_object, USER_OBJECT_ s_axes, USER_OBJECT_ s_use); 

  USER_OBJECT_
S_gdk_input_set_extension_events(USER_OBJECT_ s_object, USER_OBJECT_ s_mask, USER_OBJECT_ s_mode); 

  USER_OBJECT_
S_gdk_device_get_core_pointer(void); 

  USER_OBJECT_
S_gdk_keymap_get_type(void); 

  USER_OBJECT_
S_gdk_keymap_get_default(void); 

  USER_OBJECT_
S_gdk_keymap_get_for_display(USER_OBJECT_ s_display); 

  USER_OBJECT_
S_gdk_keymap_lookup_key(USER_OBJECT_ s_object, USER_OBJECT_ s_key); 

  USER_OBJECT_
S_gdk_keymap_translate_keyboard_state(USER_OBJECT_ s_object, USER_OBJECT_ s_hardware_keycode, USER_OBJECT_ s_state, USER_OBJECT_ s_group); 

  USER_OBJECT_
S_gdk_keymap_get_entries_for_keyval(USER_OBJECT_ s_object, USER_OBJECT_ s_keyval); 

  USER_OBJECT_
S_gdk_keymap_get_entries_for_keycode(USER_OBJECT_ s_object, USER_OBJECT_ s_hardware_keycode); 

  USER_OBJECT_
S_gdk_keymap_get_direction(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_keyval_name(USER_OBJECT_ s_keyval); 

  USER_OBJECT_
S_gdk_keyval_from_name(USER_OBJECT_ s_keyval_name); 

  USER_OBJECT_
S_gdk_keyval_convert_case(USER_OBJECT_ s_symbol); 

  USER_OBJECT_
S_gdk_keyval_to_upper(USER_OBJECT_ s_keyval); 

  USER_OBJECT_
S_gdk_keyval_to_lower(USER_OBJECT_ s_keyval); 

  USER_OBJECT_
S_gdk_keyval_is_upper(USER_OBJECT_ s_keyval); 

  USER_OBJECT_
S_gdk_keyval_is_lower(USER_OBJECT_ s_keyval); 

  USER_OBJECT_
S_gdk_keyval_to_unicode(USER_OBJECT_ s_keyval); 

  USER_OBJECT_
S_gdk_unicode_to_keyval(USER_OBJECT_ s_wc); 

  USER_OBJECT_
S_gdk_pango_renderer_get_type(void); 

  USER_OBJECT_
S_gdk_pango_renderer_new(USER_OBJECT_ s_screen); 

  USER_OBJECT_
S_gdk_pango_renderer_get_default(USER_OBJECT_ s_screen); 

  USER_OBJECT_
S_gdk_pango_renderer_set_drawable(USER_OBJECT_ s_object, USER_OBJECT_ s_drawable); 

  USER_OBJECT_
S_gdk_pango_renderer_set_gc(USER_OBJECT_ s_object, USER_OBJECT_ s_gc); 

  USER_OBJECT_
S_gdk_pango_renderer_set_stipple(USER_OBJECT_ s_object, USER_OBJECT_ s_part, USER_OBJECT_ s_stipple); 

  USER_OBJECT_
S_gdk_pango_renderer_set_override_color(USER_OBJECT_ s_object, USER_OBJECT_ s_part, USER_OBJECT_ s_color); 

  USER_OBJECT_
S_gdk_pango_context_get_for_screen(USER_OBJECT_ s_screen); 

  USER_OBJECT_
S_gdk_pango_context_get(void); 

  USER_OBJECT_
S_gdk_pango_context_set_colormap(USER_OBJECT_ s_context, USER_OBJECT_ s_colormap); 

  USER_OBJECT_
S_gdk_pango_layout_line_get_clip_region(USER_OBJECT_ s_line, USER_OBJECT_ s_x_origin, USER_OBJECT_ s_index_ranges); 

  USER_OBJECT_
S_gdk_pango_layout_get_clip_region(USER_OBJECT_ s_layout, USER_OBJECT_ s_x_origin, USER_OBJECT_ s_index_ranges); 

  USER_OBJECT_
S_gdk_pango_attr_stipple_new(USER_OBJECT_ s_stipple); 

  USER_OBJECT_
S_gdk_pango_attr_embossed_new(USER_OBJECT_ s_embossed); 

  USER_OBJECT_
S_gdk_pixbuf_render_threshold_alpha(USER_OBJECT_ s_object, USER_OBJECT_ s_bitmap, USER_OBJECT_ s_src_x, USER_OBJECT_ s_src_y, USER_OBJECT_ s_dest_x, USER_OBJECT_ s_dest_y, USER_OBJECT_ s_width, USER_OBJECT_ s_height, USER_OBJECT_ s_alpha_threshold); 

  USER_OBJECT_
S_gdk_pixbuf_render_to_drawable(USER_OBJECT_ s_object, USER_OBJECT_ s_drawable, USER_OBJECT_ s_gc, USER_OBJECT_ s_src_x, USER_OBJECT_ s_src_y, USER_OBJECT_ s_dest_x, USER_OBJECT_ s_dest_y, USER_OBJECT_ s_width, USER_OBJECT_ s_height, USER_OBJECT_ s_dither, USER_OBJECT_ s_x_dither, USER_OBJECT_ s_y_dither); 

  USER_OBJECT_
S_gdk_pixbuf_render_to_drawable_alpha(USER_OBJECT_ s_object, USER_OBJECT_ s_drawable, USER_OBJECT_ s_src_x, USER_OBJECT_ s_src_y, USER_OBJECT_ s_dest_x, USER_OBJECT_ s_dest_y, USER_OBJECT_ s_width, USER_OBJECT_ s_height, USER_OBJECT_ s_alpha_mode, USER_OBJECT_ s_alpha_threshold, USER_OBJECT_ s_dither, USER_OBJECT_ s_x_dither, USER_OBJECT_ s_y_dither); 

  USER_OBJECT_
S_gdk_pixmap_get_type(void); 

  USER_OBJECT_
S_gdk_pixmap_new(USER_OBJECT_ s_drawable, USER_OBJECT_ s_width, USER_OBJECT_ s_height, USER_OBJECT_ s_depth); 

  USER_OBJECT_
S_gdk_bitmap_create_from_data(USER_OBJECT_ s_drawable, USER_OBJECT_ s_data, USER_OBJECT_ s_height); 

  USER_OBJECT_
S_gdk_pixmap_create_from_data(USER_OBJECT_ s_drawable, USER_OBJECT_ s_data, USER_OBJECT_ s_height, USER_OBJECT_ s_depth, USER_OBJECT_ s_fg, USER_OBJECT_ s_bg); 

  USER_OBJECT_
S_gdk_pixmap_create_from_xpm(USER_OBJECT_ s_drawable, USER_OBJECT_ s_transparent_color, USER_OBJECT_ s_filename); 

  USER_OBJECT_
S_gdk_pixmap_colormap_create_from_xpm(USER_OBJECT_ s_drawable, USER_OBJECT_ s_colormap, USER_OBJECT_ s_transparent_color, USER_OBJECT_ s_filename); 

  USER_OBJECT_
S_gdk_pixmap_create_from_xpm_d(USER_OBJECT_ s_drawable, USER_OBJECT_ s_transparent_color, USER_OBJECT_ s_data); 

  USER_OBJECT_
S_gdk_pixmap_colormap_create_from_xpm_d(USER_OBJECT_ s_drawable, USER_OBJECT_ s_colormap, USER_OBJECT_ s_transparent_color, USER_OBJECT_ s_data); 

  USER_OBJECT_
S_gdk_pixmap_foreign_new(USER_OBJECT_ s_anid); 

  USER_OBJECT_
S_gdk_pixmap_lookup(USER_OBJECT_ s_anid); 

  USER_OBJECT_
S_gdk_pixmap_foreign_new_for_display(USER_OBJECT_ s_display, USER_OBJECT_ s_anid); 

  USER_OBJECT_
S_gdk_pixmap_lookup_for_display(USER_OBJECT_ s_display, USER_OBJECT_ s_anid); 

  USER_OBJECT_
S_gdk_atom_name(USER_OBJECT_ s_atom); 

  USER_OBJECT_
S_gdk_atom_intern(USER_OBJECT_ s_atom_name, USER_OBJECT_ s_only_if_exists); 

  USER_OBJECT_
S_gdk_property_get(USER_OBJECT_ s_object, USER_OBJECT_ s_property, USER_OBJECT_ s_type, USER_OBJECT_ s_offset, USER_OBJECT_ s_length, USER_OBJECT_ s_pdelete); 

  USER_OBJECT_
S_gdk_property_change(USER_OBJECT_ s_object, USER_OBJECT_ s_property, USER_OBJECT_ s_type, USER_OBJECT_ s_format, USER_OBJECT_ s_mode, USER_OBJECT_ s_data); 

  USER_OBJECT_
S_gdk_property_delete(USER_OBJECT_ s_object, USER_OBJECT_ s_property); 

  USER_OBJECT_
S_gdk_rgb_xpixel_from_rgb(USER_OBJECT_ s_rgb); 

  USER_OBJECT_
S_gdk_rgb_gc_set_foreground(USER_OBJECT_ s_gc, USER_OBJECT_ s_rgb); 

  USER_OBJECT_
S_gdk_rgb_gc_set_background(USER_OBJECT_ s_gc, USER_OBJECT_ s_rgb); 

  USER_OBJECT_
S_gdk_draw_rgb_image_dithalign(USER_OBJECT_ s_object, USER_OBJECT_ s_gc, USER_OBJECT_ s_x, USER_OBJECT_ s_y, USER_OBJECT_ s_width, USER_OBJECT_ s_height, USER_OBJECT_ s_dith, USER_OBJECT_ s_rgb_buf, USER_OBJECT_ s_xdith, USER_OBJECT_ s_ydith); 

  USER_OBJECT_
S_gdk_draw_rgb_32_image(USER_OBJECT_ s_object, USER_OBJECT_ s_gc, USER_OBJECT_ s_x, USER_OBJECT_ s_y, USER_OBJECT_ s_width, USER_OBJECT_ s_height, USER_OBJECT_ s_dith, USER_OBJECT_ s_buf); 

  USER_OBJECT_
S_gdk_draw_rgb_32_image_dithalign(USER_OBJECT_ s_object, USER_OBJECT_ s_gc, USER_OBJECT_ s_x, USER_OBJECT_ s_y, USER_OBJECT_ s_width, USER_OBJECT_ s_height, USER_OBJECT_ s_dith, USER_OBJECT_ s_buf, USER_OBJECT_ s_xdith, USER_OBJECT_ s_ydith); 

  USER_OBJECT_
S_gdk_rgb_colormap_ditherable(USER_OBJECT_ s_colormap); 

  USER_OBJECT_
S_gdk_draw_gray_image(USER_OBJECT_ s_object, USER_OBJECT_ s_gc, USER_OBJECT_ s_x, USER_OBJECT_ s_y, USER_OBJECT_ s_width, USER_OBJECT_ s_height, USER_OBJECT_ s_dith, USER_OBJECT_ s_buf); 

  USER_OBJECT_
S_gdk_rgb_cmap_new(USER_OBJECT_ s_colors); 

  USER_OBJECT_
S_gdk_draw_indexed_image(USER_OBJECT_ s_object, USER_OBJECT_ s_gc, USER_OBJECT_ s_x, USER_OBJECT_ s_y, USER_OBJECT_ s_width, USER_OBJECT_ s_height, USER_OBJECT_ s_dith, USER_OBJECT_ s_buf, USER_OBJECT_ s_cmap); 

  USER_OBJECT_
S_gdk_rgb_ditherable(void); 

  USER_OBJECT_
S_gdk_rgb_set_verbose(USER_OBJECT_ s_verbose); 

  USER_OBJECT_
S_gdk_rgb_set_install(USER_OBJECT_ s_install); 

  USER_OBJECT_
S_gdk_rgb_set_min_colors(USER_OBJECT_ s_min_colors); 

  USER_OBJECT_
S_gdk_rgb_get_colormap(void); 

  USER_OBJECT_
S_gdk_rgb_get_cmap(void); 

  USER_OBJECT_
S_gdk_rgb_get_visual(void); 

  USER_OBJECT_
S_gdk_screen_get_type(void); 

  USER_OBJECT_
S_gdk_screen_get_default_colormap(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_screen_set_default_colormap(USER_OBJECT_ s_object, USER_OBJECT_ s_colormap); 

  USER_OBJECT_
S_gdk_screen_get_system_colormap(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_screen_get_system_visual(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_screen_get_rgb_colormap(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_screen_get_rgba_colormap(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_screen_get_rgb_visual(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_screen_get_rgba_visual(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_screen_get_root_window(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_screen_get_display(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_screen_get_number(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_screen_get_width(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_screen_get_height(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_screen_get_width_mm(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_screen_get_height_mm(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_screen_list_visuals(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_screen_get_toplevel_windows(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_screen_make_display_name(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_screen_get_n_monitors(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_screen_get_monitor_geometry(USER_OBJECT_ s_object, USER_OBJECT_ s_monitor_num); 

  USER_OBJECT_
S_gdk_screen_get_monitor_at_point(USER_OBJECT_ s_object, USER_OBJECT_ s_x, USER_OBJECT_ s_y); 

  USER_OBJECT_
S_gdk_screen_get_monitor_at_window(USER_OBJECT_ s_object, USER_OBJECT_ s_window); 

  USER_OBJECT_
S_gdk_screen_broadcast_client_message(USER_OBJECT_ s_object, USER_OBJECT_ s_event); 

  USER_OBJECT_
S_gdk_screen_get_default(void); 

  USER_OBJECT_
S_gdk_screen_get_setting(USER_OBJECT_ s_object, USER_OBJECT_ s_name); 

  USER_OBJECT_
S_gdk_spawn_command_line_on_screen(USER_OBJECT_ s_screen, USER_OBJECT_ s_command_line); 

  USER_OBJECT_
S_gtk_alternative_dialog_button_order(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_selection_owner_get(USER_OBJECT_ s_selection); 

  USER_OBJECT_
S_gdk_selection_owner_get_for_display(USER_OBJECT_ s_display, USER_OBJECT_ s_selection); 

  USER_OBJECT_
S_gdk_selection_property_get(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_visual_get_best_depth(void); 

  USER_OBJECT_
S_gdk_visual_get_best_type(void); 

  USER_OBJECT_
S_gdk_visual_get_system(void); 

  USER_OBJECT_
S_gdk_visual_get_best(void); 

  USER_OBJECT_
S_gdk_visual_get_best_with_depth(USER_OBJECT_ s_depth); 

  USER_OBJECT_
S_gdk_visual_get_best_with_type(USER_OBJECT_ s_visual_type); 

  USER_OBJECT_
S_gdk_visual_get_best_with_both(USER_OBJECT_ s_depth, USER_OBJECT_ s_visual_type); 

  USER_OBJECT_
S_gdk_list_visuals(void); 

  USER_OBJECT_
S_gdk_visual_get_screen(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_window_object_get_type(void); 

  USER_OBJECT_
S_gdk_window_set_keep_above(USER_OBJECT_ s_object, USER_OBJECT_ s_setting); 

  USER_OBJECT_
S_gdk_window_set_keep_below(USER_OBJECT_ s_object, USER_OBJECT_ s_setting); 

  USER_OBJECT_
S_gdk_window_destroy(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_window_get_window_type(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_window_at_pointer(void); 

  USER_OBJECT_
S_gdk_window_show(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_window_show_unraised(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_window_hide(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_window_withdraw(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_window_move(USER_OBJECT_ s_object, USER_OBJECT_ s_x, USER_OBJECT_ s_y); 

  USER_OBJECT_
S_gdk_window_resize(USER_OBJECT_ s_object, USER_OBJECT_ s_width, USER_OBJECT_ s_height); 

  USER_OBJECT_
S_gdk_window_move_resize(USER_OBJECT_ s_object, USER_OBJECT_ s_x, USER_OBJECT_ s_y, USER_OBJECT_ s_width, USER_OBJECT_ s_height); 

  USER_OBJECT_
S_gdk_window_move_region(USER_OBJECT_ s_object, USER_OBJECT_ s_region, USER_OBJECT_ s_x, USER_OBJECT_ s_y); 

  USER_OBJECT_
S_gdk_window_reparent(USER_OBJECT_ s_object, USER_OBJECT_ s_new_parent, USER_OBJECT_ s_x, USER_OBJECT_ s_y); 

  USER_OBJECT_
S_gdk_window_clear(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_window_clear_area(USER_OBJECT_ s_object, USER_OBJECT_ s_x, USER_OBJECT_ s_y, USER_OBJECT_ s_width, USER_OBJECT_ s_height); 

  USER_OBJECT_
S_gdk_window_clear_area_e(USER_OBJECT_ s_object, USER_OBJECT_ s_x, USER_OBJECT_ s_y, USER_OBJECT_ s_width, USER_OBJECT_ s_height); 

  USER_OBJECT_
S_gdk_window_raise(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_window_lower(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_window_focus(USER_OBJECT_ s_object, USER_OBJECT_ s_timestamp); 

  USER_OBJECT_
S_gdk_window_set_user_data(USER_OBJECT_ s_object, USER_OBJECT_ s_user_data); 

  USER_OBJECT_
S_gdk_window_get_user_data(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_window_set_override_redirect(USER_OBJECT_ s_object, USER_OBJECT_ s_override_redirect); 

  USER_OBJECT_
S_gdk_window_add_filter(USER_OBJECT_ s_object, USER_OBJECT_ s_function, USER_OBJECT_ s_data); 

  USER_OBJECT_
S_gdk_window_remove_filter(USER_OBJECT_ s_object, USER_OBJECT_ s_function, USER_OBJECT_ s_data); 

  USER_OBJECT_
S_gdk_window_scroll(USER_OBJECT_ s_object, USER_OBJECT_ s_dx, USER_OBJECT_ s_dy); 

  USER_OBJECT_
S_gdk_window_shape_combine_mask(USER_OBJECT_ s_object, USER_OBJECT_ s_shape_mask, USER_OBJECT_ s_offset_x, USER_OBJECT_ s_offset_y); 

  USER_OBJECT_
S_gdk_window_shape_combine_region(USER_OBJECT_ s_object, USER_OBJECT_ s_shape_region, USER_OBJECT_ s_offset_x, USER_OBJECT_ s_offset_y); 

  USER_OBJECT_
S_gdk_window_set_child_shapes(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_window_merge_child_shapes(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_window_is_visible(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_window_is_viewable(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_window_get_state(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_window_set_static_gravities(USER_OBJECT_ s_object, USER_OBJECT_ s_use_static); 

  USER_OBJECT_
S_gdk_window_set_hints(USER_OBJECT_ s_object, USER_OBJECT_ s_x, USER_OBJECT_ s_y, USER_OBJECT_ s_min_width, USER_OBJECT_ s_min_height, USER_OBJECT_ s_max_width, USER_OBJECT_ s_max_height, USER_OBJECT_ s_flags); 

  USER_OBJECT_
S_gdk_window_set_type_hint(USER_OBJECT_ s_object, USER_OBJECT_ s_hint); 

  USER_OBJECT_
S_gdk_window_set_modal_hint(USER_OBJECT_ s_object, USER_OBJECT_ s_modal); 

  USER_OBJECT_
S_gdk_window_set_skip_taskbar_hint(USER_OBJECT_ s_object, USER_OBJECT_ s_modal); 

  USER_OBJECT_
S_gdk_window_set_skip_pager_hint(USER_OBJECT_ s_object, USER_OBJECT_ s_modal); 

  USER_OBJECT_
S_gdk_window_set_urgency_hint(USER_OBJECT_ s_object, USER_OBJECT_ s_urgent); 

  USER_OBJECT_
S_gdk_set_sm_client_id(USER_OBJECT_ s_sm_client_id); 

  USER_OBJECT_
S_gdk_window_begin_paint_rect(USER_OBJECT_ s_object, USER_OBJECT_ s_rectangle); 

  USER_OBJECT_
S_gdk_window_begin_paint_region(USER_OBJECT_ s_object, USER_OBJECT_ s_region); 

  USER_OBJECT_
S_gdk_window_end_paint(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_window_set_title(USER_OBJECT_ s_object, USER_OBJECT_ s_title); 

  USER_OBJECT_
S_gdk_window_set_role(USER_OBJECT_ s_object, USER_OBJECT_ s_role); 

  USER_OBJECT_
S_gdk_window_set_transient_for(USER_OBJECT_ s_object, USER_OBJECT_ s_leader); 

  USER_OBJECT_
S_gdk_window_set_background(USER_OBJECT_ s_object, USER_OBJECT_ s_color); 

  USER_OBJECT_
S_gdk_window_set_back_pixmap(USER_OBJECT_ s_object, USER_OBJECT_ s_pixmap, USER_OBJECT_ s_parent_relative); 

  USER_OBJECT_
S_gdk_window_set_cursor(USER_OBJECT_ s_object, USER_OBJECT_ s_cursor); 

  USER_OBJECT_
S_gdk_window_get_geometry(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_window_get_position(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_window_get_origin(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_window_get_deskrelative_origin(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_window_get_root_origin(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_window_get_frame_extents(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_window_get_pointer(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_window_get_parent(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_window_get_toplevel(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_window_get_children(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_window_peek_children(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_window_get_events(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_window_set_events(USER_OBJECT_ s_object, USER_OBJECT_ s_event_mask); 

  USER_OBJECT_
S_gdk_window_set_icon_list(USER_OBJECT_ s_object, USER_OBJECT_ s_pixbufs); 

  USER_OBJECT_
S_gdk_window_set_icon(USER_OBJECT_ s_object, USER_OBJECT_ s_icon_window, USER_OBJECT_ s_pixmap, USER_OBJECT_ s_mask); 

  USER_OBJECT_
S_gdk_window_set_icon_name(USER_OBJECT_ s_object, USER_OBJECT_ s_name); 

  USER_OBJECT_
S_gdk_window_set_group(USER_OBJECT_ s_object, USER_OBJECT_ s_leader); 

  USER_OBJECT_
S_gdk_window_get_group(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_window_set_decorations(USER_OBJECT_ s_object, USER_OBJECT_ s_decorations); 

  USER_OBJECT_
S_gdk_window_get_decorations(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_window_set_functions(USER_OBJECT_ s_object, USER_OBJECT_ s_functions); 

  USER_OBJECT_
S_gdk_window_get_toplevels(void); 

  USER_OBJECT_
S_gdk_window_iconify(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_window_deiconify(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_window_stick(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_window_unstick(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_window_maximize(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_window_unmaximize(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_window_fullscreen(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_window_unfullscreen(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_window_register_dnd(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_window_begin_resize_drag(USER_OBJECT_ s_object, USER_OBJECT_ s_edge, USER_OBJECT_ s_button, USER_OBJECT_ s_root_x, USER_OBJECT_ s_root_y, USER_OBJECT_ s_timestamp); 

  USER_OBJECT_
S_gdk_window_begin_move_drag(USER_OBJECT_ s_object, USER_OBJECT_ s_button, USER_OBJECT_ s_root_x, USER_OBJECT_ s_root_y, USER_OBJECT_ s_timestamp); 

  USER_OBJECT_
S_gdk_window_invalidate_rect(USER_OBJECT_ s_object, USER_OBJECT_ s_rect, USER_OBJECT_ s_invalidate_children); 

  USER_OBJECT_
S_gdk_window_invalidate_region(USER_OBJECT_ s_object, USER_OBJECT_ s_region, USER_OBJECT_ s_invalidate_children); 

  USER_OBJECT_
S_gdk_window_get_update_area(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_window_freeze_updates(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_window_thaw_updates(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_window_process_all_updates(void); 

  USER_OBJECT_
S_gdk_window_process_updates(USER_OBJECT_ s_object, USER_OBJECT_ s_update_children); 

  USER_OBJECT_
S_gdk_window_set_debug_updates(USER_OBJECT_ s_setting); 

  USER_OBJECT_
S_gdk_window_get_internal_paint_info(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_get_default_root_window(void); 

  USER_OBJECT_
S_gdk_window_set_accept_focus(USER_OBJECT_ s_object, USER_OBJECT_ s_accept_focus); 

  USER_OBJECT_
S_gdk_window_set_focus_on_map(USER_OBJECT_ s_object, USER_OBJECT_ s_focus_on_map); 

  USER_OBJECT_
S_gdk_window_enable_synchronized_configure(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_window_configure_finished(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_drag_finish(USER_OBJECT_ s_object, USER_OBJECT_ s_success, USER_OBJECT_ s_del, USER_OBJECT_ s_time); 

  USER_OBJECT_
S_gtk_drag_set_icon_name(USER_OBJECT_ s_object, USER_OBJECT_ s_icon_name, USER_OBJECT_ s_hot_x, USER_OBJECT_ s_hot_y); 

  USER_OBJECT_
S_gtk_drag_set_icon_widget(USER_OBJECT_ s_object, USER_OBJECT_ s_widget, USER_OBJECT_ s_hot_x, USER_OBJECT_ s_hot_y); 

  USER_OBJECT_
S_gtk_drag_set_icon_pixmap(USER_OBJECT_ s_object, USER_OBJECT_ s_colormap, USER_OBJECT_ s_pixmap, USER_OBJECT_ s_mask, USER_OBJECT_ s_hot_x, USER_OBJECT_ s_hot_y); 

  USER_OBJECT_
S_gtk_drag_set_icon_pixbuf(USER_OBJECT_ s_object, USER_OBJECT_ s_pixbuf, USER_OBJECT_ s_hot_x, USER_OBJECT_ s_hot_y); 

  USER_OBJECT_
S_gtk_drag_set_icon_stock(USER_OBJECT_ s_object, USER_OBJECT_ s_stock_id, USER_OBJECT_ s_hot_x, USER_OBJECT_ s_hot_y); 

  USER_OBJECT_
S_gtk_drag_set_icon_default(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_pixbuf_get_colorspace(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_pixbuf_get_n_channels(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_pixbuf_get_has_alpha(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_pixbuf_get_bits_per_sample(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_pixbuf_get_width(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_pixbuf_get_height(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_pixbuf_get_rowstride(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_pixbuf_new(USER_OBJECT_ s_colorspace, USER_OBJECT_ s_has_alpha, USER_OBJECT_ s_bits_per_sample, USER_OBJECT_ s_width, USER_OBJECT_ s_height); 

  USER_OBJECT_
S_gdk_pixbuf_copy(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_pixbuf_new_from_file(USER_OBJECT_ s_filename); 

  USER_OBJECT_
S_gdk_pixbuf_new_from_file_at_size(USER_OBJECT_ s_filename, USER_OBJECT_ s_width, USER_OBJECT_ s_height); 

  USER_OBJECT_
S_gdk_pixbuf_new_from_file_at_scale(USER_OBJECT_ s_filename, USER_OBJECT_ s_width, USER_OBJECT_ s_height, USER_OBJECT_ s_preserve_aspect_ratio); 

  USER_OBJECT_
S_gdk_pixbuf_new_from_xpm_data(USER_OBJECT_ s_data); 

  USER_OBJECT_
S_gdk_pixbuf_new_from_inline(USER_OBJECT_ s_data, USER_OBJECT_ s_copy_pixels); 

  USER_OBJECT_
S_gdk_pixbuf_new_subpixbuf(USER_OBJECT_ s_object, USER_OBJECT_ s_src_x, USER_OBJECT_ s_src_y, USER_OBJECT_ s_width, USER_OBJECT_ s_height); 

  USER_OBJECT_
S_gdk_pixbuf_fill(USER_OBJECT_ s_object, USER_OBJECT_ s_pixel); 

  USER_OBJECT_
S_gdk_pixbuf_savev(USER_OBJECT_ s_object, USER_OBJECT_ s_filename, USER_OBJECT_ s_type, USER_OBJECT_ s_option_keys, USER_OBJECT_ s_option_values); 

  USER_OBJECT_
S_gdk_pixbuf_save_to_callbackv(USER_OBJECT_ s_object, USER_OBJECT_ s_save_func, USER_OBJECT_ s_user_data, USER_OBJECT_ s_type, USER_OBJECT_ s_option_keys, USER_OBJECT_ s_option_values); 

  USER_OBJECT_
S_gdk_pixbuf_add_alpha(USER_OBJECT_ s_object, USER_OBJECT_ s_substitute_color, USER_OBJECT_ s_r, USER_OBJECT_ s_g, USER_OBJECT_ s_b); 

  USER_OBJECT_
S_gdk_pixbuf_copy_area(USER_OBJECT_ s_object, USER_OBJECT_ s_src_x, USER_OBJECT_ s_src_y, USER_OBJECT_ s_width, USER_OBJECT_ s_height, USER_OBJECT_ s_dest_pixbuf, USER_OBJECT_ s_dest_x, USER_OBJECT_ s_dest_y); 

  USER_OBJECT_
S_gdk_pixbuf_saturate_and_pixelate(USER_OBJECT_ s_object, USER_OBJECT_ s_dest, USER_OBJECT_ s_saturation, USER_OBJECT_ s_pixelate); 

  USER_OBJECT_
S_gdk_pixbuf_scale(USER_OBJECT_ s_object, USER_OBJECT_ s_dest, USER_OBJECT_ s_dest_x, USER_OBJECT_ s_dest_y, USER_OBJECT_ s_dest_width, USER_OBJECT_ s_dest_height, USER_OBJECT_ s_offset_x, USER_OBJECT_ s_offset_y, USER_OBJECT_ s_scale_x, USER_OBJECT_ s_scale_y, USER_OBJECT_ s_interp_type); 

  USER_OBJECT_
S_gdk_pixbuf_composite(USER_OBJECT_ s_object, USER_OBJECT_ s_dest, USER_OBJECT_ s_dest_x, USER_OBJECT_ s_dest_y, USER_OBJECT_ s_dest_width, USER_OBJECT_ s_dest_height, USER_OBJECT_ s_offset_x, USER_OBJECT_ s_offset_y, USER_OBJECT_ s_scale_x, USER_OBJECT_ s_scale_y, USER_OBJECT_ s_interp_type, USER_OBJECT_ s_overall_alpha); 

  USER_OBJECT_
S_gdk_pixbuf_composite_color(USER_OBJECT_ s_object, USER_OBJECT_ s_dest, USER_OBJECT_ s_dest_x, USER_OBJECT_ s_dest_y, USER_OBJECT_ s_dest_width, USER_OBJECT_ s_dest_height, USER_OBJECT_ s_offset_x, USER_OBJECT_ s_offset_y, USER_OBJECT_ s_scale_x, USER_OBJECT_ s_scale_y, USER_OBJECT_ s_interp_type, USER_OBJECT_ s_overall_alpha, USER_OBJECT_ s_check_x, USER_OBJECT_ s_check_y, USER_OBJECT_ s_check_size, USER_OBJECT_ s_color1, USER_OBJECT_ s_color2); 

  USER_OBJECT_
S_gdk_pixbuf_rotate_simple(USER_OBJECT_ s_object, USER_OBJECT_ s_angle); 

  USER_OBJECT_
S_gdk_pixbuf_flip(USER_OBJECT_ s_object, USER_OBJECT_ s_horizontal); 

  USER_OBJECT_
S_gdk_pixbuf_scale_simple(USER_OBJECT_ s_object, USER_OBJECT_ s_dest_width, USER_OBJECT_ s_dest_height, USER_OBJECT_ s_interp_type); 

  USER_OBJECT_
S_gdk_pixbuf_composite_color_simple(USER_OBJECT_ s_object, USER_OBJECT_ s_dest_width, USER_OBJECT_ s_dest_height, USER_OBJECT_ s_interp_type, USER_OBJECT_ s_overall_alpha, USER_OBJECT_ s_check_size, USER_OBJECT_ s_color1, USER_OBJECT_ s_color2); 

  USER_OBJECT_
S_gdk_pixbuf_animation_get_type(void); 

  USER_OBJECT_
S_gdk_pixbuf_animation_new_from_file(USER_OBJECT_ s_filename); 

  USER_OBJECT_
S_gdk_pixbuf_animation_get_width(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_pixbuf_animation_get_height(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_pixbuf_animation_is_static_image(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_pixbuf_animation_get_static_image(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_pixbuf_animation_get_iter(USER_OBJECT_ s_object, USER_OBJECT_ s_start_time); 

  USER_OBJECT_
S_gdk_pixbuf_animation_iter_get_type(void); 

  USER_OBJECT_
S_gdk_pixbuf_animation_iter_get_delay_time(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_pixbuf_animation_iter_get_pixbuf(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_pixbuf_animation_iter_on_currently_loading_frame(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_pixbuf_animation_iter_advance(USER_OBJECT_ s_object, USER_OBJECT_ s_current_time); 

  USER_OBJECT_
S_gdk_pixbuf_simple_anim_new(USER_OBJECT_ s_width, USER_OBJECT_ s_height, USER_OBJECT_ s_rate); 

  USER_OBJECT_
S_gdk_pixbuf_simple_anim_add_frame(USER_OBJECT_ s_object, USER_OBJECT_ s_pixbuf); 

  USER_OBJECT_
S_gdk_pixbuf_get_option(USER_OBJECT_ s_object, USER_OBJECT_ s_key); 

  USER_OBJECT_
S_gdk_pixbuf_set_option(USER_OBJECT_ s_object, USER_OBJECT_ s_key, USER_OBJECT_ s_value); 

  USER_OBJECT_
S_gdk_pixbuf_get_formats(void); 

  USER_OBJECT_
S_gdk_pixbuf_get_file_info(USER_OBJECT_ s_filename); 

  USER_OBJECT_
S_gdk_pixbuf_format_get_name(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_pixbuf_format_is_scalable(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_pixbuf_format_is_disabled(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_pixbuf_format_set_disabled(USER_OBJECT_ s_object, USER_OBJECT_ s_disabled); 

  USER_OBJECT_
S_gdk_pixbuf_format_get_license(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_pixbuf_format_get_description(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_pixbuf_format_get_mime_types(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_pixbuf_format_get_extensions(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_pixbuf_format_is_writable(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_pixbuf_loader_get_type(void); 

  USER_OBJECT_
S_gdk_pixbuf_loader_new(void); 

  USER_OBJECT_
S_gdk_pixbuf_loader_new_with_type(USER_OBJECT_ s_image_type); 

  USER_OBJECT_
S_gdk_pixbuf_loader_new_with_mime_type(USER_OBJECT_ s_mime_type); 

  USER_OBJECT_
S_gdk_pixbuf_loader_write(USER_OBJECT_ s_object, USER_OBJECT_ s_buf); 

  USER_OBJECT_
S_gdk_pixbuf_loader_get_pixbuf(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_pixbuf_loader_get_animation(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_pixbuf_loader_close(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_pixbuf_loader_set_size(USER_OBJECT_ s_object, USER_OBJECT_ s_width, USER_OBJECT_ s_height); 

  USER_OBJECT_
S_gdk_pixbuf_loader_get_format(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_rectangle_intersect(USER_OBJECT_ s_src1, USER_OBJECT_ s_src2); 

  USER_OBJECT_
S_gdk_rectangle_union(USER_OBJECT_ s_src1, USER_OBJECT_ s_src2); 

  USER_OBJECT_
S_gdk_region_new(void); 

  USER_OBJECT_
S_gdk_region_polygon(USER_OBJECT_ s_points, USER_OBJECT_ s_fill_rule); 

  USER_OBJECT_
S_gdk_region_copy(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_region_rectangle(USER_OBJECT_ s_rectangle); 

  USER_OBJECT_
S_gdk_region_get_clipbox(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_region_get_rectangles(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_region_empty(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_region_equal(USER_OBJECT_ s_object, USER_OBJECT_ s_region2); 

  USER_OBJECT_
S_gdk_region_point_in(USER_OBJECT_ s_object, USER_OBJECT_ s_x, USER_OBJECT_ s_y); 

  USER_OBJECT_
S_gdk_region_rect_in(USER_OBJECT_ s_object, USER_OBJECT_ s_rect); 

  USER_OBJECT_
S_gdk_region_offset(USER_OBJECT_ s_object, USER_OBJECT_ s_dx, USER_OBJECT_ s_dy); 

  USER_OBJECT_
S_gdk_region_shrink(USER_OBJECT_ s_object, USER_OBJECT_ s_dx, USER_OBJECT_ s_dy); 

  USER_OBJECT_
S_gdk_region_union_with_rect(USER_OBJECT_ s_object, USER_OBJECT_ s_rect); 

  USER_OBJECT_
S_gdk_region_intersect(USER_OBJECT_ s_object, USER_OBJECT_ s_source2); 

  USER_OBJECT_
S_gdk_region_union(USER_OBJECT_ s_object, USER_OBJECT_ s_source2); 

  USER_OBJECT_
S_gdk_region_subtract(USER_OBJECT_ s_object, USER_OBJECT_ s_source2); 

  USER_OBJECT_
S_gdk_region_xor(USER_OBJECT_ s_object, USER_OBJECT_ s_source2); 

  USER_OBJECT_
S_gdk_region_spans_intersect_foreach(USER_OBJECT_ s_object, USER_OBJECT_ s_spans, USER_OBJECT_ s_sorted, USER_OBJECT_ s_function, USER_OBJECT_ s_data); 

  USER_OBJECT_
S_gdk_cairo_set_source_pixmap(USER_OBJECT_ s_cr, USER_OBJECT_ s_pixmap, USER_OBJECT_ s_pixmap_x, USER_OBJECT_ s_pixmap_y); 

  USER_OBJECT_
S_gdk_display_supports_shapes(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_display_supports_input_shapes(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_pixmap_foreign_new_for_screen(USER_OBJECT_ s_screen, USER_OBJECT_ s_anid, USER_OBJECT_ s_width, USER_OBJECT_ s_height, USER_OBJECT_ s_depth); 

  USER_OBJECT_
S_gdk_atom_intern_static_string(USER_OBJECT_ s_atom_name); 

  USER_OBJECT_
S_gdk_screen_is_composited(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_screen_set_font_options(USER_OBJECT_ s_object, USER_OBJECT_ s_options); 

  USER_OBJECT_
S_gdk_screen_get_font_options(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_screen_set_resolution(USER_OBJECT_ s_object, USER_OBJECT_ s_dpi); 

  USER_OBJECT_
S_gdk_screen_get_resolution(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_screen_get_active_window(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_screen_get_window_stack(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_window_input_shape_combine_mask(USER_OBJECT_ s_object, USER_OBJECT_ s_mask, USER_OBJECT_ s_x, USER_OBJECT_ s_y); 

  USER_OBJECT_
S_gdk_window_input_shape_combine_region(USER_OBJECT_ s_object, USER_OBJECT_ s_shape_region, USER_OBJECT_ s_offset_x, USER_OBJECT_ s_offset_y); 

  USER_OBJECT_
S_gdk_window_set_child_input_shapes(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_window_merge_child_input_shapes(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_window_get_type_hint(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_color_to_string(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_display_supports_composite(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_event_request_motions(USER_OBJECT_ s_event); 

  USER_OBJECT_
S_gdk_keymap_have_bidi_layouts(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_pango_attr_emboss_color_new(USER_OBJECT_ s_color); 

  USER_OBJECT_
S_gdk_window_set_composited(USER_OBJECT_ s_object, USER_OBJECT_ s_composited); 

  USER_OBJECT_
S_gdk_window_set_startup_id(USER_OBJECT_ s_object, USER_OBJECT_ s_startup_id); 

  USER_OBJECT_
S_gdk_window_beep(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_window_set_opacity(USER_OBJECT_ s_object, USER_OBJECT_ s_opacity); 

  USER_OBJECT_
S_gdk_notify_startup_complete_with_id(USER_OBJECT_ s_id); 

  USER_OBJECT_
S_gdk_pixbuf_apply_embedded_orientation(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_app_launch_context_get_type(void); 

  USER_OBJECT_
S_gdk_app_launch_context_new(void); 

  USER_OBJECT_
S_gdk_app_launch_context_set_display(USER_OBJECT_ s_object, USER_OBJECT_ s_display); 

  USER_OBJECT_
S_gdk_app_launch_context_set_screen(USER_OBJECT_ s_object, USER_OBJECT_ s_screen); 

  USER_OBJECT_
S_gdk_app_launch_context_set_desktop(USER_OBJECT_ s_object, USER_OBJECT_ s_desktop); 

  USER_OBJECT_
S_gdk_app_launch_context_set_timestamp(USER_OBJECT_ s_object, USER_OBJECT_ s_timestamp); 

  USER_OBJECT_
S_gdk_app_launch_context_set_icon(USER_OBJECT_ s_object, USER_OBJECT_ s_icon); 

  USER_OBJECT_
S_gdk_app_launch_context_set_icon_name(USER_OBJECT_ s_object, USER_OBJECT_ s_icon_name); 

  USER_OBJECT_
S_gdk_screen_get_monitor_width_mm(USER_OBJECT_ s_object, USER_OBJECT_ s_monitor_num); 

  USER_OBJECT_
S_gdk_screen_get_monitor_height_mm(USER_OBJECT_ s_object, USER_OBJECT_ s_monitor_num); 

  USER_OBJECT_
S_gdk_screen_get_monitor_plug_name(USER_OBJECT_ s_object, USER_OBJECT_ s_monitor_num); 

  USER_OBJECT_
S_gdk_window_redirect_to_drawable(USER_OBJECT_ s_object, USER_OBJECT_ s_drawable, USER_OBJECT_ s_src_x, USER_OBJECT_ s_src_y, USER_OBJECT_ s_dest_x, USER_OBJECT_ s_dest_y, USER_OBJECT_ s_width, USER_OBJECT_ s_height); 

  USER_OBJECT_
S_gdk_window_remove_redirection(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_pixbuf_new_from_stream(USER_OBJECT_ s_stream, USER_OBJECT_ s_cancellable); 

  USER_OBJECT_
S_gdk_pixbuf_new_from_stream_at_scale(USER_OBJECT_ s_stream, USER_OBJECT_ s_width, USER_OBJECT_ s_height, USER_OBJECT_ s_preserve_aspect_ratio, USER_OBJECT_ s_cancellable); 

  USER_OBJECT_
S_gdk_test_render_sync(USER_OBJECT_ s_window); 

  USER_OBJECT_
S_gdk_test_simulate_key(USER_OBJECT_ s_window, USER_OBJECT_ s_x, USER_OBJECT_ s_y, USER_OBJECT_ s_keyval, USER_OBJECT_ s_modifiers, USER_OBJECT_ s_key_pressrelease); 

  USER_OBJECT_
S_gdk_test_simulate_button(USER_OBJECT_ s_window, USER_OBJECT_ s_x, USER_OBJECT_ s_y, USER_OBJECT_ s_button, USER_OBJECT_ s_modifiers, USER_OBJECT_ s_button_pressrelease); 

  USER_OBJECT_
S_gdk_pixbuf_save_to_stream(USER_OBJECT_ s_object, USER_OBJECT_ s_stream, USER_OBJECT_ s_type, USER_OBJECT_ s_cancellable); 

  USER_OBJECT_
S_gdk_keymap_get_caps_lock_state(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_cairo_reset_clip(USER_OBJECT_ s_cr, USER_OBJECT_ s_drawable); 

  USER_OBJECT_
S_gdk_offscreen_window_get_pixmap(USER_OBJECT_ s_window); 

  USER_OBJECT_
S_gdk_offscreen_window_set_embedder(USER_OBJECT_ s_window, USER_OBJECT_ s_embedder); 

  USER_OBJECT_
S_gdk_offscreen_window_get_embedder(USER_OBJECT_ s_window); 

  USER_OBJECT_
S_gdk_region_rect_equal(USER_OBJECT_ s_object, USER_OBJECT_ s_rectangle); 

  USER_OBJECT_
S_gdk_window_ensure_native(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_window_flush(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_window_geometry_changed(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_window_get_cursor(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_window_restack(USER_OBJECT_ s_object, USER_OBJECT_ s_sibling, USER_OBJECT_ s_above); 

  USER_OBJECT_
S_gdk_window_is_destroyed(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_window_get_root_coords(USER_OBJECT_ s_object, USER_OBJECT_ s_x, USER_OBJECT_ s_y); 

  USER_OBJECT_
S_gdk_pixbuf_simple_anim_set_loop(USER_OBJECT_ s_object, USER_OBJECT_ s_loop); 

  USER_OBJECT_
S_gdk_pixbuf_simple_anim_get_loop(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_keymap_add_virtual_modifiers(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_keymap_map_virtual_modifiers(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gdk_screen_get_primary_monitor(USER_OBJECT_ s_object); 

#endif
