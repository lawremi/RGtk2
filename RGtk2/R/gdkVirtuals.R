.virtuals <- c(.virtuals, list(
  GdkDisplay = c("get_display_name", "get_n_screens", "get_screen", "get_default_screen", "closed"), 
  GdkDisplayManager = c("display_opened"), 
  GdkDrawable = c("create_gc", "draw_rectangle", "draw_arc", "draw_polygon", "draw_text", "draw_text_wc", "draw_drawable", "draw_points", "draw_segments", "draw_lines", "draw_glyphs", "draw_image", "get_depth", "get_size", "set_colormap", "get_colormap", "get_visual", "get_screen", "get_image", "get_clip_region", "get_visible_region", "get_composite_drawable", "draw_pixbuf", "draw_glyphs_transformed", "draw_trapezoids", "ref_cairo_surface"), 
  GdkGC = c("get_values", "set_values", "set_dashes"), 
  GdkKeymap = c("direction_changed", "keys_changed"), 
  GdkScreen = c("size_changed", "composited_changed"), 
  GdkPixbufAnimation = c("is_static_image", "get_static_image", "get_size", "get_iter"), 
  GdkPixbufAnimationIter = c("get_delay_time", "get_pixbuf", "on_currently_loading_frame", "advance"), 
  GdkPixbufLoader = c("size_prepared", "area_prepared", "area_updated", "closed")))