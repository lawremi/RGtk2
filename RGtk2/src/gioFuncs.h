#ifndef S_GIO_FUNCS_H
#define S_GIO_FUNCS_H
#include <RGtk2/RSCommon.h>

  USER_OBJECT_
S_g_app_info_get_type(void); 

  USER_OBJECT_
S_g_app_info_launch_default_for_uri(USER_OBJECT_ s_uri, USER_OBJECT_ s_launch_context); 

  USER_OBJECT_
S_g_app_launch_context_get_type(void); 

  USER_OBJECT_
S_g_app_info_create_from_commandline(USER_OBJECT_ s_commandline, USER_OBJECT_ s_application_name, USER_OBJECT_ s_flags); 

  USER_OBJECT_
S_g_app_info_dup(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_app_info_equal(USER_OBJECT_ s_object, USER_OBJECT_ s_appinfo2); 

  USER_OBJECT_
S_g_app_info_get_id(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_app_info_get_name(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_app_info_get_description(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_app_info_get_executable(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_app_info_get_icon(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_app_info_launch(USER_OBJECT_ s_object, USER_OBJECT_ s_files, USER_OBJECT_ s_launch_context); 

  USER_OBJECT_
S_g_app_info_supports_uris(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_app_info_supports_files(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_app_info_launch_uris(USER_OBJECT_ s_object, USER_OBJECT_ s_uris, USER_OBJECT_ s_launch_context); 

  USER_OBJECT_
S_g_app_info_should_show(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_app_info_set_as_default_for_type(USER_OBJECT_ s_object, USER_OBJECT_ s_content_type); 

  USER_OBJECT_
S_g_app_info_set_as_default_for_extension(USER_OBJECT_ s_object, USER_OBJECT_ s_extension); 

  USER_OBJECT_
S_g_app_info_add_supports_type(USER_OBJECT_ s_object, USER_OBJECT_ s_content_type); 

  USER_OBJECT_
S_g_app_info_can_remove_supports_type(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_app_info_remove_supports_type(USER_OBJECT_ s_object, USER_OBJECT_ s_content_type); 

  USER_OBJECT_
S_g_app_info_get_all(void); 

  USER_OBJECT_
S_g_app_info_get_all_for_type(USER_OBJECT_ s_content_type); 

  USER_OBJECT_
S_g_app_info_get_default_for_type(USER_OBJECT_ s_content_type, USER_OBJECT_ s_must_support_uris); 

  USER_OBJECT_
S_g_app_info_get_default_for_uri_scheme(USER_OBJECT_ s_uri_scheme); 

  USER_OBJECT_
S_g_app_launch_context_new(void); 

  USER_OBJECT_
S_g_app_launch_context_get_display(USER_OBJECT_ s_object, USER_OBJECT_ s_info, USER_OBJECT_ s_files); 

  USER_OBJECT_
S_g_app_launch_context_get_startup_notify_id(USER_OBJECT_ s_object, USER_OBJECT_ s_info, USER_OBJECT_ s_files); 

  USER_OBJECT_
S_g_app_launch_context_launch_failed(USER_OBJECT_ s_object, USER_OBJECT_ s_startup_notify_id); 

  USER_OBJECT_
S_g_async_result_get_type(void); 

  USER_OBJECT_
S_g_async_result_get_user_data(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_async_result_get_source_object(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_buffered_input_stream_get_type(void); 

  USER_OBJECT_
S_g_buffered_input_stream_new(USER_OBJECT_ s_base_stream); 

  USER_OBJECT_
S_g_buffered_input_stream_new_sized(USER_OBJECT_ s_base_stream, USER_OBJECT_ s_size); 

  USER_OBJECT_
S_g_buffered_input_stream_get_buffer_size(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_buffered_input_stream_set_buffer_size(USER_OBJECT_ s_object, USER_OBJECT_ s_size); 

  USER_OBJECT_
S_g_buffered_input_stream_get_available(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_buffered_input_stream_peek(USER_OBJECT_ s_object, USER_OBJECT_ s_buffer, USER_OBJECT_ s_count); 

  USER_OBJECT_
S_g_buffered_input_stream_peek_buffer(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_buffered_input_stream_fill(USER_OBJECT_ s_object, USER_OBJECT_ s_count, USER_OBJECT_ s_cancellable); 

  USER_OBJECT_
S_g_buffered_input_stream_fill_async(USER_OBJECT_ s_object, USER_OBJECT_ s_count, USER_OBJECT_ s_io_priority, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data); 

  USER_OBJECT_
S_g_buffered_input_stream_fill_finish(USER_OBJECT_ s_object, USER_OBJECT_ s_result); 

  USER_OBJECT_
S_g_buffered_input_stream_read_byte(USER_OBJECT_ s_object, USER_OBJECT_ s_cancellable); 

  USER_OBJECT_
S_g_buffered_output_stream_get_type(void); 

  USER_OBJECT_
S_g_buffered_output_stream_new(USER_OBJECT_ s_base_stream); 

  USER_OBJECT_
S_g_buffered_output_stream_new_sized(USER_OBJECT_ s_base_stream, USER_OBJECT_ s_size); 

  USER_OBJECT_
S_g_buffered_output_stream_get_buffer_size(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_buffered_output_stream_set_buffer_size(USER_OBJECT_ s_object, USER_OBJECT_ s_size); 

  USER_OBJECT_
S_g_buffered_output_stream_get_auto_grow(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_buffered_output_stream_set_auto_grow(USER_OBJECT_ s_object, USER_OBJECT_ s_auto_grow); 

  USER_OBJECT_
S_g_cancellable_get_type(void); 

  USER_OBJECT_
S_g_cancellable_new(void); 

  USER_OBJECT_
S_g_cancellable_is_cancelled(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_cancellable_set_error_if_cancelled(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_cancellable_get_fd(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_cancellable_get_current(void); 

  USER_OBJECT_
S_g_cancellable_push_current(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_cancellable_pop_current(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_cancellable_reset(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_cancellable_cancel(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_content_type_equals(USER_OBJECT_ s_type1, USER_OBJECT_ s_type2); 

  USER_OBJECT_
S_g_content_type_is_a(USER_OBJECT_ s_type, USER_OBJECT_ s_supertype); 

  USER_OBJECT_
S_g_content_type_is_unknown(USER_OBJECT_ s_type); 

  USER_OBJECT_
S_g_content_type_get_description(USER_OBJECT_ s_type); 

  USER_OBJECT_
S_g_content_type_get_mime_type(USER_OBJECT_ s_type); 

  USER_OBJECT_
S_g_content_type_get_icon(USER_OBJECT_ s_type); 

  USER_OBJECT_
S_g_content_type_can_be_executable(USER_OBJECT_ s_type); 

  USER_OBJECT_
S_g_content_type_guess(USER_OBJECT_ s_filename, USER_OBJECT_ s_data); 

  USER_OBJECT_
S_g_content_types_get_registered(void); 

  USER_OBJECT_
S_g_data_input_stream_get_type(void); 

  USER_OBJECT_
S_g_data_input_stream_new(USER_OBJECT_ s_base_stream); 

  USER_OBJECT_
S_g_data_input_stream_set_byte_order(USER_OBJECT_ s_object, USER_OBJECT_ s_order); 

  USER_OBJECT_
S_g_data_input_stream_get_byte_order(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_data_input_stream_set_newline_type(USER_OBJECT_ s_object, USER_OBJECT_ s_type); 

  USER_OBJECT_
S_g_data_input_stream_get_newline_type(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_data_input_stream_read_byte(USER_OBJECT_ s_object, USER_OBJECT_ s_cancellable); 

  USER_OBJECT_
S_g_data_input_stream_read_int16(USER_OBJECT_ s_object, USER_OBJECT_ s_cancellable); 

  USER_OBJECT_
S_g_data_input_stream_read_uint16(USER_OBJECT_ s_object, USER_OBJECT_ s_cancellable); 

  USER_OBJECT_
S_g_data_input_stream_read_int32(USER_OBJECT_ s_object, USER_OBJECT_ s_cancellable); 

  USER_OBJECT_
S_g_data_input_stream_read_uint32(USER_OBJECT_ s_object, USER_OBJECT_ s_cancellable); 

  USER_OBJECT_
S_g_data_input_stream_read_int64(USER_OBJECT_ s_object, USER_OBJECT_ s_cancellable); 

  USER_OBJECT_
S_g_data_input_stream_read_uint64(USER_OBJECT_ s_object, USER_OBJECT_ s_cancellable); 

  USER_OBJECT_
S_g_data_input_stream_read_line(USER_OBJECT_ s_object, USER_OBJECT_ s_cancellable); 

  USER_OBJECT_
S_g_data_input_stream_read_until(USER_OBJECT_ s_object, USER_OBJECT_ s_stop_chars, USER_OBJECT_ s_cancellable); 

  USER_OBJECT_
S_g_data_output_stream_get_type(void); 

  USER_OBJECT_
S_g_data_output_stream_new(USER_OBJECT_ s_base_stream); 

  USER_OBJECT_
S_g_data_output_stream_set_byte_order(USER_OBJECT_ s_object, USER_OBJECT_ s_order); 

  USER_OBJECT_
S_g_data_output_stream_get_byte_order(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_data_output_stream_put_byte(USER_OBJECT_ s_object, USER_OBJECT_ s_data, USER_OBJECT_ s_cancellable); 

  USER_OBJECT_
S_g_data_output_stream_put_int16(USER_OBJECT_ s_object, USER_OBJECT_ s_data, USER_OBJECT_ s_cancellable); 

  USER_OBJECT_
S_g_data_output_stream_put_uint16(USER_OBJECT_ s_object, USER_OBJECT_ s_data, USER_OBJECT_ s_cancellable); 

  USER_OBJECT_
S_g_data_output_stream_put_int32(USER_OBJECT_ s_object, USER_OBJECT_ s_data, USER_OBJECT_ s_cancellable); 

  USER_OBJECT_
S_g_data_output_stream_put_uint32(USER_OBJECT_ s_object, USER_OBJECT_ s_data, USER_OBJECT_ s_cancellable); 

  USER_OBJECT_
S_g_data_output_stream_put_int64(USER_OBJECT_ s_object, USER_OBJECT_ s_data, USER_OBJECT_ s_cancellable); 

  USER_OBJECT_
S_g_data_output_stream_put_uint64(USER_OBJECT_ s_object, USER_OBJECT_ s_data, USER_OBJECT_ s_cancellable); 

  USER_OBJECT_
S_g_data_output_stream_put_string(USER_OBJECT_ s_object, USER_OBJECT_ s_str, USER_OBJECT_ s_cancellable); 

  USER_OBJECT_
S_g_drive_get_type(void); 

  USER_OBJECT_
S_g_drive_get_name(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_drive_get_icon(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_drive_has_volumes(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_drive_get_volumes(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_drive_is_media_removable(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_drive_has_media(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_drive_is_media_check_automatic(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_drive_can_poll_for_media(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_drive_can_eject(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_drive_eject(USER_OBJECT_ s_object, USER_OBJECT_ s_flags, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data); 

  USER_OBJECT_
S_g_drive_eject_finish(USER_OBJECT_ s_object, USER_OBJECT_ s_result); 

  USER_OBJECT_
S_g_drive_poll_for_media(USER_OBJECT_ s_object, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data); 

  USER_OBJECT_
S_g_drive_poll_for_media_finish(USER_OBJECT_ s_object, USER_OBJECT_ s_result); 

  USER_OBJECT_
S_g_drive_get_identifier(USER_OBJECT_ s_object, USER_OBJECT_ s_kind); 

  USER_OBJECT_
S_g_drive_enumerate_identifiers(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_file_attribute_info_list_new(void); 

  USER_OBJECT_
S_g_file_attribute_info_list_ref(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_file_attribute_info_list_unref(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_file_attribute_info_list_dup(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_file_attribute_info_list_lookup(USER_OBJECT_ s_object, USER_OBJECT_ s_name); 

  USER_OBJECT_
S_g_file_attribute_info_list_add(USER_OBJECT_ s_object, USER_OBJECT_ s_name, USER_OBJECT_ s_type, USER_OBJECT_ s_flags); 

  USER_OBJECT_
S_g_file_enumerator_get_type(void); 

  USER_OBJECT_
S_g_file_enumerator_next_file(USER_OBJECT_ s_object, USER_OBJECT_ s_cancellable); 

  USER_OBJECT_
S_g_file_enumerator_close(USER_OBJECT_ s_object, USER_OBJECT_ s_cancellable); 

  USER_OBJECT_
S_g_file_enumerator_next_files_async(USER_OBJECT_ s_object, USER_OBJECT_ s_num_files, USER_OBJECT_ s_io_priority, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data); 

  USER_OBJECT_
S_g_file_enumerator_next_files_finish(USER_OBJECT_ s_object, USER_OBJECT_ s_result); 

  USER_OBJECT_
S_g_file_enumerator_close_async(USER_OBJECT_ s_object, USER_OBJECT_ s_io_priority, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data); 

  USER_OBJECT_
S_g_file_enumerator_close_finish(USER_OBJECT_ s_object, USER_OBJECT_ s_result); 

  USER_OBJECT_
S_g_file_enumerator_is_closed(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_file_enumerator_has_pending(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_file_enumerator_set_pending(USER_OBJECT_ s_object, USER_OBJECT_ s_pending); 

  USER_OBJECT_
S_g_file_get_type(void); 

  USER_OBJECT_
S_g_file_new_for_path(USER_OBJECT_ s_path); 

  USER_OBJECT_
S_g_file_new_for_uri(USER_OBJECT_ s_uri); 

  USER_OBJECT_
S_g_file_new_for_commandline_arg(USER_OBJECT_ s_arg); 

  USER_OBJECT_
S_g_file_parse_name(USER_OBJECT_ s_parse_name); 

  USER_OBJECT_
S_g_file_dup(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_file_hash(USER_OBJECT_ s_file); 

  USER_OBJECT_
S_g_file_equal(USER_OBJECT_ s_object, USER_OBJECT_ s_file2); 

  USER_OBJECT_
S_g_file_get_basename(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_file_get_path(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_file_get_uri(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_file_get_parse_name(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_file_get_parent(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_file_get_child(USER_OBJECT_ s_object, USER_OBJECT_ s_name); 

  USER_OBJECT_
S_g_file_get_child_for_display_name(USER_OBJECT_ s_object, USER_OBJECT_ s_display_name); 

  USER_OBJECT_
S_g_file_has_prefix(USER_OBJECT_ s_object, USER_OBJECT_ s_descendant); 

  USER_OBJECT_
S_g_file_get_relative_path(USER_OBJECT_ s_object, USER_OBJECT_ s_descendant); 

  USER_OBJECT_
S_g_file_resolve_relative_path(USER_OBJECT_ s_object, USER_OBJECT_ s_relative_path); 

  USER_OBJECT_
S_g_file_is_native(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_file_has_uri_scheme(USER_OBJECT_ s_object, USER_OBJECT_ s_uri_scheme); 

  USER_OBJECT_
S_g_file_get_uri_scheme(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_file_read(USER_OBJECT_ s_object, USER_OBJECT_ s_cancellable); 

  USER_OBJECT_
S_g_file_read_async(USER_OBJECT_ s_object, USER_OBJECT_ s_io_priority, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data); 

  USER_OBJECT_
S_g_file_read_finish(USER_OBJECT_ s_object, USER_OBJECT_ s_res); 

  USER_OBJECT_
S_g_file_append_to(USER_OBJECT_ s_object, USER_OBJECT_ s_flags, USER_OBJECT_ s_cancellable); 

  USER_OBJECT_
S_g_file_create(USER_OBJECT_ s_object, USER_OBJECT_ s_flags, USER_OBJECT_ s_cancellable); 

  USER_OBJECT_
S_g_file_replace(USER_OBJECT_ s_object, USER_OBJECT_ s_etag, USER_OBJECT_ s_make_backup, USER_OBJECT_ s_flags, USER_OBJECT_ s_cancellable); 

  USER_OBJECT_
S_g_file_append_to_async(USER_OBJECT_ s_object, USER_OBJECT_ s_flags, USER_OBJECT_ s_io_priority, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data); 

  USER_OBJECT_
S_g_file_append_to_finish(USER_OBJECT_ s_object, USER_OBJECT_ s_res); 

  USER_OBJECT_
S_g_file_create_async(USER_OBJECT_ s_object, USER_OBJECT_ s_flags, USER_OBJECT_ s_io_priority, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data); 

  USER_OBJECT_
S_g_file_create_finish(USER_OBJECT_ s_object, USER_OBJECT_ s_res); 

  USER_OBJECT_
S_g_file_replace_async(USER_OBJECT_ s_object, USER_OBJECT_ s_etag, USER_OBJECT_ s_make_backup, USER_OBJECT_ s_flags, USER_OBJECT_ s_io_priority, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data); 

  USER_OBJECT_
S_g_file_replace_finish(USER_OBJECT_ s_object, USER_OBJECT_ s_res); 

  USER_OBJECT_
S_g_file_query_exists(USER_OBJECT_ s_object, USER_OBJECT_ s_cancellable); 

  USER_OBJECT_
S_g_file_query_info(USER_OBJECT_ s_object, USER_OBJECT_ s_attributes, USER_OBJECT_ s_flags, USER_OBJECT_ s_cancellable); 

  USER_OBJECT_
S_g_file_query_info_async(USER_OBJECT_ s_object, USER_OBJECT_ s_attributes, USER_OBJECT_ s_flags, USER_OBJECT_ s_io_priority, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data); 

  USER_OBJECT_
S_g_file_query_info_finish(USER_OBJECT_ s_object, USER_OBJECT_ s_res); 

  USER_OBJECT_
S_g_file_query_filesystem_info(USER_OBJECT_ s_object, USER_OBJECT_ s_attributes, USER_OBJECT_ s_cancellable); 

  USER_OBJECT_
S_g_file_query_filesystem_info_async(USER_OBJECT_ s_object, USER_OBJECT_ s_attributes, USER_OBJECT_ s_io_priority, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data); 

  USER_OBJECT_
S_g_file_query_filesystem_info_finish(USER_OBJECT_ s_object, USER_OBJECT_ s_res); 

  USER_OBJECT_
S_g_file_find_enclosing_mount(USER_OBJECT_ s_object, USER_OBJECT_ s_cancellable); 

  USER_OBJECT_
S_g_file_find_enclosing_mount_async(USER_OBJECT_ s_object, USER_OBJECT_ s_io_priority, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data); 

  USER_OBJECT_
S_g_file_find_enclosing_mount_finish(USER_OBJECT_ s_object, USER_OBJECT_ s_res); 

  USER_OBJECT_
S_g_file_enumerate_children(USER_OBJECT_ s_object, USER_OBJECT_ s_attributes, USER_OBJECT_ s_flags, USER_OBJECT_ s_cancellable); 

  USER_OBJECT_
S_g_file_enumerate_children_async(USER_OBJECT_ s_object, USER_OBJECT_ s_attributes, USER_OBJECT_ s_flags, USER_OBJECT_ s_io_priority, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data); 

  USER_OBJECT_
S_g_file_enumerate_children_finish(USER_OBJECT_ s_object, USER_OBJECT_ s_res); 

  USER_OBJECT_
S_g_file_set_display_name(USER_OBJECT_ s_object, USER_OBJECT_ s_display_name, USER_OBJECT_ s_cancellable); 

  USER_OBJECT_
S_g_file_set_display_name_async(USER_OBJECT_ s_object, USER_OBJECT_ s_display_name, USER_OBJECT_ s_io_priority, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data); 

  USER_OBJECT_
S_g_file_set_display_name_finish(USER_OBJECT_ s_object, USER_OBJECT_ s_res); 

  USER_OBJECT_
S_g_file_delete(USER_OBJECT_ s_object, USER_OBJECT_ s_cancellable); 

  USER_OBJECT_
S_g_file_trash(USER_OBJECT_ s_object, USER_OBJECT_ s_cancellable); 

  USER_OBJECT_
S_g_file_copy(USER_OBJECT_ s_object, USER_OBJECT_ s_destination, USER_OBJECT_ s_flags, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_progress_callback, USER_OBJECT_ s_progress_callback_data); 

  USER_OBJECT_
S_g_file_copy_async(USER_OBJECT_ s_object, USER_OBJECT_ s_destination, USER_OBJECT_ s_flags, USER_OBJECT_ s_io_priority, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_progress_callback, USER_OBJECT_ s_progress_callback_data, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data); 

  USER_OBJECT_
S_g_file_copy_finish(USER_OBJECT_ s_object, USER_OBJECT_ s_res); 

  USER_OBJECT_
S_g_file_move(USER_OBJECT_ s_object, USER_OBJECT_ s_destination, USER_OBJECT_ s_flags, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_progress_callback, USER_OBJECT_ s_progress_callback_data); 

  USER_OBJECT_
S_g_file_make_directory(USER_OBJECT_ s_object, USER_OBJECT_ s_cancellable); 

  USER_OBJECT_
S_g_file_make_symbolic_link(USER_OBJECT_ s_object, USER_OBJECT_ s_symlink_value, USER_OBJECT_ s_cancellable); 

  USER_OBJECT_
S_g_file_query_settable_attributes(USER_OBJECT_ s_object, USER_OBJECT_ s_cancellable); 

  USER_OBJECT_
S_g_file_query_writable_namespaces(USER_OBJECT_ s_object, USER_OBJECT_ s_cancellable); 

  USER_OBJECT_
S_g_file_set_attribute(USER_OBJECT_ s_object, USER_OBJECT_ s_attribute, USER_OBJECT_ s_type, USER_OBJECT_ s_value_p, USER_OBJECT_ s_flags, USER_OBJECT_ s_cancellable); 

  USER_OBJECT_
S_g_file_set_attributes_from_info(USER_OBJECT_ s_object, USER_OBJECT_ s_info, USER_OBJECT_ s_flags, USER_OBJECT_ s_cancellable); 

  USER_OBJECT_
S_g_file_set_attributes_async(USER_OBJECT_ s_object, USER_OBJECT_ s_info, USER_OBJECT_ s_flags, USER_OBJECT_ s_io_priority, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data); 

  USER_OBJECT_
S_g_file_set_attributes_finish(USER_OBJECT_ s_object, USER_OBJECT_ s_result); 

  USER_OBJECT_
S_g_file_set_attribute_string(USER_OBJECT_ s_object, USER_OBJECT_ s_attribute, USER_OBJECT_ s_value, USER_OBJECT_ s_flags, USER_OBJECT_ s_cancellable); 

  USER_OBJECT_
S_g_file_set_attribute_byte_string(USER_OBJECT_ s_object, USER_OBJECT_ s_attribute, USER_OBJECT_ s_value, USER_OBJECT_ s_flags, USER_OBJECT_ s_cancellable); 

  USER_OBJECT_
S_g_file_set_attribute_uint32(USER_OBJECT_ s_object, USER_OBJECT_ s_attribute, USER_OBJECT_ s_value, USER_OBJECT_ s_flags, USER_OBJECT_ s_cancellable); 

  USER_OBJECT_
S_g_file_set_attribute_int32(USER_OBJECT_ s_object, USER_OBJECT_ s_attribute, USER_OBJECT_ s_value, USER_OBJECT_ s_flags, USER_OBJECT_ s_cancellable); 

  USER_OBJECT_
S_g_file_set_attribute_uint64(USER_OBJECT_ s_object, USER_OBJECT_ s_attribute, USER_OBJECT_ s_value, USER_OBJECT_ s_flags, USER_OBJECT_ s_cancellable); 

  USER_OBJECT_
S_g_file_set_attribute_int64(USER_OBJECT_ s_object, USER_OBJECT_ s_attribute, USER_OBJECT_ s_value, USER_OBJECT_ s_flags, USER_OBJECT_ s_cancellable); 

  USER_OBJECT_
S_g_file_mount_enclosing_volume(USER_OBJECT_ s_object, USER_OBJECT_ s_flags, USER_OBJECT_ s_mount_operation, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data); 

  USER_OBJECT_
S_g_file_mount_enclosing_volume_finish(USER_OBJECT_ s_object, USER_OBJECT_ s_result); 

  USER_OBJECT_
S_g_file_mount_mountable(USER_OBJECT_ s_object, USER_OBJECT_ s_flags, USER_OBJECT_ s_mount_operation, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data); 

  USER_OBJECT_
S_g_file_mount_mountable_finish(USER_OBJECT_ s_object, USER_OBJECT_ s_result); 

  USER_OBJECT_
S_g_file_unmount_mountable(USER_OBJECT_ s_object, USER_OBJECT_ s_flags, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data); 

  USER_OBJECT_
S_g_file_unmount_mountable_finish(USER_OBJECT_ s_object, USER_OBJECT_ s_result); 

  USER_OBJECT_
S_g_file_eject_mountable(USER_OBJECT_ s_object, USER_OBJECT_ s_flags, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data); 

  USER_OBJECT_
S_g_file_eject_mountable_finish(USER_OBJECT_ s_object, USER_OBJECT_ s_result); 

  USER_OBJECT_
S_g_file_copy_attributes(USER_OBJECT_ s_object, USER_OBJECT_ s_destination, USER_OBJECT_ s_flags, USER_OBJECT_ s_cancellable); 

  USER_OBJECT_
S_g_file_monitor_directory(USER_OBJECT_ s_object, USER_OBJECT_ s_flags, USER_OBJECT_ s_cancellable); 

  USER_OBJECT_
S_g_file_monitor_file(USER_OBJECT_ s_object, USER_OBJECT_ s_flags, USER_OBJECT_ s_cancellable); 

  USER_OBJECT_
S_g_file_query_default_handler(USER_OBJECT_ s_object, USER_OBJECT_ s_cancellable); 

  USER_OBJECT_
S_g_file_load_contents(USER_OBJECT_ s_object, USER_OBJECT_ s_cancellable); 

  USER_OBJECT_
S_g_file_load_contents_async(USER_OBJECT_ s_object, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data); 

  USER_OBJECT_
S_g_file_load_contents_finish(USER_OBJECT_ s_object, USER_OBJECT_ s_res); 

  USER_OBJECT_
S_g_file_load_partial_contents_finish(USER_OBJECT_ s_object, USER_OBJECT_ s_res); 

  USER_OBJECT_
S_g_file_replace_contents(USER_OBJECT_ s_object, USER_OBJECT_ s_contents, USER_OBJECT_ s_length, USER_OBJECT_ s_etag, USER_OBJECT_ s_make_backup, USER_OBJECT_ s_flags, USER_OBJECT_ s_cancellable); 

  USER_OBJECT_
S_g_file_replace_contents_async(USER_OBJECT_ s_object, USER_OBJECT_ s_contents, USER_OBJECT_ s_length, USER_OBJECT_ s_etag, USER_OBJECT_ s_make_backup, USER_OBJECT_ s_flags, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data); 

  USER_OBJECT_
S_g_file_replace_contents_finish(USER_OBJECT_ s_object, USER_OBJECT_ s_res); 

  USER_OBJECT_
S_g_file_icon_get_type(void); 

  USER_OBJECT_
S_g_file_icon_new(USER_OBJECT_ s_file); 

  USER_OBJECT_
S_g_file_icon_get_file(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_file_info_get_type(void); 

  USER_OBJECT_
S_g_file_info_new(void); 

  USER_OBJECT_
S_g_file_info_dup(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_file_info_copy_into(USER_OBJECT_ s_object, USER_OBJECT_ s_dest_info); 

  USER_OBJECT_
S_g_file_info_has_attribute(USER_OBJECT_ s_object, USER_OBJECT_ s_attribute); 

  USER_OBJECT_
S_g_file_info_list_attributes(USER_OBJECT_ s_object, USER_OBJECT_ s_name_space); 

  USER_OBJECT_
S_g_file_info_get_attribute_data(USER_OBJECT_ s_object, USER_OBJECT_ s_attribute); 

  USER_OBJECT_
S_g_file_info_get_attribute_type(USER_OBJECT_ s_object, USER_OBJECT_ s_attribute); 

  USER_OBJECT_
S_g_file_info_remove_attribute(USER_OBJECT_ s_object, USER_OBJECT_ s_attribute); 

  USER_OBJECT_
S_g_file_info_get_attribute_status(USER_OBJECT_ s_object, USER_OBJECT_ s_attribute); 

  USER_OBJECT_
S_g_file_info_get_attribute_as_string(USER_OBJECT_ s_object, USER_OBJECT_ s_attribute); 

  USER_OBJECT_
S_g_file_info_get_attribute_string(USER_OBJECT_ s_object, USER_OBJECT_ s_attribute); 

  USER_OBJECT_
S_g_file_info_get_attribute_byte_string(USER_OBJECT_ s_object, USER_OBJECT_ s_attribute); 

  USER_OBJECT_
S_g_file_info_get_attribute_boolean(USER_OBJECT_ s_object, USER_OBJECT_ s_attribute); 

  USER_OBJECT_
S_g_file_info_get_attribute_uint32(USER_OBJECT_ s_object, USER_OBJECT_ s_attribute); 

  USER_OBJECT_
S_g_file_info_get_attribute_int32(USER_OBJECT_ s_object, USER_OBJECT_ s_attribute); 

  USER_OBJECT_
S_g_file_info_get_attribute_uint64(USER_OBJECT_ s_object, USER_OBJECT_ s_attribute); 

  USER_OBJECT_
S_g_file_info_get_attribute_int64(USER_OBJECT_ s_object, USER_OBJECT_ s_attribute); 

  USER_OBJECT_
S_g_file_info_get_attribute_object(USER_OBJECT_ s_object, USER_OBJECT_ s_attribute); 

  USER_OBJECT_
S_g_file_info_set_attribute(USER_OBJECT_ s_object, USER_OBJECT_ s_attribute, USER_OBJECT_ s_type, USER_OBJECT_ s_value_p); 

  USER_OBJECT_
S_g_file_info_set_attribute_string(USER_OBJECT_ s_object, USER_OBJECT_ s_attribute, USER_OBJECT_ s_attr_value); 

  USER_OBJECT_
S_g_file_info_set_attribute_byte_string(USER_OBJECT_ s_object, USER_OBJECT_ s_attribute, USER_OBJECT_ s_attr_value); 

  USER_OBJECT_
S_g_file_info_set_attribute_boolean(USER_OBJECT_ s_object, USER_OBJECT_ s_attribute, USER_OBJECT_ s_attr_value); 

  USER_OBJECT_
S_g_file_info_set_attribute_uint32(USER_OBJECT_ s_object, USER_OBJECT_ s_attribute, USER_OBJECT_ s_attr_value); 

  USER_OBJECT_
S_g_file_info_set_attribute_int32(USER_OBJECT_ s_object, USER_OBJECT_ s_attribute, USER_OBJECT_ s_attr_value); 

  USER_OBJECT_
S_g_file_info_set_attribute_uint64(USER_OBJECT_ s_object, USER_OBJECT_ s_attribute, USER_OBJECT_ s_attr_value); 

  USER_OBJECT_
S_g_file_info_set_attribute_int64(USER_OBJECT_ s_object, USER_OBJECT_ s_attribute, USER_OBJECT_ s_attr_value); 

  USER_OBJECT_
S_g_file_info_set_attribute_object(USER_OBJECT_ s_object, USER_OBJECT_ s_attribute, USER_OBJECT_ s_attr_value); 

  USER_OBJECT_
S_g_file_info_clear_status(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_file_info_get_file_type(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_file_info_get_is_hidden(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_file_info_get_is_backup(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_file_info_get_is_symlink(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_file_info_get_name(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_file_info_get_display_name(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_file_info_get_edit_name(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_file_info_get_icon(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_file_info_get_content_type(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_file_info_get_size(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_file_info_get_modification_time(USER_OBJECT_ s_object, USER_OBJECT_ s_result); 

  USER_OBJECT_
S_g_file_info_get_symlink_target(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_file_info_get_etag(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_file_info_get_sort_order(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_file_info_set_attribute_mask(USER_OBJECT_ s_object, USER_OBJECT_ s_mask); 

  USER_OBJECT_
S_g_file_info_unset_attribute_mask(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_file_info_set_file_type(USER_OBJECT_ s_object, USER_OBJECT_ s_type); 

  USER_OBJECT_
S_g_file_info_set_is_hidden(USER_OBJECT_ s_object, USER_OBJECT_ s_is_hidden); 

  USER_OBJECT_
S_g_file_info_set_is_symlink(USER_OBJECT_ s_object, USER_OBJECT_ s_is_symlink); 

  USER_OBJECT_
S_g_file_info_set_name(USER_OBJECT_ s_object, USER_OBJECT_ s_name); 

  USER_OBJECT_
S_g_file_info_set_display_name(USER_OBJECT_ s_object, USER_OBJECT_ s_display_name); 

  USER_OBJECT_
S_g_file_info_set_edit_name(USER_OBJECT_ s_object, USER_OBJECT_ s_edit_name); 

  USER_OBJECT_
S_g_file_info_set_icon(USER_OBJECT_ s_object, USER_OBJECT_ s_icon); 

  USER_OBJECT_
S_g_file_info_set_content_type(USER_OBJECT_ s_object, USER_OBJECT_ s_content_type); 

  USER_OBJECT_
S_g_file_info_set_size(USER_OBJECT_ s_object, USER_OBJECT_ s_size); 

  USER_OBJECT_
S_g_file_info_set_modification_time(USER_OBJECT_ s_object, USER_OBJECT_ s_mtime); 

  USER_OBJECT_
S_g_file_info_set_symlink_target(USER_OBJECT_ s_object, USER_OBJECT_ s_symlink_target); 

  USER_OBJECT_
S_g_file_info_set_sort_order(USER_OBJECT_ s_object, USER_OBJECT_ s_sort_order); 

  USER_OBJECT_
S_g_file_attribute_matcher_new(USER_OBJECT_ s_attributes); 

  USER_OBJECT_
S_g_file_attribute_matcher_ref(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_file_attribute_matcher_unref(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_file_attribute_matcher_matches(USER_OBJECT_ s_object, USER_OBJECT_ s_attribute); 

  USER_OBJECT_
S_g_file_attribute_matcher_matches_only(USER_OBJECT_ s_object, USER_OBJECT_ s_attribute); 

  USER_OBJECT_
S_g_file_attribute_matcher_enumerate_namespace(USER_OBJECT_ s_object, USER_OBJECT_ s_ns); 

  USER_OBJECT_
S_g_file_attribute_matcher_enumerate_next(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_file_input_stream_get_type(void); 

  USER_OBJECT_
S_g_file_input_stream_query_info(USER_OBJECT_ s_object, USER_OBJECT_ s_attributes, USER_OBJECT_ s_cancellable); 

  USER_OBJECT_
S_g_file_input_stream_query_info_async(USER_OBJECT_ s_object, USER_OBJECT_ s_attributes, USER_OBJECT_ s_io_priority, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data); 

  USER_OBJECT_
S_g_file_input_stream_query_info_finish(USER_OBJECT_ s_object, USER_OBJECT_ s_result); 

  USER_OBJECT_
S_g_file_monitor_get_type(void); 

  USER_OBJECT_
S_g_file_monitor_cancel(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_file_monitor_is_cancelled(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_file_monitor_set_rate_limit(USER_OBJECT_ s_object, USER_OBJECT_ s_limit_msecs); 

  USER_OBJECT_
S_g_file_monitor_emit_event(USER_OBJECT_ s_object, USER_OBJECT_ s_file, USER_OBJECT_ s_other_file, USER_OBJECT_ s_event_type); 

  USER_OBJECT_
S_g_filename_completer_get_type(void); 

  USER_OBJECT_
S_g_filename_completer_new(void); 

  USER_OBJECT_
S_g_filename_completer_get_completion_suffix(USER_OBJECT_ s_object, USER_OBJECT_ s_initial_text); 

  USER_OBJECT_
S_g_filename_completer_get_completions(USER_OBJECT_ s_object, USER_OBJECT_ s_initial_text); 

  USER_OBJECT_
S_g_filename_completer_set_dirs_only(USER_OBJECT_ s_object, USER_OBJECT_ s_dirs_only); 

  USER_OBJECT_
S_g_file_output_stream_get_type(void); 

  USER_OBJECT_
S_g_file_output_stream_query_info(USER_OBJECT_ s_object, USER_OBJECT_ s_attributes, USER_OBJECT_ s_cancellable); 

  USER_OBJECT_
S_g_file_output_stream_query_info_async(USER_OBJECT_ s_object, USER_OBJECT_ s_attributes, USER_OBJECT_ s_io_priority, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data); 

  USER_OBJECT_
S_g_file_output_stream_query_info_finish(USER_OBJECT_ s_object, USER_OBJECT_ s_result); 

  USER_OBJECT_
S_g_file_output_stream_get_etag(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_filter_input_stream_get_type(void); 

  USER_OBJECT_
S_g_filter_input_stream_get_base_stream(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_filter_output_stream_get_type(void); 

  USER_OBJECT_
S_g_filter_output_stream_get_base_stream(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_icon_get_type(void); 

  USER_OBJECT_
S_g_icon_hash(USER_OBJECT_ s_icon); 

  USER_OBJECT_
S_g_icon_equal(USER_OBJECT_ s_object, USER_OBJECT_ s_icon2); 

  USER_OBJECT_
S_g_input_stream_get_type(void); 

  USER_OBJECT_
S_g_input_stream_skip(USER_OBJECT_ s_object, USER_OBJECT_ s_count, USER_OBJECT_ s_cancellable); 

  USER_OBJECT_
S_g_input_stream_close(USER_OBJECT_ s_object, USER_OBJECT_ s_cancellable); 

  USER_OBJECT_
S_g_input_stream_skip_async(USER_OBJECT_ s_object, USER_OBJECT_ s_count, USER_OBJECT_ s_io_priority, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data); 

  USER_OBJECT_
S_g_input_stream_skip_finish(USER_OBJECT_ s_object, USER_OBJECT_ s_result); 

  USER_OBJECT_
S_g_input_stream_close_async(USER_OBJECT_ s_object, USER_OBJECT_ s_io_priority, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data); 

  USER_OBJECT_
S_g_input_stream_close_finish(USER_OBJECT_ s_object, USER_OBJECT_ s_result); 

  USER_OBJECT_
S_g_input_stream_is_closed(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_input_stream_has_pending(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_input_stream_set_pending(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_input_stream_clear_pending(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_app_info_create_flags_get_type(void); 

  USER_OBJECT_
S_g_data_stream_byte_order_get_type(void); 

  USER_OBJECT_
S_g_data_stream_newline_type_get_type(void); 

  USER_OBJECT_
S_g_file_query_info_flags_get_type(void); 

  USER_OBJECT_
S_g_file_create_flags_get_type(void); 

  USER_OBJECT_
S_g_file_copy_flags_get_type(void); 

  USER_OBJECT_
S_g_file_monitor_flags_get_type(void); 

  USER_OBJECT_
S_g_file_attribute_type_get_type(void); 

  USER_OBJECT_
S_g_file_attribute_info_flags_get_type(void); 

  USER_OBJECT_
S_g_file_attribute_status_get_type(void); 

  USER_OBJECT_
S_g_file_type_get_type(void); 

  USER_OBJECT_
S_g_file_monitor_event_get_type(void); 

  USER_OBJECT_
S_g_io_error_enum_get_type(void); 

  USER_OBJECT_
S_g_ask_password_flags_get_type(void); 

  USER_OBJECT_
S_g_password_save_get_type(void); 

  USER_OBJECT_
S_g_output_stream_splice_flags_get_type(void); 

  USER_OBJECT_
S_g_io_error_quark(void); 

  USER_OBJECT_
S_g_io_error_from_errno(USER_OBJECT_ s_err_no); 

  USER_OBJECT_
S_g_io_module_get_type(void); 

  USER_OBJECT_
S_g_io_module_new(USER_OBJECT_ s_filename); 

  USER_OBJECT_
S_g_io_modules_load_all_in_directory(USER_OBJECT_ s_dirname); 

  USER_OBJECT_
S_g_io_scheduler_cancel_all_jobs(void); 

  USER_OBJECT_
S_g_io_scheduler_job_send_to_mainloop(USER_OBJECT_ s_object, USER_OBJECT_ s_func, USER_OBJECT_ s_user_data); 

  USER_OBJECT_
S_g_io_scheduler_job_send_to_mainloop_async(USER_OBJECT_ s_object, USER_OBJECT_ s_func, USER_OBJECT_ s_user_data); 

  USER_OBJECT_
S_g_loadable_icon_get_type(void); 

  USER_OBJECT_
S_g_loadable_icon_load(USER_OBJECT_ s_object, USER_OBJECT_ s_size, USER_OBJECT_ s_cancellable); 

  USER_OBJECT_
S_g_loadable_icon_load_async(USER_OBJECT_ s_object, USER_OBJECT_ s_size, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data); 

  USER_OBJECT_
S_g_loadable_icon_load_finish(USER_OBJECT_ s_object, USER_OBJECT_ s_res, USER_OBJECT_ s_type); 

  USER_OBJECT_
S_g_memory_input_stream_get_type(void); 

  USER_OBJECT_
S_g_memory_input_stream_new(void); 

  USER_OBJECT_
S_g_memory_input_stream_new_from_data(USER_OBJECT_ s_data); 

  USER_OBJECT_
S_g_memory_input_stream_add_data(USER_OBJECT_ s_object, USER_OBJECT_ s_data); 

  USER_OBJECT_
S_g_memory_output_stream_get_type(void); 

  USER_OBJECT_
S_g_memory_output_stream_get_data(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_memory_output_stream_get_size(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_mount_get_type(void); 

  USER_OBJECT_
S_g_mount_get_root(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_mount_get_name(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_mount_get_icon(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_mount_get_uuid(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_mount_get_volume(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_mount_get_drive(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_mount_can_unmount(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_mount_can_eject(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_mount_unmount(USER_OBJECT_ s_object, USER_OBJECT_ s_flags, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data); 

  USER_OBJECT_
S_g_mount_unmount_finish(USER_OBJECT_ s_object, USER_OBJECT_ s_result); 

  USER_OBJECT_
S_g_mount_eject(USER_OBJECT_ s_object, USER_OBJECT_ s_flags, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data); 

  USER_OBJECT_
S_g_mount_eject_finish(USER_OBJECT_ s_object, USER_OBJECT_ s_result); 

  USER_OBJECT_
S_g_mount_remount(USER_OBJECT_ s_object, USER_OBJECT_ s_flags, USER_OBJECT_ s_mount_operation, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data); 

  USER_OBJECT_
S_g_mount_remount_finish(USER_OBJECT_ s_object, USER_OBJECT_ s_result); 

  USER_OBJECT_
S_g_mount_operation_get_type(void); 

  USER_OBJECT_
S_g_mount_operation_new(void); 

  USER_OBJECT_
S_g_mount_operation_get_username(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_mount_operation_set_username(USER_OBJECT_ s_object, USER_OBJECT_ s_username); 

  USER_OBJECT_
S_g_mount_operation_get_password(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_mount_operation_set_password(USER_OBJECT_ s_object, USER_OBJECT_ s_password); 

  USER_OBJECT_
S_g_mount_operation_get_anonymous(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_mount_operation_set_anonymous(USER_OBJECT_ s_object, USER_OBJECT_ s_anonymous); 

  USER_OBJECT_
S_g_mount_operation_get_domain(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_mount_operation_set_domain(USER_OBJECT_ s_object, USER_OBJECT_ s_domain); 

  USER_OBJECT_
S_g_mount_operation_get_password_save(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_mount_operation_set_password_save(USER_OBJECT_ s_object, USER_OBJECT_ s_save); 

  USER_OBJECT_
S_g_mount_operation_get_choice(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_mount_operation_set_choice(USER_OBJECT_ s_object, USER_OBJECT_ s_choice); 

  USER_OBJECT_
S_g_mount_operation_reply(USER_OBJECT_ s_object, USER_OBJECT_ s_result); 

  USER_OBJECT_
S_g_native_volume_monitor_get_type(void); 

  USER_OBJECT_
S_g_output_stream_get_type(void); 

  USER_OBJECT_
S_g_output_stream_write(USER_OBJECT_ s_object, USER_OBJECT_ s_buffer, USER_OBJECT_ s_cancellable); 

  USER_OBJECT_
S_g_output_stream_write_all(USER_OBJECT_ s_object, USER_OBJECT_ s_buffer, USER_OBJECT_ s_bytes_written, USER_OBJECT_ s_cancellable); 

  USER_OBJECT_
S_g_output_stream_splice(USER_OBJECT_ s_object, USER_OBJECT_ s_source, USER_OBJECT_ s_flags, USER_OBJECT_ s_cancellable); 

  USER_OBJECT_
S_g_output_stream_flush(USER_OBJECT_ s_object, USER_OBJECT_ s_cancellable); 

  USER_OBJECT_
S_g_output_stream_close(USER_OBJECT_ s_object, USER_OBJECT_ s_cancellable); 

  USER_OBJECT_
S_g_output_stream_write_async(USER_OBJECT_ s_object, USER_OBJECT_ s_buffer, USER_OBJECT_ s_io_priority, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data); 

  USER_OBJECT_
S_g_output_stream_write_finish(USER_OBJECT_ s_object, USER_OBJECT_ s_result); 

  USER_OBJECT_
S_g_output_stream_splice_async(USER_OBJECT_ s_object, USER_OBJECT_ s_source, USER_OBJECT_ s_flags, USER_OBJECT_ s_io_priority, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data); 

  USER_OBJECT_
S_g_output_stream_splice_finish(USER_OBJECT_ s_object, USER_OBJECT_ s_result); 

  USER_OBJECT_
S_g_output_stream_flush_async(USER_OBJECT_ s_object, USER_OBJECT_ s_io_priority, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data); 

  USER_OBJECT_
S_g_output_stream_flush_finish(USER_OBJECT_ s_object, USER_OBJECT_ s_result); 

  USER_OBJECT_
S_g_output_stream_close_async(USER_OBJECT_ s_object, USER_OBJECT_ s_io_priority, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data); 

  USER_OBJECT_
S_g_output_stream_close_finish(USER_OBJECT_ s_object, USER_OBJECT_ s_result); 

  USER_OBJECT_
S_g_output_stream_is_closed(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_output_stream_has_pending(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_output_stream_set_pending(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_output_stream_clear_pending(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_seekable_get_type(void); 

  USER_OBJECT_
S_g_seekable_tell(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_seekable_can_seek(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_seekable_seek(USER_OBJECT_ s_object, USER_OBJECT_ s_offset, USER_OBJECT_ s_type, USER_OBJECT_ s_cancellable); 

  USER_OBJECT_
S_g_seekable_can_truncate(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_seekable_truncate(USER_OBJECT_ s_object, USER_OBJECT_ s_offset, USER_OBJECT_ s_cancellable); 

  USER_OBJECT_
S_g_simple_async_result_get_type(void); 

  USER_OBJECT_
S_g_simple_async_result_new(USER_OBJECT_ s_source_object, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data, USER_OBJECT_ s_source_tag); 

  USER_OBJECT_
S_g_simple_async_result_new_from_error(USER_OBJECT_ s_source_object, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data); 

  USER_OBJECT_
S_g_simple_async_result_set_op_res_gpointer(USER_OBJECT_ s_object, USER_OBJECT_ s_op_res); 

  USER_OBJECT_
S_g_simple_async_result_get_op_res_gpointer(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_simple_async_result_set_op_res_gssize(USER_OBJECT_ s_object, USER_OBJECT_ s_op_res); 

  USER_OBJECT_
S_g_simple_async_result_get_op_res_gssize(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_simple_async_result_set_op_res_gboolean(USER_OBJECT_ s_object, USER_OBJECT_ s_op_res); 

  USER_OBJECT_
S_g_simple_async_result_get_op_res_gboolean(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_simple_async_result_get_source_tag(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_simple_async_result_set_handle_cancellation(USER_OBJECT_ s_object, USER_OBJECT_ s_handle_cancellation); 

  USER_OBJECT_
S_g_simple_async_result_complete(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_simple_async_result_complete_in_idle(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_simple_async_result_set_from_error(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_simple_async_result_propagate_error(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_simple_async_report_gerror_in_idle(USER_OBJECT_ s_object, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data); 

  USER_OBJECT_
S_g_themed_icon_get_type(void); 

  USER_OBJECT_
S_g_themed_icon_new(USER_OBJECT_ s_iconname); 

  USER_OBJECT_
S_g_themed_icon_new_with_default_fallbacks(USER_OBJECT_ s_iconname); 

  USER_OBJECT_
S_g_themed_icon_new_from_names(USER_OBJECT_ s_iconnames, USER_OBJECT_ s_len); 

  USER_OBJECT_
S_g_themed_icon_get_names(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_themed_icon_append_name(USER_OBJECT_ s_object, USER_OBJECT_ s_iconname); 

  USER_OBJECT_
S_g_vfs_get_type(void); 

  USER_OBJECT_
S_g_vfs_is_active(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_vfs_get_file_for_path(USER_OBJECT_ s_object, USER_OBJECT_ s_path); 

  USER_OBJECT_
S_g_vfs_get_file_for_uri(USER_OBJECT_ s_object, USER_OBJECT_ s_uri); 

  USER_OBJECT_
S_g_vfs_parse_name(USER_OBJECT_ s_object, USER_OBJECT_ s_parse_name); 

  USER_OBJECT_
S_g_vfs_get_default(void); 

  USER_OBJECT_
S_g_vfs_get_local(void); 

  USER_OBJECT_
S_g_vfs_get_supported_uri_schemes(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_volume_get_type(void); 

  USER_OBJECT_
S_g_volume_get_name(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_volume_get_icon(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_volume_get_uuid(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_volume_get_drive(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_volume_get_mount(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_volume_can_mount(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_volume_can_eject(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_volume_should_automount(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_volume_mount(USER_OBJECT_ s_object, USER_OBJECT_ s_flags, USER_OBJECT_ s_mount_operation, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data); 

  USER_OBJECT_
S_g_volume_mount_finish(USER_OBJECT_ s_object, USER_OBJECT_ s_result); 

  USER_OBJECT_
S_g_volume_eject(USER_OBJECT_ s_object, USER_OBJECT_ s_flags, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data); 

  USER_OBJECT_
S_g_volume_eject_finish(USER_OBJECT_ s_object, USER_OBJECT_ s_result); 

  USER_OBJECT_
S_g_volume_monitor_get_type(void); 

  USER_OBJECT_
S_g_volume_monitor_get(void); 

  USER_OBJECT_
S_g_volume_monitor_get_connected_drives(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_volume_monitor_get_volumes(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_volume_monitor_get_mounts(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_volume_monitor_get_volume_for_uuid(USER_OBJECT_ s_object, USER_OBJECT_ s_uuid); 

  USER_OBJECT_
S_g_volume_monitor_get_mount_for_uuid(USER_OBJECT_ s_object, USER_OBJECT_ s_uuid); 

  USER_OBJECT_
S_g_volume_monitor_adopt_orphan_mount(USER_OBJECT_ s_mount); 

  USER_OBJECT_
S_g_io_extension_point_register(USER_OBJECT_ s_name); 

  USER_OBJECT_
S_g_io_extension_point_lookup(USER_OBJECT_ s_name); 

  USER_OBJECT_
S_g_io_extension_point_set_required_type(USER_OBJECT_ s_object, USER_OBJECT_ s_type); 

  USER_OBJECT_
S_g_io_extension_point_get_required_type(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_io_extension_point_get_extensions(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_io_extension_point_get_extension_by_name(USER_OBJECT_ s_object, USER_OBJECT_ s_name); 

  USER_OBJECT_
S_g_io_extension_point_implement(USER_OBJECT_ s_extension_point_name, USER_OBJECT_ s_type, USER_OBJECT_ s_extension_name, USER_OBJECT_ s_priority); 

  USER_OBJECT_
S_g_io_extension_get_type(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_io_extension_get_name(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_io_extension_get_priority(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_io_extension_ref_class(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_content_type_from_mime_type(USER_OBJECT_ s_mime_type); 

  USER_OBJECT_
S_g_content_type_guess_for_tree(USER_OBJECT_ s_root); 

  USER_OBJECT_
S_g_emblemed_icon_get_type(void); 

  USER_OBJECT_
S_g_emblemed_icon_new(USER_OBJECT_ s_icon, USER_OBJECT_ s_emblem); 

  USER_OBJECT_
S_g_emblemed_icon_get_icon(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_emblemed_icon_get_emblems(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_emblemed_icon_add_emblem(USER_OBJECT_ s_object, USER_OBJECT_ s_emblem); 

  USER_OBJECT_
S_g_emblem_get_type(void); 

  USER_OBJECT_
S_g_emblem_new(USER_OBJECT_ s_icon, USER_OBJECT_ s_origin); 

  USER_OBJECT_
S_g_emblem_new_with_origin(USER_OBJECT_ s_icon, USER_OBJECT_ s_origin); 

  USER_OBJECT_
S_g_emblem_get_icon(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_emblem_get_origin(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_file_query_file_type(USER_OBJECT_ s_object, USER_OBJECT_ s_flags, USER_OBJECT_ s_cancellable); 

  USER_OBJECT_
S_g_file_make_directory_with_parents(USER_OBJECT_ s_object, USER_OBJECT_ s_cancellable); 

  USER_OBJECT_
S_g_file_monitor(USER_OBJECT_ s_object, USER_OBJECT_ s_flags, USER_OBJECT_ s_cancellable); 

  USER_OBJECT_
S_g_memory_output_stream_get_data_size(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_mount_guess_content_type(USER_OBJECT_ s_object, USER_OBJECT_ s_force_rescan, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data); 

  USER_OBJECT_
S_g_mount_guess_content_type_finish(USER_OBJECT_ s_object, USER_OBJECT_ s_result); 

  USER_OBJECT_
S_g_mount_guess_content_type_sync(USER_OBJECT_ s_object, USER_OBJECT_ s_force_rescan, USER_OBJECT_ s_cancellable); 

  USER_OBJECT_
S_g_themed_icon_prepend_name(USER_OBJECT_ s_object, USER_OBJECT_ s_iconname); 

  USER_OBJECT_
S_g_volume_get_identifier(USER_OBJECT_ s_object, USER_OBJECT_ s_kind); 

  USER_OBJECT_
S_g_volume_enumerate_identifiers(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_volume_get_activation_root(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_file_enumerator_get_container(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_app_info_reset_type_associations(USER_OBJECT_ s_content_type); 

  USER_OBJECT_
S_g_app_info_can_delete(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_app_info_delete(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_app_info_get_commandline(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_data_input_stream_read_until_async(USER_OBJECT_ s_object, USER_OBJECT_ s_stop_chars, USER_OBJECT_ s_io_priority, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data); 

  USER_OBJECT_
S_g_data_input_stream_read_until_finish(USER_OBJECT_ s_object, USER_OBJECT_ s_result, USER_OBJECT_ s_length); 

  USER_OBJECT_
S_g_data_input_stream_read_line_async(USER_OBJECT_ s_object, USER_OBJECT_ s_io_priority, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data); 

  USER_OBJECT_
S_g_data_input_stream_read_line_finish(USER_OBJECT_ s_object, USER_OBJECT_ s_result); 

  USER_OBJECT_
S_g_icon_to_string(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_icon_new_for_string(USER_OBJECT_ s_str); 

  USER_OBJECT_
S_g_mount_is_shadowed(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_mount_shadow(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_mount_unshadow(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_filter_input_stream_get_close_base_stream(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_filter_input_stream_set_close_base_stream(USER_OBJECT_ s_object, USER_OBJECT_ s_close_base); 

  USER_OBJECT_
S_g_filter_output_stream_get_close_base_stream(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_filter_output_stream_set_close_base_stream(USER_OBJECT_ s_object, USER_OBJECT_ s_close_base); 

  USER_OBJECT_
S_g_async_initable_get_type(void); 

  USER_OBJECT_
S_g_async_initable_init_async(USER_OBJECT_ s_object, USER_OBJECT_ s_io_priority, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data); 

  USER_OBJECT_
S_g_async_initable_init_finish(USER_OBJECT_ s_object, USER_OBJECT_ s_res); 

  USER_OBJECT_
S_g_async_initable_new_finish(USER_OBJECT_ s_object, USER_OBJECT_ s_res); 

  USER_OBJECT_
S_g_cancellable_disconnect(USER_OBJECT_ s_object, USER_OBJECT_ s_handler_id); 

  USER_OBJECT_
S_g_cancellable_release_fd(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_drive_can_start(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_drive_can_start_degraded(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_drive_can_stop(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_drive_eject_with_operation(USER_OBJECT_ s_object, USER_OBJECT_ s_flags, USER_OBJECT_ s_mount_operation, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data); 

  USER_OBJECT_
S_g_drive_eject_with_operation_finish(USER_OBJECT_ s_object, USER_OBJECT_ s_result); 

  USER_OBJECT_
S_g_drive_get_start_stop_type(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_drive_start(USER_OBJECT_ s_object, USER_OBJECT_ s_flags, USER_OBJECT_ s_mount_operation, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data); 

  USER_OBJECT_
S_g_drive_start_finish(USER_OBJECT_ s_object, USER_OBJECT_ s_result); 

  USER_OBJECT_
S_g_drive_stop(USER_OBJECT_ s_object, USER_OBJECT_ s_flags, USER_OBJECT_ s_mount_operation, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data); 

  USER_OBJECT_
S_g_drive_stop_finish(USER_OBJECT_ s_object, USER_OBJECT_ s_result); 

  USER_OBJECT_
S_g_file_create_readwrite(USER_OBJECT_ s_object, USER_OBJECT_ s_flags, USER_OBJECT_ s_cancellable); 

  USER_OBJECT_
S_g_file_create_readwrite_async(USER_OBJECT_ s_object, USER_OBJECT_ s_flags, USER_OBJECT_ s_io_priority, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data); 

  USER_OBJECT_
S_g_file_create_readwrite_finish(USER_OBJECT_ s_object, USER_OBJECT_ s_res); 

  USER_OBJECT_
S_g_file_eject_mountable_with_operation(USER_OBJECT_ s_object, USER_OBJECT_ s_flags, USER_OBJECT_ s_mount_operation, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data); 

  USER_OBJECT_
S_g_file_eject_mountable_with_operation_finish(USER_OBJECT_ s_object, USER_OBJECT_ s_result); 

  USER_OBJECT_
S_g_file_open_readwrite(USER_OBJECT_ s_object, USER_OBJECT_ s_cancellable); 

  USER_OBJECT_
S_g_file_open_readwrite_async(USER_OBJECT_ s_object, USER_OBJECT_ s_io_priority, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data); 

  USER_OBJECT_
S_g_file_open_readwrite_finish(USER_OBJECT_ s_object, USER_OBJECT_ s_res); 

  USER_OBJECT_
S_g_file_poll_mountable(USER_OBJECT_ s_object, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data); 

  USER_OBJECT_
S_g_file_poll_mountable_finish(USER_OBJECT_ s_object, USER_OBJECT_ s_result); 

  USER_OBJECT_
S_g_file_replace_readwrite(USER_OBJECT_ s_object, USER_OBJECT_ s_etag, USER_OBJECT_ s_make_backup, USER_OBJECT_ s_flags, USER_OBJECT_ s_cancellable); 

  USER_OBJECT_
S_g_file_replace_readwrite_async(USER_OBJECT_ s_object, USER_OBJECT_ s_etag, USER_OBJECT_ s_make_backup, USER_OBJECT_ s_flags, USER_OBJECT_ s_io_priority, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data); 

  USER_OBJECT_
S_g_file_replace_readwrite_finish(USER_OBJECT_ s_object, USER_OBJECT_ s_res); 

  USER_OBJECT_
S_g_file_start_mountable(USER_OBJECT_ s_object, USER_OBJECT_ s_flags, USER_OBJECT_ s_start_operation, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data); 

  USER_OBJECT_
S_g_file_start_mountable_finish(USER_OBJECT_ s_object, USER_OBJECT_ s_result); 

  USER_OBJECT_
S_g_file_stop_mountable(USER_OBJECT_ s_object, USER_OBJECT_ s_flags, USER_OBJECT_ s_mount_operation, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data); 

  USER_OBJECT_
S_g_file_stop_mountable_finish(USER_OBJECT_ s_object, USER_OBJECT_ s_result); 

  USER_OBJECT_
S_g_file_supports_thread_contexts(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_file_unmount_mountable_with_operation(USER_OBJECT_ s_object, USER_OBJECT_ s_flags, USER_OBJECT_ s_mount_operation, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data); 

  USER_OBJECT_
S_g_file_unmount_mountable_with_operation_finish(USER_OBJECT_ s_object, USER_OBJECT_ s_result); 

  USER_OBJECT_
S_g_file_info_has_namespace(USER_OBJECT_ s_object, USER_OBJECT_ s_name_space); 

  USER_OBJECT_
S_g_file_info_set_attribute_status(USER_OBJECT_ s_object, USER_OBJECT_ s_attribute, USER_OBJECT_ s_status); 

  USER_OBJECT_
S_g_file_info_get_attribute_stringv(USER_OBJECT_ s_object, USER_OBJECT_ s_attribute); 

  USER_OBJECT_
S_g_file_info_set_attribute_stringv(USER_OBJECT_ s_object, USER_OBJECT_ s_attribute, USER_OBJECT_ s_attr_value); 

  USER_OBJECT_
S_g_file_io_stream_get_type(void); 

  USER_OBJECT_
S_g_file_io_stream_query_info(USER_OBJECT_ s_object, USER_OBJECT_ s_attributes, USER_OBJECT_ s_cancellable); 

  USER_OBJECT_
S_g_file_io_stream_query_info_async(USER_OBJECT_ s_object, USER_OBJECT_ s_attributes, USER_OBJECT_ s_io_priority, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data); 

  USER_OBJECT_
S_g_file_io_stream_query_info_finish(USER_OBJECT_ s_object, USER_OBJECT_ s_result); 

  USER_OBJECT_
S_g_file_io_stream_get_etag(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_inet_address_get_type(void); 

  USER_OBJECT_
S_g_inet_address_new_from_string(USER_OBJECT_ s_string); 

  USER_OBJECT_
S_g_inet_address_new_from_bytes(USER_OBJECT_ s_bytes, USER_OBJECT_ s_family); 

  USER_OBJECT_
S_g_inet_address_new_loopback(USER_OBJECT_ s_family); 

  USER_OBJECT_
S_g_inet_address_new_any(USER_OBJECT_ s_family); 

  USER_OBJECT_
S_g_inet_address_to_string(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_inet_address_to_bytes(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_inet_address_get_native_size(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_inet_address_get_family(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_inet_address_get_is_any(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_inet_address_get_is_loopback(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_inet_address_get_is_link_local(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_inet_address_get_is_site_local(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_inet_address_get_is_multicast(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_inet_address_get_is_mc_global(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_inet_address_get_is_mc_link_local(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_inet_address_get_is_mc_node_local(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_inet_address_get_is_mc_org_local(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_inet_address_get_is_mc_site_local(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_initable_get_type(void); 

  USER_OBJECT_
S_g_initable_init(USER_OBJECT_ s_object, USER_OBJECT_ s_cancellable); 

  USER_OBJECT_
S_g_io_stream_get_type(void); 

  USER_OBJECT_
S_g_io_stream_get_input_stream(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_io_stream_get_output_stream(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_io_stream_close(USER_OBJECT_ s_object, USER_OBJECT_ s_cancellable); 

  USER_OBJECT_
S_g_io_stream_close_async(USER_OBJECT_ s_object, USER_OBJECT_ s_io_priority, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data); 

  USER_OBJECT_
S_g_io_stream_close_finish(USER_OBJECT_ s_object, USER_OBJECT_ s_result); 

  USER_OBJECT_
S_g_io_stream_is_closed(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_io_stream_has_pending(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_io_stream_set_pending(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_io_stream_clear_pending(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_mount_unmount_with_operation(USER_OBJECT_ s_object, USER_OBJECT_ s_flags, USER_OBJECT_ s_mount_operation, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data); 

  USER_OBJECT_
S_g_mount_unmount_with_operation_finish(USER_OBJECT_ s_object, USER_OBJECT_ s_result); 

  USER_OBJECT_
S_g_mount_eject_with_operation(USER_OBJECT_ s_object, USER_OBJECT_ s_flags, USER_OBJECT_ s_mount_operation, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data); 

  USER_OBJECT_
S_g_mount_eject_with_operation_finish(USER_OBJECT_ s_object, USER_OBJECT_ s_result); 

  USER_OBJECT_
S_g_network_address_get_type(void); 

  USER_OBJECT_
S_g_network_address_new(USER_OBJECT_ s_hostname, USER_OBJECT_ s_port); 

  USER_OBJECT_
S_g_network_address_parse(USER_OBJECT_ s_host_and_port, USER_OBJECT_ s_default_port); 

  USER_OBJECT_
S_g_network_address_get_hostname(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_network_address_get_port(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_network_service_get_type(void); 

  USER_OBJECT_
S_g_network_service_new(USER_OBJECT_ s_service, USER_OBJECT_ s_protocol, USER_OBJECT_ s_domain); 

  USER_OBJECT_
S_g_network_service_get_service(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_network_service_get_protocol(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_network_service_get_domain(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_resolver_get_type(void); 

  USER_OBJECT_
S_g_resolver_get_default(void); 

  USER_OBJECT_
S_g_resolver_set_default(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_resolver_lookup_by_name(USER_OBJECT_ s_object, USER_OBJECT_ s_hostname, USER_OBJECT_ s_cancellable); 

  USER_OBJECT_
S_g_resolver_lookup_by_name_async(USER_OBJECT_ s_object, USER_OBJECT_ s_hostname, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data); 

  USER_OBJECT_
S_g_resolver_lookup_by_name_finish(USER_OBJECT_ s_object, USER_OBJECT_ s_result); 

  USER_OBJECT_
S_g_resolver_free_addresses(USER_OBJECT_ s_addresses); 

  USER_OBJECT_
S_g_resolver_lookup_by_address(USER_OBJECT_ s_object, USER_OBJECT_ s_address, USER_OBJECT_ s_cancellable); 

  USER_OBJECT_
S_g_resolver_lookup_by_address_async(USER_OBJECT_ s_object, USER_OBJECT_ s_address, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data); 

  USER_OBJECT_
S_g_resolver_lookup_by_address_finish(USER_OBJECT_ s_object, USER_OBJECT_ s_result); 

  USER_OBJECT_
S_g_resolver_lookup_service(USER_OBJECT_ s_object, USER_OBJECT_ s_service, USER_OBJECT_ s_protocol, USER_OBJECT_ s_domain, USER_OBJECT_ s_cancellable); 

  USER_OBJECT_
S_g_resolver_lookup_service_async(USER_OBJECT_ s_object, USER_OBJECT_ s_service, USER_OBJECT_ s_protocol, USER_OBJECT_ s_domain, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data); 

  USER_OBJECT_
S_g_resolver_lookup_service_finish(USER_OBJECT_ s_object, USER_OBJECT_ s_result); 

  USER_OBJECT_
S_g_resolver_free_targets(USER_OBJECT_ s_targets); 

  USER_OBJECT_
S_g_resolver_error_quark(void); 

  USER_OBJECT_
S_g_socket_address_enumerator_get_type(void); 

  USER_OBJECT_
S_g_socket_address_enumerator_next(USER_OBJECT_ s_object, USER_OBJECT_ s_cancellable); 

  USER_OBJECT_
S_g_socket_address_enumerator_next_async(USER_OBJECT_ s_object, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data); 

  USER_OBJECT_
S_g_socket_address_enumerator_next_finish(USER_OBJECT_ s_object, USER_OBJECT_ s_result); 

  USER_OBJECT_
S_g_socket_address_get_type(void); 

  USER_OBJECT_
S_g_socket_address_get_family(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_socket_address_new_from_native(USER_OBJECT_ s_native, USER_OBJECT_ s_len); 

  USER_OBJECT_
S_g_socket_address_to_native(USER_OBJECT_ s_object, USER_OBJECT_ s_dest, USER_OBJECT_ s_destlen); 

  USER_OBJECT_
S_g_socket_address_get_native_size(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_socket_client_get_type(void); 

  USER_OBJECT_
S_g_socket_client_new(void); 

  USER_OBJECT_
S_g_socket_client_get_family(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_socket_client_set_family(USER_OBJECT_ s_object, USER_OBJECT_ s_family); 

  USER_OBJECT_
S_g_socket_client_get_socket_type(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_socket_client_set_socket_type(USER_OBJECT_ s_object, USER_OBJECT_ s_type); 

  USER_OBJECT_
S_g_socket_client_get_protocol(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_socket_client_set_protocol(USER_OBJECT_ s_object, USER_OBJECT_ s_protocol); 

  USER_OBJECT_
S_g_socket_client_get_local_address(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_socket_client_set_local_address(USER_OBJECT_ s_object, USER_OBJECT_ s_address); 

  USER_OBJECT_
S_g_socket_client_connect(USER_OBJECT_ s_object, USER_OBJECT_ s_connectable, USER_OBJECT_ s_cancellable); 

  USER_OBJECT_
S_g_socket_client_connect_to_host(USER_OBJECT_ s_object, USER_OBJECT_ s_host_and_port, USER_OBJECT_ s_default_port, USER_OBJECT_ s_cancellable); 

  USER_OBJECT_
S_g_socket_client_connect_to_service(USER_OBJECT_ s_object, USER_OBJECT_ s_domain, USER_OBJECT_ s_service, USER_OBJECT_ s_cancellable); 

  USER_OBJECT_
S_g_socket_client_connect_async(USER_OBJECT_ s_object, USER_OBJECT_ s_connectable, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data); 

  USER_OBJECT_
S_g_socket_client_connect_finish(USER_OBJECT_ s_object, USER_OBJECT_ s_result); 

  USER_OBJECT_
S_g_socket_client_connect_to_host_async(USER_OBJECT_ s_object, USER_OBJECT_ s_host_and_port, USER_OBJECT_ s_default_port, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data); 

  USER_OBJECT_
S_g_socket_client_connect_to_host_finish(USER_OBJECT_ s_object, USER_OBJECT_ s_result); 

  USER_OBJECT_
S_g_socket_client_connect_to_service_async(USER_OBJECT_ s_object, USER_OBJECT_ s_domain, USER_OBJECT_ s_service, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data); 

  USER_OBJECT_
S_g_socket_client_connect_to_service_finish(USER_OBJECT_ s_object, USER_OBJECT_ s_result); 

  USER_OBJECT_
S_g_socket_connectable_get_type(void); 

  USER_OBJECT_
S_g_socket_connectable_enumerate(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_socket_connection_get_type(void); 

  USER_OBJECT_
S_g_socket_connection_get_socket(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_socket_connection_get_local_address(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_socket_connection_get_remote_address(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_socket_connection_factory_register_type(USER_OBJECT_ s_g_type, USER_OBJECT_ s_family, USER_OBJECT_ s_type, USER_OBJECT_ s_protocol); 

  USER_OBJECT_
S_g_socket_connection_factory_lookup_type(USER_OBJECT_ s_family, USER_OBJECT_ s_type, USER_OBJECT_ s_protocol_id); 

  USER_OBJECT_
S_g_socket_connection_factory_create_connection(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_socket_control_message_get_type(void); 

  USER_OBJECT_
S_g_socket_control_message_get_size(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_socket_control_message_get_level(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_socket_control_message_get_msg_type(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_socket_control_message_serialize(USER_OBJECT_ s_object, USER_OBJECT_ s_data); 

  USER_OBJECT_
S_g_socket_control_message_deserialize(USER_OBJECT_ s_level, USER_OBJECT_ s_type, USER_OBJECT_ s_size, USER_OBJECT_ s_data); 

  USER_OBJECT_
S_g_socket_get_type(void); 

  USER_OBJECT_
S_g_socket_new(USER_OBJECT_ s_family, USER_OBJECT_ s_type, USER_OBJECT_ s_protocol); 

  USER_OBJECT_
S_g_socket_new_from_fd(USER_OBJECT_ s_fd); 

  USER_OBJECT_
S_g_socket_get_fd(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_socket_get_family(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_socket_get_socket_type(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_socket_get_protocol(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_socket_get_local_address(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_socket_get_remote_address(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_socket_set_blocking(USER_OBJECT_ s_object, USER_OBJECT_ s_blocking); 

  USER_OBJECT_
S_g_socket_get_blocking(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_socket_set_keepalive(USER_OBJECT_ s_object, USER_OBJECT_ s_keepalive); 

  USER_OBJECT_
S_g_socket_get_keepalive(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_socket_get_listen_backlog(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_socket_set_listen_backlog(USER_OBJECT_ s_object, USER_OBJECT_ s_backlog); 

  USER_OBJECT_
S_g_socket_is_connected(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_socket_bind(USER_OBJECT_ s_object, USER_OBJECT_ s_address, USER_OBJECT_ s_allow_reuse); 

  USER_OBJECT_
S_g_socket_connect(USER_OBJECT_ s_object, USER_OBJECT_ s_address, USER_OBJECT_ s_cancellable); 

  USER_OBJECT_
S_g_socket_check_connect_result(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_socket_condition_check(USER_OBJECT_ s_object, USER_OBJECT_ s_condition); 

  USER_OBJECT_
S_g_socket_condition_wait(USER_OBJECT_ s_object, USER_OBJECT_ s_condition, USER_OBJECT_ s_cancellable); 

  USER_OBJECT_
S_g_socket_accept(USER_OBJECT_ s_object, USER_OBJECT_ s_cancellable); 

  USER_OBJECT_
S_g_socket_listen(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_socket_send(USER_OBJECT_ s_object, USER_OBJECT_ s_buffer, USER_OBJECT_ s_size, USER_OBJECT_ s_cancellable); 

  USER_OBJECT_
S_g_socket_send_to(USER_OBJECT_ s_object, USER_OBJECT_ s_address, USER_OBJECT_ s_buffer, USER_OBJECT_ s_size, USER_OBJECT_ s_cancellable); 

  USER_OBJECT_
S_g_socket_close(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_socket_shutdown(USER_OBJECT_ s_object, USER_OBJECT_ s_shutdown_read, USER_OBJECT_ s_shutdown_write); 

  USER_OBJECT_
S_g_socket_is_closed(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_socket_create_source(USER_OBJECT_ s_object, USER_OBJECT_ s_condition, USER_OBJECT_ s_cancellable); 

  USER_OBJECT_
S_g_socket_speaks_ipv4(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_socket_listener_get_type(void); 

  USER_OBJECT_
S_g_socket_listener_new(void); 

  USER_OBJECT_
S_g_socket_listener_set_backlog(USER_OBJECT_ s_object, USER_OBJECT_ s_listen_backlog); 

  USER_OBJECT_
S_g_socket_listener_add_socket(USER_OBJECT_ s_object, USER_OBJECT_ s_socket, USER_OBJECT_ s_source_object); 

  USER_OBJECT_
S_g_socket_listener_add_address(USER_OBJECT_ s_object, USER_OBJECT_ s_address, USER_OBJECT_ s_type, USER_OBJECT_ s_protocol, USER_OBJECT_ s_source_object); 

  USER_OBJECT_
S_g_socket_listener_add_inet_port(USER_OBJECT_ s_object, USER_OBJECT_ s_port, USER_OBJECT_ s_source_object); 

  USER_OBJECT_
S_g_socket_listener_accept_socket(USER_OBJECT_ s_object, USER_OBJECT_ s_cancellable); 

  USER_OBJECT_
S_g_socket_listener_accept_socket_async(USER_OBJECT_ s_object, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data); 

  USER_OBJECT_
S_g_socket_listener_accept_socket_finish(USER_OBJECT_ s_object, USER_OBJECT_ s_result); 

  USER_OBJECT_
S_g_socket_listener_accept(USER_OBJECT_ s_object, USER_OBJECT_ s_cancellable); 

  USER_OBJECT_
S_g_socket_listener_accept_async(USER_OBJECT_ s_object, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data); 

  USER_OBJECT_
S_g_socket_listener_accept_finish(USER_OBJECT_ s_object, USER_OBJECT_ s_result); 

  USER_OBJECT_
S_g_socket_listener_close(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_socket_service_get_type(void); 

  USER_OBJECT_
S_g_socket_service_new(void); 

  USER_OBJECT_
S_g_socket_service_start(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_socket_service_stop(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_socket_service_is_active(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_srv_target_get_type(void); 

  USER_OBJECT_
S_g_srv_target_new(USER_OBJECT_ s_hostname, USER_OBJECT_ s_port, USER_OBJECT_ s_priority, USER_OBJECT_ s_weight); 

  USER_OBJECT_
S_g_srv_target_copy(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_srv_target_free(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_srv_target_get_hostname(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_srv_target_get_port(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_srv_target_get_priority(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_srv_target_get_weight(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_srv_target_list_sort(USER_OBJECT_ s_targets); 

  USER_OBJECT_
S_g_threaded_socket_service_get_type(void); 

  USER_OBJECT_
S_g_threaded_socket_service_new(USER_OBJECT_ s_max_threads); 

  USER_OBJECT_
S_g_volume_eject_with_operation(USER_OBJECT_ s_object, USER_OBJECT_ s_flags, USER_OBJECT_ s_mount_operation, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data); 

  USER_OBJECT_
S_g_volume_eject_with_operation_finish(USER_OBJECT_ s_object, USER_OBJECT_ s_result); 

  USER_OBJECT_
S_g_inet_socket_address_new(USER_OBJECT_ s_address, USER_OBJECT_ s_port); 

  USER_OBJECT_
S_g_inet_socket_address_get_address(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_inet_socket_address_get_port(USER_OBJECT_ s_object); 

  USER_OBJECT_
S_g_tcp_connection_get_type(void); 

  USER_OBJECT_
S_g_tcp_connection_set_graceful_disconnect(USER_OBJECT_ s_object, USER_OBJECT_ s_graceful_disconnect); 

  USER_OBJECT_
S_g_tcp_connection_get_graceful_disconnect(USER_OBJECT_ s_object); 

#endif
