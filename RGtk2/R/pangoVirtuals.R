.virtuals <- c(.virtuals, list(
  PangoAttr = c("copy", "destroy", "equal"), 
  PangoFontFamily = c("list_faces", "get_name", "is_monospace"), 
  PangoFontFace = c("get_face_name", "describe", "list_sizes"), 
  PangoFont = c("describe", "get_coverage", "get_glyph_extents", "get_metrics", "get_font_map"), 
  PangoFontMap = c("load_font", "list_families", "load_fontset"), 
  PangoFontset = c("get_font", "get_metrics", "get_language", "foreach"), 
  PangoRenderer = c("draw_glyphs", "draw_rectangle", "draw_error_underline", "draw_shape", "draw_trapezoid", "draw_glyph", "part_changed", "begin", "end", "prepare_run")))