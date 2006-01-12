
gdkNotifyStartupComplete <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gdk_notify_startup_complete", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkGetProgramClass <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gdk_get_program_class", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkSetProgramClass <-
function(program.class, .flush = TRUE, .depwarn = TRUE)
{
	program.class <- as.character(program.class)

	w <- .RGtkCall("S_gdk_set_program_class", program.class, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkGetDisplay <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gdk_get_display", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkPointerGrab <-
function(window, owner.events = "FALSE", event.mask = "0", confine.to = "NULL", cursor = "NULL", time = "GDK_CURRENT_TIME", .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(window, "GdkWindow")
	owner.events <- as.logical(owner.events)
	
	if (!is.null( confine.to )) checkPtrType(confine.to, "GdkWindow")
	if (!is.null( cursor )) checkPtrType(cursor, "GdkCursor")
	time <- as.numeric(time)

	w <- .RGtkCall("S_gdk_pointer_grab", window, owner.events, event.mask, confine.to, cursor, time, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkPointerUngrab <-
function(time = "GDK_CURRENT_TIME", .flush = TRUE, .depwarn = TRUE)
{
	time <- as.numeric(time)

	w <- .RGtkCall("S_gdk_pointer_ungrab", time, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkKeyboardGrab <-
function(window, owner.events = "FALSE", time = "GDK_CURRENT_TIME", .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(window, "GdkWindow")
	owner.events <- as.logical(owner.events)
	time <- as.numeric(time)

	w <- .RGtkCall("S_gdk_keyboard_grab", window, owner.events, time, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkKeyboardUngrab <-
function(time = "GDK_CURRENT_TIME", .flush = TRUE, .depwarn = TRUE)
{
	time <- as.numeric(time)

	w <- .RGtkCall("S_gdk_keyboard_ungrab", time, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkPointerIsGrabbed <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gdk_pointer_is_grabbed", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkScreenWidth <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gdk_screen_width", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkScreenHeight <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gdk_screen_height", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkScreenWidthMm <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gdk_screen_width_mm", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkScreenHeightMm <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gdk_screen_height_mm", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkFlush <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gdk_flush", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkBeep <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gdk_beep", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkSetDoubleClickTime <-
function(msec, .flush = TRUE, .depwarn = TRUE)
{
	msec <- as.numeric(msec)

	w <- .RGtkCall("S_gdk_set_double_click_time", msec, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkThreadsEnter <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gdk_threads_enter", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkThreadsLeave <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gdk_threads_leave", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkThreadsInit <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gdk_threads_init", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkCairoCreate <-
function(drawable, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(drawable, "GdkDrawable")

	w <- .RGtkCall("S_gdk_cairo_create", drawable, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkCairoSetSourceColor <-
function(cr, color, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(cr, "Cairo")
	color <- as.GdkColor(color)

	w <- .RGtkCall("S_gdk_cairo_set_source_color", cr, color, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkCairoSetSourcePixbuf <-
function(cr, pixbuf, pixbuf.x, pixbuf.y, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(cr, "Cairo")
	checkPtrType(pixbuf, "GdkPixbuf")
	pixbuf.x <- as.numeric(pixbuf.x)
	pixbuf.y <- as.numeric(pixbuf.y)

	w <- .RGtkCall("S_gdk_cairo_set_source_pixbuf", cr, pixbuf, pixbuf.x, pixbuf.y, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkCairoRectangle <-
function(cr, rectangle, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(cr, "Cairo")
	rectangle <- as.GdkRectangle(rectangle)

	w <- .RGtkCall("S_gdk_cairo_rectangle", cr, rectangle, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkCairoRegion <-
function(cr, region, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(cr, "Cairo")
	checkPtrType(region, "GdkRegion")

	w <- .RGtkCall("S_gdk_cairo_region", cr, region, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkColormapGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gdk_colormap_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkColormapNew <-
function(visual, allocate, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(visual, "GdkVisual")
	allocate <- as.logical(allocate)

	w <- .RGtkCall("S_gdk_colormap_new", visual, allocate, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkColormapGetSystem <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gdk_colormap_get_system", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkColormapGetSystemSize <-
function(.flush = TRUE, .depwarn = TRUE)
{
	if (.depwarn)
		warning("This function is deprecated: deprecated")

	

	w <- .RGtkCall("S_gdk_colormap_get_system_size", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkColormapAllocColor <-
function(object, color, writeable, best.match, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkColormap")
	color <- as.GdkColor(color)
	writeable <- as.logical(writeable)
	best.match <- as.logical(best.match)

	w <- .RGtkCall("S_gdk_colormap_alloc_color", object, color, writeable, best.match, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkColormapFreeColors <-
function(object, colors, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkColormap")
	colors <- lapply(colors, function(x) { x <- as.GdkColor(x); x })

	w <- .RGtkCall("S_gdk_colormap_free_colors", object, colors, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkColormapQueryColor <-
function(object, pixel, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkColormap")
	pixel <- as.numeric(pixel)

	w <- .RGtkCall("S_gdk_colormap_query_color", object, pixel, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkColormapGetVisual <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkColormap")

	w <- .RGtkCall("S_gdk_colormap_get_visual", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkColormapGetScreen <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkColormap")

	w <- .RGtkCall("S_gdk_colormap_get_screen", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkColorParse <-
function(spec, .flush = TRUE, .depwarn = TRUE)
{
	spec <- as.character(spec)

	w <- .RGtkCall("S_gdk_color_parse", spec, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkColorWhite <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	if (.depwarn)
		warning("This function is deprecated: deprecated")

	checkPtrType(object, "GdkColormap")

	w <- .RGtkCall("S_gdk_color_white", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkColorBlack <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	if (.depwarn)
		warning("This function is deprecated: deprecated")

	checkPtrType(object, "GdkColormap")

	w <- .RGtkCall("S_gdk_color_black", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkColorAlloc <-
function(object, color, .flush = TRUE, .depwarn = TRUE)
{
	if (.depwarn)
		warning("This function is deprecated: deprecated")

	checkPtrType(object, "GdkColormap")
	color <- as.GdkColor(color)

	w <- .RGtkCall("S_gdk_color_alloc", object, color, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkColorChange <-
function(object, color, .flush = TRUE, .depwarn = TRUE)
{
	if (.depwarn)
		warning("This function is deprecated: deprecated")

	checkPtrType(object, "GdkColormap")
	color <- as.GdkColor(color)

	w <- .RGtkCall("S_gdk_color_change", object, color, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkCursorNew <-
function(cursor.type, .flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gdk_cursor_new", cursor.type, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkCursorNewFromName <-
function(display, name, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(display, "GdkDisplay")
	name <- as.character(name)

	w <- .RGtkCall("S_gdk_cursor_new_from_name", display, name, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkCursorNewForDisplay <-
function(display, cursor.type, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(display, "GdkDisplay")
	

	w <- .RGtkCall("S_gdk_cursor_new_for_display", display, cursor.type, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkCursorNewFromPixmap <-
function(source, mask, fg, bg, x, y, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(source, "GdkPixmap")
	checkPtrType(mask, "GdkPixmap")
	fg <- as.GdkColor(fg)
	bg <- as.GdkColor(bg)
	x <- as.integer(x)
	y <- as.integer(y)

	w <- .RGtkCall("S_gdk_cursor_new_from_pixmap", source, mask, fg, bg, x, y, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkCursorNewFromPixbuf <-
function(display, source, x, y, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(display, "GdkDisplay")
	checkPtrType(source, "GdkPixbuf")
	x <- as.integer(x)
	y <- as.integer(y)

	w <- .RGtkCall("S_gdk_cursor_new_from_pixbuf", display, source, x, y, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkCursorGetDisplay <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkCursor")

	w <- .RGtkCall("S_gdk_cursor_get_display", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkCursorGetImage <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkCursor")

	w <- .RGtkCall("S_gdk_cursor_get_image", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkDisplayGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gdk_display_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkDisplayOpen <-
function(display.name, .flush = TRUE, .depwarn = TRUE)
{
	display.name <- as.character(display.name)

	w <- .RGtkCall("S_gdk_display_open", display.name, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkDisplayGetName <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkDisplay")

	w <- .RGtkCall("S_gdk_display_get_name", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkDisplayGetNScreens <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkDisplay")

	w <- .RGtkCall("S_gdk_display_get_n_screens", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkDisplayGetScreen <-
function(object, screen.num, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkDisplay")
	screen.num <- as.integer(screen.num)

	w <- .RGtkCall("S_gdk_display_get_screen", object, screen.num, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkDisplayGetDefaultScreen <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkDisplay")

	w <- .RGtkCall("S_gdk_display_get_default_screen", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkDisplayPointerUngrab <-
function(object, time. = "GDK_CURRENT_TIME", .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkDisplay")
	time. <- as.numeric(time.)

	w <- .RGtkCall("S_gdk_display_pointer_ungrab", object, time., PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkDisplayKeyboardUngrab <-
function(object, time. = "GDK_CURRENT_TIME", .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkDisplay")
	time. <- as.numeric(time.)

	w <- .RGtkCall("S_gdk_display_keyboard_ungrab", object, time., PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkDisplayPointerIsGrabbed <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkDisplay")

	w <- .RGtkCall("S_gdk_display_pointer_is_grabbed", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkDisplayBeep <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkDisplay")

	w <- .RGtkCall("S_gdk_display_beep", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkDisplaySync <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkDisplay")

	w <- .RGtkCall("S_gdk_display_sync", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkDisplayClose <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkDisplay")

	w <- .RGtkCall("S_gdk_display_close", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkDisplayListDevices <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkDisplay")

	w <- .RGtkCall("S_gdk_display_list_devices", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkDisplayGetEvent <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkDisplay")

	w <- .RGtkCall("S_gdk_display_get_event", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkDisplayPeekEvent <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkDisplay")

	w <- .RGtkCall("S_gdk_display_peek_event", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkDisplayPutEvent <-
function(object, event, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkDisplay")
	checkPtrType(event, "GdkEvent")

	w <- .RGtkCall("S_gdk_display_put_event", object, event, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkDisplayAddClientMessageFilter <-
function(object, message.type, func, data, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkDisplay")
	message.type <- as.GdkAtom(message.type)
	func <- as.function(func)
	

	w <- .RGtkCall("S_gdk_display_add_client_message_filter", object, message.type, func, data, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkDisplaySetDoubleClickTime <-
function(object, msec, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkDisplay")
	msec <- as.numeric(msec)

	w <- .RGtkCall("S_gdk_display_set_double_click_time", object, msec, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkDisplayGetDefault <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gdk_display_get_default", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkDisplayGetCorePointer <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkDisplay")

	w <- .RGtkCall("S_gdk_display_get_core_pointer", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkDisplayGetPointer <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkDisplay")

	w <- .RGtkCall("S_gdk_display_get_pointer", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkDisplayGetWindowAtPointer <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkDisplay")

	w <- .RGtkCall("S_gdk_display_get_window_at_pointer", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkDisplayWarpPointer <-
function(object, screen, x, y, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkDisplay")
	checkPtrType(screen, "GdkScreen")
	x <- as.integer(x)
	y <- as.integer(y)

	w <- .RGtkCall("S_gdk_display_warp_pointer", object, screen, x, y, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkDisplayOpenDefaultLibgtkOnly <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gdk_display_open_default_libgtk_only", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkDisplayStoreClipboard <-
function(object, clipboard.window, targets, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkDisplay")
	checkPtrType(clipboard.window, "GdkWindow")
	targets <- lapply(targets, function(x) { x <- as.GdkAtom(x); x })

	w <- .RGtkCall("S_gdk_display_store_clipboard", object, clipboard.window, targets, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkDisplaySupportsSelectionNotification <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkDisplay")

	w <- .RGtkCall("S_gdk_display_supports_selection_notification", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkDisplayRequestSelectionNotification <-
function(object, selection, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkDisplay")
	selection <- as.GdkAtom(selection)

	w <- .RGtkCall("S_gdk_display_request_selection_notification", object, selection, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkDisplaySupportsClipboardPersistence <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkDisplay")

	w <- .RGtkCall("S_gdk_display_supports_clipboard_persistence", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkDisplayManagerGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gdk_display_manager_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkDisplayManagerGet <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gdk_display_manager_get", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkDisplayManagerGetDefaultDisplay <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkDisplayManager")

	w <- .RGtkCall("S_gdk_display_manager_get_default_display", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkDisplayManagerSetDefaultDisplay <-
function(object, display, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkDisplayManager")
	checkPtrType(display, "GdkDisplay")

	w <- .RGtkCall("S_gdk_display_manager_set_default_display", object, display, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkDisplayManagerListDisplays <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkDisplayManager")

	w <- .RGtkCall("S_gdk_display_manager_list_displays", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkDisplayFlush <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkDisplay")

	w <- .RGtkCall("S_gdk_display_flush", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkDisplaySetDoubleClickDistance <-
function(object, distance, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkDisplay")
	distance <- as.numeric(distance)

	w <- .RGtkCall("S_gdk_display_set_double_click_distance", object, distance, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkDisplaySupportsCursorAlpha <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkDisplay")

	w <- .RGtkCall("S_gdk_display_supports_cursor_alpha", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkDisplaySupportsCursorColor <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkDisplay")

	w <- .RGtkCall("S_gdk_display_supports_cursor_color", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkDisplayGetDefaultCursorSize <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkDisplay")

	w <- .RGtkCall("S_gdk_display_get_default_cursor_size", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkDisplayGetMaximalCursorSize <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkDisplay")

	w <- .RGtkCall("S_gdk_display_get_maximal_cursor_size", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkDisplayGetDefaultGroup <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkDisplay")

	w <- .RGtkCall("S_gdk_display_get_default_group", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkDragContextGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gdk_drag_context_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkDragContextNew <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gdk_drag_context_new", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkDragStatus <-
function(object, action, time = "GDK_CURRENT_TIME", .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkDragContext")
	
	time <- as.numeric(time)

	w <- .RGtkCall("S_gdk_drag_status", object, action, time, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkDropReply <-
function(object, ok, time = "GDK_CURRENT_TIME", .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkDragContext")
	ok <- as.logical(ok)
	time <- as.numeric(time)

	w <- .RGtkCall("S_gdk_drop_reply", object, ok, time, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkDropFinish <-
function(object, success, time = "GDK_CURRENT_TIME", .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkDragContext")
	success <- as.logical(success)
	time <- as.numeric(time)

	w <- .RGtkCall("S_gdk_drop_finish", object, success, time, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkDragGetSelection <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkDragContext")

	w <- .RGtkCall("S_gdk_drag_get_selection", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkDragBegin <-
function(object, targets, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkWindow")
	targets <- as.GList(targets)

	w <- .RGtkCall("S_gdk_drag_begin", object, targets, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkDragGetProtocol <-
function(xid, .flush = TRUE, .depwarn = TRUE)
{
	xid <- as.numeric(xid)

	w <- .RGtkCall("S_gdk_drag_get_protocol", xid, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkDragFindWindow <-
function(object, drag.window, x.root, y.root, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkDragContext")
	checkPtrType(drag.window, "GdkWindow")
	x.root <- as.integer(x.root)
	y.root <- as.integer(y.root)

	w <- .RGtkCall("S_gdk_drag_find_window", object, drag.window, x.root, y.root, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkDragGetProtocolForDisplay <-
function(display, xid, protocol, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(display, "GdkDisplay")
	xid <- as.numeric(xid)
	

	w <- .RGtkCall("S_gdk_drag_get_protocol_for_display", display, xid, protocol, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkDragFindWindowForScreen <-
function(object, drag.window, screen, x.root, y.root, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkDragContext")
	checkPtrType(drag.window, "GdkWindow")
	checkPtrType(screen, "GdkScreen")
	x.root <- as.integer(x.root)
	y.root <- as.integer(y.root)

	w <- .RGtkCall("S_gdk_drag_find_window_for_screen", object, drag.window, screen, x.root, y.root, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkDragMotion <-
function(object, dest.window, protocol, x.root, y.root, suggested.action, possible.actions, time, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkDragContext")
	checkPtrType(dest.window, "GdkWindow")
	
	x.root <- as.integer(x.root)
	y.root <- as.integer(y.root)
	
	
	time <- as.numeric(time)

	w <- .RGtkCall("S_gdk_drag_motion", object, dest.window, protocol, x.root, y.root, suggested.action, possible.actions, time, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkDragDrop <-
function(object, time, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkDragContext")
	time <- as.numeric(time)

	w <- .RGtkCall("S_gdk_drag_drop", object, time, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkDragAbort <-
function(object, time, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkDragContext")
	time <- as.numeric(time)

	w <- .RGtkCall("S_gdk_drag_abort", object, time, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkDragDropSucceeded <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkDragContext")

	w <- .RGtkCall("S_gdk_drag_drop_succeeded", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkDrawableGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gdk_drawable_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkDrawableSetData <-
function(object, key, data, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkDrawable")
	key <- as.character(key)
	

	w <- .RGtkCall("S_gdk_drawable_set_data", object, key, data, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkDrawableGetData <-
function(object, key, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkDrawable")
	key <- as.character(key)

	w <- .RGtkCall("S_gdk_drawable_get_data", object, key, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkDrawableGetSize <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkDrawable")

	w <- .RGtkCall("S_gdk_drawable_get_size", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkDrawableSetColormap <-
function(object, colormap, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkDrawable")
	checkPtrType(colormap, "GdkColormap")

	w <- .RGtkCall("S_gdk_drawable_set_colormap", object, colormap, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkDrawableGetColormap <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkDrawable")

	w <- .RGtkCall("S_gdk_drawable_get_colormap", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkDrawableGetVisual <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkDrawable")

	w <- .RGtkCall("S_gdk_drawable_get_visual", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkDrawableGetDepth <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkDrawable")

	w <- .RGtkCall("S_gdk_drawable_get_depth", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkDrawableGetScreen <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkDrawable")

	w <- .RGtkCall("S_gdk_drawable_get_screen", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkDrawableGetDisplay <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkDrawable")

	w <- .RGtkCall("S_gdk_drawable_get_display", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkDrawPoint <-
function(object, gc, x, y, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkDrawable")
	checkPtrType(gc, "GdkGC")
	x <- as.integer(x)
	y <- as.integer(y)

	w <- .RGtkCall("S_gdk_draw_point", object, gc, x, y, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkDrawLine <-
function(object, gc, x1, y1, x2, y2, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkDrawable")
	checkPtrType(gc, "GdkGC")
	x1 <- as.integer(x1)
	y1 <- as.integer(y1)
	x2 <- as.integer(x2)
	y2 <- as.integer(y2)

	w <- .RGtkCall("S_gdk_draw_line", object, gc, x1, y1, x2, y2, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkDrawRectangle <-
function(object, gc, filled, x, y, width, height, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkDrawable")
	checkPtrType(gc, "GdkGC")
	filled <- as.logical(filled)
	x <- as.integer(x)
	y <- as.integer(y)
	width <- as.integer(width)
	height <- as.integer(height)

	w <- .RGtkCall("S_gdk_draw_rectangle", object, gc, filled, x, y, width, height, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkDrawArc <-
function(object, gc, filled, x, y, width, height, angle1, angle2, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkDrawable")
	checkPtrType(gc, "GdkGC")
	filled <- as.logical(filled)
	x <- as.integer(x)
	y <- as.integer(y)
	width <- as.integer(width)
	height <- as.integer(height)
	angle1 <- as.integer(angle1)
	angle2 <- as.integer(angle2)

	w <- .RGtkCall("S_gdk_draw_arc", object, gc, filled, x, y, width, height, angle1, angle2, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkDrawPolygon <-
function(object, gc, filled, points, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkDrawable")
	checkPtrType(gc, "GdkGC")
	filled <- as.logical(filled)
	points <- lapply(points, function(x) { x <- as.GdkPoint(x); x })

	w <- .RGtkCall("S_gdk_draw_polygon", object, gc, filled, points, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkDrawString <-
function(object, font, gc, x, y, string, .flush = TRUE, .depwarn = TRUE)
{
	if (.depwarn)
		warning("This function is deprecated: use GdkDrawable.draw_layout")

	checkPtrType(object, "GdkDrawable")
	checkPtrType(font, "GdkFont")
	checkPtrType(gc, "GdkGC")
	x <- as.integer(x)
	y <- as.integer(y)
	string <- as.character(string)

	w <- .RGtkCall("S_gdk_draw_string", object, font, gc, x, y, string, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkDrawText <-
function(object, font, gc, x, y, text, text.length, .flush = TRUE, .depwarn = TRUE)
{
	if (.depwarn)
		warning("This function is deprecated: use GdkDrawable.draw_layout")

	checkPtrType(object, "GdkDrawable")
	checkPtrType(font, "GdkFont")
	checkPtrType(gc, "GdkGC")
	x <- as.integer(x)
	y <- as.integer(y)
	text <- as.character(text)
	text.length <- as.integer(text.length)

	w <- .RGtkCall("S_gdk_draw_text", object, font, gc, x, y, text, text.length, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkDrawTextWc <-
function(object, font, gc, x, text, .flush = TRUE, .depwarn = TRUE)
{
	if (.depwarn)
		warning("This function is deprecated: use GdkDrawable.draw_layout")

	checkPtrType(object, "GdkDrawable")
	checkPtrType(font, "GdkFont")
	checkPtrType(gc, "GdkGC")
	x <- as.integer(x)
	text <- as.list(as.numeric(text))

	w <- .RGtkCall("S_gdk_draw_text_wc", object, font, gc, x, text, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkDrawDrawable <-
function(object, gc, src, xsrc, ysrc, xdest, ydest, width, height, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkDrawable")
	checkPtrType(gc, "GdkGC")
	checkPtrType(src, "GdkDrawable")
	xsrc <- as.integer(xsrc)
	ysrc <- as.integer(ysrc)
	xdest <- as.integer(xdest)
	ydest <- as.integer(ydest)
	width <- as.integer(width)
	height <- as.integer(height)

	w <- .RGtkCall("S_gdk_draw_drawable", object, gc, src, xsrc, ysrc, xdest, ydest, width, height, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkDrawImage <-
function(object, gc, image, xsrc, ysrc, xdest, ydest, width, height, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkDrawable")
	checkPtrType(gc, "GdkGC")
	checkPtrType(image, "GdkImage")
	xsrc <- as.integer(xsrc)
	ysrc <- as.integer(ysrc)
	xdest <- as.integer(xdest)
	ydest <- as.integer(ydest)
	width <- as.integer(width)
	height <- as.integer(height)

	w <- .RGtkCall("S_gdk_draw_image", object, gc, image, xsrc, ysrc, xdest, ydest, width, height, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkDrawPoints <-
function(object, gc, points, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkDrawable")
	checkPtrType(gc, "GdkGC")
	points <- lapply(points, function(x) { x <- as.GdkPoint(x); x })

	w <- .RGtkCall("S_gdk_draw_points", object, gc, points, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkDrawSegments <-
function(object, gc, segs, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkDrawable")
	checkPtrType(gc, "GdkGC")
	segs <- lapply(segs, function(x) { x <- as.GdkSegment(x); x })

	w <- .RGtkCall("S_gdk_draw_segments", object, gc, segs, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkDrawLines <-
function(object, gc, points, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkDrawable")
	checkPtrType(gc, "GdkGC")
	points <- lapply(points, function(x) { x <- as.GdkPoint(x); x })

	w <- .RGtkCall("S_gdk_draw_lines", object, gc, points, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkDrawPixbuf <-
function(object, gc = NULL, pixbuf, src.x, src.y, dest.x, dest.y, width = "-1", height = "-1", dither = "GDK_RGB_DITHER_NORMAL", x.dither = "0", y.dither = "0", .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkDrawable")
	if (!is.null( gc )) checkPtrType(gc, "GdkGC")
	checkPtrType(pixbuf, "GdkPixbuf")
	src.x <- as.integer(src.x)
	src.y <- as.integer(src.y)
	dest.x <- as.integer(dest.x)
	dest.y <- as.integer(dest.y)
	width <- as.integer(width)
	height <- as.integer(height)
	
	x.dither <- as.integer(x.dither)
	y.dither <- as.integer(y.dither)

	w <- .RGtkCall("S_gdk_draw_pixbuf", object, gc, pixbuf, src.x, src.y, dest.x, dest.y, width, height, dither, x.dither, y.dither, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkDrawGlyphs <-
function(object, gc, font, x, y, glyphs, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkDrawable")
	checkPtrType(gc, "GdkGC")
	checkPtrType(font, "PangoFont")
	x <- as.integer(x)
	y <- as.integer(y)
	checkPtrType(glyphs, "PangoGlyphString")

	w <- .RGtkCall("S_gdk_draw_glyphs", object, gc, font, x, y, glyphs, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkDrawLayoutLine <-
function(object, gc, x, y, line, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkDrawable")
	checkPtrType(gc, "GdkGC")
	x <- as.integer(x)
	y <- as.integer(y)
	checkPtrType(line, "PangoLayoutLine")

	w <- .RGtkCall("S_gdk_draw_layout_line", object, gc, x, y, line, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkDrawLayout <-
function(object, gc, x, y, layout, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkDrawable")
	checkPtrType(gc, "GdkGC")
	x <- as.integer(x)
	y <- as.integer(y)
	checkPtrType(layout, "PangoLayout")

	w <- .RGtkCall("S_gdk_draw_layout", object, gc, x, y, layout, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkDrawLayoutLineWithColors <-
function(drawable, gc, x, y, line, foreground, background, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(drawable, "GdkDrawable")
	checkPtrType(gc, "GdkGC")
	x <- as.integer(x)
	y <- as.integer(y)
	checkPtrType(line, "PangoLayoutLine")
	foreground <- as.GdkColor(foreground)
	background <- as.GdkColor(background)

	w <- .RGtkCall("S_gdk_draw_layout_line_with_colors", drawable, gc, x, y, line, foreground, background, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkDrawLayoutWithColors <-
function(drawable, gc, x, y, layout, foreground, background, .flush = TRUE, .depwarn = TRUE)
{
	if (.depwarn)
		warning("This function is deprecated: use gtk.gdk.Drawable.draw_layout instead")

	checkPtrType(drawable, "GdkDrawable")
	checkPtrType(gc, "GdkGC")
	x <- as.integer(x)
	y <- as.integer(y)
	checkPtrType(layout, "PangoLayout")
	foreground <- as.GdkColor(foreground)
	background <- as.GdkColor(background)

	w <- .RGtkCall("S_gdk_draw_layout_with_colors", drawable, gc, x, y, layout, foreground, background, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkDrawGlyphsTransformed <-
function(drawable, gc, matrix, font, x, y, glyphs, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(drawable, "GdkDrawable")
	checkPtrType(gc, "GdkGC")
	checkPtrType(matrix, "PangoMatrix")
	checkPtrType(font, "PangoFont")
	x <- as.integer(x)
	y <- as.integer(y)
	checkPtrType(glyphs, "PangoGlyphString")

	w <- .RGtkCall("S_gdk_draw_glyphs_transformed", drawable, gc, matrix, font, x, y, glyphs, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkDrawTrapezoids <-
function(drawable, gc, trapezoids, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(drawable, "GdkDrawable")
	checkPtrType(gc, "GdkGC")
	trapezoids <- lapply(trapezoids, function(x) { x <- as.GdkTrapezoid(x); x })

	w <- .RGtkCall("S_gdk_draw_trapezoids", drawable, gc, trapezoids, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkDrawableGetImage <-
function(object, x, y, width, height, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkDrawable")
	x <- as.integer(x)
	y <- as.integer(y)
	width <- as.integer(width)
	height <- as.integer(height)

	w <- .RGtkCall("S_gdk_drawable_get_image", object, x, y, width, height, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkDrawableCopyToImage <-
function(object, image = NULL, src.x, src.y, dest.x, dest.y, width, height, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkDrawable")
	if (!is.null( image )) checkPtrType(image, "GdkImage")
	src.x <- as.integer(src.x)
	src.y <- as.integer(src.y)
	dest.x <- as.integer(dest.x)
	dest.y <- as.integer(dest.y)
	width <- as.integer(width)
	height <- as.integer(height)

	w <- .RGtkCall("S_gdk_drawable_copy_to_image", object, image, src.x, src.y, dest.x, dest.y, width, height, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkDrawableGetClipRegion <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkDrawable")

	w <- .RGtkCall("S_gdk_drawable_get_clip_region", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkDrawableGetVisibleRegion <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkDrawable")

	w <- .RGtkCall("S_gdk_drawable_get_visible_region", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkEventGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gdk_event_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkEventsPending <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gdk_events_pending", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkEventGet <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gdk_event_get", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkEventPeek <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gdk_event_peek", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkEventGetGraphicsExpose <-
function(window, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(window, "GdkWindow")

	w <- .RGtkCall("S_gdk_event_get_graphics_expose", window, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkEventPut <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkEvent")

	w <- .RGtkCall("S_gdk_event_put", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkEventNew <-
function(type, .flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gdk_event_new", type, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkEventCopy <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkEvent")

	w <- .RGtkCall("S_gdk_event_copy", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkEventGetTime <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkEvent")

	w <- .RGtkCall("S_gdk_event_get_time", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkEventGetState <-
function(object, state, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkEvent")
	

	w <- .RGtkCall("S_gdk_event_get_state", object, state, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkEventGetCoords <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkEvent")

	w <- .RGtkCall("S_gdk_event_get_coords", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkEventGetRootCoords <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkEvent")

	w <- .RGtkCall("S_gdk_event_get_root_coords", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkEventGetAxis <-
function(object, axis.use, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkEvent")
	

	w <- .RGtkCall("S_gdk_event_get_axis", object, axis.use, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkEventHandlerSet <-
function(func, data, .flush = TRUE, .depwarn = TRUE)
{
	func <- as.function(func)
	

	w <- .RGtkCall("S_gdk_event_handler_set", func, data, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkEventSetScreen <-
function(object, screen, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkEvent")
	checkPtrType(screen, "GdkScreen")

	w <- .RGtkCall("S_gdk_event_set_screen", object, screen, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkEventGetScreen <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkEvent")

	w <- .RGtkCall("S_gdk_event_get_screen", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkSetShowEvents <-
function(show.events, .flush = TRUE, .depwarn = TRUE)
{
	show.events <- as.logical(show.events)

	w <- .RGtkCall("S_gdk_set_show_events", show.events, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkGetShowEvents <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gdk_get_show_events", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkAddClientMessageFilter <-
function(message.type, func, data, .flush = TRUE, .depwarn = TRUE)
{
	message.type <- as.GdkAtom(message.type)
	func <- as.function(func)
	

	w <- .RGtkCall("S_gdk_add_client_message_filter", message.type, func, data, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkSettingGet <-
function(name, .flush = TRUE, .depwarn = TRUE)
{
	name <- as.character(name)

	w <- .RGtkCall("S_gdk_setting_get", name, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkFontId <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkFont")

	w <- .RGtkCall("S_gdk_font_id", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkFontLoadForDisplay <-
function(display, font.name, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(display, "GdkDisplay")
	font.name <- as.character(font.name)

	w <- .RGtkCall("S_gdk_font_load_for_display", display, font.name, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkFontsetLoadForDisplay <-
function(display, fontset.name, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(display, "GdkDisplay")
	fontset.name <- as.character(fontset.name)

	w <- .RGtkCall("S_gdk_fontset_load_for_display", display, fontset.name, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkFontFromDescriptionForDisplay <-
function(display, font.desc, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(display, "GdkDisplay")
	checkPtrType(font.desc, "PangoFontDescription")

	w <- .RGtkCall("S_gdk_font_from_description_for_display", display, font.desc, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkFontLoad <-
function(font.name, .flush = TRUE, .depwarn = TRUE)
{
	font.name <- as.character(font.name)

	w <- .RGtkCall("S_gdk_font_load", font.name, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkFontsetLoad <-
function(fontset.name, .flush = TRUE, .depwarn = TRUE)
{
	fontset.name <- as.character(fontset.name)

	w <- .RGtkCall("S_gdk_fontset_load", fontset.name, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkFontFromDescription <-
function(font.desc, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(font.desc, "PangoFontDescription")

	w <- .RGtkCall("S_gdk_font_from_description", font.desc, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkStringWidth <-
function(object, string, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkFont")
	string <- as.character(string)

	w <- .RGtkCall("S_gdk_string_width", object, string, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkTextWidth <-
function(object, text, text.length = "-1", .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkFont")
	text <- as.character(text)
	text.length <- as.integer(text.length)

	w <- .RGtkCall("S_gdk_text_width", object, text, text.length, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkTextWidthWc <-
function(object, text, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkFont")
	text <- as.list(as.numeric(text))

	w <- .RGtkCall("S_gdk_text_width_wc", object, text, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkCharWidth <-
function(object, character, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkFont")
	character <- as.character(character)

	w <- .RGtkCall("S_gdk_char_width", object, character, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkCharWidthWc <-
function(object, character, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkFont")
	character <- as.numeric(character)

	w <- .RGtkCall("S_gdk_char_width_wc", object, character, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkStringMeasure <-
function(object, string, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkFont")
	string <- as.character(string)

	w <- .RGtkCall("S_gdk_string_measure", object, string, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkTextMeasure <-
function(object, text, text.length = "-1", .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkFont")
	text <- as.character(text)
	text.length <- as.integer(text.length)

	w <- .RGtkCall("S_gdk_text_measure", object, text, text.length, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkCharMeasure <-
function(object, character, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkFont")
	character <- as.character(character)

	w <- .RGtkCall("S_gdk_char_measure", object, character, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkStringHeight <-
function(object, string, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkFont")
	string <- as.character(string)

	w <- .RGtkCall("S_gdk_string_height", object, string, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkTextHeight <-
function(object, text, text.length = "-1", .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkFont")
	text <- as.character(text)
	text.length <- as.integer(text.length)

	w <- .RGtkCall("S_gdk_text_height", object, text, text.length, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkCharHeight <-
function(object, character, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkFont")
	character <- as.character(character)

	w <- .RGtkCall("S_gdk_char_height", object, character, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkTextExtentsWc <-
function(object, text, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkFont")
	text <- as.list(as.numeric(text))

	w <- .RGtkCall("S_gdk_text_extents_wc", object, text, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkStringExtents <-
function(object, string, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkFont")
	string <- as.character(string)

	w <- .RGtkCall("S_gdk_string_extents", object, string, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkFontGetDisplay <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkFont")

	w <- .RGtkCall("S_gdk_font_get_display", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkGCGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gdk_gc_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkGCNew <-
function(drawable, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(drawable, "GdkDrawable")

	w <- .RGtkCall("S_gdk_gc_new", drawable, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkGCNewWithValues <-
function(object, values, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkDrawable")
	values <- as.GdkGCValues(values)

	w <- .RGtkCall("S_gdk_gc_new_with_values", object, values, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkGCGetValues <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkGC")

	w <- .RGtkCall("S_gdk_gc_get_values", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkGCSetValues <-
function(object, values, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkGC")
	values <- as.GdkGCValues(values)

	w <- .RGtkCall("S_gdk_gc_set_values", object, values, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkGCSetForeground <-
function(object, color, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkGC")
	color <- as.GdkColor(color)

	w <- .RGtkCall("S_gdk_gc_set_foreground", object, color, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkGCSetBackground <-
function(object, color, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkGC")
	color <- as.GdkColor(color)

	w <- .RGtkCall("S_gdk_gc_set_background", object, color, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkGCSetFont <-
function(object, font, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkGC")
	checkPtrType(font, "GdkFont")

	w <- .RGtkCall("S_gdk_gc_set_font", object, font, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkGCSetFunction <-
function(object, fun, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkGC")
	

	w <- .RGtkCall("S_gdk_gc_set_function", object, fun, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkGCSetFill <-
function(object, fill, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkGC")
	

	w <- .RGtkCall("S_gdk_gc_set_fill", object, fill, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkGCSetTile <-
function(object, tile, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkGC")
	checkPtrType(tile, "GdkPixmap")

	w <- .RGtkCall("S_gdk_gc_set_tile", object, tile, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkGCSetStipple <-
function(object, stipple, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkGC")
	checkPtrType(stipple, "GdkPixmap")

	w <- .RGtkCall("S_gdk_gc_set_stipple", object, stipple, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkGCSetTsOrigin <-
function(object, x, y, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkGC")
	x <- as.integer(x)
	y <- as.integer(y)

	w <- .RGtkCall("S_gdk_gc_set_ts_origin", object, x, y, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkGCSetClipOrigin <-
function(object, x, y, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkGC")
	x <- as.integer(x)
	y <- as.integer(y)

	w <- .RGtkCall("S_gdk_gc_set_clip_origin", object, x, y, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkGCSetClipMask <-
function(object, mask, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkGC")
	checkPtrType(mask, "GdkBitmap")

	w <- .RGtkCall("S_gdk_gc_set_clip_mask", object, mask, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkGCSetClipRectangle <-
function(object, rectangle, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkGC")
	rectangle <- as.GdkRectangle(rectangle)

	w <- .RGtkCall("S_gdk_gc_set_clip_rectangle", object, rectangle, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkGCSetClipRegion <-
function(object, region, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkGC")
	checkPtrType(region, "GdkRegion")

	w <- .RGtkCall("S_gdk_gc_set_clip_region", object, region, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkGCSetSubwindow <-
function(object, mode, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkGC")
	

	w <- .RGtkCall("S_gdk_gc_set_subwindow", object, mode, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkGCSetExposures <-
function(object, exposures, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkGC")
	exposures <- as.logical(exposures)

	w <- .RGtkCall("S_gdk_gc_set_exposures", object, exposures, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkGCSetLineAttributes <-
function(object, line.width, line.style, cap.style, join.style, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkGC")
	line.width <- as.integer(line.width)
	
	
	

	w <- .RGtkCall("S_gdk_gc_set_line_attributes", object, line.width, line.style, cap.style, join.style, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkGCSetDashes <-
function(object, dash.list, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkGC")
	dash.list <- as.list(as.integer(dash.list))

	w <- .RGtkCall("S_gdk_gc_set_dashes", object, dash.list, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkGCOffset <-
function(object, x.offset, y.offset, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkGC")
	x.offset <- as.integer(x.offset)
	y.offset <- as.integer(y.offset)

	w <- .RGtkCall("S_gdk_gc_offset", object, x.offset, y.offset, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkGCCopy <-
function(object, src.gc, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkGC")
	checkPtrType(src.gc, "GdkGC")

	w <- .RGtkCall("S_gdk_gc_copy", object, src.gc, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkGCSetColormap <-
function(object, colormap, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkGC")
	checkPtrType(colormap, "GdkColormap")

	w <- .RGtkCall("S_gdk_gc_set_colormap", object, colormap, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkGCGetColormap <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkGC")

	w <- .RGtkCall("S_gdk_gc_get_colormap", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkGCSetRgbFgColor <-
function(object, color, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkGC")
	color <- as.GdkColor(color)

	w <- .RGtkCall("S_gdk_gc_set_rgb_fg_color", object, color, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkGCSetRgbBgColor <-
function(object, color, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkGC")
	color <- as.GdkColor(color)

	w <- .RGtkCall("S_gdk_gc_set_rgb_bg_color", object, color, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkGCGetScreen <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkGC")

	w <- .RGtkCall("S_gdk_gc_get_screen", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkImageGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gdk_image_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkImageNew <-
function(type, visual, width, height, .flush = TRUE, .depwarn = TRUE)
{
	
	checkPtrType(visual, "GdkVisual")
	width <- as.integer(width)
	height <- as.integer(height)

	w <- .RGtkCall("S_gdk_image_new", type, visual, width, height, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkImageGet <-
function(object, x, y, width, height, .flush = TRUE, .depwarn = TRUE)
{
	if (.depwarn)
		warning("This function is deprecated: use GdkDrawable.get_image")

	checkPtrType(object, "GdkDrawable")
	x <- as.integer(x)
	y <- as.integer(y)
	width <- as.integer(width)
	height <- as.integer(height)

	w <- .RGtkCall("S_gdk_image_get", object, x, y, width, height, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkImagePutPixel <-
function(object, x, y, pixel, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkImage")
	x <- as.integer(x)
	y <- as.integer(y)
	pixel <- as.numeric(pixel)

	w <- .RGtkCall("S_gdk_image_put_pixel", object, x, y, pixel, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkImageGetPixel <-
function(object, x, y, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkImage")
	x <- as.integer(x)
	y <- as.integer(y)

	w <- .RGtkCall("S_gdk_image_get_pixel", object, x, y, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkImageSetColormap <-
function(object, colormap, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkImage")
	checkPtrType(colormap, "GdkColormap")

	w <- .RGtkCall("S_gdk_image_set_colormap", object, colormap, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkImageGetColormap <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkImage")

	w <- .RGtkCall("S_gdk_image_get_colormap", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkDeviceGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gdk_device_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkDevicesList <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gdk_devices_list", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkDeviceSetSource <-
function(object, source, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkDevice")
	

	w <- .RGtkCall("S_gdk_device_set_source", object, source, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkDeviceSetMode <-
function(object, mode, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkDevice")
	

	w <- .RGtkCall("S_gdk_device_set_mode", object, mode, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkDeviceSetKey <-
function(object, index, keyval, modifiers, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkDevice")
	index <- as.numeric(index)
	keyval <- as.numeric(keyval)
	

	w <- .RGtkCall("S_gdk_device_set_key", object, index, keyval, modifiers, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkDeviceSetAxisUse <-
function(object, index, use, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkDevice")
	index <- as.numeric(index)
	

	w <- .RGtkCall("S_gdk_device_set_axis_use", object, index, use, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkDeviceGetState <-
function(object, window, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkDevice")
	checkPtrType(window, "GdkWindow")

	w <- .RGtkCall("S_gdk_device_get_state", object, window, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkDeviceGetHistory <-
function(object, window, start, stop, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkDevice")
	checkPtrType(window, "GdkWindow")
	start <- as.numeric(start)
	stop <- as.numeric(stop)

	w <- .RGtkCall("S_gdk_device_get_history", object, window, start, stop, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkDeviceGetAxis <-
function(object, axes, use, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkDevice")
	axes <- as.list(as.numeric(axes))
	

	w <- .RGtkCall("S_gdk_device_get_axis", object, axes, use, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkInputSetExtensionEvents <-
function(object, mask, mode, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkWindow")
	mask <- as.integer(mask)
	

	w <- .RGtkCall("S_gdk_input_set_extension_events", object, mask, mode, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkDeviceGetCorePointer <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gdk_device_get_core_pointer", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkKeymapGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gdk_keymap_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkKeymapGetDefault <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gdk_keymap_get_default", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkKeymapGetForDisplay <-
function(display, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(display, "GdkDisplay")

	w <- .RGtkCall("S_gdk_keymap_get_for_display", display, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkKeymapLookupKey <-
function(object, key, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkKeymap")
	key <- as.GdkKeymapKey(key)

	w <- .RGtkCall("S_gdk_keymap_lookup_key", object, key, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkKeymapTranslateKeyboardState <-
function(object, hardware.keycode, state, group, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkKeymap")
	hardware.keycode <- as.numeric(hardware.keycode)
	
	group <- as.integer(group)

	w <- .RGtkCall("S_gdk_keymap_translate_keyboard_state", object, hardware.keycode, state, group, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkKeymapGetEntriesForKeyval <-
function(object, keyval, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkKeymap")
	keyval <- as.numeric(keyval)

	w <- .RGtkCall("S_gdk_keymap_get_entries_for_keyval", object, keyval, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkKeymapGetEntriesForKeycode <-
function(object, hardware.keycode, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkKeymap")
	hardware.keycode <- as.numeric(hardware.keycode)

	w <- .RGtkCall("S_gdk_keymap_get_entries_for_keycode", object, hardware.keycode, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkKeymapGetDirection <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkKeymap")

	w <- .RGtkCall("S_gdk_keymap_get_direction", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkKeyvalName <-
function(keyval, .flush = TRUE, .depwarn = TRUE)
{
	keyval <- as.numeric(keyval)

	w <- .RGtkCall("S_gdk_keyval_name", keyval, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkKeyvalFromName <-
function(keyval.name, .flush = TRUE, .depwarn = TRUE)
{
	keyval.name <- as.character(keyval.name)

	w <- .RGtkCall("S_gdk_keyval_from_name", keyval.name, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkKeyvalConvertCase <-
function(symbol, .flush = TRUE, .depwarn = TRUE)
{
	symbol <- as.numeric(symbol)

	w <- .RGtkCall("S_gdk_keyval_convert_case", symbol, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkKeyvalToUpper <-
function(keyval, .flush = TRUE, .depwarn = TRUE)
{
	keyval <- as.numeric(keyval)

	w <- .RGtkCall("S_gdk_keyval_to_upper", keyval, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkKeyvalToLower <-
function(keyval, .flush = TRUE, .depwarn = TRUE)
{
	keyval <- as.numeric(keyval)

	w <- .RGtkCall("S_gdk_keyval_to_lower", keyval, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkKeyvalIsUpper <-
function(keyval, .flush = TRUE, .depwarn = TRUE)
{
	keyval <- as.numeric(keyval)

	w <- .RGtkCall("S_gdk_keyval_is_upper", keyval, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkKeyvalIsLower <-
function(keyval, .flush = TRUE, .depwarn = TRUE)
{
	keyval <- as.numeric(keyval)

	w <- .RGtkCall("S_gdk_keyval_is_lower", keyval, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkKeyvalToUnicode <-
function(keyval, .flush = TRUE, .depwarn = TRUE)
{
	keyval <- as.numeric(keyval)

	w <- .RGtkCall("S_gdk_keyval_to_unicode", keyval, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkUnicodeToKeyval <-
function(wc, .flush = TRUE, .depwarn = TRUE)
{
	wc <- as.numeric(wc)

	w <- .RGtkCall("S_gdk_unicode_to_keyval", wc, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkPangoRendererGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gdk_pango_renderer_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkPangoRendererNew <-
function(screen, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(screen, "GdkScreen")

	w <- .RGtkCall("S_gdk_pango_renderer_new", screen, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkPangoRendererGetDefault <-
function(screen, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(screen, "GdkScreen")

	w <- .RGtkCall("S_gdk_pango_renderer_get_default", screen, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkPangoRendererSetDrawable <-
function(object, drawable = NULL, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkPangoRenderer")
	if (!is.null( drawable )) checkPtrType(drawable, "GdkDrawable")

	w <- .RGtkCall("S_gdk_pango_renderer_set_drawable", object, drawable, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkPangoRendererSetGc <-
function(object, gc = NULL, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkPangoRenderer")
	if (!is.null( gc )) checkPtrType(gc, "GdkGC")

	w <- .RGtkCall("S_gdk_pango_renderer_set_gc", object, gc, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkPangoRendererSetStipple <-
function(object, part, stipple, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkPangoRenderer")
	
	checkPtrType(stipple, "GdkBitmap")

	w <- .RGtkCall("S_gdk_pango_renderer_set_stipple", object, part, stipple, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkPangoRendererSetOverrideColor <-
function(object, part, color = NULL, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkPangoRenderer")
	
	if (!is.null( color )) color <- as.GdkColor(color)

	w <- .RGtkCall("S_gdk_pango_renderer_set_override_color", object, part, color, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkPangoContextGetForScreen <-
function(screen, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(screen, "GdkScreen")

	w <- .RGtkCall("S_gdk_pango_context_get_for_screen", screen, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkPangoContextGet <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gdk_pango_context_get", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkPangoContextSetColormap <-
function(context, colormap, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(context, "PangoContext")
	checkPtrType(colormap, "GdkColormap")

	w <- .RGtkCall("S_gdk_pango_context_set_colormap", context, colormap, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkPangoLayoutLineGetClipRegion <-
function(line, x.origin, index.ranges, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(line, "PangoLayoutLine")
	x.origin <- as.integer(x.origin)
	index.ranges <- as.list(as.integer(index.ranges))

	w <- .RGtkCall("S_gdk_pango_layout_line_get_clip_region", line, x.origin, index.ranges, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkPangoLayoutGetClipRegion <-
function(layout, x.origin, index.ranges, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(layout, "PangoLayout")
	x.origin <- as.integer(x.origin)
	index.ranges <- as.list(as.integer(index.ranges))

	w <- .RGtkCall("S_gdk_pango_layout_get_clip_region", layout, x.origin, index.ranges, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkPangoAttrStippleNew <-
function(stipple, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(stipple, "GdkBitmap")

	w <- .RGtkCall("S_gdk_pango_attr_stipple_new", stipple, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkPangoAttrEmbossedNew <-
function(embossed, .flush = TRUE, .depwarn = TRUE)
{
	embossed <- as.logical(embossed)

	w <- .RGtkCall("S_gdk_pango_attr_embossed_new", embossed, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkPixbufRenderThresholdAlpha <-
function(object, bitmap, src.x, src.y, dest.x, dest.y, width = "-1", height = "-1", alpha.threshold, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkPixbuf")
	checkPtrType(bitmap, "GdkBitmap")
	src.x <- as.integer(src.x)
	src.y <- as.integer(src.y)
	dest.x <- as.integer(dest.x)
	dest.y <- as.integer(dest.y)
	width <- as.integer(width)
	height <- as.integer(height)
	alpha.threshold <- as.integer(alpha.threshold)

	w <- .RGtkCall("S_gdk_pixbuf_render_threshold_alpha", object, bitmap, src.x, src.y, dest.x, dest.y, width, height, alpha.threshold, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkPixbufRenderToDrawable <-
function(object, drawable, gc, src.x = "0", src.y = "0", dest.x, dest.y, width = "-1", height = "-1", dither = "GDK_RGB_DITHER_NORMAL", x.dither = "0", y.dither = "0", .flush = TRUE, .depwarn = TRUE)
{
	if (.depwarn)
		warning("This function is deprecated: use gtk.gdk.Drawable.draw_pixbuf")

	checkPtrType(object, "GdkPixbuf")
	checkPtrType(drawable, "GdkDrawable")
	checkPtrType(gc, "GdkGC")
	src.x <- as.integer(src.x)
	src.y <- as.integer(src.y)
	dest.x <- as.integer(dest.x)
	dest.y <- as.integer(dest.y)
	width <- as.integer(width)
	height <- as.integer(height)
	
	x.dither <- as.integer(x.dither)
	y.dither <- as.integer(y.dither)

	w <- .RGtkCall("S_gdk_pixbuf_render_to_drawable", object, drawable, gc, src.x, src.y, dest.x, dest.y, width, height, dither, x.dither, y.dither, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkPixbufRenderToDrawableAlpha <-
function(object, drawable, src.x = "0", src.y = "0", dest.x, dest.y, width = "-1", height = "-1", alpha.mode = NULL, alpha.threshold = NULL, dither = "GDK_RGB_DITHER_NORMAL", x.dither = "0", y.dither = "0", .flush = TRUE, .depwarn = TRUE)
{
	if (.depwarn)
		warning("This function is deprecated: use gtk.gdk.Drawable.draw_pixbuf")

	checkPtrType(object, "GdkPixbuf")
	checkPtrType(drawable, "GdkDrawable")
	src.x <- as.integer(src.x)
	src.y <- as.integer(src.y)
	dest.x <- as.integer(dest.x)
	dest.y <- as.integer(dest.y)
	width <- as.integer(width)
	height <- as.integer(height)
	
	alpha.threshold <- as.integer(alpha.threshold)
	
	x.dither <- as.integer(x.dither)
	y.dither <- as.integer(y.dither)

	w <- .RGtkCall("S_gdk_pixbuf_render_to_drawable_alpha", object, drawable, src.x, src.y, dest.x, dest.y, width, height, alpha.mode, alpha.threshold, dither, x.dither, y.dither, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkPixbufRenderPixmapAndMask <-
function(object, alpha.threshold = "127", .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkPixbuf")
	alpha.threshold <- as.integer(alpha.threshold)

	w <- .RGtkCall("S_gdk_pixbuf_render_pixmap_and_mask", object, alpha.threshold, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkPixbufRenderPixmapAndMaskForColormap <-
function(object, colormap, alpha.threshold = "127", .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkPixbuf")
	checkPtrType(colormap, "GdkColormap")
	alpha.threshold <- as.integer(alpha.threshold)

	w <- .RGtkCall("S_gdk_pixbuf_render_pixmap_and_mask_for_colormap", object, colormap, alpha.threshold, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkPixbufGetFromDrawable <-
function(src, cmap, src.x, src.y, dest.x, dest.y, width, height, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(src, "GdkDrawable")
	checkPtrType(cmap, "GdkColormap")
	src.x <- as.integer(src.x)
	src.y <- as.integer(src.y)
	dest.x <- as.integer(dest.x)
	dest.y <- as.integer(dest.y)
	width <- as.integer(width)
	height <- as.integer(height)

	w <- .RGtkCall("S_gdk_pixbuf_get_from_drawable", src, cmap, src.x, src.y, dest.x, dest.y, width, height, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkPixbufGetFromImage <-
function(src, cmap, src.x, src.y, dest.x, dest.y, width, height, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(src, "GdkImage")
	checkPtrType(cmap, "GdkColormap")
	src.x <- as.integer(src.x)
	src.y <- as.integer(src.y)
	dest.x <- as.integer(dest.x)
	dest.y <- as.integer(dest.y)
	width <- as.integer(width)
	height <- as.integer(height)

	w <- .RGtkCall("S_gdk_pixbuf_get_from_image", src, cmap, src.x, src.y, dest.x, dest.y, width, height, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkPixmapGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gdk_pixmap_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkPixmapNew <-
function(drawable = NULL, width, height, depth = "-1", .flush = TRUE, .depwarn = TRUE)
{
	if (!is.null( drawable )) checkPtrType(drawable, "GdkDrawable")
	width <- as.integer(width)
	height <- as.integer(height)
	depth <- as.integer(depth)

	w <- .RGtkCall("S_gdk_pixmap_new", drawable, width, height, depth, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkPixmapCreateFromData <-
function(drawable = NULL, data, height, depth, fg, bg, .flush = TRUE, .depwarn = TRUE)
{
	if (!is.null( drawable )) checkPtrType(drawable, "GdkDrawable")
	data <- as.list(as.integer(data))
	height <- as.integer(height)
	depth <- as.integer(depth)
	fg <- as.GdkColor(fg)
	bg <- as.GdkColor(bg)

	w <- .RGtkCall("S_gdk_pixmap_create_from_data", drawable, data, height, depth, fg, bg, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkPixmapCreateFromXpm <-
function(drawable, transparent.color, filename, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(drawable, "GdkDrawable")
	transparent.color <- as.GdkColor(transparent.color)
	filename <- as.character(filename)

	w <- .RGtkCall("S_gdk_pixmap_create_from_xpm", drawable, transparent.color, filename, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkPixmapColormapCreateFromXpm <-
function(drawable, colormap, transparent.color, filename, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(drawable, "GdkDrawable")
	checkPtrType(colormap, "GdkColormap")
	transparent.color <- as.GdkColor(transparent.color)
	filename <- as.character(filename)

	w <- .RGtkCall("S_gdk_pixmap_colormap_create_from_xpm", drawable, colormap, transparent.color, filename, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkPixmapCreateFromXpmD <-
function(drawable, transparent.color, data, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(drawable, "GdkDrawable")
	transparent.color <- as.GdkColor(transparent.color)
	data <- as.list(as.character(data))

	w <- .RGtkCall("S_gdk_pixmap_create_from_xpm_d", drawable, transparent.color, data, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkPixmapColormapCreateFromXpmD <-
function(drawable, colormap, transparent.color, data, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(drawable, "GdkDrawable")
	checkPtrType(colormap, "GdkColormap")
	transparent.color <- as.GdkColor(transparent.color)
	data <- as.list(as.character(data))

	w <- .RGtkCall("S_gdk_pixmap_colormap_create_from_xpm_d", drawable, colormap, transparent.color, data, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkPixmapForeignNew <-
function(anid, .flush = TRUE, .depwarn = TRUE)
{
	anid <- as.GdkNativeWindow(anid)

	w <- .RGtkCall("S_gdk_pixmap_foreign_new", anid, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkPixmapLookup <-
function(anid, .flush = TRUE, .depwarn = TRUE)
{
	anid <- as.GdkNativeWindow(anid)

	w <- .RGtkCall("S_gdk_pixmap_lookup", anid, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkPixmapForeignNewForDisplay <-
function(display, anid, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(display, "GdkDisplay")
	anid <- as.GdkNativeWindow(anid)

	w <- .RGtkCall("S_gdk_pixmap_foreign_new_for_display", display, anid, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkPixmapLookupForDisplay <-
function(display, anid, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(display, "GdkDisplay")
	anid <- as.GdkNativeWindow(anid)

	w <- .RGtkCall("S_gdk_pixmap_lookup_for_display", display, anid, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkAtomName <-
function(atom, .flush = TRUE, .depwarn = TRUE)
{
	atom <- as.GdkAtom(atom)

	w <- .RGtkCall("S_gdk_atom_name", atom, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkAtomIntern <-
function(atom.name, only.if.exists = "FALSE", .flush = TRUE, .depwarn = TRUE)
{
	atom.name <- as.character(atom.name)
	only.if.exists <- as.logical(only.if.exists)

	w <- .RGtkCall("S_gdk_atom_intern", atom.name, only.if.exists, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkPropertyGet <-
function(object, property, type, offset, length, pdelete, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkWindow")
	property <- as.GdkAtom(property)
	type <- as.GdkAtom(type)
	offset <- as.numeric(offset)
	length <- as.numeric(length)
	pdelete <- as.integer(pdelete)

	w <- .RGtkCall("S_gdk_property_get", object, property, type, offset, length, pdelete, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkPropertyChange <-
function(object, property, type, format, mode, data, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkWindow")
	property <- as.GdkAtom(property)
	type <- as.GdkAtom(type)
	format <- as.integer(format)
	
	data <- as.list(as.integer(data))

	w <- .RGtkCall("S_gdk_property_change", object, property, type, format, mode, data, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkPropertyDelete <-
function(object, property, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkWindow")
	property <- as.GdkAtom(property)

	w <- .RGtkCall("S_gdk_property_delete", object, property, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkRgbXpixelFromRgb <-
function(rgb, .flush = TRUE, .depwarn = TRUE)
{
	rgb <- as.numeric(rgb)

	w <- .RGtkCall("S_gdk_rgb_xpixel_from_rgb", rgb, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkRgbGcSetForeground <-
function(gc, rgb, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(gc, "GdkGC")
	rgb <- as.numeric(rgb)

	w <- .RGtkCall("S_gdk_rgb_gc_set_foreground", gc, rgb, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkRgbGcSetBackground <-
function(gc, rgb, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(gc, "GdkGC")
	rgb <- as.numeric(rgb)

	w <- .RGtkCall("S_gdk_rgb_gc_set_background", gc, rgb, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkDrawRgbImageDithalign <-
function(object, gc, x, y, width, height, dith, rgb.buf, xdith, ydith, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkDrawable")
	checkPtrType(gc, "GdkGC")
	x <- as.integer(x)
	y <- as.integer(y)
	width <- as.integer(width)
	height <- as.integer(height)
	
	rgb.buf <- as.list(as.integer(rgb.buf))
	xdith <- as.integer(xdith)
	ydith <- as.integer(ydith)

	w <- .RGtkCall("S_gdk_draw_rgb_image_dithalign", object, gc, x, y, width, height, dith, rgb.buf, xdith, ydith, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkDrawRgb32Image <-
function(object, gc, x, y, width, height, dith, buf, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkDrawable")
	checkPtrType(gc, "GdkGC")
	x <- as.integer(x)
	y <- as.integer(y)
	width <- as.integer(width)
	height <- as.integer(height)
	
	buf <- as.list(as.integer(buf))

	w <- .RGtkCall("S_gdk_draw_rgb_32_image", object, gc, x, y, width, height, dith, buf, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkDrawRgb32ImageDithalign <-
function(object, gc, x, y, width, height, dith, buf, xdith, ydith, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkDrawable")
	checkPtrType(gc, "GdkGC")
	x <- as.integer(x)
	y <- as.integer(y)
	width <- as.integer(width)
	height <- as.integer(height)
	
	buf <- as.list(as.integer(buf))
	xdith <- as.integer(xdith)
	ydith <- as.integer(ydith)

	w <- .RGtkCall("S_gdk_draw_rgb_32_image_dithalign", object, gc, x, y, width, height, dith, buf, xdith, ydith, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkRgbFindColor <-
function(colormap, color, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(colormap, "GdkColormap")
	color <- as.GdkColor(color)

	w <- .RGtkCall("S_gdk_rgb_find_color", colormap, color, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkRgbColormapDitherable <-
function(colormap, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(colormap, "GdkColormap")

	w <- .RGtkCall("S_gdk_rgb_colormap_ditherable", colormap, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkDrawGrayImage <-
function(object, gc, x, y, width, height, dith, buf, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkDrawable")
	checkPtrType(gc, "GdkGC")
	x <- as.integer(x)
	y <- as.integer(y)
	width <- as.integer(width)
	height <- as.integer(height)
	
	buf <- as.list(as.integer(buf))

	w <- .RGtkCall("S_gdk_draw_gray_image", object, gc, x, y, width, height, dith, buf, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkRgbCmapNew <-
function(colors, .flush = TRUE, .depwarn = TRUE)
{
	colors <- as.list(as.numeric(colors))

	w <- .RGtkCall("S_gdk_rgb_cmap_new", colors, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkDrawIndexedImage <-
function(object, gc, x, y, width, height, dith, buf, cmap, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkDrawable")
	checkPtrType(gc, "GdkGC")
	x <- as.integer(x)
	y <- as.integer(y)
	width <- as.integer(width)
	height <- as.integer(height)
	
	buf <- as.list(as.integer(buf))
	cmap <- as.GdkRgbCmap(cmap)

	w <- .RGtkCall("S_gdk_draw_indexed_image", object, gc, x, y, width, height, dith, buf, cmap, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkRgbDitherable <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gdk_rgb_ditherable", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkRgbSetVerbose <-
function(verbose, .flush = TRUE, .depwarn = TRUE)
{
	verbose <- as.logical(verbose)

	w <- .RGtkCall("S_gdk_rgb_set_verbose", verbose, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkRgbSetInstall <-
function(install, .flush = TRUE, .depwarn = TRUE)
{
	install <- as.logical(install)

	w <- .RGtkCall("S_gdk_rgb_set_install", install, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkRgbSetMinColors <-
function(min.colors, .flush = TRUE, .depwarn = TRUE)
{
	min.colors <- as.integer(min.colors)

	w <- .RGtkCall("S_gdk_rgb_set_min_colors", min.colors, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkRgbGetColormap <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gdk_rgb_get_colormap", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkRgbGetCmap <-
function(.flush = TRUE, .depwarn = TRUE)
{
	if (.depwarn)
		warning("This function is deprecated: use gtk.gdk.rgb_get_colormap instead")

	

	w <- .RGtkCall("S_gdk_rgb_get_cmap", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkRgbGetVisual <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gdk_rgb_get_visual", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkScreenGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gdk_screen_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkScreenGetDefaultColormap <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkScreen")

	w <- .RGtkCall("S_gdk_screen_get_default_colormap", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkScreenSetDefaultColormap <-
function(object, colormap, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkScreen")
	checkPtrType(colormap, "GdkColormap")

	w <- .RGtkCall("S_gdk_screen_set_default_colormap", object, colormap, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkScreenGetSystemColormap <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkScreen")

	w <- .RGtkCall("S_gdk_screen_get_system_colormap", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkScreenGetSystemVisual <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkScreen")

	w <- .RGtkCall("S_gdk_screen_get_system_visual", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkScreenGetRgbColormap <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkScreen")

	w <- .RGtkCall("S_gdk_screen_get_rgb_colormap", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkScreenGetRgbaColormap <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkScreen")

	w <- .RGtkCall("S_gdk_screen_get_rgba_colormap", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkScreenGetRgbVisual <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkScreen")

	w <- .RGtkCall("S_gdk_screen_get_rgb_visual", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkScreenGetRgbaVisual <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkScreen")

	w <- .RGtkCall("S_gdk_screen_get_rgba_visual", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkScreenGetRootWindow <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkScreen")

	w <- .RGtkCall("S_gdk_screen_get_root_window", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkScreenGetDisplay <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkScreen")

	w <- .RGtkCall("S_gdk_screen_get_display", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkScreenGetNumber <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkScreen")

	w <- .RGtkCall("S_gdk_screen_get_number", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkScreenGetWidth <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkScreen")

	w <- .RGtkCall("S_gdk_screen_get_width", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkScreenGetHeight <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkScreen")

	w <- .RGtkCall("S_gdk_screen_get_height", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkScreenGetWidthMm <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkScreen")

	w <- .RGtkCall("S_gdk_screen_get_width_mm", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkScreenGetHeightMm <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkScreen")

	w <- .RGtkCall("S_gdk_screen_get_height_mm", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkScreenListVisuals <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkScreen")

	w <- .RGtkCall("S_gdk_screen_list_visuals", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkScreenGetToplevelWindows <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkScreen")

	w <- .RGtkCall("S_gdk_screen_get_toplevel_windows", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkScreenMakeDisplayName <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkScreen")

	w <- .RGtkCall("S_gdk_screen_make_display_name", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkScreenGetNMonitors <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkScreen")

	w <- .RGtkCall("S_gdk_screen_get_n_monitors", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkScreenGetMonitorGeometry <-
function(object, monitor.num, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkScreen")
	monitor.num <- as.integer(monitor.num)

	w <- .RGtkCall("S_gdk_screen_get_monitor_geometry", object, monitor.num, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkScreenGetMonitorAtPoint <-
function(object, x, y, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkScreen")
	x <- as.integer(x)
	y <- as.integer(y)

	w <- .RGtkCall("S_gdk_screen_get_monitor_at_point", object, x, y, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkScreenGetMonitorAtWindow <-
function(object, window, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkScreen")
	checkPtrType(window, "GdkWindow")

	w <- .RGtkCall("S_gdk_screen_get_monitor_at_window", object, window, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkScreenBroadcastClientMessage <-
function(object, event, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkScreen")
	checkPtrType(event, "GdkEvent")

	w <- .RGtkCall("S_gdk_screen_broadcast_client_message", object, event, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkScreenGetDefault <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gdk_screen_get_default", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkScreenGetSetting <-
function(object, name, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkScreen")
	name <- as.character(name)

	w <- .RGtkCall("S_gdk_screen_get_setting", object, name, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkSpawnCommandLineOnScreen <-
function(screen, command.line, .flush = TRUE, .depwarn = TRUE, .errwarn = TRUE)
{
	checkPtrType(screen, "GdkScreen")
	command.line <- as.character(command.line)

	w <- .RGtkCall("S_gdk_spawn_command_line_on_screen", screen, command.line, PACKAGE = "RGtk2", .flush = .flush)

	if(.errwarn && !is.null(w$error))
		warning(w$error[["message"]])

	return(w)
} 


gtkAlternativeDialogButtonOrder <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkScreen")

	w <- .RGtkCall("S_gtk_alternative_dialog_button_order", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkSelectionOwnerSet <-
function(owner, selection, time, send.event, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(owner, "GdkWindow")
	selection <- as.GdkAtom(selection)
	time <- as.numeric(time)
	send.event <- as.logical(send.event)

	w <- .RGtkCall("S_gdk_selection_owner_set", owner, selection, time, send.event, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkSelectionOwnerGet <-
function(selection, .flush = TRUE, .depwarn = TRUE)
{
	selection <- as.GdkAtom(selection)

	w <- .RGtkCall("S_gdk_selection_owner_get", selection, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkSelectionOwnerSetForDisplay <-
function(display, owner, selection, time, send.event, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(display, "GdkDisplay")
	checkPtrType(owner, "GdkWindow")
	selection <- as.GdkAtom(selection)
	time <- as.numeric(time)
	send.event <- as.logical(send.event)

	w <- .RGtkCall("S_gdk_selection_owner_set_for_display", display, owner, selection, time, send.event, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkSelectionOwnerGetForDisplay <-
function(display, selection, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(display, "GdkDisplay")
	selection <- as.GdkAtom(selection)

	w <- .RGtkCall("S_gdk_selection_owner_get_for_display", display, selection, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkSelectionConvert <-
function(object, selection, target, time, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkWindow")
	selection <- as.GdkAtom(selection)
	target <- as.GdkAtom(target)
	time <- as.numeric(time)

	w <- .RGtkCall("S_gdk_selection_convert", object, selection, target, time, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkSelectionPropertyGet <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkWindow")

	w <- .RGtkCall("S_gdk_selection_property_get", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkSelectionSendNotify <-
function(requestor, selection, target, property, time, .flush = TRUE, .depwarn = TRUE)
{
	requestor <- as.numeric(requestor)
	selection <- as.GdkAtom(selection)
	target <- as.GdkAtom(target)
	property <- as.GdkAtom(property)
	time <- as.numeric(time)

	w <- .RGtkCall("S_gdk_selection_send_notify", requestor, selection, target, property, time, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkSelectionSendNotifyForDisplay <-
function(display, requestor, selection, target, property, time, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(display, "GdkDisplay")
	requestor <- as.numeric(requestor)
	selection <- as.GdkAtom(selection)
	target <- as.GdkAtom(target)
	property <- as.GdkAtom(property)
	time <- as.numeric(time)

	w <- .RGtkCall("S_gdk_selection_send_notify_for_display", display, requestor, selection, target, property, time, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkVisualGetBestDepth <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gdk_visual_get_best_depth", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkVisualGetBestType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gdk_visual_get_best_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkVisualGetSystem <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gdk_visual_get_system", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkVisualGetBest <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gdk_visual_get_best", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkVisualGetBestWithDepth <-
function(depth, .flush = TRUE, .depwarn = TRUE)
{
	depth <- as.integer(depth)

	w <- .RGtkCall("S_gdk_visual_get_best_with_depth", depth, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkVisualGetBestWithType <-
function(visual.type, .flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gdk_visual_get_best_with_type", visual.type, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkVisualGetBestWithBoth <-
function(depth, visual.type, .flush = TRUE, .depwarn = TRUE)
{
	depth <- as.integer(depth)
	

	w <- .RGtkCall("S_gdk_visual_get_best_with_both", depth, visual.type, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkQueryDepths <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gdk_query_depths", PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkQueryVisualTypes <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gdk_query_visual_types", PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkListVisuals <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gdk_list_visuals", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkVisualGetScreen <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkVisual")

	w <- .RGtkCall("S_gdk_visual_get_screen", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkWindowObjectGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gdk_window_object_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkWindowSetKeepAbove <-
function(object, setting, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkWindow")
	setting <- as.logical(setting)

	w <- .RGtkCall("S_gdk_window_set_keep_above", object, setting, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkWindowSetKeepBelow <-
function(object, setting, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkWindow")
	setting <- as.logical(setting)

	w <- .RGtkCall("S_gdk_window_set_keep_below", object, setting, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkWindowDestroy <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkWindow")

	w <- .RGtkCall("S_gdk_window_destroy", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkWindowGetWindowType <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkWindow")

	w <- .RGtkCall("S_gdk_window_get_window_type", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkWindowAtPointer <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gdk_window_at_pointer", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkWindowShow <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkWindow")

	w <- .RGtkCall("S_gdk_window_show", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkWindowShowUnraised <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkWindow")

	w <- .RGtkCall("S_gdk_window_show_unraised", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkWindowHide <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkWindow")

	w <- .RGtkCall("S_gdk_window_hide", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkWindowWithdraw <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkWindow")

	w <- .RGtkCall("S_gdk_window_withdraw", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkWindowMove <-
function(object, x, y, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkWindow")
	x <- as.integer(x)
	y <- as.integer(y)

	w <- .RGtkCall("S_gdk_window_move", object, x, y, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkWindowResize <-
function(object, width, height, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkWindow")
	width <- as.integer(width)
	height <- as.integer(height)

	w <- .RGtkCall("S_gdk_window_resize", object, width, height, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkWindowMoveResize <-
function(object, x, y, width, height, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkWindow")
	x <- as.integer(x)
	y <- as.integer(y)
	width <- as.integer(width)
	height <- as.integer(height)

	w <- .RGtkCall("S_gdk_window_move_resize", object, x, y, width, height, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkWindowMoveRegion <-
function(object, region, x, y, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkWindow")
	checkPtrType(region, "GdkRegion")
	x <- as.integer(x)
	y <- as.integer(y)

	w <- .RGtkCall("S_gdk_window_move_region", object, region, x, y, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkWindowReparent <-
function(object, new.parent, x, y, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkWindow")
	checkPtrType(new.parent, "GdkWindow")
	x <- as.integer(x)
	y <- as.integer(y)

	w <- .RGtkCall("S_gdk_window_reparent", object, new.parent, x, y, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkWindowClear <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkWindow")

	w <- .RGtkCall("S_gdk_window_clear", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkWindowClearArea <-
function(object, x, y, width, height, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkWindow")
	x <- as.integer(x)
	y <- as.integer(y)
	width <- as.integer(width)
	height <- as.integer(height)

	w <- .RGtkCall("S_gdk_window_clear_area", object, x, y, width, height, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkWindowClearAreaE <-
function(object, x, y, width, height, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkWindow")
	x <- as.integer(x)
	y <- as.integer(y)
	width <- as.integer(width)
	height <- as.integer(height)

	w <- .RGtkCall("S_gdk_window_clear_area_e", object, x, y, width, height, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkWindowRaise <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkWindow")

	w <- .RGtkCall("S_gdk_window_raise", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkWindowLower <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkWindow")

	w <- .RGtkCall("S_gdk_window_lower", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkWindowFocus <-
function(object, timestamp = "GDK_CURRENT_TIME", .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkWindow")
	timestamp <- as.numeric(timestamp)

	w <- .RGtkCall("S_gdk_window_focus", object, timestamp, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkWindowSetUserData <-
function(object, user.data, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkWindow")
	

	w <- .RGtkCall("S_gdk_window_set_user_data", object, user.data, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkWindowGetUserData <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkWindow")

	w <- .RGtkCall("S_gdk_window_get_user_data", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkWindowSetOverrideRedirect <-
function(object, override.redirect, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkWindow")
	override.redirect <- as.logical(override.redirect)

	w <- .RGtkCall("S_gdk_window_set_override_redirect", object, override.redirect, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkWindowAddFilter <-
function(object, fun, data, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkWindow")
	fun <- as.function(fun)
	

	w <- .RGtkCall("S_gdk_window_add_filter", object, fun, data, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkWindowRemoveFilter <-
function(object, fun, data, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkWindow")
	fun <- as.function(fun)
	

	w <- .RGtkCall("S_gdk_window_remove_filter", object, fun, data, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkWindowScroll <-
function(object, dx, dy, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkWindow")
	dx <- as.integer(dx)
	dy <- as.integer(dy)

	w <- .RGtkCall("S_gdk_window_scroll", object, dx, dy, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkWindowShapeCombineMask <-
function(object, shape.mask = NULL, offset.x, offset.y, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkWindow")
	if (!is.null( shape.mask )) checkPtrType(shape.mask, "GdkBitmap")
	offset.x <- as.integer(offset.x)
	offset.y <- as.integer(offset.y)

	w <- .RGtkCall("S_gdk_window_shape_combine_mask", object, shape.mask, offset.x, offset.y, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkWindowShapeCombineRegion <-
function(object, shape.region = NULL, offset.x, offset.y, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkWindow")
	if (!is.null( shape.region )) checkPtrType(shape.region, "GdkRegion")
	offset.x <- as.integer(offset.x)
	offset.y <- as.integer(offset.y)

	w <- .RGtkCall("S_gdk_window_shape_combine_region", object, shape.region, offset.x, offset.y, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkWindowSetChildShapes <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkWindow")

	w <- .RGtkCall("S_gdk_window_set_child_shapes", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkWindowMergeChildShapes <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkWindow")

	w <- .RGtkCall("S_gdk_window_merge_child_shapes", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkWindowIsVisible <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkWindow")

	w <- .RGtkCall("S_gdk_window_is_visible", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkWindowIsViewable <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkWindow")

	w <- .RGtkCall("S_gdk_window_is_viewable", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkWindowGetState <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkWindow")

	w <- .RGtkCall("S_gdk_window_get_state", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkWindowSetStaticGravities <-
function(object, use.static, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkWindow")
	use.static <- as.logical(use.static)

	w <- .RGtkCall("S_gdk_window_set_static_gravities", object, use.static, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkWindowForeignNew <-
function(anid, .flush = TRUE, .depwarn = TRUE)
{
	anid <- as.GdkNativeWindow(anid)

	w <- .RGtkCall("S_gdk_window_foreign_new", anid, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkWindowLookup <-
function(anid, .flush = TRUE, .depwarn = TRUE)
{
	anid <- as.GdkNativeWindow(anid)

	w <- .RGtkCall("S_gdk_window_lookup", anid, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkWindowForeignNewForDisplay <-
function(display, anid, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(display, "GdkDisplay")
	anid <- as.GdkNativeWindow(anid)

	w <- .RGtkCall("S_gdk_window_foreign_new_for_display", display, anid, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkWindowLookupForDisplay <-
function(display, anid, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(display, "GdkDisplay")
	anid <- as.GdkNativeWindow(anid)

	w <- .RGtkCall("S_gdk_window_lookup_for_display", display, anid, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkWindowSetHints <-
function(object, x, y, min.width, min.height, max.width, max.height, flags, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkWindow")
	x <- as.integer(x)
	y <- as.integer(y)
	min.width <- as.integer(min.width)
	min.height <- as.integer(min.height)
	max.width <- as.integer(max.width)
	max.height <- as.integer(max.height)
	flags <- as.integer(flags)

	w <- .RGtkCall("S_gdk_window_set_hints", object, x, y, min.width, min.height, max.width, max.height, flags, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkWindowSetTypeHint <-
function(object, hint, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkWindow")
	

	w <- .RGtkCall("S_gdk_window_set_type_hint", object, hint, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkWindowSetModalHint <-
function(object, modal, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkWindow")
	modal <- as.logical(modal)

	w <- .RGtkCall("S_gdk_window_set_modal_hint", object, modal, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkWindowSetSkipTaskbarHint <-
function(object, modal, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkWindow")
	modal <- as.logical(modal)

	w <- .RGtkCall("S_gdk_window_set_skip_taskbar_hint", object, modal, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkWindowSetSkipPagerHint <-
function(object, modal, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkWindow")
	modal <- as.logical(modal)

	w <- .RGtkCall("S_gdk_window_set_skip_pager_hint", object, modal, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkWindowSetUrgencyHint <-
function(object, urgent, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkWindow")
	urgent <- as.logical(urgent)

	w <- .RGtkCall("S_gdk_window_set_urgency_hint", object, urgent, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkWindowSetGeometryHints <-
function(object, geometry, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkWindow")
	geometry <- as.GdkGeometry(geometry)

	w <- .RGtkCall("S_gdk_window_set_geometry_hints", object, geometry, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkWindowBeginPaintRect <-
function(object, rectangle, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkWindow")
	rectangle <- as.GdkRectangle(rectangle)

	w <- .RGtkCall("S_gdk_window_begin_paint_rect", object, rectangle, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkWindowBeginPaintRegion <-
function(object, region, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkWindow")
	checkPtrType(region, "GdkRegion")

	w <- .RGtkCall("S_gdk_window_begin_paint_region", object, region, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkWindowEndPaint <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkWindow")

	w <- .RGtkCall("S_gdk_window_end_paint", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkWindowSetTitle <-
function(object, title, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkWindow")
	title <- as.character(title)

	w <- .RGtkCall("S_gdk_window_set_title", object, title, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkWindowSetRole <-
function(object, role, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkWindow")
	role <- as.character(role)

	w <- .RGtkCall("S_gdk_window_set_role", object, role, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkWindowSetTransientFor <-
function(object, leader, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkWindow")
	checkPtrType(leader, "GdkWindow")

	w <- .RGtkCall("S_gdk_window_set_transient_for", object, leader, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkWindowSetBackground <-
function(object, color, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkWindow")
	color <- as.GdkColor(color)

	w <- .RGtkCall("S_gdk_window_set_background", object, color, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkWindowSetBackPixmap <-
function(object, pixmap = NULL, parent.relative, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkWindow")
	if (!is.null( pixmap )) checkPtrType(pixmap, "GdkPixmap")
	parent.relative <- as.logical(parent.relative)

	w <- .RGtkCall("S_gdk_window_set_back_pixmap", object, pixmap, parent.relative, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkWindowSetCursor <-
function(object, cursor = NULL, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkWindow")
	if (!is.null( cursor )) checkPtrType(cursor, "GdkCursor")

	w <- .RGtkCall("S_gdk_window_set_cursor", object, cursor, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkWindowGetGeometry <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkWindow")

	w <- .RGtkCall("S_gdk_window_get_geometry", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkWindowGetPosition <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkWindow")

	w <- .RGtkCall("S_gdk_window_get_position", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkWindowGetOrigin <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkWindow")

	w <- .RGtkCall("S_gdk_window_get_origin", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkWindowGetDeskrelativeOrigin <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkWindow")

	w <- .RGtkCall("S_gdk_window_get_deskrelative_origin", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkWindowGetRootOrigin <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkWindow")

	w <- .RGtkCall("S_gdk_window_get_root_origin", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkWindowGetFrameExtents <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkWindow")

	w <- .RGtkCall("S_gdk_window_get_frame_extents", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkWindowGetPointer <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkWindow")

	w <- .RGtkCall("S_gdk_window_get_pointer", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkWindowGetParent <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkWindow")

	w <- .RGtkCall("S_gdk_window_get_parent", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkWindowGetToplevel <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkWindow")

	w <- .RGtkCall("S_gdk_window_get_toplevel", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkWindowGetChildren <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkWindow")

	w <- .RGtkCall("S_gdk_window_get_children", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkWindowPeekChildren <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkWindow")

	w <- .RGtkCall("S_gdk_window_peek_children", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkWindowGetEvents <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkWindow")

	w <- .RGtkCall("S_gdk_window_get_events", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkWindowSetEvents <-
function(object, event.mask, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkWindow")
	

	w <- .RGtkCall("S_gdk_window_set_events", object, event.mask, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkWindowSetIconList <-
function(object, pixbufs, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkWindow")
	pixbufs <- lapply(pixbufs, function(x) { x <- as.GList(x); x })

	w <- .RGtkCall("S_gdk_window_set_icon_list", object, pixbufs, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkWindowSetIcon <-
function(object, icon.window, pixmap, mask, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkWindow")
	checkPtrType(icon.window, "GdkWindow")
	checkPtrType(pixmap, "GdkPixmap")
	checkPtrType(mask, "GdkBitmap")

	w <- .RGtkCall("S_gdk_window_set_icon", object, icon.window, pixmap, mask, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkWindowSetIconName <-
function(object, name, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkWindow")
	name <- as.character(name)

	w <- .RGtkCall("S_gdk_window_set_icon_name", object, name, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkWindowSetGroup <-
function(object, leader, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkWindow")
	checkPtrType(leader, "GdkWindow")

	w <- .RGtkCall("S_gdk_window_set_group", object, leader, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkWindowGetGroup <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkWindow")

	w <- .RGtkCall("S_gdk_window_get_group", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkWindowSetDecorations <-
function(object, decorations, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkWindow")
	

	w <- .RGtkCall("S_gdk_window_set_decorations", object, decorations, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkWindowGetDecorations <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkWindow")

	w <- .RGtkCall("S_gdk_window_get_decorations", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkWindowSetFunctions <-
function(object, functions, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkWindow")
	

	w <- .RGtkCall("S_gdk_window_set_functions", object, functions, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkWindowGetToplevels <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gdk_window_get_toplevels", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkWindowIconify <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkWindow")

	w <- .RGtkCall("S_gdk_window_iconify", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkWindowDeiconify <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkWindow")

	w <- .RGtkCall("S_gdk_window_deiconify", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkWindowStick <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkWindow")

	w <- .RGtkCall("S_gdk_window_stick", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkWindowUnstick <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkWindow")

	w <- .RGtkCall("S_gdk_window_unstick", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkWindowMaximize <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkWindow")

	w <- .RGtkCall("S_gdk_window_maximize", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkWindowUnmaximize <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkWindow")

	w <- .RGtkCall("S_gdk_window_unmaximize", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkWindowFullscreen <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkWindow")

	w <- .RGtkCall("S_gdk_window_fullscreen", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkWindowUnfullscreen <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkWindow")

	w <- .RGtkCall("S_gdk_window_unfullscreen", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkWindowRegisterDnd <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkWindow")

	w <- .RGtkCall("S_gdk_window_register_dnd", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkWindowBeginResizeDrag <-
function(object, edge, button, root.x, root.y, timestamp, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkWindow")
	
	button <- as.integer(button)
	root.x <- as.integer(root.x)
	root.y <- as.integer(root.y)
	timestamp <- as.numeric(timestamp)

	w <- .RGtkCall("S_gdk_window_begin_resize_drag", object, edge, button, root.x, root.y, timestamp, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkWindowBeginMoveDrag <-
function(object, button, root.x, root.y, timestamp, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkWindow")
	button <- as.integer(button)
	root.x <- as.integer(root.x)
	root.y <- as.integer(root.y)
	timestamp <- as.numeric(timestamp)

	w <- .RGtkCall("S_gdk_window_begin_move_drag", object, button, root.x, root.y, timestamp, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkWindowInvalidateRect <-
function(object, rect = NULL, invalidate.children, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkWindow")
	if (!is.null( rect )) rect <- as.GdkRectangle(rect)
	invalidate.children <- as.logical(invalidate.children)

	w <- .RGtkCall("S_gdk_window_invalidate_rect", object, rect, invalidate.children, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkWindowInvalidateRegion <-
function(object, region, invalidate.children, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkWindow")
	checkPtrType(region, "GdkRegion")
	invalidate.children <- as.logical(invalidate.children)

	w <- .RGtkCall("S_gdk_window_invalidate_region", object, region, invalidate.children, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkWindowGetUpdateArea <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkWindow")

	w <- .RGtkCall("S_gdk_window_get_update_area", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkWindowFreezeUpdates <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkWindow")

	w <- .RGtkCall("S_gdk_window_freeze_updates", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkWindowThawUpdates <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkWindow")

	w <- .RGtkCall("S_gdk_window_thaw_updates", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkWindowProcessAllUpdates <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gdk_window_process_all_updates", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkWindowProcessUpdates <-
function(object, update.children, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkWindow")
	update.children <- as.logical(update.children)

	w <- .RGtkCall("S_gdk_window_process_updates", object, update.children, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkWindowSetDebugUpdates <-
function(setting, .flush = TRUE, .depwarn = TRUE)
{
	setting <- as.logical(setting)

	w <- .RGtkCall("S_gdk_window_set_debug_updates", setting, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkWindowGetInternalPaintInfo <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkWindow")

	w <- .RGtkCall("S_gdk_window_get_internal_paint_info", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkGetDefaultRootWindow <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gdk_get_default_root_window", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkWindowSetAcceptFocus <-
function(object, accept.focus, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkWindow")
	accept.focus <- as.logical(accept.focus)

	w <- .RGtkCall("S_gdk_window_set_accept_focus", object, accept.focus, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkWindowSetFocusOnMap <-
function(object, focus.on.map, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkWindow")
	focus.on.map <- as.logical(focus.on.map)

	w <- .RGtkCall("S_gdk_window_set_focus_on_map", object, focus.on.map, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkWindowEnableSynchronizedConfigure <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkWindow")

	w <- .RGtkCall("S_gdk_window_enable_synchronized_configure", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkWindowConfigureFinished <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkWindow")

	w <- .RGtkCall("S_gdk_window_configure_finished", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkDragFinish <-
function(object, success, del, time = "GDK_CURRENT_TIME", .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkDragContext")
	success <- as.logical(success)
	del <- as.logical(del)
	time <- as.numeric(time)

	w <- .RGtkCall("S_gtk_drag_finish", object, success, del, time, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkDragSetIconName <-
function(object, icon.name, hot.x, hot.y, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkDragContext")
	icon.name <- as.character(icon.name)
	hot.x <- as.integer(hot.x)
	hot.y <- as.integer(hot.y)

	w <- .RGtkCall("S_gtk_drag_set_icon_name", object, icon.name, hot.x, hot.y, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkDragSetIconWidget <-
function(object, widget, hot.x, hot.y, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkDragContext")
	checkPtrType(widget, "GtkWidget")
	hot.x <- as.integer(hot.x)
	hot.y <- as.integer(hot.y)

	w <- .RGtkCall("S_gtk_drag_set_icon_widget", object, widget, hot.x, hot.y, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkDragSetIconPixmap <-
function(object, colormap, pixmap, mask, hot.x, hot.y, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkDragContext")
	checkPtrType(colormap, "GdkColormap")
	checkPtrType(pixmap, "GdkPixmap")
	checkPtrType(mask, "GdkBitmap")
	hot.x <- as.integer(hot.x)
	hot.y <- as.integer(hot.y)

	w <- .RGtkCall("S_gtk_drag_set_icon_pixmap", object, colormap, pixmap, mask, hot.x, hot.y, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkDragSetIconPixbuf <-
function(object, pixbuf, hot.x, hot.y, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkDragContext")
	checkPtrType(pixbuf, "GdkPixbuf")
	hot.x <- as.integer(hot.x)
	hot.y <- as.integer(hot.y)

	w <- .RGtkCall("S_gtk_drag_set_icon_pixbuf", object, pixbuf, hot.x, hot.y, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkDragSetIconStock <-
function(object, stock.id, hot.x, hot.y, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkDragContext")
	stock.id <- as.character(stock.id)
	hot.x <- as.integer(hot.x)
	hot.y <- as.integer(hot.y)

	w <- .RGtkCall("S_gtk_drag_set_icon_stock", object, stock.id, hot.x, hot.y, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkDragSetIconDefault <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkDragContext")

	w <- .RGtkCall("S_gtk_drag_set_icon_default", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkPixbufGetColorspace <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkPixbuf")

	w <- .RGtkCall("S_gdk_pixbuf_get_colorspace", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkPixbufGetNChannels <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkPixbuf")

	w <- .RGtkCall("S_gdk_pixbuf_get_n_channels", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkPixbufGetHasAlpha <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkPixbuf")

	w <- .RGtkCall("S_gdk_pixbuf_get_has_alpha", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkPixbufGetBitsPerSample <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkPixbuf")

	w <- .RGtkCall("S_gdk_pixbuf_get_bits_per_sample", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkPixbufGetPixels <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkPixbuf")

	w <- .RGtkCall("S_gdk_pixbuf_get_pixels", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkPixbufGetWidth <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkPixbuf")

	w <- .RGtkCall("S_gdk_pixbuf_get_width", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkPixbufGetHeight <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkPixbuf")

	w <- .RGtkCall("S_gdk_pixbuf_get_height", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkPixbufGetRowstride <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkPixbuf")

	w <- .RGtkCall("S_gdk_pixbuf_get_rowstride", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkPixbufNew <-
function(colorspace, has.alpha, bits.per.sample, width, height, .flush = TRUE, .depwarn = TRUE)
{
	
	has.alpha <- as.logical(has.alpha)
	bits.per.sample <- as.integer(bits.per.sample)
	width <- as.integer(width)
	height <- as.integer(height)

	w <- .RGtkCall("S_gdk_pixbuf_new", colorspace, has.alpha, bits.per.sample, width, height, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkPixbufCopy <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkPixbuf")

	w <- .RGtkCall("S_gdk_pixbuf_copy", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkPixbufNewFromFile <-
function(filename, .flush = TRUE, .depwarn = TRUE, .errwarn = TRUE)
{
	filename <- as.character(filename)

	w <- .RGtkCall("S_gdk_pixbuf_new_from_file", filename, PACKAGE = "RGtk2", .flush = .flush)

	if(.errwarn && !is.null(w$error))
		warning(w$error[["message"]])

	return(w)
} 


gdkPixbufNewFromFileAtSize <-
function(filename, width, height, .flush = TRUE, .depwarn = TRUE, .errwarn = TRUE)
{
	filename <- as.character(filename)
	width <- as.integer(width)
	height <- as.integer(height)

	w <- .RGtkCall("S_gdk_pixbuf_new_from_file_at_size", filename, width, height, PACKAGE = "RGtk2", .flush = .flush)

	if(.errwarn && !is.null(w$error))
		warning(w$error[["message"]])

	return(w)
} 


gdkPixbufNewFromFileAtScale <-
function(filename, width, height, preserve.aspect.ratio, .flush = TRUE, .depwarn = TRUE, .errwarn = TRUE)
{
	filename <- as.character(filename)
	width <- as.integer(width)
	height <- as.integer(height)
	preserve.aspect.ratio <- as.logical(preserve.aspect.ratio)

	w <- .RGtkCall("S_gdk_pixbuf_new_from_file_at_scale", filename, width, height, preserve.aspect.ratio, PACKAGE = "RGtk2", .flush = .flush)

	if(.errwarn && !is.null(w$error))
		warning(w$error[["message"]])

	return(w)
} 


gdkPixbufNewFromXpmData <-
function(data, .flush = TRUE, .depwarn = TRUE)
{
	data <- as.list(as.character(data))

	w <- .RGtkCall("S_gdk_pixbuf_new_from_xpm_data", data, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkPixbufNewSubpixbuf <-
function(object, src.x, src.y, width, height, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkPixbuf")
	src.x <- as.integer(src.x)
	src.y <- as.integer(src.y)
	width <- as.integer(width)
	height <- as.integer(height)

	w <- .RGtkCall("S_gdk_pixbuf_new_subpixbuf", object, src.x, src.y, width, height, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkPixbufFill <-
function(object, pixel, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkPixbuf")
	pixel <- as.numeric(pixel)

	w <- .RGtkCall("S_gdk_pixbuf_fill", object, pixel, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkPixbufSavev <-
function(object, filename, type, option.keys, option.values, .flush = TRUE, .depwarn = TRUE, .errwarn = TRUE)
{
	checkPtrType(object, "GdkPixbuf")
	filename <- as.character(filename)
	type <- as.character(type)
	option.keys <- as.list(as.character(option.keys))
	option.values <- as.list(as.character(option.values))

	w <- .RGtkCall("S_gdk_pixbuf_savev", object, filename, type, option.keys, option.values, PACKAGE = "RGtk2", .flush = .flush)

	if(.errwarn && !is.null(w$error))
		warning(w$error[["message"]])

	return(w)
} 


gdkPixbufSaveToCallbackv <-
function(object, save.func, user.data, type, option.keys, option.values, .flush = TRUE, .depwarn = TRUE, .errwarn = TRUE)
{
	checkPtrType(object, "GdkPixbuf")
	save.func <- as.function(save.func)
	
	type <- as.character(type)
	option.keys <- as.list(as.character(option.keys))
	option.values <- as.list(as.character(option.values))

	w <- .RGtkCall("S_gdk_pixbuf_save_to_callbackv", object, save.func, user.data, type, option.keys, option.values, PACKAGE = "RGtk2", .flush = .flush)

	if(.errwarn && !is.null(w$error))
		warning(w$error[["message"]])

	return(w)
} 


gdkPixbufSaveToBufferv <-
function(object, type, option.keys, option.values, .flush = TRUE, .depwarn = TRUE, .errwarn = TRUE)
{
	checkPtrType(object, "GdkPixbuf")
	type <- as.character(type)
	option.keys <- as.list(as.character(option.keys))
	option.values <- as.list(as.character(option.values))

	w <- .RGtkCall("S_gdk_pixbuf_save_to_bufferv", object, type, option.keys, option.values, PACKAGE = "RGtk2", .flush = .flush)

	if(.errwarn && !is.null(w$error))
		warning(w$error[["message"]])

	return(invisible(w))
} 


gdkPixbufAddAlpha <-
function(object, substitute.color, r, g, b, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkPixbuf")
	substitute.color <- as.logical(substitute.color)
	r <- as.integer(r)
	g <- as.integer(g)
	b <- as.integer(b)

	w <- .RGtkCall("S_gdk_pixbuf_add_alpha", object, substitute.color, r, g, b, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkPixbufCopyArea <-
function(object, src.x, src.y, width, height, dest.pixbuf, dest.x, dest.y, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkPixbuf")
	src.x <- as.integer(src.x)
	src.y <- as.integer(src.y)
	width <- as.integer(width)
	height <- as.integer(height)
	checkPtrType(dest.pixbuf, "GdkPixbuf")
	dest.x <- as.integer(dest.x)
	dest.y <- as.integer(dest.y)

	w <- .RGtkCall("S_gdk_pixbuf_copy_area", object, src.x, src.y, width, height, dest.pixbuf, dest.x, dest.y, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkPixbufSaturateAndPixelate <-
function(object, dest, saturation, pixelate, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkPixbuf")
	checkPtrType(dest, "GdkPixbuf")
	saturation <- as.numeric(saturation)
	pixelate <- as.logical(pixelate)

	w <- .RGtkCall("S_gdk_pixbuf_saturate_and_pixelate", object, dest, saturation, pixelate, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkPixbufScale <-
function(object, dest, dest.x, dest.y, dest.width, dest.height, offset.x, offset.y, scale.x, scale.y, interp.type, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkPixbuf")
	checkPtrType(dest, "GdkPixbuf")
	dest.x <- as.integer(dest.x)
	dest.y <- as.integer(dest.y)
	dest.width <- as.integer(dest.width)
	dest.height <- as.integer(dest.height)
	offset.x <- as.numeric(offset.x)
	offset.y <- as.numeric(offset.y)
	scale.x <- as.numeric(scale.x)
	scale.y <- as.numeric(scale.y)
	

	w <- .RGtkCall("S_gdk_pixbuf_scale", object, dest, dest.x, dest.y, dest.width, dest.height, offset.x, offset.y, scale.x, scale.y, interp.type, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkPixbufComposite <-
function(object, dest, dest.x, dest.y, dest.width, dest.height, offset.x, offset.y, scale.x, scale.y, interp.type, overall.alpha, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkPixbuf")
	checkPtrType(dest, "GdkPixbuf")
	dest.x <- as.integer(dest.x)
	dest.y <- as.integer(dest.y)
	dest.width <- as.integer(dest.width)
	dest.height <- as.integer(dest.height)
	offset.x <- as.numeric(offset.x)
	offset.y <- as.numeric(offset.y)
	scale.x <- as.numeric(scale.x)
	scale.y <- as.numeric(scale.y)
	
	overall.alpha <- as.integer(overall.alpha)

	w <- .RGtkCall("S_gdk_pixbuf_composite", object, dest, dest.x, dest.y, dest.width, dest.height, offset.x, offset.y, scale.x, scale.y, interp.type, overall.alpha, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkPixbufCompositeColor <-
function(object, dest, dest.x, dest.y, dest.width, dest.height, offset.x, offset.y, scale.x, scale.y, interp.type, overall.alpha, check.x, check.y, check.size, color1, color2, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkPixbuf")
	checkPtrType(dest, "GdkPixbuf")
	dest.x <- as.integer(dest.x)
	dest.y <- as.integer(dest.y)
	dest.width <- as.integer(dest.width)
	dest.height <- as.integer(dest.height)
	offset.x <- as.numeric(offset.x)
	offset.y <- as.numeric(offset.y)
	scale.x <- as.numeric(scale.x)
	scale.y <- as.numeric(scale.y)
	
	overall.alpha <- as.integer(overall.alpha)
	check.x <- as.integer(check.x)
	check.y <- as.integer(check.y)
	check.size <- as.integer(check.size)
	color1 <- as.numeric(color1)
	color2 <- as.numeric(color2)

	w <- .RGtkCall("S_gdk_pixbuf_composite_color", object, dest, dest.x, dest.y, dest.width, dest.height, offset.x, offset.y, scale.x, scale.y, interp.type, overall.alpha, check.x, check.y, check.size, color1, color2, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkPixbufRotateSimple <-
function(object, angle, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkPixbuf")
	

	w <- .RGtkCall("S_gdk_pixbuf_rotate_simple", object, angle, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkPixbufFlip <-
function(object, horizontal, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkPixbuf")
	horizontal <- as.logical(horizontal)

	w <- .RGtkCall("S_gdk_pixbuf_flip", object, horizontal, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkPixbufScaleSimple <-
function(object, dest.width, dest.height, interp.type, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkPixbuf")
	dest.width <- as.integer(dest.width)
	dest.height <- as.integer(dest.height)
	

	w <- .RGtkCall("S_gdk_pixbuf_scale_simple", object, dest.width, dest.height, interp.type, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkPixbufCompositeColorSimple <-
function(object, dest.width, dest.height, interp.type, overall.alpha, check.size, color1, color2, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkPixbuf")
	dest.width <- as.integer(dest.width)
	dest.height <- as.integer(dest.height)
	
	overall.alpha <- as.integer(overall.alpha)
	check.size <- as.integer(check.size)
	color1 <- as.numeric(color1)
	color2 <- as.numeric(color2)

	w <- .RGtkCall("S_gdk_pixbuf_composite_color_simple", object, dest.width, dest.height, interp.type, overall.alpha, check.size, color1, color2, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkPixbufAnimationGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gdk_pixbuf_animation_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkPixbufAnimationNewFromFile <-
function(filename, .flush = TRUE, .depwarn = TRUE, .errwarn = TRUE)
{
	filename <- as.character(filename)

	w <- .RGtkCall("S_gdk_pixbuf_animation_new_from_file", filename, PACKAGE = "RGtk2", .flush = .flush)

	if(.errwarn && !is.null(w$error))
		warning(w$error[["message"]])

	return(w)
} 


gdkPixbufAnimationGetWidth <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkPixbufAnimation")

	w <- .RGtkCall("S_gdk_pixbuf_animation_get_width", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkPixbufAnimationGetHeight <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkPixbufAnimation")

	w <- .RGtkCall("S_gdk_pixbuf_animation_get_height", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkPixbufAnimationIsStaticImage <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkPixbufAnimation")

	w <- .RGtkCall("S_gdk_pixbuf_animation_is_static_image", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkPixbufAnimationGetStaticImage <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkPixbufAnimation")

	w <- .RGtkCall("S_gdk_pixbuf_animation_get_static_image", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkPixbufAnimationGetIter <-
function(object, start.time, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkPixbufAnimation")
	start.time <- as.GTimeVal(start.time)

	w <- .RGtkCall("S_gdk_pixbuf_animation_get_iter", object, start.time, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkPixbufAnimationIterGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gdk_pixbuf_animation_iter_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkPixbufAnimationIterGetDelayTime <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkPixbufAnimationIter")

	w <- .RGtkCall("S_gdk_pixbuf_animation_iter_get_delay_time", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkPixbufAnimationIterGetPixbuf <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkPixbufAnimationIter")

	w <- .RGtkCall("S_gdk_pixbuf_animation_iter_get_pixbuf", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkPixbufAnimationIterOnCurrentlyLoadingFrame <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkPixbufAnimationIter")

	w <- .RGtkCall("S_gdk_pixbuf_animation_iter_on_currently_loading_frame", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkPixbufAnimationIterAdvance <-
function(object, current.time, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkPixbufAnimationIter")
	current.time <- as.GTimeVal(current.time)

	w <- .RGtkCall("S_gdk_pixbuf_animation_iter_advance", object, current.time, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkPixbufSimpleAnimNew <-
function(width, height, rate, .flush = TRUE, .depwarn = TRUE)
{
	width <- as.integer(width)
	height <- as.integer(height)
	rate <- as.numeric(rate)

	w <- .RGtkCall("S_gdk_pixbuf_simple_anim_new", width, height, rate, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkPixbufSimpleAnimAddFrame <-
function(object, pixbuf, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkPixbufSimpleAnim")
	checkPtrType(pixbuf, "GdkPixbuf")

	w <- .RGtkCall("S_gdk_pixbuf_simple_anim_add_frame", object, pixbuf, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkPixbufGetOption <-
function(object, key, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkPixbuf")
	key <- as.character(key)

	w <- .RGtkCall("S_gdk_pixbuf_get_option", object, key, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkPixbufSetOption <-
function(object, key, value, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkPixbuf")
	key <- as.character(key)
	value <- as.character(value)

	w <- .RGtkCall("S_gdk_pixbuf_set_option", object, key, value, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkPixbufGetFormats <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gdk_pixbuf_get_formats", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkPixbufGetFileInfo <-
function(filename, .flush = TRUE, .depwarn = TRUE)
{
	filename <- as.character(filename)

	w <- .RGtkCall("S_gdk_pixbuf_get_file_info", filename, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkPixbufFormatGetName <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkPixbufFormat")

	w <- .RGtkCall("S_gdk_pixbuf_format_get_name", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkPixbufFormatIsScalable <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkPixbufFormat")

	w <- .RGtkCall("S_gdk_pixbuf_format_is_scalable", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkPixbufFormatIsDisabled <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkPixbufFormat")

	w <- .RGtkCall("S_gdk_pixbuf_format_is_disabled", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkPixbufFormatSetDisabled <-
function(object, disabled, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkPixbufFormat")
	disabled <- as.logical(disabled)

	w <- .RGtkCall("S_gdk_pixbuf_format_set_disabled", object, disabled, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkPixbufFormatGetLicense <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkPixbufFormat")

	w <- .RGtkCall("S_gdk_pixbuf_format_get_license", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkPixbufFormatGetDescription <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkPixbufFormat")

	w <- .RGtkCall("S_gdk_pixbuf_format_get_description", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkPixbufFormatGetMimeTypes <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkPixbufFormat")

	w <- .RGtkCall("S_gdk_pixbuf_format_get_mime_types", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkPixbufFormatGetExtensions <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkPixbufFormat")

	w <- .RGtkCall("S_gdk_pixbuf_format_get_extensions", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkPixbufFormatIsWritable <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkPixbufFormat")

	w <- .RGtkCall("S_gdk_pixbuf_format_is_writable", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkPixbufLoaderGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gdk_pixbuf_loader_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkPixbufLoaderNew <-
function(.flush = TRUE, .depwarn = TRUE)
{
	if (.depwarn)
		warning("This function is deprecated: use gtk.gdk.PixbufLoader instead")

	

	w <- .RGtkCall("S_gdk_pixbuf_loader_new", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkPixbufLoaderNewWithType <-
function(image.type, .flush = TRUE, .depwarn = TRUE, .errwarn = TRUE)
{
	image.type <- as.character(image.type)

	w <- .RGtkCall("S_gdk_pixbuf_loader_new_with_type", image.type, PACKAGE = "RGtk2", .flush = .flush)

	if(.errwarn && !is.null(w$error))
		warning(w$error[["message"]])

	return(w)
} 


gdkPixbufLoaderNewWithMimeType <-
function(mime.type, .flush = TRUE, .depwarn = TRUE, .errwarn = TRUE)
{
	mime.type <- as.character(mime.type)

	w <- .RGtkCall("S_gdk_pixbuf_loader_new_with_mime_type", mime.type, PACKAGE = "RGtk2", .flush = .flush)

	if(.errwarn && !is.null(w$error))
		warning(w$error[["message"]])

	return(w)
} 


gdkPixbufLoaderWrite <-
function(object, buf, .flush = TRUE, .depwarn = TRUE, .errwarn = TRUE)
{
	checkPtrType(object, "GdkPixbufLoader")
	buf <- as.list(as.integer(buf))

	w <- .RGtkCall("S_gdk_pixbuf_loader_write", object, buf, PACKAGE = "RGtk2", .flush = .flush)

	if(.errwarn && !is.null(w$error))
		warning(w$error[["message"]])

	return(w)
} 


gdkPixbufLoaderGetPixbuf <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkPixbufLoader")

	w <- .RGtkCall("S_gdk_pixbuf_loader_get_pixbuf", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkPixbufLoaderGetAnimation <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkPixbufLoader")

	w <- .RGtkCall("S_gdk_pixbuf_loader_get_animation", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkPixbufLoaderClose <-
function(object, .flush = TRUE, .depwarn = TRUE, .errwarn = TRUE)
{
	checkPtrType(object, "GdkPixbufLoader")

	w <- .RGtkCall("S_gdk_pixbuf_loader_close", object, PACKAGE = "RGtk2", .flush = .flush)

	if(.errwarn && !is.null(w$error))
		warning(w$error[["message"]])

	return(w)
} 


gdkPixbufLoaderSetSize <-
function(object, width, height, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkPixbufLoader")
	width <- as.integer(width)
	height <- as.integer(height)

	w <- .RGtkCall("S_gdk_pixbuf_loader_set_size", object, width, height, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkPixbufLoaderGetFormat <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkPixbufLoader")

	w <- .RGtkCall("S_gdk_pixbuf_loader_get_format", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkRectangleIntersect <-
function(src1, src2, .flush = TRUE, .depwarn = TRUE)
{
	src1 <- as.GdkRectangle(src1)
	src2 <- as.GdkRectangle(src2)

	w <- .RGtkCall("S_gdk_rectangle_intersect", src1, src2, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkRectangleUnion <-
function(src1, src2, .flush = TRUE, .depwarn = TRUE)
{
	src1 <- as.GdkRectangle(src1)
	src2 <- as.GdkRectangle(src2)

	w <- .RGtkCall("S_gdk_rectangle_union", src1, src2, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkRegionNew <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gdk_region_new", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkRegionPolygon <-
function(points, fill.rule, .flush = TRUE, .depwarn = TRUE)
{
	points <- lapply(points, function(x) { x <- as.GdkPoint(x); x })
	

	w <- .RGtkCall("S_gdk_region_polygon", points, fill.rule, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkRegionCopy <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkRegion")

	w <- .RGtkCall("S_gdk_region_copy", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkRegionRectangle <-
function(rectangle, .flush = TRUE, .depwarn = TRUE)
{
	rectangle <- as.GdkRectangle(rectangle)

	w <- .RGtkCall("S_gdk_region_rectangle", rectangle, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkRegionGetClipbox <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkRegion")

	w <- .RGtkCall("S_gdk_region_get_clipbox", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkRegionGetRectangles <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkRegion")

	w <- .RGtkCall("S_gdk_region_get_rectangles", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkRegionEmpty <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkRegion")

	w <- .RGtkCall("S_gdk_region_empty", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkRegionEqual <-
function(object, region2, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkRegion")
	checkPtrType(region2, "GdkRegion")

	w <- .RGtkCall("S_gdk_region_equal", object, region2, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkRegionPointIn <-
function(object, x, y, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkRegion")
	x <- as.integer(x)
	y <- as.integer(y)

	w <- .RGtkCall("S_gdk_region_point_in", object, x, y, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkRegionRectIn <-
function(object, rect, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkRegion")
	rect <- as.GdkRectangle(rect)

	w <- .RGtkCall("S_gdk_region_rect_in", object, rect, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gdkRegionOffset <-
function(object, dx, dy, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkRegion")
	dx <- as.integer(dx)
	dy <- as.integer(dy)

	w <- .RGtkCall("S_gdk_region_offset", object, dx, dy, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkRegionShrink <-
function(object, dx, dy, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkRegion")
	dx <- as.integer(dx)
	dy <- as.integer(dy)

	w <- .RGtkCall("S_gdk_region_shrink", object, dx, dy, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkRegionUnionWithRect <-
function(object, rect, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkRegion")
	rect <- as.GdkRectangle(rect)

	w <- .RGtkCall("S_gdk_region_union_with_rect", object, rect, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkRegionIntersect <-
function(object, source2, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkRegion")
	checkPtrType(source2, "GdkRegion")

	w <- .RGtkCall("S_gdk_region_intersect", object, source2, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkRegionUnion <-
function(object, source2, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkRegion")
	checkPtrType(source2, "GdkRegion")

	w <- .RGtkCall("S_gdk_region_union", object, source2, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkRegionSubtract <-
function(object, source2, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkRegion")
	checkPtrType(source2, "GdkRegion")

	w <- .RGtkCall("S_gdk_region_subtract", object, source2, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkRegionXor <-
function(object, source2, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkRegion")
	checkPtrType(source2, "GdkRegion")

	w <- .RGtkCall("S_gdk_region_xor", object, source2, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gdkRegionSpansIntersectForeach <-
function(object, spans, sorted, fun, data, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GdkRegion")
	spans <- lapply(spans, function(x) { x <- as.GdkSpan(x); x })
	sorted <- as.logical(sorted)
	fun <- as.function(fun)
	

	w <- .RGtkCall("S_gdk_region_spans_intersect_foreach", object, spans, sorted, fun, data, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 

