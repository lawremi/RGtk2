
/* Generated data (by glib-mkenums) */

#include <cairo.h>
#include <glib-object.h>

/* enumerations from "cairo.h" */
GType
cairo_status_get_type (void)
{
  static GType etype = 0;
  if (etype == 0) {
    static const GEnumValue values[] = {
      { CAIRO_STATUS_SUCCESS, "CAIRO_STATUS_SUCCESS", "success" },
      { CAIRO_STATUS_NO_MEMORY, "CAIRO_STATUS_NO_MEMORY", "no-memory" },
      { CAIRO_STATUS_INVALID_RESTORE, "CAIRO_STATUS_INVALID_RESTORE", "invalid-restore" },
      { CAIRO_STATUS_INVALID_POP_GROUP, "CAIRO_STATUS_INVALID_POP_GROUP", "invalid-pop-group" },
      { CAIRO_STATUS_NO_CURRENT_POINT, "CAIRO_STATUS_NO_CURRENT_POINT", "no-current-point" },
      { CAIRO_STATUS_INVALID_MATRIX, "CAIRO_STATUS_INVALID_MATRIX", "invalid-matrix" },
      { CAIRO_STATUS_INVALID_STATUS, "CAIRO_STATUS_INVALID_STATUS", "invalid-status" },
      { CAIRO_STATUS_NULL_POINTER, "CAIRO_STATUS_NULL_POINTER", "null-pointer" },
      { CAIRO_STATUS_INVALID_STRING, "CAIRO_STATUS_INVALID_STRING", "invalid-string" },
      { CAIRO_STATUS_INVALID_PATH_DATA, "CAIRO_STATUS_INVALID_PATH_DATA", "invalid-path-data" },
      { CAIRO_STATUS_READ_ERROR, "CAIRO_STATUS_READ_ERROR", "read-error" },
      { CAIRO_STATUS_WRITE_ERROR, "CAIRO_STATUS_WRITE_ERROR", "write-error" },
      { CAIRO_STATUS_SURFACE_FINISHED, "CAIRO_STATUS_SURFACE_FINISHED", "surface-finished" },
      { CAIRO_STATUS_SURFACE_TYPE_MISMATCH, "CAIRO_STATUS_SURFACE_TYPE_MISMATCH", "surface-type-mismatch" },
      { CAIRO_STATUS_PATTERN_TYPE_MISMATCH, "CAIRO_STATUS_PATTERN_TYPE_MISMATCH", "pattern-type-mismatch" },
      { CAIRO_STATUS_INVALID_CONTENT, "CAIRO_STATUS_INVALID_CONTENT", "invalid-content" },
      { CAIRO_STATUS_INVALID_FORMAT, "CAIRO_STATUS_INVALID_FORMAT", "invalid-format" },
      { CAIRO_STATUS_INVALID_VISUAL, "CAIRO_STATUS_INVALID_VISUAL", "invalid-visual" },
      { CAIRO_STATUS_FILE_NOT_FOUND, "CAIRO_STATUS_FILE_NOT_FOUND", "file-not-found" },
      { CAIRO_STATUS_INVALID_DASH, "CAIRO_STATUS_INVALID_DASH", "invalid-dash" },
      { 0, NULL, NULL }
    };
    etype = g_enum_register_static ("CairoStatus", values);
  }
  return etype;
}
GType
cairo_operator_get_type (void)
{
  static GType etype = 0;
  if (etype == 0) {
    static const GEnumValue values[] = {
      { CAIRO_OPERATOR_CLEAR, "CAIRO_OPERATOR_CLEAR", "clear" },
      { CAIRO_OPERATOR_SOURCE, "CAIRO_OPERATOR_SOURCE", "source" },
      { CAIRO_OPERATOR_OVER, "CAIRO_OPERATOR_OVER", "over" },
      { CAIRO_OPERATOR_IN, "CAIRO_OPERATOR_IN", "in" },
      { CAIRO_OPERATOR_OUT, "CAIRO_OPERATOR_OUT", "out" },
      { CAIRO_OPERATOR_ATOP, "CAIRO_OPERATOR_ATOP", "atop" },
      { CAIRO_OPERATOR_DEST, "CAIRO_OPERATOR_DEST", "dest" },
      { CAIRO_OPERATOR_DEST_OVER, "CAIRO_OPERATOR_DEST_OVER", "dest-over" },
      { CAIRO_OPERATOR_DEST_IN, "CAIRO_OPERATOR_DEST_IN", "dest-in" },
      { CAIRO_OPERATOR_DEST_OUT, "CAIRO_OPERATOR_DEST_OUT", "dest-out" },
      { CAIRO_OPERATOR_DEST_ATOP, "CAIRO_OPERATOR_DEST_ATOP", "dest-atop" },
      { CAIRO_OPERATOR_XOR, "CAIRO_OPERATOR_XOR", "xor" },
      { CAIRO_OPERATOR_ADD, "CAIRO_OPERATOR_ADD", "add" },
      { CAIRO_OPERATOR_SATURATE, "CAIRO_OPERATOR_SATURATE", "saturate" },
      { 0, NULL, NULL }
    };
    etype = g_enum_register_static ("CairoOperator", values);
  }
  return etype;
}
GType
cairo_fill_rule_get_type (void)
{
  static GType etype = 0;
  if (etype == 0) {
    static const GEnumValue values[] = {
      { CAIRO_FILL_RULE_WINDING, "CAIRO_FILL_RULE_WINDING", "winding" },
      { CAIRO_FILL_RULE_EVEN_ODD, "CAIRO_FILL_RULE_EVEN_ODD", "even-odd" },
      { 0, NULL, NULL }
    };
    etype = g_enum_register_static ("CairoFillRule", values);
  }
  return etype;
}
GType
cairo_line_cap_get_type (void)
{
  static GType etype = 0;
  if (etype == 0) {
    static const GEnumValue values[] = {
      { CAIRO_LINE_CAP_BUTT, "CAIRO_LINE_CAP_BUTT", "butt" },
      { CAIRO_LINE_CAP_ROUND, "CAIRO_LINE_CAP_ROUND", "round" },
      { CAIRO_LINE_CAP_SQUARE, "CAIRO_LINE_CAP_SQUARE", "square" },
      { 0, NULL, NULL }
    };
    etype = g_enum_register_static ("CairoLineCap", values);
  }
  return etype;
}
GType
cairo_line_join_get_type (void)
{
  static GType etype = 0;
  if (etype == 0) {
    static const GEnumValue values[] = {
      { CAIRO_LINE_JOIN_MITER, "CAIRO_LINE_JOIN_MITER", "miter" },
      { CAIRO_LINE_JOIN_ROUND, "CAIRO_LINE_JOIN_ROUND", "round" },
      { CAIRO_LINE_JOIN_BEVEL, "CAIRO_LINE_JOIN_BEVEL", "bevel" },
      { 0, NULL, NULL }
    };
    etype = g_enum_register_static ("CairoLineJoin", values);
  }
  return etype;
}
GType
cairo_font_slant_get_type (void)
{
  static GType etype = 0;
  if (etype == 0) {
    static const GEnumValue values[] = {
      { CAIRO_FONT_SLANT_NORMAL, "CAIRO_FONT_SLANT_NORMAL", "normal" },
      { CAIRO_FONT_SLANT_ITALIC, "CAIRO_FONT_SLANT_ITALIC", "italic" },
      { CAIRO_FONT_SLANT_OBLIQUE, "CAIRO_FONT_SLANT_OBLIQUE", "oblique" },
      { 0, NULL, NULL }
    };
    etype = g_enum_register_static ("CairoFontSlant", values);
  }
  return etype;
}
GType
cairo_font_weight_get_type (void)
{
  static GType etype = 0;
  if (etype == 0) {
    static const GEnumValue values[] = {
      { CAIRO_FONT_WEIGHT_NORMAL, "CAIRO_FONT_WEIGHT_NORMAL", "normal" },
      { CAIRO_FONT_WEIGHT_BOLD, "CAIRO_FONT_WEIGHT_BOLD", "bold" },
      { 0, NULL, NULL }
    };
    etype = g_enum_register_static ("CairoFontWeight", values);
  }
  return etype;
}
GType
cairo_path_data_get_type (void)
{
  static GType etype = 0;
  if (etype == 0) {
    static const GEnumValue values[] = {
      { CAIRO_PATH_MOVE_TO, "CAIRO_PATH_MOVE_TO", "move-to" },
      { CAIRO_PATH_LINE_TO, "CAIRO_PATH_LINE_TO", "line-to" },
      { CAIRO_PATH_CURVE_TO, "CAIRO_PATH_CURVE_TO", "curve-to" },
      { CAIRO_PATH_CLOSE_PATH, "CAIRO_PATH_CLOSE_PATH", "close-path" },
      { 0, NULL, NULL }
    };
    etype = g_enum_register_static ("CairoPathData", values);
  }
  return etype;
}
GType
cairo_content_get_type (void)
{
  static GType etype = 0;
  if (etype == 0) {
    static const GEnumValue values[] = {
      { CAIRO_CONTENT_COLOR, "CAIRO_CONTENT_COLOR", "color" },
      { CAIRO_CONTENT_ALPHA, "CAIRO_CONTENT_ALPHA", "alpha" },
      { CAIRO_CONTENT_COLOR_ALPHA, "CAIRO_CONTENT_COLOR_ALPHA", "color-alpha" },
      { 0, NULL, NULL }
    };
    etype = g_enum_register_static ("CairoContent", values);
  }
  return etype;
}
GType
cairo_format_get_type (void)
{
  static GType etype = 0;
  if (etype == 0) {
    static const GEnumValue values[] = {
      { CAIRO_FORMAT_ARGB32, "CAIRO_FORMAT_ARGB32", "argb32" },
      { CAIRO_FORMAT_RGB24, "CAIRO_FORMAT_RGB24", "rgb24" },
      { CAIRO_FORMAT_A8, "CAIRO_FORMAT_A8", "a8" },
      { CAIRO_FORMAT_A1, "CAIRO_FORMAT_A1", "a1" },
      { 0, NULL, NULL }
    };
    etype = g_enum_register_static ("CairoFormat", values);
  }
  return etype;
}
GType
cairo_extend_get_type (void)
{
  static GType etype = 0;
  if (etype == 0) {
    static const GEnumValue values[] = {
      { CAIRO_EXTEND_NONE, "CAIRO_EXTEND_NONE", "none" },
      { CAIRO_EXTEND_REPEAT, "CAIRO_EXTEND_REPEAT", "repeat" },
      { CAIRO_EXTEND_REFLECT, "CAIRO_EXTEND_REFLECT", "reflect" },
      { 0, NULL, NULL }
    };
    etype = g_enum_register_static ("CairoExtend", values);
  }
  return etype;
}
GType
cairo_filter_get_type (void)
{
  static GType etype = 0;
  if (etype == 0) {
    static const GEnumValue values[] = {
      { CAIRO_FILTER_FAST, "CAIRO_FILTER_FAST", "fast" },
      { CAIRO_FILTER_GOOD, "CAIRO_FILTER_GOOD", "good" },
      { CAIRO_FILTER_BEST, "CAIRO_FILTER_BEST", "best" },
      { CAIRO_FILTER_NEAREST, "CAIRO_FILTER_NEAREST", "nearest" },
      { CAIRO_FILTER_BILINEAR, "CAIRO_FILTER_BILINEAR", "bilinear" },
      { CAIRO_FILTER_GAUSSIAN, "CAIRO_FILTER_GAUSSIAN", "gaussian" },
      { 0, NULL, NULL }
    };
    etype = g_enum_register_static ("CairoFilter", values);
  }
  return etype;
}
GType
cairo_antialias_get_type (void)
{
  static GType etype = 0;
  if (etype == 0) {
    static const GEnumValue values[] = {
      { CAIRO_ANTIALIAS_DEFAULT, "CAIRO_ANTIALIAS_DEFAULT", "default" },
      { CAIRO_ANTIALIAS_NONE, "CAIRO_ANTIALIAS_NONE", "none" },
      { CAIRO_ANTIALIAS_GRAY, "CAIRO_ANTIALIAS_GRAY", "gray" },
      { CAIRO_ANTIALIAS_SUBPIXEL, "CAIRO_ANTIALIAS_SUBPIXEL", "subpixel" },
      { 0, NULL, NULL }
    };
    etype = g_enum_register_static ("CairoAntialias", values);
  }
  return etype;
}
GType
cairo_subpixel_order_get_type (void)
{
  static GType etype = 0;
  if (etype == 0) {
    static const GEnumValue values[] = {
      { CAIRO_SUBPIXEL_ORDER_DEFAULT, "CAIRO_SUBPIXEL_ORDER_DEFAULT", "default" },
      { CAIRO_SUBPIXEL_ORDER_RGB, "CAIRO_SUBPIXEL_ORDER_RGB", "rgb" },
      { CAIRO_SUBPIXEL_ORDER_BGR, "CAIRO_SUBPIXEL_ORDER_BGR", "bgr" },
      { CAIRO_SUBPIXEL_ORDER_VRGB, "CAIRO_SUBPIXEL_ORDER_VRGB", "vrgb" },
      { CAIRO_SUBPIXEL_ORDER_VBGR, "CAIRO_SUBPIXEL_ORDER_VBGR", "vbgr" },
      { 0, NULL, NULL }
    };
    etype = g_enum_register_static ("CairoSubpixelOrder", values);
  }
  return etype;
}
GType
cairo_hint_style_get_type (void)
{
  static GType etype = 0;
  if (etype == 0) {
    static const GEnumValue values[] = {
      { CAIRO_HINT_STYLE_DEFAULT, "CAIRO_HINT_STYLE_DEFAULT", "default" },
      { CAIRO_HINT_STYLE_NONE, "CAIRO_HINT_STYLE_NONE", "none" },
      { CAIRO_HINT_STYLE_SLIGHT, "CAIRO_HINT_STYLE_SLIGHT", "slight" },
      { CAIRO_HINT_STYLE_MEDIUM, "CAIRO_HINT_STYLE_MEDIUM", "medium" },
      { CAIRO_HINT_STYLE_FULL, "CAIRO_HINT_STYLE_FULL", "full" },
      { 0, NULL, NULL }
    };
    etype = g_enum_register_static ("CairoHintStyle", values);
  }
  return etype;
}
GType
cairo_hint_metrics_get_type (void)
{
  static GType etype = 0;
  if (etype == 0) {
    static const GEnumValue values[] = {
      { CAIRO_HINT_METRICS_DEFAULT, "CAIRO_HINT_METRICS_DEFAULT", "default" },
      { CAIRO_HINT_METRICS_OFF, "CAIRO_HINT_METRICS_OFF", "off" },
      { CAIRO_HINT_METRICS_ON, "CAIRO_HINT_METRICS_ON", "on" },
      { 0, NULL, NULL }
    };
    etype = g_enum_register_static ("CairoHintMetrics", values);
  }
  return etype;
}

/* Generated data ends here */

