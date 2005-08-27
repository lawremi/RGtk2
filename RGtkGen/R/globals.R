# Here we define global variables controlling the code generation.

# BAD types.. those we cannot handle.. not sure if this is the best place to put these
# most of these are either undocumented or are user-functions without user-data
# I haven't come up with a good way of handling va_list since it's not possible to
# manually recreate it after element conversion. I can think of some ways around
# this but they aren't convenient at all.

badTypes <- c("GdkPointerHooks", "GdkDisplayPointerHooks", "GtkRcPropertyParser", "GtkMenuDetachFunc",
    "va_list", "GtkMenuEntry", "GtkCListCompareFunc", "GtkCTreeCompareDragFunc", "GtkAccelGroupEntry",
    "AtkEventListener", "AtkEventListenerInit", "AtkFocusHandler", "GtkSignalFunc",
    "AtkPropertyChangeHandler", "AtkPropertyValues", "PangoFontsetSimple")

# Functions that we cannot handle
# This list will certainly grow. Most of these are implemented manually.
badCFuncs <- c("gtk_editable_insert_text", "gtk_clipboard_set_with_owner", "gtk_item_factory_create_item", 
    "gtk_item_factory_create_items", "gtk_item_factory_create_items_ac",
    "gtk_clist_set_row_data", "gtk_ctree_node_set_row_data", "gtk_curve_get_vector",
    "gtk_list_store_insert_with_valuesv", "gtk_im_context_simple_add_table",
	"gdk_window_invalidate_maybe_recurse", "atk_editable_text_insert_text",
    "pango_get_log_attrs", "pango_break", "pango_glyph_string_get_logical_widths", "pango_tab_array_get_tabs",
    "gdk_pixbuf_new_from_data", "gdk_window_constrain_size", "gdk_window_set_geometry_hints",
    "gdk_device_get_history", "gdk_device_free_history", "gtk_window_set_geometry_hints",
    "gdk_window_new", "atk_add_global_event_listener", "gtk_widget_destroyed", "gtk_gc_get", 
    "pango_font_descriptions_free", "pango_context_new",
    "PANGO_ASCENT", "PANGO_DESCENT", "PANGO_RBEARING", "PANGO_LBEARING", "gdk_gc_new_with_values",
    "gdk_gc_set_values", "gtk_init", "gtk_init_check", "gtk_label_new_with_mnemonic",
    "gdk_pixbuf_get_pixels", "gdk_bitmap_create_from_data", "gtk_menu_get_for_attach_widget",
	"gtk_list_store_set_value", "gtk_tree_path_get_indices", "gtk_widget_list_accel_closures",
	"gtk_ui_manager_get_action_groups", "pango_layout_get_lines", "pango_font_map_get_shape_engine_type",
	"pango_attr_iterator_get_font", "gtk_icon_theme_set_search_path", "gtk_tree_store_set_value",
	"gtk_container_child_set_property", "gtk_action_group_add_toggle_actions_full",
	"gtk_action_group_add_toggle_actions", "gtk_action_group_add_radio_actions_full",
	"gtk_action_group_add_radio_actions", "gtk_action_group_add_actions_full",
	"gtk_action_group_add_actions", "cairo_append_path", "glade_xml_signal_autoconnect",
	"glade_xml_construct", "gtk_action_get_accel_closure", "gdk_pixbuf_get_from_drawable",
	"gdk_pixbuf_get_from_image", "gdk_pixbuf_render_pixmap_and_mask", 
	"gdk_pixbuf_render_pixmap_and_mask_for_colormap", "gtk_accel_group_from_accel_closure",
	"gdk_query_depths", "gdk_query_visual_types")

# sometimes it's easier to fix things from the R side (simple aliasing) or
# there is a problem with the argument list, etc
badRFuncs <- c("gdk_window_invalidate_maybe_recurse", "gtk_clipboard_set_with_owner",
	"gtk_list_store_insert_with_valuesv", "pango_get_log_attrs", "pango_break",
	"pango_glyph_string_get_logical_widths", "gtk_text_buffer_insert_interactive", 
	"gtk_text_buffer_insert_interactive_at_cursor", "gtk_im_context_simple_add_table",
	"gtk_selection_data_set", "gdk_text_extents", "pango_layout_set_markup_with_accel",
	"pango_parse_markup", "pango_glyph_string_index_to_x", "pango_glyph_string_x_to_index",
	"pango_shape", "gdk_window_constrain_size", "gdk_pixbuf_new_from_data", 
	"gdk_device_free_history", "gdk_window_new", "pango_font_descriptions_free",
	"atk_add_global_event_listener", "gtk_widget_destroyed", "gtk_init", "gtk_init_check",
	"gtk_widget_list_accel_closures", "pango_context_new", "pango_font_map_get_shape_engine_type",
	"gtk_icon_theme_set_search_path", "gdk_bitmap_create_from_data", "glade_xml_new_from_buffer",
	"glade_xml_construct")

# enums that are blocked, these two because RGtk handles them implicitly
badEnums <- c("GdkGeometryHints", "GdkGCValuesMask")

# User functions that we wrap manually
manUserFuncs <- c("GCompareFunc", "GCallback")

# this is a list of types that are not defined and probably don't need to be
# we just let them pass through as opaque external pointers
opaqueTypes <- c("GScanner", "GNode")

# this is a list of simple types that are easily converted to native R types (like lists)
# and (in most cases) are not instantiable via the any defined API
# note: GType and GQuark are also considered primitives
transparentTypes <- c("GParamSpec", "GtkFileFilterInfo", "GtkTargetEntry", "AtkAttribute",
    "GtkSettingsValue", "GValue", "GClosure", "GQuark", "GType",  "GList", "GSList",
    "GtkStockItem", "GString", "GtkItemFactoryEntry", "GtkAllocation", "GdkAtom", "GTimeVal",
    "PangoRectangle", "GdkRectangle", "AtkAttributeSet", "GdkRgbCmap", "GdkKeymapKey", "GdkGCValues", "GdkGeometry",
    "GdkPoint", "GdkSegment", "GdkColor", "GdkNativeWindow", "GError", "GdkWindowAttr", "GdkTrapezoid",
	"GtkActionEntry", "GtkToggleActionEntry", "GtkRadioActionEntry", "cairo_path_t", "cairo_glyph_t",
	"AtkTextRectangle", "AtkTextRange")

# functions for releasing memory
# objects are automatically assigned g_object_unref and boxed types have release funcs in the defs
# transparent types are g_free'd after conversion
# most of these are glib/gobject things
# GdkNativeWindow is an example of a transparent type that should obviously not be freed
cleanupFuncs <- list("GParamSpec"="g_param_spec_sink", "GValue"=c("g_value_unset", "g_free"),
    "GList" = "g_list_free", "GSList"="g_slist_free", "GString"="free_g_string", 
	"AtkAttributeSet"="atk_attribute_set_free", "cairo_path_t"="cairo_path_destroy",
    "GError" = "g_error_free", "GdkNativeWindow"="", "GtkCTreeNode"="", 
	"GtkTooltipsData"="", "GtkAccelKey"="", "AtkTextRange[]"="atk_text_free_ranges")
# functions for custom finalization
finalizerFuncs <- list("PangoAttribute" = "pango_attribute_destroy", "GtkTargetList"="gtk_target_list_unref",
	"GdkRegion" = "gdk_region_destroy", "PangoAttrIterator" = "pango_attr_iterator_destroy",
	"PangoItem" = "pango_item_free", "cairo_font_options_t" = "cairo_font_options_destroy")

# type names are now pure C (glib) so we map them to generic types to simplify conversion

CPrimitiveToGeneric <- c("gchar" = "character", "guchar" = "integer",
                           "gchar*" = "string", "char*" = "string",
						    "gssize" = "integer",
                           "size_t" = "integer", "gshort" = "integer", "gushort" = "integer",
                           "gint" = "integer", "int" = "integer", "gint8" = "integer",
                           "gint16" = "integer", "gint32" = "integer", "guint8" = "integer", 
                           "guint16" = "integer", "gint64" = "numeric", "gsize" = "numeric", 
                           "gunichar" = "numeric", "guint" = "numeric", "PangoGlyph" = "numeric",
                           "GQuark" = "numeric", "guint32" = "numeric", "GdkWChar" = "numeric",
                           "guint64" = "numeric", "AtkState" = "numeric", "gfloat" = "numeric",
                           "gdouble" = "numeric", "double" = "numeric", "glong" = "numeric",
                           "gulong" = "numeric", "GType" = "numeric", "gboolean" = "logical"
)

# build mappings to GType constants
CPrimitiveToGType <- c(rep("G_TYPE_CHAR",1), "G_TYPE_UCHAR", rep("G_TYPE_STRING",2), rep("G_TYPE_INT",11),
                        "G_TYPE_INT64", rep("G_TYPE_UINT", 7), rep("G_TYPE_UINT64",2),
                        "G_TYPE_FLOAT", rep("G_TYPE_DOUBLE",2), "G_TYPE_LONG",
                        rep("G_TYPE_ULONG", 2), "G_TYPE_BOOLEAN")
names(CPrimitiveToGType) <- names(CPrimitiveToGeneric)
CPrimitiveToGType[["gpointer"]] <- "G_TYPE_POINTER" # has no R primitive equivalent

# types that are not included as incoming parameters
hiddenTypes <- c("GDestroyNotify", "GtkDestroyNotify", "GtkClipboardClearFunc", 
	"GdkGCValuesMask", "GdkWindowHints")

# types that we just ignore (do not convert, do not fail as if it were 'bad')
ignoredTypes <- c("GtkCallbackMarshal")
