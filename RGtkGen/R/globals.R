# Here we define global variables controlling the code generation.

# BAD types.. those we cannot handle.. not sure if this is the best
# place to put these most of these are either undocumented or are
# user-functions without user-data. I haven't come up with a good way
# of handling va_list since it's not possible to manually recreate it
# after element conversion. I can think of some ways around this but
# they aren't convenient at all.

badTypes <- c("GdkPointerHooks", "GdkDisplayPointerHooks",
              "GtkRcPropertyParser", "GtkMenuDetachFunc", "va_list",
              "GtkMenuEntry", "GtkCListCompareFunc", "GtkCTreeCompareDragFunc",
              "GtkAccelGroupEntry", "AtkEventListener", "AtkEventListenerInit",
              "AtkFocusHandler", "AtkPropertyChangeHandler",
              "AtkPropertyValues", "PangoFontsetSimple", "GdkInputCondition",
              "GdkStatus", "GtkArgFlags", "GtkDebugFlag", "GtkObjectFlags",
              "GPollFD", "GParameter",
              ## These will be called in another thread (bad!)
              ## Could work around it via idle handler, but too much work!
              "GSimpleAsyncThreadFunc", "GIOSchedulerJobFunc")

## Functions that we cannot handle
## This list will certainly grow. Most of these are implemented manually.
badCFuncs <- c("gtk_editable_insert_text", "gtk_clipboard_set_with_owner",
               "gtk_item_factory_create_item", "gtk_item_factory_create_items",
               "gtk_item_factory_create_items_ac", "gdk_drawable_copy_to_image",
               "gtk_clist_set_row_data", "gtk_ctree_node_set_row_data",
               "gtk_curve_get_vector", "gtk_list_store_insert_with_valuesv",
               "gtk_im_context_simple_add_table",
               "gdk_window_invalidate_maybe_recurse",
               "atk_editable_text_insert_text", "pango_get_log_attrs",
               "pango_break", "pango_glyph_string_get_logical_widths",
               "pango_tab_array_get_tabs", "gdk_pixbuf_new_from_data",
               "gdk_window_constrain_size", "gdk_window_set_geometry_hints",
               "gdk_device_get_history", "gdk_device_free_history",
               "gtk_window_set_geometry_hints", "gdk_window_new",
               "atk_add_global_event_listener", "gtk_widget_destroyed",
               "gtk_gc_get", "pango_font_descriptions_free",
               "pango_context_new", "gdk_rgb_find_color", "PANGO_ASCENT",
               "PANGO_DESCENT", "PANGO_RBEARING", "PANGO_LBEARING",
               "gdk_gc_new_with_values", "gdk_gc_set_values", "gtk_init",
               "gtk_init_check", "gtk_label_new_with_mnemonic",
               "gdk_pixbuf_get_pixels", "gtk_menu_get_for_attach_widget",
               "gdk_draw_rgb_image", "gtk_list_store_set_value",
               "gtk_tree_path_get_indices", "gdk_pixbuf_save_to_bufferv",
               "gtk_ui_manager_get_action_groups", "pango_layout_get_lines",
               "pango_font_map_get_shape_engine_type",
               "pango_attr_iterator_get_font", "gtk_icon_theme_set_search_path",
               "gtk_tree_store_set_value", "gtk_container_child_set_property",
               "gtk_action_group_add_toggle_actions_full",
               "gtk_action_group_add_toggle_actions",
               "gtk_action_group_add_radio_actions_full",
               "gtk_action_group_add_radio_actions",
               "gtk_action_group_add_actions_full",
               "gtk_action_group_add_actions", "cairo_append_path",
               "glade_xml_signal_autoconnect", "glade_xml_construct",
               "gdk_pixbuf_get_from_drawable", "gdk_colormap_alloc_color",
               "gdk_pixbuf_get_from_image", "gdk_pixbuf_render_pixmap_and_mask",
               "gdk_colors_store",
               "gdk_pixbuf_render_pixmap_and_mask_for_colormap",
               "gdk_colormap_alloc_colors", "gdk_query_depths",
               "gdk_query_visual_types", "glade_xml_signal_connect_data",
               "glade_xml_signal_connect", "gtk_radio_action_set_group",
               "gtk_radio_button_set_group", "gtk_radio_menu_item_set_group",
               "gtk_radio_tool_button_set_group",
               "gtk_tree_store_insert_with_valuesv",
               "gdk_drawable_class_create_gc", "gdk_gcclass_set_values",
               "cairo_rectangle_list_destroy", "cairo_get_dash",
               "gtk_builder_connect_signals",
               "gtk_tree_view_get_tooltip_context",
               "gtk_icon_view_get_tooltip_context", "g_input_stream_read",
               "g_input_stream_read_all",
               "g_input_stream_read_async", "g_input_stream_read_finish",
               "g_socket_receive", "g_socket_receive_from",
               "g_socket_receive_message", "g_socket_send_message",
               "pango_glyph_item_get_logical_widths",
               "g_memory_output_stream_new",
               "g_cancellable_connect",
               "cairo_user_font_face_set_init_func",
               "cairo_user_font_face_set_render_glyph_func",
               "cairo_user_font_face_set_text_to_glyphs_func",
               "cairo_user_font_face_set_unicode_to_glyph_func"
               )

# sometimes it's easier to fix things from the R side (simple aliasing) or
# there is a problem with the argument list, etc
badRFuncs <-
c("gdk_window_invalidate_maybe_recurse",
  "gtk_clipboard_set_with_owner", "gtk_list_store_insert_with_valuesv",
  "pango_get_log_attrs", "pango_break",
  "pango_glyph_string_get_logical_widths",
  "gtk_text_buffer_insert_interactive",
  "gtk_text_buffer_insert_interactive_at_cursor",
  "gtk_im_context_simple_add_table", "gtk_selection_data_set",
  "gdk_text_extents", "pango_layout_set_markup_with_accel",
  "pango_glyph_string_index_to_x", "pango_glyph_string_x_to_index",
  "gdk_draw_rgb_image", "pango_shape", "gdk_window_constrain_size",
  "gdk_pixbuf_new_from_data", "gtk_tree_store_new",
  "gdk_device_free_history", "gdk_window_new",
  "pango_font_descriptions_free", "gtk_widget_destroy",
  "atk_add_global_event_listener", "gtk_widget_destroyed", "gtk_init",
  "gtk_init_check", "pango_context_new",
  "pango_font_map_get_shape_engine_type", "pango_reorder_items",
  "gtk_icon_theme_set_search_path", "gdk_bitmap_create_from_data",
  "glade_xml_new_from_buffer", "glade_xml_construct",
  "gdk_colormap_alloc_colors", "gdk_colors_store", "gtk_list_store_new",
  "cairo_image_surface_create_from_png_stream",
  "cairo_surface_write_to_png_stream", "gtk_radio_button_new",
  "gtk_radio_button_new_with_label", "gtk_radio_menu_item_new",
  "gtk_radio_menu_item_new_with_label",
  "gtk_radio_menu_item_new_with_mnemonic", "gtk_radio_tool_button_new",
  "gtk_radio_tool_button_new_from_stock",
  "gtk_tree_store_insert_with_valuesv",
  "gtk_tree_view_get_tooltip_context", "gtk_icon_view_get_tooltip_context",
  "g_buffered_input_stream_peek", "g_file_attribute_info_list_ref",
  "g_file_attribute_info_list_unref", "g_file_attribute_info_list_dup",
  "gtk_builder_new")

# enums that are blocked, these two because RGtk handles them implicitly
badEnums <- c("GdkGeometryHints", "GdkGCValuesMask")

# User functions that we wrap manually
manUserFuncs <-
  c("GCompareFunc", "GCallback", "GtkSignalFunc", "GtkAccelGroupActivate",
    "cairo_read_func_t", "GtkTextBufferSerializeFunc", "GtkMenuPositionFunc",
    "GSourceFunc", "GtkBuilderConnectFunc",
    "cairo_user_scaled_font_text_to_glyphs_func_t",
    "cairo_user_scaled_font_init_func_t",
    "cairo_user_scaled_font_render_glyph_func_t",
    "cairo_user_scaled_font_unicode_to_glyph_func_t")

## Asynchronous user functions that are fired and forgotten
asyncUserFuncs <- c("GAsyncReadyCallback")

# these structures are passed as opaque pointers to R, without any accessors
# most of these are GLib facilities, and we're not binding GLib (yet anyway).
opaqueTypes <- c("GtkNotebookPage", "GScanner", "GNode",
                 "GMarkupParser", "GKeyFile")

# this is a list of simple types that are easily converted to native R
# types (like lists) and (in most cases) are not instantiable via the
# any defined API
## note: GType and GQuark are also considered primitives
transparentTypes <-
  c("GParamSpec", "GtkFileFilterInfo",
    "GtkTargetEntry", "AtkAttribute", "GtkSettingsValue", "GValue",
    "GClosure", "GQuark", "GType", "GList", "GSList", "GtkStockItem",
    "GString", "GtkItemFactoryEntry", "GtkAllocation", "GdkAtom",
    "GTimeVal", "PangoRectangle", "GdkRectangle", "AtkAttributeSet",
    "GdkRgbCmap", "GdkKeymapKey", "GdkGCValues", "GdkGeometry",
    "GdkPoint", "GdkSegment", "GdkColor", "GdkNativeWindow", "GError",
    "GdkWindowAttr", "GdkTrapezoid", "GtkActionEntry",
    "GtkToggleActionEntry", "GtkRadioActionEntry", "cairo_path_t",
    "cairo_glyph_t", "cairo_path_data_t", "AtkTextRectangle",
    "AtkTextRange", "GdkSpan", "GdkTimeCoord", "GtkPageRange",
    "GtkRecentFilterInfo", "GtkRecentData", "AtkKeyEventStruct",
    "GtkAccelKey", "AtkRectangle", "cairo_rectangle_t",
    "cairo_rectangle_list_t", "GFileAttributeInfo", "cairo_font_extents_t",
    "cairo_text_cluster_t")

# functions for releasing memory
# objects are automatically assigned
# g_object_unref and boxed types have release funcs in the defs
# transparent types are g_free'd after conversion
# most of these are glib/gobject things
# GdkNativeWindow is an example of a transparent type that should
# obviously not be freed
cleanupFuncs <-
list("GParamSpec"="g_param_spec_sink",
     "GValue"=c("g_value_unset", "g_free"), "GList" = "g_list_free",
     "GSList"="g_slist_free", "GString"="free_g_string",
     "AtkAttributeSet"="atk_attribute_set_free",
     "cairo_path_t"="cairo_path_destroy", "GError" = "g_error_free",
     "GdkNativeWindow"="", "GtkCTreeNode"="", "GtkTooltipsData"="",
     "GtkAccelKey"="", "AtkTextRange[]"="atk_text_free_ranges",
     "cairo_rectangle_list_t" = "cairo_rectangle_list_destroy",
     "cairo_glyph_t[]" = "cairo_glyph_free",
     "cairo_text_cluster_t[]" = "cairo_text_cluster_free")

# functions for custom finalization
finalizerFuncs <- list("PangoAttribute" = "pango_attribute_destroy",
                       "GtkTargetList"="gtk_target_list_unref",
                       "GdkRegion" = "gdk_region_destroy",
                       "PangoAttrIterator" = "pango_attr_iterator_destroy",
                       "PangoItem" = "pango_item_free",
                       "cairo_font_options_t" = "cairo_font_options_destroy",
                       "PangoGlyphItem" = "pango_glyph_item_free",
                       "PangoCoverage" = "pango_coverage_unref",
                       "PangoScriptIter" = "pango_script_iter_free")

# copy functions for types without a GType
copyFuncs <- c("GdkRegion" = "gdk_region_copy",
               "PangoCoverage" = "pango_coverage_ref")

# type names are now pure C (glib) so we map them to generic types to simplify conversion

CPrimitiveToGeneric <- c("gchar" = "character", "guchar" = "raw",
                         "gchar*" = "string", "char*" = "string",
                         "gssize" = "integer", "time_t" = "integer",
                         "size_t" = "integer", "gshort" = "integer",
                         "gushort" = "integer",
                         "gint" = "integer", "int" = "integer", "gint8" = "raw",
                         "gint16" = "integer", "gint32" = "integer",
                         "guint8" = "raw", 
                         "guint16" = "integer", "PangoGlyphUnit" = "integer", 
                         "gint64" = "numeric", "gsize" = "numeric",
                         "goffset" = "numeric", "gunichar" = "numeric", 
                         "guint" = "numeric", "PangoGlyph" = "numeric", 
                         "GQuark" = "GQuark", "guint32" = "numeric",
                         "GdkWChar" = "numeric",
                         "guint64" = "numeric", "AtkState" = "numeric",
                         "gfloat" = "numeric",
                         "float" = "numeric", "gdouble" = "numeric",
                         "double" = "numeric", 
                         "glong" = "numeric", "gulong" = "numeric",
                         "GType" = "GType", 
                         "gboolean" = "logical", "cairo_bool_t" = "logical"
                         )

# build mappings to GType constants

CPrimitiveToGType <- c(rep("G_TYPE_CHAR",1), "G_TYPE_UCHAR",
                       rep("G_TYPE_STRING",2), rep("G_TYPE_INT",13),
                       rep("G_TYPE_INT64", 2), rep("G_TYPE_UINT", 7),
                       rep("G_TYPE_UINT64",2), rep("G_TYPE_FLOAT",2),
                       rep("G_TYPE_DOUBLE",2), "G_TYPE_LONG",
                       rep("G_TYPE_ULONG", 2),
                       rep("G_TYPE_BOOLEAN",2))
names(CPrimitiveToGType) <- names(CPrimitiveToGeneric)
CPrimitiveToGType[["gpointer"]] <- "G_TYPE_POINTER" # no R primitive equivalent
CPrimitiveToGType[["gconstpointer"]] <- "G_TYPE_POINTER"

# types that are not included as incoming parameters
hiddenTypes <- c("GDestroyNotify", "GtkDestroyNotify", "GtkClipboardClearFunc", 
                 "GdkGCValuesMask", "GdkWindowHints", "cairo_destroy_func_t",
                 "GReallocFunc")

# types that we just ignore (do not convert, do not fail as if it were 'bad')
ignoredTypes <- c("GtkCallbackMarshal", "PangoAttrDataCopyFunc")

### Extending GObject classes ###

finalClasses <- c("GdkDevice", "GdkVisual", "GdkPixbuf", "GdkPixbufSimpleAnim",
                  "GtkClipboard", "GtkFileFilter", "GtkPageSetup",
                  "GtkPrintContext", "GtkPrintOperationPreview",
                  "GtkPrintSettings", "GtkRecentChooser", "GtkRecentFilter",
                  "GtkFileChooser", "GtkAccelMap", "PangoCairoFontMap",
                  "PangoContext", "PangoFontsetSimple", "PangoLayout",
                  "PangoCairoFont", "GtkTooltip", "GFileInfo", "GIOModule",
                  "GSimpleAsyncResult", "GFileIcon", "GThemedIcon", "GEmblem",
                  "GEmblemedIcon")
classTypeMap <- c("GdkBitmapClass" = "GdkDrawableClass", 
  "GdkPixmapClass" = "GdkPixmapObjectClass", "GtkEditableIface" = "GtkEditableClass")

################## DOCUMENTATION ####################

# functions that we aren't documenting (ie, memory management, low-level)
# these are not includeded in RGtk
lowlevel_funcs <-
c("pango_context_new", "pango_fontset_simple_new",
  "pango_font_map_get_shape_engine_type", "pango_fontset_simple_append",
  "pango_fontset_simple_size", "gdk_event_send_client_message",
  "gdk_event_send_client_message_for_display",
  "gdk_event_send_clientmessage_toall", "gdk_spawn_on_screen",
  "gdk_spawn_on_screen_with_pipes", "gdk_init", "gdk_init_check",
  "gdk_parse_args", "gdk_set_locale", "gdk_exit", "gdk_get_use_xshm",
  "gdk_set_sm_client_id", "gdk_set_use_xshm", "gdk_error_trap_push",
  "gdk_error_trap_pop", "gdk_pixmap_foreign_new",
  "gdk_pixmap_foreign_new_for_display", "gdk_pixmap_lookup",
  "gdk_pixmap_lookup_for_display", "pango_font_find_shaper",
  "gtk_disable_setlocale", "gdk_pixmap_foreign_new_for_screen",
  "atk_misc_threads_enter", "atk_misc_threads_leave", "gtk_init_check",
  "gtk_input_add_full", "gtk_set_locale",
  "g_cancellable_make_pollfd", "g_io_scheduler_push_job",
  "g_simple_async_result_is_valid", "g_unix_connection_receive_fd",
  "g_unix_connection_send_fd", "gtk_test_init")

useless_funcs <- c("pango_default_break", "gdk_colormap_change",
                   "gdk_color_copy", "gdk_colors_alloc", "gdk_color_hash",
                   "gdk_color_equal", "gdk_wcstombs", "gdk_mbstowcs",
                   "gdk_image_new_bitmap", "gdk_text_property_to_text_list",
                   "gdk_text_property_to_text_list_for_display",
                   "gdk_text_property_to_utf8_list",
                   "gdk_text_property_to_utf8_list_for_display",
                   "gdk_get_display_arg_name", "gdk_string_to_compound_text",
                   "gdk_string_to_compound_text_for_display",
                   "gdk_pixbuf_new_from_inline", "gdk_utf8_to_string_target",
                   "gdk_utf8_to_compound_text",
                   "gdk_utf8_to_compound_text_for_display",
                   "gdk_rgb_init", "gtk_parse_args", "gtk_init_with_args",
                   "gtk_get_option_group", "gtk_widget_destroyed",
                   "cairo_font_options_hash", "gtk_decorated_window_set_title",
                   "gtk_decorated_window_move_resize_window",
                   "cairo_debug_reset_static_data", "cairo_destroy_func_t",
                   "gtk_window_parse_geometry", "gtk_decorated_window_init",
                   "gtk_decorated_window_calculate_frame_size",
                   "gtk_widget_style_get_valist", "gtk_tree_store_set_valist",
                   "gtk_tree_model_get_valist", "gtk_list_store_set_valist",
                   "gtk_container_child_get_valist",
                   "gtk_container_child_set_valist",
                   "cairo_read_func_t", "cairo_write_func_t",
                   "gtk_recent_chooser_set_show_numbers",
                   "gtk_recent_chooser_get_show_numbers",
                   "atk_misc_get_instance", "g_buffered_input_stream_peek",
                   "gtk_style_get_valist",
                   "g_async_initable_newv_async",
                   "g_async_initable_new_valist_async",
                   "g_initable_newv", "g_initable_new_valist",
                   "g_cancellable_connect",
                   "glade_xml_construct_from_buffer", # libglade is dead
                   "g_io_module_load", "g_io_module_unload",
                   "g_simple_async_result_set_error_va",
                   "gtk_test_create_widget", "gtk_test_create_simple_window",
                   "gtk_test_display_button_window"
                   )

mem_funcs <-
  c("atk_text_free_ranges",
    "pango_font_description_merge_static",
    "pango_font_descriptions_free", "pango_matrix_free",
    "pango_glyph_item_free", "pango_layout_line_ref",
    "pango_layout_line_unref", "pango_item_free", "gdk_colormap_ref",
    "gdk_colormap_unref", "gdk_device_free_history","gdk_color_free",
    "gdk_colors_free", "gdk_cursor_ref", "gdk_cursor_unref",
    "gdk_font_ref", "gdk_font_unref", "gdk_font_equal",
    "atk_attribute_set_free", "gdk_gc_ref", "gdk_gc_unref",
    "gdk_image_ref", "gdk_image_unref", "gdk_free_text_list",
    "gdk_free_compound_text", "gdk_region_destroy", "gdk_drawable_ref",
    "gdk_drawable_unref", "gdk_rgb_cmap_free",
    "gdk_pixbuf_animation_ref", "gdk_pixbuf_animation_unref",
    "cairo_font_options_destroy", "cairo_font_face_reference",
    "cairo_font_face_destroy", "cairo_pattern_reference",
    "cairo_pattern_destroy", "cairo_reference", "cairo_path_destroy",
    "cairo_destroy", "cairo_scaled_font_reference",
    "cairo_scaled_font_destroy", "gdk_drag_context_ref",
    "gdk_drag_context_unref", "gtk_icon_set_ref", "gtk_icon_set_unref",
    "gtk_list_remove_items_no_unref", "gtk_rc_style_ref",
    "gtk_rc_style_unref", "gtk_style_ref", "gtk_style_unref",
    "gtk_target_list_ref", "gtk_target_list_unref",
    "gtk_text_attributes_ref", "gtk_text_attributes_unref",
    "gtk_tree_row_reference_free", "gtk_widget_ref", "gtk_widget_unref",
    "pango_attr_list_ref", "pango_attr_list_unref",
    "pango_coverage_ref", "pango_coverage_unref",
    "pango_font_metrics_ref", "pango_font_metrics_unref",
    "atk_attribute_set_free", "gtk_object_destroy", "gdk_event_free",
    "gtk_border_free", "gtk_icon_info_free", "gtk_icon_source_free",
    "gtk_requisition_free", "gtk_selection_data_free",
    "gtk_stock_item_free", "gtk_text_iter_free", "gtk_tree_iter_free",
    "gtk_tree_path_free", "pango_font_description_free",
    "pango_glyph_string_free", "pango_layout_iter_free",
    "pango_tab_array_free", "gtk_target_table_free",
    "gtk_paper_size_free", "pango_script_iter_free",
    "cairo_rectangle_list_destroy", "cairo_get_reference_count",
    "cairo_surface_get_reference_count", "cairo_surface_reference",
    "cairo_pattern_get_reference_count",
    "cairo_font_face_get_reference_count",
    "cairo_scaled_font_get_reference_count", "pango_glyph_item_copy",
    "pango_layout_iter_copy", "g_file_attribute_info_list_ref",
    "g_file_attribute_info_list_unref",
    "g_file_attribute_matcher_ref", "g_file_attribute_matcher_unref",
    "pango_glyph_item_iter_copy", "pango_glyph_item_iter_free",
    "cairo_text_cluster_allocate", "cairo_glyph_allocate",
    "g_file_attribute_info_list_dup")

## too tough right now
unsupported_funcs <- c(# user data shared between two callbacks
                       "g_file_load_partial_contents_async",
                       # obviously, multi-threading is not supported
                       "g_simple_async_result_run_in_thread")

cleanups <- unlist(cleanupFuncs)[sapply(unlist(cleanupFuncs), function(func) nchar(func) > 0)]
mem_funcs <- unique(c(mem_funcs, cleanups, finalizerFuncs, "g_object_unref", "g_object_ref", "g_strfreev"))

undocumentedFuncs <- c(lowlevel_funcs, useless_funcs, mem_funcs,
                       unsupported_funcs)
badRFuncs <- unique(c(badRFuncs, undocumentedFuncs))

# entire concepts we're not documenting (ie, low-level functionality)
undocumentedConcepts <-
  c("engines", "freetype-fonts", "modules",
    "opentype", "pango-engine-lang", "pango-engine-shape",
    "pangofc-decoder", "pangofc-font", "pangofc-fontmap", "win32-fonts",
    "x-fonts", "xft-fonts", "input", "threads", "x_interaction",
    "glossary", "gtkbindings", "gtkfeatures", "gtkobject", "gtksignal",
    "gtktext", "gtkthemes", "gtktree", "gtktreeitem", "gtktypeutils",
    "selections", "gdk-pixbuf-xlib-from-drawables", "gdk-pixbuf-xlib-rgb",
    "gdk-pixbuf-xlib-init", "gdk-pixbuf-xlib-rendering", "inline",
    "refcounting", "cairo-ft", "cairo-glitz", "cairo-quartz",
    "cairo-quartz-fonts", "cairo-win32", "cairo-win32-fonts",
    "cairo-xcb-xrender", "cairo-xcb", "cairo-xlib-xrender", "cairo-xlib",
    "glade-build", "glade-parser", "glade-init", "atsui-fonts", "utils",
    "gtkpagesetupunixdialog", "gtkprinter", "gtkprintjob",
    "gtkprintunixdialog", "cairo-beos", "pango-vertical", "atk-AtkMisc",
    "gdesktopappinfo", "gunixfdmessage", "gunixinputstream",
    "gunixmounts", "gunixoutputstream", "gunixsocketaddress",
    "migrating", "overview")

# some sections are not appropriate for the R documentation
omittedSections <- c("image-data", "Pathnames and patterns",
                     "Toplevel declarations", "Styles", "Key bindings")

libraryDescriptions <-
c("ATK" = "ATK is the Accessibility Toolkit. It provides a set of generic interfaces allowing accessibility technologies to interact with a graphical user interface. For example, a screen reader uses ATK to discover the text in an interface and read it to blind users. GTK+ widgets have built-in support for accessibility using the ATK framework.",
  "Pango" = "Pango is a library for internationalized text handling. It centers around the \\code{\\link{PangoLayout}} object, representing a paragraph of text. Pango provides the engine for \\code{\\link{GtkTextView}}, \\code{\\link{GtkLabel}}, \\code{\\link{GtkEntry}}, and other widgets that display text.",
  "GIO" = "GIO is a modern, easy-to-use VFS API",
  "GDK" = "GDK is the abstraction layer that allows GTK+ to support multiple windowing systems. GDK provides drawing and window system facilities on X11, Windows, and the Linux framebuffer device.",
  "GTK" = "The GTK+ library itself contains widgets, that is, GUI components such as \\code{\\link{GtkButton}} or \\code{\\link{GtkTextView}}.",
  "GDK-Pixbuf" = "This is a small library which allows you to create GdkPixbuf ('pixel buffer') objects from image data or image files. Use a \\code{\\link{GdkPixbuf}} in combination with \\code{\\link{GtkImage}} to display images.",
  "CAIRO" = "Cairo is a 2D graphics library with support for multiple output devices. Currently supported output targets include the X Window System, win32, and image buffers.",
  "Libglade" = "Libglade loads and parses XML descriptions of user interfaces at runtime. It also provides functions that can be used to connect signal handlers to parts of the interface."
)

gnome_prefix <- "http://library.gnome.org/devel/"
urlPrefices <- paste(gnome_prefix, tolower(names(libraryDescriptions)), sep="/")
names(urlPrefices) <- tolower(names(libraryDescriptions))
urlPrefices[["cairo"]] <- "http://www.cairographics.org/manual"

customNotes <- c(
"gtk-Stock-Items" = "Please see the reference for a detailed list of the stock items",
"gdk-Keyboard-Handling" = "The keyval constants exist in RGtk2 as .gdkKeyvalName, so \\code{.gdkPlus} for \\kbd{plus}.",
"gtk_widget_get_pango_context" = paste(
	"Unlike the context returned by \\code{\\link{gtkWidgetCreatePangoContext}},",
	"this context is owned by the widget (it can be used until the screen for",
	"the widget changes or the widget is removed from its toplevel), and will",
	"be updated to match any changes to the widget's attributes.", sep=" \n"),
"gtk_menu_attach_to_widget" = "This does not yet support the callback function, sorry."
)

## functions that are not exported from the win32 DLL
## this is just a temporary hack (or is it?)
badTypes <- c(badTypes, "AtkHyperlinkImpl")
badDLLFuncs <- c("atk_streamable_content_get_uri", "atk_value_get_minimum_increment")
badRFuncs <- c(badRFuncs, badDLLFuncs)
badCFuncs <- c(badCFuncs, badDLLFuncs)
undocumentedFuncs <- c(undocumentedFuncs, badDLLFuncs)
undocumentedConcepts <- c(undocumentedConcepts, "atkhyperlinkimpl")
