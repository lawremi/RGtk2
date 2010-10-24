#ifndef S_GTK_FUNCS_H
#define S_GTK_FUNCS_H
#include <RGtk2/RSCommon.h>

  USER_OBJECT_
S_GTK_OBJECT_FLAGS(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_GTK_WIDGET_SET_FLAGS(USER_OBJECT_ s_wid, USER_OBJECT_ s_flags); 

  USER_OBJECT_
S_GTK_WIDGET_UNSET_FLAGS(USER_OBJECT_ s_wid, USER_OBJECT_ s_flags); 

  USER_OBJECT_
S_GTK_WIDGET_IS_SENSITIVE(USER_OBJECT_ s_wid); 

  USER_OBJECT_
S_GTK_WIDGET_STATE(USER_OBJECT_ s_wid); 

  USER_OBJECT_
S_GTK_WIDGET_SAVED_STATE(USER_OBJECT_ s_wid); 

  USER_OBJECT_
S_GTK_CTREE_ROW(USER_OBJECT_ s_node); 

  USER_OBJECT_
S_gtk_about_dialog_get_type(void); 

  USER_OBJECT_
S_gtk_about_dialog_new(void); 

  USER_OBJECT_
S_gtk_about_dialog_get_name(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_about_dialog_set_name(USER_OBJECT_ s_object, USER_OBJECT_ s_name); 

  USER_OBJECT_
S_gtk_about_dialog_get_version(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_about_dialog_set_version(USER_OBJECT_ s_object, USER_OBJECT_ s_version); 

  USER_OBJECT_
S_gtk_about_dialog_get_copyright(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_about_dialog_set_copyright(USER_OBJECT_ s_object, USER_OBJECT_ s_copyright); 

  USER_OBJECT_
S_gtk_about_dialog_get_comments(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_about_dialog_set_comments(USER_OBJECT_ s_object, USER_OBJECT_ s_comments); 

  USER_OBJECT_
S_gtk_about_dialog_get_license(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_about_dialog_set_license(USER_OBJECT_ s_object, USER_OBJECT_ s_license); 

  USER_OBJECT_
S_gtk_about_dialog_get_wrap_license(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_about_dialog_set_wrap_license(USER_OBJECT_ s_object, USER_OBJECT_ s_wrap_license); 

  USER_OBJECT_
S_gtk_about_dialog_get_website(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_about_dialog_set_website(USER_OBJECT_ s_object, USER_OBJECT_ s_website); 

  USER_OBJECT_
S_gtk_about_dialog_get_website_label(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_about_dialog_set_website_label(USER_OBJECT_ s_object, USER_OBJECT_ s_website_label); 

  USER_OBJECT_
S_gtk_about_dialog_get_authors(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_about_dialog_set_authors(USER_OBJECT_ s_object, USER_OBJECT_ s_authors); 

  USER_OBJECT_
S_gtk_about_dialog_get_documenters(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_about_dialog_set_documenters(USER_OBJECT_ s_object, USER_OBJECT_ s_documenters); 

  USER_OBJECT_
S_gtk_about_dialog_get_artists(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_about_dialog_set_artists(USER_OBJECT_ s_object, USER_OBJECT_ s_artists); 

  USER_OBJECT_
S_gtk_about_dialog_get_translator_credits(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_about_dialog_set_translator_credits(USER_OBJECT_ s_object, USER_OBJECT_ s_translator_credits); 

  USER_OBJECT_
S_gtk_about_dialog_get_logo(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_about_dialog_set_logo(USER_OBJECT_ s_object, USER_OBJECT_ s_logo); 

  USER_OBJECT_
S_gtk_about_dialog_get_logo_icon_name(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_about_dialog_set_logo_icon_name(USER_OBJECT_ s_object, USER_OBJECT_ s_icon_name); 

  USER_OBJECT_
S_gtk_about_dialog_set_email_hook(USER_OBJECT_ s_func, USER_OBJECT_ s_data); 

  USER_OBJECT_
S_gtk_about_dialog_set_url_hook(USER_OBJECT_ s_func, USER_OBJECT_ s_data); 

  USER_OBJECT_
S_gtk_accel_group_get_type(void); 

  USER_OBJECT_
S_gtk_accel_group_new(void); 

  USER_OBJECT_
S_gtk_accel_group_lock(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_accel_group_unlock(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_accel_group_connect(USER_OBJECT_ s_object, USER_OBJECT_ s_accel_key, USER_OBJECT_ s_accel_mods, USER_OBJECT_ s_accel_flags, USER_OBJECT_ s_closure); 

  USER_OBJECT_
S_gtk_accel_group_connect_by_path(USER_OBJECT_ s_object, USER_OBJECT_ s_accel_path, USER_OBJECT_ s_closure); 

  USER_OBJECT_
S_gtk_accel_group_disconnect(USER_OBJECT_ s_object, USER_OBJECT_ s_closure); 

  USER_OBJECT_
S_gtk_accel_group_disconnect_key(USER_OBJECT_ s_object, USER_OBJECT_ s_accel_key, USER_OBJECT_ s_accel_mods); 

  USER_OBJECT_
S_gtk_accel_group_activate(USER_OBJECT_ s_object, USER_OBJECT_ s_accel_quark, USER_OBJECT_ s_acceleratable, USER_OBJECT_ s_accel_key, USER_OBJECT_ s_accel_mods); 

  USER_OBJECT_
S_gtk_accel_groups_activate(USER_OBJECT_ s_object, USER_OBJECT_ s_accel_key, USER_OBJECT_ s_accel_mods); 

  USER_OBJECT_
S_gtk_accel_groups_from_object(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_accel_group_find(USER_OBJECT_ s_object, USER_OBJECT_ s_find_func, USER_OBJECT_ s_data); 

  USER_OBJECT_
S_gtk_accel_group_from_accel_closure(USER_OBJECT_ s_closure); 

  USER_OBJECT_
S_gtk_accelerator_valid(USER_OBJECT_ s_keyval, USER_OBJECT_ s_modifiers); 

  USER_OBJECT_
S_gtk_accelerator_parse(USER_OBJECT_ s_accelerator); 

  USER_OBJECT_
S_gtk_accelerator_name(USER_OBJECT_ s_accelerator_key, USER_OBJECT_ s_accelerator_mods); 

  USER_OBJECT_
S_gtk_accelerator_set_default_mod_mask(USER_OBJECT_ s_default_mod_mask); 

  USER_OBJECT_
S_gtk_accelerator_get_default_mod_mask(void); 

  USER_OBJECT_
S_gtk_accelerator_get_label(USER_OBJECT_ s_accelerator_key, USER_OBJECT_ s_accelerator_mods); 

  USER_OBJECT_
S_gtk_accel_label_get_type(void); 

  USER_OBJECT_
S_gtk_accel_label_new(USER_OBJECT_ s_string); 

  USER_OBJECT_
S_gtk_accel_label_get_accel_widget(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_accel_label_get_accel_width(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_accel_label_set_accel_widget(USER_OBJECT_ s_object, USER_OBJECT_ s_accel_widget); 

  USER_OBJECT_
S_gtk_accel_label_set_accel_closure(USER_OBJECT_ s_object, USER_OBJECT_ s_accel_closure); 

  USER_OBJECT_
S_gtk_accel_label_refetch(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_accel_map_add_entry(USER_OBJECT_ s_accel_path, USER_OBJECT_ s_accel_key, USER_OBJECT_ s_accel_mods); 

  USER_OBJECT_
S_gtk_accel_map_lookup_entry(USER_OBJECT_ s_accel_path); 

  USER_OBJECT_
S_gtk_accel_map_change_entry(USER_OBJECT_ s_accel_path, USER_OBJECT_ s_accel_key, USER_OBJECT_ s_accel_mods, USER_OBJECT_ s_replace); 

  USER_OBJECT_
S_gtk_accel_map_load(USER_OBJECT_ s_file_name); 

  USER_OBJECT_
S_gtk_accel_map_save(USER_OBJECT_ s_file_name); 

  USER_OBJECT_
S_gtk_accel_map_foreach(USER_OBJECT_ s_data, USER_OBJECT_ s_foreach_func); 

  USER_OBJECT_
S_gtk_accel_map_load_fd(USER_OBJECT_ s_fd); 

  USER_OBJECT_
S_gtk_accel_map_load_scanner(USER_OBJECT_ s_scanner); 

  USER_OBJECT_
S_gtk_accel_map_save_fd(USER_OBJECT_ s_fd); 

  USER_OBJECT_
S_gtk_accel_map_lock_path(USER_OBJECT_ s_accel_path); 

  USER_OBJECT_
S_gtk_accel_map_unlock_path(USER_OBJECT_ s_accel_path); 

  USER_OBJECT_
S_gtk_accel_map_add_filter(USER_OBJECT_ s_filter_pattern); 

  USER_OBJECT_
S_gtk_accel_map_foreach_unfiltered(USER_OBJECT_ s_data, USER_OBJECT_ s_foreach_func); 

  USER_OBJECT_
S_gtk_accel_map_get_type(void); 

  USER_OBJECT_
S_gtk_accel_map_get(void); 

  USER_OBJECT_
S_gtk_accessible_get_type(void); 

  USER_OBJECT_
S_gtk_accessible_connect_widget_destroyed(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_action_get_type(void); 

  USER_OBJECT_
S_gtk_action_new(USER_OBJECT_ s_name, USER_OBJECT_ s_label, USER_OBJECT_ s_tooltip, USER_OBJECT_ s_stock_id); 

  USER_OBJECT_
S_gtk_action_get_name(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_action_is_sensitive(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_action_get_sensitive(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_action_is_visible(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_action_get_visible(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_action_activate(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_action_create_icon(USER_OBJECT_ s_object, USER_OBJECT_ s_icon_size); 

  USER_OBJECT_
S_gtk_action_create_menu_item(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_action_create_tool_item(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_action_connect_proxy(USER_OBJECT_ s_object, USER_OBJECT_ s_proxy); 

  USER_OBJECT_
S_gtk_action_disconnect_proxy(USER_OBJECT_ s_object, USER_OBJECT_ s_proxy); 

  USER_OBJECT_
S_gtk_action_get_proxies(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_action_connect_accelerator(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_action_disconnect_accelerator(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_action_get_accel_path(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_action_get_accel_closure(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_action_block_activate_from(USER_OBJECT_ s_object, USER_OBJECT_ s_proxy); 

  USER_OBJECT_
S_gtk_action_unblock_activate_from(USER_OBJECT_ s_object, USER_OBJECT_ s_proxy); 

  USER_OBJECT_
S_gtk_action_set_accel_path(USER_OBJECT_ s_object, USER_OBJECT_ s_accel_path); 

  USER_OBJECT_
S_gtk_action_set_accel_group(USER_OBJECT_ s_object, USER_OBJECT_ s_accel_group); 

  USER_OBJECT_
S_gtk_action_set_sensitive(USER_OBJECT_ s_object, USER_OBJECT_ s_sensitive); 

  USER_OBJECT_
S_gtk_action_set_visible(USER_OBJECT_ s_object, USER_OBJECT_ s_visible); 

  USER_OBJECT_
S_gtk_action_group_get_type(void); 

  USER_OBJECT_
S_gtk_action_group_new(USER_OBJECT_ s_name); 

  USER_OBJECT_
S_gtk_action_group_get_name(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_action_group_get_sensitive(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_action_group_set_sensitive(USER_OBJECT_ s_object, USER_OBJECT_ s_sensitive); 

  USER_OBJECT_
S_gtk_action_group_get_visible(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_action_group_set_visible(USER_OBJECT_ s_object, USER_OBJECT_ s_visible); 

  USER_OBJECT_
S_gtk_action_group_get_action(USER_OBJECT_ s_object, USER_OBJECT_ s_action_name); 

  USER_OBJECT_
S_gtk_action_group_list_actions(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_action_group_add_action(USER_OBJECT_ s_object, USER_OBJECT_ s_action); 

  USER_OBJECT_
S_gtk_action_group_add_action_with_accel(USER_OBJECT_ s_object, USER_OBJECT_ s_action, USER_OBJECT_ s_accelerator); 

  USER_OBJECT_
S_gtk_action_group_remove_action(USER_OBJECT_ s_object, USER_OBJECT_ s_action); 

  USER_OBJECT_
S_gtk_action_group_set_translate_func(USER_OBJECT_ s_object, USER_OBJECT_ s_func, USER_OBJECT_ s_data); 

  USER_OBJECT_
S_gtk_action_group_set_translation_domain(USER_OBJECT_ s_object, USER_OBJECT_ s_domain); 

  USER_OBJECT_
S_gtk_action_group_translate_string(USER_OBJECT_ s_object, USER_OBJECT_ s_string); 

  USER_OBJECT_
S_gtk_adjustment_get_type(void); 

  USER_OBJECT_
S_gtk_adjustment_new(USER_OBJECT_ s_value, USER_OBJECT_ s_lower, USER_OBJECT_ s_upper, USER_OBJECT_ s_step_incr, USER_OBJECT_ s_page_incr, USER_OBJECT_ s_page_size); 

  USER_OBJECT_
S_gtk_adjustment_changed(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_adjustment_value_changed(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_adjustment_clamp_page(USER_OBJECT_ s_object, USER_OBJECT_ s_lower, USER_OBJECT_ s_upper); 

  USER_OBJECT_
S_gtk_adjustment_get_value(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_adjustment_set_value(USER_OBJECT_ s_object, USER_OBJECT_ s_value); 

  USER_OBJECT_
S_gtk_alignment_get_type(void); 

  USER_OBJECT_
S_gtk_alignment_new(USER_OBJECT_ s_xalign, USER_OBJECT_ s_yalign, USER_OBJECT_ s_xscale, USER_OBJECT_ s_yscale); 

  USER_OBJECT_
S_gtk_alignment_set(USER_OBJECT_ s_object, USER_OBJECT_ s_xalign, USER_OBJECT_ s_yalign, USER_OBJECT_ s_xscale, USER_OBJECT_ s_yscale); 

  USER_OBJECT_
S_gtk_alignment_set_padding(USER_OBJECT_ s_object, USER_OBJECT_ s_padding_top, USER_OBJECT_ s_padding_bottom, USER_OBJECT_ s_padding_left, USER_OBJECT_ s_padding_right); 

  USER_OBJECT_
S_gtk_alignment_get_padding(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_arrow_get_type(void); 

  USER_OBJECT_
S_gtk_arrow_new(USER_OBJECT_ s_arrow_type, USER_OBJECT_ s_shadow_type); 

  USER_OBJECT_
S_gtk_arrow_set(USER_OBJECT_ s_object, USER_OBJECT_ s_arrow_type, USER_OBJECT_ s_shadow_type); 

  USER_OBJECT_
S_gtk_aspect_frame_get_type(void); 

  USER_OBJECT_
S_gtk_aspect_frame_new(USER_OBJECT_ s_label, USER_OBJECT_ s_xalign, USER_OBJECT_ s_yalign, USER_OBJECT_ s_ratio, USER_OBJECT_ s_obey_child); 

  USER_OBJECT_
S_gtk_aspect_frame_set(USER_OBJECT_ s_object, USER_OBJECT_ s_xalign, USER_OBJECT_ s_yalign, USER_OBJECT_ s_ratio, USER_OBJECT_ s_obey_child); 

  USER_OBJECT_
S_gtk_button_box_get_type(void); 

  USER_OBJECT_
S_gtk_button_box_get_layout(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_button_box_set_layout(USER_OBJECT_ s_object, USER_OBJECT_ s_layout_style); 

  USER_OBJECT_
S_gtk_button_box_get_child_secondary(USER_OBJECT_ s_object, USER_OBJECT_ s_child); 

  USER_OBJECT_
S_gtk_button_box_set_child_secondary(USER_OBJECT_ s_object, USER_OBJECT_ s_child, USER_OBJECT_ s_is_secondary); 

  USER_OBJECT_
S_gtk_button_box_set_child_size(USER_OBJECT_ s_object, USER_OBJECT_ s_min_width, USER_OBJECT_ s_min_height); 

  USER_OBJECT_
S_gtk_button_box_set_child_ipadding(USER_OBJECT_ s_object, USER_OBJECT_ s_ipad_x, USER_OBJECT_ s_ipad_y); 

  USER_OBJECT_
S_gtk_button_box_get_child_size(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_button_box_get_child_ipadding(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_bin_get_type(void); 

  USER_OBJECT_
S_gtk_bin_get_child(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_box_get_type(void); 

  USER_OBJECT_
S_gtk_box_pack_start(USER_OBJECT_ s_object, USER_OBJECT_ s_child, USER_OBJECT_ s_expand, USER_OBJECT_ s_fill, USER_OBJECT_ s_padding); 

  USER_OBJECT_
S_gtk_box_pack_end(USER_OBJECT_ s_object, USER_OBJECT_ s_child, USER_OBJECT_ s_expand, USER_OBJECT_ s_fill, USER_OBJECT_ s_padding); 

  USER_OBJECT_
S_gtk_box_pack_start_defaults(USER_OBJECT_ s_object, USER_OBJECT_ s_widget); 

  USER_OBJECT_
S_gtk_box_pack_end_defaults(USER_OBJECT_ s_object, USER_OBJECT_ s_widget); 

  USER_OBJECT_
S_gtk_box_set_homogeneous(USER_OBJECT_ s_object, USER_OBJECT_ s_homogeneous); 

  USER_OBJECT_
S_gtk_box_get_homogeneous(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_box_set_spacing(USER_OBJECT_ s_object, USER_OBJECT_ s_spacing); 

  USER_OBJECT_
S_gtk_box_get_spacing(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_box_reorder_child(USER_OBJECT_ s_object, USER_OBJECT_ s_child, USER_OBJECT_ s_position); 

  USER_OBJECT_
S_gtk_box_query_child_packing(USER_OBJECT_ s_object, USER_OBJECT_ s_child); 

  USER_OBJECT_
S_gtk_box_set_child_packing(USER_OBJECT_ s_object, USER_OBJECT_ s_child, USER_OBJECT_ s_expand, USER_OBJECT_ s_fill, USER_OBJECT_ s_padding, USER_OBJECT_ s_pack_type); 

  USER_OBJECT_
S_gtk_button_get_type(void); 

  USER_OBJECT_
S_gtk_button_new(void); 

  USER_OBJECT_
S_gtk_button_new_with_label(USER_OBJECT_ s_label); 

  USER_OBJECT_
S_gtk_button_new_from_stock(USER_OBJECT_ s_stock_id); 

  USER_OBJECT_
S_gtk_button_new_with_mnemonic(USER_OBJECT_ s_label); 

  USER_OBJECT_
S_gtk_button_pressed(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_button_released(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_button_clicked(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_button_enter(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_button_leave(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_button_set_relief(USER_OBJECT_ s_object, USER_OBJECT_ s_newstyle); 

  USER_OBJECT_
S_gtk_button_get_relief(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_button_set_label(USER_OBJECT_ s_object, USER_OBJECT_ s_label); 

  USER_OBJECT_
S_gtk_button_get_label(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_button_set_use_underline(USER_OBJECT_ s_object, USER_OBJECT_ s_use_underline); 

  USER_OBJECT_
S_gtk_button_get_use_underline(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_button_set_use_stock(USER_OBJECT_ s_object, USER_OBJECT_ s_use_stock); 

  USER_OBJECT_
S_gtk_button_get_use_stock(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_button_set_focus_on_click(USER_OBJECT_ s_object, USER_OBJECT_ s_focus_on_click); 

  USER_OBJECT_
S_gtk_button_get_focus_on_click(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_button_set_alignment(USER_OBJECT_ s_object, USER_OBJECT_ s_xalign, USER_OBJECT_ s_yalign); 

  USER_OBJECT_
S_gtk_button_get_alignment(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_button_set_image(USER_OBJECT_ s_object, USER_OBJECT_ s_image); 

  USER_OBJECT_
S_gtk_button_get_image(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_calendar_get_type(void); 

  USER_OBJECT_
S_gtk_calendar_new(void); 

  USER_OBJECT_
S_gtk_calendar_select_month(USER_OBJECT_ s_object, USER_OBJECT_ s_month, USER_OBJECT_ s_year); 

  USER_OBJECT_
S_gtk_calendar_select_day(USER_OBJECT_ s_object, USER_OBJECT_ s_day); 

  USER_OBJECT_
S_gtk_calendar_mark_day(USER_OBJECT_ s_object, USER_OBJECT_ s_day); 

  USER_OBJECT_
S_gtk_calendar_unmark_day(USER_OBJECT_ s_object, USER_OBJECT_ s_day); 

  USER_OBJECT_
S_gtk_calendar_clear_marks(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_calendar_set_display_options(USER_OBJECT_ s_object, USER_OBJECT_ s_flags); 

  USER_OBJECT_
S_gtk_calendar_get_display_options(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_calendar_display_options(USER_OBJECT_ s_object, USER_OBJECT_ s_flags); 

  USER_OBJECT_
S_gtk_calendar_get_date(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_calendar_freeze(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_calendar_thaw(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_cell_editable_get_type(void); 

  USER_OBJECT_
S_gtk_cell_editable_start_editing(USER_OBJECT_ s_object, USER_OBJECT_ s_event); 

  USER_OBJECT_
S_gtk_cell_editable_editing_done(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_cell_editable_remove_widget(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_cell_layout_get_type(void); 

  USER_OBJECT_
S_gtk_cell_layout_pack_start(USER_OBJECT_ s_object, USER_OBJECT_ s_cell, USER_OBJECT_ s_expand); 

  USER_OBJECT_
S_gtk_cell_layout_pack_end(USER_OBJECT_ s_object, USER_OBJECT_ s_cell, USER_OBJECT_ s_expand); 

  USER_OBJECT_
S_gtk_cell_layout_clear(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_cell_layout_add_attribute(USER_OBJECT_ s_object, USER_OBJECT_ s_cell, USER_OBJECT_ s_attribute, USER_OBJECT_ s_column); 

  USER_OBJECT_
S_gtk_cell_layout_set_cell_data_func(USER_OBJECT_ s_object, USER_OBJECT_ s_cell, USER_OBJECT_ s_func, USER_OBJECT_ s_func_data); 

  USER_OBJECT_
S_gtk_cell_layout_clear_attributes(USER_OBJECT_ s_object, USER_OBJECT_ s_cell); 

  USER_OBJECT_
S_gtk_cell_layout_reorder(USER_OBJECT_ s_object, USER_OBJECT_ s_cell, USER_OBJECT_ s_position); 

  USER_OBJECT_
S_gtk_cell_renderer_get_type(void); 

  USER_OBJECT_
S_gtk_cell_renderer_get_size(USER_OBJECT_ s_object, USER_OBJECT_ s_widget, USER_OBJECT_ s_cell_area); 

  USER_OBJECT_
S_gtk_cell_renderer_render(USER_OBJECT_ s_object, USER_OBJECT_ s_window, USER_OBJECT_ s_widget, USER_OBJECT_ s_background_area, USER_OBJECT_ s_cell_area, USER_OBJECT_ s_expose_area, USER_OBJECT_ s_flags); 

  USER_OBJECT_
S_gtk_cell_renderer_activate(USER_OBJECT_ s_object, USER_OBJECT_ s_event, USER_OBJECT_ s_widget, USER_OBJECT_ s_path, USER_OBJECT_ s_background_area, USER_OBJECT_ s_cell_area, USER_OBJECT_ s_flags); 

  USER_OBJECT_
S_gtk_cell_renderer_start_editing(USER_OBJECT_ s_object, USER_OBJECT_ s_event, USER_OBJECT_ s_widget, USER_OBJECT_ s_path, USER_OBJECT_ s_background_area, USER_OBJECT_ s_cell_area, USER_OBJECT_ s_flags); 

  USER_OBJECT_
S_gtk_cell_renderer_set_fixed_size(USER_OBJECT_ s_object, USER_OBJECT_ s_width, USER_OBJECT_ s_height); 

  USER_OBJECT_
S_gtk_cell_renderer_get_fixed_size(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_cell_renderer_editing_canceled(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_cell_renderer_stop_editing(USER_OBJECT_ s_object, USER_OBJECT_ s_canceled); 

  USER_OBJECT_
S_gtk_cell_renderer_combo_get_type(void); 

  USER_OBJECT_
S_gtk_cell_renderer_combo_new(void); 

  USER_OBJECT_
S_gtk_cell_renderer_pixbuf_get_type(void); 

  USER_OBJECT_
S_gtk_cell_renderer_pixbuf_new(void); 

  USER_OBJECT_
S_gtk_cell_renderer_progress_get_type(void); 

  USER_OBJECT_
S_gtk_cell_renderer_progress_new(void); 

  USER_OBJECT_
S_gtk_cell_renderer_text_get_type(void); 

  USER_OBJECT_
S_gtk_cell_renderer_text_new(void); 

  USER_OBJECT_
S_gtk_cell_renderer_text_set_fixed_height_from_font(USER_OBJECT_ s_object, USER_OBJECT_ s_number_of_rows); 

  USER_OBJECT_
S_gtk_cell_renderer_toggle_get_type(void); 

  USER_OBJECT_
S_gtk_cell_renderer_toggle_new(void); 

  USER_OBJECT_
S_gtk_cell_renderer_toggle_get_radio(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_cell_renderer_toggle_set_radio(USER_OBJECT_ s_object, USER_OBJECT_ s_radio); 

  USER_OBJECT_
S_gtk_cell_renderer_toggle_get_active(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_cell_renderer_toggle_set_active(USER_OBJECT_ s_object, USER_OBJECT_ s_setting); 

  USER_OBJECT_
S_gtk_cell_view_get_type(void); 

  USER_OBJECT_
S_gtk_cell_view_new(void); 

  USER_OBJECT_
S_gtk_cell_view_new_with_text(USER_OBJECT_ s_text); 

  USER_OBJECT_
S_gtk_cell_view_new_with_markup(USER_OBJECT_ s_markup); 

  USER_OBJECT_
S_gtk_cell_view_new_with_pixbuf(USER_OBJECT_ s_pixbuf); 

  USER_OBJECT_
S_gtk_cell_view_set_model(USER_OBJECT_ s_object, USER_OBJECT_ s_model); 

  USER_OBJECT_
S_gtk_cell_view_set_displayed_row(USER_OBJECT_ s_object, USER_OBJECT_ s_path); 

  USER_OBJECT_
S_gtk_cell_view_get_displayed_row(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_cell_view_get_size_of_row(USER_OBJECT_ s_object, USER_OBJECT_ s_path); 

  USER_OBJECT_
S_gtk_cell_view_set_background_color(USER_OBJECT_ s_object, USER_OBJECT_ s_color); 

  USER_OBJECT_
S_gtk_cell_view_get_cell_renderers(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_clipboard_set_can_store(USER_OBJECT_ s_object, USER_OBJECT_ s_targets); 

  USER_OBJECT_
S_gtk_clipboard_store(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_check_button_get_type(void); 

  USER_OBJECT_
S_gtk_check_button_new(void); 

  USER_OBJECT_
S_gtk_check_button_new_with_label(USER_OBJECT_ s_label); 

  USER_OBJECT_
S_gtk_check_button_new_with_mnemonic(USER_OBJECT_ s_label); 

  USER_OBJECT_
S_gtk_check_menu_item_get_type(void); 

  USER_OBJECT_
S_gtk_check_menu_item_new(void); 

  USER_OBJECT_
S_gtk_check_menu_item_new_with_label(USER_OBJECT_ s_label); 

  USER_OBJECT_
S_gtk_check_menu_item_new_with_mnemonic(USER_OBJECT_ s_label); 

  USER_OBJECT_
S_gtk_check_menu_item_set_active(USER_OBJECT_ s_object, USER_OBJECT_ s_is_active); 

  USER_OBJECT_
S_gtk_check_menu_item_get_active(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_check_menu_item_toggled(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_check_menu_item_set_inconsistent(USER_OBJECT_ s_object, USER_OBJECT_ s_setting); 

  USER_OBJECT_
S_gtk_check_menu_item_get_inconsistent(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_check_menu_item_set_draw_as_radio(USER_OBJECT_ s_object, USER_OBJECT_ s_draw_as_radio); 

  USER_OBJECT_
S_gtk_check_menu_item_get_draw_as_radio(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_check_menu_item_set_show_toggle(USER_OBJECT_ s_object, USER_OBJECT_ s_always); 

  USER_OBJECT_
S_gtk_check_menu_item_set_state(USER_OBJECT_ s_object, USER_OBJECT_ s_is_active); 

  USER_OBJECT_
S_gtk_clipboard_get_type(void); 

  USER_OBJECT_
S_gtk_clipboard_get_for_display(USER_OBJECT_ s_display, USER_OBJECT_ s_selection); 

  USER_OBJECT_
S_gtk_clipboard_get(USER_OBJECT_ s_selection); 

  USER_OBJECT_
S_gtk_clipboard_get_display(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_clipboard_set_with_data(USER_OBJECT_ s_object, USER_OBJECT_ s_targets, USER_OBJECT_ s_get_func, USER_OBJECT_ s_user_data); 

  USER_OBJECT_
S_gtk_clipboard_get_owner(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_clipboard_clear(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_clipboard_set_text(USER_OBJECT_ s_object, USER_OBJECT_ s_text, USER_OBJECT_ s_len); 

  USER_OBJECT_
S_gtk_clipboard_set_image(USER_OBJECT_ s_object, USER_OBJECT_ s_pixbuf); 

  USER_OBJECT_
S_gtk_clipboard_request_contents(USER_OBJECT_ s_object, USER_OBJECT_ s_target, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data); 

  USER_OBJECT_
S_gtk_clipboard_request_image(USER_OBJECT_ s_object, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data); 

  USER_OBJECT_
S_gtk_clipboard_request_text(USER_OBJECT_ s_object, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data); 

  USER_OBJECT_
S_gtk_clipboard_request_targets(USER_OBJECT_ s_object, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data); 

  USER_OBJECT_
S_gtk_clipboard_wait_for_contents(USER_OBJECT_ s_object, USER_OBJECT_ s_target); 

  USER_OBJECT_
S_gtk_clipboard_wait_for_image(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_clipboard_wait_for_text(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_clipboard_wait_is_image_available(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_clipboard_wait_is_text_available(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_clipboard_wait_is_target_available(USER_OBJECT_ s_object, USER_OBJECT_ s_target); 

  USER_OBJECT_
S_gtk_clipboard_wait_for_targets(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_clist_get_type(void); 

  USER_OBJECT_
S_gtk_clist_new(USER_OBJECT_ s_columns); 

  USER_OBJECT_
S_gtk_clist_new_with_titles(USER_OBJECT_ s_columns, USER_OBJECT_ s_titles); 

  USER_OBJECT_
S_gtk_clist_set_hadjustment(USER_OBJECT_ s_object, USER_OBJECT_ s_adjustment); 

  USER_OBJECT_
S_gtk_clist_set_vadjustment(USER_OBJECT_ s_object, USER_OBJECT_ s_adjustment); 

  USER_OBJECT_
S_gtk_clist_get_hadjustment(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_clist_get_vadjustment(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_clist_set_shadow_type(USER_OBJECT_ s_object, USER_OBJECT_ s_type); 

  USER_OBJECT_
S_gtk_clist_set_selection_mode(USER_OBJECT_ s_object, USER_OBJECT_ s_mode); 

  USER_OBJECT_
S_gtk_clist_set_reorderable(USER_OBJECT_ s_object, USER_OBJECT_ s_reorderable); 

  USER_OBJECT_
S_gtk_clist_set_use_drag_icons(USER_OBJECT_ s_object, USER_OBJECT_ s_use_icons); 

  USER_OBJECT_
S_gtk_clist_set_button_actions(USER_OBJECT_ s_object, USER_OBJECT_ s_button, USER_OBJECT_ s_button_actions); 

  USER_OBJECT_
S_gtk_clist_freeze(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_clist_thaw(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_clist_column_titles_show(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_clist_column_titles_hide(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_clist_column_title_active(USER_OBJECT_ s_object, USER_OBJECT_ s_column); 

  USER_OBJECT_
S_gtk_clist_column_title_passive(USER_OBJECT_ s_object, USER_OBJECT_ s_column); 

  USER_OBJECT_
S_gtk_clist_column_titles_active(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_clist_column_titles_passive(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_clist_set_column_title(USER_OBJECT_ s_object, USER_OBJECT_ s_column, USER_OBJECT_ s_title); 

  USER_OBJECT_
S_gtk_clist_get_column_title(USER_OBJECT_ s_object, USER_OBJECT_ s_column); 

  USER_OBJECT_
S_gtk_clist_set_column_widget(USER_OBJECT_ s_object, USER_OBJECT_ s_column, USER_OBJECT_ s_widget); 

  USER_OBJECT_
S_gtk_clist_get_column_widget(USER_OBJECT_ s_object, USER_OBJECT_ s_column); 

  USER_OBJECT_
S_gtk_clist_set_column_justification(USER_OBJECT_ s_object, USER_OBJECT_ s_column, USER_OBJECT_ s_justification); 

  USER_OBJECT_
S_gtk_clist_set_column_visibility(USER_OBJECT_ s_object, USER_OBJECT_ s_column, USER_OBJECT_ s_visible); 

  USER_OBJECT_
S_gtk_clist_set_column_resizeable(USER_OBJECT_ s_object, USER_OBJECT_ s_column, USER_OBJECT_ s_resizeable); 

  USER_OBJECT_
S_gtk_clist_set_column_auto_resize(USER_OBJECT_ s_object, USER_OBJECT_ s_column, USER_OBJECT_ s_auto_resize); 

  USER_OBJECT_
S_gtk_clist_columns_autosize(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_clist_optimal_column_width(USER_OBJECT_ s_object, USER_OBJECT_ s_column); 

  USER_OBJECT_
S_gtk_clist_set_column_width(USER_OBJECT_ s_object, USER_OBJECT_ s_column, USER_OBJECT_ s_width); 

  USER_OBJECT_
S_gtk_clist_set_column_min_width(USER_OBJECT_ s_object, USER_OBJECT_ s_column, USER_OBJECT_ s_min_width); 

  USER_OBJECT_
S_gtk_clist_set_column_max_width(USER_OBJECT_ s_object, USER_OBJECT_ s_column, USER_OBJECT_ s_max_width); 

  USER_OBJECT_
S_gtk_clist_set_row_height(USER_OBJECT_ s_object, USER_OBJECT_ s_height); 

  USER_OBJECT_
S_gtk_clist_moveto(USER_OBJECT_ s_object, USER_OBJECT_ s_row, USER_OBJECT_ s_column, USER_OBJECT_ s_row_align, USER_OBJECT_ s_col_align); 

  USER_OBJECT_
S_gtk_clist_row_is_visible(USER_OBJECT_ s_object, USER_OBJECT_ s_row); 

  USER_OBJECT_
S_gtk_clist_get_cell_type(USER_OBJECT_ s_object, USER_OBJECT_ s_row, USER_OBJECT_ s_column); 

  USER_OBJECT_
S_gtk_clist_set_text(USER_OBJECT_ s_object, USER_OBJECT_ s_row, USER_OBJECT_ s_column, USER_OBJECT_ s_text); 

  USER_OBJECT_
S_gtk_clist_get_text(USER_OBJECT_ s_object, USER_OBJECT_ s_row, USER_OBJECT_ s_column); 

  USER_OBJECT_
S_gtk_clist_set_pixmap(USER_OBJECT_ s_object, USER_OBJECT_ s_row, USER_OBJECT_ s_column, USER_OBJECT_ s_pixmap, USER_OBJECT_ s_mask); 

  USER_OBJECT_
S_gtk_clist_get_pixmap(USER_OBJECT_ s_object, USER_OBJECT_ s_row, USER_OBJECT_ s_column); 

  USER_OBJECT_
S_gtk_clist_set_pixtext(USER_OBJECT_ s_object, USER_OBJECT_ s_row, USER_OBJECT_ s_column, USER_OBJECT_ s_text, USER_OBJECT_ s_spacing, USER_OBJECT_ s_pixmap, USER_OBJECT_ s_mask); 

  USER_OBJECT_
S_gtk_clist_get_pixtext(USER_OBJECT_ s_object, USER_OBJECT_ s_row, USER_OBJECT_ s_column); 

  USER_OBJECT_
S_gtk_clist_set_foreground(USER_OBJECT_ s_object, USER_OBJECT_ s_row, USER_OBJECT_ s_color); 

  USER_OBJECT_
S_gtk_clist_set_background(USER_OBJECT_ s_object, USER_OBJECT_ s_row, USER_OBJECT_ s_color); 

  USER_OBJECT_
S_gtk_clist_set_cell_style(USER_OBJECT_ s_object, USER_OBJECT_ s_row, USER_OBJECT_ s_column, USER_OBJECT_ s_style); 

  USER_OBJECT_
S_gtk_clist_get_cell_style(USER_OBJECT_ s_object, USER_OBJECT_ s_row, USER_OBJECT_ s_column); 

  USER_OBJECT_
S_gtk_clist_set_row_style(USER_OBJECT_ s_object, USER_OBJECT_ s_row, USER_OBJECT_ s_style); 

  USER_OBJECT_
S_gtk_clist_get_row_style(USER_OBJECT_ s_object, USER_OBJECT_ s_row); 

  USER_OBJECT_
S_gtk_clist_set_shift(USER_OBJECT_ s_object, USER_OBJECT_ s_row, USER_OBJECT_ s_column, USER_OBJECT_ s_vertical, USER_OBJECT_ s_horizontal); 

  USER_OBJECT_
S_gtk_clist_set_selectable(USER_OBJECT_ s_object, USER_OBJECT_ s_row, USER_OBJECT_ s_selectable); 

  USER_OBJECT_
S_gtk_clist_get_selectable(USER_OBJECT_ s_object, USER_OBJECT_ s_row); 

  USER_OBJECT_
S_gtk_clist_prepend(USER_OBJECT_ s_object, USER_OBJECT_ s_text); 

  USER_OBJECT_
S_gtk_clist_append(USER_OBJECT_ s_object, USER_OBJECT_ s_text); 

  USER_OBJECT_
S_gtk_clist_insert(USER_OBJECT_ s_object, USER_OBJECT_ s_row, USER_OBJECT_ s_text); 

  USER_OBJECT_
S_gtk_clist_remove(USER_OBJECT_ s_object, USER_OBJECT_ s_row); 

  USER_OBJECT_
S_gtk_clist_set_row_data_full(USER_OBJECT_ s_object, USER_OBJECT_ s_row, USER_OBJECT_ s_data); 

  USER_OBJECT_
S_gtk_clist_get_row_data(USER_OBJECT_ s_object, USER_OBJECT_ s_row); 

  USER_OBJECT_
S_gtk_clist_find_row_from_data(USER_OBJECT_ s_object, USER_OBJECT_ s_data); 

  USER_OBJECT_
S_gtk_clist_select_row(USER_OBJECT_ s_object, USER_OBJECT_ s_row, USER_OBJECT_ s_column); 

  USER_OBJECT_
S_gtk_clist_unselect_row(USER_OBJECT_ s_object, USER_OBJECT_ s_row, USER_OBJECT_ s_column); 

  USER_OBJECT_
S_gtk_clist_undo_selection(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_clist_clear(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_clist_get_selection_info(USER_OBJECT_ s_object, USER_OBJECT_ s_x, USER_OBJECT_ s_y); 

  USER_OBJECT_
S_gtk_clist_select_all(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_clist_unselect_all(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_clist_swap_rows(USER_OBJECT_ s_object, USER_OBJECT_ s_row1, USER_OBJECT_ s_row2); 

  USER_OBJECT_
S_gtk_clist_row_move(USER_OBJECT_ s_object, USER_OBJECT_ s_source_row, USER_OBJECT_ s_dest_row); 

  USER_OBJECT_
S_gtk_clist_set_sort_column(USER_OBJECT_ s_object, USER_OBJECT_ s_column); 

  USER_OBJECT_
S_gtk_clist_set_sort_type(USER_OBJECT_ s_object, USER_OBJECT_ s_sort_type); 

  USER_OBJECT_
S_gtk_clist_sort(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_clist_set_auto_sort(USER_OBJECT_ s_object, USER_OBJECT_ s_auto_sort); 

  USER_OBJECT_
S_gtk_color_button_get_type(void); 

  USER_OBJECT_
S_gtk_color_button_new(void); 

  USER_OBJECT_
S_gtk_color_button_new_with_color(USER_OBJECT_ s_color); 

  USER_OBJECT_
S_gtk_color_button_set_color(USER_OBJECT_ s_object, USER_OBJECT_ s_color); 

  USER_OBJECT_
S_gtk_color_button_set_alpha(USER_OBJECT_ s_object, USER_OBJECT_ s_alpha); 

  USER_OBJECT_
S_gtk_color_button_get_color(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_color_button_get_alpha(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_color_button_set_use_alpha(USER_OBJECT_ s_object, USER_OBJECT_ s_use_alpha); 

  USER_OBJECT_
S_gtk_color_button_get_use_alpha(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_color_button_set_title(USER_OBJECT_ s_object, USER_OBJECT_ s_title); 

  USER_OBJECT_
S_gtk_color_button_get_title(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_color_selection_get_type(void); 

  USER_OBJECT_
S_gtk_color_selection_new(void); 

  USER_OBJECT_
S_gtk_color_selection_get_has_opacity_control(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_color_selection_set_has_opacity_control(USER_OBJECT_ s_object, USER_OBJECT_ s_has_opacity); 

  USER_OBJECT_
S_gtk_color_selection_get_has_palette(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_color_selection_set_has_palette(USER_OBJECT_ s_object, USER_OBJECT_ s_has_palette); 

  USER_OBJECT_
S_gtk_color_selection_set_current_color(USER_OBJECT_ s_object, USER_OBJECT_ s_color); 

  USER_OBJECT_
S_gtk_color_selection_set_current_alpha(USER_OBJECT_ s_object, USER_OBJECT_ s_alpha); 

  USER_OBJECT_
S_gtk_color_selection_get_current_color(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_color_selection_get_current_alpha(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_color_selection_set_previous_color(USER_OBJECT_ s_object, USER_OBJECT_ s_color); 

  USER_OBJECT_
S_gtk_color_selection_set_previous_alpha(USER_OBJECT_ s_object, USER_OBJECT_ s_alpha); 

  USER_OBJECT_
S_gtk_color_selection_get_previous_color(USER_OBJECT_ s_object, USER_OBJECT_ s_color); 

  USER_OBJECT_
S_gtk_color_selection_get_previous_alpha(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_color_selection_is_adjusting(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_color_selection_palette_from_string(USER_OBJECT_ s_str); 

  USER_OBJECT_
S_gtk_color_selection_palette_to_string(USER_OBJECT_ s_colors); 

  USER_OBJECT_
S_gtk_color_selection_set_change_palette_hook(USER_OBJECT_ s_func); 

  USER_OBJECT_
S_gtk_color_selection_set_change_palette_with_screen_hook(USER_OBJECT_ s_func); 

  USER_OBJECT_
S_gtk_color_selection_set_color(USER_OBJECT_ s_object, USER_OBJECT_ s_color); 

  USER_OBJECT_
S_gtk_color_selection_get_color(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_color_selection_set_update_policy(USER_OBJECT_ s_object, USER_OBJECT_ s_policy); 

  USER_OBJECT_
S_gtk_color_selection_dialog_get_type(void); 

  USER_OBJECT_
S_gtk_color_selection_dialog_new(USER_OBJECT_ s_title); 

  USER_OBJECT_
S_gtk_combo_get_type(void); 

  USER_OBJECT_
S_gtk_combo_new(void); 

  USER_OBJECT_
S_gtk_combo_set_value_in_list(USER_OBJECT_ s_object, USER_OBJECT_ s_val, USER_OBJECT_ s_ok_if_empty); 

  USER_OBJECT_
S_gtk_combo_set_use_arrows(USER_OBJECT_ s_object, USER_OBJECT_ s_val); 

  USER_OBJECT_
S_gtk_combo_set_use_arrows_always(USER_OBJECT_ s_object, USER_OBJECT_ s_val); 

  USER_OBJECT_
S_gtk_combo_set_case_sensitive(USER_OBJECT_ s_object, USER_OBJECT_ s_val); 

  USER_OBJECT_
S_gtk_combo_set_item_string(USER_OBJECT_ s_object, USER_OBJECT_ s_item, USER_OBJECT_ s_item_value); 

  USER_OBJECT_
S_gtk_combo_set_popdown_strings(USER_OBJECT_ s_object, USER_OBJECT_ s_strings); 

  USER_OBJECT_
S_gtk_combo_disable_activate(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_combo_box_get_type(void); 

  USER_OBJECT_
S_gtk_combo_box_new(void); 

  USER_OBJECT_
S_gtk_combo_box_new_with_model(USER_OBJECT_ s_model); 

  USER_OBJECT_
S_gtk_combo_box_set_wrap_width(USER_OBJECT_ s_object, USER_OBJECT_ s_width); 

  USER_OBJECT_
S_gtk_combo_box_set_row_span_column(USER_OBJECT_ s_object, USER_OBJECT_ s_row_span); 

  USER_OBJECT_
S_gtk_combo_box_set_column_span_column(USER_OBJECT_ s_object, USER_OBJECT_ s_column_span); 

  USER_OBJECT_
S_gtk_combo_box_get_active(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_combo_box_set_active(USER_OBJECT_ s_object, USER_OBJECT_ s_index); 

  USER_OBJECT_
S_gtk_combo_box_get_active_iter(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_combo_box_set_active_iter(USER_OBJECT_ s_object, USER_OBJECT_ s_iter); 

  USER_OBJECT_
S_gtk_combo_box_set_model(USER_OBJECT_ s_object, USER_OBJECT_ s_model); 

  USER_OBJECT_
S_gtk_combo_box_get_model(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_combo_box_new_text(void); 

  USER_OBJECT_
S_gtk_combo_box_append_text(USER_OBJECT_ s_object, USER_OBJECT_ s_text); 

  USER_OBJECT_
S_gtk_combo_box_insert_text(USER_OBJECT_ s_object, USER_OBJECT_ s_position, USER_OBJECT_ s_text); 

  USER_OBJECT_
S_gtk_combo_box_prepend_text(USER_OBJECT_ s_object, USER_OBJECT_ s_text); 

  USER_OBJECT_
S_gtk_combo_box_remove_text(USER_OBJECT_ s_object, USER_OBJECT_ s_position); 

  USER_OBJECT_
S_gtk_combo_box_popup(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_combo_box_popdown(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_combo_box_get_wrap_width(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_combo_box_get_row_span_column(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_combo_box_get_column_span_column(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_combo_box_set_add_tearoffs(USER_OBJECT_ s_object, USER_OBJECT_ s_add_tearoffs); 

  USER_OBJECT_
S_gtk_combo_box_get_add_tearoffs(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_combo_box_get_focus_on_click(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_combo_box_set_focus_on_click(USER_OBJECT_ s_object, USER_OBJECT_ s_focus_on_click); 

  USER_OBJECT_
S_gtk_combo_box_set_row_separator_func(USER_OBJECT_ s_object, USER_OBJECT_ s_func, USER_OBJECT_ s_data); 

  USER_OBJECT_
S_gtk_combo_box_get_row_separator_func(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_combo_box_get_active_text(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_combo_box_get_popup_accessible(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_combo_box_entry_get_type(void); 

  USER_OBJECT_
S_gtk_combo_box_entry_new(void); 

  USER_OBJECT_
S_gtk_combo_box_entry_new_with_model(USER_OBJECT_ s_model, USER_OBJECT_ s_text_column); 

  USER_OBJECT_
S_gtk_combo_box_entry_set_text_column(USER_OBJECT_ s_object, USER_OBJECT_ s_text_column); 

  USER_OBJECT_
S_gtk_combo_box_entry_get_text_column(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_combo_box_entry_new_text(void); 

  USER_OBJECT_
S_gtk_container_get_type(void); 

  USER_OBJECT_
S_gtk_container_set_border_width(USER_OBJECT_ s_object, USER_OBJECT_ s_border_width); 

  USER_OBJECT_
S_gtk_container_get_border_width(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_container_add(USER_OBJECT_ s_object, USER_OBJECT_ s_widget); 

  USER_OBJECT_
S_gtk_container_remove(USER_OBJECT_ s_object, USER_OBJECT_ s_widget); 

  USER_OBJECT_
S_gtk_container_set_resize_mode(USER_OBJECT_ s_object, USER_OBJECT_ s_resize_mode); 

  USER_OBJECT_
S_gtk_container_get_resize_mode(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_container_check_resize(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_container_foreach(USER_OBJECT_ s_object, USER_OBJECT_ s_callback, USER_OBJECT_ s_callback_data); 

  USER_OBJECT_
S_gtk_container_foreach_full(USER_OBJECT_ s_object, USER_OBJECT_ s_callback, USER_OBJECT_ s_callback_data); 

  USER_OBJECT_
S_gtk_container_get_children(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_container_children(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_container_propagate_expose(USER_OBJECT_ s_object, USER_OBJECT_ s_child, USER_OBJECT_ s_event); 

  USER_OBJECT_
S_gtk_container_set_focus_chain(USER_OBJECT_ s_object, USER_OBJECT_ s_focusable_widgets); 

  USER_OBJECT_
S_gtk_container_get_focus_chain(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_container_unset_focus_chain(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_container_set_reallocate_redraws(USER_OBJECT_ s_object, USER_OBJECT_ s_needs_redraws); 

  USER_OBJECT_
S_gtk_container_set_focus_child(USER_OBJECT_ s_object, USER_OBJECT_ s_child); 

  USER_OBJECT_
S_gtk_container_set_focus_vadjustment(USER_OBJECT_ s_object, USER_OBJECT_ s_adjustment); 

  USER_OBJECT_
S_gtk_container_get_focus_vadjustment(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_container_set_focus_hadjustment(USER_OBJECT_ s_object, USER_OBJECT_ s_adjustment); 

  USER_OBJECT_
S_gtk_container_get_focus_hadjustment(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_container_resize_children(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_container_child_type(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_container_class_install_child_property(USER_OBJECT_ s_cclass, USER_OBJECT_ s_property_id, USER_OBJECT_ s_pspec); 

  USER_OBJECT_
S_gtk_container_class_find_child_property(USER_OBJECT_ s_cclass, USER_OBJECT_ s_property_name); 

  USER_OBJECT_
S_gtk_container_class_list_child_properties(USER_OBJECT_ s_cclass); 

  USER_OBJECT_
S_gtk_container_child_get_property(USER_OBJECT_ s_object, USER_OBJECT_ s_child, USER_OBJECT_ s_property_name); 

  USER_OBJECT_
S_gtk_container_forall(USER_OBJECT_ s_object, USER_OBJECT_ s_callback, USER_OBJECT_ s_callback_data); 

  USER_OBJECT_
S_gtk_ctree_get_type(void); 

  USER_OBJECT_
S_gtk_ctree_new_with_titles(USER_OBJECT_ s_columns, USER_OBJECT_ s_tree_column, USER_OBJECT_ s_titles); 

  USER_OBJECT_
S_gtk_ctree_new(USER_OBJECT_ s_columns, USER_OBJECT_ s_tree_column); 

  USER_OBJECT_
S_gtk_ctree_insert_node(USER_OBJECT_ s_object, USER_OBJECT_ s_parent, USER_OBJECT_ s_sibling, USER_OBJECT_ s_text, USER_OBJECT_ s_spacing, USER_OBJECT_ s_pixmap_closed, USER_OBJECT_ s_mask_closed, USER_OBJECT_ s_pixmap_opened, USER_OBJECT_ s_mask_opened, USER_OBJECT_ s_is_leaf, USER_OBJECT_ s_expanded); 

  USER_OBJECT_
S_gtk_ctree_remove_node(USER_OBJECT_ s_object, USER_OBJECT_ s_node); 

  USER_OBJECT_
S_gtk_ctree_insert_gnode(USER_OBJECT_ s_object, USER_OBJECT_ s_parent, USER_OBJECT_ s_sibling, USER_OBJECT_ s_gnode, USER_OBJECT_ s_func, USER_OBJECT_ s_data); 

  USER_OBJECT_
S_gtk_ctree_export_to_gnode(USER_OBJECT_ s_object, USER_OBJECT_ s_parent, USER_OBJECT_ s_sibling, USER_OBJECT_ s_node, USER_OBJECT_ s_func, USER_OBJECT_ s_data); 

  USER_OBJECT_
S_gtk_ctree_post_recursive(USER_OBJECT_ s_object, USER_OBJECT_ s_node, USER_OBJECT_ s_func, USER_OBJECT_ s_data); 

  USER_OBJECT_
S_gtk_ctree_post_recursive_to_depth(USER_OBJECT_ s_object, USER_OBJECT_ s_node, USER_OBJECT_ s_depth, USER_OBJECT_ s_func, USER_OBJECT_ s_data); 

  USER_OBJECT_
S_gtk_ctree_pre_recursive(USER_OBJECT_ s_object, USER_OBJECT_ s_node, USER_OBJECT_ s_func, USER_OBJECT_ s_data); 

  USER_OBJECT_
S_gtk_ctree_pre_recursive_to_depth(USER_OBJECT_ s_object, USER_OBJECT_ s_node, USER_OBJECT_ s_depth, USER_OBJECT_ s_func, USER_OBJECT_ s_data); 

  USER_OBJECT_
S_gtk_ctree_is_viewable(USER_OBJECT_ s_object, USER_OBJECT_ s_node); 

  USER_OBJECT_
S_gtk_ctree_last(USER_OBJECT_ s_object, USER_OBJECT_ s_node); 

  USER_OBJECT_
S_gtk_ctree_find_node_ptr(USER_OBJECT_ s_object, USER_OBJECT_ s_ctree_row); 

  USER_OBJECT_
S_gtk_ctree_node_nth(USER_OBJECT_ s_object, USER_OBJECT_ s_row); 

  USER_OBJECT_
S_gtk_ctree_find(USER_OBJECT_ s_object, USER_OBJECT_ s_node, USER_OBJECT_ s_child); 

  USER_OBJECT_
S_gtk_ctree_is_ancestor(USER_OBJECT_ s_object, USER_OBJECT_ s_node, USER_OBJECT_ s_child); 

  USER_OBJECT_
S_gtk_ctree_find_by_row_data(USER_OBJECT_ s_object, USER_OBJECT_ s_node, USER_OBJECT_ s_data); 

  USER_OBJECT_
S_gtk_ctree_find_all_by_row_data(USER_OBJECT_ s_object, USER_OBJECT_ s_node, USER_OBJECT_ s_data); 

  USER_OBJECT_
S_gtk_ctree_find_by_row_data_custom(USER_OBJECT_ s_object, USER_OBJECT_ s_node, USER_OBJECT_ s_data, USER_OBJECT_ s_func); 

  USER_OBJECT_
S_gtk_ctree_find_all_by_row_data_custom(USER_OBJECT_ s_object, USER_OBJECT_ s_node, USER_OBJECT_ s_data, USER_OBJECT_ s_func); 

  USER_OBJECT_
S_gtk_ctree_is_hot_spot(USER_OBJECT_ s_object, USER_OBJECT_ s_x, USER_OBJECT_ s_y); 

  USER_OBJECT_
S_gtk_ctree_move(USER_OBJECT_ s_object, USER_OBJECT_ s_node, USER_OBJECT_ s_new_parent, USER_OBJECT_ s_new_sibling); 

  USER_OBJECT_
S_gtk_ctree_expand(USER_OBJECT_ s_object, USER_OBJECT_ s_node); 

  USER_OBJECT_
S_gtk_ctree_expand_recursive(USER_OBJECT_ s_object, USER_OBJECT_ s_node); 

  USER_OBJECT_
S_gtk_ctree_expand_to_depth(USER_OBJECT_ s_object, USER_OBJECT_ s_node, USER_OBJECT_ s_depth); 

  USER_OBJECT_
S_gtk_ctree_collapse(USER_OBJECT_ s_object, USER_OBJECT_ s_node); 

  USER_OBJECT_
S_gtk_ctree_collapse_recursive(USER_OBJECT_ s_object, USER_OBJECT_ s_node); 

  USER_OBJECT_
S_gtk_ctree_collapse_to_depth(USER_OBJECT_ s_object, USER_OBJECT_ s_node, USER_OBJECT_ s_depth); 

  USER_OBJECT_
S_gtk_ctree_toggle_expansion(USER_OBJECT_ s_object, USER_OBJECT_ s_node); 

  USER_OBJECT_
S_gtk_ctree_toggle_expansion_recursive(USER_OBJECT_ s_object, USER_OBJECT_ s_node); 

  USER_OBJECT_
S_gtk_ctree_select(USER_OBJECT_ s_object, USER_OBJECT_ s_node); 

  USER_OBJECT_
S_gtk_ctree_select_recursive(USER_OBJECT_ s_object, USER_OBJECT_ s_node); 

  USER_OBJECT_
S_gtk_ctree_unselect(USER_OBJECT_ s_object, USER_OBJECT_ s_node); 

  USER_OBJECT_
S_gtk_ctree_unselect_recursive(USER_OBJECT_ s_object, USER_OBJECT_ s_node); 

  USER_OBJECT_
S_gtk_ctree_real_select_recursive(USER_OBJECT_ s_object, USER_OBJECT_ s_node, USER_OBJECT_ s_state); 

  USER_OBJECT_
S_gtk_ctree_node_set_text(USER_OBJECT_ s_object, USER_OBJECT_ s_node, USER_OBJECT_ s_column, USER_OBJECT_ s_text); 

  USER_OBJECT_
S_gtk_ctree_node_set_pixmap(USER_OBJECT_ s_object, USER_OBJECT_ s_node, USER_OBJECT_ s_column, USER_OBJECT_ s_pixmap, USER_OBJECT_ s_mask); 

  USER_OBJECT_
S_gtk_ctree_node_set_pixtext(USER_OBJECT_ s_object, USER_OBJECT_ s_node, USER_OBJECT_ s_column, USER_OBJECT_ s_text, USER_OBJECT_ s_spacing, USER_OBJECT_ s_pixmap, USER_OBJECT_ s_mask); 

  USER_OBJECT_
S_gtk_ctree_set_node_info(USER_OBJECT_ s_object, USER_OBJECT_ s_node, USER_OBJECT_ s_text, USER_OBJECT_ s_spacing, USER_OBJECT_ s_pixmap_closed, USER_OBJECT_ s_mask_closed, USER_OBJECT_ s_pixmap_opened, USER_OBJECT_ s_mask_opened, USER_OBJECT_ s_is_leaf, USER_OBJECT_ s_expanded); 

  USER_OBJECT_
S_gtk_ctree_node_set_shift(USER_OBJECT_ s_object, USER_OBJECT_ s_node, USER_OBJECT_ s_column, USER_OBJECT_ s_vertical, USER_OBJECT_ s_horizontal); 

  USER_OBJECT_
S_gtk_ctree_node_set_selectable(USER_OBJECT_ s_object, USER_OBJECT_ s_node, USER_OBJECT_ s_selectable); 

  USER_OBJECT_
S_gtk_ctree_node_get_selectable(USER_OBJECT_ s_object, USER_OBJECT_ s_node); 

  USER_OBJECT_
S_gtk_ctree_node_get_cell_type(USER_OBJECT_ s_object, USER_OBJECT_ s_node, USER_OBJECT_ s_column); 

  USER_OBJECT_
S_gtk_ctree_node_get_text(USER_OBJECT_ s_object, USER_OBJECT_ s_node, USER_OBJECT_ s_column); 

  USER_OBJECT_
S_gtk_ctree_node_get_pixmap(USER_OBJECT_ s_object, USER_OBJECT_ s_node, USER_OBJECT_ s_column); 

  USER_OBJECT_
S_gtk_ctree_node_get_pixtext(USER_OBJECT_ s_object, USER_OBJECT_ s_node, USER_OBJECT_ s_column); 

  USER_OBJECT_
S_gtk_ctree_get_node_info(USER_OBJECT_ s_object, USER_OBJECT_ s_node); 

  USER_OBJECT_
S_gtk_ctree_node_set_row_style(USER_OBJECT_ s_object, USER_OBJECT_ s_node, USER_OBJECT_ s_style); 

  USER_OBJECT_
S_gtk_ctree_node_get_row_style(USER_OBJECT_ s_object, USER_OBJECT_ s_node); 

  USER_OBJECT_
S_gtk_ctree_node_set_cell_style(USER_OBJECT_ s_object, USER_OBJECT_ s_node, USER_OBJECT_ s_column, USER_OBJECT_ s_style); 

  USER_OBJECT_
S_gtk_ctree_node_get_cell_style(USER_OBJECT_ s_object, USER_OBJECT_ s_node, USER_OBJECT_ s_column); 

  USER_OBJECT_
S_gtk_ctree_node_set_foreground(USER_OBJECT_ s_object, USER_OBJECT_ s_node, USER_OBJECT_ s_color); 

  USER_OBJECT_
S_gtk_ctree_node_set_background(USER_OBJECT_ s_object, USER_OBJECT_ s_node, USER_OBJECT_ s_color); 

  USER_OBJECT_
S_gtk_ctree_node_set_row_data_full(USER_OBJECT_ s_object, USER_OBJECT_ s_node, USER_OBJECT_ s_data); 

  USER_OBJECT_
S_gtk_ctree_node_get_row_data(USER_OBJECT_ s_object, USER_OBJECT_ s_node); 

  USER_OBJECT_
S_gtk_ctree_node_moveto(USER_OBJECT_ s_object, USER_OBJECT_ s_node, USER_OBJECT_ s_column, USER_OBJECT_ s_row_align, USER_OBJECT_ s_col_align); 

  USER_OBJECT_
S_gtk_ctree_node_is_visible(USER_OBJECT_ s_object, USER_OBJECT_ s_node); 

  USER_OBJECT_
S_gtk_ctree_set_indent(USER_OBJECT_ s_object, USER_OBJECT_ s_indent); 

  USER_OBJECT_
S_gtk_ctree_set_spacing(USER_OBJECT_ s_object, USER_OBJECT_ s_spacing); 

  USER_OBJECT_
S_gtk_ctree_set_show_stub(USER_OBJECT_ s_object, USER_OBJECT_ s_show_stub); 

  USER_OBJECT_
S_gtk_ctree_set_line_style(USER_OBJECT_ s_object, USER_OBJECT_ s_line_style); 

  USER_OBJECT_
S_gtk_ctree_set_expander_style(USER_OBJECT_ s_object, USER_OBJECT_ s_expander_style); 

  USER_OBJECT_
S_gtk_ctree_sort_node(USER_OBJECT_ s_object, USER_OBJECT_ s_node); 

  USER_OBJECT_
S_gtk_ctree_sort_recursive(USER_OBJECT_ s_object, USER_OBJECT_ s_node); 

  USER_OBJECT_
S_gtk_ctree_node_get_type(void); 

  USER_OBJECT_
S_gtk_curve_get_type(void); 

  USER_OBJECT_
S_gtk_curve_new(void); 

  USER_OBJECT_
S_gtk_curve_reset(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_curve_set_gamma(USER_OBJECT_ s_object, USER_OBJECT_ s_gamma); 

  USER_OBJECT_
S_gtk_curve_set_range(USER_OBJECT_ s_object, USER_OBJECT_ s_min_x, USER_OBJECT_ s_max_x, USER_OBJECT_ s_min_y, USER_OBJECT_ s_max_y); 

  USER_OBJECT_
S_gtk_curve_set_vector(USER_OBJECT_ s_object, USER_OBJECT_ s_vector); 

  USER_OBJECT_
S_gtk_curve_set_curve_type(USER_OBJECT_ s_object, USER_OBJECT_ s_type); 

  USER_OBJECT_
S_gtk_dialog_get_type(void); 

  USER_OBJECT_
S_gtk_dialog_new(void); 

  USER_OBJECT_
S_gtk_dialog_add_action_widget(USER_OBJECT_ s_object, USER_OBJECT_ s_child, USER_OBJECT_ s_response_id); 

  USER_OBJECT_
S_gtk_dialog_add_button(USER_OBJECT_ s_object, USER_OBJECT_ s_button_text, USER_OBJECT_ s_response_id); 

  USER_OBJECT_
S_gtk_dialog_set_response_sensitive(USER_OBJECT_ s_object, USER_OBJECT_ s_response_id, USER_OBJECT_ s_setting); 

  USER_OBJECT_
S_gtk_dialog_set_default_response(USER_OBJECT_ s_object, USER_OBJECT_ s_response_id); 

  USER_OBJECT_
S_gtk_dialog_get_response_for_widget(USER_OBJECT_ s_object, USER_OBJECT_ s_widget); 

  USER_OBJECT_
S_gtk_dialog_set_has_separator(USER_OBJECT_ s_object, USER_OBJECT_ s_setting); 

  USER_OBJECT_
S_gtk_dialog_get_has_separator(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_dialog_response(USER_OBJECT_ s_object, USER_OBJECT_ s_response_id); 

  USER_OBJECT_
S_gtk_dialog_run(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_dialog_set_alternative_button_order_from_array(USER_OBJECT_ s_object, USER_OBJECT_ s_new_order); 

  USER_OBJECT_
S_gtk_drag_check_threshold(USER_OBJECT_ s_object, USER_OBJECT_ s_start_x, USER_OBJECT_ s_start_y, USER_OBJECT_ s_current_x, USER_OBJECT_ s_current_y); 

  USER_OBJECT_
S_gtk_drag_get_data(USER_OBJECT_ s_object, USER_OBJECT_ s_context, USER_OBJECT_ s_target, USER_OBJECT_ s_time); 

  USER_OBJECT_
S_gtk_drag_highlight(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_drag_unhighlight(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_drag_dest_set(USER_OBJECT_ s_object, USER_OBJECT_ s_flags, USER_OBJECT_ s_targets, USER_OBJECT_ s_actions); 

  USER_OBJECT_
S_gtk_drag_dest_set_proxy(USER_OBJECT_ s_object, USER_OBJECT_ s_proxy_window, USER_OBJECT_ s_protocol, USER_OBJECT_ s_use_coordinates); 

  USER_OBJECT_
S_gtk_drag_dest_unset(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_drag_dest_find_target(USER_OBJECT_ s_object, USER_OBJECT_ s_context, USER_OBJECT_ s_target_list); 

  USER_OBJECT_
S_gtk_drag_dest_get_target_list(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_drag_dest_set_target_list(USER_OBJECT_ s_object, USER_OBJECT_ s_target_list); 

  USER_OBJECT_
S_gtk_drag_source_set(USER_OBJECT_ s_object, USER_OBJECT_ s_start_button_mask, USER_OBJECT_ s_targets, USER_OBJECT_ s_actions); 

  USER_OBJECT_
S_gtk_drag_source_unset(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_drag_source_set_icon(USER_OBJECT_ s_object, USER_OBJECT_ s_colormap, USER_OBJECT_ s_pixmap, USER_OBJECT_ s_mask); 

  USER_OBJECT_
S_gtk_drag_source_set_icon_pixbuf(USER_OBJECT_ s_object, USER_OBJECT_ s_pixbuf); 

  USER_OBJECT_
S_gtk_drag_source_set_icon_stock(USER_OBJECT_ s_object, USER_OBJECT_ s_stock_id); 

  USER_OBJECT_
S_gtk_drag_source_get_target_list(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_drag_source_set_target_list(USER_OBJECT_ s_object, USER_OBJECT_ s_target_list); 

  USER_OBJECT_
S_gtk_drag_begin(USER_OBJECT_ s_object, USER_OBJECT_ s_targets, USER_OBJECT_ s_actions, USER_OBJECT_ s_button, USER_OBJECT_ s_event); 

  USER_OBJECT_
S_gtk_drag_set_default_icon(USER_OBJECT_ s_colormap, USER_OBJECT_ s_pixmap, USER_OBJECT_ s_mask, USER_OBJECT_ s_hot_x, USER_OBJECT_ s_hot_y); 

  USER_OBJECT_
S_gtk_drag_dest_add_text_targets(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_drag_dest_add_image_targets(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_drag_dest_add_uri_targets(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_drag_source_add_text_targets(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_drag_source_add_image_targets(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_drag_source_add_uri_targets(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_target_list_add_text_targets(USER_OBJECT_ s_list, USER_OBJECT_ s_info); 

  USER_OBJECT_
S_gtk_target_list_add_image_targets(USER_OBJECT_ s_list, USER_OBJECT_ s_info, USER_OBJECT_ s_writable); 

  USER_OBJECT_
S_gtk_target_list_add_uri_targets(USER_OBJECT_ s_list, USER_OBJECT_ s_info); 

  USER_OBJECT_
S_gtk_drag_get_source_widget(USER_OBJECT_ s_context); 

  USER_OBJECT_
S_gtk_drag_source_set_icon_name(USER_OBJECT_ s_widget, USER_OBJECT_ s_icon_name); 

  USER_OBJECT_
S_gtk_drawing_area_get_type(void); 

  USER_OBJECT_
S_gtk_drawing_area_new(void); 

  USER_OBJECT_
S_gtk_drawing_area_size(USER_OBJECT_ s_object, USER_OBJECT_ s_width, USER_OBJECT_ s_height); 

  USER_OBJECT_
S_gtk_editable_get_type(void); 

  USER_OBJECT_
S_gtk_editable_select_region(USER_OBJECT_ s_object, USER_OBJECT_ s_start, USER_OBJECT_ s_end); 

  USER_OBJECT_
S_gtk_editable_get_selection_bounds(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_editable_delete_text(USER_OBJECT_ s_object, USER_OBJECT_ s_start_pos, USER_OBJECT_ s_end_pos); 

  USER_OBJECT_
S_gtk_editable_get_chars(USER_OBJECT_ s_object, USER_OBJECT_ s_start_pos, USER_OBJECT_ s_end_pos); 

  USER_OBJECT_
S_gtk_editable_cut_clipboard(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_editable_copy_clipboard(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_editable_paste_clipboard(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_editable_delete_selection(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_editable_set_position(USER_OBJECT_ s_object, USER_OBJECT_ s_position); 

  USER_OBJECT_
S_gtk_editable_get_position(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_editable_set_editable(USER_OBJECT_ s_object, USER_OBJECT_ s_is_editable); 

  USER_OBJECT_
S_gtk_editable_get_editable(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_entry_get_type(void); 

  USER_OBJECT_
S_gtk_entry_new(void); 

  USER_OBJECT_
S_gtk_entry_new_with_max_length(USER_OBJECT_ s_max); 

  USER_OBJECT_
S_gtk_entry_set_visibility(USER_OBJECT_ s_object, USER_OBJECT_ s_visible); 

  USER_OBJECT_
S_gtk_entry_get_visibility(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_entry_set_invisible_char(USER_OBJECT_ s_object, USER_OBJECT_ s_ch); 

  USER_OBJECT_
S_gtk_entry_get_invisible_char(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_entry_set_has_frame(USER_OBJECT_ s_object, USER_OBJECT_ s_setting); 

  USER_OBJECT_
S_gtk_entry_get_has_frame(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_entry_set_max_length(USER_OBJECT_ s_object, USER_OBJECT_ s_max); 

  USER_OBJECT_
S_gtk_entry_get_max_length(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_entry_set_activates_default(USER_OBJECT_ s_object, USER_OBJECT_ s_setting); 

  USER_OBJECT_
S_gtk_entry_get_activates_default(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_entry_set_width_chars(USER_OBJECT_ s_object, USER_OBJECT_ s_n_chars); 

  USER_OBJECT_
S_gtk_entry_get_width_chars(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_entry_set_text(USER_OBJECT_ s_object, USER_OBJECT_ s_text); 

  USER_OBJECT_
S_gtk_entry_get_text(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_entry_get_layout(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_entry_get_layout_offsets(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_entry_layout_index_to_text_index(USER_OBJECT_ s_object, USER_OBJECT_ s_layout_index); 

  USER_OBJECT_
S_gtk_entry_text_index_to_layout_index(USER_OBJECT_ s_object, USER_OBJECT_ s_text_index); 

  USER_OBJECT_
S_gtk_entry_set_alignment(USER_OBJECT_ s_object, USER_OBJECT_ s_xalign); 

  USER_OBJECT_
S_gtk_entry_get_alignment(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_entry_set_completion(USER_OBJECT_ s_object, USER_OBJECT_ s_completion); 

  USER_OBJECT_
S_gtk_entry_get_completion(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_entry_append_text(USER_OBJECT_ s_object, USER_OBJECT_ s_text); 

  USER_OBJECT_
S_gtk_entry_prepend_text(USER_OBJECT_ s_object, USER_OBJECT_ s_text); 

  USER_OBJECT_
S_gtk_entry_set_position(USER_OBJECT_ s_object, USER_OBJECT_ s_position); 

  USER_OBJECT_
S_gtk_entry_select_region(USER_OBJECT_ s_object, USER_OBJECT_ s_start, USER_OBJECT_ s_end); 

  USER_OBJECT_
S_gtk_entry_set_editable(USER_OBJECT_ s_object, USER_OBJECT_ s_editable); 

  USER_OBJECT_
S_gtk_entry_completion_get_type(void); 

  USER_OBJECT_
S_gtk_entry_completion_new(void); 

  USER_OBJECT_
S_gtk_entry_completion_get_entry(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_entry_completion_set_model(USER_OBJECT_ s_object, USER_OBJECT_ s_model); 

  USER_OBJECT_
S_gtk_entry_completion_get_model(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_entry_completion_set_match_func(USER_OBJECT_ s_object, USER_OBJECT_ s_func, USER_OBJECT_ s_func_data); 

  USER_OBJECT_
S_gtk_entry_completion_set_minimum_key_length(USER_OBJECT_ s_object, USER_OBJECT_ s_length); 

  USER_OBJECT_
S_gtk_entry_completion_get_minimum_key_length(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_entry_completion_complete(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_entry_completion_insert_action_text(USER_OBJECT_ s_object, USER_OBJECT_ s_index, USER_OBJECT_ s_text); 

  USER_OBJECT_
S_gtk_entry_completion_insert_action_markup(USER_OBJECT_ s_object, USER_OBJECT_ s_index, USER_OBJECT_ s_markup); 

  USER_OBJECT_
S_gtk_entry_completion_delete_action(USER_OBJECT_ s_object, USER_OBJECT_ s_index); 

  USER_OBJECT_
S_gtk_entry_completion_set_text_column(USER_OBJECT_ s_object, USER_OBJECT_ s_column); 

  USER_OBJECT_
S_gtk_entry_completion_get_text_column(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_entry_completion_insert_prefix(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_entry_completion_set_inline_completion(USER_OBJECT_ s_object, USER_OBJECT_ s_inline_completion); 

  USER_OBJECT_
S_gtk_entry_completion_get_inline_completion(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_entry_completion_set_popup_completion(USER_OBJECT_ s_object, USER_OBJECT_ s_popup_completion); 

  USER_OBJECT_
S_gtk_entry_completion_get_popup_completion(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_entry_completion_set_popup_set_width(USER_OBJECT_ s_object, USER_OBJECT_ s_popup_set_width); 

  USER_OBJECT_
S_gtk_entry_completion_get_popup_set_width(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_entry_completion_set_popup_single_match(USER_OBJECT_ s_object, USER_OBJECT_ s_popup_single_match); 

  USER_OBJECT_
S_gtk_entry_completion_get_popup_single_match(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_event_box_get_type(void); 

  USER_OBJECT_
S_gtk_event_box_new(void); 

  USER_OBJECT_
S_gtk_event_box_get_visible_window(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_event_box_set_visible_window(USER_OBJECT_ s_object, USER_OBJECT_ s_visible_window); 

  USER_OBJECT_
S_gtk_event_box_get_above_child(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_event_box_set_above_child(USER_OBJECT_ s_object, USER_OBJECT_ s_above_child); 

  USER_OBJECT_
S_gtk_expander_get_type(void); 

  USER_OBJECT_
S_gtk_expander_new(USER_OBJECT_ s_label); 

  USER_OBJECT_
S_gtk_expander_new_with_mnemonic(USER_OBJECT_ s_label); 

  USER_OBJECT_
S_gtk_expander_set_expanded(USER_OBJECT_ s_object, USER_OBJECT_ s_expanded); 

  USER_OBJECT_
S_gtk_expander_get_expanded(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_expander_set_spacing(USER_OBJECT_ s_object, USER_OBJECT_ s_spacing); 

  USER_OBJECT_
S_gtk_expander_get_spacing(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_expander_set_label(USER_OBJECT_ s_object, USER_OBJECT_ s_label); 

  USER_OBJECT_
S_gtk_expander_get_label(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_expander_set_use_underline(USER_OBJECT_ s_object, USER_OBJECT_ s_use_underline); 

  USER_OBJECT_
S_gtk_expander_get_use_underline(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_expander_set_use_markup(USER_OBJECT_ s_object, USER_OBJECT_ s_use_markup); 

  USER_OBJECT_
S_gtk_expander_get_use_markup(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_expander_set_label_widget(USER_OBJECT_ s_object, USER_OBJECT_ s_label_widget); 

  USER_OBJECT_
S_gtk_expander_get_label_widget(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_file_chooser_get_type(void); 

  USER_OBJECT_
S_gtk_file_chooser_error_quark(void); 

  USER_OBJECT_
S_gtk_file_chooser_set_action(USER_OBJECT_ s_object, USER_OBJECT_ s_action); 

  USER_OBJECT_
S_gtk_file_chooser_get_action(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_file_chooser_set_local_only(USER_OBJECT_ s_object, USER_OBJECT_ s_local_only); 

  USER_OBJECT_
S_gtk_file_chooser_get_local_only(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_file_chooser_set_select_multiple(USER_OBJECT_ s_object, USER_OBJECT_ s_select_multiple); 

  USER_OBJECT_
S_gtk_file_chooser_get_select_multiple(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_file_chooser_set_show_hidden(USER_OBJECT_ s_object, USER_OBJECT_ s_show_hidden); 

  USER_OBJECT_
S_gtk_file_chooser_get_show_hidden(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_file_chooser_set_do_overwrite_confirmation(USER_OBJECT_ s_object, USER_OBJECT_ s_do_overwrite_confirmation); 

  USER_OBJECT_
S_gtk_file_chooser_get_do_overwrite_confirmation(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_file_chooser_set_current_name(USER_OBJECT_ s_object, USER_OBJECT_ s_name); 

  USER_OBJECT_
S_gtk_file_chooser_get_filename(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_file_chooser_set_filename(USER_OBJECT_ s_object, USER_OBJECT_ s_filename); 

  USER_OBJECT_
S_gtk_file_chooser_select_filename(USER_OBJECT_ s_object, USER_OBJECT_ s_filename); 

  USER_OBJECT_
S_gtk_file_chooser_unselect_filename(USER_OBJECT_ s_object, USER_OBJECT_ s_filename); 

  USER_OBJECT_
S_gtk_file_chooser_select_all(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_file_chooser_unselect_all(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_file_chooser_get_filenames(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_file_chooser_set_current_folder(USER_OBJECT_ s_object, USER_OBJECT_ s_filename); 

  USER_OBJECT_
S_gtk_file_chooser_get_current_folder(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_file_chooser_get_uri(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_file_chooser_set_uri(USER_OBJECT_ s_object, USER_OBJECT_ s_uri); 

  USER_OBJECT_
S_gtk_file_chooser_select_uri(USER_OBJECT_ s_object, USER_OBJECT_ s_uri); 

  USER_OBJECT_
S_gtk_file_chooser_unselect_uri(USER_OBJECT_ s_object, USER_OBJECT_ s_uri); 

  USER_OBJECT_
S_gtk_file_chooser_get_uris(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_file_chooser_set_current_folder_uri(USER_OBJECT_ s_object, USER_OBJECT_ s_uri); 

  USER_OBJECT_
S_gtk_file_chooser_get_current_folder_uri(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_file_chooser_set_preview_widget(USER_OBJECT_ s_object, USER_OBJECT_ s_preview_widget); 

  USER_OBJECT_
S_gtk_file_chooser_get_preview_widget(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_file_chooser_set_preview_widget_active(USER_OBJECT_ s_object, USER_OBJECT_ s_active); 

  USER_OBJECT_
S_gtk_file_chooser_get_preview_widget_active(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_file_chooser_set_use_preview_label(USER_OBJECT_ s_object, USER_OBJECT_ s_use_label); 

  USER_OBJECT_
S_gtk_file_chooser_get_use_preview_label(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_file_chooser_get_preview_filename(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_file_chooser_get_preview_uri(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_file_chooser_set_extra_widget(USER_OBJECT_ s_object, USER_OBJECT_ s_extra_widget); 

  USER_OBJECT_
S_gtk_file_chooser_get_extra_widget(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_file_chooser_add_filter(USER_OBJECT_ s_object, USER_OBJECT_ s_filter); 

  USER_OBJECT_
S_gtk_file_chooser_remove_filter(USER_OBJECT_ s_object, USER_OBJECT_ s_filter); 

  USER_OBJECT_
S_gtk_file_chooser_list_filters(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_file_chooser_set_filter(USER_OBJECT_ s_object, USER_OBJECT_ s_filter); 

  USER_OBJECT_
S_gtk_file_chooser_get_filter(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_file_chooser_add_shortcut_folder(USER_OBJECT_ s_object, USER_OBJECT_ s_folder); 

  USER_OBJECT_
S_gtk_file_chooser_remove_shortcut_folder(USER_OBJECT_ s_object, USER_OBJECT_ s_folder); 

  USER_OBJECT_
S_gtk_file_chooser_list_shortcut_folders(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_file_chooser_add_shortcut_folder_uri(USER_OBJECT_ s_object, USER_OBJECT_ s_uri); 

  USER_OBJECT_
S_gtk_file_chooser_remove_shortcut_folder_uri(USER_OBJECT_ s_object, USER_OBJECT_ s_uri); 

  USER_OBJECT_
S_gtk_file_chooser_list_shortcut_folder_uris(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_file_chooser_button_get_type(void); 

  USER_OBJECT_
S_gtk_file_chooser_button_new(USER_OBJECT_ s_title, USER_OBJECT_ s_action); 

  USER_OBJECT_
S_gtk_file_chooser_button_new_with_backend(USER_OBJECT_ s_title, USER_OBJECT_ s_action, USER_OBJECT_ s_backend); 

  USER_OBJECT_
S_gtk_file_chooser_button_new_with_dialog(USER_OBJECT_ s_dialog); 

  USER_OBJECT_
S_gtk_file_chooser_button_get_title(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_file_chooser_button_set_title(USER_OBJECT_ s_object, USER_OBJECT_ s_title); 

  USER_OBJECT_
S_gtk_file_chooser_button_get_width_chars(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_file_chooser_button_set_width_chars(USER_OBJECT_ s_object, USER_OBJECT_ s_n_chars); 

  USER_OBJECT_
S_gtk_file_chooser_dialog_get_type(void); 

  USER_OBJECT_
S_gtk_file_chooser_widget_get_type(void); 

  USER_OBJECT_
S_gtk_file_chooser_widget_new(USER_OBJECT_ s_action); 

  USER_OBJECT_
S_gtk_file_chooser_widget_new_with_backend(USER_OBJECT_ s_action, USER_OBJECT_ s_backend); 

  USER_OBJECT_
S_gtk_file_filter_get_type(void); 

  USER_OBJECT_
S_gtk_file_filter_new(void); 

  USER_OBJECT_
S_gtk_file_filter_set_name(USER_OBJECT_ s_object, USER_OBJECT_ s_name); 

  USER_OBJECT_
S_gtk_file_filter_get_name(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_file_filter_add_mime_type(USER_OBJECT_ s_object, USER_OBJECT_ s_mime_type); 

  USER_OBJECT_
S_gtk_file_filter_add_pattern(USER_OBJECT_ s_object, USER_OBJECT_ s_pattern); 

  USER_OBJECT_
S_gtk_file_filter_add_pixbuf_formats(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_file_filter_add_custom(USER_OBJECT_ s_object, USER_OBJECT_ s_needed, USER_OBJECT_ s_func, USER_OBJECT_ s_data); 

  USER_OBJECT_
S_gtk_file_filter_get_needed(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_file_filter_filter(USER_OBJECT_ s_object, USER_OBJECT_ s_filter_info); 

  USER_OBJECT_
S_gtk_file_selection_get_type(void); 

  USER_OBJECT_
S_gtk_file_selection_new(USER_OBJECT_ s_title); 

  USER_OBJECT_
S_gtk_file_selection_set_filename(USER_OBJECT_ s_object, USER_OBJECT_ s_filename); 

  USER_OBJECT_
S_gtk_file_selection_get_filename(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_file_selection_complete(USER_OBJECT_ s_object, USER_OBJECT_ s_pattern); 

  USER_OBJECT_
S_gtk_file_selection_show_fileop_buttons(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_file_selection_hide_fileop_buttons(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_file_selection_get_selections(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_file_selection_set_select_multiple(USER_OBJECT_ s_object, USER_OBJECT_ s_select_multiple); 

  USER_OBJECT_
S_gtk_file_selection_get_select_multiple(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_fixed_get_type(void); 

  USER_OBJECT_
S_gtk_fixed_new(void); 

  USER_OBJECT_
S_gtk_fixed_put(USER_OBJECT_ s_object, USER_OBJECT_ s_widget, USER_OBJECT_ s_x, USER_OBJECT_ s_y); 

  USER_OBJECT_
S_gtk_fixed_move(USER_OBJECT_ s_object, USER_OBJECT_ s_widget, USER_OBJECT_ s_x, USER_OBJECT_ s_y); 

  USER_OBJECT_
S_gtk_fixed_set_has_window(USER_OBJECT_ s_object, USER_OBJECT_ s_has_window); 

  USER_OBJECT_
S_gtk_fixed_get_has_window(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_font_button_get_type(void); 

  USER_OBJECT_
S_gtk_font_button_new(void); 

  USER_OBJECT_
S_gtk_font_button_new_with_font(USER_OBJECT_ s_fontname); 

  USER_OBJECT_
S_gtk_font_button_get_title(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_font_button_set_title(USER_OBJECT_ s_object, USER_OBJECT_ s_title); 

  USER_OBJECT_
S_gtk_font_button_get_use_font(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_font_button_set_use_font(USER_OBJECT_ s_object, USER_OBJECT_ s_use_font); 

  USER_OBJECT_
S_gtk_font_button_get_use_size(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_font_button_set_use_size(USER_OBJECT_ s_object, USER_OBJECT_ s_use_size); 

  USER_OBJECT_
S_gtk_font_button_get_font_name(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_font_button_set_font_name(USER_OBJECT_ s_object, USER_OBJECT_ s_fontname); 

  USER_OBJECT_
S_gtk_font_button_get_show_style(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_font_button_set_show_style(USER_OBJECT_ s_object, USER_OBJECT_ s_show_style); 

  USER_OBJECT_
S_gtk_font_button_get_show_size(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_font_button_set_show_size(USER_OBJECT_ s_object, USER_OBJECT_ s_show_size); 

  USER_OBJECT_
S_gtk_font_selection_get_type(void); 

  USER_OBJECT_
S_gtk_font_selection_new(void); 

  USER_OBJECT_
S_gtk_font_selection_get_font_name(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_font_selection_get_font(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_font_selection_set_font_name(USER_OBJECT_ s_object, USER_OBJECT_ s_fontname); 

  USER_OBJECT_
S_gtk_font_selection_get_preview_text(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_font_selection_set_preview_text(USER_OBJECT_ s_object, USER_OBJECT_ s_text); 

  USER_OBJECT_
S_gtk_font_selection_dialog_get_type(void); 

  USER_OBJECT_
S_gtk_font_selection_dialog_new(USER_OBJECT_ s_title); 

  USER_OBJECT_
S_gtk_font_selection_dialog_get_font_name(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_font_selection_dialog_get_font(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_font_selection_dialog_set_font_name(USER_OBJECT_ s_object, USER_OBJECT_ s_fontname); 

  USER_OBJECT_
S_gtk_font_selection_dialog_get_preview_text(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_font_selection_dialog_set_preview_text(USER_OBJECT_ s_object, USER_OBJECT_ s_text); 

  USER_OBJECT_
S_gtk_frame_get_type(void); 

  USER_OBJECT_
S_gtk_frame_new(USER_OBJECT_ s_label); 

  USER_OBJECT_
S_gtk_frame_set_label(USER_OBJECT_ s_object, USER_OBJECT_ s_label); 

  USER_OBJECT_
S_gtk_frame_get_label(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_frame_set_label_widget(USER_OBJECT_ s_object, USER_OBJECT_ s_label_widget); 

  USER_OBJECT_
S_gtk_frame_get_label_widget(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_frame_set_label_align(USER_OBJECT_ s_object, USER_OBJECT_ s_xalign, USER_OBJECT_ s_yalign); 

  USER_OBJECT_
S_gtk_frame_get_label_align(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_frame_set_shadow_type(USER_OBJECT_ s_object, USER_OBJECT_ s_type); 

  USER_OBJECT_
S_gtk_frame_get_shadow_type(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_gamma_curve_get_type(void); 

  USER_OBJECT_
S_gtk_gamma_curve_new(void); 

  USER_OBJECT_
S_gtk_gc_release(USER_OBJECT_ s_gc); 

  USER_OBJECT_
S_gtk_handle_box_get_type(void); 

  USER_OBJECT_
S_gtk_handle_box_new(void); 

  USER_OBJECT_
S_gtk_handle_box_set_shadow_type(USER_OBJECT_ s_object, USER_OBJECT_ s_type); 

  USER_OBJECT_
S_gtk_handle_box_get_shadow_type(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_handle_box_set_handle_position(USER_OBJECT_ s_object, USER_OBJECT_ s_position); 

  USER_OBJECT_
S_gtk_handle_box_get_handle_position(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_handle_box_set_snap_edge(USER_OBJECT_ s_object, USER_OBJECT_ s_edge); 

  USER_OBJECT_
S_gtk_handle_box_get_snap_edge(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_hbutton_box_get_type(void); 

  USER_OBJECT_
S_gtk_hbutton_box_new(void); 

  USER_OBJECT_
S_gtk_hbutton_box_get_spacing_default(void); 

  USER_OBJECT_
S_gtk_hbutton_box_get_layout_default(void); 

  USER_OBJECT_
S_gtk_hbutton_box_set_spacing_default(USER_OBJECT_ s_spacing); 

  USER_OBJECT_
S_gtk_hbutton_box_set_layout_default(USER_OBJECT_ s_layout); 

  USER_OBJECT_
S_gtk_hbox_get_type(void); 

  USER_OBJECT_
S_gtk_hbox_new(USER_OBJECT_ s_homogeneous, USER_OBJECT_ s_spacing); 

  USER_OBJECT_
S_gtk_hpaned_get_type(void); 

  USER_OBJECT_
S_gtk_hpaned_new(void); 

  USER_OBJECT_
S_gtk_hruler_get_type(void); 

  USER_OBJECT_
S_gtk_hruler_new(void); 

  USER_OBJECT_
S_gtk_hscale_get_type(void); 

  USER_OBJECT_
S_gtk_hscale_new(USER_OBJECT_ s_adjustment); 

  USER_OBJECT_
S_gtk_hscale_new_with_range(USER_OBJECT_ s_min, USER_OBJECT_ s_max, USER_OBJECT_ s_step); 

  USER_OBJECT_
S_gtk_hscrollbar_get_type(void); 

  USER_OBJECT_
S_gtk_hscrollbar_new(USER_OBJECT_ s_adjustment); 

  USER_OBJECT_
S_gtk_hseparator_get_type(void); 

  USER_OBJECT_
S_gtk_hseparator_new(void); 

  USER_OBJECT_
S_gtk_icon_factory_get_type(void); 

  USER_OBJECT_
S_gtk_icon_factory_new(void); 

  USER_OBJECT_
S_gtk_icon_factory_add(USER_OBJECT_ s_object, USER_OBJECT_ s_stock_id, USER_OBJECT_ s_icon_set); 

  USER_OBJECT_
S_gtk_icon_factory_lookup(USER_OBJECT_ s_object, USER_OBJECT_ s_stock_id); 

  USER_OBJECT_
S_gtk_icon_factory_add_default(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_icon_factory_remove_default(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_icon_factory_lookup_default(USER_OBJECT_ s_stock_id); 

  USER_OBJECT_
S_gtk_icon_size_lookup(USER_OBJECT_ s_size); 

  USER_OBJECT_
S_gtk_icon_size_lookup_for_settings(USER_OBJECT_ s_settings, USER_OBJECT_ s_size); 

  USER_OBJECT_
S_gtk_icon_size_register(USER_OBJECT_ s_name, USER_OBJECT_ s_width, USER_OBJECT_ s_height); 

  USER_OBJECT_
S_gtk_icon_size_register_alias(USER_OBJECT_ s_alias, USER_OBJECT_ s_target); 

  USER_OBJECT_
S_gtk_icon_size_from_name(USER_OBJECT_ s_name); 

  USER_OBJECT_
S_gtk_icon_size_get_name(USER_OBJECT_ s_size); 

  USER_OBJECT_
S_gtk_icon_set_get_type(void); 

  USER_OBJECT_
S_gtk_icon_set_new(void); 

  USER_OBJECT_
S_gtk_icon_set_new_from_pixbuf(USER_OBJECT_ s_pixbuf); 

  USER_OBJECT_
S_gtk_icon_set_ref(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_icon_set_unref(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_icon_set_copy(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_icon_set_render_icon(USER_OBJECT_ s_object, USER_OBJECT_ s_style, USER_OBJECT_ s_direction, USER_OBJECT_ s_state, USER_OBJECT_ s_size, USER_OBJECT_ s_widget, USER_OBJECT_ s_detail); 

  USER_OBJECT_
S_gtk_icon_set_add_source(USER_OBJECT_ s_object, USER_OBJECT_ s_source); 

  USER_OBJECT_
S_gtk_icon_set_get_sizes(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_icon_source_get_type(void); 

  USER_OBJECT_
S_gtk_icon_source_new(void); 

  USER_OBJECT_
S_gtk_icon_source_copy(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_icon_source_free(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_icon_source_set_filename(USER_OBJECT_ s_object, USER_OBJECT_ s_filename); 

  USER_OBJECT_
S_gtk_icon_source_set_icon_name(USER_OBJECT_ s_object, USER_OBJECT_ s_icon_name); 

  USER_OBJECT_
S_gtk_icon_source_set_pixbuf(USER_OBJECT_ s_object, USER_OBJECT_ s_pixbuf); 

  USER_OBJECT_
S_gtk_icon_source_get_filename(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_icon_source_get_icon_name(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_icon_source_get_pixbuf(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_icon_source_set_direction_wildcarded(USER_OBJECT_ s_object, USER_OBJECT_ s_setting); 

  USER_OBJECT_
S_gtk_icon_source_set_state_wildcarded(USER_OBJECT_ s_object, USER_OBJECT_ s_setting); 

  USER_OBJECT_
S_gtk_icon_source_set_size_wildcarded(USER_OBJECT_ s_object, USER_OBJECT_ s_setting); 

  USER_OBJECT_
S_gtk_icon_source_get_size_wildcarded(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_icon_source_get_state_wildcarded(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_icon_source_get_direction_wildcarded(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_icon_source_set_direction(USER_OBJECT_ s_object, USER_OBJECT_ s_direction); 

  USER_OBJECT_
S_gtk_icon_source_set_state(USER_OBJECT_ s_object, USER_OBJECT_ s_state); 

  USER_OBJECT_
S_gtk_icon_source_set_size(USER_OBJECT_ s_object, USER_OBJECT_ s_size); 

  USER_OBJECT_
S_gtk_icon_source_get_direction(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_icon_source_get_state(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_icon_source_get_size(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_icon_theme_error_quark(void); 

  USER_OBJECT_
S_gtk_icon_theme_get_type(void); 

  USER_OBJECT_
S_gtk_icon_theme_new(void); 

  USER_OBJECT_
S_gtk_icon_theme_get_default(void); 

  USER_OBJECT_
S_gtk_icon_theme_get_for_screen(USER_OBJECT_ s_screen); 

  USER_OBJECT_
S_gtk_icon_theme_set_screen(USER_OBJECT_ s_object, USER_OBJECT_ s_screen); 

  USER_OBJECT_
S_gtk_icon_theme_get_search_path(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_icon_theme_append_search_path(USER_OBJECT_ s_object, USER_OBJECT_ s_path); 

  USER_OBJECT_
S_gtk_icon_theme_prepend_search_path(USER_OBJECT_ s_object, USER_OBJECT_ s_path); 

  USER_OBJECT_
S_gtk_icon_theme_set_custom_theme(USER_OBJECT_ s_object, USER_OBJECT_ s_theme_name); 

  USER_OBJECT_
S_gtk_icon_theme_has_icon(USER_OBJECT_ s_object, USER_OBJECT_ s_icon_name); 

  USER_OBJECT_
S_gtk_icon_theme_lookup_icon(USER_OBJECT_ s_object, USER_OBJECT_ s_icon_name, USER_OBJECT_ s_size, USER_OBJECT_ s_flags); 

  USER_OBJECT_
S_gtk_icon_theme_load_icon(USER_OBJECT_ s_object, USER_OBJECT_ s_icon_name, USER_OBJECT_ s_size, USER_OBJECT_ s_flags); 

  USER_OBJECT_
S_gtk_icon_theme_list_icons(USER_OBJECT_ s_object, USER_OBJECT_ s_context); 

  USER_OBJECT_
S_gtk_icon_theme_get_example_icon_name(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_icon_theme_rescan_if_needed(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_icon_theme_add_builtin_icon(USER_OBJECT_ s_icon_name, USER_OBJECT_ s_size, USER_OBJECT_ s_pixbuf); 

  USER_OBJECT_
S_gtk_icon_info_get_type(void); 

  USER_OBJECT_
S_gtk_icon_info_copy(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_icon_info_free(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_icon_info_get_base_size(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_icon_info_get_filename(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_icon_info_get_builtin_pixbuf(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_icon_info_load_icon(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_icon_info_set_raw_coordinates(USER_OBJECT_ s_object, USER_OBJECT_ s_raw_coordinates); 

  USER_OBJECT_
S_gtk_icon_info_get_embedded_rect(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_icon_info_get_attach_points(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_icon_info_get_display_name(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_icon_theme_get_icon_sizes(USER_OBJECT_ s_object, USER_OBJECT_ s_icon_name); 

  USER_OBJECT_
S_gtk_icon_view_get_type(void); 

  USER_OBJECT_
S_gtk_icon_view_new(void); 

  USER_OBJECT_
S_gtk_icon_view_new_with_model(USER_OBJECT_ s_model); 

  USER_OBJECT_
S_gtk_icon_view_set_model(USER_OBJECT_ s_object, USER_OBJECT_ s_model); 

  USER_OBJECT_
S_gtk_icon_view_get_model(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_icon_view_set_text_column(USER_OBJECT_ s_object, USER_OBJECT_ s_column); 

  USER_OBJECT_
S_gtk_icon_view_get_text_column(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_icon_view_set_markup_column(USER_OBJECT_ s_object, USER_OBJECT_ s_column); 

  USER_OBJECT_
S_gtk_icon_view_get_markup_column(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_icon_view_set_pixbuf_column(USER_OBJECT_ s_object, USER_OBJECT_ s_column); 

  USER_OBJECT_
S_gtk_icon_view_get_pixbuf_column(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_icon_view_set_orientation(USER_OBJECT_ s_object, USER_OBJECT_ s_orientation); 

  USER_OBJECT_
S_gtk_icon_view_get_orientation(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_icon_view_set_columns(USER_OBJECT_ s_object, USER_OBJECT_ s_columns); 

  USER_OBJECT_
S_gtk_icon_view_get_columns(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_icon_view_set_item_width(USER_OBJECT_ s_object, USER_OBJECT_ s_item_width); 

  USER_OBJECT_
S_gtk_icon_view_get_item_width(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_icon_view_set_spacing(USER_OBJECT_ s_object, USER_OBJECT_ s_spacing); 

  USER_OBJECT_
S_gtk_icon_view_get_spacing(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_icon_view_set_row_spacing(USER_OBJECT_ s_object, USER_OBJECT_ s_row_spacing); 

  USER_OBJECT_
S_gtk_icon_view_get_row_spacing(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_icon_view_set_column_spacing(USER_OBJECT_ s_object, USER_OBJECT_ s_column_spacing); 

  USER_OBJECT_
S_gtk_icon_view_get_column_spacing(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_icon_view_set_margin(USER_OBJECT_ s_object, USER_OBJECT_ s_margin); 

  USER_OBJECT_
S_gtk_icon_view_get_margin(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_icon_view_get_path_at_pos(USER_OBJECT_ s_object, USER_OBJECT_ s_x, USER_OBJECT_ s_y); 

  USER_OBJECT_
S_gtk_icon_view_get_item_at_pos(USER_OBJECT_ s_object, USER_OBJECT_ s_x, USER_OBJECT_ s_y); 

  USER_OBJECT_
S_gtk_icon_view_get_visible_range(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_icon_view_selected_foreach(USER_OBJECT_ s_object, USER_OBJECT_ s_func, USER_OBJECT_ s_data); 

  USER_OBJECT_
S_gtk_icon_view_set_selection_mode(USER_OBJECT_ s_object, USER_OBJECT_ s_mode); 

  USER_OBJECT_
S_gtk_icon_view_get_selection_mode(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_icon_view_select_path(USER_OBJECT_ s_object, USER_OBJECT_ s_path); 

  USER_OBJECT_
S_gtk_icon_view_unselect_path(USER_OBJECT_ s_object, USER_OBJECT_ s_path); 

  USER_OBJECT_
S_gtk_icon_view_path_is_selected(USER_OBJECT_ s_object, USER_OBJECT_ s_path); 

  USER_OBJECT_
S_gtk_icon_view_get_selected_items(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_icon_view_select_all(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_icon_view_unselect_all(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_icon_view_item_activated(USER_OBJECT_ s_object, USER_OBJECT_ s_path); 

  USER_OBJECT_
S_gtk_icon_view_set_cursor(USER_OBJECT_ s_object, USER_OBJECT_ s_path, USER_OBJECT_ s_cell, USER_OBJECT_ s_start_editing); 

  USER_OBJECT_
S_gtk_icon_view_get_cursor(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_icon_view_scroll_to_path(USER_OBJECT_ s_object, USER_OBJECT_ s_path, USER_OBJECT_ s_use_align, USER_OBJECT_ s_row_align, USER_OBJECT_ s_col_align); 

  USER_OBJECT_
S_gtk_icon_view_enable_model_drag_source(USER_OBJECT_ s_object, USER_OBJECT_ s_start_button_mask, USER_OBJECT_ s_targets, USER_OBJECT_ s_actions); 

  USER_OBJECT_
S_gtk_icon_view_enable_model_drag_dest(USER_OBJECT_ s_object, USER_OBJECT_ s_targets, USER_OBJECT_ s_actions); 

  USER_OBJECT_
S_gtk_icon_view_unset_model_drag_source(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_icon_view_unset_model_drag_dest(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_icon_view_set_reorderable(USER_OBJECT_ s_object, USER_OBJECT_ s_reorderable); 

  USER_OBJECT_
S_gtk_icon_view_get_reorderable(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_icon_view_set_drag_dest_item(USER_OBJECT_ s_object, USER_OBJECT_ s_path, USER_OBJECT_ s_pos); 

  USER_OBJECT_
S_gtk_icon_view_get_drag_dest_item(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_icon_view_get_dest_item_at_pos(USER_OBJECT_ s_object, USER_OBJECT_ s_drag_x, USER_OBJECT_ s_drag_y); 

  USER_OBJECT_
S_gtk_icon_view_create_drag_icon(USER_OBJECT_ s_object, USER_OBJECT_ s_path); 

  USER_OBJECT_
S_gtk_image_get_type(void); 

  USER_OBJECT_
S_gtk_image_new(void); 

  USER_OBJECT_
S_gtk_image_new_from_pixmap(USER_OBJECT_ s_pixmap, USER_OBJECT_ s_mask); 

  USER_OBJECT_
S_gtk_image_new_from_image(USER_OBJECT_ s_image, USER_OBJECT_ s_mask); 

  USER_OBJECT_
S_gtk_image_new_from_file(USER_OBJECT_ s_filename); 

  USER_OBJECT_
S_gtk_image_new_from_pixbuf(USER_OBJECT_ s_pixbuf); 

  USER_OBJECT_
S_gtk_image_new_from_stock(USER_OBJECT_ s_stock_id, USER_OBJECT_ s_size); 

  USER_OBJECT_
S_gtk_image_new_from_icon_set(USER_OBJECT_ s_icon_set, USER_OBJECT_ s_size); 

  USER_OBJECT_
S_gtk_image_new_from_animation(USER_OBJECT_ s_animation); 

  USER_OBJECT_
S_gtk_image_clear(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_image_set_from_pixmap(USER_OBJECT_ s_object, USER_OBJECT_ s_pixmap, USER_OBJECT_ s_mask); 

  USER_OBJECT_
S_gtk_image_set_from_image(USER_OBJECT_ s_object, USER_OBJECT_ s_gdk_image, USER_OBJECT_ s_mask); 

  USER_OBJECT_
S_gtk_image_set_from_file(USER_OBJECT_ s_object, USER_OBJECT_ s_filename); 

  USER_OBJECT_
S_gtk_image_set_from_pixbuf(USER_OBJECT_ s_object, USER_OBJECT_ s_pixbuf); 

  USER_OBJECT_
S_gtk_image_set_from_stock(USER_OBJECT_ s_object, USER_OBJECT_ s_stock_id, USER_OBJECT_ s_size); 

  USER_OBJECT_
S_gtk_image_set_from_icon_set(USER_OBJECT_ s_object, USER_OBJECT_ s_icon_set, USER_OBJECT_ s_size); 

  USER_OBJECT_
S_gtk_image_set_from_animation(USER_OBJECT_ s_object, USER_OBJECT_ s_animation); 

  USER_OBJECT_
S_gtk_image_get_storage_type(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_image_get_pixmap(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_image_get_image(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_image_get_pixbuf(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_image_get_stock(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_image_get_icon_set(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_image_get_animation(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_image_set(USER_OBJECT_ s_object, USER_OBJECT_ s_val, USER_OBJECT_ s_mask); 

  USER_OBJECT_
S_gtk_image_get(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_image_new_from_icon_name(USER_OBJECT_ s_icon_name, USER_OBJECT_ s_size); 

  USER_OBJECT_
S_gtk_image_set_from_icon_name(USER_OBJECT_ s_object, USER_OBJECT_ s_icon_name, USER_OBJECT_ s_size); 

  USER_OBJECT_
S_gtk_image_set_pixel_size(USER_OBJECT_ s_object, USER_OBJECT_ s_pixel_size); 

  USER_OBJECT_
S_gtk_image_get_icon_name(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_image_get_pixel_size(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_image_menu_item_get_type(void); 

  USER_OBJECT_
S_gtk_image_menu_item_new(void); 

  USER_OBJECT_
S_gtk_image_menu_item_new_with_label(USER_OBJECT_ s_label); 

  USER_OBJECT_
S_gtk_image_menu_item_new_with_mnemonic(USER_OBJECT_ s_label); 

  USER_OBJECT_
S_gtk_image_menu_item_new_from_stock(USER_OBJECT_ s_stock_id, USER_OBJECT_ s_accel_group); 

  USER_OBJECT_
S_gtk_image_menu_item_set_image(USER_OBJECT_ s_object, USER_OBJECT_ s_image); 

  USER_OBJECT_
S_gtk_image_menu_item_get_image(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_im_context_get_type(void); 

  USER_OBJECT_
S_gtk_im_context_set_client_window(USER_OBJECT_ s_object, USER_OBJECT_ s_window); 

  USER_OBJECT_
S_gtk_im_context_get_preedit_string(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_im_context_filter_keypress(USER_OBJECT_ s_object, USER_OBJECT_ s_event); 

  USER_OBJECT_
S_gtk_im_context_focus_in(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_im_context_focus_out(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_im_context_reset(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_im_context_set_cursor_location(USER_OBJECT_ s_object, USER_OBJECT_ s_area); 

  USER_OBJECT_
S_gtk_im_context_set_use_preedit(USER_OBJECT_ s_object, USER_OBJECT_ s_use_preedit); 

  USER_OBJECT_
S_gtk_im_context_set_surrounding(USER_OBJECT_ s_object, USER_OBJECT_ s_text, USER_OBJECT_ s_len, USER_OBJECT_ s_cursor_index); 

  USER_OBJECT_
S_gtk_im_context_get_surrounding(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_im_context_delete_surrounding(USER_OBJECT_ s_object, USER_OBJECT_ s_offset, USER_OBJECT_ s_n_chars); 

  USER_OBJECT_
S_gtk_im_context_simple_get_type(void); 

  USER_OBJECT_
S_gtk_im_context_simple_new(void); 

  USER_OBJECT_
S_gtk_im_multicontext_get_type(void); 

  USER_OBJECT_
S_gtk_im_multicontext_new(void); 

  USER_OBJECT_
S_gtk_im_multicontext_append_menuitems(USER_OBJECT_ s_object, USER_OBJECT_ s_menushell); 

  USER_OBJECT_
S_gtk_input_dialog_get_type(void); 

  USER_OBJECT_
S_gtk_input_dialog_new(void); 

  USER_OBJECT_
S_gtk_invisible_get_type(void); 

  USER_OBJECT_
S_gtk_invisible_new(void); 

  USER_OBJECT_
S_gtk_invisible_new_for_screen(USER_OBJECT_ s_screen); 

  USER_OBJECT_
S_gtk_invisible_set_screen(USER_OBJECT_ s_object, USER_OBJECT_ s_screen); 

  USER_OBJECT_
S_gtk_invisible_get_screen(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_item_get_type(void); 

  USER_OBJECT_
S_gtk_item_select(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_item_deselect(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_item_toggle(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_item_factory_get_type(void); 

  USER_OBJECT_
S_gtk_item_factory_new(USER_OBJECT_ s_container_type, USER_OBJECT_ s_path, USER_OBJECT_ s_accel_group); 

  USER_OBJECT_
S_gtk_item_factory_construct(USER_OBJECT_ s_object, USER_OBJECT_ s_container_type, USER_OBJECT_ s_path, USER_OBJECT_ s_accel_group); 

  USER_OBJECT_
S_gtk_item_factory_add_foreign(USER_OBJECT_ s_accel_widget, USER_OBJECT_ s_full_path, USER_OBJECT_ s_accel_group, USER_OBJECT_ s_keyval, USER_OBJECT_ s_modifiers); 

  USER_OBJECT_
S_gtk_item_factory_from_widget(USER_OBJECT_ s_widget); 

  USER_OBJECT_
S_gtk_item_factory_path_from_widget(USER_OBJECT_ s_widget); 

  USER_OBJECT_
S_gtk_item_factory_get_item(USER_OBJECT_ s_object, USER_OBJECT_ s_path); 

  USER_OBJECT_
S_gtk_item_factory_get_widget(USER_OBJECT_ s_object, USER_OBJECT_ s_path); 

  USER_OBJECT_
S_gtk_item_factory_get_widget_by_action(USER_OBJECT_ s_object, USER_OBJECT_ s_action); 

  USER_OBJECT_
S_gtk_item_factory_get_item_by_action(USER_OBJECT_ s_object, USER_OBJECT_ s_action); 

  USER_OBJECT_
S_gtk_item_factory_delete_item(USER_OBJECT_ s_object, USER_OBJECT_ s_path); 

  USER_OBJECT_
S_gtk_item_factory_delete_entry(USER_OBJECT_ s_object, USER_OBJECT_ s_entry); 

  USER_OBJECT_
S_gtk_item_factory_delete_entries(USER_OBJECT_ s_object, USER_OBJECT_ s_entries); 

  USER_OBJECT_
S_gtk_item_factory_popup(USER_OBJECT_ s_object, USER_OBJECT_ s_x, USER_OBJECT_ s_y, USER_OBJECT_ s_mouse_button, USER_OBJECT_ s_time); 

  USER_OBJECT_
S_gtk_item_factory_popup_with_data(USER_OBJECT_ s_object, USER_OBJECT_ s_popup_data, USER_OBJECT_ s_x, USER_OBJECT_ s_y, USER_OBJECT_ s_mouse_button, USER_OBJECT_ s_time); 

  USER_OBJECT_
S_gtk_item_factory_popup_data(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_item_factory_popup_data_from_widget(USER_OBJECT_ s_widget); 

  USER_OBJECT_
S_gtk_item_factory_set_translate_func(USER_OBJECT_ s_object, USER_OBJECT_ s_func, USER_OBJECT_ s_data); 

  USER_OBJECT_
S_gtk_item_factory_from_path(USER_OBJECT_ s_path); 

  USER_OBJECT_
S_gtk_item_factories_path_delete(USER_OBJECT_ s_ifactory_path, USER_OBJECT_ s_path); 

  USER_OBJECT_
S_gtk_label_get_type(void); 

  USER_OBJECT_
S_gtk_label_new(USER_OBJECT_ s_str); 

  USER_OBJECT_
S_gtk_label_set_text(USER_OBJECT_ s_object, USER_OBJECT_ s_str); 

  USER_OBJECT_
S_gtk_label_get_text(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_label_set_attributes(USER_OBJECT_ s_object, USER_OBJECT_ s_attrs); 

  USER_OBJECT_
S_gtk_label_get_attributes(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_label_set_label(USER_OBJECT_ s_object, USER_OBJECT_ s_str); 

  USER_OBJECT_
S_gtk_label_get_label(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_label_set_markup(USER_OBJECT_ s_object, USER_OBJECT_ s_str); 

  USER_OBJECT_
S_gtk_label_set_use_markup(USER_OBJECT_ s_object, USER_OBJECT_ s_setting); 

  USER_OBJECT_
S_gtk_label_get_use_markup(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_label_set_use_underline(USER_OBJECT_ s_object, USER_OBJECT_ s_setting); 

  USER_OBJECT_
S_gtk_label_get_use_underline(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_label_set_markup_with_mnemonic(USER_OBJECT_ s_object, USER_OBJECT_ s_str); 

  USER_OBJECT_
S_gtk_label_get_mnemonic_keyval(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_label_set_mnemonic_widget(USER_OBJECT_ s_object, USER_OBJECT_ s_widget); 

  USER_OBJECT_
S_gtk_label_get_mnemonic_widget(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_label_set_text_with_mnemonic(USER_OBJECT_ s_object, USER_OBJECT_ s_str); 

  USER_OBJECT_
S_gtk_label_set_justify(USER_OBJECT_ s_object, USER_OBJECT_ s_jtype); 

  USER_OBJECT_
S_gtk_label_get_justify(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_label_set_pattern(USER_OBJECT_ s_object, USER_OBJECT_ s_pattern); 

  USER_OBJECT_
S_gtk_label_set_line_wrap(USER_OBJECT_ s_object, USER_OBJECT_ s_wrap); 

  USER_OBJECT_
S_gtk_label_get_line_wrap(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_label_set_selectable(USER_OBJECT_ s_object, USER_OBJECT_ s_setting); 

  USER_OBJECT_
S_gtk_label_get_selectable(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_label_select_region(USER_OBJECT_ s_object, USER_OBJECT_ s_start_offset, USER_OBJECT_ s_end_offset); 

  USER_OBJECT_
S_gtk_label_get_selection_bounds(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_label_get_layout(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_label_get_layout_offsets(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_label_set(USER_OBJECT_ s_object, USER_OBJECT_ s_str); 

  USER_OBJECT_
S_gtk_label_get(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_label_parse_uline(USER_OBJECT_ s_object, USER_OBJECT_ s_string); 

  USER_OBJECT_
S_gtk_label_set_ellipsize(USER_OBJECT_ s_object, USER_OBJECT_ s_mode); 

  USER_OBJECT_
S_gtk_label_get_ellipsize(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_label_set_angle(USER_OBJECT_ s_object, USER_OBJECT_ s_angle); 

  USER_OBJECT_
S_gtk_label_get_angle(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_label_set_width_chars(USER_OBJECT_ s_object, USER_OBJECT_ s_n_chars); 

  USER_OBJECT_
S_gtk_label_get_width_chars(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_label_set_max_width_chars(USER_OBJECT_ s_object, USER_OBJECT_ s_n_chars); 

  USER_OBJECT_
S_gtk_label_get_max_width_chars(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_label_set_single_line_mode(USER_OBJECT_ s_object, USER_OBJECT_ s_single_line_mode); 

  USER_OBJECT_
S_gtk_label_get_single_line_mode(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_layout_get_type(void); 

  USER_OBJECT_
S_gtk_layout_new(USER_OBJECT_ s_hadjustment, USER_OBJECT_ s_vadjustment); 

  USER_OBJECT_
S_gtk_layout_put(USER_OBJECT_ s_object, USER_OBJECT_ s_child_widget, USER_OBJECT_ s_x, USER_OBJECT_ s_y); 

  USER_OBJECT_
S_gtk_layout_move(USER_OBJECT_ s_object, USER_OBJECT_ s_child_widget, USER_OBJECT_ s_x, USER_OBJECT_ s_y); 

  USER_OBJECT_
S_gtk_layout_set_size(USER_OBJECT_ s_object, USER_OBJECT_ s_width, USER_OBJECT_ s_height); 

  USER_OBJECT_
S_gtk_layout_get_size(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_layout_get_hadjustment(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_layout_get_vadjustment(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_layout_set_hadjustment(USER_OBJECT_ s_object, USER_OBJECT_ s_adjustment); 

  USER_OBJECT_
S_gtk_layout_set_vadjustment(USER_OBJECT_ s_object, USER_OBJECT_ s_adjustment); 

  USER_OBJECT_
S_gtk_layout_freeze(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_layout_thaw(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_list_get_type(void); 

  USER_OBJECT_
S_gtk_list_new(void); 

  USER_OBJECT_
S_gtk_list_insert_items(USER_OBJECT_ s_object, USER_OBJECT_ s_items, USER_OBJECT_ s_position); 

  USER_OBJECT_
S_gtk_list_append_items(USER_OBJECT_ s_object, USER_OBJECT_ s_items); 

  USER_OBJECT_
S_gtk_list_prepend_items(USER_OBJECT_ s_object, USER_OBJECT_ s_items); 

  USER_OBJECT_
S_gtk_list_remove_items(USER_OBJECT_ s_object, USER_OBJECT_ s_items); 

  USER_OBJECT_
S_gtk_list_remove_items_no_unref(USER_OBJECT_ s_object, USER_OBJECT_ s_items); 

  USER_OBJECT_
S_gtk_list_clear_items(USER_OBJECT_ s_object, USER_OBJECT_ s_start, USER_OBJECT_ s_end); 

  USER_OBJECT_
S_gtk_list_select_item(USER_OBJECT_ s_object, USER_OBJECT_ s_item); 

  USER_OBJECT_
S_gtk_list_unselect_item(USER_OBJECT_ s_object, USER_OBJECT_ s_item); 

  USER_OBJECT_
S_gtk_list_select_child(USER_OBJECT_ s_object, USER_OBJECT_ s_child); 

  USER_OBJECT_
S_gtk_list_unselect_child(USER_OBJECT_ s_object, USER_OBJECT_ s_child); 

  USER_OBJECT_
S_gtk_list_child_position(USER_OBJECT_ s_object, USER_OBJECT_ s_child); 

  USER_OBJECT_
S_gtk_list_set_selection_mode(USER_OBJECT_ s_object, USER_OBJECT_ s_mode); 

  USER_OBJECT_
S_gtk_list_extend_selection(USER_OBJECT_ s_object, USER_OBJECT_ s_scroll_type, USER_OBJECT_ s_position, USER_OBJECT_ s_auto_start_selection); 

  USER_OBJECT_
S_gtk_list_start_selection(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_list_end_selection(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_list_select_all(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_list_unselect_all(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_list_scroll_horizontal(USER_OBJECT_ s_object, USER_OBJECT_ s_scroll_type, USER_OBJECT_ s_position); 

  USER_OBJECT_
S_gtk_list_scroll_vertical(USER_OBJECT_ s_object, USER_OBJECT_ s_scroll_type, USER_OBJECT_ s_position); 

  USER_OBJECT_
S_gtk_list_toggle_add_mode(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_list_toggle_focus_row(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_list_toggle_row(USER_OBJECT_ s_object, USER_OBJECT_ s_item); 

  USER_OBJECT_
S_gtk_list_undo_selection(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_list_end_drag_selection(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_list_item_get_type(void); 

  USER_OBJECT_
S_gtk_list_item_new(void); 

  USER_OBJECT_
S_gtk_list_item_new_with_label(USER_OBJECT_ s_label); 

  USER_OBJECT_
S_gtk_list_item_select(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_list_item_deselect(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_list_store_get_type(void); 

  USER_OBJECT_
S_gtk_list_store_newv(USER_OBJECT_ s_value); 

  USER_OBJECT_
S_gtk_list_store_set_column_types(USER_OBJECT_ s_object, USER_OBJECT_ s_types); 

  USER_OBJECT_
S_gtk_list_store_remove(USER_OBJECT_ s_object, USER_OBJECT_ s_iter); 

  USER_OBJECT_
S_gtk_list_store_insert(USER_OBJECT_ s_object, USER_OBJECT_ s_position); 

  USER_OBJECT_
S_gtk_list_store_insert_before(USER_OBJECT_ s_object, USER_OBJECT_ s_sibling); 

  USER_OBJECT_
S_gtk_list_store_insert_after(USER_OBJECT_ s_object, USER_OBJECT_ s_sibling); 

  USER_OBJECT_
S_gtk_list_store_prepend(USER_OBJECT_ s_object, USER_OBJECT_ s_iter); 

  USER_OBJECT_
S_gtk_list_store_append(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_list_store_clear(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_list_store_iter_is_valid(USER_OBJECT_ s_object, USER_OBJECT_ s_iter); 

  USER_OBJECT_
S_gtk_list_store_reorder(USER_OBJECT_ s_object, USER_OBJECT_ s_new_order); 

  USER_OBJECT_
S_gtk_list_store_swap(USER_OBJECT_ s_object, USER_OBJECT_ s_a, USER_OBJECT_ s_b); 

  USER_OBJECT_
S_gtk_list_store_move_after(USER_OBJECT_ s_object, USER_OBJECT_ s_iter, USER_OBJECT_ s_position); 

  USER_OBJECT_
S_gtk_list_store_move_before(USER_OBJECT_ s_object, USER_OBJECT_ s_iter, USER_OBJECT_ s_position); 

  USER_OBJECT_
S_gtk_check_version(USER_OBJECT_ s_required_major, USER_OBJECT_ s_required_minor, USER_OBJECT_ s_required_micro); 

  USER_OBJECT_
S_gtk_exit(USER_OBJECT_ s_error_code); 

  USER_OBJECT_
S_gtk_disable_setlocale(void); 

  USER_OBJECT_
S_gtk_get_default_language(void); 

  USER_OBJECT_
S_gtk_events_pending(void); 

  USER_OBJECT_
S_gtk_main_do_event(USER_OBJECT_ s_event); 

  USER_OBJECT_
S_gtk_main(void); 

  USER_OBJECT_
S_gtk_main_level(void); 

  USER_OBJECT_
S_gtk_main_quit(void); 

  USER_OBJECT_
S_gtk_main_iteration(void); 

  USER_OBJECT_
S_gtk_main_iteration_do(USER_OBJECT_ s_blocking); 

  USER_OBJECT_
S_gtk_true(void); 

  USER_OBJECT_
S_gtk_false(void); 

  USER_OBJECT_
S_gtk_grab_add(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_grab_get_current(void); 

  USER_OBJECT_
S_gtk_grab_remove(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_init_add(USER_OBJECT_ s_function, USER_OBJECT_ s_data); 

  USER_OBJECT_
S_gtk_quit_add_destroy(USER_OBJECT_ s_main_level, USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_quit_add(USER_OBJECT_ s_main_level, USER_OBJECT_ s_function, USER_OBJECT_ s_data); 

  USER_OBJECT_
S_gtk_quit_add_full(USER_OBJECT_ s_main_level, USER_OBJECT_ s_function, USER_OBJECT_ s_data); 

  USER_OBJECT_
S_gtk_quit_remove(USER_OBJECT_ s_quit_handler_id); 

  USER_OBJECT_
S_gtk_quit_remove_by_data(USER_OBJECT_ s_data); 

  USER_OBJECT_
S_gtk_timeout_add(USER_OBJECT_ s_interval, USER_OBJECT_ s_function, USER_OBJECT_ s_data); 

  USER_OBJECT_
S_gtk_timeout_add_full(USER_OBJECT_ s_interval, USER_OBJECT_ s_function, USER_OBJECT_ s_data); 

  USER_OBJECT_
S_gtk_timeout_remove(USER_OBJECT_ s_timeout_handler_id); 

  USER_OBJECT_
S_gtk_idle_add(USER_OBJECT_ s_function, USER_OBJECT_ s_data); 

  USER_OBJECT_
S_gtk_idle_add_priority(USER_OBJECT_ s_priority, USER_OBJECT_ s_function, USER_OBJECT_ s_data); 

  USER_OBJECT_
S_gtk_idle_add_full(USER_OBJECT_ s_priority, USER_OBJECT_ s_function, USER_OBJECT_ s_data); 

  USER_OBJECT_
S_gtk_idle_remove(USER_OBJECT_ s_idle_handler_id); 

  USER_OBJECT_
S_gtk_idle_remove_by_data(USER_OBJECT_ s_data); 

  USER_OBJECT_
S_gtk_input_remove(USER_OBJECT_ s_input_handler_id); 

  USER_OBJECT_
S_gtk_key_snooper_install(USER_OBJECT_ s_snooper, USER_OBJECT_ s_func_data); 

  USER_OBJECT_
S_gtk_key_snooper_remove(USER_OBJECT_ s_snooper_handler_id); 

  USER_OBJECT_
S_gtk_get_current_event(void); 

  USER_OBJECT_
S_gtk_get_current_event_time(void); 

  USER_OBJECT_
S_gtk_get_current_event_state(void); 

  USER_OBJECT_
S_gtk_get_event_widget(USER_OBJECT_ s_event); 

  USER_OBJECT_
S_gtk_propagate_event(USER_OBJECT_ s_object, USER_OBJECT_ s_event); 

  USER_OBJECT_
S_gtk_menu_get_type(void); 

  USER_OBJECT_
S_gtk_menu_new(void); 

  USER_OBJECT_
S_gtk_menu_popup(USER_OBJECT_ s_object, USER_OBJECT_ s_parent_menu_shell, USER_OBJECT_ s_parent_menu_item, USER_OBJECT_ s_func, USER_OBJECT_ s_data, USER_OBJECT_ s_button, USER_OBJECT_ s_activate_time); 

  USER_OBJECT_
S_gtk_menu_reposition(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_menu_popdown(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_menu_get_active(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_menu_set_active(USER_OBJECT_ s_object, USER_OBJECT_ s_index); 

  USER_OBJECT_
S_gtk_menu_set_accel_group(USER_OBJECT_ s_object, USER_OBJECT_ s_accel_group); 

  USER_OBJECT_
S_gtk_menu_get_accel_group(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_menu_set_accel_path(USER_OBJECT_ s_object, USER_OBJECT_ s_accel_path); 

  USER_OBJECT_
S_gtk_menu_detach(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_menu_get_attach_widget(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_menu_set_tearoff_state(USER_OBJECT_ s_object, USER_OBJECT_ s_torn_off); 

  USER_OBJECT_
S_gtk_menu_get_tearoff_state(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_menu_set_title(USER_OBJECT_ s_object, USER_OBJECT_ s_title); 

  USER_OBJECT_
S_gtk_menu_get_title(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_menu_reorder_child(USER_OBJECT_ s_object, USER_OBJECT_ s_child, USER_OBJECT_ s_position); 

  USER_OBJECT_
S_gtk_menu_set_screen(USER_OBJECT_ s_object, USER_OBJECT_ s_screen); 

  USER_OBJECT_
S_gtk_menu_attach(USER_OBJECT_ s_object, USER_OBJECT_ s_child, USER_OBJECT_ s_left_attach, USER_OBJECT_ s_right_attach, USER_OBJECT_ s_top_attach, USER_OBJECT_ s_bottom_attach); 

  USER_OBJECT_
S_gtk_menu_set_monitor(USER_OBJECT_ s_object, USER_OBJECT_ s_monitor_num); 

  USER_OBJECT_
S_gtk_menu_bar_get_type(void); 

  USER_OBJECT_
S_gtk_menu_bar_new(void); 

  USER_OBJECT_
S_gtk_menu_bar_get_pack_direction(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_menu_bar_set_pack_direction(USER_OBJECT_ s_object, USER_OBJECT_ s_pack_dir); 

  USER_OBJECT_
S_gtk_menu_bar_get_child_pack_direction(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_menu_bar_set_child_pack_direction(USER_OBJECT_ s_object, USER_OBJECT_ s_child_pack_dir); 

  USER_OBJECT_
S_gtk_menu_item_get_type(void); 

  USER_OBJECT_
S_gtk_menu_item_new(void); 

  USER_OBJECT_
S_gtk_menu_item_new_with_label(USER_OBJECT_ s_label); 

  USER_OBJECT_
S_gtk_menu_item_new_with_mnemonic(USER_OBJECT_ s_label); 

  USER_OBJECT_
S_gtk_menu_item_set_submenu(USER_OBJECT_ s_object, USER_OBJECT_ s_submenu); 

  USER_OBJECT_
S_gtk_menu_item_get_submenu(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_menu_item_remove_submenu(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_menu_item_select(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_menu_item_deselect(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_menu_item_activate(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_menu_item_toggle_size_request(USER_OBJECT_ s_object, USER_OBJECT_ s_requisition); 

  USER_OBJECT_
S_gtk_menu_item_toggle_size_allocate(USER_OBJECT_ s_object, USER_OBJECT_ s_allocation); 

  USER_OBJECT_
S_gtk_menu_item_set_right_justified(USER_OBJECT_ s_object, USER_OBJECT_ s_right_justified); 

  USER_OBJECT_
S_gtk_menu_item_get_right_justified(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_menu_item_set_accel_path(USER_OBJECT_ s_object, USER_OBJECT_ s_accel_path); 

  USER_OBJECT_
S_gtk_menu_item_right_justify(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_menu_shell_get_type(void); 

  USER_OBJECT_
S_gtk_menu_shell_append(USER_OBJECT_ s_object, USER_OBJECT_ s_child); 

  USER_OBJECT_
S_gtk_menu_shell_prepend(USER_OBJECT_ s_object, USER_OBJECT_ s_child); 

  USER_OBJECT_
S_gtk_menu_shell_insert(USER_OBJECT_ s_object, USER_OBJECT_ s_child, USER_OBJECT_ s_position); 

  USER_OBJECT_
S_gtk_menu_shell_deactivate(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_menu_shell_select_item(USER_OBJECT_ s_object, USER_OBJECT_ s_menu_item); 

  USER_OBJECT_
S_gtk_menu_shell_deselect(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_menu_shell_activate_item(USER_OBJECT_ s_object, USER_OBJECT_ s_menu_item, USER_OBJECT_ s_force_deactivate); 

  USER_OBJECT_
S_gtk_menu_shell_select_first(USER_OBJECT_ s_object, USER_OBJECT_ s_search_sensitive); 

  USER_OBJECT_
S_gtk_menu_shell_cancel(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_menu_shell_get_take_focus(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_menu_shell_set_take_focus(USER_OBJECT_ s_object, USER_OBJECT_ s_take_focus); 

  USER_OBJECT_
S_gtk_menu_tool_button_get_type(void); 

  USER_OBJECT_
S_gtk_menu_tool_button_new(USER_OBJECT_ s_icon_widget, USER_OBJECT_ s_label); 

  USER_OBJECT_
S_gtk_menu_tool_button_new_from_stock(USER_OBJECT_ s_stock_id); 

  USER_OBJECT_
S_gtk_menu_tool_button_set_menu(USER_OBJECT_ s_object, USER_OBJECT_ s_menu); 

  USER_OBJECT_
S_gtk_menu_tool_button_get_menu(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_menu_tool_button_set_arrow_tooltip(USER_OBJECT_ s_object, USER_OBJECT_ s_tooltips, USER_OBJECT_ s_tip_text, USER_OBJECT_ s_tip_private); 

  USER_OBJECT_
S_gtk_message_dialog_get_type(void); 

  USER_OBJECT_
S_gtk_message_dialog_set_markup(USER_OBJECT_ s_object, USER_OBJECT_ s_str); 

  USER_OBJECT_
S_gtk_misc_get_type(void); 

  USER_OBJECT_
S_gtk_misc_set_alignment(USER_OBJECT_ s_object, USER_OBJECT_ s_xalign, USER_OBJECT_ s_yalign); 

  USER_OBJECT_
S_gtk_misc_get_alignment(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_misc_set_padding(USER_OBJECT_ s_object, USER_OBJECT_ s_xpad, USER_OBJECT_ s_ypad); 

  USER_OBJECT_
S_gtk_misc_get_padding(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_notebook_get_type(void); 

  USER_OBJECT_
S_gtk_notebook_new(void); 

  USER_OBJECT_
S_gtk_notebook_append_page(USER_OBJECT_ s_object, USER_OBJECT_ s_child, USER_OBJECT_ s_tab_label); 

  USER_OBJECT_
S_gtk_notebook_append_page_menu(USER_OBJECT_ s_object, USER_OBJECT_ s_child, USER_OBJECT_ s_tab_label, USER_OBJECT_ s_menu_label); 

  USER_OBJECT_
S_gtk_notebook_prepend_page(USER_OBJECT_ s_object, USER_OBJECT_ s_child, USER_OBJECT_ s_tab_label); 

  USER_OBJECT_
S_gtk_notebook_prepend_page_menu(USER_OBJECT_ s_object, USER_OBJECT_ s_child, USER_OBJECT_ s_tab_label, USER_OBJECT_ s_menu_label); 

  USER_OBJECT_
S_gtk_notebook_insert_page(USER_OBJECT_ s_object, USER_OBJECT_ s_child, USER_OBJECT_ s_tab_label, USER_OBJECT_ s_position); 

  USER_OBJECT_
S_gtk_notebook_insert_page_menu(USER_OBJECT_ s_object, USER_OBJECT_ s_child, USER_OBJECT_ s_tab_label, USER_OBJECT_ s_menu_label, USER_OBJECT_ s_position); 

  USER_OBJECT_
S_gtk_notebook_remove_page(USER_OBJECT_ s_object, USER_OBJECT_ s_page_num); 

  USER_OBJECT_
S_gtk_notebook_get_current_page(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_notebook_get_nth_page(USER_OBJECT_ s_object, USER_OBJECT_ s_page_num); 

  USER_OBJECT_
S_gtk_notebook_get_n_pages(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_notebook_page_num(USER_OBJECT_ s_object, USER_OBJECT_ s_child); 

  USER_OBJECT_
S_gtk_notebook_set_current_page(USER_OBJECT_ s_object, USER_OBJECT_ s_page_num); 

  USER_OBJECT_
S_gtk_notebook_next_page(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_notebook_prev_page(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_notebook_set_show_border(USER_OBJECT_ s_object, USER_OBJECT_ s_show_border); 

  USER_OBJECT_
S_gtk_notebook_get_show_border(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_notebook_set_show_tabs(USER_OBJECT_ s_object, USER_OBJECT_ s_show_tabs); 

  USER_OBJECT_
S_gtk_notebook_get_show_tabs(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_notebook_set_tab_pos(USER_OBJECT_ s_object, USER_OBJECT_ s_pos); 

  USER_OBJECT_
S_gtk_notebook_get_tab_pos(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_notebook_set_homogeneous_tabs(USER_OBJECT_ s_object, USER_OBJECT_ s_homogeneous); 

  USER_OBJECT_
S_gtk_notebook_set_tab_border(USER_OBJECT_ s_object, USER_OBJECT_ s_border_width); 

  USER_OBJECT_
S_gtk_notebook_set_tab_hborder(USER_OBJECT_ s_object, USER_OBJECT_ s_tab_hborder); 

  USER_OBJECT_
S_gtk_notebook_set_tab_vborder(USER_OBJECT_ s_object, USER_OBJECT_ s_tab_vborder); 

  USER_OBJECT_
S_gtk_notebook_set_scrollable(USER_OBJECT_ s_object, USER_OBJECT_ s_scrollable); 

  USER_OBJECT_
S_gtk_notebook_get_scrollable(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_notebook_popup_enable(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_notebook_popup_disable(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_notebook_get_tab_label(USER_OBJECT_ s_object, USER_OBJECT_ s_child); 

  USER_OBJECT_
S_gtk_notebook_set_tab_label(USER_OBJECT_ s_object, USER_OBJECT_ s_child, USER_OBJECT_ s_tab_label); 

  USER_OBJECT_
S_gtk_notebook_set_tab_label_text(USER_OBJECT_ s_object, USER_OBJECT_ s_child, USER_OBJECT_ s_tab_text); 

  USER_OBJECT_
S_gtk_notebook_get_tab_label_text(USER_OBJECT_ s_object, USER_OBJECT_ s_child); 

  USER_OBJECT_
S_gtk_notebook_get_menu_label(USER_OBJECT_ s_object, USER_OBJECT_ s_child); 

  USER_OBJECT_
S_gtk_notebook_set_menu_label(USER_OBJECT_ s_object, USER_OBJECT_ s_child, USER_OBJECT_ s_menu_label); 

  USER_OBJECT_
S_gtk_notebook_set_menu_label_text(USER_OBJECT_ s_object, USER_OBJECT_ s_child, USER_OBJECT_ s_menu_text); 

  USER_OBJECT_
S_gtk_notebook_get_menu_label_text(USER_OBJECT_ s_object, USER_OBJECT_ s_child); 

  USER_OBJECT_
S_gtk_notebook_query_tab_label_packing(USER_OBJECT_ s_object, USER_OBJECT_ s_child); 

  USER_OBJECT_
S_gtk_notebook_set_tab_label_packing(USER_OBJECT_ s_object, USER_OBJECT_ s_child, USER_OBJECT_ s_expand, USER_OBJECT_ s_fill, USER_OBJECT_ s_pack_type); 

  USER_OBJECT_
S_gtk_notebook_reorder_child(USER_OBJECT_ s_object, USER_OBJECT_ s_child, USER_OBJECT_ s_position); 

  USER_OBJECT_
S_gtk_notebook_current_page(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_notebook_set_page(USER_OBJECT_ s_object, USER_OBJECT_ s_page_num); 

  USER_OBJECT_
S_gtk_object_get_type(void); 

  USER_OBJECT_
S_gtk_object_destroy(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_old_editable_get_type(void); 

  USER_OBJECT_
S_gtk_old_editable_claim_selection(USER_OBJECT_ s_object, USER_OBJECT_ s_claim, USER_OBJECT_ s_time); 

  USER_OBJECT_
S_gtk_old_editable_changed(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_option_menu_get_type(void); 

  USER_OBJECT_
S_gtk_option_menu_new(void); 

  USER_OBJECT_
S_gtk_option_menu_get_menu(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_option_menu_set_menu(USER_OBJECT_ s_object, USER_OBJECT_ s_menu); 

  USER_OBJECT_
S_gtk_option_menu_remove_menu(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_option_menu_get_history(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_option_menu_set_history(USER_OBJECT_ s_object, USER_OBJECT_ s_index); 

  USER_OBJECT_
S_gtk_paned_get_type(void); 

  USER_OBJECT_
S_gtk_paned_add1(USER_OBJECT_ s_object, USER_OBJECT_ s_child); 

  USER_OBJECT_
S_gtk_paned_add2(USER_OBJECT_ s_object, USER_OBJECT_ s_child); 

  USER_OBJECT_
S_gtk_paned_pack1(USER_OBJECT_ s_object, USER_OBJECT_ s_child, USER_OBJECT_ s_resize, USER_OBJECT_ s_shrink); 

  USER_OBJECT_
S_gtk_paned_pack2(USER_OBJECT_ s_object, USER_OBJECT_ s_child, USER_OBJECT_ s_resize, USER_OBJECT_ s_shrink); 

  USER_OBJECT_
S_gtk_paned_get_position(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_paned_set_position(USER_OBJECT_ s_object, USER_OBJECT_ s_position); 

  USER_OBJECT_
S_gtk_paned_get_child1(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_paned_get_child2(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_pixmap_get_type(void); 

  USER_OBJECT_
S_gtk_pixmap_new(USER_OBJECT_ s_pixmap, USER_OBJECT_ s_mask); 

  USER_OBJECT_
S_gtk_pixmap_set(USER_OBJECT_ s_object, USER_OBJECT_ s_val, USER_OBJECT_ s_mask); 

  USER_OBJECT_
S_gtk_pixmap_get(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_pixmap_set_build_insensitive(USER_OBJECT_ s_object, USER_OBJECT_ s_build); 

  USER_OBJECT_
S_gtk_plug_get_type(void); 

  USER_OBJECT_
S_gtk_plug_construct(USER_OBJECT_ s_object, USER_OBJECT_ s_socket_id); 

  USER_OBJECT_
S_gtk_plug_new(USER_OBJECT_ s_socket_id); 

  USER_OBJECT_
S_gtk_plug_construct_for_display(USER_OBJECT_ s_object, USER_OBJECT_ s_display, USER_OBJECT_ s_socket_id); 

  USER_OBJECT_
S_gtk_plug_new_for_display(USER_OBJECT_ s_display, USER_OBJECT_ s_socket_id); 

  USER_OBJECT_
S_gtk_plug_get_id(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_preview_get_type(void); 

  USER_OBJECT_
S_gtk_preview_uninit(void); 

  USER_OBJECT_
S_gtk_preview_new(USER_OBJECT_ s_type); 

  USER_OBJECT_
S_gtk_preview_size(USER_OBJECT_ s_object, USER_OBJECT_ s_width, USER_OBJECT_ s_height); 

  USER_OBJECT_
S_gtk_preview_put(USER_OBJECT_ s_object, USER_OBJECT_ s_window, USER_OBJECT_ s_gc, USER_OBJECT_ s_srcx, USER_OBJECT_ s_srcy, USER_OBJECT_ s_destx, USER_OBJECT_ s_desty, USER_OBJECT_ s_width, USER_OBJECT_ s_height); 

  USER_OBJECT_
S_gtk_preview_draw_row(USER_OBJECT_ s_object, USER_OBJECT_ s_data, USER_OBJECT_ s_y, USER_OBJECT_ s_w); 

  USER_OBJECT_
S_gtk_preview_set_expand(USER_OBJECT_ s_object, USER_OBJECT_ s_expand); 

  USER_OBJECT_
S_gtk_preview_set_gamma(USER_OBJECT_ s_gamma); 

  USER_OBJECT_
S_gtk_preview_set_color_cube(USER_OBJECT_ s_nred_shades, USER_OBJECT_ s_ngreen_shades, USER_OBJECT_ s_nblue_shades, USER_OBJECT_ s_ngray_shades); 

  USER_OBJECT_
S_gtk_preview_set_install_cmap(USER_OBJECT_ s_install_cmap); 

  USER_OBJECT_
S_gtk_preview_set_reserved(USER_OBJECT_ s_nreserved); 

  USER_OBJECT_
S_gtk_preview_set_dither(USER_OBJECT_ s_object, USER_OBJECT_ s_dither); 

  USER_OBJECT_
S_gtk_preview_get_visual(void); 

  USER_OBJECT_
S_gtk_preview_get_cmap(void); 

  USER_OBJECT_
S_gtk_preview_get_info(void); 

  USER_OBJECT_
S_gtk_preview_reset(void); 

  USER_OBJECT_
S_gtk_progress_get_type(void); 

  USER_OBJECT_
S_gtk_progress_set_show_text(USER_OBJECT_ s_object, USER_OBJECT_ s_show_text); 

  USER_OBJECT_
S_gtk_progress_set_text_alignment(USER_OBJECT_ s_object, USER_OBJECT_ s_x_align, USER_OBJECT_ s_y_align); 

  USER_OBJECT_
S_gtk_progress_set_format_string(USER_OBJECT_ s_object, USER_OBJECT_ s_format); 

  USER_OBJECT_
S_gtk_progress_set_adjustment(USER_OBJECT_ s_object, USER_OBJECT_ s_adjustment); 

  USER_OBJECT_
S_gtk_progress_configure(USER_OBJECT_ s_object, USER_OBJECT_ s_value, USER_OBJECT_ s_min, USER_OBJECT_ s_max); 

  USER_OBJECT_
S_gtk_progress_set_percentage(USER_OBJECT_ s_object, USER_OBJECT_ s_percentage); 

  USER_OBJECT_
S_gtk_progress_set_value(USER_OBJECT_ s_object, USER_OBJECT_ s_value); 

  USER_OBJECT_
S_gtk_progress_get_value(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_progress_set_activity_mode(USER_OBJECT_ s_object, USER_OBJECT_ s_activity_mode); 

  USER_OBJECT_
S_gtk_progress_get_current_text(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_progress_get_text_from_value(USER_OBJECT_ s_object, USER_OBJECT_ s_value); 

  USER_OBJECT_
S_gtk_progress_get_current_percentage(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_progress_get_percentage_from_value(USER_OBJECT_ s_object, USER_OBJECT_ s_value); 

  USER_OBJECT_
S_gtk_progress_bar_get_type(void); 

  USER_OBJECT_
S_gtk_progress_bar_new(void); 

  USER_OBJECT_
S_gtk_progress_bar_pulse(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_progress_bar_set_text(USER_OBJECT_ s_object, USER_OBJECT_ s_text); 

  USER_OBJECT_
S_gtk_progress_bar_set_fraction(USER_OBJECT_ s_object, USER_OBJECT_ s_fraction); 

  USER_OBJECT_
S_gtk_progress_bar_set_pulse_step(USER_OBJECT_ s_object, USER_OBJECT_ s_fraction); 

  USER_OBJECT_
S_gtk_progress_bar_set_orientation(USER_OBJECT_ s_object, USER_OBJECT_ s_orientation); 

  USER_OBJECT_
S_gtk_progress_bar_get_text(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_progress_bar_get_fraction(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_progress_bar_get_pulse_step(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_progress_bar_get_orientation(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_progress_bar_new_with_adjustment(USER_OBJECT_ s_adjustment); 

  USER_OBJECT_
S_gtk_progress_bar_set_bar_style(USER_OBJECT_ s_object, USER_OBJECT_ s_style); 

  USER_OBJECT_
S_gtk_progress_bar_set_discrete_blocks(USER_OBJECT_ s_object, USER_OBJECT_ s_blocks); 

  USER_OBJECT_
S_gtk_progress_bar_set_activity_step(USER_OBJECT_ s_object, USER_OBJECT_ s_step); 

  USER_OBJECT_
S_gtk_progress_bar_set_activity_blocks(USER_OBJECT_ s_object, USER_OBJECT_ s_blocks); 

  USER_OBJECT_
S_gtk_progress_bar_update(USER_OBJECT_ s_object, USER_OBJECT_ s_percentage); 

  USER_OBJECT_
S_gtk_progress_bar_set_ellipsize(USER_OBJECT_ s_object, USER_OBJECT_ s_mode); 

  USER_OBJECT_
S_gtk_progress_bar_get_ellipsize(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_radio_action_get_type(void); 

  USER_OBJECT_
S_gtk_radio_action_new(USER_OBJECT_ s_name, USER_OBJECT_ s_label, USER_OBJECT_ s_tooltip, USER_OBJECT_ s_stock_id, USER_OBJECT_ s_value); 

  USER_OBJECT_
S_gtk_radio_action_get_group(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_radio_action_get_current_value(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_radio_button_get_type(void); 

  USER_OBJECT_
S_gtk_radio_button_new(USER_OBJECT_ s_group); 

  USER_OBJECT_
S_gtk_radio_button_new_from_widget(USER_OBJECT_ s_group); 

  USER_OBJECT_
S_gtk_radio_button_new_with_label(USER_OBJECT_ s_group, USER_OBJECT_ s_label); 

  USER_OBJECT_
S_gtk_radio_button_new_with_label_from_widget(USER_OBJECT_ s_group, USER_OBJECT_ s_label); 

  USER_OBJECT_
S_gtk_radio_button_new_with_mnemonic(USER_OBJECT_ s_group, USER_OBJECT_ s_label); 

  USER_OBJECT_
S_gtk_radio_button_new_with_mnemonic_from_widget(USER_OBJECT_ s_group, USER_OBJECT_ s_label); 

  USER_OBJECT_
S_gtk_radio_button_get_group(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_radio_button_group(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_radio_menu_item_get_type(void); 

  USER_OBJECT_
S_gtk_radio_menu_item_new(USER_OBJECT_ s_group); 

  USER_OBJECT_
S_gtk_radio_menu_item_new_with_label(USER_OBJECT_ s_group, USER_OBJECT_ s_label); 

  USER_OBJECT_
S_gtk_radio_menu_item_new_with_mnemonic(USER_OBJECT_ s_group, USER_OBJECT_ s_label); 

  USER_OBJECT_
S_gtk_radio_menu_item_new_from_widget(USER_OBJECT_ s_group); 

  USER_OBJECT_
S_gtk_radio_menu_item_new_with_mnemonic_from_widget(USER_OBJECT_ s_group, USER_OBJECT_ s_label); 

  USER_OBJECT_
S_gtk_radio_menu_item_new_with_label_from_widget(USER_OBJECT_ s_group, USER_OBJECT_ s_label); 

  USER_OBJECT_
S_gtk_radio_menu_item_get_group(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_radio_menu_item_group(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_radio_tool_button_get_type(void); 

  USER_OBJECT_
S_gtk_radio_tool_button_new(USER_OBJECT_ s_group); 

  USER_OBJECT_
S_gtk_radio_tool_button_new_from_stock(USER_OBJECT_ s_group, USER_OBJECT_ s_stock_id); 

  USER_OBJECT_
S_gtk_radio_tool_button_new_from_widget(USER_OBJECT_ s_group); 

  USER_OBJECT_
S_gtk_radio_tool_button_new_with_stock_from_widget(USER_OBJECT_ s_group, USER_OBJECT_ s_stock_id); 

  USER_OBJECT_
S_gtk_radio_tool_button_get_group(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_range_get_type(void); 

  USER_OBJECT_
S_gtk_range_set_update_policy(USER_OBJECT_ s_object, USER_OBJECT_ s_policy); 

  USER_OBJECT_
S_gtk_range_get_update_policy(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_range_set_adjustment(USER_OBJECT_ s_object, USER_OBJECT_ s_adjustment); 

  USER_OBJECT_
S_gtk_range_get_adjustment(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_range_set_inverted(USER_OBJECT_ s_object, USER_OBJECT_ s_setting); 

  USER_OBJECT_
S_gtk_range_get_inverted(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_range_set_increments(USER_OBJECT_ s_object, USER_OBJECT_ s_step, USER_OBJECT_ s_page); 

  USER_OBJECT_
S_gtk_range_set_range(USER_OBJECT_ s_object, USER_OBJECT_ s_min, USER_OBJECT_ s_max); 

  USER_OBJECT_
S_gtk_range_set_value(USER_OBJECT_ s_object, USER_OBJECT_ s_value); 

  USER_OBJECT_
S_gtk_range_get_value(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_rc_add_default_file(USER_OBJECT_ s_filename); 

  USER_OBJECT_
S_gtk_rc_set_default_files(USER_OBJECT_ s_filenames); 

  USER_OBJECT_
S_gtk_rc_get_default_files(void); 

  USER_OBJECT_
S_gtk_rc_get_style(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_rc_get_style_by_paths(USER_OBJECT_ s_settings, USER_OBJECT_ s_widget_path, USER_OBJECT_ s_class_path, USER_OBJECT_ s_type); 

  USER_OBJECT_
S_gtk_rc_reparse_all_for_settings(USER_OBJECT_ s_settings, USER_OBJECT_ s_force_load); 

  USER_OBJECT_
S_gtk_rc_reset_styles(USER_OBJECT_ s_settings); 

  USER_OBJECT_
S_gtk_rc_find_pixmap_in_path(USER_OBJECT_ s_settings, USER_OBJECT_ s_scanner, USER_OBJECT_ s_pixmap_file); 

  USER_OBJECT_
S_gtk_rc_parse(USER_OBJECT_ s_filename); 

  USER_OBJECT_
S_gtk_rc_parse_string(USER_OBJECT_ s_rc_string); 

  USER_OBJECT_
S_gtk_rc_reparse_all(void); 

  USER_OBJECT_
S_gtk_rc_add_widget_name_style(USER_OBJECT_ s_object, USER_OBJECT_ s_pattern); 

  USER_OBJECT_
S_gtk_rc_add_widget_class_style(USER_OBJECT_ s_object, USER_OBJECT_ s_pattern); 

  USER_OBJECT_
S_gtk_rc_add_class_style(USER_OBJECT_ s_object, USER_OBJECT_ s_pattern); 

  USER_OBJECT_
S_gtk_rc_style_get_type(void); 

  USER_OBJECT_
S_gtk_rc_style_new(void); 

  USER_OBJECT_
S_gtk_rc_style_copy(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_rc_style_ref(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_rc_style_unref(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_rc_find_module_in_path(USER_OBJECT_ s_module_file); 

  USER_OBJECT_
S_gtk_rc_get_theme_dir(void); 

  USER_OBJECT_
S_gtk_rc_get_module_dir(void); 

  USER_OBJECT_
S_gtk_rc_get_im_module_path(void); 

  USER_OBJECT_
S_gtk_rc_get_im_module_file(void); 

  USER_OBJECT_
S_gtk_rc_scanner_new(void); 

  USER_OBJECT_
S_gtk_rc_parse_color(USER_OBJECT_ s_scanner, USER_OBJECT_ s_color); 

  USER_OBJECT_
S_gtk_rc_parse_state(USER_OBJECT_ s_scanner); 

  USER_OBJECT_
S_gtk_rc_parse_priority(USER_OBJECT_ s_scanner); 

  USER_OBJECT_
S_gtk_ruler_get_type(void); 

  USER_OBJECT_
S_gtk_ruler_set_metric(USER_OBJECT_ s_object, USER_OBJECT_ s_metric); 

  USER_OBJECT_
S_gtk_ruler_set_range(USER_OBJECT_ s_object, USER_OBJECT_ s_lower, USER_OBJECT_ s_upper, USER_OBJECT_ s_position, USER_OBJECT_ s_max_size); 

  USER_OBJECT_
S_gtk_ruler_get_metric(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_ruler_get_range(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_scale_get_type(void); 

  USER_OBJECT_
S_gtk_scale_set_digits(USER_OBJECT_ s_object, USER_OBJECT_ s_digits); 

  USER_OBJECT_
S_gtk_scale_get_digits(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_scale_set_draw_value(USER_OBJECT_ s_object, USER_OBJECT_ s_draw_value); 

  USER_OBJECT_
S_gtk_scale_get_draw_value(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_scale_set_value_pos(USER_OBJECT_ s_object, USER_OBJECT_ s_pos); 

  USER_OBJECT_
S_gtk_scale_get_value_pos(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_scale_get_layout(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_scale_get_layout_offsets(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_scrollbar_get_type(void); 

  USER_OBJECT_
S_gtk_scrolled_window_get_type(void); 

  USER_OBJECT_
S_gtk_scrolled_window_new(USER_OBJECT_ s_hadjustment, USER_OBJECT_ s_vadjustment); 

  USER_OBJECT_
S_gtk_scrolled_window_set_hadjustment(USER_OBJECT_ s_object, USER_OBJECT_ s_hadjustment); 

  USER_OBJECT_
S_gtk_scrolled_window_set_vadjustment(USER_OBJECT_ s_object, USER_OBJECT_ s_hadjustment); 

  USER_OBJECT_
S_gtk_scrolled_window_get_hadjustment(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_scrolled_window_get_vadjustment(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_scrolled_window_get_hscrollbar(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_scrolled_window_get_vscrollbar(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_scrolled_window_set_policy(USER_OBJECT_ s_object, USER_OBJECT_ s_hscrollbar_policy, USER_OBJECT_ s_vscrollbar_policy); 

  USER_OBJECT_
S_gtk_scrolled_window_get_policy(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_scrolled_window_set_placement(USER_OBJECT_ s_object, USER_OBJECT_ s_window_placement); 

  USER_OBJECT_
S_gtk_scrolled_window_get_placement(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_scrolled_window_set_shadow_type(USER_OBJECT_ s_object, USER_OBJECT_ s_type); 

  USER_OBJECT_
S_gtk_scrolled_window_get_shadow_type(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_scrolled_window_add_with_viewport(USER_OBJECT_ s_object, USER_OBJECT_ s_child); 

  USER_OBJECT_
S_gtk_target_list_new(USER_OBJECT_ s_targets); 

  USER_OBJECT_
S_gtk_target_list_ref(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_target_list_unref(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_target_list_add(USER_OBJECT_ s_object, USER_OBJECT_ s_target, USER_OBJECT_ s_flags, USER_OBJECT_ s_info); 

  USER_OBJECT_
S_gtk_target_list_add_table(USER_OBJECT_ s_object, USER_OBJECT_ s_targets); 

  USER_OBJECT_
S_gtk_target_list_remove(USER_OBJECT_ s_object, USER_OBJECT_ s_target); 

  USER_OBJECT_
S_gtk_target_list_find(USER_OBJECT_ s_object, USER_OBJECT_ s_target); 

  USER_OBJECT_
S_gtk_selection_owner_set(USER_OBJECT_ s_object, USER_OBJECT_ s_selection, USER_OBJECT_ s_time); 

  USER_OBJECT_
S_gtk_selection_owner_set_for_display(USER_OBJECT_ s_display, USER_OBJECT_ s_widget, USER_OBJECT_ s_selection, USER_OBJECT_ s_time); 

  USER_OBJECT_
S_gtk_selection_add_target(USER_OBJECT_ s_object, USER_OBJECT_ s_selection, USER_OBJECT_ s_target, USER_OBJECT_ s_info); 

  USER_OBJECT_
S_gtk_selection_add_targets(USER_OBJECT_ s_object, USER_OBJECT_ s_selection, USER_OBJECT_ s_targets); 

  USER_OBJECT_
S_gtk_selection_clear_targets(USER_OBJECT_ s_object, USER_OBJECT_ s_selection); 

  USER_OBJECT_
S_gtk_selection_convert(USER_OBJECT_ s_object, USER_OBJECT_ s_selection, USER_OBJECT_ s_target, USER_OBJECT_ s_time); 

  USER_OBJECT_
S_gtk_selection_data_set(USER_OBJECT_ s_object, USER_OBJECT_ s_type, USER_OBJECT_ s_data); 

  USER_OBJECT_
S_gtk_selection_data_set_text(USER_OBJECT_ s_object, USER_OBJECT_ s_str, USER_OBJECT_ s_len); 

  USER_OBJECT_
S_gtk_selection_data_get_text(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_selection_data_get_targets(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_selection_data_targets_include_text(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_selection_remove_all(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_selection_clear(USER_OBJECT_ s_object, USER_OBJECT_ s_event); 

  USER_OBJECT_
S_gtk_selection_data_get_type(void); 

  USER_OBJECT_
S_gtk_selection_data_copy(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_selection_data_free(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_selection_data_set_pixbuf(USER_OBJECT_ s_object, USER_OBJECT_ s_pixbuf); 

  USER_OBJECT_
S_gtk_selection_data_get_pixbuf(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_selection_data_set_uris(USER_OBJECT_ s_object, USER_OBJECT_ s_uris); 

  USER_OBJECT_
S_gtk_selection_data_get_uris(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_selection_data_targets_include_image(USER_OBJECT_ s_object, USER_OBJECT_ s_writable); 

  USER_OBJECT_
S_gtk_separator_get_type(void); 

  USER_OBJECT_
S_gtk_separator_menu_item_get_type(void); 

  USER_OBJECT_
S_gtk_separator_menu_item_new(void); 

  USER_OBJECT_
S_gtk_separator_tool_item_get_type(void); 

  USER_OBJECT_
S_gtk_separator_tool_item_new(void); 

  USER_OBJECT_
S_gtk_separator_tool_item_get_draw(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_separator_tool_item_set_draw(USER_OBJECT_ s_object, USER_OBJECT_ s_draw); 

  USER_OBJECT_
S_gtk_settings_get_type(void); 

  USER_OBJECT_
S_gtk_settings_get_default(void); 

  USER_OBJECT_
S_gtk_settings_get_for_screen(USER_OBJECT_ s_screen); 

  USER_OBJECT_
S_gtk_settings_install_property(USER_OBJECT_ s_pspec); 

  USER_OBJECT_
S_gtk_rc_property_parse_color(USER_OBJECT_ s_pspec, USER_OBJECT_ s_gstring); 

  USER_OBJECT_
S_gtk_rc_property_parse_enum(USER_OBJECT_ s_pspec, USER_OBJECT_ s_gstring); 

  USER_OBJECT_
S_gtk_rc_property_parse_flags(USER_OBJECT_ s_pspec, USER_OBJECT_ s_gstring); 

  USER_OBJECT_
S_gtk_rc_property_parse_requisition(USER_OBJECT_ s_pspec, USER_OBJECT_ s_gstring); 

  USER_OBJECT_
S_gtk_rc_property_parse_border(USER_OBJECT_ s_pspec, USER_OBJECT_ s_gstring); 

  USER_OBJECT_
S_gtk_settings_set_property_value(USER_OBJECT_ s_object, USER_OBJECT_ s_name, USER_OBJECT_ s_svalue); 

  USER_OBJECT_
S_gtk_settings_set_string_property(USER_OBJECT_ s_object, USER_OBJECT_ s_name, USER_OBJECT_ s_v_string, USER_OBJECT_ s_origin); 

  USER_OBJECT_
S_gtk_settings_set_long_property(USER_OBJECT_ s_object, USER_OBJECT_ s_name, USER_OBJECT_ s_v_long, USER_OBJECT_ s_origin); 

  USER_OBJECT_
S_gtk_settings_set_double_property(USER_OBJECT_ s_object, USER_OBJECT_ s_name, USER_OBJECT_ s_v_double, USER_OBJECT_ s_origin); 

  USER_OBJECT_
S_gtk_size_group_get_type(void); 

  USER_OBJECT_
S_gtk_size_group_new(USER_OBJECT_ s_mode); 

  USER_OBJECT_
S_gtk_size_group_set_mode(USER_OBJECT_ s_object, USER_OBJECT_ s_mode); 

  USER_OBJECT_
S_gtk_size_group_get_mode(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_size_group_set_ignore_hidden(USER_OBJECT_ s_object, USER_OBJECT_ s_ignore_hidden); 

  USER_OBJECT_
S_gtk_size_group_get_ignore_hidden(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_size_group_add_widget(USER_OBJECT_ s_object, USER_OBJECT_ s_widget); 

  USER_OBJECT_
S_gtk_size_group_remove_widget(USER_OBJECT_ s_object, USER_OBJECT_ s_widget); 

  USER_OBJECT_
S_gtk_socket_get_type(void); 

  USER_OBJECT_
S_gtk_socket_new(void); 

  USER_OBJECT_
S_gtk_socket_add_id(USER_OBJECT_ s_object, USER_OBJECT_ s_window_id); 

  USER_OBJECT_
S_gtk_socket_get_id(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_socket_steal(USER_OBJECT_ s_object, USER_OBJECT_ s_wid); 

  USER_OBJECT_
S_gtk_spin_button_get_type(void); 

  USER_OBJECT_
S_gtk_spin_button_configure(USER_OBJECT_ s_object, USER_OBJECT_ s_adjustment, USER_OBJECT_ s_climb_rate, USER_OBJECT_ s_digits); 

  USER_OBJECT_
S_gtk_spin_button_new(USER_OBJECT_ s_adjustment, USER_OBJECT_ s_climb_rate, USER_OBJECT_ s_digits); 

  USER_OBJECT_
S_gtk_spin_button_new_with_range(USER_OBJECT_ s_min, USER_OBJECT_ s_max, USER_OBJECT_ s_step); 

  USER_OBJECT_
S_gtk_spin_button_set_adjustment(USER_OBJECT_ s_object, USER_OBJECT_ s_adjustment); 

  USER_OBJECT_
S_gtk_spin_button_get_adjustment(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_spin_button_set_digits(USER_OBJECT_ s_object, USER_OBJECT_ s_digits); 

  USER_OBJECT_
S_gtk_spin_button_get_digits(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_spin_button_set_increments(USER_OBJECT_ s_object, USER_OBJECT_ s_step, USER_OBJECT_ s_page); 

  USER_OBJECT_
S_gtk_spin_button_get_increments(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_spin_button_set_range(USER_OBJECT_ s_object, USER_OBJECT_ s_min, USER_OBJECT_ s_max); 

  USER_OBJECT_
S_gtk_spin_button_get_range(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_spin_button_get_value(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_spin_button_get_value_as_int(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_spin_button_set_value(USER_OBJECT_ s_object, USER_OBJECT_ s_value); 

  USER_OBJECT_
S_gtk_spin_button_set_update_policy(USER_OBJECT_ s_object, USER_OBJECT_ s_policy); 

  USER_OBJECT_
S_gtk_spin_button_get_update_policy(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_spin_button_set_numeric(USER_OBJECT_ s_object, USER_OBJECT_ s_numeric); 

  USER_OBJECT_
S_gtk_spin_button_get_numeric(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_spin_button_spin(USER_OBJECT_ s_object, USER_OBJECT_ s_direction, USER_OBJECT_ s_increment); 

  USER_OBJECT_
S_gtk_spin_button_set_wrap(USER_OBJECT_ s_object, USER_OBJECT_ s_wrap); 

  USER_OBJECT_
S_gtk_spin_button_get_wrap(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_spin_button_set_snap_to_ticks(USER_OBJECT_ s_object, USER_OBJECT_ s_snap_to_ticks); 

  USER_OBJECT_
S_gtk_spin_button_get_snap_to_ticks(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_spin_button_update(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_statusbar_get_type(void); 

  USER_OBJECT_
S_gtk_statusbar_new(void); 

  USER_OBJECT_
S_gtk_statusbar_get_context_id(USER_OBJECT_ s_object, USER_OBJECT_ s_context_description); 

  USER_OBJECT_
S_gtk_statusbar_push(USER_OBJECT_ s_object, USER_OBJECT_ s_context_id, USER_OBJECT_ s_text); 

  USER_OBJECT_
S_gtk_statusbar_pop(USER_OBJECT_ s_object, USER_OBJECT_ s_context_id); 

  USER_OBJECT_
S_gtk_statusbar_remove(USER_OBJECT_ s_object, USER_OBJECT_ s_context_id, USER_OBJECT_ s_message_id); 

  USER_OBJECT_
S_gtk_statusbar_set_has_resize_grip(USER_OBJECT_ s_object, USER_OBJECT_ s_setting); 

  USER_OBJECT_
S_gtk_statusbar_get_has_resize_grip(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_stock_add(USER_OBJECT_ s_items); 

  USER_OBJECT_
S_gtk_stock_add_static(USER_OBJECT_ s_items); 

  USER_OBJECT_
S_gtk_stock_lookup(USER_OBJECT_ s_stock_id); 

  USER_OBJECT_
S_gtk_stock_list_ids(void); 

  USER_OBJECT_
S_gtk_stock_item_copy(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_stock_item_free(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_stock_set_translate_func(USER_OBJECT_ s_domain, USER_OBJECT_ s_func, USER_OBJECT_ s_data); 

  USER_OBJECT_
S_gtk_style_get_type(void); 

  USER_OBJECT_
S_gtk_style_new(void); 

  USER_OBJECT_
S_gtk_style_copy(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_style_attach(USER_OBJECT_ s_object, USER_OBJECT_ s_window); 

  USER_OBJECT_
S_gtk_style_detach(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_style_ref(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_style_unref(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_style_get_font(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_style_set_font(USER_OBJECT_ s_object, USER_OBJECT_ s_font); 

  USER_OBJECT_
S_gtk_style_set_background(USER_OBJECT_ s_object, USER_OBJECT_ s_window, USER_OBJECT_ s_state_type); 

  USER_OBJECT_
S_gtk_style_apply_default_background(USER_OBJECT_ s_object, USER_OBJECT_ s_window, USER_OBJECT_ s_set_bg, USER_OBJECT_ s_state_type, USER_OBJECT_ s_area, USER_OBJECT_ s_x, USER_OBJECT_ s_y, USER_OBJECT_ s_width, USER_OBJECT_ s_height); 

  USER_OBJECT_
S_gtk_style_lookup_icon_set(USER_OBJECT_ s_object, USER_OBJECT_ s_stock_id); 

  USER_OBJECT_
S_gtk_style_render_icon(USER_OBJECT_ s_object, USER_OBJECT_ s_source, USER_OBJECT_ s_direction, USER_OBJECT_ s_state, USER_OBJECT_ s_size, USER_OBJECT_ s_widget, USER_OBJECT_ s_detail); 

  USER_OBJECT_
S_gtk_draw_hline(USER_OBJECT_ s_object, USER_OBJECT_ s_window, USER_OBJECT_ s_state_type, USER_OBJECT_ s_x1, USER_OBJECT_ s_x2, USER_OBJECT_ s_y); 

  USER_OBJECT_
S_gtk_draw_vline(USER_OBJECT_ s_object, USER_OBJECT_ s_window, USER_OBJECT_ s_state_type, USER_OBJECT_ s_y1, USER_OBJECT_ s_y2, USER_OBJECT_ s_x); 

  USER_OBJECT_
S_gtk_draw_shadow(USER_OBJECT_ s_object, USER_OBJECT_ s_window, USER_OBJECT_ s_state_type, USER_OBJECT_ s_shadow_type, USER_OBJECT_ s_x, USER_OBJECT_ s_y, USER_OBJECT_ s_width, USER_OBJECT_ s_height); 

  USER_OBJECT_
S_gtk_draw_polygon(USER_OBJECT_ s_object, USER_OBJECT_ s_window, USER_OBJECT_ s_state_type, USER_OBJECT_ s_shadow_type, USER_OBJECT_ s_points, USER_OBJECT_ s_fill); 

  USER_OBJECT_
S_gtk_draw_arrow(USER_OBJECT_ s_object, USER_OBJECT_ s_window, USER_OBJECT_ s_state_type, USER_OBJECT_ s_shadow_type, USER_OBJECT_ s_arrow_type, USER_OBJECT_ s_fill, USER_OBJECT_ s_x, USER_OBJECT_ s_y, USER_OBJECT_ s_width, USER_OBJECT_ s_height); 

  USER_OBJECT_
S_gtk_draw_diamond(USER_OBJECT_ s_object, USER_OBJECT_ s_window, USER_OBJECT_ s_state_type, USER_OBJECT_ s_shadow_type, USER_OBJECT_ s_x, USER_OBJECT_ s_y, USER_OBJECT_ s_width, USER_OBJECT_ s_height); 

  USER_OBJECT_
S_gtk_draw_box(USER_OBJECT_ s_object, USER_OBJECT_ s_window, USER_OBJECT_ s_state_type, USER_OBJECT_ s_shadow_type, USER_OBJECT_ s_x, USER_OBJECT_ s_y, USER_OBJECT_ s_width, USER_OBJECT_ s_height); 

  USER_OBJECT_
S_gtk_draw_flat_box(USER_OBJECT_ s_object, USER_OBJECT_ s_window, USER_OBJECT_ s_state_type, USER_OBJECT_ s_shadow_type, USER_OBJECT_ s_x, USER_OBJECT_ s_y, USER_OBJECT_ s_width, USER_OBJECT_ s_height); 

  USER_OBJECT_
S_gtk_draw_check(USER_OBJECT_ s_object, USER_OBJECT_ s_window, USER_OBJECT_ s_state_type, USER_OBJECT_ s_shadow_type, USER_OBJECT_ s_x, USER_OBJECT_ s_y, USER_OBJECT_ s_width, USER_OBJECT_ s_height); 

  USER_OBJECT_
S_gtk_draw_option(USER_OBJECT_ s_object, USER_OBJECT_ s_window, USER_OBJECT_ s_state_type, USER_OBJECT_ s_shadow_type, USER_OBJECT_ s_x, USER_OBJECT_ s_y, USER_OBJECT_ s_width, USER_OBJECT_ s_height); 

  USER_OBJECT_
S_gtk_draw_tab(USER_OBJECT_ s_object, USER_OBJECT_ s_window, USER_OBJECT_ s_state_type, USER_OBJECT_ s_shadow_type, USER_OBJECT_ s_x, USER_OBJECT_ s_y, USER_OBJECT_ s_width, USER_OBJECT_ s_height); 

  USER_OBJECT_
S_gtk_draw_shadow_gap(USER_OBJECT_ s_object, USER_OBJECT_ s_window, USER_OBJECT_ s_state_type, USER_OBJECT_ s_shadow_type, USER_OBJECT_ s_x, USER_OBJECT_ s_y, USER_OBJECT_ s_width, USER_OBJECT_ s_height, USER_OBJECT_ s_gap_side, USER_OBJECT_ s_gap_x, USER_OBJECT_ s_gap_width); 

  USER_OBJECT_
S_gtk_draw_box_gap(USER_OBJECT_ s_object, USER_OBJECT_ s_window, USER_OBJECT_ s_state_type, USER_OBJECT_ s_shadow_type, USER_OBJECT_ s_x, USER_OBJECT_ s_y, USER_OBJECT_ s_width, USER_OBJECT_ s_height, USER_OBJECT_ s_gap_side, USER_OBJECT_ s_gap_x, USER_OBJECT_ s_gap_width); 

  USER_OBJECT_
S_gtk_draw_extension(USER_OBJECT_ s_object, USER_OBJECT_ s_window, USER_OBJECT_ s_state_type, USER_OBJECT_ s_shadow_type, USER_OBJECT_ s_x, USER_OBJECT_ s_y, USER_OBJECT_ s_width, USER_OBJECT_ s_height, USER_OBJECT_ s_gap_side); 

  USER_OBJECT_
S_gtk_draw_focus(USER_OBJECT_ s_object, USER_OBJECT_ s_window, USER_OBJECT_ s_x, USER_OBJECT_ s_y, USER_OBJECT_ s_width, USER_OBJECT_ s_height); 

  USER_OBJECT_
S_gtk_draw_slider(USER_OBJECT_ s_object, USER_OBJECT_ s_window, USER_OBJECT_ s_state_type, USER_OBJECT_ s_shadow_type, USER_OBJECT_ s_x, USER_OBJECT_ s_y, USER_OBJECT_ s_width, USER_OBJECT_ s_height, USER_OBJECT_ s_orientation); 

  USER_OBJECT_
S_gtk_draw_handle(USER_OBJECT_ s_object, USER_OBJECT_ s_window, USER_OBJECT_ s_state_type, USER_OBJECT_ s_shadow_type, USER_OBJECT_ s_x, USER_OBJECT_ s_y, USER_OBJECT_ s_width, USER_OBJECT_ s_height, USER_OBJECT_ s_orientation); 

  USER_OBJECT_
S_gtk_draw_expander(USER_OBJECT_ s_object, USER_OBJECT_ s_window, USER_OBJECT_ s_state_type, USER_OBJECT_ s_x, USER_OBJECT_ s_y, USER_OBJECT_ s_is_open); 

  USER_OBJECT_
S_gtk_draw_layout(USER_OBJECT_ s_object, USER_OBJECT_ s_window, USER_OBJECT_ s_state_type, USER_OBJECT_ s_use_text, USER_OBJECT_ s_x, USER_OBJECT_ s_y, USER_OBJECT_ s_layout); 

  USER_OBJECT_
S_gtk_draw_resize_grip(USER_OBJECT_ s_object, USER_OBJECT_ s_window, USER_OBJECT_ s_state_type, USER_OBJECT_ s_edge, USER_OBJECT_ s_x, USER_OBJECT_ s_y, USER_OBJECT_ s_width, USER_OBJECT_ s_height); 

  USER_OBJECT_
S_gtk_paint_hline(USER_OBJECT_ s_object, USER_OBJECT_ s_window, USER_OBJECT_ s_state_type, USER_OBJECT_ s_area, USER_OBJECT_ s_widget, USER_OBJECT_ s_detail, USER_OBJECT_ s_x1, USER_OBJECT_ s_x2, USER_OBJECT_ s_y); 

  USER_OBJECT_
S_gtk_paint_vline(USER_OBJECT_ s_object, USER_OBJECT_ s_window, USER_OBJECT_ s_state_type, USER_OBJECT_ s_area, USER_OBJECT_ s_widget, USER_OBJECT_ s_detail, USER_OBJECT_ s_y1, USER_OBJECT_ s_y2, USER_OBJECT_ s_x); 

  USER_OBJECT_
S_gtk_paint_shadow(USER_OBJECT_ s_object, USER_OBJECT_ s_window, USER_OBJECT_ s_state_type, USER_OBJECT_ s_shadow_type, USER_OBJECT_ s_area, USER_OBJECT_ s_widget, USER_OBJECT_ s_detail, USER_OBJECT_ s_x, USER_OBJECT_ s_y, USER_OBJECT_ s_width, USER_OBJECT_ s_height); 

  USER_OBJECT_
S_gtk_paint_polygon(USER_OBJECT_ s_object, USER_OBJECT_ s_window, USER_OBJECT_ s_state_type, USER_OBJECT_ s_shadow_type, USER_OBJECT_ s_area, USER_OBJECT_ s_widget, USER_OBJECT_ s_detail, USER_OBJECT_ s_points, USER_OBJECT_ s_fill); 

  USER_OBJECT_
S_gtk_paint_arrow(USER_OBJECT_ s_object, USER_OBJECT_ s_window, USER_OBJECT_ s_state_type, USER_OBJECT_ s_shadow_type, USER_OBJECT_ s_area, USER_OBJECT_ s_widget, USER_OBJECT_ s_detail, USER_OBJECT_ s_arrow_type, USER_OBJECT_ s_fill, USER_OBJECT_ s_x, USER_OBJECT_ s_y, USER_OBJECT_ s_width, USER_OBJECT_ s_height); 

  USER_OBJECT_
S_gtk_paint_diamond(USER_OBJECT_ s_object, USER_OBJECT_ s_window, USER_OBJECT_ s_state_type, USER_OBJECT_ s_shadow_type, USER_OBJECT_ s_area, USER_OBJECT_ s_widget, USER_OBJECT_ s_detail, USER_OBJECT_ s_x, USER_OBJECT_ s_y, USER_OBJECT_ s_width, USER_OBJECT_ s_height); 

  USER_OBJECT_
S_gtk_paint_box(USER_OBJECT_ s_object, USER_OBJECT_ s_window, USER_OBJECT_ s_state_type, USER_OBJECT_ s_shadow_type, USER_OBJECT_ s_area, USER_OBJECT_ s_widget, USER_OBJECT_ s_detail, USER_OBJECT_ s_x, USER_OBJECT_ s_y, USER_OBJECT_ s_width, USER_OBJECT_ s_height); 

  USER_OBJECT_
S_gtk_paint_flat_box(USER_OBJECT_ s_object, USER_OBJECT_ s_window, USER_OBJECT_ s_state_type, USER_OBJECT_ s_shadow_type, USER_OBJECT_ s_area, USER_OBJECT_ s_widget, USER_OBJECT_ s_detail, USER_OBJECT_ s_x, USER_OBJECT_ s_y, USER_OBJECT_ s_width, USER_OBJECT_ s_height); 

  USER_OBJECT_
S_gtk_paint_check(USER_OBJECT_ s_object, USER_OBJECT_ s_window, USER_OBJECT_ s_state_type, USER_OBJECT_ s_shadow_type, USER_OBJECT_ s_area, USER_OBJECT_ s_widget, USER_OBJECT_ s_detail, USER_OBJECT_ s_x, USER_OBJECT_ s_y, USER_OBJECT_ s_width, USER_OBJECT_ s_height); 

  USER_OBJECT_
S_gtk_paint_option(USER_OBJECT_ s_object, USER_OBJECT_ s_window, USER_OBJECT_ s_state_type, USER_OBJECT_ s_shadow_type, USER_OBJECT_ s_area, USER_OBJECT_ s_widget, USER_OBJECT_ s_detail, USER_OBJECT_ s_x, USER_OBJECT_ s_y, USER_OBJECT_ s_width, USER_OBJECT_ s_height); 

  USER_OBJECT_
S_gtk_paint_tab(USER_OBJECT_ s_object, USER_OBJECT_ s_window, USER_OBJECT_ s_state_type, USER_OBJECT_ s_shadow_type, USER_OBJECT_ s_area, USER_OBJECT_ s_widget, USER_OBJECT_ s_detail, USER_OBJECT_ s_x, USER_OBJECT_ s_y, USER_OBJECT_ s_width, USER_OBJECT_ s_height); 

  USER_OBJECT_
S_gtk_paint_shadow_gap(USER_OBJECT_ s_object, USER_OBJECT_ s_window, USER_OBJECT_ s_state_type, USER_OBJECT_ s_shadow_type, USER_OBJECT_ s_area, USER_OBJECT_ s_widget, USER_OBJECT_ s_detail, USER_OBJECT_ s_x, USER_OBJECT_ s_y, USER_OBJECT_ s_width, USER_OBJECT_ s_height, USER_OBJECT_ s_gap_side, USER_OBJECT_ s_gap_x, USER_OBJECT_ s_gap_width); 

  USER_OBJECT_
S_gtk_paint_box_gap(USER_OBJECT_ s_object, USER_OBJECT_ s_window, USER_OBJECT_ s_state_type, USER_OBJECT_ s_shadow_type, USER_OBJECT_ s_area, USER_OBJECT_ s_widget, USER_OBJECT_ s_detail, USER_OBJECT_ s_x, USER_OBJECT_ s_y, USER_OBJECT_ s_width, USER_OBJECT_ s_height, USER_OBJECT_ s_gap_side, USER_OBJECT_ s_gap_x, USER_OBJECT_ s_gap_width); 

  USER_OBJECT_
S_gtk_paint_extension(USER_OBJECT_ s_object, USER_OBJECT_ s_window, USER_OBJECT_ s_state_type, USER_OBJECT_ s_shadow_type, USER_OBJECT_ s_area, USER_OBJECT_ s_widget, USER_OBJECT_ s_detail, USER_OBJECT_ s_x, USER_OBJECT_ s_y, USER_OBJECT_ s_width, USER_OBJECT_ s_height, USER_OBJECT_ s_gap_side); 

  USER_OBJECT_
S_gtk_paint_focus(USER_OBJECT_ s_object, USER_OBJECT_ s_window, USER_OBJECT_ s_state_type, USER_OBJECT_ s_area, USER_OBJECT_ s_widget, USER_OBJECT_ s_detail, USER_OBJECT_ s_x, USER_OBJECT_ s_y, USER_OBJECT_ s_width, USER_OBJECT_ s_height); 

  USER_OBJECT_
S_gtk_paint_slider(USER_OBJECT_ s_object, USER_OBJECT_ s_window, USER_OBJECT_ s_state_type, USER_OBJECT_ s_shadow_type, USER_OBJECT_ s_area, USER_OBJECT_ s_widget, USER_OBJECT_ s_detail, USER_OBJECT_ s_x, USER_OBJECT_ s_y, USER_OBJECT_ s_width, USER_OBJECT_ s_height, USER_OBJECT_ s_orientation); 

  USER_OBJECT_
S_gtk_paint_handle(USER_OBJECT_ s_object, USER_OBJECT_ s_window, USER_OBJECT_ s_state_type, USER_OBJECT_ s_shadow_type, USER_OBJECT_ s_area, USER_OBJECT_ s_widget, USER_OBJECT_ s_detail, USER_OBJECT_ s_x, USER_OBJECT_ s_y, USER_OBJECT_ s_width, USER_OBJECT_ s_height, USER_OBJECT_ s_orientation); 

  USER_OBJECT_
S_gtk_paint_expander(USER_OBJECT_ s_object, USER_OBJECT_ s_window, USER_OBJECT_ s_state_type, USER_OBJECT_ s_area, USER_OBJECT_ s_widget, USER_OBJECT_ s_detail, USER_OBJECT_ s_x, USER_OBJECT_ s_y, USER_OBJECT_ s_expander_style); 

  USER_OBJECT_
S_gtk_paint_layout(USER_OBJECT_ s_object, USER_OBJECT_ s_window, USER_OBJECT_ s_state_type, USER_OBJECT_ s_use_text, USER_OBJECT_ s_area, USER_OBJECT_ s_widget, USER_OBJECT_ s_detail, USER_OBJECT_ s_x, USER_OBJECT_ s_y, USER_OBJECT_ s_layout); 

  USER_OBJECT_
S_gtk_paint_resize_grip(USER_OBJECT_ s_object, USER_OBJECT_ s_window, USER_OBJECT_ s_state_type, USER_OBJECT_ s_area, USER_OBJECT_ s_widget, USER_OBJECT_ s_detail, USER_OBJECT_ s_edge, USER_OBJECT_ s_x, USER_OBJECT_ s_y, USER_OBJECT_ s_width, USER_OBJECT_ s_height); 

  USER_OBJECT_
S_gtk_border_get_type(void); 

  USER_OBJECT_
S_gtk_border_copy(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_border_free(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_style_apply_default_pixmap(USER_OBJECT_ s_object, USER_OBJECT_ s_window, USER_OBJECT_ s_set_bg, USER_OBJECT_ s_area, USER_OBJECT_ s_x, USER_OBJECT_ s_y, USER_OBJECT_ s_width, USER_OBJECT_ s_height); 

  USER_OBJECT_
S_gtk_draw_string(USER_OBJECT_ s_object, USER_OBJECT_ s_window, USER_OBJECT_ s_state_type, USER_OBJECT_ s_x, USER_OBJECT_ s_y, USER_OBJECT_ s_string); 

  USER_OBJECT_
S_gtk_paint_string(USER_OBJECT_ s_object, USER_OBJECT_ s_window, USER_OBJECT_ s_state_type, USER_OBJECT_ s_area, USER_OBJECT_ s_widget, USER_OBJECT_ s_detail, USER_OBJECT_ s_x, USER_OBJECT_ s_y, USER_OBJECT_ s_string); 

  USER_OBJECT_
S_gtk_draw_insertion_cursor(USER_OBJECT_ s_widget, USER_OBJECT_ s_drawable, USER_OBJECT_ s_area, USER_OBJECT_ s_location, USER_OBJECT_ s_is_primary, USER_OBJECT_ s_direction, USER_OBJECT_ s_draw_arrow); 

  USER_OBJECT_
S_gtk_table_get_type(void); 

  USER_OBJECT_
S_gtk_table_new(USER_OBJECT_ s_rows, USER_OBJECT_ s_columns, USER_OBJECT_ s_homogeneous); 

  USER_OBJECT_
S_gtk_table_resize(USER_OBJECT_ s_object, USER_OBJECT_ s_rows, USER_OBJECT_ s_columns); 

  USER_OBJECT_
S_gtk_table_attach(USER_OBJECT_ s_object, USER_OBJECT_ s_child, USER_OBJECT_ s_left_attach, USER_OBJECT_ s_right_attach, USER_OBJECT_ s_top_attach, USER_OBJECT_ s_bottom_attach, USER_OBJECT_ s_xoptions, USER_OBJECT_ s_yoptions, USER_OBJECT_ s_xpadding, USER_OBJECT_ s_ypadding); 

  USER_OBJECT_
S_gtk_table_attach_defaults(USER_OBJECT_ s_object, USER_OBJECT_ s_widget, USER_OBJECT_ s_left_attach, USER_OBJECT_ s_right_attach, USER_OBJECT_ s_top_attach, USER_OBJECT_ s_bottom_attach); 

  USER_OBJECT_
S_gtk_table_set_row_spacing(USER_OBJECT_ s_object, USER_OBJECT_ s_row, USER_OBJECT_ s_spacing); 

  USER_OBJECT_
S_gtk_table_get_row_spacing(USER_OBJECT_ s_object, USER_OBJECT_ s_row); 

  USER_OBJECT_
S_gtk_table_set_col_spacing(USER_OBJECT_ s_object, USER_OBJECT_ s_column, USER_OBJECT_ s_spacing); 

  USER_OBJECT_
S_gtk_table_get_col_spacing(USER_OBJECT_ s_object, USER_OBJECT_ s_column); 

  USER_OBJECT_
S_gtk_table_set_row_spacings(USER_OBJECT_ s_object, USER_OBJECT_ s_spacing); 

  USER_OBJECT_
S_gtk_table_get_default_row_spacing(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_table_set_col_spacings(USER_OBJECT_ s_object, USER_OBJECT_ s_spacing); 

  USER_OBJECT_
S_gtk_table_get_default_col_spacing(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_table_set_homogeneous(USER_OBJECT_ s_object, USER_OBJECT_ s_homogeneous); 

  USER_OBJECT_
S_gtk_table_get_homogeneous(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_tearoff_menu_item_get_type(void); 

  USER_OBJECT_
S_gtk_tearoff_menu_item_new(void); 

  USER_OBJECT_
S_gtk_text_buffer_get_type(void); 

  USER_OBJECT_
S_gtk_text_buffer_new(USER_OBJECT_ s_table); 

  USER_OBJECT_
S_gtk_text_buffer_get_line_count(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_text_buffer_get_char_count(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_text_buffer_get_tag_table(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_text_buffer_set_text(USER_OBJECT_ s_object, USER_OBJECT_ s_text, USER_OBJECT_ s_len); 

  USER_OBJECT_
S_gtk_text_buffer_insert(USER_OBJECT_ s_object, USER_OBJECT_ s_iter, USER_OBJECT_ s_text, USER_OBJECT_ s_len); 

  USER_OBJECT_
S_gtk_text_buffer_insert_at_cursor(USER_OBJECT_ s_object, USER_OBJECT_ s_text, USER_OBJECT_ s_len); 

  USER_OBJECT_
S_gtk_text_buffer_insert_interactive(USER_OBJECT_ s_object, USER_OBJECT_ s_iter, USER_OBJECT_ s_text, USER_OBJECT_ s_len, USER_OBJECT_ s_default_editable); 

  USER_OBJECT_
S_gtk_text_buffer_insert_interactive_at_cursor(USER_OBJECT_ s_object, USER_OBJECT_ s_text, USER_OBJECT_ s_len, USER_OBJECT_ s_default_editable); 

  USER_OBJECT_
S_gtk_text_buffer_insert_range(USER_OBJECT_ s_object, USER_OBJECT_ s_iter, USER_OBJECT_ s_start, USER_OBJECT_ s_end); 

  USER_OBJECT_
S_gtk_text_buffer_insert_range_interactive(USER_OBJECT_ s_object, USER_OBJECT_ s_iter, USER_OBJECT_ s_start, USER_OBJECT_ s_end, USER_OBJECT_ s_default_editable); 

  USER_OBJECT_
S_gtk_text_buffer_delete(USER_OBJECT_ s_object, USER_OBJECT_ s_start, USER_OBJECT_ s_end); 

  USER_OBJECT_
S_gtk_text_buffer_delete_interactive(USER_OBJECT_ s_object, USER_OBJECT_ s_start_iter, USER_OBJECT_ s_end_iter, USER_OBJECT_ s_default_editable); 

  USER_OBJECT_
S_gtk_text_buffer_get_text(USER_OBJECT_ s_object, USER_OBJECT_ s_start, USER_OBJECT_ s_end, USER_OBJECT_ s_include_hidden_chars); 

  USER_OBJECT_
S_gtk_text_buffer_get_slice(USER_OBJECT_ s_object, USER_OBJECT_ s_start, USER_OBJECT_ s_end, USER_OBJECT_ s_include_hidden_chars); 

  USER_OBJECT_
S_gtk_text_buffer_insert_pixbuf(USER_OBJECT_ s_object, USER_OBJECT_ s_iter, USER_OBJECT_ s_pixbuf); 

  USER_OBJECT_
S_gtk_text_buffer_insert_child_anchor(USER_OBJECT_ s_object, USER_OBJECT_ s_iter, USER_OBJECT_ s_anchor); 

  USER_OBJECT_
S_gtk_text_buffer_create_child_anchor(USER_OBJECT_ s_object, USER_OBJECT_ s_iter); 

  USER_OBJECT_
S_gtk_text_buffer_create_mark(USER_OBJECT_ s_object, USER_OBJECT_ s_mark_name, USER_OBJECT_ s_where, USER_OBJECT_ s_left_gravity); 

  USER_OBJECT_
S_gtk_text_buffer_move_mark(USER_OBJECT_ s_object, USER_OBJECT_ s_mark, USER_OBJECT_ s_where); 

  USER_OBJECT_
S_gtk_text_buffer_delete_mark(USER_OBJECT_ s_object, USER_OBJECT_ s_mark); 

  USER_OBJECT_
S_gtk_text_buffer_get_mark(USER_OBJECT_ s_object, USER_OBJECT_ s_name); 

  USER_OBJECT_
S_gtk_text_buffer_move_mark_by_name(USER_OBJECT_ s_object, USER_OBJECT_ s_name, USER_OBJECT_ s_where); 

  USER_OBJECT_
S_gtk_text_buffer_delete_mark_by_name(USER_OBJECT_ s_object, USER_OBJECT_ s_name); 

  USER_OBJECT_
S_gtk_text_buffer_get_insert(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_text_buffer_get_selection_bound(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_text_buffer_place_cursor(USER_OBJECT_ s_object, USER_OBJECT_ s_where); 

  USER_OBJECT_
S_gtk_text_buffer_select_range(USER_OBJECT_ s_object, USER_OBJECT_ s_ins, USER_OBJECT_ s_bound); 

  USER_OBJECT_
S_gtk_text_buffer_apply_tag(USER_OBJECT_ s_object, USER_OBJECT_ s_tag, USER_OBJECT_ s_start, USER_OBJECT_ s_end); 

  USER_OBJECT_
S_gtk_text_buffer_remove_tag(USER_OBJECT_ s_object, USER_OBJECT_ s_tag, USER_OBJECT_ s_start, USER_OBJECT_ s_end); 

  USER_OBJECT_
S_gtk_text_buffer_apply_tag_by_name(USER_OBJECT_ s_object, USER_OBJECT_ s_name, USER_OBJECT_ s_start, USER_OBJECT_ s_end); 

  USER_OBJECT_
S_gtk_text_buffer_remove_tag_by_name(USER_OBJECT_ s_object, USER_OBJECT_ s_name, USER_OBJECT_ s_start, USER_OBJECT_ s_end); 

  USER_OBJECT_
S_gtk_text_buffer_remove_all_tags(USER_OBJECT_ s_object, USER_OBJECT_ s_start, USER_OBJECT_ s_end); 

  USER_OBJECT_
S_gtk_text_buffer_get_iter_at_line_offset(USER_OBJECT_ s_object, USER_OBJECT_ s_line_number, USER_OBJECT_ s_char_offset); 

  USER_OBJECT_
S_gtk_text_buffer_get_iter_at_line_index(USER_OBJECT_ s_object, USER_OBJECT_ s_line_number, USER_OBJECT_ s_byte_index); 

  USER_OBJECT_
S_gtk_text_buffer_get_iter_at_offset(USER_OBJECT_ s_object, USER_OBJECT_ s_char_offset); 

  USER_OBJECT_
S_gtk_text_buffer_get_iter_at_line(USER_OBJECT_ s_object, USER_OBJECT_ s_line_number); 

  USER_OBJECT_
S_gtk_text_buffer_get_start_iter(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_text_buffer_get_end_iter(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_text_buffer_get_bounds(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_text_buffer_get_iter_at_mark(USER_OBJECT_ s_object, USER_OBJECT_ s_mark); 

  USER_OBJECT_
S_gtk_text_buffer_get_iter_at_child_anchor(USER_OBJECT_ s_object, USER_OBJECT_ s_anchor); 

  USER_OBJECT_
S_gtk_text_buffer_get_modified(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_text_buffer_set_modified(USER_OBJECT_ s_object, USER_OBJECT_ s_setting); 

  USER_OBJECT_
S_gtk_text_buffer_add_selection_clipboard(USER_OBJECT_ s_object, USER_OBJECT_ s_clipboard); 

  USER_OBJECT_
S_gtk_text_buffer_remove_selection_clipboard(USER_OBJECT_ s_object, USER_OBJECT_ s_clipboard); 

  USER_OBJECT_
S_gtk_text_buffer_cut_clipboard(USER_OBJECT_ s_object, USER_OBJECT_ s_clipboard, USER_OBJECT_ s_default_editable); 

  USER_OBJECT_
S_gtk_text_buffer_copy_clipboard(USER_OBJECT_ s_object, USER_OBJECT_ s_clipboard); 

  USER_OBJECT_
S_gtk_text_buffer_paste_clipboard(USER_OBJECT_ s_object, USER_OBJECT_ s_clipboard, USER_OBJECT_ s_override_location, USER_OBJECT_ s_default_editable); 

  USER_OBJECT_
S_gtk_text_buffer_get_selection_bounds(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_text_buffer_delete_selection(USER_OBJECT_ s_object, USER_OBJECT_ s_interactive, USER_OBJECT_ s_default_editable); 

  USER_OBJECT_
S_gtk_text_buffer_begin_user_action(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_text_buffer_end_user_action(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_text_child_anchor_get_type(void); 

  USER_OBJECT_
S_gtk_text_child_anchor_new(void); 

  USER_OBJECT_
S_gtk_text_child_anchor_get_widgets(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_text_child_anchor_get_deleted(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_text_buffer_backspace(USER_OBJECT_ s_object, USER_OBJECT_ s_iter, USER_OBJECT_ s_interactive, USER_OBJECT_ s_default_editable); 

  USER_OBJECT_
S_gtk_text_iter_get_buffer(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_text_iter_copy(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_text_iter_free(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_text_iter_get_type(void); 

  USER_OBJECT_
S_gtk_text_iter_get_offset(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_text_iter_get_line(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_text_iter_get_line_offset(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_text_iter_get_line_index(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_text_iter_get_visible_line_offset(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_text_iter_get_visible_line_index(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_text_iter_get_char(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_text_iter_get_slice(USER_OBJECT_ s_object, USER_OBJECT_ s_end); 

  USER_OBJECT_
S_gtk_text_iter_get_text(USER_OBJECT_ s_object, USER_OBJECT_ s_end); 

  USER_OBJECT_
S_gtk_text_iter_get_visible_slice(USER_OBJECT_ s_object, USER_OBJECT_ s_end); 

  USER_OBJECT_
S_gtk_text_iter_get_visible_text(USER_OBJECT_ s_object, USER_OBJECT_ s_end); 

  USER_OBJECT_
S_gtk_text_iter_get_pixbuf(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_text_iter_get_marks(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_text_iter_get_child_anchor(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_text_iter_get_toggled_tags(USER_OBJECT_ s_object, USER_OBJECT_ s_toggled_on); 

  USER_OBJECT_
S_gtk_text_iter_begins_tag(USER_OBJECT_ s_object, USER_OBJECT_ s_tag); 

  USER_OBJECT_
S_gtk_text_iter_ends_tag(USER_OBJECT_ s_object, USER_OBJECT_ s_tag); 

  USER_OBJECT_
S_gtk_text_iter_toggles_tag(USER_OBJECT_ s_object, USER_OBJECT_ s_tag); 

  USER_OBJECT_
S_gtk_text_iter_has_tag(USER_OBJECT_ s_object, USER_OBJECT_ s_tag); 

  USER_OBJECT_
S_gtk_text_iter_get_tags(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_text_iter_editable(USER_OBJECT_ s_object, USER_OBJECT_ s_default_setting); 

  USER_OBJECT_
S_gtk_text_iter_can_insert(USER_OBJECT_ s_object, USER_OBJECT_ s_default_editability); 

  USER_OBJECT_
S_gtk_text_iter_starts_word(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_text_iter_ends_word(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_text_iter_inside_word(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_text_iter_starts_sentence(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_text_iter_ends_sentence(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_text_iter_inside_sentence(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_text_iter_starts_line(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_text_iter_ends_line(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_text_iter_is_cursor_position(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_text_iter_get_chars_in_line(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_text_iter_get_bytes_in_line(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_text_iter_get_attributes(USER_OBJECT_ s_object, USER_OBJECT_ s_values); 

  USER_OBJECT_
S_gtk_text_iter_get_language(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_text_iter_is_end(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_text_iter_is_start(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_text_iter_forward_char(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_text_iter_backward_char(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_text_iter_forward_chars(USER_OBJECT_ s_object, USER_OBJECT_ s_count); 

  USER_OBJECT_
S_gtk_text_iter_backward_chars(USER_OBJECT_ s_object, USER_OBJECT_ s_count); 

  USER_OBJECT_
S_gtk_text_iter_forward_line(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_text_iter_backward_line(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_text_iter_forward_lines(USER_OBJECT_ s_object, USER_OBJECT_ s_count); 

  USER_OBJECT_
S_gtk_text_iter_backward_lines(USER_OBJECT_ s_object, USER_OBJECT_ s_count); 

  USER_OBJECT_
S_gtk_text_iter_forward_word_end(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_text_iter_backward_word_start(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_text_iter_forward_word_ends(USER_OBJECT_ s_object, USER_OBJECT_ s_count); 

  USER_OBJECT_
S_gtk_text_iter_backward_word_starts(USER_OBJECT_ s_object, USER_OBJECT_ s_count); 

  USER_OBJECT_
S_gtk_text_iter_forward_visible_line(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_text_iter_backward_visible_line(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_text_iter_forward_visible_lines(USER_OBJECT_ s_object, USER_OBJECT_ s_count); 

  USER_OBJECT_
S_gtk_text_iter_backward_visible_lines(USER_OBJECT_ s_object, USER_OBJECT_ s_count); 

  USER_OBJECT_
S_gtk_text_iter_forward_visible_word_end(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_text_iter_backward_visible_word_start(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_text_iter_forward_visible_word_ends(USER_OBJECT_ s_object, USER_OBJECT_ s_count); 

  USER_OBJECT_
S_gtk_text_iter_backward_visible_word_starts(USER_OBJECT_ s_object, USER_OBJECT_ s_count); 

  USER_OBJECT_
S_gtk_text_iter_forward_sentence_end(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_text_iter_backward_sentence_start(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_text_iter_forward_sentence_ends(USER_OBJECT_ s_object, USER_OBJECT_ s_count); 

  USER_OBJECT_
S_gtk_text_iter_backward_sentence_starts(USER_OBJECT_ s_object, USER_OBJECT_ s_count); 

  USER_OBJECT_
S_gtk_text_iter_forward_cursor_position(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_text_iter_backward_cursor_position(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_text_iter_forward_cursor_positions(USER_OBJECT_ s_object, USER_OBJECT_ s_count); 

  USER_OBJECT_
S_gtk_text_iter_backward_cursor_positions(USER_OBJECT_ s_object, USER_OBJECT_ s_count); 

  USER_OBJECT_
S_gtk_text_iter_forward_visible_cursor_position(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_text_iter_backward_visible_cursor_position(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_text_iter_forward_visible_cursor_positions(USER_OBJECT_ s_object, USER_OBJECT_ s_count); 

  USER_OBJECT_
S_gtk_text_iter_backward_visible_cursor_positions(USER_OBJECT_ s_object, USER_OBJECT_ s_count); 

  USER_OBJECT_
S_gtk_text_iter_set_offset(USER_OBJECT_ s_object, USER_OBJECT_ s_char_offset); 

  USER_OBJECT_
S_gtk_text_iter_set_line(USER_OBJECT_ s_object, USER_OBJECT_ s_line_number); 

  USER_OBJECT_
S_gtk_text_iter_set_line_offset(USER_OBJECT_ s_object, USER_OBJECT_ s_char_on_line); 

  USER_OBJECT_
S_gtk_text_iter_set_line_index(USER_OBJECT_ s_object, USER_OBJECT_ s_byte_on_line); 

  USER_OBJECT_
S_gtk_text_iter_forward_to_end(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_text_iter_forward_to_line_end(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_text_iter_set_visible_line_offset(USER_OBJECT_ s_object, USER_OBJECT_ s_char_on_line); 

  USER_OBJECT_
S_gtk_text_iter_set_visible_line_index(USER_OBJECT_ s_object, USER_OBJECT_ s_byte_on_line); 

  USER_OBJECT_
S_gtk_text_iter_forward_to_tag_toggle(USER_OBJECT_ s_object, USER_OBJECT_ s_tag); 

  USER_OBJECT_
S_gtk_text_iter_backward_to_tag_toggle(USER_OBJECT_ s_object, USER_OBJECT_ s_tag); 

  USER_OBJECT_
S_gtk_text_iter_forward_find_char(USER_OBJECT_ s_object, USER_OBJECT_ s_pred, USER_OBJECT_ s_user_data, USER_OBJECT_ s_limit); 

  USER_OBJECT_
S_gtk_text_iter_backward_find_char(USER_OBJECT_ s_object, USER_OBJECT_ s_pred, USER_OBJECT_ s_user_data, USER_OBJECT_ s_limit); 

  USER_OBJECT_
S_gtk_text_iter_forward_search(USER_OBJECT_ s_object, USER_OBJECT_ s_str, USER_OBJECT_ s_flags, USER_OBJECT_ s_limit); 

  USER_OBJECT_
S_gtk_text_iter_backward_search(USER_OBJECT_ s_object, USER_OBJECT_ s_str, USER_OBJECT_ s_flags, USER_OBJECT_ s_limit); 

  USER_OBJECT_
S_gtk_text_iter_equal(USER_OBJECT_ s_object, USER_OBJECT_ s_rhs); 

  USER_OBJECT_
S_gtk_text_iter_compare(USER_OBJECT_ s_object, USER_OBJECT_ s_rhs); 

  USER_OBJECT_
S_gtk_text_iter_in_range(USER_OBJECT_ s_object, USER_OBJECT_ s_start, USER_OBJECT_ s_end); 

  USER_OBJECT_
S_gtk_text_iter_order(USER_OBJECT_ s_object, USER_OBJECT_ s_second); 

  USER_OBJECT_
S_gtk_text_mark_get_type(void); 

  USER_OBJECT_
S_gtk_text_mark_set_visible(USER_OBJECT_ s_object, USER_OBJECT_ s_setting); 

  USER_OBJECT_
S_gtk_text_mark_get_visible(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_text_mark_get_name(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_text_mark_get_deleted(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_text_mark_get_buffer(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_text_mark_get_left_gravity(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_text_tag_get_type(void); 

  USER_OBJECT_
S_gtk_text_tag_new(USER_OBJECT_ s_name); 

  USER_OBJECT_
S_gtk_text_tag_get_priority(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_text_tag_set_priority(USER_OBJECT_ s_object, USER_OBJECT_ s_priority); 

  USER_OBJECT_
S_gtk_text_tag_event(USER_OBJECT_ s_object, USER_OBJECT_ s_event_object, USER_OBJECT_ s_event, USER_OBJECT_ s_iter); 

  USER_OBJECT_
S_gtk_text_attributes_new(void); 

  USER_OBJECT_
S_gtk_text_attributes_copy(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_text_attributes_copy_values(USER_OBJECT_ s_object, USER_OBJECT_ s_dest); 

  USER_OBJECT_
S_gtk_text_attributes_unref(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_text_attributes_ref(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_text_attributes_get_type(void); 

  USER_OBJECT_
S_gtk_text_tag_table_get_type(void); 

  USER_OBJECT_
S_gtk_text_tag_table_new(void); 

  USER_OBJECT_
S_gtk_text_tag_table_add(USER_OBJECT_ s_object, USER_OBJECT_ s_tag); 

  USER_OBJECT_
S_gtk_text_tag_table_remove(USER_OBJECT_ s_object, USER_OBJECT_ s_tag); 

  USER_OBJECT_
S_gtk_text_tag_table_lookup(USER_OBJECT_ s_object, USER_OBJECT_ s_name); 

  USER_OBJECT_
S_gtk_text_tag_table_foreach(USER_OBJECT_ s_object, USER_OBJECT_ s_func, USER_OBJECT_ s_data); 

  USER_OBJECT_
S_gtk_text_tag_table_get_size(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_text_view_get_type(void); 

  USER_OBJECT_
S_gtk_text_view_new(void); 

  USER_OBJECT_
S_gtk_text_view_new_with_buffer(USER_OBJECT_ s_buffer); 

  USER_OBJECT_
S_gtk_text_view_set_buffer(USER_OBJECT_ s_object, USER_OBJECT_ s_buffer); 

  USER_OBJECT_
S_gtk_text_view_get_buffer(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_text_view_scroll_to_iter(USER_OBJECT_ s_object, USER_OBJECT_ s_iter, USER_OBJECT_ s_within_margin, USER_OBJECT_ s_use_align, USER_OBJECT_ s_xalign, USER_OBJECT_ s_yalign); 

  USER_OBJECT_
S_gtk_text_view_scroll_to_mark(USER_OBJECT_ s_object, USER_OBJECT_ s_mark, USER_OBJECT_ s_within_margin, USER_OBJECT_ s_use_align, USER_OBJECT_ s_xalign, USER_OBJECT_ s_yalign); 

  USER_OBJECT_
S_gtk_text_view_scroll_mark_onscreen(USER_OBJECT_ s_object, USER_OBJECT_ s_mark); 

  USER_OBJECT_
S_gtk_text_view_move_mark_onscreen(USER_OBJECT_ s_object, USER_OBJECT_ s_mark); 

  USER_OBJECT_
S_gtk_text_view_place_cursor_onscreen(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_text_view_get_visible_rect(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_text_view_set_cursor_visible(USER_OBJECT_ s_object, USER_OBJECT_ s_setting); 

  USER_OBJECT_
S_gtk_text_view_get_cursor_visible(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_text_view_get_iter_location(USER_OBJECT_ s_object, USER_OBJECT_ s_iter); 

  USER_OBJECT_
S_gtk_text_view_get_iter_at_location(USER_OBJECT_ s_object, USER_OBJECT_ s_x, USER_OBJECT_ s_y); 

  USER_OBJECT_
S_gtk_text_view_get_iter_at_position(USER_OBJECT_ s_object, USER_OBJECT_ s_x, USER_OBJECT_ s_y); 

  USER_OBJECT_
S_gtk_text_view_get_line_yrange(USER_OBJECT_ s_object, USER_OBJECT_ s_iter); 

  USER_OBJECT_
S_gtk_text_view_get_line_at_y(USER_OBJECT_ s_object, USER_OBJECT_ s_y); 

  USER_OBJECT_
S_gtk_text_view_buffer_to_window_coords(USER_OBJECT_ s_object, USER_OBJECT_ s_win, USER_OBJECT_ s_buffer_x, USER_OBJECT_ s_buffer_y); 

  USER_OBJECT_
S_gtk_text_view_window_to_buffer_coords(USER_OBJECT_ s_object, USER_OBJECT_ s_win, USER_OBJECT_ s_window_x, USER_OBJECT_ s_window_y); 

  USER_OBJECT_
S_gtk_text_view_get_window(USER_OBJECT_ s_object, USER_OBJECT_ s_win); 

  USER_OBJECT_
S_gtk_text_view_get_window_type(USER_OBJECT_ s_object, USER_OBJECT_ s_window); 

  USER_OBJECT_
S_gtk_text_view_set_border_window_size(USER_OBJECT_ s_object, USER_OBJECT_ s_type, USER_OBJECT_ s_size); 

  USER_OBJECT_
S_gtk_text_view_get_border_window_size(USER_OBJECT_ s_object, USER_OBJECT_ s_type); 

  USER_OBJECT_
S_gtk_text_view_forward_display_line(USER_OBJECT_ s_object, USER_OBJECT_ s_iter); 

  USER_OBJECT_
S_gtk_text_view_backward_display_line(USER_OBJECT_ s_object, USER_OBJECT_ s_iter); 

  USER_OBJECT_
S_gtk_text_view_forward_display_line_end(USER_OBJECT_ s_object, USER_OBJECT_ s_iter); 

  USER_OBJECT_
S_gtk_text_view_backward_display_line_start(USER_OBJECT_ s_object, USER_OBJECT_ s_iter); 

  USER_OBJECT_
S_gtk_text_view_starts_display_line(USER_OBJECT_ s_object, USER_OBJECT_ s_iter); 

  USER_OBJECT_
S_gtk_text_view_move_visually(USER_OBJECT_ s_object, USER_OBJECT_ s_iter, USER_OBJECT_ s_count); 

  USER_OBJECT_
S_gtk_text_view_add_child_at_anchor(USER_OBJECT_ s_object, USER_OBJECT_ s_child, USER_OBJECT_ s_anchor); 

  USER_OBJECT_
S_gtk_text_view_add_child_in_window(USER_OBJECT_ s_object, USER_OBJECT_ s_child, USER_OBJECT_ s_which_window, USER_OBJECT_ s_xpos, USER_OBJECT_ s_ypos); 

  USER_OBJECT_
S_gtk_text_view_move_child(USER_OBJECT_ s_object, USER_OBJECT_ s_child, USER_OBJECT_ s_xpos, USER_OBJECT_ s_ypos); 

  USER_OBJECT_
S_gtk_text_view_set_wrap_mode(USER_OBJECT_ s_object, USER_OBJECT_ s_wrap_mode); 

  USER_OBJECT_
S_gtk_text_view_get_wrap_mode(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_text_view_set_editable(USER_OBJECT_ s_object, USER_OBJECT_ s_setting); 

  USER_OBJECT_
S_gtk_text_view_get_editable(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_text_view_set_overwrite(USER_OBJECT_ s_object, USER_OBJECT_ s_overwrite); 

  USER_OBJECT_
S_gtk_text_view_get_overwrite(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_text_view_set_accepts_tab(USER_OBJECT_ s_object, USER_OBJECT_ s_accepts_tab); 

  USER_OBJECT_
S_gtk_text_view_get_accepts_tab(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_text_view_set_pixels_above_lines(USER_OBJECT_ s_object, USER_OBJECT_ s_pixels_above_lines); 

  USER_OBJECT_
S_gtk_text_view_get_pixels_above_lines(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_text_view_set_pixels_below_lines(USER_OBJECT_ s_object, USER_OBJECT_ s_pixels_below_lines); 

  USER_OBJECT_
S_gtk_text_view_get_pixels_below_lines(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_text_view_set_pixels_inside_wrap(USER_OBJECT_ s_object, USER_OBJECT_ s_pixels_inside_wrap); 

  USER_OBJECT_
S_gtk_text_view_get_pixels_inside_wrap(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_text_view_set_justification(USER_OBJECT_ s_object, USER_OBJECT_ s_justification); 

  USER_OBJECT_
S_gtk_text_view_get_justification(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_text_view_set_left_margin(USER_OBJECT_ s_object, USER_OBJECT_ s_left_margin); 

  USER_OBJECT_
S_gtk_text_view_get_left_margin(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_text_view_set_right_margin(USER_OBJECT_ s_object, USER_OBJECT_ s_right_margin); 

  USER_OBJECT_
S_gtk_text_view_get_right_margin(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_text_view_set_indent(USER_OBJECT_ s_object, USER_OBJECT_ s_indent); 

  USER_OBJECT_
S_gtk_text_view_get_indent(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_text_view_set_tabs(USER_OBJECT_ s_object, USER_OBJECT_ s_tabs); 

  USER_OBJECT_
S_gtk_text_view_get_tabs(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_text_view_get_default_attributes(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_tips_query_get_type(void); 

  USER_OBJECT_
S_gtk_tips_query_new(void); 

  USER_OBJECT_
S_gtk_tips_query_start_query(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_tips_query_stop_query(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_tips_query_set_caller(USER_OBJECT_ s_object, USER_OBJECT_ s_caller); 

  USER_OBJECT_
S_gtk_tips_query_set_labels(USER_OBJECT_ s_object, USER_OBJECT_ s_label_inactive, USER_OBJECT_ s_label_no_tip); 

  USER_OBJECT_
S_gtk_toggle_action_get_type(void); 

  USER_OBJECT_
S_gtk_toggle_action_new(USER_OBJECT_ s_name, USER_OBJECT_ s_label, USER_OBJECT_ s_tooltip, USER_OBJECT_ s_stock_id); 

  USER_OBJECT_
S_gtk_toggle_action_toggled(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_toggle_action_set_active(USER_OBJECT_ s_object, USER_OBJECT_ s_is_active); 

  USER_OBJECT_
S_gtk_toggle_action_get_active(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_toggle_action_set_draw_as_radio(USER_OBJECT_ s_object, USER_OBJECT_ s_draw_as_radio); 

  USER_OBJECT_
S_gtk_toggle_action_get_draw_as_radio(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_toggle_button_get_type(void); 

  USER_OBJECT_
S_gtk_toggle_button_new(void); 

  USER_OBJECT_
S_gtk_toggle_button_new_with_label(USER_OBJECT_ s_label); 

  USER_OBJECT_
S_gtk_toggle_button_new_with_mnemonic(USER_OBJECT_ s_label); 

  USER_OBJECT_
S_gtk_toggle_button_set_mode(USER_OBJECT_ s_object, USER_OBJECT_ s_draw_indicator); 

  USER_OBJECT_
S_gtk_toggle_button_get_mode(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_toggle_button_set_active(USER_OBJECT_ s_object, USER_OBJECT_ s_is_active); 

  USER_OBJECT_
S_gtk_toggle_button_get_active(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_toggle_button_toggled(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_toggle_button_set_inconsistent(USER_OBJECT_ s_object, USER_OBJECT_ s_setting); 

  USER_OBJECT_
S_gtk_toggle_button_get_inconsistent(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_toggle_button_set_state(USER_OBJECT_ s_object, USER_OBJECT_ s_is_active); 

  USER_OBJECT_
S_gtk_toggle_tool_button_get_type(void); 

  USER_OBJECT_
S_gtk_toggle_tool_button_new(void); 

  USER_OBJECT_
S_gtk_toggle_tool_button_new_from_stock(USER_OBJECT_ s_stock_id); 

  USER_OBJECT_
S_gtk_toggle_tool_button_set_active(USER_OBJECT_ s_object, USER_OBJECT_ s_is_active); 

  USER_OBJECT_
S_gtk_toggle_tool_button_get_active(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_toolbar_get_type(void); 

  USER_OBJECT_
S_gtk_toolbar_new(void); 

  USER_OBJECT_
S_gtk_toolbar_insert(USER_OBJECT_ s_object, USER_OBJECT_ s_item, USER_OBJECT_ s_pos); 

  USER_OBJECT_
S_gtk_toolbar_get_item_index(USER_OBJECT_ s_object, USER_OBJECT_ s_item); 

  USER_OBJECT_
S_gtk_toolbar_get_n_items(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_toolbar_get_nth_item(USER_OBJECT_ s_object, USER_OBJECT_ s_n); 

  USER_OBJECT_
S_gtk_toolbar_get_drop_index(USER_OBJECT_ s_object, USER_OBJECT_ s_x, USER_OBJECT_ s_y); 

  USER_OBJECT_
S_gtk_toolbar_set_drop_highlight_item(USER_OBJECT_ s_object, USER_OBJECT_ s_tool_item, USER_OBJECT_ s_index); 

  USER_OBJECT_
S_gtk_toolbar_set_show_arrow(USER_OBJECT_ s_object, USER_OBJECT_ s_show_arrow); 

  USER_OBJECT_
S_gtk_toolbar_get_show_arrow(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_toolbar_get_relief_style(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_toolbar_append_item(USER_OBJECT_ s_object, USER_OBJECT_ s_text, USER_OBJECT_ s_tooltip_text, USER_OBJECT_ s_tooltip_private_text, USER_OBJECT_ s_icon, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data); 

  USER_OBJECT_
S_gtk_toolbar_prepend_item(USER_OBJECT_ s_object, USER_OBJECT_ s_text, USER_OBJECT_ s_tooltip_text, USER_OBJECT_ s_tooltip_private_text, USER_OBJECT_ s_icon, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data); 

  USER_OBJECT_
S_gtk_toolbar_insert_item(USER_OBJECT_ s_object, USER_OBJECT_ s_text, USER_OBJECT_ s_tooltip_text, USER_OBJECT_ s_tooltip_private_text, USER_OBJECT_ s_icon, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data, USER_OBJECT_ s_position); 

  USER_OBJECT_
S_gtk_toolbar_insert_stock(USER_OBJECT_ s_object, USER_OBJECT_ s_stock_id, USER_OBJECT_ s_tooltip_text, USER_OBJECT_ s_tooltip_private_text, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data, USER_OBJECT_ s_position); 

  USER_OBJECT_
S_gtk_toolbar_append_space(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_toolbar_prepend_space(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_toolbar_insert_space(USER_OBJECT_ s_object, USER_OBJECT_ s_position); 

  USER_OBJECT_
S_gtk_toolbar_remove_space(USER_OBJECT_ s_object, USER_OBJECT_ s_position); 

  USER_OBJECT_
S_gtk_toolbar_append_element(USER_OBJECT_ s_object, USER_OBJECT_ s_type, USER_OBJECT_ s_widget, USER_OBJECT_ s_text, USER_OBJECT_ s_tooltip_text, USER_OBJECT_ s_tooltip_private_text, USER_OBJECT_ s_icon, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data); 

  USER_OBJECT_
S_gtk_toolbar_prepend_element(USER_OBJECT_ s_object, USER_OBJECT_ s_type, USER_OBJECT_ s_widget, USER_OBJECT_ s_text, USER_OBJECT_ s_tooltip_text, USER_OBJECT_ s_tooltip_private_text, USER_OBJECT_ s_icon, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data); 

  USER_OBJECT_
S_gtk_toolbar_insert_element(USER_OBJECT_ s_object, USER_OBJECT_ s_type, USER_OBJECT_ s_widget, USER_OBJECT_ s_text, USER_OBJECT_ s_tooltip_text, USER_OBJECT_ s_tooltip_private_text, USER_OBJECT_ s_icon, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data, USER_OBJECT_ s_position); 

  USER_OBJECT_
S_gtk_toolbar_append_widget(USER_OBJECT_ s_object, USER_OBJECT_ s_widget, USER_OBJECT_ s_tooltip_text, USER_OBJECT_ s_tooltip_private_text); 

  USER_OBJECT_
S_gtk_toolbar_prepend_widget(USER_OBJECT_ s_object, USER_OBJECT_ s_widget, USER_OBJECT_ s_tooltip_text, USER_OBJECT_ s_tooltip_private_text); 

  USER_OBJECT_
S_gtk_toolbar_insert_widget(USER_OBJECT_ s_object, USER_OBJECT_ s_widget, USER_OBJECT_ s_tooltip_text, USER_OBJECT_ s_tooltip_private_text, USER_OBJECT_ s_position); 

  USER_OBJECT_
S_gtk_toolbar_set_orientation(USER_OBJECT_ s_object, USER_OBJECT_ s_orientation); 

  USER_OBJECT_
S_gtk_toolbar_set_style(USER_OBJECT_ s_object, USER_OBJECT_ s_style); 

  USER_OBJECT_
S_gtk_toolbar_set_icon_size(USER_OBJECT_ s_object, USER_OBJECT_ s_icon_size); 

  USER_OBJECT_
S_gtk_toolbar_set_tooltips(USER_OBJECT_ s_object, USER_OBJECT_ s_enable); 

  USER_OBJECT_
S_gtk_toolbar_unset_style(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_toolbar_unset_icon_size(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_toolbar_get_orientation(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_toolbar_get_style(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_toolbar_get_icon_size(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_toolbar_get_tooltips(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_tool_button_get_type(void); 

  USER_OBJECT_
S_gtk_tool_button_new(USER_OBJECT_ s_icon_widget, USER_OBJECT_ s_label); 

  USER_OBJECT_
S_gtk_tool_button_new_from_stock(USER_OBJECT_ s_stock_id); 

  USER_OBJECT_
S_gtk_tool_button_set_label(USER_OBJECT_ s_object, USER_OBJECT_ s_label); 

  USER_OBJECT_
S_gtk_tool_button_get_label(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_tool_button_set_use_underline(USER_OBJECT_ s_object, USER_OBJECT_ s_use_underline); 

  USER_OBJECT_
S_gtk_tool_button_get_use_underline(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_tool_button_set_stock_id(USER_OBJECT_ s_object, USER_OBJECT_ s_stock_id); 

  USER_OBJECT_
S_gtk_tool_button_set_icon_name(USER_OBJECT_ s_object, USER_OBJECT_ s_icon_name); 

  USER_OBJECT_
S_gtk_tool_button_get_icon_name(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_tool_button_get_stock_id(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_tool_button_set_icon_widget(USER_OBJECT_ s_object, USER_OBJECT_ s_icon_widget); 

  USER_OBJECT_
S_gtk_tool_button_get_icon_widget(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_tool_button_set_label_widget(USER_OBJECT_ s_object, USER_OBJECT_ s_label_widget); 

  USER_OBJECT_
S_gtk_tool_button_get_label_widget(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_tool_item_get_type(void); 

  USER_OBJECT_
S_gtk_tool_item_new(void); 

  USER_OBJECT_
S_gtk_tool_item_set_homogeneous(USER_OBJECT_ s_object, USER_OBJECT_ s_homogeneous); 

  USER_OBJECT_
S_gtk_tool_item_get_homogeneous(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_tool_item_set_expand(USER_OBJECT_ s_object, USER_OBJECT_ s_expand); 

  USER_OBJECT_
S_gtk_tool_item_get_expand(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_tool_item_set_tooltip(USER_OBJECT_ s_object, USER_OBJECT_ s_tooltips, USER_OBJECT_ s_tip_text, USER_OBJECT_ s_tip_private); 

  USER_OBJECT_
S_gtk_tool_item_set_use_drag_window(USER_OBJECT_ s_object, USER_OBJECT_ s_use_drag_window); 

  USER_OBJECT_
S_gtk_tool_item_get_use_drag_window(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_tool_item_set_visible_horizontal(USER_OBJECT_ s_object, USER_OBJECT_ s_visible_horizontal); 

  USER_OBJECT_
S_gtk_tool_item_get_visible_horizontal(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_tool_item_set_visible_vertical(USER_OBJECT_ s_object, USER_OBJECT_ s_visible_vertical); 

  USER_OBJECT_
S_gtk_tool_item_get_visible_vertical(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_tool_item_set_is_important(USER_OBJECT_ s_object, USER_OBJECT_ s_is_important); 

  USER_OBJECT_
S_gtk_tool_item_get_is_important(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_tool_item_get_icon_size(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_tool_item_get_orientation(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_tool_item_get_toolbar_style(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_tool_item_get_relief_style(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_tool_item_retrieve_proxy_menu_item(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_tool_item_set_proxy_menu_item(USER_OBJECT_ s_object, USER_OBJECT_ s_menu_item_id, USER_OBJECT_ s_menu_item); 

  USER_OBJECT_
S_gtk_tool_item_get_proxy_menu_item(USER_OBJECT_ s_object, USER_OBJECT_ s_menu_item_id); 

  USER_OBJECT_
S_gtk_tool_item_rebuild_menu(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_tooltips_get_type(void); 

  USER_OBJECT_
S_gtk_tooltips_new(void); 

  USER_OBJECT_
S_gtk_tooltips_enable(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_tooltips_disable(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_tooltips_set_delay(USER_OBJECT_ s_object, USER_OBJECT_ s_delay); 

  USER_OBJECT_
S_gtk_tooltips_set_tip(USER_OBJECT_ s_object, USER_OBJECT_ s_widget, USER_OBJECT_ s_tip_text, USER_OBJECT_ s_tip_private); 

  USER_OBJECT_
S_gtk_tooltips_data_get(USER_OBJECT_ s_widget); 

  USER_OBJECT_
S_gtk_tooltips_force_window(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_tooltips_get_info_from_tip_window(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_tree_drag_source_get_type(void); 

  USER_OBJECT_
S_gtk_tree_drag_source_row_draggable(USER_OBJECT_ s_object, USER_OBJECT_ s_path); 

  USER_OBJECT_
S_gtk_tree_drag_source_drag_data_delete(USER_OBJECT_ s_object, USER_OBJECT_ s_path); 

  USER_OBJECT_
S_gtk_tree_drag_source_drag_data_get(USER_OBJECT_ s_object, USER_OBJECT_ s_path); 

  USER_OBJECT_
S_gtk_tree_drag_dest_get_type(void); 

  USER_OBJECT_
S_gtk_tree_drag_dest_drag_data_received(USER_OBJECT_ s_object, USER_OBJECT_ s_dest, USER_OBJECT_ s_selection_data); 

  USER_OBJECT_
S_gtk_tree_drag_dest_row_drop_possible(USER_OBJECT_ s_object, USER_OBJECT_ s_dest_path, USER_OBJECT_ s_selection_data); 

  USER_OBJECT_
S_gtk_tree_set_row_drag_data(USER_OBJECT_ s_object, USER_OBJECT_ s_tree_model, USER_OBJECT_ s_path); 

  USER_OBJECT_
S_gtk_tree_get_row_drag_data(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_tree_path_new(void); 

  USER_OBJECT_
S_gtk_tree_path_new_from_string(USER_OBJECT_ s_path); 

  USER_OBJECT_
S_gtk_tree_path_to_string(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_tree_path_new_first(void); 

  USER_OBJECT_
S_gtk_tree_path_append_index(USER_OBJECT_ s_object, USER_OBJECT_ s_index); 

  USER_OBJECT_
S_gtk_tree_path_prepend_index(USER_OBJECT_ s_object, USER_OBJECT_ s_index); 

  USER_OBJECT_
S_gtk_tree_path_get_depth(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_tree_path_free(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_tree_path_copy(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_tree_path_compare(USER_OBJECT_ s_object, USER_OBJECT_ s_b); 

  USER_OBJECT_
S_gtk_tree_path_next(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_tree_path_prev(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_tree_path_up(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_tree_path_down(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_tree_path_is_ancestor(USER_OBJECT_ s_object, USER_OBJECT_ s_descendant); 

  USER_OBJECT_
S_gtk_tree_path_is_descendant(USER_OBJECT_ s_object, USER_OBJECT_ s_ancestor); 

  USER_OBJECT_
S_gtk_tree_row_reference_get_type(void); 

  USER_OBJECT_
S_gtk_tree_row_reference_new(USER_OBJECT_ s_model, USER_OBJECT_ s_path); 

  USER_OBJECT_
S_gtk_tree_row_reference_new_proxy(USER_OBJECT_ s_proxy, USER_OBJECT_ s_model, USER_OBJECT_ s_path); 

  USER_OBJECT_
S_gtk_tree_row_reference_get_path(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_tree_row_reference_get_model(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_tree_row_reference_valid(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_tree_row_reference_copy(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_tree_row_reference_free(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_tree_row_reference_inserted(USER_OBJECT_ s_proxy, USER_OBJECT_ s_path); 

  USER_OBJECT_
S_gtk_tree_row_reference_deleted(USER_OBJECT_ s_proxy, USER_OBJECT_ s_path); 

  USER_OBJECT_
S_gtk_tree_row_reference_reordered(USER_OBJECT_ s_proxy, USER_OBJECT_ s_path, USER_OBJECT_ s_iter, USER_OBJECT_ s_new_order); 

  USER_OBJECT_
S_gtk_tree_iter_copy(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_tree_iter_free(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_tree_iter_get_type(void); 

  USER_OBJECT_
S_gtk_tree_model_get_type(void); 

  USER_OBJECT_
S_gtk_tree_model_get_flags(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_tree_model_get_n_columns(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_tree_model_get_column_type(USER_OBJECT_ s_object, USER_OBJECT_ s_index); 

  USER_OBJECT_
S_gtk_tree_model_get_iter(USER_OBJECT_ s_object, USER_OBJECT_ s_path); 

  USER_OBJECT_
S_gtk_tree_model_get_iter_from_string(USER_OBJECT_ s_object, USER_OBJECT_ s_path_string); 

  USER_OBJECT_
S_gtk_tree_model_get_string_from_iter(USER_OBJECT_ s_object, USER_OBJECT_ s_iter); 

  USER_OBJECT_
S_gtk_tree_model_get_iter_root(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_tree_model_get_iter_first(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_tree_model_get_path(USER_OBJECT_ s_object, USER_OBJECT_ s_iter); 

  USER_OBJECT_
S_gtk_tree_model_get_value(USER_OBJECT_ s_object, USER_OBJECT_ s_iter, USER_OBJECT_ s_column); 

  USER_OBJECT_
S_gtk_tree_model_iter_next(USER_OBJECT_ s_object, USER_OBJECT_ s_iter); 

  USER_OBJECT_
S_gtk_tree_model_iter_children(USER_OBJECT_ s_object, USER_OBJECT_ s_parent); 

  USER_OBJECT_
S_gtk_tree_model_iter_has_child(USER_OBJECT_ s_object, USER_OBJECT_ s_iter); 

  USER_OBJECT_
S_gtk_tree_model_iter_n_children(USER_OBJECT_ s_object, USER_OBJECT_ s_iter); 

  USER_OBJECT_
S_gtk_tree_model_iter_nth_child(USER_OBJECT_ s_object, USER_OBJECT_ s_parent, USER_OBJECT_ s_n); 

  USER_OBJECT_
S_gtk_tree_model_iter_parent(USER_OBJECT_ s_object, USER_OBJECT_ s_child); 

  USER_OBJECT_
S_gtk_tree_model_ref_node(USER_OBJECT_ s_object, USER_OBJECT_ s_iter); 

  USER_OBJECT_
S_gtk_tree_model_unref_node(USER_OBJECT_ s_object, USER_OBJECT_ s_iter); 

  USER_OBJECT_
S_gtk_tree_model_foreach(USER_OBJECT_ s_object, USER_OBJECT_ s_func, USER_OBJECT_ s_user_data); 

  USER_OBJECT_
S_gtk_tree_model_row_changed(USER_OBJECT_ s_object, USER_OBJECT_ s_path, USER_OBJECT_ s_iter); 

  USER_OBJECT_
S_gtk_tree_model_row_inserted(USER_OBJECT_ s_object, USER_OBJECT_ s_path, USER_OBJECT_ s_iter); 

  USER_OBJECT_
S_gtk_tree_model_row_has_child_toggled(USER_OBJECT_ s_object, USER_OBJECT_ s_path, USER_OBJECT_ s_iter); 

  USER_OBJECT_
S_gtk_tree_model_row_deleted(USER_OBJECT_ s_object, USER_OBJECT_ s_path); 

  USER_OBJECT_
S_gtk_tree_model_rows_reordered(USER_OBJECT_ s_object, USER_OBJECT_ s_path, USER_OBJECT_ s_iter, USER_OBJECT_ s_new_order); 

  USER_OBJECT_
S_gtk_tree_model_filter_get_type(void); 

  USER_OBJECT_
S_gtk_tree_model_filter_new(USER_OBJECT_ s_child_model, USER_OBJECT_ s_root); 

  USER_OBJECT_
S_gtk_tree_model_filter_set_visible_func(USER_OBJECT_ s_object, USER_OBJECT_ s_func, USER_OBJECT_ s_data); 

  USER_OBJECT_
S_gtk_tree_model_filter_set_modify_func(USER_OBJECT_ s_object, USER_OBJECT_ s_types, USER_OBJECT_ s_func, USER_OBJECT_ s_data); 

  USER_OBJECT_
S_gtk_tree_model_filter_set_visible_column(USER_OBJECT_ s_object, USER_OBJECT_ s_column); 

  USER_OBJECT_
S_gtk_tree_model_filter_get_model(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_tree_model_filter_convert_child_iter_to_iter(USER_OBJECT_ s_object, USER_OBJECT_ s_child_iter); 

  USER_OBJECT_
S_gtk_tree_model_filter_convert_iter_to_child_iter(USER_OBJECT_ s_object, USER_OBJECT_ s_filter_iter); 

  USER_OBJECT_
S_gtk_tree_model_filter_convert_child_path_to_path(USER_OBJECT_ s_object, USER_OBJECT_ s_child_path); 

  USER_OBJECT_
S_gtk_tree_model_filter_convert_path_to_child_path(USER_OBJECT_ s_object, USER_OBJECT_ s_filter_path); 

  USER_OBJECT_
S_gtk_tree_model_filter_refilter(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_tree_model_filter_clear_cache(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_tree_model_sort_get_type(void); 

  USER_OBJECT_
S_gtk_tree_model_sort_new_with_model(USER_OBJECT_ s_child_model); 

  USER_OBJECT_
S_gtk_tree_model_sort_get_model(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_tree_model_sort_convert_child_path_to_path(USER_OBJECT_ s_object, USER_OBJECT_ s_child_path); 

  USER_OBJECT_
S_gtk_tree_model_sort_convert_child_iter_to_iter(USER_OBJECT_ s_object, USER_OBJECT_ s_child_iter); 

  USER_OBJECT_
S_gtk_tree_model_sort_convert_path_to_child_path(USER_OBJECT_ s_object, USER_OBJECT_ s_sorted_path); 

  USER_OBJECT_
S_gtk_tree_model_sort_convert_iter_to_child_iter(USER_OBJECT_ s_object, USER_OBJECT_ s_sorted_iter); 

  USER_OBJECT_
S_gtk_tree_model_sort_reset_default_sort_func(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_tree_model_sort_clear_cache(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_tree_model_sort_iter_is_valid(USER_OBJECT_ s_object, USER_OBJECT_ s_iter); 

  USER_OBJECT_
S_gtk_tree_selection_get_type(void); 

  USER_OBJECT_
S_gtk_tree_selection_set_mode(USER_OBJECT_ s_object, USER_OBJECT_ s_type); 

  USER_OBJECT_
S_gtk_tree_selection_get_mode(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_tree_selection_set_select_function(USER_OBJECT_ s_object, USER_OBJECT_ s_func, USER_OBJECT_ s_data); 

  USER_OBJECT_
S_gtk_tree_selection_get_user_data(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_tree_selection_get_tree_view(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_tree_selection_get_selected(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_tree_selection_get_selected_rows(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_tree_selection_count_selected_rows(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_tree_selection_selected_foreach(USER_OBJECT_ s_object, USER_OBJECT_ s_func, USER_OBJECT_ s_data); 

  USER_OBJECT_
S_gtk_tree_selection_select_path(USER_OBJECT_ s_object, USER_OBJECT_ s_path); 

  USER_OBJECT_
S_gtk_tree_selection_unselect_path(USER_OBJECT_ s_object, USER_OBJECT_ s_path); 

  USER_OBJECT_
S_gtk_tree_selection_select_iter(USER_OBJECT_ s_object, USER_OBJECT_ s_iter); 

  USER_OBJECT_
S_gtk_tree_selection_unselect_iter(USER_OBJECT_ s_object, USER_OBJECT_ s_iter); 

  USER_OBJECT_
S_gtk_tree_selection_path_is_selected(USER_OBJECT_ s_object, USER_OBJECT_ s_path); 

  USER_OBJECT_
S_gtk_tree_selection_iter_is_selected(USER_OBJECT_ s_object, USER_OBJECT_ s_iter); 

  USER_OBJECT_
S_gtk_tree_selection_select_all(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_tree_selection_unselect_all(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_tree_selection_select_range(USER_OBJECT_ s_object, USER_OBJECT_ s_start_path, USER_OBJECT_ s_end_path); 

  USER_OBJECT_
S_gtk_tree_selection_unselect_range(USER_OBJECT_ s_object, USER_OBJECT_ s_start_path, USER_OBJECT_ s_end_path); 

  USER_OBJECT_
S_gtk_tree_sortable_get_type(void); 

  USER_OBJECT_
S_gtk_tree_sortable_sort_column_changed(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_tree_sortable_get_sort_column_id(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_tree_sortable_set_sort_column_id(USER_OBJECT_ s_object, USER_OBJECT_ s_sort_column_id, USER_OBJECT_ s_order); 

  USER_OBJECT_
S_gtk_tree_sortable_set_sort_func(USER_OBJECT_ s_object, USER_OBJECT_ s_sort_column_id, USER_OBJECT_ s_sort_func, USER_OBJECT_ s_user_data); 

  USER_OBJECT_
S_gtk_tree_sortable_set_default_sort_func(USER_OBJECT_ s_object, USER_OBJECT_ s_sort_func, USER_OBJECT_ s_user_data); 

  USER_OBJECT_
S_gtk_tree_sortable_has_default_sort_func(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_tree_store_get_type(void); 

  USER_OBJECT_
S_gtk_tree_store_newv(USER_OBJECT_ s_types); 

  USER_OBJECT_
S_gtk_tree_store_set_column_types(USER_OBJECT_ s_object, USER_OBJECT_ s_types); 

  USER_OBJECT_
S_gtk_tree_store_remove(USER_OBJECT_ s_object, USER_OBJECT_ s_iter); 

  USER_OBJECT_
S_gtk_tree_store_insert(USER_OBJECT_ s_object, USER_OBJECT_ s_parent, USER_OBJECT_ s_position); 

  USER_OBJECT_
S_gtk_tree_store_insert_before(USER_OBJECT_ s_object, USER_OBJECT_ s_parent, USER_OBJECT_ s_sibling); 

  USER_OBJECT_
S_gtk_tree_store_insert_after(USER_OBJECT_ s_object, USER_OBJECT_ s_parent, USER_OBJECT_ s_sibling); 

  USER_OBJECT_
S_gtk_tree_store_prepend(USER_OBJECT_ s_object, USER_OBJECT_ s_parent); 

  USER_OBJECT_
S_gtk_tree_store_append(USER_OBJECT_ s_object, USER_OBJECT_ s_parent); 

  USER_OBJECT_
S_gtk_tree_store_is_ancestor(USER_OBJECT_ s_object, USER_OBJECT_ s_iter, USER_OBJECT_ s_descendant); 

  USER_OBJECT_
S_gtk_tree_store_iter_depth(USER_OBJECT_ s_object, USER_OBJECT_ s_iter); 

  USER_OBJECT_
S_gtk_tree_store_clear(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_tree_store_iter_is_valid(USER_OBJECT_ s_object, USER_OBJECT_ s_iter); 

  USER_OBJECT_
S_gtk_tree_store_reorder(USER_OBJECT_ s_object, USER_OBJECT_ s_parent, USER_OBJECT_ s_new_order); 

  USER_OBJECT_
S_gtk_tree_store_swap(USER_OBJECT_ s_object, USER_OBJECT_ s_a, USER_OBJECT_ s_b); 

  USER_OBJECT_
S_gtk_tree_store_move_after(USER_OBJECT_ s_object, USER_OBJECT_ s_iter, USER_OBJECT_ s_position); 

  USER_OBJECT_
S_gtk_tree_store_move_before(USER_OBJECT_ s_object, USER_OBJECT_ s_iter, USER_OBJECT_ s_position); 

  USER_OBJECT_
S_gtk_tree_view_column_queue_resize(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_tree_view_get_type(void); 

  USER_OBJECT_
S_gtk_tree_view_new(void); 

  USER_OBJECT_
S_gtk_tree_view_new_with_model(USER_OBJECT_ s_model); 

  USER_OBJECT_
S_gtk_tree_view_get_model(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_tree_view_set_model(USER_OBJECT_ s_object, USER_OBJECT_ s_model); 

  USER_OBJECT_
S_gtk_tree_view_get_selection(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_tree_view_get_hadjustment(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_tree_view_set_hadjustment(USER_OBJECT_ s_object, USER_OBJECT_ s_adjustment); 

  USER_OBJECT_
S_gtk_tree_view_get_vadjustment(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_tree_view_set_vadjustment(USER_OBJECT_ s_object, USER_OBJECT_ s_adjustment); 

  USER_OBJECT_
S_gtk_tree_view_get_headers_visible(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_tree_view_set_headers_visible(USER_OBJECT_ s_object, USER_OBJECT_ s_headers_visible); 

  USER_OBJECT_
S_gtk_tree_view_columns_autosize(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_tree_view_set_headers_clickable(USER_OBJECT_ s_object, USER_OBJECT_ s_active); 

  USER_OBJECT_
S_gtk_tree_view_set_rules_hint(USER_OBJECT_ s_object, USER_OBJECT_ s_setting); 

  USER_OBJECT_
S_gtk_tree_view_get_rules_hint(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_tree_view_append_column(USER_OBJECT_ s_object, USER_OBJECT_ s_column); 

  USER_OBJECT_
S_gtk_tree_view_remove_column(USER_OBJECT_ s_object, USER_OBJECT_ s_column); 

  USER_OBJECT_
S_gtk_tree_view_insert_column(USER_OBJECT_ s_object, USER_OBJECT_ s_column, USER_OBJECT_ s_position); 

  USER_OBJECT_
S_gtk_tree_view_insert_column_with_data_func(USER_OBJECT_ s_object, USER_OBJECT_ s_position, USER_OBJECT_ s_title, USER_OBJECT_ s_cell, USER_OBJECT_ s_func, USER_OBJECT_ s_data); 

  USER_OBJECT_
S_gtk_tree_view_get_column(USER_OBJECT_ s_object, USER_OBJECT_ s_n); 

  USER_OBJECT_
S_gtk_tree_view_get_columns(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_tree_view_move_column_after(USER_OBJECT_ s_object, USER_OBJECT_ s_column, USER_OBJECT_ s_base_column); 

  USER_OBJECT_
S_gtk_tree_view_set_expander_column(USER_OBJECT_ s_object, USER_OBJECT_ s_column); 

  USER_OBJECT_
S_gtk_tree_view_get_expander_column(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_tree_view_set_column_drag_function(USER_OBJECT_ s_object, USER_OBJECT_ s_func, USER_OBJECT_ s_user_data); 

  USER_OBJECT_
S_gtk_tree_view_scroll_to_point(USER_OBJECT_ s_object, USER_OBJECT_ s_tree_x, USER_OBJECT_ s_tree_y); 

  USER_OBJECT_
S_gtk_tree_view_scroll_to_cell(USER_OBJECT_ s_object, USER_OBJECT_ s_path, USER_OBJECT_ s_column, USER_OBJECT_ s_use_align, USER_OBJECT_ s_row_align, USER_OBJECT_ s_col_align); 

  USER_OBJECT_
S_gtk_tree_view_row_activated(USER_OBJECT_ s_object, USER_OBJECT_ s_path, USER_OBJECT_ s_column); 

  USER_OBJECT_
S_gtk_tree_view_expand_all(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_tree_view_collapse_all(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_tree_view_expand_to_path(USER_OBJECT_ s_object, USER_OBJECT_ s_path); 

  USER_OBJECT_
S_gtk_tree_view_expand_row(USER_OBJECT_ s_object, USER_OBJECT_ s_path, USER_OBJECT_ s_open_all); 

  USER_OBJECT_
S_gtk_tree_view_collapse_row(USER_OBJECT_ s_object, USER_OBJECT_ s_path); 

  USER_OBJECT_
S_gtk_tree_view_map_expanded_rows(USER_OBJECT_ s_object, USER_OBJECT_ s_func, USER_OBJECT_ s_data); 

  USER_OBJECT_
S_gtk_tree_view_row_expanded(USER_OBJECT_ s_object, USER_OBJECT_ s_path); 

  USER_OBJECT_
S_gtk_tree_view_set_reorderable(USER_OBJECT_ s_object, USER_OBJECT_ s_reorderable); 

  USER_OBJECT_
S_gtk_tree_view_get_reorderable(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_tree_view_set_cursor(USER_OBJECT_ s_object, USER_OBJECT_ s_path, USER_OBJECT_ s_focus_column, USER_OBJECT_ s_start_editing); 

  USER_OBJECT_
S_gtk_tree_view_set_cursor_on_cell(USER_OBJECT_ s_object, USER_OBJECT_ s_path, USER_OBJECT_ s_focus_column, USER_OBJECT_ s_focus_cell, USER_OBJECT_ s_start_editing); 

  USER_OBJECT_
S_gtk_tree_view_get_cursor(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_tree_view_get_bin_window(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_tree_view_get_path_at_pos(USER_OBJECT_ s_object, USER_OBJECT_ s_x, USER_OBJECT_ s_y); 

  USER_OBJECT_
S_gtk_tree_view_get_cell_area(USER_OBJECT_ s_object, USER_OBJECT_ s_path, USER_OBJECT_ s_column); 

  USER_OBJECT_
S_gtk_tree_view_get_background_area(USER_OBJECT_ s_object, USER_OBJECT_ s_path, USER_OBJECT_ s_column); 

  USER_OBJECT_
S_gtk_tree_view_get_visible_rect(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_tree_view_get_visible_range(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_tree_view_widget_to_tree_coords(USER_OBJECT_ s_object, USER_OBJECT_ s_wx, USER_OBJECT_ s_wy); 

  USER_OBJECT_
S_gtk_tree_view_tree_to_widget_coords(USER_OBJECT_ s_object, USER_OBJECT_ s_tx, USER_OBJECT_ s_ty); 

  USER_OBJECT_
S_gtk_tree_view_enable_model_drag_source(USER_OBJECT_ s_object, USER_OBJECT_ s_start_button_mask, USER_OBJECT_ s_targets, USER_OBJECT_ s_actions); 

  USER_OBJECT_
S_gtk_tree_view_enable_model_drag_dest(USER_OBJECT_ s_object, USER_OBJECT_ s_targets, USER_OBJECT_ s_actions); 

  USER_OBJECT_
S_gtk_tree_view_unset_rows_drag_source(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_tree_view_unset_rows_drag_dest(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_tree_view_set_drag_dest_row(USER_OBJECT_ s_object, USER_OBJECT_ s_path, USER_OBJECT_ s_pos); 

  USER_OBJECT_
S_gtk_tree_view_get_drag_dest_row(USER_OBJECT_ s_object, USER_OBJECT_ s_path); 

  USER_OBJECT_
S_gtk_tree_view_get_dest_row_at_pos(USER_OBJECT_ s_object, USER_OBJECT_ s_drag_x, USER_OBJECT_ s_drag_y); 

  USER_OBJECT_
S_gtk_tree_view_create_row_drag_icon(USER_OBJECT_ s_object, USER_OBJECT_ s_path); 

  USER_OBJECT_
S_gtk_tree_view_set_enable_search(USER_OBJECT_ s_object, USER_OBJECT_ s_enable_search); 

  USER_OBJECT_
S_gtk_tree_view_get_enable_search(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_tree_view_get_search_column(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_tree_view_set_search_column(USER_OBJECT_ s_object, USER_OBJECT_ s_column); 

  USER_OBJECT_
S_gtk_tree_view_get_search_equal_func(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_tree_view_set_search_equal_func(USER_OBJECT_ s_object, USER_OBJECT_ s_search_equal_func, USER_OBJECT_ s_search_user_data); 

  USER_OBJECT_
S_gtk_tree_view_set_destroy_count_func(USER_OBJECT_ s_object, USER_OBJECT_ s_func, USER_OBJECT_ s_data); 

  USER_OBJECT_
S_gtk_tree_view_set_fixed_height_mode(USER_OBJECT_ s_object, USER_OBJECT_ s_enable); 

  USER_OBJECT_
S_gtk_tree_view_get_fixed_height_mode(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_tree_view_set_hover_selection(USER_OBJECT_ s_object, USER_OBJECT_ s_hover); 

  USER_OBJECT_
S_gtk_tree_view_get_hover_selection(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_tree_view_set_hover_expand(USER_OBJECT_ s_object, USER_OBJECT_ s_expand); 

  USER_OBJECT_
S_gtk_tree_view_get_hover_expand(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_tree_view_get_row_separator_func(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_tree_view_set_row_separator_func(USER_OBJECT_ s_object, USER_OBJECT_ s_func, USER_OBJECT_ s_data); 

  USER_OBJECT_
S_gtk_tree_view_column_get_type(void); 

  USER_OBJECT_
S_gtk_tree_view_column_new(void); 

  USER_OBJECT_
S_gtk_tree_view_column_pack_start(USER_OBJECT_ s_object, USER_OBJECT_ s_cell, USER_OBJECT_ s_expand); 

  USER_OBJECT_
S_gtk_tree_view_column_pack_end(USER_OBJECT_ s_object, USER_OBJECT_ s_cell, USER_OBJECT_ s_expand); 

  USER_OBJECT_
S_gtk_tree_view_column_clear(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_tree_view_column_get_cell_renderers(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_tree_view_column_add_attribute(USER_OBJECT_ s_object, USER_OBJECT_ s_cell_renderer, USER_OBJECT_ s_attribute, USER_OBJECT_ s_column); 

  USER_OBJECT_
S_gtk_tree_view_column_set_cell_data_func(USER_OBJECT_ s_object, USER_OBJECT_ s_cell_renderer, USER_OBJECT_ s_func, USER_OBJECT_ s_func_data); 

  USER_OBJECT_
S_gtk_tree_view_column_clear_attributes(USER_OBJECT_ s_object, USER_OBJECT_ s_cell_renderer); 

  USER_OBJECT_
S_gtk_tree_view_column_set_spacing(USER_OBJECT_ s_object, USER_OBJECT_ s_spacing); 

  USER_OBJECT_
S_gtk_tree_view_column_get_spacing(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_tree_view_column_set_visible(USER_OBJECT_ s_object, USER_OBJECT_ s_visible); 

  USER_OBJECT_
S_gtk_tree_view_column_get_visible(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_tree_view_column_set_resizable(USER_OBJECT_ s_object, USER_OBJECT_ s_resizable); 

  USER_OBJECT_
S_gtk_tree_view_column_get_resizable(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_tree_view_column_set_sizing(USER_OBJECT_ s_object, USER_OBJECT_ s_type); 

  USER_OBJECT_
S_gtk_tree_view_column_get_sizing(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_tree_view_column_get_width(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_tree_view_column_get_fixed_width(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_tree_view_column_set_fixed_width(USER_OBJECT_ s_object, USER_OBJECT_ s_fixed_width); 

  USER_OBJECT_
S_gtk_tree_view_column_set_min_width(USER_OBJECT_ s_object, USER_OBJECT_ s_min_width); 

  USER_OBJECT_
S_gtk_tree_view_column_get_min_width(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_tree_view_column_set_max_width(USER_OBJECT_ s_object, USER_OBJECT_ s_max_width); 

  USER_OBJECT_
S_gtk_tree_view_column_get_max_width(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_tree_view_column_clicked(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_tree_view_column_set_title(USER_OBJECT_ s_object, USER_OBJECT_ s_title); 

  USER_OBJECT_
S_gtk_tree_view_column_get_title(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_tree_view_column_set_expand(USER_OBJECT_ s_object, USER_OBJECT_ s_expand); 

  USER_OBJECT_
S_gtk_tree_view_column_get_expand(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_tree_view_column_set_clickable(USER_OBJECT_ s_object, USER_OBJECT_ s_active); 

  USER_OBJECT_
S_gtk_tree_view_column_get_clickable(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_tree_view_column_set_widget(USER_OBJECT_ s_object, USER_OBJECT_ s_widget); 

  USER_OBJECT_
S_gtk_tree_view_column_get_widget(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_tree_view_column_set_alignment(USER_OBJECT_ s_object, USER_OBJECT_ s_xalign); 

  USER_OBJECT_
S_gtk_tree_view_column_get_alignment(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_tree_view_column_set_reorderable(USER_OBJECT_ s_object, USER_OBJECT_ s_reorderable); 

  USER_OBJECT_
S_gtk_tree_view_column_get_reorderable(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_tree_view_column_set_sort_column_id(USER_OBJECT_ s_object, USER_OBJECT_ s_sort_column_id); 

  USER_OBJECT_
S_gtk_tree_view_column_get_sort_column_id(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_tree_view_column_set_sort_indicator(USER_OBJECT_ s_object, USER_OBJECT_ s_setting); 

  USER_OBJECT_
S_gtk_tree_view_column_get_sort_indicator(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_tree_view_column_set_sort_order(USER_OBJECT_ s_object, USER_OBJECT_ s_order); 

  USER_OBJECT_
S_gtk_tree_view_column_get_sort_order(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_tree_view_column_cell_set_cell_data(USER_OBJECT_ s_object, USER_OBJECT_ s_tree_model, USER_OBJECT_ s_iter, USER_OBJECT_ s_is_expander, USER_OBJECT_ s_is_expanded); 

  USER_OBJECT_
S_gtk_tree_view_column_cell_get_size(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_tree_view_column_cell_is_visible(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_tree_view_column_focus_cell(USER_OBJECT_ s_object, USER_OBJECT_ s_cell); 

  USER_OBJECT_
S_gtk_tree_view_column_cell_get_position(USER_OBJECT_ s_object, USER_OBJECT_ s_cell_renderer); 

  USER_OBJECT_
S_gtk_ui_manager_get_type(void); 

  USER_OBJECT_
S_gtk_ui_manager_new(void); 

  USER_OBJECT_
S_gtk_ui_manager_set_add_tearoffs(USER_OBJECT_ s_object, USER_OBJECT_ s_add_tearoffs); 

  USER_OBJECT_
S_gtk_ui_manager_get_add_tearoffs(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_ui_manager_insert_action_group(USER_OBJECT_ s_object, USER_OBJECT_ s_action_group, USER_OBJECT_ s_pos); 

  USER_OBJECT_
S_gtk_ui_manager_remove_action_group(USER_OBJECT_ s_object, USER_OBJECT_ s_action_group); 

  USER_OBJECT_
S_gtk_ui_manager_get_accel_group(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_ui_manager_get_widget(USER_OBJECT_ s_object, USER_OBJECT_ s_path); 

  USER_OBJECT_
S_gtk_ui_manager_get_toplevels(USER_OBJECT_ s_object, USER_OBJECT_ s_types); 

  USER_OBJECT_
S_gtk_ui_manager_get_action(USER_OBJECT_ s_object, USER_OBJECT_ s_path); 

  USER_OBJECT_
S_gtk_ui_manager_add_ui_from_string(USER_OBJECT_ s_object, USER_OBJECT_ s_buffer, USER_OBJECT_ s_length); 

  USER_OBJECT_
S_gtk_ui_manager_add_ui_from_file(USER_OBJECT_ s_object, USER_OBJECT_ s_filename); 

  USER_OBJECT_
S_gtk_ui_manager_add_ui(USER_OBJECT_ s_object, USER_OBJECT_ s_merge_id, USER_OBJECT_ s_path, USER_OBJECT_ s_name, USER_OBJECT_ s_action, USER_OBJECT_ s_type, USER_OBJECT_ s_top); 

  USER_OBJECT_
S_gtk_ui_manager_remove_ui(USER_OBJECT_ s_object, USER_OBJECT_ s_merge_id); 

  USER_OBJECT_
S_gtk_ui_manager_get_ui(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_ui_manager_ensure_update(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_ui_manager_new_merge_id(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_vbutton_box_get_type(void); 

  USER_OBJECT_
S_gtk_vbutton_box_new(void); 

  USER_OBJECT_
S_gtk_vbutton_box_get_spacing_default(void); 

  USER_OBJECT_
S_gtk_vbutton_box_set_spacing_default(USER_OBJECT_ s_spacing); 

  USER_OBJECT_
S_gtk_vbutton_box_get_layout_default(void); 

  USER_OBJECT_
S_gtk_vbutton_box_set_layout_default(USER_OBJECT_ s_layout); 

  USER_OBJECT_
S_gtk_vbox_get_type(void); 

  USER_OBJECT_
S_gtk_vbox_new(USER_OBJECT_ s_homogeneous, USER_OBJECT_ s_spacing); 

  USER_OBJECT_
S_gtk_viewport_get_type(void); 

  USER_OBJECT_
S_gtk_viewport_new(USER_OBJECT_ s_hadjustment, USER_OBJECT_ s_vadjustment); 

  USER_OBJECT_
S_gtk_viewport_get_hadjustment(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_viewport_get_vadjustment(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_viewport_set_hadjustment(USER_OBJECT_ s_object, USER_OBJECT_ s_adjustment); 

  USER_OBJECT_
S_gtk_viewport_set_vadjustment(USER_OBJECT_ s_object, USER_OBJECT_ s_adjustment); 

  USER_OBJECT_
S_gtk_viewport_set_shadow_type(USER_OBJECT_ s_object, USER_OBJECT_ s_type); 

  USER_OBJECT_
S_gtk_viewport_get_shadow_type(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_vpaned_get_type(void); 

  USER_OBJECT_
S_gtk_vpaned_new(void); 

  USER_OBJECT_
S_gtk_vruler_get_type(void); 

  USER_OBJECT_
S_gtk_vruler_new(void); 

  USER_OBJECT_
S_gtk_vscale_get_type(void); 

  USER_OBJECT_
S_gtk_vscale_new(USER_OBJECT_ s_adjustment); 

  USER_OBJECT_
S_gtk_vscale_new_with_range(USER_OBJECT_ s_min, USER_OBJECT_ s_max, USER_OBJECT_ s_step); 

  USER_OBJECT_
S_gtk_vscrollbar_get_type(void); 

  USER_OBJECT_
S_gtk_vscrollbar_new(USER_OBJECT_ s_adjustment); 

  USER_OBJECT_
S_gtk_vseparator_get_type(void); 

  USER_OBJECT_
S_gtk_vseparator_new(void); 

  USER_OBJECT_
S_gtk_widget_get_type(void); 

  USER_OBJECT_
S_gtk_widget_ref(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_widget_unref(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_widget_destroy(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_widget_unparent(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_widget_show(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_widget_show_now(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_widget_hide(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_widget_show_all(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_widget_hide_all(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_widget_set_no_show_all(USER_OBJECT_ s_object, USER_OBJECT_ s_no_show_all); 

  USER_OBJECT_
S_gtk_widget_get_no_show_all(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_widget_map(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_widget_unmap(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_widget_realize(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_widget_unrealize(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_widget_queue_draw(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_widget_queue_draw_area(USER_OBJECT_ s_object, USER_OBJECT_ s_x, USER_OBJECT_ s_y, USER_OBJECT_ s_width, USER_OBJECT_ s_height); 

  USER_OBJECT_
S_gtk_widget_queue_clear(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_widget_queue_clear_area(USER_OBJECT_ s_object, USER_OBJECT_ s_x, USER_OBJECT_ s_y, USER_OBJECT_ s_width, USER_OBJECT_ s_height); 

  USER_OBJECT_
S_gtk_widget_queue_resize(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_widget_queue_resize_no_redraw(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_widget_draw(USER_OBJECT_ s_object, USER_OBJECT_ s_area); 

  USER_OBJECT_
S_gtk_widget_size_request(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_widget_size_allocate(USER_OBJECT_ s_object, USER_OBJECT_ s_allocation); 

  USER_OBJECT_
S_gtk_widget_get_child_requisition(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_widget_add_accelerator(USER_OBJECT_ s_object, USER_OBJECT_ s_accel_signal, USER_OBJECT_ s_accel_group, USER_OBJECT_ s_accel_key, USER_OBJECT_ s_accel_mods, USER_OBJECT_ s_accel_flags); 

  USER_OBJECT_
S_gtk_widget_remove_accelerator(USER_OBJECT_ s_object, USER_OBJECT_ s_accel_group, USER_OBJECT_ s_accel_key, USER_OBJECT_ s_accel_mods); 

  USER_OBJECT_
S_gtk_widget_set_accel_path(USER_OBJECT_ s_object, USER_OBJECT_ s_accel_path, USER_OBJECT_ s_accel_group); 

  USER_OBJECT_
S_gtk_widget_list_accel_closures(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_widget_can_activate_accel(USER_OBJECT_ s_object, USER_OBJECT_ s_signal_id); 

  USER_OBJECT_
S_gtk_widget_mnemonic_activate(USER_OBJECT_ s_object, USER_OBJECT_ s_group_cycling); 

  USER_OBJECT_
S_gtk_widget_event(USER_OBJECT_ s_object, USER_OBJECT_ s_event); 

  USER_OBJECT_
S_gtk_widget_send_expose(USER_OBJECT_ s_object, USER_OBJECT_ s_event); 

  USER_OBJECT_
S_gtk_widget_activate(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_widget_set_scroll_adjustments(USER_OBJECT_ s_object, USER_OBJECT_ s_hadjustment, USER_OBJECT_ s_vadjustment); 

  USER_OBJECT_
S_gtk_widget_reparent(USER_OBJECT_ s_object, USER_OBJECT_ s_new_parent); 

  USER_OBJECT_
S_gtk_widget_intersect(USER_OBJECT_ s_object, USER_OBJECT_ s_area, USER_OBJECT_ s_intersection); 

  USER_OBJECT_
S_gtk_widget_region_intersect(USER_OBJECT_ s_object, USER_OBJECT_ s_region); 

  USER_OBJECT_
S_gtk_widget_freeze_child_notify(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_widget_child_notify(USER_OBJECT_ s_object, USER_OBJECT_ s_child_property); 

  USER_OBJECT_
S_gtk_widget_thaw_child_notify(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_widget_is_focus(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_widget_grab_focus(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_widget_grab_default(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_widget_set_name(USER_OBJECT_ s_object, USER_OBJECT_ s_name); 

  USER_OBJECT_
S_gtk_widget_get_name(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_widget_set_state(USER_OBJECT_ s_object, USER_OBJECT_ s_state); 

  USER_OBJECT_
S_gtk_widget_set_sensitive(USER_OBJECT_ s_object, USER_OBJECT_ s_sensitive); 

  USER_OBJECT_
S_gtk_widget_set_app_paintable(USER_OBJECT_ s_object, USER_OBJECT_ s_app_paintable); 

  USER_OBJECT_
S_gtk_widget_set_double_buffered(USER_OBJECT_ s_object, USER_OBJECT_ s_double_buffered); 

  USER_OBJECT_
S_gtk_widget_set_redraw_on_allocate(USER_OBJECT_ s_object, USER_OBJECT_ s_redraw_on_allocate); 

  USER_OBJECT_
S_gtk_widget_set_parent(USER_OBJECT_ s_object, USER_OBJECT_ s_parent); 

  USER_OBJECT_
S_gtk_widget_set_parent_window(USER_OBJECT_ s_object, USER_OBJECT_ s_parent_window); 

  USER_OBJECT_
S_gtk_widget_set_child_visible(USER_OBJECT_ s_object, USER_OBJECT_ s_is_visible); 

  USER_OBJECT_
S_gtk_widget_get_child_visible(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_widget_get_parent(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_widget_get_parent_window(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_widget_child_focus(USER_OBJECT_ s_object, USER_OBJECT_ s_direction); 

  USER_OBJECT_
S_gtk_widget_set_size_request(USER_OBJECT_ s_object, USER_OBJECT_ s_width, USER_OBJECT_ s_height); 

  USER_OBJECT_
S_gtk_widget_get_size_request(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_widget_set_uposition(USER_OBJECT_ s_object, USER_OBJECT_ s_x, USER_OBJECT_ s_y); 

  USER_OBJECT_
S_gtk_widget_set_usize(USER_OBJECT_ s_object, USER_OBJECT_ s_width, USER_OBJECT_ s_height); 

  USER_OBJECT_
S_gtk_widget_set_events(USER_OBJECT_ s_object, USER_OBJECT_ s_events); 

  USER_OBJECT_
S_gtk_widget_add_events(USER_OBJECT_ s_object, USER_OBJECT_ s_events); 

  USER_OBJECT_
S_gtk_widget_set_extension_events(USER_OBJECT_ s_object, USER_OBJECT_ s_mode); 

  USER_OBJECT_
S_gtk_widget_get_extension_events(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_widget_get_toplevel(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_widget_get_ancestor(USER_OBJECT_ s_object, USER_OBJECT_ s_widget_type); 

  USER_OBJECT_
S_gtk_widget_get_colormap(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_widget_get_visual(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_widget_get_screen(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_widget_has_screen(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_widget_get_display(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_widget_get_root_window(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_widget_get_settings(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_widget_get_clipboard(USER_OBJECT_ s_object, USER_OBJECT_ s_selection); 

  USER_OBJECT_
S_gtk_widget_get_accessible(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_widget_set_colormap(USER_OBJECT_ s_object, USER_OBJECT_ s_colormap); 

  USER_OBJECT_
S_gtk_widget_get_events(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_widget_get_pointer(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_widget_is_ancestor(USER_OBJECT_ s_object, USER_OBJECT_ s_ancestor); 

  USER_OBJECT_
S_gtk_widget_translate_coordinates(USER_OBJECT_ s_object, USER_OBJECT_ s_dest_widget, USER_OBJECT_ s_src_x, USER_OBJECT_ s_src_y); 

  USER_OBJECT_
S_gtk_widget_hide_on_delete(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_widget_set_style(USER_OBJECT_ s_object, USER_OBJECT_ s_style); 

  USER_OBJECT_
S_gtk_widget_ensure_style(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_widget_get_style(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_widget_modify_style(USER_OBJECT_ s_object, USER_OBJECT_ s_style); 

  USER_OBJECT_
S_gtk_widget_get_modifier_style(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_widget_modify_fg(USER_OBJECT_ s_object, USER_OBJECT_ s_state, USER_OBJECT_ s_color); 

  USER_OBJECT_
S_gtk_widget_modify_bg(USER_OBJECT_ s_object, USER_OBJECT_ s_state, USER_OBJECT_ s_color); 

  USER_OBJECT_
S_gtk_widget_modify_text(USER_OBJECT_ s_object, USER_OBJECT_ s_state, USER_OBJECT_ s_color); 

  USER_OBJECT_
S_gtk_widget_modify_base(USER_OBJECT_ s_object, USER_OBJECT_ s_state, USER_OBJECT_ s_color); 

  USER_OBJECT_
S_gtk_widget_modify_font(USER_OBJECT_ s_object, USER_OBJECT_ s_font_desc); 

  USER_OBJECT_
S_gtk_widget_create_pango_context(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_widget_get_pango_context(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_widget_create_pango_layout(USER_OBJECT_ s_object, USER_OBJECT_ s_text); 

  USER_OBJECT_
S_gtk_widget_render_icon(USER_OBJECT_ s_object, USER_OBJECT_ s_stock_id, USER_OBJECT_ s_size, USER_OBJECT_ s_detail); 

  USER_OBJECT_
S_gtk_widget_set_composite_name(USER_OBJECT_ s_object, USER_OBJECT_ s_name); 

  USER_OBJECT_
S_gtk_widget_get_composite_name(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_widget_reset_rc_styles(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_widget_push_colormap(USER_OBJECT_ s_cmap); 

  USER_OBJECT_
S_gtk_widget_push_composite_child(void); 

  USER_OBJECT_
S_gtk_widget_pop_composite_child(void); 

  USER_OBJECT_
S_gtk_widget_pop_colormap(void); 

  USER_OBJECT_
S_gtk_widget_class_install_style_property(USER_OBJECT_ s_klass, USER_OBJECT_ s_pspec); 

  USER_OBJECT_
S_gtk_widget_class_find_style_property(USER_OBJECT_ s_klass, USER_OBJECT_ s_property_name); 

  USER_OBJECT_
S_gtk_widget_class_list_style_properties(USER_OBJECT_ s_klass); 

  USER_OBJECT_
S_gtk_widget_style_get_property(USER_OBJECT_ s_object, USER_OBJECT_ s_property_name); 

  USER_OBJECT_
S_gtk_widget_get_default_style(void); 

  USER_OBJECT_
S_gtk_widget_set_default_colormap(USER_OBJECT_ s_colormap); 

  USER_OBJECT_
S_gtk_widget_get_default_colormap(void); 

  USER_OBJECT_
S_gtk_widget_get_default_visual(void); 

  USER_OBJECT_
S_gtk_widget_set_direction(USER_OBJECT_ s_object, USER_OBJECT_ s_dir); 

  USER_OBJECT_
S_gtk_widget_get_direction(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_widget_set_default_direction(USER_OBJECT_ s_dir); 

  USER_OBJECT_
S_gtk_widget_get_default_direction(void); 

  USER_OBJECT_
S_gtk_widget_shape_combine_mask(USER_OBJECT_ s_object, USER_OBJECT_ s_shape_mask, USER_OBJECT_ s_offset_x, USER_OBJECT_ s_offset_y); 

  USER_OBJECT_
S_gtk_widget_reset_shapes(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_widget_path(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_widget_class_path(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_widget_list_mnemonic_labels(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_widget_add_mnemonic_label(USER_OBJECT_ s_object, USER_OBJECT_ s_label); 

  USER_OBJECT_
S_gtk_widget_remove_mnemonic_label(USER_OBJECT_ s_object, USER_OBJECT_ s_label); 

  USER_OBJECT_
S_gtk_requisition_get_type(void); 

  USER_OBJECT_
S_gtk_requisition_copy(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_requisition_free(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_window_get_type(void); 

  USER_OBJECT_
S_gtk_window_new(USER_OBJECT_ s_type); 

  USER_OBJECT_
S_gtk_window_set_title(USER_OBJECT_ s_object, USER_OBJECT_ s_title); 

  USER_OBJECT_
S_gtk_window_get_title(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_window_set_wmclass(USER_OBJECT_ s_object, USER_OBJECT_ s_wmclass_name, USER_OBJECT_ s_wmclass_class); 

  USER_OBJECT_
S_gtk_window_set_role(USER_OBJECT_ s_object, USER_OBJECT_ s_role); 

  USER_OBJECT_
S_gtk_window_get_role(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_window_add_accel_group(USER_OBJECT_ s_object, USER_OBJECT_ s_accel_group); 

  USER_OBJECT_
S_gtk_window_remove_accel_group(USER_OBJECT_ s_object, USER_OBJECT_ s_accel_group); 

  USER_OBJECT_
S_gtk_window_set_position(USER_OBJECT_ s_object, USER_OBJECT_ s_position); 

  USER_OBJECT_
S_gtk_window_activate_focus(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_window_set_focus(USER_OBJECT_ s_object, USER_OBJECT_ s_focus); 

  USER_OBJECT_
S_gtk_window_get_focus(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_window_set_default(USER_OBJECT_ s_object, USER_OBJECT_ s_default_widget); 

  USER_OBJECT_
S_gtk_window_activate_default(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_window_set_transient_for(USER_OBJECT_ s_object, USER_OBJECT_ s_parent); 

  USER_OBJECT_
S_gtk_window_get_transient_for(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_window_set_type_hint(USER_OBJECT_ s_object, USER_OBJECT_ s_hint); 

  USER_OBJECT_
S_gtk_window_get_type_hint(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_window_set_skip_taskbar_hint(USER_OBJECT_ s_object, USER_OBJECT_ s_setting); 

  USER_OBJECT_
S_gtk_window_get_skip_taskbar_hint(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_window_set_skip_pager_hint(USER_OBJECT_ s_object, USER_OBJECT_ s_setting); 

  USER_OBJECT_
S_gtk_window_get_skip_pager_hint(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_window_set_urgency_hint(USER_OBJECT_ s_object, USER_OBJECT_ s_setting); 

  USER_OBJECT_
S_gtk_window_get_urgency_hint(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_window_set_accept_focus(USER_OBJECT_ s_object, USER_OBJECT_ s_setting); 

  USER_OBJECT_
S_gtk_window_get_accept_focus(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_window_set_destroy_with_parent(USER_OBJECT_ s_object, USER_OBJECT_ s_setting); 

  USER_OBJECT_
S_gtk_window_get_destroy_with_parent(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_window_set_resizable(USER_OBJECT_ s_object, USER_OBJECT_ s_resizable); 

  USER_OBJECT_
S_gtk_window_get_resizable(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_window_set_gravity(USER_OBJECT_ s_object, USER_OBJECT_ s_gravity); 

  USER_OBJECT_
S_gtk_window_get_gravity(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_window_set_screen(USER_OBJECT_ s_object, USER_OBJECT_ s_screen); 

  USER_OBJECT_
S_gtk_window_get_screen(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_window_is_active(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_window_has_toplevel_focus(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_window_set_has_frame(USER_OBJECT_ s_object, USER_OBJECT_ s_setting); 

  USER_OBJECT_
S_gtk_window_get_has_frame(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_window_set_frame_dimensions(USER_OBJECT_ s_object, USER_OBJECT_ s_left, USER_OBJECT_ s_top, USER_OBJECT_ s_right, USER_OBJECT_ s_bottom); 

  USER_OBJECT_
S_gtk_window_get_frame_dimensions(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_window_set_decorated(USER_OBJECT_ s_object, USER_OBJECT_ s_setting); 

  USER_OBJECT_
S_gtk_window_get_decorated(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_window_set_icon_list(USER_OBJECT_ s_object, USER_OBJECT_ s_list); 

  USER_OBJECT_
S_gtk_window_get_icon_list(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_window_set_icon(USER_OBJECT_ s_object, USER_OBJECT_ s_icon); 

  USER_OBJECT_
S_gtk_window_set_icon_from_file(USER_OBJECT_ s_object, USER_OBJECT_ s_filename); 

  USER_OBJECT_
S_gtk_window_get_icon(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_window_set_default_icon_list(USER_OBJECT_ s_list); 

  USER_OBJECT_
S_gtk_window_get_default_icon_list(void); 

  USER_OBJECT_
S_gtk_window_set_default_icon(USER_OBJECT_ s_icon); 

  USER_OBJECT_
S_gtk_window_set_default_icon_from_file(USER_OBJECT_ s_filename); 

  USER_OBJECT_
S_gtk_window_set_auto_startup_notification(USER_OBJECT_ s_setting); 

  USER_OBJECT_
S_gtk_window_set_modal(USER_OBJECT_ s_object, USER_OBJECT_ s_modal); 

  USER_OBJECT_
S_gtk_window_get_modal(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_window_list_toplevels(void); 

  USER_OBJECT_
S_gtk_window_add_mnemonic(USER_OBJECT_ s_object, USER_OBJECT_ s_keyval, USER_OBJECT_ s_target); 

  USER_OBJECT_
S_gtk_window_remove_mnemonic(USER_OBJECT_ s_object, USER_OBJECT_ s_keyval, USER_OBJECT_ s_target); 

  USER_OBJECT_
S_gtk_window_mnemonic_activate(USER_OBJECT_ s_object, USER_OBJECT_ s_keyval, USER_OBJECT_ s_modifier); 

  USER_OBJECT_
S_gtk_window_set_mnemonic_modifier(USER_OBJECT_ s_object, USER_OBJECT_ s_modifier); 

  USER_OBJECT_
S_gtk_window_get_mnemonic_modifier(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_window_activate_key(USER_OBJECT_ s_object, USER_OBJECT_ s_event); 

  USER_OBJECT_
S_gtk_window_propagate_key_event(USER_OBJECT_ s_object, USER_OBJECT_ s_event); 

  USER_OBJECT_
S_gtk_window_present(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_window_present_with_time(USER_OBJECT_ s_object, USER_OBJECT_ s_timestamp); 

  USER_OBJECT_
S_gtk_window_iconify(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_window_deiconify(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_window_stick(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_window_unstick(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_window_maximize(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_window_unmaximize(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_window_fullscreen(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_window_unfullscreen(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_window_set_keep_above(USER_OBJECT_ s_object, USER_OBJECT_ s_setting); 

  USER_OBJECT_
S_gtk_window_set_keep_below(USER_OBJECT_ s_object, USER_OBJECT_ s_setting); 

  USER_OBJECT_
S_gtk_window_begin_resize_drag(USER_OBJECT_ s_object, USER_OBJECT_ s_edge, USER_OBJECT_ s_button, USER_OBJECT_ s_root_x, USER_OBJECT_ s_root_y, USER_OBJECT_ s_timestamp); 

  USER_OBJECT_
S_gtk_window_begin_move_drag(USER_OBJECT_ s_object, USER_OBJECT_ s_button, USER_OBJECT_ s_root_x, USER_OBJECT_ s_root_y, USER_OBJECT_ s_timestamp); 

  USER_OBJECT_
S_gtk_window_set_policy(USER_OBJECT_ s_object, USER_OBJECT_ s_allow_shrink, USER_OBJECT_ s_allow_grow, USER_OBJECT_ s_auto_shrink); 

  USER_OBJECT_
S_gtk_window_set_default_size(USER_OBJECT_ s_object, USER_OBJECT_ s_width, USER_OBJECT_ s_height); 

  USER_OBJECT_
S_gtk_window_get_default_size(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_window_resize(USER_OBJECT_ s_object, USER_OBJECT_ s_width, USER_OBJECT_ s_height); 

  USER_OBJECT_
S_gtk_window_get_size(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_window_move(USER_OBJECT_ s_object, USER_OBJECT_ s_x, USER_OBJECT_ s_y); 

  USER_OBJECT_
S_gtk_window_get_position(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_window_parse_geometry(USER_OBJECT_ s_object, USER_OBJECT_ s_geometry); 

  USER_OBJECT_
S_gtk_window_reshow_with_initial_size(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_window_group_get_type(void); 

  USER_OBJECT_
S_gtk_window_group_new(void); 

  USER_OBJECT_
S_gtk_window_group_add_window(USER_OBJECT_ s_object, USER_OBJECT_ s_window); 

  USER_OBJECT_
S_gtk_window_group_remove_window(USER_OBJECT_ s_object, USER_OBJECT_ s_window); 

  USER_OBJECT_
S_gtk_window_set_focus_on_map(USER_OBJECT_ s_object, USER_OBJECT_ s_setting); 

  USER_OBJECT_
S_gtk_window_get_focus_on_map(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_window_set_icon_name(USER_OBJECT_ s_object, USER_OBJECT_ s_name); 

  USER_OBJECT_
S_gtk_window_get_icon_name(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_window_set_default_icon_name(USER_OBJECT_ s_name); 

  USER_OBJECT_
S_gtk_widget_get_action(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_assistant_get_type(void); 

  USER_OBJECT_
S_gtk_assistant_new(void); 

  USER_OBJECT_
S_gtk_assistant_get_current_page(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_assistant_set_current_page(USER_OBJECT_ s_object, USER_OBJECT_ s_page_num); 

  USER_OBJECT_
S_gtk_assistant_get_n_pages(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_assistant_get_nth_page(USER_OBJECT_ s_object, USER_OBJECT_ s_page_num); 

  USER_OBJECT_
S_gtk_assistant_prepend_page(USER_OBJECT_ s_object, USER_OBJECT_ s_page); 

  USER_OBJECT_
S_gtk_assistant_append_page(USER_OBJECT_ s_object, USER_OBJECT_ s_page); 

  USER_OBJECT_
S_gtk_assistant_insert_page(USER_OBJECT_ s_object, USER_OBJECT_ s_page, USER_OBJECT_ s_position); 

  USER_OBJECT_
S_gtk_assistant_set_forward_page_func(USER_OBJECT_ s_object, USER_OBJECT_ s_page_func, USER_OBJECT_ s_data); 

  USER_OBJECT_
S_gtk_assistant_set_page_type(USER_OBJECT_ s_object, USER_OBJECT_ s_page, USER_OBJECT_ s_type); 

  USER_OBJECT_
S_gtk_assistant_get_page_type(USER_OBJECT_ s_object, USER_OBJECT_ s_page); 

  USER_OBJECT_
S_gtk_assistant_set_page_title(USER_OBJECT_ s_object, USER_OBJECT_ s_page, USER_OBJECT_ s_title); 

  USER_OBJECT_
S_gtk_assistant_get_page_title(USER_OBJECT_ s_object, USER_OBJECT_ s_page); 

  USER_OBJECT_
S_gtk_assistant_set_page_header_image(USER_OBJECT_ s_object, USER_OBJECT_ s_page, USER_OBJECT_ s_pixbuf); 

  USER_OBJECT_
S_gtk_assistant_get_page_header_image(USER_OBJECT_ s_object, USER_OBJECT_ s_page); 

  USER_OBJECT_
S_gtk_assistant_set_page_side_image(USER_OBJECT_ s_object, USER_OBJECT_ s_page, USER_OBJECT_ s_pixbuf); 

  USER_OBJECT_
S_gtk_assistant_get_page_side_image(USER_OBJECT_ s_object, USER_OBJECT_ s_page); 

  USER_OBJECT_
S_gtk_assistant_set_page_complete(USER_OBJECT_ s_object, USER_OBJECT_ s_page, USER_OBJECT_ s_complete); 

  USER_OBJECT_
S_gtk_assistant_get_page_complete(USER_OBJECT_ s_object, USER_OBJECT_ s_page); 

  USER_OBJECT_
S_gtk_assistant_add_action_widget(USER_OBJECT_ s_object, USER_OBJECT_ s_child); 

  USER_OBJECT_
S_gtk_assistant_remove_action_widget(USER_OBJECT_ s_object, USER_OBJECT_ s_child); 

  USER_OBJECT_
S_gtk_assistant_update_buttons_state(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_button_set_image_position(USER_OBJECT_ s_object, USER_OBJECT_ s_position); 

  USER_OBJECT_
S_gtk_button_get_image_position(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_cell_renderer_accel_get_type(void); 

  USER_OBJECT_
S_gtk_cell_renderer_accel_new(void); 

  USER_OBJECT_
S_gtk_cell_renderer_spin_get_type(void); 

  USER_OBJECT_
S_gtk_cell_renderer_spin_new(void); 

  USER_OBJECT_
S_gtk_clipboard_request_rich_text(USER_OBJECT_ s_object, USER_OBJECT_ s_buffer, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data); 

  USER_OBJECT_
S_gtk_clipboard_wait_for_rich_text(USER_OBJECT_ s_object, USER_OBJECT_ s_buffer); 

  USER_OBJECT_
S_gtk_clipboard_wait_is_rich_text_available(USER_OBJECT_ s_object, USER_OBJECT_ s_buffer); 

  USER_OBJECT_
S_gtk_combo_box_get_title(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_combo_box_set_title(USER_OBJECT_ s_object, USER_OBJECT_ s_title); 

  USER_OBJECT_
S_gtk_drag_dest_set_track_motion(USER_OBJECT_ s_object, USER_OBJECT_ s_track_motion); 

  USER_OBJECT_
S_gtk_drag_dest_get_track_motion(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_entry_set_inner_border(USER_OBJECT_ s_object, USER_OBJECT_ s_border); 

  USER_OBJECT_
S_gtk_entry_get_inner_border(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_file_chooser_button_get_focus_on_click(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_file_chooser_button_set_focus_on_click(USER_OBJECT_ s_object, USER_OBJECT_ s_focus_on_click); 

  USER_OBJECT_
S_gtk_label_get_line_wrap_mode(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_label_set_line_wrap_mode(USER_OBJECT_ s_object, USER_OBJECT_ s_wrap_mode); 

  USER_OBJECT_
S_gtk_link_button_get_type(void); 

  USER_OBJECT_
S_gtk_link_button_new(USER_OBJECT_ s_uri); 

  USER_OBJECT_
S_gtk_link_button_new_with_label(USER_OBJECT_ s_uri, USER_OBJECT_ s_label); 

  USER_OBJECT_
S_gtk_link_button_get_uri(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_link_button_set_uri(USER_OBJECT_ s_object, USER_OBJECT_ s_uri); 

  USER_OBJECT_
S_gtk_link_button_set_uri_hook(USER_OBJECT_ s_func, USER_OBJECT_ s_data); 

  USER_OBJECT_
S_gtk_message_dialog_set_image(USER_OBJECT_ s_object, USER_OBJECT_ s_image); 

  USER_OBJECT_
S_gtk_notebook_set_window_creation_hook(USER_OBJECT_ s_func, USER_OBJECT_ s_data); 

  USER_OBJECT_
S_gtk_notebook_set_group_id(USER_OBJECT_ s_object, USER_OBJECT_ s_group_id); 

  USER_OBJECT_
S_gtk_notebook_get_group_id(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_notebook_get_tab_reorderable(USER_OBJECT_ s_object, USER_OBJECT_ s_child); 

  USER_OBJECT_
S_gtk_notebook_set_tab_reorderable(USER_OBJECT_ s_object, USER_OBJECT_ s_child, USER_OBJECT_ s_reorderable); 

  USER_OBJECT_
S_gtk_notebook_get_tab_detachable(USER_OBJECT_ s_object, USER_OBJECT_ s_child); 

  USER_OBJECT_
S_gtk_notebook_set_tab_detachable(USER_OBJECT_ s_object, USER_OBJECT_ s_child, USER_OBJECT_ s_detachable); 

  USER_OBJECT_
S_gtk_page_setup_get_type(void); 

  USER_OBJECT_
S_gtk_page_setup_new(void); 

  USER_OBJECT_
S_gtk_page_setup_copy(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_page_setup_get_orientation(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_page_setup_set_orientation(USER_OBJECT_ s_object, USER_OBJECT_ s_orientation); 

  USER_OBJECT_
S_gtk_page_setup_get_paper_size(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_page_setup_set_paper_size(USER_OBJECT_ s_object, USER_OBJECT_ s_size); 

  USER_OBJECT_
S_gtk_page_setup_get_top_margin(USER_OBJECT_ s_object, USER_OBJECT_ s_unit); 

  USER_OBJECT_
S_gtk_page_setup_set_top_margin(USER_OBJECT_ s_object, USER_OBJECT_ s_margin, USER_OBJECT_ s_unit); 

  USER_OBJECT_
S_gtk_page_setup_get_bottom_margin(USER_OBJECT_ s_object, USER_OBJECT_ s_unit); 

  USER_OBJECT_
S_gtk_page_setup_set_bottom_margin(USER_OBJECT_ s_object, USER_OBJECT_ s_margin, USER_OBJECT_ s_unit); 

  USER_OBJECT_
S_gtk_page_setup_get_left_margin(USER_OBJECT_ s_object, USER_OBJECT_ s_unit); 

  USER_OBJECT_
S_gtk_page_setup_set_left_margin(USER_OBJECT_ s_object, USER_OBJECT_ s_margin, USER_OBJECT_ s_unit); 

  USER_OBJECT_
S_gtk_page_setup_get_right_margin(USER_OBJECT_ s_object, USER_OBJECT_ s_unit); 

  USER_OBJECT_
S_gtk_page_setup_set_right_margin(USER_OBJECT_ s_object, USER_OBJECT_ s_margin, USER_OBJECT_ s_unit); 

  USER_OBJECT_
S_gtk_page_setup_set_paper_size_and_default_margins(USER_OBJECT_ s_object, USER_OBJECT_ s_size); 

  USER_OBJECT_
S_gtk_page_setup_get_paper_width(USER_OBJECT_ s_object, USER_OBJECT_ s_unit); 

  USER_OBJECT_
S_gtk_page_setup_get_paper_height(USER_OBJECT_ s_object, USER_OBJECT_ s_unit); 

  USER_OBJECT_
S_gtk_page_setup_get_page_width(USER_OBJECT_ s_object, USER_OBJECT_ s_unit); 

  USER_OBJECT_
S_gtk_page_setup_get_page_height(USER_OBJECT_ s_object, USER_OBJECT_ s_unit); 

  USER_OBJECT_
S_gtk_paper_size_get_type(void); 

  USER_OBJECT_
S_gtk_paper_size_new(USER_OBJECT_ s_name); 

  USER_OBJECT_
S_gtk_paper_size_new_from_ppd(USER_OBJECT_ s_ppd_name, USER_OBJECT_ s_ppd_display_name, USER_OBJECT_ s_width, USER_OBJECT_ s_height); 

  USER_OBJECT_
S_gtk_paper_size_new_custom(USER_OBJECT_ s_name, USER_OBJECT_ s_display_name, USER_OBJECT_ s_width, USER_OBJECT_ s_height, USER_OBJECT_ s_unit); 

  USER_OBJECT_
S_gtk_paper_size_copy(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_paper_size_free(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_paper_size_is_equal(USER_OBJECT_ s_object, USER_OBJECT_ s_size2); 

  USER_OBJECT_
S_gtk_paper_size_get_name(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_paper_size_get_display_name(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_paper_size_get_ppd_name(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_paper_size_get_width(USER_OBJECT_ s_object, USER_OBJECT_ s_unit); 

  USER_OBJECT_
S_gtk_paper_size_get_height(USER_OBJECT_ s_object, USER_OBJECT_ s_unit); 

  USER_OBJECT_
S_gtk_paper_size_is_custom(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_paper_size_set_size(USER_OBJECT_ s_object, USER_OBJECT_ s_width, USER_OBJECT_ s_height, USER_OBJECT_ s_unit); 

  USER_OBJECT_
S_gtk_paper_size_get_default_top_margin(USER_OBJECT_ s_object, USER_OBJECT_ s_unit); 

  USER_OBJECT_
S_gtk_paper_size_get_default_bottom_margin(USER_OBJECT_ s_object, USER_OBJECT_ s_unit); 

  USER_OBJECT_
S_gtk_paper_size_get_default_left_margin(USER_OBJECT_ s_object, USER_OBJECT_ s_unit); 

  USER_OBJECT_
S_gtk_paper_size_get_default_right_margin(USER_OBJECT_ s_object, USER_OBJECT_ s_unit); 

  USER_OBJECT_
S_gtk_paper_size_get_default(void); 

  USER_OBJECT_
S_gtk_print_context_get_type(void); 

  USER_OBJECT_
S_gtk_print_context_get_cairo_context(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_print_context_get_page_setup(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_print_context_get_width(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_print_context_get_height(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_print_context_get_dpi_x(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_print_context_get_dpi_y(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_print_context_get_pango_fontmap(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_print_context_create_pango_context(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_print_context_create_pango_layout(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_print_context_set_cairo_context(USER_OBJECT_ s_object, USER_OBJECT_ s_cr, USER_OBJECT_ s_dpi_x, USER_OBJECT_ s_dpi_y); 

  USER_OBJECT_
S_gtk_print_error_quark(void); 

  USER_OBJECT_
S_gtk_print_operation_get_type(void); 

  USER_OBJECT_
S_gtk_print_operation_new(void); 

  USER_OBJECT_
S_gtk_print_operation_set_default_page_setup(USER_OBJECT_ s_object, USER_OBJECT_ s_default_page_setup); 

  USER_OBJECT_
S_gtk_print_operation_get_default_page_setup(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_print_operation_set_print_settings(USER_OBJECT_ s_object, USER_OBJECT_ s_print_settings); 

  USER_OBJECT_
S_gtk_print_operation_get_print_settings(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_print_operation_set_job_name(USER_OBJECT_ s_object, USER_OBJECT_ s_job_name); 

  USER_OBJECT_
S_gtk_print_operation_set_n_pages(USER_OBJECT_ s_object, USER_OBJECT_ s_n_pages); 

  USER_OBJECT_
S_gtk_print_operation_set_current_page(USER_OBJECT_ s_object, USER_OBJECT_ s_current_page); 

  USER_OBJECT_
S_gtk_print_operation_set_use_full_page(USER_OBJECT_ s_object, USER_OBJECT_ s_full_page); 

  USER_OBJECT_
S_gtk_print_operation_set_unit(USER_OBJECT_ s_object, USER_OBJECT_ s_unit); 

  USER_OBJECT_
S_gtk_print_operation_set_export_filename(USER_OBJECT_ s_object, USER_OBJECT_ s_filename); 

  USER_OBJECT_
S_gtk_print_operation_set_track_print_status(USER_OBJECT_ s_object, USER_OBJECT_ s_track_status); 

  USER_OBJECT_
S_gtk_print_operation_set_show_progress(USER_OBJECT_ s_object, USER_OBJECT_ s_show_progress); 

  USER_OBJECT_
S_gtk_print_operation_set_allow_async(USER_OBJECT_ s_object, USER_OBJECT_ s_allow_async); 

  USER_OBJECT_
S_gtk_print_operation_set_custom_tab_label(USER_OBJECT_ s_object, USER_OBJECT_ s_label); 

  USER_OBJECT_
S_gtk_print_operation_run(USER_OBJECT_ s_object, USER_OBJECT_ s_action, USER_OBJECT_ s_parent); 

  USER_OBJECT_
S_gtk_print_operation_get_error(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_print_operation_get_status(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_print_operation_get_status_string(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_print_operation_is_finished(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_print_operation_cancel(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_print_run_page_setup_dialog(USER_OBJECT_ s_parent, USER_OBJECT_ s_page_setup, USER_OBJECT_ s_settings); 

  USER_OBJECT_
S_gtk_print_run_page_setup_dialog_async(USER_OBJECT_ s_parent, USER_OBJECT_ s_page_setup, USER_OBJECT_ s_settings, USER_OBJECT_ s_done_cb, USER_OBJECT_ s_data); 

  USER_OBJECT_
S_gtk_print_operation_preview_get_type(void); 

  USER_OBJECT_
S_gtk_print_operation_preview_render_page(USER_OBJECT_ s_object, USER_OBJECT_ s_page_nr); 

  USER_OBJECT_
S_gtk_print_operation_preview_end_preview(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_print_operation_preview_is_selected(USER_OBJECT_ s_object, USER_OBJECT_ s_page_nr); 

  USER_OBJECT_
S_gtk_print_settings_get_type(void); 

  USER_OBJECT_
S_gtk_print_settings_new(void); 

  USER_OBJECT_
S_gtk_print_settings_copy(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_print_settings_has_key(USER_OBJECT_ s_object, USER_OBJECT_ s_key); 

  USER_OBJECT_
S_gtk_print_settings_get(USER_OBJECT_ s_object, USER_OBJECT_ s_key); 

  USER_OBJECT_
S_gtk_print_settings_set(USER_OBJECT_ s_object, USER_OBJECT_ s_key, USER_OBJECT_ s_value); 

  USER_OBJECT_
S_gtk_print_settings_unset(USER_OBJECT_ s_object, USER_OBJECT_ s_key); 

  USER_OBJECT_
S_gtk_print_settings_foreach(USER_OBJECT_ s_object, USER_OBJECT_ s_func, USER_OBJECT_ s_user_data); 

  USER_OBJECT_
S_gtk_print_settings_get_bool(USER_OBJECT_ s_object, USER_OBJECT_ s_key); 

  USER_OBJECT_
S_gtk_print_settings_set_bool(USER_OBJECT_ s_object, USER_OBJECT_ s_key, USER_OBJECT_ s_value); 

  USER_OBJECT_
S_gtk_print_settings_get_double(USER_OBJECT_ s_object, USER_OBJECT_ s_key); 

  USER_OBJECT_
S_gtk_print_settings_get_double_with_default(USER_OBJECT_ s_object, USER_OBJECT_ s_key, USER_OBJECT_ s_def); 

  USER_OBJECT_
S_gtk_print_settings_set_double(USER_OBJECT_ s_object, USER_OBJECT_ s_key, USER_OBJECT_ s_value); 

  USER_OBJECT_
S_gtk_print_settings_get_length(USER_OBJECT_ s_object, USER_OBJECT_ s_key, USER_OBJECT_ s_unit); 

  USER_OBJECT_
S_gtk_print_settings_set_length(USER_OBJECT_ s_object, USER_OBJECT_ s_key, USER_OBJECT_ s_value, USER_OBJECT_ s_unit); 

  USER_OBJECT_
S_gtk_print_settings_get_int(USER_OBJECT_ s_object, USER_OBJECT_ s_key); 

  USER_OBJECT_
S_gtk_print_settings_get_int_with_default(USER_OBJECT_ s_object, USER_OBJECT_ s_key, USER_OBJECT_ s_def); 

  USER_OBJECT_
S_gtk_print_settings_set_int(USER_OBJECT_ s_object, USER_OBJECT_ s_key, USER_OBJECT_ s_value); 

  USER_OBJECT_
S_gtk_print_settings_get_printer(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_print_settings_set_printer(USER_OBJECT_ s_object, USER_OBJECT_ s_printer); 

  USER_OBJECT_
S_gtk_print_settings_get_orientation(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_print_settings_set_orientation(USER_OBJECT_ s_object, USER_OBJECT_ s_orientation); 

  USER_OBJECT_
S_gtk_print_settings_get_paper_size(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_print_settings_set_paper_size(USER_OBJECT_ s_object, USER_OBJECT_ s_paper_size); 

  USER_OBJECT_
S_gtk_print_settings_get_paper_width(USER_OBJECT_ s_object, USER_OBJECT_ s_unit); 

  USER_OBJECT_
S_gtk_print_settings_set_paper_width(USER_OBJECT_ s_object, USER_OBJECT_ s_width, USER_OBJECT_ s_unit); 

  USER_OBJECT_
S_gtk_print_settings_get_paper_height(USER_OBJECT_ s_object, USER_OBJECT_ s_unit); 

  USER_OBJECT_
S_gtk_print_settings_set_paper_height(USER_OBJECT_ s_object, USER_OBJECT_ s_height, USER_OBJECT_ s_unit); 

  USER_OBJECT_
S_gtk_print_settings_get_use_color(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_print_settings_set_use_color(USER_OBJECT_ s_object, USER_OBJECT_ s_use_color); 

  USER_OBJECT_
S_gtk_print_settings_get_collate(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_print_settings_set_collate(USER_OBJECT_ s_object, USER_OBJECT_ s_collate); 

  USER_OBJECT_
S_gtk_print_settings_get_reverse(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_print_settings_set_reverse(USER_OBJECT_ s_object, USER_OBJECT_ s_reverse); 

  USER_OBJECT_
S_gtk_print_settings_get_duplex(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_print_settings_set_duplex(USER_OBJECT_ s_object, USER_OBJECT_ s_duplex); 

  USER_OBJECT_
S_gtk_print_settings_get_quality(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_print_settings_set_quality(USER_OBJECT_ s_object, USER_OBJECT_ s_quality); 

  USER_OBJECT_
S_gtk_print_settings_get_n_copies(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_print_settings_set_n_copies(USER_OBJECT_ s_object, USER_OBJECT_ s_num_copies); 

  USER_OBJECT_
S_gtk_print_settings_get_number_up(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_print_settings_set_number_up(USER_OBJECT_ s_object, USER_OBJECT_ s_number_up); 

  USER_OBJECT_
S_gtk_print_settings_get_resolution(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_print_settings_set_resolution(USER_OBJECT_ s_object, USER_OBJECT_ s_resolution); 

  USER_OBJECT_
S_gtk_print_settings_get_scale(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_print_settings_set_scale(USER_OBJECT_ s_object, USER_OBJECT_ s_scale); 

  USER_OBJECT_
S_gtk_print_settings_get_print_pages(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_print_settings_set_print_pages(USER_OBJECT_ s_object, USER_OBJECT_ s_pages); 

  USER_OBJECT_
S_gtk_print_settings_get_page_ranges(USER_OBJECT_ s_object, USER_OBJECT_ s_num_ranges); 

  USER_OBJECT_
S_gtk_print_settings_set_page_ranges(USER_OBJECT_ s_object, USER_OBJECT_ s_page_ranges, USER_OBJECT_ s_num_ranges); 

  USER_OBJECT_
S_gtk_print_settings_get_page_set(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_print_settings_set_page_set(USER_OBJECT_ s_object, USER_OBJECT_ s_page_set); 

  USER_OBJECT_
S_gtk_print_settings_get_default_source(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_print_settings_set_default_source(USER_OBJECT_ s_object, USER_OBJECT_ s_default_source); 

  USER_OBJECT_
S_gtk_print_settings_get_media_type(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_print_settings_set_media_type(USER_OBJECT_ s_object, USER_OBJECT_ s_media_type); 

  USER_OBJECT_
S_gtk_print_settings_get_dither(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_print_settings_set_dither(USER_OBJECT_ s_object, USER_OBJECT_ s_dither); 

  USER_OBJECT_
S_gtk_print_settings_get_finishings(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_print_settings_set_finishings(USER_OBJECT_ s_object, USER_OBJECT_ s_finishings); 

  USER_OBJECT_
S_gtk_print_settings_get_output_bin(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_print_settings_set_output_bin(USER_OBJECT_ s_object, USER_OBJECT_ s_output_bin); 

  USER_OBJECT_
S_gtk_radio_action_set_current_value(USER_OBJECT_ s_object, USER_OBJECT_ s_current_value); 

  USER_OBJECT_
S_gtk_range_set_lower_stepper_sensitivity(USER_OBJECT_ s_object, USER_OBJECT_ s_sensitivity); 

  USER_OBJECT_
S_gtk_range_get_lower_stepper_sensitivity(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_range_set_upper_stepper_sensitivity(USER_OBJECT_ s_object, USER_OBJECT_ s_sensitivity); 

  USER_OBJECT_
S_gtk_range_get_upper_stepper_sensitivity(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_recent_chooser_dialog_get_type(void); 

  USER_OBJECT_
S_gtk_recent_chooser_error_quark(void); 

  USER_OBJECT_
S_gtk_recent_chooser_get_type(void); 

  USER_OBJECT_
S_gtk_recent_chooser_set_show_private(USER_OBJECT_ s_object, USER_OBJECT_ s_show_private); 

  USER_OBJECT_
S_gtk_recent_chooser_get_show_private(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_recent_chooser_set_show_not_found(USER_OBJECT_ s_object, USER_OBJECT_ s_show_not_found); 

  USER_OBJECT_
S_gtk_recent_chooser_get_show_not_found(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_recent_chooser_set_select_multiple(USER_OBJECT_ s_object, USER_OBJECT_ s_select_multiple); 

  USER_OBJECT_
S_gtk_recent_chooser_get_select_multiple(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_recent_chooser_set_limit(USER_OBJECT_ s_object, USER_OBJECT_ s_limit); 

  USER_OBJECT_
S_gtk_recent_chooser_get_limit(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_recent_chooser_set_local_only(USER_OBJECT_ s_object, USER_OBJECT_ s_local_only); 

  USER_OBJECT_
S_gtk_recent_chooser_get_local_only(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_recent_chooser_set_show_tips(USER_OBJECT_ s_object, USER_OBJECT_ s_show_tips); 

  USER_OBJECT_
S_gtk_recent_chooser_get_show_tips(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_recent_chooser_set_show_icons(USER_OBJECT_ s_object, USER_OBJECT_ s_show_icons); 

  USER_OBJECT_
S_gtk_recent_chooser_get_show_icons(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_recent_chooser_set_sort_type(USER_OBJECT_ s_object, USER_OBJECT_ s_sort_type); 

  USER_OBJECT_
S_gtk_recent_chooser_get_sort_type(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_recent_chooser_set_sort_func(USER_OBJECT_ s_object, USER_OBJECT_ s_sort_func, USER_OBJECT_ s_sort_data); 

  USER_OBJECT_
S_gtk_recent_chooser_set_current_uri(USER_OBJECT_ s_object, USER_OBJECT_ s_uri); 

  USER_OBJECT_
S_gtk_recent_chooser_get_current_uri(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_recent_chooser_get_current_item(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_recent_chooser_select_uri(USER_OBJECT_ s_object, USER_OBJECT_ s_uri); 

  USER_OBJECT_
S_gtk_recent_chooser_unselect_uri(USER_OBJECT_ s_object, USER_OBJECT_ s_uri); 

  USER_OBJECT_
S_gtk_recent_chooser_select_all(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_recent_chooser_unselect_all(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_recent_chooser_get_items(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_recent_chooser_get_uris(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_recent_chooser_add_filter(USER_OBJECT_ s_object, USER_OBJECT_ s_filter); 

  USER_OBJECT_
S_gtk_recent_chooser_remove_filter(USER_OBJECT_ s_object, USER_OBJECT_ s_filter); 

  USER_OBJECT_
S_gtk_recent_chooser_list_filters(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_recent_chooser_set_filter(USER_OBJECT_ s_object, USER_OBJECT_ s_filter); 

  USER_OBJECT_
S_gtk_recent_chooser_get_filter(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_recent_chooser_menu_get_type(void); 

  USER_OBJECT_
S_gtk_recent_chooser_menu_new(void); 

  USER_OBJECT_
S_gtk_recent_chooser_menu_new_for_manager(USER_OBJECT_ s_manager); 

  USER_OBJECT_
S_gtk_recent_chooser_menu_get_show_numbers(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_recent_chooser_menu_set_show_numbers(USER_OBJECT_ s_object, USER_OBJECT_ s_show_numbers); 

  USER_OBJECT_
S_gtk_recent_chooser_widget_get_type(void); 

  USER_OBJECT_
S_gtk_recent_chooser_widget_new(void); 

  USER_OBJECT_
S_gtk_recent_chooser_widget_new_for_manager(USER_OBJECT_ s_manager); 

  USER_OBJECT_
S_gtk_recent_filter_get_type(void); 

  USER_OBJECT_
S_gtk_recent_filter_new(void); 

  USER_OBJECT_
S_gtk_recent_filter_set_name(USER_OBJECT_ s_object, USER_OBJECT_ s_name); 

  USER_OBJECT_
S_gtk_recent_filter_get_name(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_recent_filter_add_mime_type(USER_OBJECT_ s_object, USER_OBJECT_ s_mime_type); 

  USER_OBJECT_
S_gtk_recent_filter_add_pattern(USER_OBJECT_ s_object, USER_OBJECT_ s_pattern); 

  USER_OBJECT_
S_gtk_recent_filter_add_pixbuf_formats(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_recent_filter_add_application(USER_OBJECT_ s_object, USER_OBJECT_ s_application); 

  USER_OBJECT_
S_gtk_recent_filter_add_group(USER_OBJECT_ s_object, USER_OBJECT_ s_group); 

  USER_OBJECT_
S_gtk_recent_filter_add_age(USER_OBJECT_ s_object, USER_OBJECT_ s_days); 

  USER_OBJECT_
S_gtk_recent_filter_add_custom(USER_OBJECT_ s_object, USER_OBJECT_ s_needed, USER_OBJECT_ s_func, USER_OBJECT_ s_data); 

  USER_OBJECT_
S_gtk_recent_filter_get_needed(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_recent_filter_filter(USER_OBJECT_ s_object, USER_OBJECT_ s_filter_info); 

  USER_OBJECT_
S_gtk_recent_manager_error_quark(void); 

  USER_OBJECT_
S_gtk_recent_manager_get_type(void); 

  USER_OBJECT_
S_gtk_recent_manager_new(void); 

  USER_OBJECT_
S_gtk_recent_manager_get_default(void); 

  USER_OBJECT_
S_gtk_recent_manager_get_for_screen(USER_OBJECT_ s_screen); 

  USER_OBJECT_
S_gtk_recent_manager_set_screen(USER_OBJECT_ s_object, USER_OBJECT_ s_screen); 

  USER_OBJECT_
S_gtk_recent_manager_add_item(USER_OBJECT_ s_object, USER_OBJECT_ s_uri); 

  USER_OBJECT_
S_gtk_recent_manager_add_full(USER_OBJECT_ s_object, USER_OBJECT_ s_uri, USER_OBJECT_ s_recent_data); 

  USER_OBJECT_
S_gtk_recent_manager_remove_item(USER_OBJECT_ s_object, USER_OBJECT_ s_uri); 

  USER_OBJECT_
S_gtk_recent_manager_lookup_item(USER_OBJECT_ s_object, USER_OBJECT_ s_uri); 

  USER_OBJECT_
S_gtk_recent_manager_has_item(USER_OBJECT_ s_object, USER_OBJECT_ s_uri); 

  USER_OBJECT_
S_gtk_recent_manager_move_item(USER_OBJECT_ s_object, USER_OBJECT_ s_uri, USER_OBJECT_ s_new_uri); 

  USER_OBJECT_
S_gtk_recent_manager_set_limit(USER_OBJECT_ s_object, USER_OBJECT_ s_limit); 

  USER_OBJECT_
S_gtk_recent_manager_get_limit(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_recent_manager_get_items(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_recent_manager_purge_items(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_recent_info_get_type(void); 

  USER_OBJECT_
S_gtk_recent_info_ref(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_recent_info_unref(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_recent_info_get_uri(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_recent_info_get_display_name(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_recent_info_get_description(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_recent_info_get_mime_type(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_recent_info_get_added(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_recent_info_get_modified(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_recent_info_get_visited(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_recent_info_get_private_hint(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_recent_info_get_application_info(USER_OBJECT_ s_object, USER_OBJECT_ s_app_name); 

  USER_OBJECT_
S_gtk_recent_info_get_applications(USER_OBJECT_ s_object, USER_OBJECT_ s_length); 

  USER_OBJECT_
S_gtk_recent_info_last_application(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_recent_info_has_application(USER_OBJECT_ s_object, USER_OBJECT_ s_app_name); 

  USER_OBJECT_
S_gtk_recent_info_get_groups(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_recent_info_has_group(USER_OBJECT_ s_object, USER_OBJECT_ s_group_name); 

  USER_OBJECT_
S_gtk_recent_info_get_icon(USER_OBJECT_ s_object, USER_OBJECT_ s_size); 

  USER_OBJECT_
S_gtk_recent_info_get_short_name(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_recent_info_get_uri_display(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_recent_info_get_age(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_recent_info_is_local(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_recent_info_exists(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_recent_info_match(USER_OBJECT_ s_object, USER_OBJECT_ s_info_b); 

  USER_OBJECT_
S_gtk_scrolled_window_unset_placement(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_target_list_add_rich_text_targets(USER_OBJECT_ s_list, USER_OBJECT_ s_info, USER_OBJECT_ s_deserializable, USER_OBJECT_ s_buffer); 

  USER_OBJECT_
S_gtk_target_table_new_from_list(USER_OBJECT_ s_list); 

  USER_OBJECT_
S_gtk_selection_data_targets_include_rich_text(USER_OBJECT_ s_object, USER_OBJECT_ s_buffer); 

  USER_OBJECT_
S_gtk_selection_data_targets_include_uri(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_targets_include_text(USER_OBJECT_ s_targets); 

  USER_OBJECT_
S_gtk_targets_include_rich_text(USER_OBJECT_ s_targets, USER_OBJECT_ s_buffer); 

  USER_OBJECT_
S_gtk_targets_include_image(USER_OBJECT_ s_targets, USER_OBJECT_ s_writable); 

  USER_OBJECT_
S_gtk_targets_include_uri(USER_OBJECT_ s_targets); 

  USER_OBJECT_
S_gtk_target_list_get_type(void); 

  USER_OBJECT_
S_gtk_size_group_get_widgets(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_status_icon_get_type(void); 

  USER_OBJECT_
S_gtk_status_icon_new(void); 

  USER_OBJECT_
S_gtk_status_icon_new_from_pixbuf(USER_OBJECT_ s_pixbuf); 

  USER_OBJECT_
S_gtk_status_icon_new_from_file(USER_OBJECT_ s_filename); 

  USER_OBJECT_
S_gtk_status_icon_new_from_stock(USER_OBJECT_ s_stock_id); 

  USER_OBJECT_
S_gtk_status_icon_new_from_icon_name(USER_OBJECT_ s_icon_name); 

  USER_OBJECT_
S_gtk_status_icon_set_from_pixbuf(USER_OBJECT_ s_object, USER_OBJECT_ s_pixbuf); 

  USER_OBJECT_
S_gtk_status_icon_set_from_file(USER_OBJECT_ s_object, USER_OBJECT_ s_filename); 

  USER_OBJECT_
S_gtk_status_icon_set_from_stock(USER_OBJECT_ s_object, USER_OBJECT_ s_stock_id); 

  USER_OBJECT_
S_gtk_status_icon_set_from_icon_name(USER_OBJECT_ s_object, USER_OBJECT_ s_icon_name); 

  USER_OBJECT_
S_gtk_status_icon_get_storage_type(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_status_icon_get_pixbuf(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_status_icon_get_stock(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_status_icon_get_icon_name(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_status_icon_get_size(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_status_icon_set_tooltip(USER_OBJECT_ s_object, USER_OBJECT_ s_tooltip_text); 

  USER_OBJECT_
S_gtk_status_icon_set_visible(USER_OBJECT_ s_object, USER_OBJECT_ s_visible); 

  USER_OBJECT_
S_gtk_status_icon_get_visible(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_status_icon_set_blinking(USER_OBJECT_ s_object, USER_OBJECT_ s_blinking); 

  USER_OBJECT_
S_gtk_status_icon_get_blinking(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_status_icon_is_embedded(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_status_icon_position_menu(USER_OBJECT_ s_menu, USER_OBJECT_ s_user_data); 

  USER_OBJECT_
S_gtk_status_icon_get_geometry(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_style_lookup_color(USER_OBJECT_ s_object, USER_OBJECT_ s_color_name); 

  USER_OBJECT_
S_gtk_text_buffer_get_has_selection(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_text_buffer_get_copy_target_list(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_text_buffer_get_paste_target_list(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_text_buffer_register_serialize_format(USER_OBJECT_ s_object, USER_OBJECT_ s_mime_type, USER_OBJECT_ s_function, USER_OBJECT_ s_user_data); 

  USER_OBJECT_
S_gtk_text_buffer_register_serialize_tagset(USER_OBJECT_ s_object, USER_OBJECT_ s_tagset_name); 

  USER_OBJECT_
S_gtk_text_buffer_register_deserialize_format(USER_OBJECT_ s_object, USER_OBJECT_ s_mime_type, USER_OBJECT_ s_function, USER_OBJECT_ s_user_data); 

  USER_OBJECT_
S_gtk_text_buffer_register_deserialize_tagset(USER_OBJECT_ s_object, USER_OBJECT_ s_tagset_name); 

  USER_OBJECT_
S_gtk_text_buffer_unregister_serialize_format(USER_OBJECT_ s_object, USER_OBJECT_ s_format); 

  USER_OBJECT_
S_gtk_text_buffer_unregister_deserialize_format(USER_OBJECT_ s_object, USER_OBJECT_ s_format); 

  USER_OBJECT_
S_gtk_text_buffer_deserialize_set_can_create_tags(USER_OBJECT_ s_object, USER_OBJECT_ s_format, USER_OBJECT_ s_can_create_tags); 

  USER_OBJECT_
S_gtk_text_buffer_deserialize_get_can_create_tags(USER_OBJECT_ s_object, USER_OBJECT_ s_format); 

  USER_OBJECT_
S_gtk_text_buffer_get_serialize_formats(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_text_buffer_get_deserialize_formats(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_text_buffer_serialize(USER_OBJECT_ s_object, USER_OBJECT_ s_content_buffer, USER_OBJECT_ s_format, USER_OBJECT_ s_start, USER_OBJECT_ s_end); 

  USER_OBJECT_
S_gtk_text_buffer_deserialize(USER_OBJECT_ s_object, USER_OBJECT_ s_content_buffer, USER_OBJECT_ s_format, USER_OBJECT_ s_iter, USER_OBJECT_ s_data); 

  USER_OBJECT_
S_gtk_tree_view_get_headers_clickable(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_tree_view_get_search_entry(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_tree_view_set_search_entry(USER_OBJECT_ s_object, USER_OBJECT_ s_entry); 

  USER_OBJECT_
S_gtk_tree_view_get_search_position_func(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_tree_view_set_search_position_func(USER_OBJECT_ s_object, USER_OBJECT_ s_func, USER_OBJECT_ s_data); 

  USER_OBJECT_
S_gtk_tree_view_set_rubber_banding(USER_OBJECT_ s_object, USER_OBJECT_ s_enable); 

  USER_OBJECT_
S_gtk_tree_view_get_rubber_banding(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_tree_view_get_grid_lines(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_tree_view_set_grid_lines(USER_OBJECT_ s_object, USER_OBJECT_ s_grid_lines); 

  USER_OBJECT_
S_gtk_tree_view_get_enable_tree_lines(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_tree_view_set_enable_tree_lines(USER_OBJECT_ s_object, USER_OBJECT_ s_enabled); 

  USER_OBJECT_
S_gtk_assistant_page_type_get_type(void); 

  USER_OBJECT_
S_gtk_cell_renderer_accel_mode_get_type(void); 

  USER_OBJECT_
S_gtk_sensitivity_type_get_type(void); 

  USER_OBJECT_
S_gtk_print_pages_get_type(void); 

  USER_OBJECT_
S_gtk_page_set_get_type(void); 

  USER_OBJECT_
S_gtk_page_orientation_get_type(void); 

  USER_OBJECT_
S_gtk_print_quality_get_type(void); 

  USER_OBJECT_
S_gtk_print_duplex_get_type(void); 

  USER_OBJECT_
S_gtk_unit_get_type(void); 

  USER_OBJECT_
S_gtk_tree_view_grid_lines_get_type(void); 

  USER_OBJECT_
S_gtk_print_operation_action_get_type(void); 

  USER_OBJECT_
S_gtk_recent_sort_type_get_type(void); 

  USER_OBJECT_
S_gtk_recent_chooser_error_get_type(void); 

  USER_OBJECT_
S_gtk_recent_filter_flags_get_type(void); 

  USER_OBJECT_
S_gtk_recent_manager_error_get_type(void); 

  USER_OBJECT_
S_gtk_text_buffer_target_info_get_type(void); 

  USER_OBJECT_
S_gtk_widget_is_composited(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_widget_input_shape_combine_mask(USER_OBJECT_ s_object, USER_OBJECT_ s_shape_mask, USER_OBJECT_ s_offset_x, USER_OBJECT_ s_offset_y); 

  USER_OBJECT_
S_gtk_window_set_deletable(USER_OBJECT_ s_object, USER_OBJECT_ s_setting); 

  USER_OBJECT_
S_gtk_window_get_deletable(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_window_get_group(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_buildable_get_type(void); 

  USER_OBJECT_
S_gtk_buildable_set_name(USER_OBJECT_ s_object, USER_OBJECT_ s_name); 

  USER_OBJECT_
S_gtk_buildable_get_name(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_buildable_add_child(USER_OBJECT_ s_object, USER_OBJECT_ s_builder, USER_OBJECT_ s_child, USER_OBJECT_ s_type); 

  USER_OBJECT_
S_gtk_buildable_set_buildable_property(USER_OBJECT_ s_object, USER_OBJECT_ s_builder, USER_OBJECT_ s_name, USER_OBJECT_ s_value); 

  USER_OBJECT_
S_gtk_buildable_construct_child(USER_OBJECT_ s_object, USER_OBJECT_ s_builder, USER_OBJECT_ s_name); 

  USER_OBJECT_
S_gtk_buildable_custom_tag_start(USER_OBJECT_ s_object, USER_OBJECT_ s_builder, USER_OBJECT_ s_child, USER_OBJECT_ s_tagname, USER_OBJECT_ s_parser, USER_OBJECT_ s_data); 

  USER_OBJECT_
S_gtk_buildable_custom_tag_end(USER_OBJECT_ s_object, USER_OBJECT_ s_builder, USER_OBJECT_ s_child, USER_OBJECT_ s_tagname, USER_OBJECT_ s_data); 

  USER_OBJECT_
S_gtk_buildable_custom_finished(USER_OBJECT_ s_object, USER_OBJECT_ s_builder, USER_OBJECT_ s_child, USER_OBJECT_ s_tagname, USER_OBJECT_ s_data); 

  USER_OBJECT_
S_gtk_buildable_parser_finished(USER_OBJECT_ s_object, USER_OBJECT_ s_builder); 

  USER_OBJECT_
S_gtk_buildable_get_internal_child(USER_OBJECT_ s_object, USER_OBJECT_ s_builder, USER_OBJECT_ s_childname); 

  USER_OBJECT_
S_gtk_builder_error_quark(void); 

  USER_OBJECT_
S_gtk_builder_get_type(void); 

  USER_OBJECT_
S_gtk_builder_new(void); 

  USER_OBJECT_
S_gtk_builder_add_from_file(USER_OBJECT_ s_object, USER_OBJECT_ s_filename); 

  USER_OBJECT_
S_gtk_builder_add_from_string(USER_OBJECT_ s_object, USER_OBJECT_ s_buffer, USER_OBJECT_ s_length); 

  USER_OBJECT_
S_gtk_builder_get_object(USER_OBJECT_ s_object, USER_OBJECT_ s_name); 

  USER_OBJECT_
S_gtk_builder_get_objects(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_builder_connect_signals_full(USER_OBJECT_ s_object, USER_OBJECT_ s_func, USER_OBJECT_ s_user_data); 

  USER_OBJECT_
S_gtk_builder_set_translation_domain(USER_OBJECT_ s_object, USER_OBJECT_ s_domain); 

  USER_OBJECT_
S_gtk_builder_get_translation_domain(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_builder_get_type_from_name(USER_OBJECT_ s_object, USER_OBJECT_ s_type_name); 

  USER_OBJECT_
S_gtk_builder_value_from_string(USER_OBJECT_ s_object, USER_OBJECT_ s_pspec, USER_OBJECT_ s_string); 

  USER_OBJECT_
S_gtk_builder_value_from_string_type(USER_OBJECT_ s_object, USER_OBJECT_ s_type, USER_OBJECT_ s_string); 

  USER_OBJECT_
S_gtk_about_dialog_get_program_name(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_about_dialog_set_program_name(USER_OBJECT_ s_object, USER_OBJECT_ s_name); 

  USER_OBJECT_
S_gtk_action_create_menu(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_cell_layout_get_cells(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_entry_completion_get_completion_prefix(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_entry_completion_set_inline_selection(USER_OBJECT_ s_object, USER_OBJECT_ s_inline_selection); 

  USER_OBJECT_
S_gtk_entry_completion_get_inline_selection(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_entry_set_cursor_hadjustment(USER_OBJECT_ s_object, USER_OBJECT_ s_adjustment); 

  USER_OBJECT_
S_gtk_entry_get_cursor_hadjustment(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_icon_theme_choose_icon(USER_OBJECT_ s_object, USER_OBJECT_ s_icon_names, USER_OBJECT_ s_size, USER_OBJECT_ s_flags); 

  USER_OBJECT_
S_gtk_icon_theme_list_contexts(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_icon_view_convert_widget_to_bin_window_coords(USER_OBJECT_ s_object, USER_OBJECT_ s_wx, USER_OBJECT_ s_wy); 

  USER_OBJECT_
S_gtk_icon_view_set_tooltip_item(USER_OBJECT_ s_object, USER_OBJECT_ s_tooltip, USER_OBJECT_ s_path); 

  USER_OBJECT_
S_gtk_icon_view_set_tooltip_cell(USER_OBJECT_ s_object, USER_OBJECT_ s_tooltip, USER_OBJECT_ s_path, USER_OBJECT_ s_cell); 

  USER_OBJECT_
S_gtk_icon_view_set_tooltip_column(USER_OBJECT_ s_object, USER_OBJECT_ s_column); 

  USER_OBJECT_
S_gtk_icon_view_get_tooltip_column(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_list_store_set_valuesv(USER_OBJECT_ s_object, USER_OBJECT_ s_iter, USER_OBJECT_ s_columns, USER_OBJECT_ s_values); 

  USER_OBJECT_
S_gtk_menu_tool_button_set_arrow_tooltip_text(USER_OBJECT_ s_object, USER_OBJECT_ s_text); 

  USER_OBJECT_
S_gtk_menu_tool_button_set_arrow_tooltip_markup(USER_OBJECT_ s_object, USER_OBJECT_ s_markup); 

  USER_OBJECT_
S_gtk_notebook_set_group(USER_OBJECT_ s_object, USER_OBJECT_ s_group); 

  USER_OBJECT_
S_gtk_notebook_get_group(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_page_setup_new_from_file(USER_OBJECT_ s_file_name); 

  USER_OBJECT_
S_gtk_page_setup_new_from_key_file(USER_OBJECT_ s_key_file, USER_OBJECT_ s_group_name); 

  USER_OBJECT_
S_gtk_page_setup_to_file(USER_OBJECT_ s_object, USER_OBJECT_ s_file_name); 

  USER_OBJECT_
S_gtk_page_setup_to_key_file(USER_OBJECT_ s_object, USER_OBJECT_ s_key_file, USER_OBJECT_ s_group_name); 

  USER_OBJECT_
S_gtk_paper_size_get_paper_sizes(USER_OBJECT_ s_include_custom); 

  USER_OBJECT_
S_gtk_paper_size_new_from_key_file(USER_OBJECT_ s_key_file, USER_OBJECT_ s_group_name); 

  USER_OBJECT_
S_gtk_paper_size_to_key_file(USER_OBJECT_ s_object, USER_OBJECT_ s_key_file, USER_OBJECT_ s_group_name); 

  USER_OBJECT_
S_gtk_print_settings_new_from_file(USER_OBJECT_ s_file_name); 

  USER_OBJECT_
S_gtk_print_settings_to_file(USER_OBJECT_ s_object, USER_OBJECT_ s_file_name); 

  USER_OBJECT_
S_gtk_print_settings_new_from_key_file(USER_OBJECT_ s_key_file, USER_OBJECT_ s_group_name); 

  USER_OBJECT_
S_gtk_print_settings_to_key_file(USER_OBJECT_ s_object, USER_OBJECT_ s_key_file, USER_OBJECT_ s_group_name); 

  USER_OBJECT_
S_gtk_range_set_show_fill_level(USER_OBJECT_ s_object, USER_OBJECT_ s_show_fill_level); 

  USER_OBJECT_
S_gtk_range_get_show_fill_level(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_range_set_restrict_to_fill_level(USER_OBJECT_ s_object, USER_OBJECT_ s_restrict_to_fill_level); 

  USER_OBJECT_
S_gtk_range_get_restrict_to_fill_level(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_range_set_fill_level(USER_OBJECT_ s_object, USER_OBJECT_ s_fill_level); 

  USER_OBJECT_
S_gtk_range_get_fill_level(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_rc_parse_color_full(USER_OBJECT_ s_scanner, USER_OBJECT_ s_style); 

  USER_OBJECT_
S_gtk_recent_action_get_type(void); 

  USER_OBJECT_
S_gtk_recent_action_new(USER_OBJECT_ s_name, USER_OBJECT_ s_label, USER_OBJECT_ s_tooltip, USER_OBJECT_ s_stock_id); 

  USER_OBJECT_
S_gtk_recent_action_new_for_manager(USER_OBJECT_ s_name, USER_OBJECT_ s_label, USER_OBJECT_ s_tooltip, USER_OBJECT_ s_stock_id, USER_OBJECT_ s_manager); 

  USER_OBJECT_
S_gtk_recent_action_get_show_numbers(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_recent_action_set_show_numbers(USER_OBJECT_ s_object, USER_OBJECT_ s_show_numbers); 

  USER_OBJECT_
S_gtk_scale_button_get_type(void); 

  USER_OBJECT_
S_gtk_scale_button_new(USER_OBJECT_ s_size, USER_OBJECT_ s_min, USER_OBJECT_ s_max, USER_OBJECT_ s_step, USER_OBJECT_ s_icons); 

  USER_OBJECT_
S_gtk_scale_button_set_icons(USER_OBJECT_ s_object, USER_OBJECT_ s_icons); 

  USER_OBJECT_
S_gtk_scale_button_get_value(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_scale_button_set_value(USER_OBJECT_ s_object, USER_OBJECT_ s_value); 

  USER_OBJECT_
S_gtk_scale_button_get_adjustment(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_scale_button_set_adjustment(USER_OBJECT_ s_object, USER_OBJECT_ s_adjustment); 

  USER_OBJECT_
S_gtk_status_icon_set_screen(USER_OBJECT_ s_object, USER_OBJECT_ s_screen); 

  USER_OBJECT_
S_gtk_status_icon_get_screen(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_text_buffer_add_mark(USER_OBJECT_ s_object, USER_OBJECT_ s_mark, USER_OBJECT_ s_where); 

  USER_OBJECT_
S_gtk_text_mark_new(USER_OBJECT_ s_name, USER_OBJECT_ s_left_gravity); 

  USER_OBJECT_
S_gtk_tooltip_get_type(void); 

  USER_OBJECT_
S_gtk_tooltip_set_markup(USER_OBJECT_ s_object, USER_OBJECT_ s_markup); 

  USER_OBJECT_
S_gtk_tooltip_set_text(USER_OBJECT_ s_object, USER_OBJECT_ s_text); 

  USER_OBJECT_
S_gtk_tooltip_set_icon(USER_OBJECT_ s_object, USER_OBJECT_ s_pixbuf); 

  USER_OBJECT_
S_gtk_tooltip_set_icon_from_stock(USER_OBJECT_ s_object, USER_OBJECT_ s_stock_id, USER_OBJECT_ s_size); 

  USER_OBJECT_
S_gtk_tooltip_set_custom(USER_OBJECT_ s_object, USER_OBJECT_ s_custom_widget); 

  USER_OBJECT_
S_gtk_tooltip_trigger_tooltip_query(USER_OBJECT_ s_display); 

  USER_OBJECT_
S_gtk_tooltip_set_tip_area(USER_OBJECT_ s_object, USER_OBJECT_ s_area); 

  USER_OBJECT_
S_gtk_tool_item_set_tooltip_text(USER_OBJECT_ s_object, USER_OBJECT_ s_text); 

  USER_OBJECT_
S_gtk_tool_item_set_tooltip_markup(USER_OBJECT_ s_object, USER_OBJECT_ s_markup); 

  USER_OBJECT_
S_gtk_tree_store_set_valuesv(USER_OBJECT_ s_object, USER_OBJECT_ s_iter, USER_OBJECT_ s_columns, USER_OBJECT_ s_values); 

  USER_OBJECT_
S_gtk_tree_view_column_get_tree_view(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_tree_view_convert_widget_to_tree_coords(USER_OBJECT_ s_object, USER_OBJECT_ s_wx, USER_OBJECT_ s_wy); 

  USER_OBJECT_
S_gtk_tree_view_convert_tree_to_widget_coords(USER_OBJECT_ s_object, USER_OBJECT_ s_tx, USER_OBJECT_ s_ty); 

  USER_OBJECT_
S_gtk_tree_view_convert_widget_to_bin_window_coords(USER_OBJECT_ s_object, USER_OBJECT_ s_wx, USER_OBJECT_ s_wy); 

  USER_OBJECT_
S_gtk_tree_view_convert_bin_window_to_widget_coords(USER_OBJECT_ s_object, USER_OBJECT_ s_bx, USER_OBJECT_ s_by); 

  USER_OBJECT_
S_gtk_tree_view_convert_tree_to_bin_window_coords(USER_OBJECT_ s_object, USER_OBJECT_ s_tx, USER_OBJECT_ s_ty); 

  USER_OBJECT_
S_gtk_tree_view_convert_bin_window_to_tree_coords(USER_OBJECT_ s_object, USER_OBJECT_ s_bx, USER_OBJECT_ s_by); 

  USER_OBJECT_
S_gtk_tree_view_set_show_expanders(USER_OBJECT_ s_object, USER_OBJECT_ s_enabled); 

  USER_OBJECT_
S_gtk_tree_view_get_show_expanders(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_tree_view_set_level_indentation(USER_OBJECT_ s_object, USER_OBJECT_ s_indentation); 

  USER_OBJECT_
S_gtk_tree_view_get_level_indentation(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_tree_view_is_rubber_banding_active(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_tree_view_set_tooltip_column(USER_OBJECT_ s_object, USER_OBJECT_ s_column); 

  USER_OBJECT_
S_gtk_tree_view_get_tooltip_column(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_tree_view_set_tooltip_row(USER_OBJECT_ s_object, USER_OBJECT_ s_tooltip, USER_OBJECT_ s_path); 

  USER_OBJECT_
S_gtk_tree_view_set_tooltip_cell(USER_OBJECT_ s_object, USER_OBJECT_ s_tooltip, USER_OBJECT_ s_path, USER_OBJECT_ s_column, USER_OBJECT_ s_cell); 

  USER_OBJECT_
S_gtk_volume_button_get_type(void); 

  USER_OBJECT_
S_gtk_volume_button_new(void); 

  USER_OBJECT_
S_gtk_widget_keynav_failed(USER_OBJECT_ s_object, USER_OBJECT_ s_direction); 

  USER_OBJECT_
S_gtk_widget_error_bell(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_widget_set_tooltip_window(USER_OBJECT_ s_object, USER_OBJECT_ s_custom_window); 

  USER_OBJECT_
S_gtk_widget_get_tooltip_window(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_widget_trigger_tooltip_query(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_widget_set_tooltip_text(USER_OBJECT_ s_object, USER_OBJECT_ s_text); 

  USER_OBJECT_
S_gtk_widget_get_tooltip_text(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_widget_set_tooltip_markup(USER_OBJECT_ s_object, USER_OBJECT_ s_markup); 

  USER_OBJECT_
S_gtk_widget_get_tooltip_markup(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_widget_modify_cursor(USER_OBJECT_ s_object, USER_OBJECT_ s_primary, USER_OBJECT_ s_secondary); 

  USER_OBJECT_
S_gtk_widget_get_has_tooltip(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_widget_set_has_tooltip(USER_OBJECT_ s_object, USER_OBJECT_ s_has_tooltip); 

  USER_OBJECT_
S_gtk_window_set_opacity(USER_OBJECT_ s_object, USER_OBJECT_ s_opacity); 

  USER_OBJECT_
S_gtk_window_get_opacity(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_window_set_startup_id(USER_OBJECT_ s_object, USER_OBJECT_ s_startup_id); 

  USER_OBJECT_
S_gtk_accel_group_get_is_locked(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_accel_group_get_modifier_mask(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_adjustment_get_lower(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_adjustment_set_lower(USER_OBJECT_ s_object, USER_OBJECT_ s_lower); 

  USER_OBJECT_
S_gtk_adjustment_get_upper(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_adjustment_set_upper(USER_OBJECT_ s_object, USER_OBJECT_ s_upper); 

  USER_OBJECT_
S_gtk_adjustment_get_step_increment(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_adjustment_set_step_increment(USER_OBJECT_ s_object, USER_OBJECT_ s_step_increment); 

  USER_OBJECT_
S_gtk_adjustment_get_page_increment(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_adjustment_set_page_increment(USER_OBJECT_ s_object, USER_OBJECT_ s_page_increment); 

  USER_OBJECT_
S_gtk_adjustment_get_page_size(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_adjustment_set_page_size(USER_OBJECT_ s_object, USER_OBJECT_ s_page_size); 

  USER_OBJECT_
S_gtk_adjustment_configure(USER_OBJECT_ s_object, USER_OBJECT_ s_value, USER_OBJECT_ s_lower, USER_OBJECT_ s_upper, USER_OBJECT_ s_step_increment, USER_OBJECT_ s_page_increment, USER_OBJECT_ s_page_size); 

  USER_OBJECT_
S_gtk_builder_add_objects_from_file(USER_OBJECT_ s_object, USER_OBJECT_ s_filename, USER_OBJECT_ s_object_ids); 

  USER_OBJECT_
S_gtk_builder_add_objects_from_string(USER_OBJECT_ s_object, USER_OBJECT_ s_buffer, USER_OBJECT_ s_length, USER_OBJECT_ s_object_ids); 

  USER_OBJECT_
S_gtk_calendar_set_detail_func(USER_OBJECT_ s_object, USER_OBJECT_ s_func, USER_OBJECT_ s_data); 

  USER_OBJECT_
S_gtk_calendar_set_detail_width_chars(USER_OBJECT_ s_object, USER_OBJECT_ s_chars); 

  USER_OBJECT_
S_gtk_calendar_set_detail_height_rows(USER_OBJECT_ s_object, USER_OBJECT_ s_rows); 

  USER_OBJECT_
S_gtk_calendar_get_detail_width_chars(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_calendar_get_detail_height_rows(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_clipboard_wait_is_uris_available(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_clipboard_wait_for_uris(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_clipboard_request_uris(USER_OBJECT_ s_object, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data); 

  USER_OBJECT_
S_gtk_color_selection_dialog_get_color_selection(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_combo_box_set_button_sensitivity(USER_OBJECT_ s_object, USER_OBJECT_ s_sensitivity); 

  USER_OBJECT_
S_gtk_combo_box_get_button_sensitivity(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_container_get_focus_child(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_dialog_get_action_area(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_dialog_get_content_area(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_entry_set_overwrite_mode(USER_OBJECT_ s_object, USER_OBJECT_ s_overwrite); 

  USER_OBJECT_
S_gtk_entry_get_overwrite_mode(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_entry_get_text_length(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_file_chooser_get_file(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_file_chooser_set_file(USER_OBJECT_ s_object, USER_OBJECT_ s_file); 

  USER_OBJECT_
S_gtk_file_chooser_select_file(USER_OBJECT_ s_object, USER_OBJECT_ s_file); 

  USER_OBJECT_
S_gtk_file_chooser_unselect_file(USER_OBJECT_ s_object, USER_OBJECT_ s_file); 

  USER_OBJECT_
S_gtk_file_chooser_get_files(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_file_chooser_set_current_folder_file(USER_OBJECT_ s_object, USER_OBJECT_ s_file); 

  USER_OBJECT_
S_gtk_file_chooser_get_current_folder_file(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_file_chooser_get_preview_file(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_font_selection_dialog_get_ok_button(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_font_selection_dialog_get_apply_button(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_font_selection_dialog_get_cancel_button(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_font_selection_get_family_list(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_font_selection_get_face_list(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_font_selection_get_size_entry(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_font_selection_get_size_list(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_font_selection_get_preview_entry(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_font_selection_get_family(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_font_selection_get_face(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_font_selection_get_size(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_handle_box_get_child_detached(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_icon_info_new_for_pixbuf(USER_OBJECT_ s_icon_theme, USER_OBJECT_ s_pixbuf); 

  USER_OBJECT_
S_gtk_icon_theme_lookup_by_gicon(USER_OBJECT_ s_object, USER_OBJECT_ s_icon, USER_OBJECT_ s_size, USER_OBJECT_ s_flags); 

  USER_OBJECT_
S_gtk_image_set_from_gicon(USER_OBJECT_ s_object, USER_OBJECT_ s_icon, USER_OBJECT_ s_size); 

  USER_OBJECT_
S_gtk_image_new_from_gicon(USER_OBJECT_ s_icon, USER_OBJECT_ s_size); 

  USER_OBJECT_
S_gtk_image_get_gicon(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_layout_get_bin_window(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_menu_get_accel_path(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_menu_get_monitor(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_menu_item_get_accel_path(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_message_dialog_get_image(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_mount_operation_get_type(void); 

  USER_OBJECT_
S_gtk_mount_operation_new(USER_OBJECT_ s_parent); 

  USER_OBJECT_
S_gtk_mount_operation_is_showing(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_mount_operation_set_parent(USER_OBJECT_ s_object, USER_OBJECT_ s_parent); 

  USER_OBJECT_
S_gtk_mount_operation_get_parent(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_mount_operation_set_screen(USER_OBJECT_ s_object, USER_OBJECT_ s_screen); 

  USER_OBJECT_
S_gtk_mount_operation_get_screen(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_plug_get_embedded(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_plug_get_socket_window(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_page_setup_load_key_file(USER_OBJECT_ s_object, USER_OBJECT_ s_key_file, USER_OBJECT_ s_group_name); 

  USER_OBJECT_
S_gtk_page_setup_load_file(USER_OBJECT_ s_object, USER_OBJECT_ s_file_name); 

  USER_OBJECT_
S_gtk_print_settings_load_key_file(USER_OBJECT_ s_object, USER_OBJECT_ s_key_file, USER_OBJECT_ s_group_name); 

  USER_OBJECT_
S_gtk_print_settings_load_file(USER_OBJECT_ s_object, USER_OBJECT_ s_file_name); 

  USER_OBJECT_
S_gtk_print_settings_get_number_up_layout(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_print_settings_set_number_up_layout(USER_OBJECT_ s_object, USER_OBJECT_ s_number_up_layout); 

  USER_OBJECT_
S_gtk_scale_button_get_orientation(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_scale_button_set_orientation(USER_OBJECT_ s_object, USER_OBJECT_ s_orientation); 

  USER_OBJECT_
S_gtk_scale_button_get_plus_button(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_scale_button_get_minus_button(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_scale_button_get_popup(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_selection_data_get_target(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_selection_data_get_data_type(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_selection_data_get_format(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_selection_data_get_data(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_selection_data_get_length(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_selection_data_get_display(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_show_uri(USER_OBJECT_ s_screen, USER_OBJECT_ s_uri, USER_OBJECT_ s_timestamp); 

  USER_OBJECT_
S_gtk_socket_get_plug_window(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_status_icon_new_from_gicon(USER_OBJECT_ s_icon); 

  USER_OBJECT_
S_gtk_status_icon_get_x11_window_id(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_status_icon_get_gicon(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_status_icon_set_from_gicon(USER_OBJECT_ s_object, USER_OBJECT_ s_icon); 

  USER_OBJECT_
S_gtk_tooltip_set_icon_from_icon_name(USER_OBJECT_ s_object, USER_OBJECT_ s_icon_name, USER_OBJECT_ s_size); 

  USER_OBJECT_
S_gtk_tool_item_toolbar_reconfigured(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_tool_shell_get_icon_size(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_tool_shell_get_orientation(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_tool_shell_get_style(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_tool_shell_get_relief_style(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_tool_shell_rebuild_menu(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_tree_selection_get_select_function(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_widget_get_snapshot(USER_OBJECT_ s_object, USER_OBJECT_ s_clip_rect); 

  USER_OBJECT_
S_gtk_widget_get_window(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_window_get_default_widget(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_window_group_list_windows(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_link_button_get_visited(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_link_button_set_visited(USER_OBJECT_ s_object, USER_OBJECT_ s_visited); 

  USER_OBJECT_
S_gtk_border_new(void); 

  USER_OBJECT_
S_gtk_test_register_all_types(void); 

  USER_OBJECT_
S_gtk_test_list_all_types(void); 

  USER_OBJECT_
S_gtk_test_find_widget(USER_OBJECT_ s_widget, USER_OBJECT_ s_label_pattern, USER_OBJECT_ s_widget_type); 

  USER_OBJECT_
S_gtk_test_create_simple_window(USER_OBJECT_ s_window_title, USER_OBJECT_ s_dialog_text); 

  USER_OBJECT_
S_gtk_test_slider_set_perc(USER_OBJECT_ s_widget, USER_OBJECT_ s_percentage); 

  USER_OBJECT_
S_gtk_test_slider_get_value(USER_OBJECT_ s_widget); 

  USER_OBJECT_
S_gtk_test_spin_button_click(USER_OBJECT_ s_spinner, USER_OBJECT_ s_button, USER_OBJECT_ s_upwards); 

  USER_OBJECT_
S_gtk_test_widget_click(USER_OBJECT_ s_widget, USER_OBJECT_ s_button, USER_OBJECT_ s_modifiers); 

  USER_OBJECT_
S_gtk_test_widget_send_key(USER_OBJECT_ s_widget, USER_OBJECT_ s_keyval, USER_OBJECT_ s_modifiers); 

  USER_OBJECT_
S_gtk_test_text_set(USER_OBJECT_ s_widget, USER_OBJECT_ s_string); 

  USER_OBJECT_
S_gtk_test_text_get(USER_OBJECT_ s_widget); 

  USER_OBJECT_
S_gtk_test_find_sibling(USER_OBJECT_ s_base_widget, USER_OBJECT_ s_widget_type); 

  USER_OBJECT_
S_gtk_test_find_label(USER_OBJECT_ s_widget, USER_OBJECT_ s_label_pattern); 

  USER_OBJECT_
S_gtk_action_block_activate(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_action_unblock_activate(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_action_set_gicon(USER_OBJECT_ s_object, USER_OBJECT_ s_icon); 

  USER_OBJECT_
S_gtk_action_get_gicon(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_action_set_icon_name(USER_OBJECT_ s_object, USER_OBJECT_ s_icon_name); 

  USER_OBJECT_
S_gtk_action_get_icon_name(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_action_set_visible_horizontal(USER_OBJECT_ s_object, USER_OBJECT_ s_visible_horizontal); 

  USER_OBJECT_
S_gtk_action_get_visible_horizontal(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_action_set_visible_vertical(USER_OBJECT_ s_object, USER_OBJECT_ s_visible_vertical); 

  USER_OBJECT_
S_gtk_action_get_visible_vertical(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_action_set_is_important(USER_OBJECT_ s_object, USER_OBJECT_ s_is_important); 

  USER_OBJECT_
S_gtk_action_get_is_important(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_action_set_label(USER_OBJECT_ s_object, USER_OBJECT_ s_label); 

  USER_OBJECT_
S_gtk_action_get_label(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_action_set_short_label(USER_OBJECT_ s_object, USER_OBJECT_ s_short_label); 

  USER_OBJECT_
S_gtk_action_get_short_label(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_action_set_tooltip(USER_OBJECT_ s_object, USER_OBJECT_ s_tooltip); 

  USER_OBJECT_
S_gtk_action_get_tooltip(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_action_set_stock_id(USER_OBJECT_ s_object, USER_OBJECT_ s_stock_id); 

  USER_OBJECT_
S_gtk_action_get_stock_id(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_activatable_get_type(void); 

  USER_OBJECT_
S_gtk_activatable_sync_action_properties(USER_OBJECT_ s_object, USER_OBJECT_ s_action); 

  USER_OBJECT_
S_gtk_activatable_set_related_action(USER_OBJECT_ s_object, USER_OBJECT_ s_action); 

  USER_OBJECT_
S_gtk_activatable_get_related_action(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_activatable_set_use_action_appearance(USER_OBJECT_ s_object, USER_OBJECT_ s_use_appearance); 

  USER_OBJECT_
S_gtk_activatable_get_use_action_appearance(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_activatable_do_set_related_action(USER_OBJECT_ s_object, USER_OBJECT_ s_action); 

  USER_OBJECT_
S_gtk_cell_view_get_model(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_entry_set_progress_fraction(USER_OBJECT_ s_object, USER_OBJECT_ s_fraction); 

  USER_OBJECT_
S_gtk_entry_get_progress_fraction(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_entry_set_progress_pulse_step(USER_OBJECT_ s_object, USER_OBJECT_ s_fraction); 

  USER_OBJECT_
S_gtk_entry_get_progress_pulse_step(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_entry_progress_pulse(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_entry_set_icon_from_pixbuf(USER_OBJECT_ s_object, USER_OBJECT_ s_icon_pos, USER_OBJECT_ s_pixbuf); 

  USER_OBJECT_
S_gtk_entry_set_icon_from_stock(USER_OBJECT_ s_object, USER_OBJECT_ s_icon_pos, USER_OBJECT_ s_stock_id); 

  USER_OBJECT_
S_gtk_entry_set_icon_from_icon_name(USER_OBJECT_ s_object, USER_OBJECT_ s_icon_pos, USER_OBJECT_ s_icon_name); 

  USER_OBJECT_
S_gtk_entry_set_icon_from_gicon(USER_OBJECT_ s_object, USER_OBJECT_ s_icon_pos, USER_OBJECT_ s_icon); 

  USER_OBJECT_
S_gtk_entry_get_icon_storage_type(USER_OBJECT_ s_object, USER_OBJECT_ s_icon_pos); 

  USER_OBJECT_
S_gtk_entry_get_icon_pixbuf(USER_OBJECT_ s_object, USER_OBJECT_ s_icon_pos); 

  USER_OBJECT_
S_gtk_entry_get_icon_stock(USER_OBJECT_ s_object, USER_OBJECT_ s_icon_pos); 

  USER_OBJECT_
S_gtk_entry_get_icon_name(USER_OBJECT_ s_object, USER_OBJECT_ s_icon_pos); 

  USER_OBJECT_
S_gtk_entry_get_icon_gicon(USER_OBJECT_ s_object, USER_OBJECT_ s_icon_pos); 

  USER_OBJECT_
S_gtk_entry_set_icon_activatable(USER_OBJECT_ s_object, USER_OBJECT_ s_icon_pos, USER_OBJECT_ s_activatable); 

  USER_OBJECT_
S_gtk_entry_get_icon_activatable(USER_OBJECT_ s_object, USER_OBJECT_ s_icon_pos); 

  USER_OBJECT_
S_gtk_entry_set_icon_sensitive(USER_OBJECT_ s_object, USER_OBJECT_ s_icon_pos, USER_OBJECT_ s_sensitive); 

  USER_OBJECT_
S_gtk_entry_get_icon_sensitive(USER_OBJECT_ s_object, USER_OBJECT_ s_icon_pos); 

  USER_OBJECT_
S_gtk_entry_get_icon_at_pos(USER_OBJECT_ s_object, USER_OBJECT_ s_x, USER_OBJECT_ s_y); 

  USER_OBJECT_
S_gtk_entry_set_icon_tooltip_text(USER_OBJECT_ s_object, USER_OBJECT_ s_icon_pos, USER_OBJECT_ s_tooltip); 

  USER_OBJECT_
S_gtk_entry_get_icon_tooltip_text(USER_OBJECT_ s_object, USER_OBJECT_ s_icon_pos); 

  USER_OBJECT_
S_gtk_entry_set_icon_tooltip_markup(USER_OBJECT_ s_object, USER_OBJECT_ s_icon_pos, USER_OBJECT_ s_tooltip); 

  USER_OBJECT_
S_gtk_entry_get_icon_tooltip_markup(USER_OBJECT_ s_object, USER_OBJECT_ s_icon_pos); 

  USER_OBJECT_
S_gtk_entry_unset_invisible_char(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_entry_set_icon_drag_source(USER_OBJECT_ s_object, USER_OBJECT_ s_icon_pos, USER_OBJECT_ s_target_list, USER_OBJECT_ s_actions); 

  USER_OBJECT_
S_gtk_entry_get_current_icon_drag_source(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_image_menu_item_set_always_show_image(USER_OBJECT_ s_object, USER_OBJECT_ s_always_show); 

  USER_OBJECT_
S_gtk_image_menu_item_get_always_show_image(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_image_menu_item_set_use_stock(USER_OBJECT_ s_object, USER_OBJECT_ s_use_stock); 

  USER_OBJECT_
S_gtk_image_menu_item_get_use_stock(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_image_menu_item_set_accel_group(USER_OBJECT_ s_object, USER_OBJECT_ s_accel_group); 

  USER_OBJECT_
S_gtk_im_multicontext_get_context_id(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_im_multicontext_set_context_id(USER_OBJECT_ s_object, USER_OBJECT_ s_context_id); 

  USER_OBJECT_
S_gtk_menu_item_set_label(USER_OBJECT_ s_object, USER_OBJECT_ s_label); 

  USER_OBJECT_
S_gtk_menu_item_get_label(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_menu_item_set_use_underline(USER_OBJECT_ s_object, USER_OBJECT_ s_setting); 

  USER_OBJECT_
S_gtk_menu_item_get_use_underline(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_orientable_get_type(void); 

  USER_OBJECT_
S_gtk_orientable_set_orientation(USER_OBJECT_ s_object, USER_OBJECT_ s_orientation); 

  USER_OBJECT_
S_gtk_orientable_get_orientation(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_print_operation_draw_page_finish(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_print_operation_set_defer_drawing(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_print_settings_get_resolution_x(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_print_settings_get_resolution_y(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_print_settings_set_resolution_xy(USER_OBJECT_ s_object, USER_OBJECT_ s_resolution_x, USER_OBJECT_ s_resolution_y); 

  USER_OBJECT_
S_gtk_print_settings_get_printer_lpi(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_print_settings_set_printer_lpi(USER_OBJECT_ s_object, USER_OBJECT_ s_lpi); 

  USER_OBJECT_
S_gtk_scale_add_mark(USER_OBJECT_ s_object, USER_OBJECT_ s_value, USER_OBJECT_ s_position, USER_OBJECT_ s_markup); 

  USER_OBJECT_
S_gtk_scale_clear_marks(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_selection_data_get_selection(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_status_icon_get_has_tooltip(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_status_icon_get_tooltip_text(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_status_icon_get_tooltip_markup(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_status_icon_set_has_tooltip(USER_OBJECT_ s_object, USER_OBJECT_ s_has_tooltip); 

  USER_OBJECT_
S_gtk_status_icon_set_tooltip_text(USER_OBJECT_ s_object, USER_OBJECT_ s_text); 

  USER_OBJECT_
S_gtk_status_icon_set_tooltip_markup(USER_OBJECT_ s_object, USER_OBJECT_ s_markup); 

  USER_OBJECT_
S_gtk_style_get_style_property(USER_OBJECT_ s_object, USER_OBJECT_ s_widget_type, USER_OBJECT_ s_property_name); 

  USER_OBJECT_
S_gtk_window_get_default_icon_name(void); 

  USER_OBJECT_
S_gtk_cell_renderer_set_alignment(USER_OBJECT_ s_object, USER_OBJECT_ s_xalign, USER_OBJECT_ s_yalign); 

  USER_OBJECT_
S_gtk_cell_renderer_get_alignment(USER_OBJECT_ s_object, USER_OBJECT_ s_xalign, USER_OBJECT_ s_yalign); 

  USER_OBJECT_
S_gtk_cell_renderer_set_padding(USER_OBJECT_ s_object, USER_OBJECT_ s_xpad, USER_OBJECT_ s_ypad); 

  USER_OBJECT_
S_gtk_cell_renderer_get_padding(USER_OBJECT_ s_object, USER_OBJECT_ s_xpad, USER_OBJECT_ s_ypad); 

  USER_OBJECT_
S_gtk_cell_renderer_set_visible(USER_OBJECT_ s_object, USER_OBJECT_ s_visible); 

  USER_OBJECT_
S_gtk_cell_renderer_get_visible(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_cell_renderer_set_sensitive(USER_OBJECT_ s_object, USER_OBJECT_ s_sensitive); 

  USER_OBJECT_
S_gtk_cell_renderer_get_sensitive(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_cell_renderer_toggle_get_activatable(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_cell_renderer_toggle_set_activatable(USER_OBJECT_ s_object, USER_OBJECT_ s_setting); 

  USER_OBJECT_
S_gtk_entry_new_with_buffer(USER_OBJECT_ s_buffer); 

  USER_OBJECT_
S_gtk_entry_get_buffer(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_entry_set_buffer(USER_OBJECT_ s_object, USER_OBJECT_ s_buffer); 

  USER_OBJECT_
S_gtk_entry_buffer_get_type(void); 

  USER_OBJECT_
S_gtk_entry_buffer_new(USER_OBJECT_ s_initial_chars, USER_OBJECT_ s_n_initial_chars); 

  USER_OBJECT_
S_gtk_entry_buffer_get_bytes(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_entry_buffer_get_length(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_entry_buffer_get_text(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_entry_buffer_set_text(USER_OBJECT_ s_object, USER_OBJECT_ s_chars, USER_OBJECT_ s_n_chars); 

  USER_OBJECT_
S_gtk_entry_buffer_set_max_length(USER_OBJECT_ s_object, USER_OBJECT_ s_max_length); 

  USER_OBJECT_
S_gtk_entry_buffer_get_max_length(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_entry_buffer_insert_text(USER_OBJECT_ s_object, USER_OBJECT_ s_position, USER_OBJECT_ s_chars, USER_OBJECT_ s_n_chars); 

  USER_OBJECT_
S_gtk_entry_buffer_delete_text(USER_OBJECT_ s_object, USER_OBJECT_ s_position, USER_OBJECT_ s_n_chars); 

  USER_OBJECT_
S_gtk_entry_buffer_emit_inserted_text(USER_OBJECT_ s_object, USER_OBJECT_ s_position, USER_OBJECT_ s_chars, USER_OBJECT_ s_n_chars); 

  USER_OBJECT_
S_gtk_entry_buffer_emit_deleted_text(USER_OBJECT_ s_object, USER_OBJECT_ s_position, USER_OBJECT_ s_n_chars); 

  USER_OBJECT_
S_gtk_file_chooser_set_create_folders(USER_OBJECT_ s_object, USER_OBJECT_ s_create_folders); 

  USER_OBJECT_
S_gtk_file_chooser_get_create_folders(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_icon_view_set_item_padding(USER_OBJECT_ s_object, USER_OBJECT_ s_item_padding); 

  USER_OBJECT_
S_gtk_icon_view_get_item_padding(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_info_bar_get_type(void); 

  USER_OBJECT_
S_gtk_info_bar_new(void); 

  USER_OBJECT_
S_gtk_info_bar_get_action_area(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_info_bar_get_content_area(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_info_bar_add_action_widget(USER_OBJECT_ s_object, USER_OBJECT_ s_child, USER_OBJECT_ s_response_id); 

  USER_OBJECT_
S_gtk_info_bar_add_button(USER_OBJECT_ s_object, USER_OBJECT_ s_button_text, USER_OBJECT_ s_response_id); 

  USER_OBJECT_
S_gtk_info_bar_set_response_sensitive(USER_OBJECT_ s_object, USER_OBJECT_ s_response_id, USER_OBJECT_ s_setting); 

  USER_OBJECT_
S_gtk_info_bar_set_default_response(USER_OBJECT_ s_object, USER_OBJECT_ s_response_id); 

  USER_OBJECT_
S_gtk_info_bar_response(USER_OBJECT_ s_object, USER_OBJECT_ s_response_id); 

  USER_OBJECT_
S_gtk_info_bar_set_message_type(USER_OBJECT_ s_object, USER_OBJECT_ s_message_type); 

  USER_OBJECT_
S_gtk_info_bar_get_message_type(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_label_get_current_uri(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_label_set_track_visited_links(USER_OBJECT_ s_object, USER_OBJECT_ s_track_links); 

  USER_OBJECT_
S_gtk_label_get_track_visited_links(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_menu_set_reserve_toggle_size(USER_OBJECT_ s_object, USER_OBJECT_ s_reserve_toggle_size); 

  USER_OBJECT_
S_gtk_menu_get_reserve_toggle_size(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_print_operation_set_support_selection(USER_OBJECT_ s_object, USER_OBJECT_ s_support_selection); 

  USER_OBJECT_
S_gtk_print_operation_get_support_selection(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_print_operation_set_has_selection(USER_OBJECT_ s_object, USER_OBJECT_ s_has_selection); 

  USER_OBJECT_
S_gtk_print_operation_get_has_selection(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_print_operation_set_embed_page_setup(USER_OBJECT_ s_object, USER_OBJECT_ s_embed); 

  USER_OBJECT_
S_gtk_print_operation_get_embed_page_setup(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_print_operation_get_n_pages_to_print(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_range_set_flippable(USER_OBJECT_ s_object, USER_OBJECT_ s_flippable); 

  USER_OBJECT_
S_gtk_range_get_flippable(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_status_icon_set_title(USER_OBJECT_ s_object, USER_OBJECT_ s_title); 

  USER_OBJECT_
S_gtk_status_icon_get_title(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_widget_get_allocation(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_widget_set_allocation(USER_OBJECT_ s_object, USER_OBJECT_ s_allocation); 

  USER_OBJECT_
S_gtk_widget_get_app_paintable(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_widget_set_can_default(USER_OBJECT_ s_object, USER_OBJECT_ s_can_default); 

  USER_OBJECT_
S_gtk_widget_get_can_default(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_widget_set_can_focus(USER_OBJECT_ s_object, USER_OBJECT_ s_can_focus); 

  USER_OBJECT_
S_gtk_widget_get_can_focus(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_widget_get_double_buffered(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_widget_set_has_window(USER_OBJECT_ s_object, USER_OBJECT_ s_has_window); 

  USER_OBJECT_
S_gtk_widget_get_has_window(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_widget_set_receives_default(USER_OBJECT_ s_object, USER_OBJECT_ s_receives_default); 

  USER_OBJECT_
S_gtk_widget_get_receives_default(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_widget_get_sensitive(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_widget_get_state(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_widget_set_visible(USER_OBJECT_ s_object, USER_OBJECT_ s_visible); 

  USER_OBJECT_
S_gtk_widget_get_visible(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_widget_set_window(USER_OBJECT_ s_object, USER_OBJECT_ s_window); 

  USER_OBJECT_
S_gtk_widget_has_default(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_widget_has_focus(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_widget_has_grab(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_widget_is_sensitive(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_widget_is_toplevel(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_widget_is_drawable(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_hsv_get_type(void); 

  USER_OBJECT_
S_gtk_hsv_new(void); 

  USER_OBJECT_
S_gtk_hsv_set_color(USER_OBJECT_ s_object, USER_OBJECT_ s_h, USER_OBJECT_ s_s, USER_OBJECT_ s_v); 

  USER_OBJECT_
S_gtk_hsv_get_color(USER_OBJECT_ s_object, USER_OBJECT_ s_h, USER_OBJECT_ s_s, USER_OBJECT_ s_v); 

  USER_OBJECT_
S_gtk_hsv_set_metrics(USER_OBJECT_ s_object, USER_OBJECT_ s_size, USER_OBJECT_ s_ring_width); 

  USER_OBJECT_
S_gtk_hsv_get_metrics(USER_OBJECT_ s_object, USER_OBJECT_ s_size, USER_OBJECT_ s_ring_width); 

  USER_OBJECT_
S_gtk_hsv_is_adjusting(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_hsv_to_rgb(USER_OBJECT_ s_h, USER_OBJECT_ s_s, USER_OBJECT_ s_r, USER_OBJECT_ s_g, USER_OBJECT_ s_b); 

  USER_OBJECT_
S_gtk_rgb_to_hsv(USER_OBJECT_ s_r, USER_OBJECT_ s_g, USER_OBJECT_ s_h, USER_OBJECT_ s_s, USER_OBJECT_ s_v); 

  USER_OBJECT_
S_gtk_tool_palette_get_type(void); 

  USER_OBJECT_
S_gtk_tool_palette_new(void); 

  USER_OBJECT_
S_gtk_tool_palette_set_group_position(USER_OBJECT_ s_object, USER_OBJECT_ s_group, USER_OBJECT_ s_position); 

  USER_OBJECT_
S_gtk_tool_palette_set_exclusive(USER_OBJECT_ s_object, USER_OBJECT_ s_group, USER_OBJECT_ s_exclusive); 

  USER_OBJECT_
S_gtk_tool_palette_set_expand(USER_OBJECT_ s_object, USER_OBJECT_ s_group, USER_OBJECT_ s_expand); 

  USER_OBJECT_
S_gtk_tool_palette_get_group_position(USER_OBJECT_ s_object, USER_OBJECT_ s_group); 

  USER_OBJECT_
S_gtk_tool_palette_get_exclusive(USER_OBJECT_ s_object, USER_OBJECT_ s_group); 

  USER_OBJECT_
S_gtk_tool_palette_get_expand(USER_OBJECT_ s_object, USER_OBJECT_ s_group); 

  USER_OBJECT_
S_gtk_tool_palette_set_icon_size(USER_OBJECT_ s_object, USER_OBJECT_ s_icon_size); 

  USER_OBJECT_
S_gtk_tool_palette_unset_icon_size(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_tool_palette_set_style(USER_OBJECT_ s_object, USER_OBJECT_ s_style); 

  USER_OBJECT_
S_gtk_tool_palette_unset_style(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_tool_palette_get_icon_size(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_tool_palette_get_style(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_tool_palette_get_drop_item(USER_OBJECT_ s_object, USER_OBJECT_ s_x, USER_OBJECT_ s_y); 

  USER_OBJECT_
S_gtk_tool_palette_get_drop_group(USER_OBJECT_ s_object, USER_OBJECT_ s_x, USER_OBJECT_ s_y); 

  USER_OBJECT_
S_gtk_tool_palette_get_drag_item(USER_OBJECT_ s_object, USER_OBJECT_ s_selection); 

  USER_OBJECT_
S_gtk_tool_palette_set_drag_source(USER_OBJECT_ s_object, USER_OBJECT_ s_targets); 

  USER_OBJECT_
S_gtk_tool_palette_add_drag_dest(USER_OBJECT_ s_object, USER_OBJECT_ s_widget, USER_OBJECT_ s_flags, USER_OBJECT_ s_targets, USER_OBJECT_ s_actions); 

  USER_OBJECT_
S_gtk_tool_palette_get_hadjustment(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_tool_palette_get_vadjustment(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_tool_palette_get_drag_target_item(void); 

  USER_OBJECT_
S_gtk_tool_palette_get_drag_target_group(void); 

  USER_OBJECT_
S_gtk_tool_item_get_ellipsize_mode(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_tool_item_get_text_alignment(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_tool_item_get_text_orientation(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_tool_item_get_text_size_group(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_tool_item_group_get_type(void); 

  USER_OBJECT_
S_gtk_tool_item_group_new(USER_OBJECT_ s_label); 

  USER_OBJECT_
S_gtk_tool_item_group_set_label(USER_OBJECT_ s_object, USER_OBJECT_ s_label); 

  USER_OBJECT_
S_gtk_tool_item_group_set_label_widget(USER_OBJECT_ s_object, USER_OBJECT_ s_label_widget); 

  USER_OBJECT_
S_gtk_tool_item_group_set_collapsed(USER_OBJECT_ s_object, USER_OBJECT_ s_collapsed); 

  USER_OBJECT_
S_gtk_tool_item_group_set_ellipsize(USER_OBJECT_ s_object, USER_OBJECT_ s_ellipsize); 

  USER_OBJECT_
S_gtk_tool_item_group_set_header_relief(USER_OBJECT_ s_object, USER_OBJECT_ s_style); 

  USER_OBJECT_
S_gtk_tool_item_group_get_label(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_tool_item_group_get_label_widget(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_tool_item_group_get_collapsed(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_tool_item_group_get_ellipsize(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_tool_item_group_get_header_relief(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_tool_item_group_insert(USER_OBJECT_ s_object, USER_OBJECT_ s_item, USER_OBJECT_ s_position); 

  USER_OBJECT_
S_gtk_tool_item_group_set_item_position(USER_OBJECT_ s_object, USER_OBJECT_ s_item, USER_OBJECT_ s_position); 

  USER_OBJECT_
S_gtk_tool_item_group_get_item_position(USER_OBJECT_ s_object, USER_OBJECT_ s_item); 

  USER_OBJECT_
S_gtk_tool_item_group_get_n_items(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_tool_item_group_get_nth_item(USER_OBJECT_ s_object, USER_OBJECT_ s_index); 

  USER_OBJECT_
S_gtk_tool_item_group_get_drop_item(USER_OBJECT_ s_object, USER_OBJECT_ s_x, USER_OBJECT_ s_y); 

  USER_OBJECT_
S_gtk_spinner_get_type(void); 

  USER_OBJECT_
S_gtk_spinner_new(void); 

  USER_OBJECT_
S_gtk_spinner_start(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_spinner_stop(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_cell_renderer_spinner_get_type(void); 

  USER_OBJECT_
S_gtk_cell_renderer_spinner_new(void); 

  USER_OBJECT_
S_gtk_action_get_always_show_image(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_action_set_always_show_image(USER_OBJECT_ s_object, USER_OBJECT_ s_always_show); 

  USER_OBJECT_
S_gtk_dialog_get_widget_for_response(USER_OBJECT_ s_object, USER_OBJECT_ s_response_id); 

  USER_OBJECT_
S_gtk_offscreen_window_get_type(void); 

  USER_OBJECT_
S_gtk_offscreen_window_new(void); 

  USER_OBJECT_
S_gtk_offscreen_window_get_pixmap(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_offscreen_window_get_pixbuf(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_entry_get_icon_window(USER_OBJECT_ s_object, USER_OBJECT_ s_icon_pos); 

  USER_OBJECT_
S_gtk_entry_get_text_window(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_notebook_get_action_widget(USER_OBJECT_ s_object, USER_OBJECT_ s_pack_type); 

  USER_OBJECT_
S_gtk_notebook_set_action_widget(USER_OBJECT_ s_object, USER_OBJECT_ s_widget, USER_OBJECT_ s_pack_type); 

  USER_OBJECT_
S_gtk_paint_spinner(USER_OBJECT_ s_object, USER_OBJECT_ s_window, USER_OBJECT_ s_state_type, USER_OBJECT_ s_area, USER_OBJECT_ s_widget, USER_OBJECT_ s_detail, USER_OBJECT_ s_step, USER_OBJECT_ s_x, USER_OBJECT_ s_y, USER_OBJECT_ s_width, USER_OBJECT_ s_height); 

  USER_OBJECT_
S_gtk_paned_get_handle_window(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_range_get_min_slider_size(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_range_get_range_rect(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_range_get_slider_range(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_range_get_slider_size_fixed(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_range_set_min_slider_size(USER_OBJECT_ s_object, USER_OBJECT_ s_min_size); 

  USER_OBJECT_
S_gtk_range_set_slider_size_fixed(USER_OBJECT_ s_object, USER_OBJECT_ s_size_fixed); 

  USER_OBJECT_
S_gtk_statusbar_get_message_area(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_status_icon_set_name(USER_OBJECT_ s_object, USER_OBJECT_ s_name); 

  USER_OBJECT_
S_gtk_viewport_get_bin_window(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_widget_set_realized(USER_OBJECT_ s_object, USER_OBJECT_ s_realized); 

  USER_OBJECT_
S_gtk_widget_get_realized(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_widget_set_mapped(USER_OBJECT_ s_object, USER_OBJECT_ s_mapped); 

  USER_OBJECT_
S_gtk_widget_get_mapped(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_widget_get_requisition(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_widget_style_attach(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_widget_has_rc_style(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_window_set_mnemonics_visible(USER_OBJECT_ s_object, USER_OBJECT_ s_setting); 

  USER_OBJECT_
S_gtk_window_get_mnemonics_visible(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_window_get_window_type(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_tooltip_set_icon_from_gicon(USER_OBJECT_ s_object, USER_OBJECT_ s_gicon, USER_OBJECT_ s_size); 

  USER_OBJECT_
S_gtk_print_context_get_hard_margins(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_tool_shell_get_text_orientation(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_tool_shell_get_text_alignment(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_tool_shell_get_ellipsize_mode(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_gtk_tool_shell_get_text_size_group(USER_OBJECT_ s_object); 

#endif
