#ifndef S_ATK_FUNCS_H
#define S_ATK_FUNCS_H
#include <RGtk2/RSCommon.h>

  USER_OBJECT_
S_atk_action_get_type(void); 

  USER_OBJECT_
S_atk_action_get_localized_name(USER_OBJECT_ s_object, USER_OBJECT_ s_i); 

  USER_OBJECT_
S_atk_action_do_action(USER_OBJECT_ s_object, USER_OBJECT_ s_i); 

  USER_OBJECT_
S_atk_action_get_n_actions(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_atk_action_get_description(USER_OBJECT_ s_object, USER_OBJECT_ s_i); 

  USER_OBJECT_
S_atk_action_get_name(USER_OBJECT_ s_object, USER_OBJECT_ s_i); 

  USER_OBJECT_
S_atk_action_get_keybinding(USER_OBJECT_ s_object, USER_OBJECT_ s_i); 

  USER_OBJECT_
S_atk_action_set_description(USER_OBJECT_ s_object, USER_OBJECT_ s_i, USER_OBJECT_ s_desc); 

  USER_OBJECT_
S_atk_component_get_type(void); 

  USER_OBJECT_
S_atk_component_contains(USER_OBJECT_ s_object, USER_OBJECT_ s_x, USER_OBJECT_ s_y, USER_OBJECT_ s_coord_type); 

  USER_OBJECT_
S_atk_component_ref_accessible_at_point(USER_OBJECT_ s_object, USER_OBJECT_ s_x, USER_OBJECT_ s_y, USER_OBJECT_ s_coord_type); 

  USER_OBJECT_
S_atk_component_get_extents(USER_OBJECT_ s_object, USER_OBJECT_ s_coord_type); 

  USER_OBJECT_
S_atk_component_get_position(USER_OBJECT_ s_object, USER_OBJECT_ s_coord_type); 

  USER_OBJECT_
S_atk_component_get_size(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_atk_component_grab_focus(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_atk_component_remove_focus_handler(USER_OBJECT_ s_object, USER_OBJECT_ s_handler_id); 

  USER_OBJECT_
S_atk_component_set_extents(USER_OBJECT_ s_object, USER_OBJECT_ s_x, USER_OBJECT_ s_y, USER_OBJECT_ s_width, USER_OBJECT_ s_height, USER_OBJECT_ s_coord_type); 

  USER_OBJECT_
S_atk_component_set_position(USER_OBJECT_ s_object, USER_OBJECT_ s_x, USER_OBJECT_ s_y, USER_OBJECT_ s_coord_type); 

  USER_OBJECT_
S_atk_component_set_size(USER_OBJECT_ s_object, USER_OBJECT_ s_width, USER_OBJECT_ s_height); 

  USER_OBJECT_
S_atk_component_get_layer(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_atk_component_get_mdi_zorder(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_atk_document_get_type(void); 

  USER_OBJECT_
S_atk_document_get_document_type(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_atk_document_get_document(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_atk_editable_text_get_type(void); 

  USER_OBJECT_
S_atk_editable_text_set_run_attributes(USER_OBJECT_ s_object, USER_OBJECT_ s_attrib_set, USER_OBJECT_ s_start_offset, USER_OBJECT_ s_end_offset); 

  USER_OBJECT_
S_atk_editable_text_set_text_contents(USER_OBJECT_ s_object, USER_OBJECT_ s_string); 

  USER_OBJECT_
S_atk_editable_text_copy_text(USER_OBJECT_ s_object, USER_OBJECT_ s_start_pos, USER_OBJECT_ s_end_pos); 

  USER_OBJECT_
S_atk_editable_text_cut_text(USER_OBJECT_ s_object, USER_OBJECT_ s_start_pos, USER_OBJECT_ s_end_pos); 

  USER_OBJECT_
S_atk_editable_text_delete_text(USER_OBJECT_ s_object, USER_OBJECT_ s_start_pos, USER_OBJECT_ s_end_pos); 

  USER_OBJECT_
S_atk_editable_text_paste_text(USER_OBJECT_ s_object, USER_OBJECT_ s_position); 

  USER_OBJECT_
S_atk_gobject_accessible_get_type(void); 

  USER_OBJECT_
S_atk_gobject_accessible_for_object(USER_OBJECT_ s_obj); 

  USER_OBJECT_
S_atk_gobject_accessible_get_object(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_atk_hyperlink_get_type(void); 

  USER_OBJECT_
S_atk_hyperlink_get_uri(USER_OBJECT_ s_object, USER_OBJECT_ s_i); 

  USER_OBJECT_
S_atk_hyperlink_get_object(USER_OBJECT_ s_object, USER_OBJECT_ s_i); 

  USER_OBJECT_
S_atk_hyperlink_get_end_index(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_atk_hyperlink_get_start_index(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_atk_hyperlink_is_valid(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_atk_hyperlink_get_n_anchors(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_atk_hyperlink_is_inline(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_atk_hyperlink_is_selected_link(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_atk_hypertext_get_type(void); 

  USER_OBJECT_
S_atk_hypertext_get_link(USER_OBJECT_ s_object, USER_OBJECT_ s_link_index); 

  USER_OBJECT_
S_atk_hypertext_get_n_links(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_atk_hypertext_get_link_index(USER_OBJECT_ s_object, USER_OBJECT_ s_char_index); 

  USER_OBJECT_
S_atk_image_get_type(void); 

  USER_OBJECT_
S_atk_image_get_image_description(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_atk_image_get_image_size(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_atk_image_set_image_description(USER_OBJECT_ s_object, USER_OBJECT_ s_description); 

  USER_OBJECT_
S_atk_image_get_image_position(USER_OBJECT_ s_object, USER_OBJECT_ s_coord_type); 

  USER_OBJECT_
S_atk_no_op_object_factory_get_type(void); 

  USER_OBJECT_
S_atk_no_op_object_factory_new(void); 

  USER_OBJECT_
S_atk_no_op_object_get_type(void); 

  USER_OBJECT_
S_atk_no_op_object_new(USER_OBJECT_ s_obj); 

  USER_OBJECT_
S_atk_object_factory_get_type(void); 

  USER_OBJECT_
S_atk_object_factory_create_accessible(USER_OBJECT_ s_object, USER_OBJECT_ s_obj); 

  USER_OBJECT_
S_atk_object_factory_invalidate(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_atk_object_factory_get_accessible_type(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_atk_object_get_type(void); 

  USER_OBJECT_
S_atk_implementor_get_type(void); 

  USER_OBJECT_
S_atk_implementor_ref_accessible(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_atk_object_get_name(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_atk_object_get_description(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_atk_object_get_parent(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_atk_object_get_n_accessible_children(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_atk_object_ref_accessible_child(USER_OBJECT_ s_object, USER_OBJECT_ s_i); 

  USER_OBJECT_
S_atk_object_ref_relation_set(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_atk_object_get_role(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_atk_object_get_layer(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_atk_object_get_mdi_zorder(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_atk_object_ref_state_set(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_atk_object_get_index_in_parent(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_atk_object_set_name(USER_OBJECT_ s_object, USER_OBJECT_ s_name); 

  USER_OBJECT_
S_atk_object_set_description(USER_OBJECT_ s_object, USER_OBJECT_ s_description); 

  USER_OBJECT_
S_atk_object_set_parent(USER_OBJECT_ s_object, USER_OBJECT_ s_parent); 

  USER_OBJECT_
S_atk_object_set_role(USER_OBJECT_ s_object, USER_OBJECT_ s_role); 

  USER_OBJECT_
S_atk_object_remove_property_change_handler(USER_OBJECT_ s_object, USER_OBJECT_ s_handler_id); 

  USER_OBJECT_
S_atk_object_notify_state_change(USER_OBJECT_ s_object, USER_OBJECT_ s_state, USER_OBJECT_ s_value); 

  USER_OBJECT_
S_atk_registry_get_type(void); 

  USER_OBJECT_
S_atk_registry_set_factory_type(USER_OBJECT_ s_object, USER_OBJECT_ s_type, USER_OBJECT_ s_factory_type); 

  USER_OBJECT_
S_atk_registry_get_factory_type(USER_OBJECT_ s_object, USER_OBJECT_ s_type); 

  USER_OBJECT_
S_atk_registry_get_factory(USER_OBJECT_ s_object, USER_OBJECT_ s_type); 

  USER_OBJECT_
S_atk_get_default_registry(void); 

  USER_OBJECT_
S_atk_relation_get_type(void); 

  USER_OBJECT_
S_atk_relation_type_register(USER_OBJECT_ s_name); 

  USER_OBJECT_
S_atk_relation_type_get_name(USER_OBJECT_ s_type); 

  USER_OBJECT_
S_atk_relation_type_for_name(USER_OBJECT_ s_name); 

  USER_OBJECT_
S_atk_relation_new(USER_OBJECT_ s_targets, USER_OBJECT_ s_relationship); 

  USER_OBJECT_
S_atk_relation_get_relation_type(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_atk_relation_get_target(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_atk_relation_add_target(USER_OBJECT_ s_object, USER_OBJECT_ s_target); 

  USER_OBJECT_
S_atk_relation_set_get_type(void); 

  USER_OBJECT_
S_atk_relation_set_new(void); 

  USER_OBJECT_
S_atk_relation_set_contains(USER_OBJECT_ s_object, USER_OBJECT_ s_relationship); 

  USER_OBJECT_
S_atk_relation_set_remove(USER_OBJECT_ s_object, USER_OBJECT_ s_relation); 

  USER_OBJECT_
S_atk_relation_set_add(USER_OBJECT_ s_object, USER_OBJECT_ s_relation); 

  USER_OBJECT_
S_atk_relation_set_get_n_relations(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_atk_relation_set_get_relation(USER_OBJECT_ s_object, USER_OBJECT_ s_i); 

  USER_OBJECT_
S_atk_relation_set_get_relation_by_type(USER_OBJECT_ s_object, USER_OBJECT_ s_relationship); 

  USER_OBJECT_
S_atk_relation_set_add_relation_by_type(USER_OBJECT_ s_object, USER_OBJECT_ s_relationship, USER_OBJECT_ s_target); 

  USER_OBJECT_
S_atk_selection_get_type(void); 

  USER_OBJECT_
S_atk_selection_add_selection(USER_OBJECT_ s_object, USER_OBJECT_ s_i); 

  USER_OBJECT_
S_atk_selection_clear_selection(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_atk_selection_ref_selection(USER_OBJECT_ s_object, USER_OBJECT_ s_i); 

  USER_OBJECT_
S_atk_selection_get_selection_count(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_atk_selection_is_child_selected(USER_OBJECT_ s_object, USER_OBJECT_ s_i); 

  USER_OBJECT_
S_atk_selection_remove_selection(USER_OBJECT_ s_object, USER_OBJECT_ s_i); 

  USER_OBJECT_
S_atk_selection_select_all_selection(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_atk_state_type_register(USER_OBJECT_ s_name); 

  USER_OBJECT_
S_atk_state_type_get_name(USER_OBJECT_ s_type); 

  USER_OBJECT_
S_atk_state_type_for_name(USER_OBJECT_ s_name); 

  USER_OBJECT_
S_atk_state_set_get_type(void); 

  USER_OBJECT_
S_atk_state_set_new(void); 

  USER_OBJECT_
S_atk_state_set_is_empty(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_atk_state_set_add_state(USER_OBJECT_ s_object, USER_OBJECT_ s_type); 

  USER_OBJECT_
S_atk_state_set_add_states(USER_OBJECT_ s_object, USER_OBJECT_ s_types); 

  USER_OBJECT_
S_atk_state_set_clear_states(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_atk_state_set_contains_state(USER_OBJECT_ s_object, USER_OBJECT_ s_type); 

  USER_OBJECT_
S_atk_state_set_contains_states(USER_OBJECT_ s_object, USER_OBJECT_ s_types); 

  USER_OBJECT_
S_atk_state_set_remove_state(USER_OBJECT_ s_object, USER_OBJECT_ s_type); 

  USER_OBJECT_
S_atk_state_set_and_sets(USER_OBJECT_ s_object, USER_OBJECT_ s_compare_set); 

  USER_OBJECT_
S_atk_state_set_or_sets(USER_OBJECT_ s_object, USER_OBJECT_ s_compare_set); 

  USER_OBJECT_
S_atk_state_set_xor_sets(USER_OBJECT_ s_object, USER_OBJECT_ s_compare_set); 

  USER_OBJECT_
S_atk_streamable_content_get_type(void); 

  USER_OBJECT_
S_atk_streamable_content_get_n_mime_types(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_atk_streamable_content_get_mime_type(USER_OBJECT_ s_object, USER_OBJECT_ s_i); 

  USER_OBJECT_
S_atk_streamable_content_get_stream(USER_OBJECT_ s_object, USER_OBJECT_ s_mime_type); 

  USER_OBJECT_
S_atk_table_get_type(void); 

  USER_OBJECT_
S_atk_table_ref_at(USER_OBJECT_ s_object, USER_OBJECT_ s_row, USER_OBJECT_ s_column); 

  USER_OBJECT_
S_atk_table_get_index_at(USER_OBJECT_ s_object, USER_OBJECT_ s_row, USER_OBJECT_ s_column); 

  USER_OBJECT_
S_atk_table_get_column_at_index(USER_OBJECT_ s_object, USER_OBJECT_ s_index); 

  USER_OBJECT_
S_atk_table_get_row_at_index(USER_OBJECT_ s_object, USER_OBJECT_ s_index); 

  USER_OBJECT_
S_atk_table_get_n_columns(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_atk_table_get_n_rows(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_atk_table_get_column_extent_at(USER_OBJECT_ s_object, USER_OBJECT_ s_row, USER_OBJECT_ s_column); 

  USER_OBJECT_
S_atk_table_get_row_extent_at(USER_OBJECT_ s_object, USER_OBJECT_ s_row, USER_OBJECT_ s_column); 

  USER_OBJECT_
S_atk_table_get_caption(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_atk_table_get_column_description(USER_OBJECT_ s_object, USER_OBJECT_ s_column); 

  USER_OBJECT_
S_atk_table_get_column_header(USER_OBJECT_ s_object, USER_OBJECT_ s_column); 

  USER_OBJECT_
S_atk_table_get_row_description(USER_OBJECT_ s_object, USER_OBJECT_ s_row); 

  USER_OBJECT_
S_atk_table_get_row_header(USER_OBJECT_ s_object, USER_OBJECT_ s_row); 

  USER_OBJECT_
S_atk_table_get_summary(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_atk_table_set_caption(USER_OBJECT_ s_object, USER_OBJECT_ s_caption); 

  USER_OBJECT_
S_atk_table_set_column_description(USER_OBJECT_ s_object, USER_OBJECT_ s_column, USER_OBJECT_ s_description); 

  USER_OBJECT_
S_atk_table_set_column_header(USER_OBJECT_ s_object, USER_OBJECT_ s_column, USER_OBJECT_ s_header); 

  USER_OBJECT_
S_atk_table_set_row_description(USER_OBJECT_ s_object, USER_OBJECT_ s_row, USER_OBJECT_ s_description); 

  USER_OBJECT_
S_atk_table_set_row_header(USER_OBJECT_ s_object, USER_OBJECT_ s_row, USER_OBJECT_ s_header); 

  USER_OBJECT_
S_atk_table_set_summary(USER_OBJECT_ s_object, USER_OBJECT_ s_accessible); 

  USER_OBJECT_
S_atk_table_get_selected_columns(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_atk_table_get_selected_rows(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_atk_table_is_column_selected(USER_OBJECT_ s_object, USER_OBJECT_ s_column); 

  USER_OBJECT_
S_atk_table_is_row_selected(USER_OBJECT_ s_object, USER_OBJECT_ s_row); 

  USER_OBJECT_
S_atk_table_is_selected(USER_OBJECT_ s_object, USER_OBJECT_ s_row, USER_OBJECT_ s_column); 

  USER_OBJECT_
S_atk_table_add_row_selection(USER_OBJECT_ s_object, USER_OBJECT_ s_row); 

  USER_OBJECT_
S_atk_table_remove_row_selection(USER_OBJECT_ s_object, USER_OBJECT_ s_row); 

  USER_OBJECT_
S_atk_table_add_column_selection(USER_OBJECT_ s_object, USER_OBJECT_ s_column); 

  USER_OBJECT_
S_atk_table_remove_column_selection(USER_OBJECT_ s_object, USER_OBJECT_ s_column); 

  USER_OBJECT_
S_atk_text_get_type(void); 

  USER_OBJECT_
S_atk_text_get_text(USER_OBJECT_ s_object, USER_OBJECT_ s_start_offset, USER_OBJECT_ s_end_offset); 

  USER_OBJECT_
S_atk_text_get_character_at_offset(USER_OBJECT_ s_object, USER_OBJECT_ s_offset); 

  USER_OBJECT_
S_atk_text_get_text_after_offset(USER_OBJECT_ s_object, USER_OBJECT_ s_offset, USER_OBJECT_ s_boundary_type); 

  USER_OBJECT_
S_atk_text_get_text_at_offset(USER_OBJECT_ s_object, USER_OBJECT_ s_offset, USER_OBJECT_ s_boundary_type); 

  USER_OBJECT_
S_atk_text_get_text_before_offset(USER_OBJECT_ s_object, USER_OBJECT_ s_offset, USER_OBJECT_ s_boundary_type); 

  USER_OBJECT_
S_atk_text_get_caret_offset(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_atk_text_get_range_extents(USER_OBJECT_ s_object, USER_OBJECT_ s_start_offset, USER_OBJECT_ s_end_offset, USER_OBJECT_ s_coord_type); 

  USER_OBJECT_
S_atk_text_get_bounded_ranges(USER_OBJECT_ s_object, USER_OBJECT_ s_rect, USER_OBJECT_ s_coord_type, USER_OBJECT_ s_x_clip_type, USER_OBJECT_ s_y_clip_type); 

  USER_OBJECT_
S_atk_text_get_character_extents(USER_OBJECT_ s_object, USER_OBJECT_ s_offset, USER_OBJECT_ s_coords); 

  USER_OBJECT_
S_atk_text_get_run_attributes(USER_OBJECT_ s_object, USER_OBJECT_ s_offset); 

  USER_OBJECT_
S_atk_text_get_default_attributes(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_atk_text_get_character_count(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_atk_text_get_offset_at_point(USER_OBJECT_ s_object, USER_OBJECT_ s_x, USER_OBJECT_ s_y, USER_OBJECT_ s_coords); 

  USER_OBJECT_
S_atk_text_get_n_selections(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_atk_text_get_selection(USER_OBJECT_ s_object, USER_OBJECT_ s_selection_num); 

  USER_OBJECT_
S_atk_text_add_selection(USER_OBJECT_ s_object, USER_OBJECT_ s_start_offset, USER_OBJECT_ s_end_offset); 

  USER_OBJECT_
S_atk_text_remove_selection(USER_OBJECT_ s_object, USER_OBJECT_ s_selection_num); 

  USER_OBJECT_
S_atk_text_set_selection(USER_OBJECT_ s_object, USER_OBJECT_ s_selection_num, USER_OBJECT_ s_start_offset, USER_OBJECT_ s_end_offset); 

  USER_OBJECT_
S_atk_text_set_caret_offset(USER_OBJECT_ s_object, USER_OBJECT_ s_offset); 

  USER_OBJECT_
S_atk_attribute_set_free(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_atk_text_attribute_register(USER_OBJECT_ s_name); 

  USER_OBJECT_
S_atk_text_attribute_get_name(USER_OBJECT_ s_attr); 

  USER_OBJECT_
S_atk_text_attribute_for_name(USER_OBJECT_ s_name); 

  USER_OBJECT_
S_atk_text_attribute_get_value(USER_OBJECT_ s_attr, USER_OBJECT_ s_index); 

  USER_OBJECT_
S_atk_util_get_type(void); 

  USER_OBJECT_
S_atk_remove_focus_tracker(USER_OBJECT_ s_tracker_id); 

  USER_OBJECT_
S_atk_focus_tracker_notify(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_atk_remove_global_event_listener(USER_OBJECT_ s_listener_id); 

  USER_OBJECT_
S_atk_add_key_event_listener(USER_OBJECT_ s_listener, USER_OBJECT_ s_data); 

  USER_OBJECT_
S_atk_remove_key_event_listener(USER_OBJECT_ s_listener_id); 

  USER_OBJECT_
S_atk_get_root(void); 

  USER_OBJECT_
S_atk_get_focus_object(void); 

  USER_OBJECT_
S_atk_get_toolkit_name(void); 

  USER_OBJECT_
S_atk_get_toolkit_version(void); 

  USER_OBJECT_
S_atk_value_get_type(void); 

  USER_OBJECT_
S_atk_value_get_current_value(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_atk_value_get_maximum_value(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_atk_value_get_minimum_value(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_atk_value_set_current_value(USER_OBJECT_ s_object, USER_OBJECT_ s_value); 

  USER_OBJECT_
S_atk_role_get_name(USER_OBJECT_ s_role); 

  USER_OBJECT_
S_atk_role_for_name(USER_OBJECT_ s_name); 

  USER_OBJECT_
S_atk_role_register(USER_OBJECT_ s_name); 

  USER_OBJECT_
S_atk_object_initialize(USER_OBJECT_ s_object, USER_OBJECT_ s_data); 

  USER_OBJECT_
S_atk_object_add_relationship(USER_OBJECT_ s_object, USER_OBJECT_ s_relationship, USER_OBJECT_ s_target); 

  USER_OBJECT_
S_atk_object_remove_relationship(USER_OBJECT_ s_object, USER_OBJECT_ s_relationship, USER_OBJECT_ s_target); 

  USER_OBJECT_
S_atk_role_get_localized_name(USER_OBJECT_ s_role); 

  USER_OBJECT_
S_atk_document_get_locale(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_atk_document_get_attributes(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_atk_document_get_attribute_value(USER_OBJECT_ s_object, USER_OBJECT_ s_attribute_name); 

  USER_OBJECT_
S_atk_document_set_attribute_value(USER_OBJECT_ s_object, USER_OBJECT_ s_attribute_name, USER_OBJECT_ s_attribute_value); 

  USER_OBJECT_
S_atk_component_get_alpha(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_atk_image_get_image_locale(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_atk_object_get_attributes(USER_OBJECT_ s_object); 

#endif
