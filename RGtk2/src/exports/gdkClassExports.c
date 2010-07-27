R_RegisterCCallable("RGtk2", "S_gdk_bitmap_class_init", ((DL_FUNC)S_gdk_bitmap_class_init)); 
R_RegisterCCallable("RGtk2", "S_gdk_colormap_class_init", ((DL_FUNC)S_gdk_colormap_class_init)); 
R_RegisterCCallable("RGtk2", "S_gdk_display_class_init", ((DL_FUNC)S_gdk_display_class_init)); 
R_RegisterCCallable("RGtk2", "S_gdk_display_manager_class_init", ((DL_FUNC)S_gdk_display_manager_class_init)); 
R_RegisterCCallable("RGtk2", "S_gdk_drag_context_class_init", ((DL_FUNC)S_gdk_drag_context_class_init)); 
R_RegisterCCallable("RGtk2", "S_gdk_drawable_class_init", ((DL_FUNC)S_gdk_drawable_class_init)); 
R_RegisterCCallable("RGtk2", "S_gdk_window_class_init", ((DL_FUNC)S_gdk_window_class_init)); 
R_RegisterCCallable("RGtk2", "S_gdk_pixmap_class_init", ((DL_FUNC)S_gdk_pixmap_class_init)); 
R_RegisterCCallable("RGtk2", "S_gdk_gc_class_init", ((DL_FUNC)S_gdk_gc_class_init)); 
R_RegisterCCallable("RGtk2", "S_gdk_image_class_init", ((DL_FUNC)S_gdk_image_class_init)); 
R_RegisterCCallable("RGtk2", "S_gdk_keymap_class_init", ((DL_FUNC)S_gdk_keymap_class_init)); 
R_RegisterCCallable("RGtk2", "S_gdk_pixbuf_animation_class_init", ((DL_FUNC)S_gdk_pixbuf_animation_class_init)); 
R_RegisterCCallable("RGtk2", "S_gdk_pixbuf_animation_iter_class_init", ((DL_FUNC)S_gdk_pixbuf_animation_iter_class_init)); 
R_RegisterCCallable("RGtk2", "S_gdk_pixbuf_loader_class_init", ((DL_FUNC)S_gdk_pixbuf_loader_class_init)); 
R_RegisterCCallable("RGtk2", "S_gdk_pango_renderer_class_init", ((DL_FUNC)S_gdk_pango_renderer_class_init)); 
R_RegisterCCallable("RGtk2", "S_gdk_screen_class_init", ((DL_FUNC)S_gdk_screen_class_init)); 
#if GDK_CHECK_VERSION(2, 14, 0)
R_RegisterCCallable("RGtk2", "S_gdk_app_launch_context_class_init", ((DL_FUNC)S_gdk_app_launch_context_class_init));
#endif 
