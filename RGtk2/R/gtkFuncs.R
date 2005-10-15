
gtkObjectType <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkObject")

	w <- .RGtkCall("S_GTK_OBJECT_TYPE", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkCheckType <-
function(object, type, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkObject")
	type <- as.numeric(type)

	w <- .RGtkCall("S_GTK_CHECK_TYPE", object, type, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkObjectFlags <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkObject")

	w <- .RGtkCall("S_GTK_OBJECT_FLAGS", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkWidgetSetFlags <-
function(wid, flags, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(wid, "GtkWidget")
	

	w <- .RGtkCall("S_GTK_WIDGET_SET_FLAGS", wid, flags, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkAboutDialogGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_about_dialog_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkAboutDialogNew <-
function(show = TRUE, .flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_about_dialog_new", PACKAGE = "RGtk2", .flush = .flush)

	if(show)
		gtkWidgetShowAll(w)

	return(w)
} 


gtkAboutDialogGetName <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkAboutDialog")

	w <- .RGtkCall("S_gtk_about_dialog_get_name", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkAboutDialogSetName <-
function(object, name = NULL, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkAboutDialog")
	if (!is.null( name )) name <- as.character(name)

	w <- .RGtkCall("S_gtk_about_dialog_set_name", object, name, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkAboutDialogGetVersion <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkAboutDialog")

	w <- .RGtkCall("S_gtk_about_dialog_get_version", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkAboutDialogSetVersion <-
function(object, version = NULL, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkAboutDialog")
	if (!is.null( version )) version <- as.character(version)

	w <- .RGtkCall("S_gtk_about_dialog_set_version", object, version, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkAboutDialogGetCopyright <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkAboutDialog")

	w <- .RGtkCall("S_gtk_about_dialog_get_copyright", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkAboutDialogSetCopyright <-
function(object, copyright = NULL, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkAboutDialog")
	if (!is.null( copyright )) copyright <- as.character(copyright)

	w <- .RGtkCall("S_gtk_about_dialog_set_copyright", object, copyright, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkAboutDialogGetComments <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkAboutDialog")

	w <- .RGtkCall("S_gtk_about_dialog_get_comments", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkAboutDialogSetComments <-
function(object, comments = NULL, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkAboutDialog")
	if (!is.null( comments )) comments <- as.character(comments)

	w <- .RGtkCall("S_gtk_about_dialog_set_comments", object, comments, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkAboutDialogGetLicense <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkAboutDialog")

	w <- .RGtkCall("S_gtk_about_dialog_get_license", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkAboutDialogSetLicense <-
function(object, license = NULL, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkAboutDialog")
	if (!is.null( license )) license <- as.character(license)

	w <- .RGtkCall("S_gtk_about_dialog_set_license", object, license, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkAboutDialogGetWrapLicense <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkAboutDialog")

	w <- .RGtkCall("S_gtk_about_dialog_get_wrap_license", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkAboutDialogSetWrapLicense <-
function(object, wrap.license, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkAboutDialog")
	wrap.license <- as.logical(wrap.license)

	w <- .RGtkCall("S_gtk_about_dialog_set_wrap_license", object, wrap.license, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkAboutDialogGetWebsite <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkAboutDialog")

	w <- .RGtkCall("S_gtk_about_dialog_get_website", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkAboutDialogSetWebsite <-
function(object, website = NULL, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkAboutDialog")
	if (!is.null( website )) website <- as.character(website)

	w <- .RGtkCall("S_gtk_about_dialog_set_website", object, website, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkAboutDialogGetWebsiteLabel <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkAboutDialog")

	w <- .RGtkCall("S_gtk_about_dialog_get_website_label", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkAboutDialogSetWebsiteLabel <-
function(object, website.label = NULL, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkAboutDialog")
	if (!is.null( website.label )) website.label <- as.character(website.label)

	w <- .RGtkCall("S_gtk_about_dialog_set_website_label", object, website.label, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkAboutDialogGetAuthors <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkAboutDialog")

	w <- .RGtkCall("S_gtk_about_dialog_get_authors", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkAboutDialogSetAuthors <-
function(object, authors, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkAboutDialog")
	authors <- as.list(as.character(authors))

	w <- .RGtkCall("S_gtk_about_dialog_set_authors", object, authors, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkAboutDialogGetDocumenters <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkAboutDialog")

	w <- .RGtkCall("S_gtk_about_dialog_get_documenters", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkAboutDialogSetDocumenters <-
function(object, documenters, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkAboutDialog")
	documenters <- as.list(as.character(documenters))

	w <- .RGtkCall("S_gtk_about_dialog_set_documenters", object, documenters, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkAboutDialogGetArtists <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkAboutDialog")

	w <- .RGtkCall("S_gtk_about_dialog_get_artists", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkAboutDialogSetArtists <-
function(object, artists, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkAboutDialog")
	artists <- as.list(as.character(artists))

	w <- .RGtkCall("S_gtk_about_dialog_set_artists", object, artists, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkAboutDialogGetTranslatorCredits <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkAboutDialog")

	w <- .RGtkCall("S_gtk_about_dialog_get_translator_credits", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkAboutDialogSetTranslatorCredits <-
function(object, translator.credits = NULL, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkAboutDialog")
	if (!is.null( translator.credits )) translator.credits <- as.character(translator.credits)

	w <- .RGtkCall("S_gtk_about_dialog_set_translator_credits", object, translator.credits, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkAboutDialogGetLogo <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkAboutDialog")

	w <- .RGtkCall("S_gtk_about_dialog_get_logo", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkAboutDialogSetLogo <-
function(object, logo = NULL, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkAboutDialog")
	if (!is.null( logo )) checkPtrType(logo, "GdkPixbuf")

	w <- .RGtkCall("S_gtk_about_dialog_set_logo", object, logo, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkAboutDialogGetLogoIconName <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkAboutDialog")

	w <- .RGtkCall("S_gtk_about_dialog_get_logo_icon_name", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkAboutDialogSetLogoIconName <-
function(object, icon.name = NULL, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkAboutDialog")
	if (!is.null( icon.name )) icon.name <- as.character(icon.name)

	w <- .RGtkCall("S_gtk_about_dialog_set_logo_icon_name", object, icon.name, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkAboutDialogSetEmailHook <-
function(func, data = NULL, .flush = TRUE, .depwarn = TRUE)
{
	func <- as.function(func)
	

	w <- .RGtkCall("S_gtk_about_dialog_set_email_hook", func, data, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkAboutDialogSetUrlHook <-
function(func, data = NULL, .flush = TRUE, .depwarn = TRUE)
{
	func <- as.function(func)
	

	w <- .RGtkCall("S_gtk_about_dialog_set_url_hook", func, data, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkAccelGroupGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_accel_group_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkAccelGroupNew <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_accel_group_new", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkAccelGroupLock <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkAccelGroup")

	w <- .RGtkCall("S_gtk_accel_group_lock", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkAccelGroupUnlock <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkAccelGroup")

	w <- .RGtkCall("S_gtk_accel_group_unlock", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkAccelGroupConnect <-
function(object, accel.key, accel.mods, accel.flags, closure, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkAccelGroup")
	accel.key <- as.numeric(accel.key)
	
	
	closure <- as.GClosure(closure)

	w <- .RGtkCall("S_gtk_accel_group_connect", object, accel.key, accel.mods, accel.flags, closure, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkAccelGroupConnectByPath <-
function(object, accel.path, closure, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkAccelGroup")
	accel.path <- as.character(accel.path)
	closure <- as.GClosure(closure)

	w <- .RGtkCall("S_gtk_accel_group_connect_by_path", object, accel.path, closure, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkAccelGroupDisconnect <-
function(object, closure, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkAccelGroup")
	closure <- as.GClosure(closure)

	w <- .RGtkCall("S_gtk_accel_group_disconnect", object, closure, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkAccelGroupDisconnectKey <-
function(object, accel.key, accel.mods, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkAccelGroup")
	accel.key <- as.numeric(accel.key)
	

	w <- .RGtkCall("S_gtk_accel_group_disconnect_key", object, accel.key, accel.mods, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkAccelGroupActivate <-
function(object, accel.quark, acceleratable, accel.key, accel.mods, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkAccelGroup")
	accel.quark <- as.GQuark(accel.quark)
	checkPtrType(acceleratable, "GObject")
	accel.key <- as.numeric(accel.key)
	

	w <- .RGtkCall("S_gtk_accel_group_activate", object, accel.quark, acceleratable, accel.key, accel.mods, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkAccelGroupsActivate <-
function(object, accel.key, accel.mods, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GObject")
	accel.key <- as.numeric(accel.key)
	

	w <- .RGtkCall("S_gtk_accel_groups_activate", object, accel.key, accel.mods, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkAccelGroupsFromObject <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GObject")

	w <- .RGtkCall("S_gtk_accel_groups_from_object", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkAccelGroupFind <-
function(object, find.func, data = NULL, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkAccelGroup")
	find.func <- as.function(find.func)
	

	w <- .RGtkCall("S_gtk_accel_group_find", object, find.func, data, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkAccelGroupFromAccelClosure <-
function(closure, .flush = TRUE, .depwarn = TRUE)
{
	closure <- as.GClosure(closure)

	w <- .RGtkCall("S_gtk_accel_group_from_accel_closure", closure, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkAcceleratorValid <-
function(keyval, modifiers, .flush = TRUE, .depwarn = TRUE)
{
	keyval <- as.numeric(keyval)
	

	w <- .RGtkCall("S_gtk_accelerator_valid", keyval, modifiers, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkAcceleratorParse <-
function(accelerator, .flush = TRUE, .depwarn = TRUE)
{
	accelerator <- as.character(accelerator)

	w <- .RGtkCall("S_gtk_accelerator_parse", accelerator, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkAcceleratorName <-
function(accelerator.key, accelerator.mods, .flush = TRUE, .depwarn = TRUE)
{
	accelerator.key <- as.numeric(accelerator.key)
	

	w <- .RGtkCall("S_gtk_accelerator_name", accelerator.key, accelerator.mods, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkAcceleratorSetDefaultModMask <-
function(default.mod.mask, .flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_accelerator_set_default_mod_mask", default.mod.mask, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkAcceleratorGetDefaultModMask <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_accelerator_get_default_mod_mask", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkAcceleratorGetLabel <-
function(accelerator.key, accelerator.mods, .flush = TRUE, .depwarn = TRUE)
{
	accelerator.key <- as.numeric(accelerator.key)
	

	w <- .RGtkCall("S_gtk_accelerator_get_label", accelerator.key, accelerator.mods, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkAccelLabelGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_accel_label_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkAccelLabelNew <-
function(string = NULL, show = TRUE, .flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_accel_label_new", string, PACKAGE = "RGtk2", .flush = .flush)

	if(show)
		gtkWidgetShowAll(w)

	return(w)
} 


gtkAccelLabelAcceleratorWidth <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	if (.depwarn)
		warning("This function is deprecated: use GtkAccelLabel.get_accel_width")

	checkPtrType(object, "GtkAccelLabel")

	w <- .RGtkCall("S_gtk_accel_label_accelerator_width", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkAccelLabelGetAccelWidget <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkAccelLabel")

	w <- .RGtkCall("S_gtk_accel_label_get_accel_widget", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkAccelLabelGetAccelWidth <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkAccelLabel")

	w <- .RGtkCall("S_gtk_accel_label_get_accel_width", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkAccelLabelSetAccelWidget <-
function(object, accel.widget, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkAccelLabel")
	checkPtrType(accel.widget, "GtkWidget")

	w <- .RGtkCall("S_gtk_accel_label_set_accel_widget", object, accel.widget, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkAccelLabelSetAccelClosure <-
function(object, accel.closure, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkAccelLabel")
	accel.closure <- as.GClosure(accel.closure)

	w <- .RGtkCall("S_gtk_accel_label_set_accel_closure", object, accel.closure, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkAccelLabelRefetch <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkAccelLabel")

	w <- .RGtkCall("S_gtk_accel_label_refetch", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkAccelMapAddEntry <-
function(accel.path, accel.key, accel.mods, .flush = TRUE, .depwarn = TRUE)
{
	accel.path <- as.character(accel.path)
	accel.key <- as.numeric(accel.key)
	

	w <- .RGtkCall("S_gtk_accel_map_add_entry", accel.path, accel.key, accel.mods, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkAccelMapLookupEntry <-
function(accel.path, .flush = TRUE, .depwarn = TRUE)
{
	accel.path <- as.character(accel.path)

	w <- .RGtkCall("S_gtk_accel_map_lookup_entry", accel.path, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkAccelMapChangeEntry <-
function(accel.path, accel.key, accel.mods, replace, .flush = TRUE, .depwarn = TRUE)
{
	accel.path <- as.character(accel.path)
	accel.key <- as.numeric(accel.key)
	
	replace <- as.logical(replace)

	w <- .RGtkCall("S_gtk_accel_map_change_entry", accel.path, accel.key, accel.mods, replace, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkAccelMapLoad <-
function(file.name, .flush = TRUE, .depwarn = TRUE)
{
	file.name <- as.character(file.name)

	w <- .RGtkCall("S_gtk_accel_map_load", file.name, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkAccelMapSave <-
function(file.name, .flush = TRUE, .depwarn = TRUE)
{
	file.name <- as.character(file.name)

	w <- .RGtkCall("S_gtk_accel_map_save", file.name, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkAccelMapForeach <-
function(data = NULL, foreach.func, .flush = TRUE, .depwarn = TRUE)
{
	
	foreach.func <- as.function(foreach.func)

	w <- .RGtkCall("S_gtk_accel_map_foreach", data, foreach.func, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkAccelMapLoadFd <-
function(fd, .flush = TRUE, .depwarn = TRUE)
{
	fd <- as.integer(fd)

	w <- .RGtkCall("S_gtk_accel_map_load_fd", fd, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkAccelMapLoadScanner <-
function(scanner, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(scanner, "GScanner")

	w <- .RGtkCall("S_gtk_accel_map_load_scanner", scanner, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkAccelMapSaveFd <-
function(fd, .flush = TRUE, .depwarn = TRUE)
{
	fd <- as.integer(fd)

	w <- .RGtkCall("S_gtk_accel_map_save_fd", fd, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkAccelMapLockPath <-
function(accel.path, .flush = TRUE, .depwarn = TRUE)
{
	accel.path <- as.character(accel.path)

	w <- .RGtkCall("S_gtk_accel_map_lock_path", accel.path, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkAccelMapUnlockPath <-
function(accel.path, .flush = TRUE, .depwarn = TRUE)
{
	accel.path <- as.character(accel.path)

	w <- .RGtkCall("S_gtk_accel_map_unlock_path", accel.path, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkAccelMapAddFilter <-
function(filter.pattern, .flush = TRUE, .depwarn = TRUE)
{
	filter.pattern <- as.character(filter.pattern)

	w <- .RGtkCall("S_gtk_accel_map_add_filter", filter.pattern, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkAccelMapForeachUnfiltered <-
function(data = NULL, foreach.func, .flush = TRUE, .depwarn = TRUE)
{
	
	foreach.func <- as.function(foreach.func)

	w <- .RGtkCall("S_gtk_accel_map_foreach_unfiltered", data, foreach.func, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkAccelMapGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_accel_map_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkAccelMapGet <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_accel_map_get", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkAccessibleGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_accessible_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkAccessibleConnectWidgetDestroyed <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkAccessible")

	w <- .RGtkCall("S_gtk_accessible_connect_widget_destroyed", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkActionGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_action_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkActionNew <-
function(name = NULL, label = NULL, tooltip = NULL, stock.id = NULL, .flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_action_new", name, label, tooltip, stock.id, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkActionGetName <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkAction")

	w <- .RGtkCall("S_gtk_action_get_name", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkActionIsSensitive <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkAction")

	w <- .RGtkCall("S_gtk_action_is_sensitive", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkActionGetSensitive <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkAction")

	w <- .RGtkCall("S_gtk_action_get_sensitive", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkActionIsVisible <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkAction")

	w <- .RGtkCall("S_gtk_action_is_visible", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkActionGetVisible <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkAction")

	w <- .RGtkCall("S_gtk_action_get_visible", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkActionActivate <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkAction")

	w <- .RGtkCall("S_gtk_action_activate", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkActionCreateIcon <-
function(object, icon.size, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkAction")
	

	w <- .RGtkCall("S_gtk_action_create_icon", object, icon.size, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkActionCreateMenuItem <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkAction")

	w <- .RGtkCall("S_gtk_action_create_menu_item", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkActionCreateToolItem <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkAction")

	w <- .RGtkCall("S_gtk_action_create_tool_item", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkActionConnectProxy <-
function(object, proxy, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkAction")
	checkPtrType(proxy, "GtkWidget")

	w <- .RGtkCall("S_gtk_action_connect_proxy", object, proxy, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkActionDisconnectProxy <-
function(object, proxy, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkAction")
	checkPtrType(proxy, "GtkWidget")

	w <- .RGtkCall("S_gtk_action_disconnect_proxy", object, proxy, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkActionGetProxies <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkAction")

	w <- .RGtkCall("S_gtk_action_get_proxies", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkActionConnectAccelerator <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkAction")

	w <- .RGtkCall("S_gtk_action_connect_accelerator", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkActionDisconnectAccelerator <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkAction")

	w <- .RGtkCall("S_gtk_action_disconnect_accelerator", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkActionGetAccelPath <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkAction")

	w <- .RGtkCall("S_gtk_action_get_accel_path", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkActionGetAccelClosure <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkAction")

	w <- .RGtkCall("S_gtk_action_get_accel_closure", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkActionBlockActivateFrom <-
function(object, proxy, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkAction")
	checkPtrType(proxy, "GtkWidget")

	w <- .RGtkCall("S_gtk_action_block_activate_from", object, proxy, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkActionUnblockActivateFrom <-
function(object, proxy, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkAction")
	checkPtrType(proxy, "GtkWidget")

	w <- .RGtkCall("S_gtk_action_unblock_activate_from", object, proxy, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkActionSetAccelPath <-
function(object, accel.path, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkAction")
	accel.path <- as.character(accel.path)

	w <- .RGtkCall("S_gtk_action_set_accel_path", object, accel.path, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkActionSetAccelGroup <-
function(object, accel.group, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkAction")
	checkPtrType(accel.group, "GtkAccelGroup")

	w <- .RGtkCall("S_gtk_action_set_accel_group", object, accel.group, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkActionSetSensitive <-
function(object, sensitive, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkAction")
	sensitive <- as.logical(sensitive)

	w <- .RGtkCall("S_gtk_action_set_sensitive", object, sensitive, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkActionSetVisible <-
function(object, visible, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkAction")
	visible <- as.logical(visible)

	w <- .RGtkCall("S_gtk_action_set_visible", object, visible, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkActionGroupGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_action_group_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkActionGroupNew <-
function(name = NULL, .flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_action_group_new", name, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkActionGroupGetName <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkActionGroup")

	w <- .RGtkCall("S_gtk_action_group_get_name", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkActionGroupGetSensitive <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkActionGroup")

	w <- .RGtkCall("S_gtk_action_group_get_sensitive", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkActionGroupSetSensitive <-
function(object, sensitive, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkActionGroup")
	sensitive <- as.logical(sensitive)

	w <- .RGtkCall("S_gtk_action_group_set_sensitive", object, sensitive, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkActionGroupGetVisible <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkActionGroup")

	w <- .RGtkCall("S_gtk_action_group_get_visible", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkActionGroupSetVisible <-
function(object, visible, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkActionGroup")
	visible <- as.logical(visible)

	w <- .RGtkCall("S_gtk_action_group_set_visible", object, visible, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkActionGroupGetAction <-
function(object, action.name, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkActionGroup")
	action.name <- as.character(action.name)

	w <- .RGtkCall("S_gtk_action_group_get_action", object, action.name, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkActionGroupListActions <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkActionGroup")

	w <- .RGtkCall("S_gtk_action_group_list_actions", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkActionGroupAddAction <-
function(object, action, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkActionGroup")
	checkPtrType(action, "GtkAction")

	w <- .RGtkCall("S_gtk_action_group_add_action", object, action, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkActionGroupAddActionWithAccel <-
function(object, action, accelerator = NULL, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkActionGroup")
	checkPtrType(action, "GtkAction")
	if (!is.null( accelerator )) accelerator <- as.character(accelerator)

	w <- .RGtkCall("S_gtk_action_group_add_action_with_accel", object, action, accelerator, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkActionGroupRemoveAction <-
function(object, action, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkActionGroup")
	checkPtrType(action, "GtkAction")

	w <- .RGtkCall("S_gtk_action_group_remove_action", object, action, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkActionGroupAddActions <-
function(object, entries, user.data = NULL, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkActionGroup")
	entries <- lapply(entries, function(x) { x <- as.GtkActionEntry(x); x })
	

	w <- .RGtkCall("S_gtk_action_group_add_actions", object, entries, user.data, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkActionGroupAddToggleActions <-
function(object, entries, user.data = NULL, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkActionGroup")
	entries <- lapply(entries, function(x) { x <- as.GtkToggleActionEntry(x); x })
	

	w <- .RGtkCall("S_gtk_action_group_add_toggle_actions", object, entries, user.data, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkActionGroupAddRadioActions <-
function(object, entries, value, on.change = NULL, user.data = NULL, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkActionGroup")
	entries <- lapply(entries, function(x) { x <- as.GtkRadioActionEntry(x); x })
	value <- as.integer(value)
	on.change <- as.function(on.change)
	

	w <- .RGtkCall("S_gtk_action_group_add_radio_actions", object, entries, value, on.change, user.data, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkActionGroupAddActionsFull <-
function(object, entries, user.data = NULL, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkActionGroup")
	entries <- lapply(entries, function(x) { x <- as.GtkActionEntry(x); x })
	

	w <- .RGtkCall("S_gtk_action_group_add_actions_full", object, entries, user.data, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkActionGroupAddToggleActionsFull <-
function(object, entries, user.data = NULL, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkActionGroup")
	entries <- lapply(entries, function(x) { x <- as.GtkToggleActionEntry(x); x })
	

	w <- .RGtkCall("S_gtk_action_group_add_toggle_actions_full", object, entries, user.data, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkActionGroupAddRadioActionsFull <-
function(object, entries, value, on.change = NULL, user.data = NULL, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkActionGroup")
	entries <- lapply(entries, function(x) { x <- as.GtkRadioActionEntry(x); x })
	value <- as.integer(value)
	on.change <- as.function(on.change)
	

	w <- .RGtkCall("S_gtk_action_group_add_radio_actions_full", object, entries, value, on.change, user.data, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkActionGroupSetTranslateFunc <-
function(object, func, data = NULL, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkActionGroup")
	func <- as.function(func)
	

	w <- .RGtkCall("S_gtk_action_group_set_translate_func", object, func, data, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkActionGroupSetTranslationDomain <-
function(object, domain, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkActionGroup")
	domain <- as.character(domain)

	w <- .RGtkCall("S_gtk_action_group_set_translation_domain", object, domain, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkActionGroupTranslateString <-
function(object, string, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkActionGroup")
	string <- as.character(string)

	w <- .RGtkCall("S_gtk_action_group_translate_string", object, string, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkAdjustmentGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_adjustment_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkAdjustmentNew <-
function(value = NULL, lower = NULL, upper = NULL, step.incr = NULL, page.incr = NULL, page.size = NULL, .flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_adjustment_new", value, lower, upper, step.incr, page.incr, page.size, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkAdjustmentChanged <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkAdjustment")

	w <- .RGtkCall("S_gtk_adjustment_changed", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkAdjustmentValueChanged <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkAdjustment")

	w <- .RGtkCall("S_gtk_adjustment_value_changed", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkAdjustmentClampPage <-
function(object, lower, upper, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkAdjustment")
	lower <- as.numeric(lower)
	upper <- as.numeric(upper)

	w <- .RGtkCall("S_gtk_adjustment_clamp_page", object, lower, upper, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkAdjustmentGetValue <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkAdjustment")

	w <- .RGtkCall("S_gtk_adjustment_get_value", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkAdjustmentSetValue <-
function(object, value, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkAdjustment")
	value <- as.numeric(value)

	w <- .RGtkCall("S_gtk_adjustment_set_value", object, value, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkAlignmentGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_alignment_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkAlignmentNew <-
function(xalign = NULL, yalign = NULL, xscale = NULL, yscale = NULL, show = TRUE, .flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_alignment_new", xalign, yalign, xscale, yscale, PACKAGE = "RGtk2", .flush = .flush)

	if(show)
		gtkWidgetShowAll(w)

	return(w)
} 


gtkAlignmentSet <-
function(object, xalign, yalign, xscale, yscale, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkAlignment")
	xalign <- as.numeric(xalign)
	yalign <- as.numeric(yalign)
	xscale <- as.numeric(xscale)
	yscale <- as.numeric(yscale)

	w <- .RGtkCall("S_gtk_alignment_set", object, xalign, yalign, xscale, yscale, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkAlignmentSetPadding <-
function(object, padding.top, padding.bottom, padding.left, padding.right, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkAlignment")
	padding.top <- as.numeric(padding.top)
	padding.bottom <- as.numeric(padding.bottom)
	padding.left <- as.numeric(padding.left)
	padding.right <- as.numeric(padding.right)

	w <- .RGtkCall("S_gtk_alignment_set_padding", object, padding.top, padding.bottom, padding.left, padding.right, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkAlignmentGetPadding <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkAlignment")

	w <- .RGtkCall("S_gtk_alignment_get_padding", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkArrowGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_arrow_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkArrowNew <-
function(arrow.type = NULL, shadow.type = NULL, show = TRUE, .flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_arrow_new", arrow.type, shadow.type, PACKAGE = "RGtk2", .flush = .flush)

	if(show)
		gtkWidgetShowAll(w)

	return(w)
} 


gtkArrowSet <-
function(object, arrow.type, shadow.type, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkArrow")
	
	

	w <- .RGtkCall("S_gtk_arrow_set", object, arrow.type, shadow.type, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkAspectFrameGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_aspect_frame_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkAspectFrameNew <-
function(label = NULL, xalign = NULL, yalign = NULL, ratio = NULL, obey.child = NULL, show = TRUE, .flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_aspect_frame_new", label, xalign, yalign, ratio, obey.child, PACKAGE = "RGtk2", .flush = .flush)

	if(show)
		gtkWidgetShowAll(w)

	return(w)
} 


gtkAspectFrameSet <-
function(object, xalign = "0.0", yalign = "0.0", ratio = "1.0", obey.child = "1", .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkAspectFrame")
	xalign <- as.numeric(xalign)
	yalign <- as.numeric(yalign)
	ratio <- as.numeric(ratio)
	obey.child <- as.logical(obey.child)

	w <- .RGtkCall("S_gtk_aspect_frame_set", object, xalign, yalign, ratio, obey.child, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkButtonBoxGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_button_box_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkButtonBoxGetLayout <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkButtonBox")

	w <- .RGtkCall("S_gtk_button_box_get_layout", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkButtonBoxSetLayout <-
function(object, layout.style, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkButtonBox")
	

	w <- .RGtkCall("S_gtk_button_box_set_layout", object, layout.style, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkButtonBoxGetChildSecondary <-
function(object, child, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkButtonBox")
	checkPtrType(child, "GtkWidget")

	w <- .RGtkCall("S_gtk_button_box_get_child_secondary", object, child, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkButtonBoxSetChildSecondary <-
function(object, child, is.secondary, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkButtonBox")
	checkPtrType(child, "GtkWidget")
	is.secondary <- as.logical(is.secondary)

	w <- .RGtkCall("S_gtk_button_box_set_child_secondary", object, child, is.secondary, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkButtonBoxSetChildSize <-
function(object, min.width, min.height, .flush = TRUE, .depwarn = TRUE)
{
	if (.depwarn)
		warning("This function is deprecated: don't use this")

	checkPtrType(object, "GtkButtonBox")
	min.width <- as.integer(min.width)
	min.height <- as.integer(min.height)

	w <- .RGtkCall("S_gtk_button_box_set_child_size", object, min.width, min.height, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkButtonBoxSetChildIpadding <-
function(object, ipad.x, ipad.y, .flush = TRUE, .depwarn = TRUE)
{
	if (.depwarn)
		warning("This function is deprecated: don't use this")

	checkPtrType(object, "GtkButtonBox")
	ipad.x <- as.integer(ipad.x)
	ipad.y <- as.integer(ipad.y)

	w <- .RGtkCall("S_gtk_button_box_set_child_ipadding", object, ipad.x, ipad.y, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkButtonBoxGetChildSize <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	if (.depwarn)
		warning("This function is deprecated: don't use this")

	checkPtrType(object, "GtkButtonBox")

	w <- .RGtkCall("S_gtk_button_box_get_child_size", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkButtonBoxGetChildIpadding <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	if (.depwarn)
		warning("This function is deprecated: don't use this")

	checkPtrType(object, "GtkButtonBox")

	w <- .RGtkCall("S_gtk_button_box_get_child_ipadding", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkBinGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_bin_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkBinGetChild <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkBin")

	w <- .RGtkCall("S_gtk_bin_get_child", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkBoxGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_box_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkBoxPackStart <-
function(object, child, expand = "TRUE", fill = "TRUE", padding = "0", .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkBox")
	checkPtrType(child, "GtkWidget")
	expand <- as.logical(expand)
	fill <- as.logical(fill)
	padding <- as.numeric(padding)

	w <- .RGtkCall("S_gtk_box_pack_start", object, child, expand, fill, padding, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkBoxPackEnd <-
function(object, child, expand = "TRUE", fill = "TRUE", padding = "0", .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkBox")
	checkPtrType(child, "GtkWidget")
	expand <- as.logical(expand)
	fill <- as.logical(fill)
	padding <- as.numeric(padding)

	w <- .RGtkCall("S_gtk_box_pack_end", object, child, expand, fill, padding, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkBoxPackStartDefaults <-
function(object, widget, .flush = TRUE, .depwarn = TRUE)
{
	if (.depwarn)
		warning("This function is deprecated: use pack_start instead")

	checkPtrType(object, "GtkBox")
	checkPtrType(widget, "GtkWidget")

	w <- .RGtkCall("S_gtk_box_pack_start_defaults", object, widget, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkBoxPackEndDefaults <-
function(object, widget, .flush = TRUE, .depwarn = TRUE)
{
	if (.depwarn)
		warning("This function is deprecated: use pack_end instead")

	checkPtrType(object, "GtkBox")
	checkPtrType(widget, "GtkWidget")

	w <- .RGtkCall("S_gtk_box_pack_end_defaults", object, widget, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkBoxSetHomogeneous <-
function(object, homogeneous, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkBox")
	homogeneous <- as.logical(homogeneous)

	w <- .RGtkCall("S_gtk_box_set_homogeneous", object, homogeneous, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkBoxGetHomogeneous <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkBox")

	w <- .RGtkCall("S_gtk_box_get_homogeneous", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkBoxSetSpacing <-
function(object, spacing, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkBox")
	spacing <- as.integer(spacing)

	w <- .RGtkCall("S_gtk_box_set_spacing", object, spacing, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkBoxGetSpacing <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkBox")

	w <- .RGtkCall("S_gtk_box_get_spacing", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkBoxReorderChild <-
function(object, child, position, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkBox")
	checkPtrType(child, "GtkWidget")
	position <- as.integer(position)

	w <- .RGtkCall("S_gtk_box_reorder_child", object, child, position, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkBoxQueryChildPacking <-
function(object, child, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkBox")
	checkPtrType(child, "GtkWidget")

	w <- .RGtkCall("S_gtk_box_query_child_packing", object, child, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkBoxSetChildPacking <-
function(object, child, expand, fill, padding, pack.type, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkBox")
	checkPtrType(child, "GtkWidget")
	expand <- as.logical(expand)
	fill <- as.logical(fill)
	padding <- as.numeric(padding)
	

	w <- .RGtkCall("S_gtk_box_set_child_packing", object, child, expand, fill, padding, pack.type, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkButtonGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_button_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkButtonNew <-
function(show = TRUE, .flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_button_new", PACKAGE = "RGtk2", .flush = .flush)

	if(show)
		gtkWidgetShowAll(w)

	return(w)
} 


gtkButtonNewWithLabel <-
function(label, show = TRUE, .flush = TRUE, .depwarn = TRUE)
{
	label <- as.character(label)

	w <- .RGtkCall("S_gtk_button_new_with_label", label, PACKAGE = "RGtk2", .flush = .flush)

	if(show)
		gtkWidgetShowAll(w)

	return(w)
} 


gtkButtonNewFromStock <-
function(stock.id, .flush = TRUE, .depwarn = TRUE)
{
	stock.id <- as.character(stock.id)

	w <- .RGtkCall("S_gtk_button_new_from_stock", stock.id, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkButtonNewWithMnemonic <-
function(label, .flush = TRUE, .depwarn = TRUE)
{
	label <- as.character(label)

	w <- .RGtkCall("S_gtk_button_new_with_mnemonic", label, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkButtonPressed <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkButton")

	w <- .RGtkCall("S_gtk_button_pressed", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkButtonReleased <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkButton")

	w <- .RGtkCall("S_gtk_button_released", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkButtonClicked <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkButton")

	w <- .RGtkCall("S_gtk_button_clicked", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkButtonEnter <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkButton")

	w <- .RGtkCall("S_gtk_button_enter", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkButtonLeave <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkButton")

	w <- .RGtkCall("S_gtk_button_leave", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkButtonSetRelief <-
function(object, newstyle, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkButton")
	

	w <- .RGtkCall("S_gtk_button_set_relief", object, newstyle, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkButtonGetRelief <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkButton")

	w <- .RGtkCall("S_gtk_button_get_relief", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkButtonSetLabel <-
function(object, label, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkButton")
	label <- as.character(label)

	w <- .RGtkCall("S_gtk_button_set_label", object, label, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkButtonGetLabel <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkButton")

	w <- .RGtkCall("S_gtk_button_get_label", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkButtonSetUseUnderline <-
function(object, use.underline, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkButton")
	use.underline <- as.logical(use.underline)

	w <- .RGtkCall("S_gtk_button_set_use_underline", object, use.underline, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkButtonGetUseUnderline <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkButton")

	w <- .RGtkCall("S_gtk_button_get_use_underline", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkButtonSetUseStock <-
function(object, use.stock, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkButton")
	use.stock <- as.logical(use.stock)

	w <- .RGtkCall("S_gtk_button_set_use_stock", object, use.stock, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkButtonGetUseStock <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkButton")

	w <- .RGtkCall("S_gtk_button_get_use_stock", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkButtonSetFocusOnClick <-
function(object, focus.on.click, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkButton")
	focus.on.click <- as.logical(focus.on.click)

	w <- .RGtkCall("S_gtk_button_set_focus_on_click", object, focus.on.click, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkButtonGetFocusOnClick <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkButton")

	w <- .RGtkCall("S_gtk_button_get_focus_on_click", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkButtonSetAlignment <-
function(object, xalign, yalign, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkButton")
	xalign <- as.numeric(xalign)
	yalign <- as.numeric(yalign)

	w <- .RGtkCall("S_gtk_button_set_alignment", object, xalign, yalign, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkButtonGetAlignment <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkButton")

	w <- .RGtkCall("S_gtk_button_get_alignment", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkButtonSetImage <-
function(object, image, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkButton")
	checkPtrType(image, "GtkWidget")

	w <- .RGtkCall("S_gtk_button_set_image", object, image, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkButtonGetImage <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkButton")

	w <- .RGtkCall("S_gtk_button_get_image", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkCalendarGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_calendar_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkCalendarNew <-
function(show = TRUE, .flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_calendar_new", PACKAGE = "RGtk2", .flush = .flush)

	if(show)
		gtkWidgetShowAll(w)

	return(w)
} 


gtkCalendarSelectMonth <-
function(object, month, year, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCalendar")
	month <- as.numeric(month)
	year <- as.numeric(year)

	w <- .RGtkCall("S_gtk_calendar_select_month", object, month, year, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkCalendarSelectDay <-
function(object, day, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCalendar")
	day <- as.numeric(day)

	w <- .RGtkCall("S_gtk_calendar_select_day", object, day, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkCalendarMarkDay <-
function(object, day, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCalendar")
	day <- as.numeric(day)

	w <- .RGtkCall("S_gtk_calendar_mark_day", object, day, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkCalendarUnmarkDay <-
function(object, day, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCalendar")
	day <- as.numeric(day)

	w <- .RGtkCall("S_gtk_calendar_unmark_day", object, day, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkCalendarClearMarks <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCalendar")

	w <- .RGtkCall("S_gtk_calendar_clear_marks", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkCalendarSetDisplayOptions <-
function(object, flags, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCalendar")
	

	w <- .RGtkCall("S_gtk_calendar_set_display_options", object, flags, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkCalendarGetDisplayOptions <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCalendar")

	w <- .RGtkCall("S_gtk_calendar_get_display_options", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkCalendarDisplayOptions <-
function(object, flags, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCalendar")
	

	w <- .RGtkCall("S_gtk_calendar_display_options", object, flags, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkCalendarGetDate <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCalendar")

	w <- .RGtkCall("S_gtk_calendar_get_date", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkCalendarFreeze <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCalendar")

	w <- .RGtkCall("S_gtk_calendar_freeze", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkCalendarThaw <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCalendar")

	w <- .RGtkCall("S_gtk_calendar_thaw", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkCellEditableGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_cell_editable_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkCellEditableStartEditing <-
function(object, event = NULL, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCellEditable")
	if (!is.null( event )) checkPtrType(event, "GdkEvent")

	w <- .RGtkCall("S_gtk_cell_editable_start_editing", object, event, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkCellEditableEditingDone <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCellEditable")

	w <- .RGtkCall("S_gtk_cell_editable_editing_done", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkCellEditableRemoveWidget <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCellEditable")

	w <- .RGtkCall("S_gtk_cell_editable_remove_widget", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkCellLayoutGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_cell_layout_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkCellLayoutPackStart <-
function(object, cell, expand = "TRUE", .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCellLayout")
	checkPtrType(cell, "GtkCellRenderer")
	expand <- as.logical(expand)

	w <- .RGtkCall("S_gtk_cell_layout_pack_start", object, cell, expand, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkCellLayoutPackEnd <-
function(object, cell, expand = "TRUE", .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCellLayout")
	checkPtrType(cell, "GtkCellRenderer")
	expand <- as.logical(expand)

	w <- .RGtkCall("S_gtk_cell_layout_pack_end", object, cell, expand, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkCellLayoutClear <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCellLayout")

	w <- .RGtkCall("S_gtk_cell_layout_clear", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkCellLayoutAddAttribute <-
function(object, cell, attribute, column, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCellLayout")
	checkPtrType(cell, "GtkCellRenderer")
	attribute <- as.character(attribute)
	column <- as.integer(column)

	w <- .RGtkCall("S_gtk_cell_layout_add_attribute", object, cell, attribute, column, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkCellLayoutSetCellDataFunc <-
function(object, cell, func, func.data = NULL, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCellLayout")
	checkPtrType(cell, "GtkCellRenderer")
	func <- as.function(func)
	

	w <- .RGtkCall("S_gtk_cell_layout_set_cell_data_func", object, cell, func, func.data, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkCellLayoutClearAttributes <-
function(object, cell, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCellLayout")
	checkPtrType(cell, "GtkCellRenderer")

	w <- .RGtkCall("S_gtk_cell_layout_clear_attributes", object, cell, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkCellLayoutReorder <-
function(object, cell, position, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCellLayout")
	checkPtrType(cell, "GtkCellRenderer")
	position <- as.integer(position)

	w <- .RGtkCall("S_gtk_cell_layout_reorder", object, cell, position, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkCellRendererGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_cell_renderer_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkCellRendererGetSize <-
function(object, widget, cell.area = NULL, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCellRenderer")
	checkPtrType(widget, "GtkWidget")
	if (!is.null( cell.area )) cell.area <- as.GdkRectangle(cell.area)

	w <- .RGtkCall("S_gtk_cell_renderer_get_size", object, widget, cell.area, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkCellRendererRender <-
function(object, window, widget, background.area, cell.area, expose.area, flags, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCellRenderer")
	checkPtrType(window, "GdkWindow")
	checkPtrType(widget, "GtkWidget")
	background.area <- as.GdkRectangle(background.area)
	cell.area <- as.GdkRectangle(cell.area)
	expose.area <- as.GdkRectangle(expose.area)
	

	w <- .RGtkCall("S_gtk_cell_renderer_render", object, window, widget, background.area, cell.area, expose.area, flags, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkCellRendererActivate <-
function(object, event, widget, path, background.area, cell.area, flags, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCellRenderer")
	checkPtrType(event, "GdkEvent")
	checkPtrType(widget, "GtkWidget")
	path <- as.character(path)
	background.area <- as.GdkRectangle(background.area)
	cell.area <- as.GdkRectangle(cell.area)
	

	w <- .RGtkCall("S_gtk_cell_renderer_activate", object, event, widget, path, background.area, cell.area, flags, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkCellRendererStartEditing <-
function(object, event, widget, path, background.area, cell.area, flags, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCellRenderer")
	checkPtrType(event, "GdkEvent")
	checkPtrType(widget, "GtkWidget")
	path <- as.character(path)
	background.area <- as.GdkRectangle(background.area)
	cell.area <- as.GdkRectangle(cell.area)
	

	w <- .RGtkCall("S_gtk_cell_renderer_start_editing", object, event, widget, path, background.area, cell.area, flags, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkCellRendererSetFixedSize <-
function(object, width, height, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCellRenderer")
	width <- as.integer(width)
	height <- as.integer(height)

	w <- .RGtkCall("S_gtk_cell_renderer_set_fixed_size", object, width, height, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkCellRendererGetFixedSize <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCellRenderer")

	w <- .RGtkCall("S_gtk_cell_renderer_get_fixed_size", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkCellRendererEditingCanceled <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCellRenderer")

	w <- .RGtkCall("S_gtk_cell_renderer_editing_canceled", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkCellRendererStopEditing <-
function(object, canceled, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCellRenderer")
	canceled <- as.logical(canceled)

	w <- .RGtkCall("S_gtk_cell_renderer_stop_editing", object, canceled, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkCellRendererComboGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_cell_renderer_combo_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkCellRendererComboNew <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_cell_renderer_combo_new", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkCellRendererPixbufGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_cell_renderer_pixbuf_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkCellRendererPixbufNew <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_cell_renderer_pixbuf_new", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkCellRendererProgressGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_cell_renderer_progress_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkCellRendererProgressNew <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_cell_renderer_progress_new", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkCellRendererTextGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_cell_renderer_text_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkCellRendererTextNew <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_cell_renderer_text_new", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkCellRendererTextSetFixedHeightFromFont <-
function(object, number.of.rows, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCellRendererText")
	number.of.rows <- as.integer(number.of.rows)

	w <- .RGtkCall("S_gtk_cell_renderer_text_set_fixed_height_from_font", object, number.of.rows, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkCellRendererToggleGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_cell_renderer_toggle_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkCellRendererToggleNew <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_cell_renderer_toggle_new", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkCellRendererToggleGetRadio <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCellRendererToggle")

	w <- .RGtkCall("S_gtk_cell_renderer_toggle_get_radio", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkCellRendererToggleSetRadio <-
function(object, radio, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCellRendererToggle")
	radio <- as.logical(radio)

	w <- .RGtkCall("S_gtk_cell_renderer_toggle_set_radio", object, radio, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkCellRendererToggleGetActive <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCellRendererToggle")

	w <- .RGtkCall("S_gtk_cell_renderer_toggle_get_active", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkCellRendererToggleSetActive <-
function(object, setting, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCellRendererToggle")
	setting <- as.logical(setting)

	w <- .RGtkCall("S_gtk_cell_renderer_toggle_set_active", object, setting, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkCellViewGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_cell_view_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkCellViewNew <-
function(show = TRUE, .flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_cell_view_new", PACKAGE = "RGtk2", .flush = .flush)

	if(show)
		gtkWidgetShowAll(w)

	return(w)
} 


gtkCellViewNewWithText <-
function(text, .flush = TRUE, .depwarn = TRUE)
{
	text <- as.character(text)

	w <- .RGtkCall("S_gtk_cell_view_new_with_text", text, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkCellViewNewWithMarkup <-
function(markup, .flush = TRUE, .depwarn = TRUE)
{
	markup <- as.character(markup)

	w <- .RGtkCall("S_gtk_cell_view_new_with_markup", markup, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkCellViewNewWithPixbuf <-
function(pixbuf, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(pixbuf, "GdkPixbuf")

	w <- .RGtkCall("S_gtk_cell_view_new_with_pixbuf", pixbuf, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkCellViewSetModel <-
function(object, model = NULL, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCellView")
	if (!is.null( model )) checkPtrType(model, "GtkTreeModel")

	w <- .RGtkCall("S_gtk_cell_view_set_model", object, model, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkCellViewSetDisplayedRow <-
function(object, path = NULL, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCellView")
	if (!is.null( path )) checkPtrType(path, "GtkTreePath")

	w <- .RGtkCall("S_gtk_cell_view_set_displayed_row", object, path, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkCellViewGetDisplayedRow <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCellView")

	w <- .RGtkCall("S_gtk_cell_view_get_displayed_row", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkCellViewGetSizeOfRow <-
function(object, path, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCellView")
	checkPtrType(path, "GtkTreePath")

	w <- .RGtkCall("S_gtk_cell_view_get_size_of_row", object, path, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkCellViewSetBackgroundColor <-
function(object, color, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCellView")
	color <- as.GdkColor(color)

	w <- .RGtkCall("S_gtk_cell_view_set_background_color", object, color, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkCellViewGetCellRenderers <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCellView")

	w <- .RGtkCall("S_gtk_cell_view_get_cell_renderers", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkClipboardSetCanStore <-
function(object, targets, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkClipboard")
	targets <- lapply(targets, function(x) { x <- as.GtkTargetEntry(x); x })

	w <- .RGtkCall("S_gtk_clipboard_set_can_store", object, targets, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkClipboardStore <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkClipboard")

	w <- .RGtkCall("S_gtk_clipboard_store", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkCheckButtonGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_check_button_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkCheckButtonNew <-
function(show = TRUE, .flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_check_button_new", PACKAGE = "RGtk2", .flush = .flush)

	if(show)
		gtkWidgetShowAll(w)

	return(w)
} 


gtkCheckButtonNewWithLabel <-
function(label, show = TRUE, .flush = TRUE, .depwarn = TRUE)
{
	label <- as.character(label)

	w <- .RGtkCall("S_gtk_check_button_new_with_label", label, PACKAGE = "RGtk2", .flush = .flush)

	if(show)
		gtkWidgetShowAll(w)

	return(w)
} 


gtkCheckButtonNewWithMnemonic <-
function(label, show = TRUE, .flush = TRUE, .depwarn = TRUE)
{
	label <- as.character(label)

	w <- .RGtkCall("S_gtk_check_button_new_with_mnemonic", label, PACKAGE = "RGtk2", .flush = .flush)

	if(show)
		gtkWidgetShowAll(w)

	return(w)
} 


gtkCheckMenuItemGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_check_menu_item_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkCheckMenuItemNew <-
function(show = TRUE, .flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_check_menu_item_new", PACKAGE = "RGtk2", .flush = .flush)

	if(show)
		gtkWidgetShowAll(w)

	return(w)
} 


gtkCheckMenuItemNewWithLabel <-
function(label, show = TRUE, .flush = TRUE, .depwarn = TRUE)
{
	label <- as.character(label)

	w <- .RGtkCall("S_gtk_check_menu_item_new_with_label", label, PACKAGE = "RGtk2", .flush = .flush)

	if(show)
		gtkWidgetShowAll(w)

	return(w)
} 


gtkCheckMenuItemNewWithMnemonic <-
function(label, show = TRUE, .flush = TRUE, .depwarn = TRUE)
{
	label <- as.character(label)

	w <- .RGtkCall("S_gtk_check_menu_item_new_with_mnemonic", label, PACKAGE = "RGtk2", .flush = .flush)

	if(show)
		gtkWidgetShowAll(w)

	return(w)
} 


gtkCheckMenuItemSetActive <-
function(object, is.active, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCheckMenuItem")
	is.active <- as.logical(is.active)

	w <- .RGtkCall("S_gtk_check_menu_item_set_active", object, is.active, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkCheckMenuItemGetActive <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCheckMenuItem")

	w <- .RGtkCall("S_gtk_check_menu_item_get_active", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkCheckMenuItemToggled <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCheckMenuItem")

	w <- .RGtkCall("S_gtk_check_menu_item_toggled", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkCheckMenuItemSetInconsistent <-
function(object, setting, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCheckMenuItem")
	setting <- as.logical(setting)

	w <- .RGtkCall("S_gtk_check_menu_item_set_inconsistent", object, setting, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkCheckMenuItemGetInconsistent <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCheckMenuItem")

	w <- .RGtkCall("S_gtk_check_menu_item_get_inconsistent", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkCheckMenuItemSetDrawAsRadio <-
function(object, draw.as.radio, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCheckMenuItem")
	draw.as.radio <- as.logical(draw.as.radio)

	w <- .RGtkCall("S_gtk_check_menu_item_set_draw_as_radio", object, draw.as.radio, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkCheckMenuItemGetDrawAsRadio <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCheckMenuItem")

	w <- .RGtkCall("S_gtk_check_menu_item_get_draw_as_radio", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkCheckMenuItemSetShowToggle <-
function(object, always, .flush = TRUE, .depwarn = TRUE)
{
	if (.depwarn)
		warning("This function is deprecated: don't use this method")

	checkPtrType(object, "GtkCheckMenuItem")
	always <- as.logical(always)

	w <- .RGtkCall("S_gtk_check_menu_item_set_show_toggle", object, always, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkCheckMenuItemSetState <-
function(object, is.active, .flush = TRUE, .depwarn = TRUE)
{
	if (.depwarn)
		warning("This function is deprecated: use GtkCheckMenuItem.set_active")

	checkPtrType(object, "GtkCheckMenuItem")
	is.active <- as.logical(is.active)

	w <- .RGtkCall("S_gtk_check_menu_item_set_state", object, is.active, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkClipboardGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_clipboard_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkClipboardGetForDisplay <-
function(display = "gdk_display_get_default()", selection = "GDK_SELECTION_CLIPBOARD", .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(display, "GdkDisplay")
	selection <- as.GdkAtom(selection)

	w <- .RGtkCall("S_gtk_clipboard_get_for_display", display, selection, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkClipboardGet <-
function(selection = "GDK_SELECTION_CLIPBOARD", .flush = TRUE, .depwarn = TRUE)
{
	selection <- as.GdkAtom(selection)

	w <- .RGtkCall("S_gtk_clipboard_get", selection, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkClipboardGetDisplay <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkClipboard")

	w <- .RGtkCall("S_gtk_clipboard_get_display", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkClipboardSetWithData <-
function(object, targets, get.func, user.data = NULL, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkClipboard")
	targets <- lapply(targets, function(x) { x <- as.GtkTargetEntry(x); x })
	get.func <- as.function(get.func)
	

	w <- .RGtkCall("S_gtk_clipboard_set_with_data", object, targets, get.func, user.data, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkClipboardGetOwner <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkClipboard")

	w <- .RGtkCall("S_gtk_clipboard_get_owner", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkClipboardClear <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkClipboard")

	w <- .RGtkCall("S_gtk_clipboard_clear", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkClipboardSetText <-
function(object, text, len = "-1", .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkClipboard")
	text <- as.character(text)
	len <- as.integer(len)

	w <- .RGtkCall("S_gtk_clipboard_set_text", object, text, len, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkClipboardRequestContents <-
function(object, target, callback, user.data = NULL, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkClipboard")
	target <- as.GdkAtom(target)
	callback <- as.function(callback)
	

	w <- .RGtkCall("S_gtk_clipboard_request_contents", object, target, callback, user.data, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkClipboardRequestImage <-
function(object, callback, user.data = NULL, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkClipboard")
	callback <- as.function(callback)
	

	w <- .RGtkCall("S_gtk_clipboard_request_image", object, callback, user.data, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkClipboardRequestText <-
function(object, callback, user.data = NULL, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkClipboard")
	callback <- as.function(callback)
	

	w <- .RGtkCall("S_gtk_clipboard_request_text", object, callback, user.data, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkClipboardRequestTargets <-
function(object, callback, user.data = NULL, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkClipboard")
	callback <- as.function(callback)
	

	w <- .RGtkCall("S_gtk_clipboard_request_targets", object, callback, user.data, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkClipboardWaitForContents <-
function(object, target, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkClipboard")
	target <- as.GdkAtom(target)

	w <- .RGtkCall("S_gtk_clipboard_wait_for_contents", object, target, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkClipboardWaitForImage <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkClipboard")

	w <- .RGtkCall("S_gtk_clipboard_wait_for_image", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkClipboardWaitForText <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkClipboard")

	w <- .RGtkCall("S_gtk_clipboard_wait_for_text", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkClipboardWaitIsImageAvailable <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkClipboard")

	w <- .RGtkCall("S_gtk_clipboard_wait_is_image_available", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkClipboardWaitIsTextAvailable <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkClipboard")

	w <- .RGtkCall("S_gtk_clipboard_wait_is_text_available", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkClipboardWaitIsTargetAvailable <-
function(object, target, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkClipboard")
	target <- as.GdkAtom(target)

	w <- .RGtkCall("S_gtk_clipboard_wait_is_target_available", object, target, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkClipboardWaitForTargets <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkClipboard")

	w <- .RGtkCall("S_gtk_clipboard_wait_for_targets", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkCListGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_clist_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkCListNew <-
function(columns = "1", show = TRUE, .flush = TRUE, .depwarn = TRUE)
{
	if (.depwarn)
		warning("This function is deprecated: use GtkListStore/GtkTreeView")

	columns <- as.integer(columns)

	w <- .RGtkCall("S_gtk_clist_new", columns, PACKAGE = "RGtk2", .flush = .flush)

	if(show)
		gtkWidgetShowAll(w)

	return(w)
} 


gtkCListNewWithTitles <-
function(columns = "1", titles, show = TRUE, .flush = TRUE, .depwarn = TRUE)
{
	if (.depwarn)
		warning("This function is deprecated: use GtkListStore/GtkTreeView")

	columns <- as.integer(columns)
	titles <- as.list(as.character(titles))

	w <- .RGtkCall("S_gtk_clist_new_with_titles", columns, titles, PACKAGE = "RGtk2", .flush = .flush)

	if(show)
		gtkWidgetShowAll(w)

	return(w)
} 


gtkCListSetHadjustment <-
function(object, adjustment, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCList")
	checkPtrType(adjustment, "GtkAdjustment")

	w <- .RGtkCall("S_gtk_clist_set_hadjustment", object, adjustment, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkCListSetVadjustment <-
function(object, adjustment, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCList")
	checkPtrType(adjustment, "GtkAdjustment")

	w <- .RGtkCall("S_gtk_clist_set_vadjustment", object, adjustment, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkCListGetHadjustment <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCList")

	w <- .RGtkCall("S_gtk_clist_get_hadjustment", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkCListGetVadjustment <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCList")

	w <- .RGtkCall("S_gtk_clist_get_vadjustment", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkCListSetShadowType <-
function(object, type, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCList")
	

	w <- .RGtkCall("S_gtk_clist_set_shadow_type", object, type, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkCListSetSelectionMode <-
function(object, mode, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCList")
	

	w <- .RGtkCall("S_gtk_clist_set_selection_mode", object, mode, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkCListSetReorderable <-
function(object, reorderable, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCList")
	reorderable <- as.logical(reorderable)

	w <- .RGtkCall("S_gtk_clist_set_reorderable", object, reorderable, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkCListSetUseDragIcons <-
function(object, use.icons, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCList")
	use.icons <- as.logical(use.icons)

	w <- .RGtkCall("S_gtk_clist_set_use_drag_icons", object, use.icons, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkCListSetButtonActions <-
function(object, button, button.actions, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCList")
	button <- as.numeric(button)
	button.actions <- as.integer(button.actions)

	w <- .RGtkCall("S_gtk_clist_set_button_actions", object, button, button.actions, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkCListFreeze <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCList")

	w <- .RGtkCall("S_gtk_clist_freeze", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkCListThaw <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCList")

	w <- .RGtkCall("S_gtk_clist_thaw", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkCListColumnTitlesShow <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCList")

	w <- .RGtkCall("S_gtk_clist_column_titles_show", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkCListColumnTitlesHide <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCList")

	w <- .RGtkCall("S_gtk_clist_column_titles_hide", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkCListColumnTitleActive <-
function(object, column, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCList")
	column <- as.integer(column)

	w <- .RGtkCall("S_gtk_clist_column_title_active", object, column, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkCListColumnTitlePassive <-
function(object, column, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCList")
	column <- as.integer(column)

	w <- .RGtkCall("S_gtk_clist_column_title_passive", object, column, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkCListColumnTitlesActive <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCList")

	w <- .RGtkCall("S_gtk_clist_column_titles_active", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkCListColumnTitlesPassive <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCList")

	w <- .RGtkCall("S_gtk_clist_column_titles_passive", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkCListSetColumnTitle <-
function(object, column, title, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCList")
	column <- as.integer(column)
	title <- as.character(title)

	w <- .RGtkCall("S_gtk_clist_set_column_title", object, column, title, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkCListGetColumnTitle <-
function(object, column, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCList")
	column <- as.integer(column)

	w <- .RGtkCall("S_gtk_clist_get_column_title", object, column, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkCListSetColumnWidget <-
function(object, column, widget, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCList")
	column <- as.integer(column)
	checkPtrType(widget, "GtkWidget")

	w <- .RGtkCall("S_gtk_clist_set_column_widget", object, column, widget, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkCListGetColumnWidget <-
function(object, column, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCList")
	column <- as.integer(column)

	w <- .RGtkCall("S_gtk_clist_get_column_widget", object, column, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkCListSetColumnJustification <-
function(object, column, justification, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCList")
	column <- as.integer(column)
	

	w <- .RGtkCall("S_gtk_clist_set_column_justification", object, column, justification, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkCListSetColumnVisibility <-
function(object, column, visible, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCList")
	column <- as.integer(column)
	visible <- as.logical(visible)

	w <- .RGtkCall("S_gtk_clist_set_column_visibility", object, column, visible, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkCListSetColumnResizeable <-
function(object, column, resizeable, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCList")
	column <- as.integer(column)
	resizeable <- as.logical(resizeable)

	w <- .RGtkCall("S_gtk_clist_set_column_resizeable", object, column, resizeable, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkCListSetColumnAutoResize <-
function(object, column, auto.resize, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCList")
	column <- as.integer(column)
	auto.resize <- as.logical(auto.resize)

	w <- .RGtkCall("S_gtk_clist_set_column_auto_resize", object, column, auto.resize, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkCListColumnsAutosize <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCList")

	w <- .RGtkCall("S_gtk_clist_columns_autosize", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkCListOptimalColumnWidth <-
function(object, column, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCList")
	column <- as.integer(column)

	w <- .RGtkCall("S_gtk_clist_optimal_column_width", object, column, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkCListSetColumnWidth <-
function(object, column, width, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCList")
	column <- as.integer(column)
	width <- as.integer(width)

	w <- .RGtkCall("S_gtk_clist_set_column_width", object, column, width, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkCListSetColumnMinWidth <-
function(object, column, min.width, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCList")
	column <- as.integer(column)
	min.width <- as.integer(min.width)

	w <- .RGtkCall("S_gtk_clist_set_column_min_width", object, column, min.width, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkCListSetColumnMaxWidth <-
function(object, column, max.width, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCList")
	column <- as.integer(column)
	max.width <- as.integer(max.width)

	w <- .RGtkCall("S_gtk_clist_set_column_max_width", object, column, max.width, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkCListSetRowHeight <-
function(object, height, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCList")
	height <- as.numeric(height)

	w <- .RGtkCall("S_gtk_clist_set_row_height", object, height, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkCListMoveto <-
function(object, row, column, row.align, col.align, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCList")
	row <- as.integer(row)
	column <- as.integer(column)
	row.align <- as.numeric(row.align)
	col.align <- as.numeric(col.align)

	w <- .RGtkCall("S_gtk_clist_moveto", object, row, column, row.align, col.align, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkCListRowIsVisible <-
function(object, row, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCList")
	row <- as.integer(row)

	w <- .RGtkCall("S_gtk_clist_row_is_visible", object, row, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkCListGetCellType <-
function(object, row, column, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCList")
	row <- as.integer(row)
	column <- as.integer(column)

	w <- .RGtkCall("S_gtk_clist_get_cell_type", object, row, column, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkCListSetText <-
function(object, row, column, text, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCList")
	row <- as.integer(row)
	column <- as.integer(column)
	text <- as.character(text)

	w <- .RGtkCall("S_gtk_clist_set_text", object, row, column, text, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkCListGetText <-
function(object, row, column, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCList")
	row <- as.integer(row)
	column <- as.integer(column)

	w <- .RGtkCall("S_gtk_clist_get_text", object, row, column, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkCListSetPixmap <-
function(object, row, column, pixmap, mask = "NULL", .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCList")
	row <- as.integer(row)
	column <- as.integer(column)
	checkPtrType(pixmap, "GdkPixmap")
	if (!is.null( mask )) checkPtrType(mask, "GdkBitmap")

	w <- .RGtkCall("S_gtk_clist_set_pixmap", object, row, column, pixmap, mask, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkCListGetPixmap <-
function(object, row, column, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCList")
	row <- as.integer(row)
	column <- as.integer(column)

	w <- .RGtkCall("S_gtk_clist_get_pixmap", object, row, column, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkCListSetPixtext <-
function(object, row, column, text, spacing, pixmap, mask, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCList")
	row <- as.integer(row)
	column <- as.integer(column)
	text <- as.character(text)
	spacing <- as.integer(spacing)
	checkPtrType(pixmap, "GdkPixmap")
	checkPtrType(mask, "GdkBitmap")

	w <- .RGtkCall("S_gtk_clist_set_pixtext", object, row, column, text, spacing, pixmap, mask, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkCListGetPixtext <-
function(object, row, column, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCList")
	row <- as.integer(row)
	column <- as.integer(column)

	w <- .RGtkCall("S_gtk_clist_get_pixtext", object, row, column, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkCListSetForeground <-
function(object, row, color, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCList")
	row <- as.integer(row)
	color <- as.GdkColor(color)

	w <- .RGtkCall("S_gtk_clist_set_foreground", object, row, color, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkCListSetBackground <-
function(object, row, color, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCList")
	row <- as.integer(row)
	color <- as.GdkColor(color)

	w <- .RGtkCall("S_gtk_clist_set_background", object, row, color, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkCListSetCellStyle <-
function(object, row, column, style, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCList")
	row <- as.integer(row)
	column <- as.integer(column)
	checkPtrType(style, "GtkStyle")

	w <- .RGtkCall("S_gtk_clist_set_cell_style", object, row, column, style, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkCListGetCellStyle <-
function(object, row, column, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCList")
	row <- as.integer(row)
	column <- as.integer(column)

	w <- .RGtkCall("S_gtk_clist_get_cell_style", object, row, column, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkCListSetRowStyle <-
function(object, row, style, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCList")
	row <- as.integer(row)
	checkPtrType(style, "GtkStyle")

	w <- .RGtkCall("S_gtk_clist_set_row_style", object, row, style, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkCListGetRowStyle <-
function(object, row, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCList")
	row <- as.integer(row)

	w <- .RGtkCall("S_gtk_clist_get_row_style", object, row, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkCListSetShift <-
function(object, row, column, vertical, horizontal, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCList")
	row <- as.integer(row)
	column <- as.integer(column)
	vertical <- as.integer(vertical)
	horizontal <- as.integer(horizontal)

	w <- .RGtkCall("S_gtk_clist_set_shift", object, row, column, vertical, horizontal, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkCListSetSelectable <-
function(object, row, selectable, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCList")
	row <- as.integer(row)
	selectable <- as.logical(selectable)

	w <- .RGtkCall("S_gtk_clist_set_selectable", object, row, selectable, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkCListGetSelectable <-
function(object, row, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCList")
	row <- as.integer(row)

	w <- .RGtkCall("S_gtk_clist_get_selectable", object, row, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkCListPrepend <-
function(object, text, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCList")
	text <- as.list(as.character(text))

	w <- .RGtkCall("S_gtk_clist_prepend", object, text, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkCListAppend <-
function(object, text, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCList")
	text <- as.list(as.character(text))

	w <- .RGtkCall("S_gtk_clist_append", object, text, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkCListInsert <-
function(object, row, text, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCList")
	row <- as.integer(row)
	text <- as.list(as.character(text))

	w <- .RGtkCall("S_gtk_clist_insert", object, row, text, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkCListRemove <-
function(object, row, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCList")
	row <- as.integer(row)

	w <- .RGtkCall("S_gtk_clist_remove", object, row, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkCListSetRowData <-
function(object, row, data = NULL, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCList")
	row <- as.integer(row)
	

	w <- .RGtkCall("S_gtk_clist_set_row_data", object, row, data, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkCListSetRowDataFull <-
function(object, row, data = NULL, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCList")
	row <- as.integer(row)
	

	w <- .RGtkCall("S_gtk_clist_set_row_data_full", object, row, data, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkCListGetRowData <-
function(object, row, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCList")
	row <- as.integer(row)

	w <- .RGtkCall("S_gtk_clist_get_row_data", object, row, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkCListFindRowFromData <-
function(object, data, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCList")
	

	w <- .RGtkCall("S_gtk_clist_find_row_from_data", object, data, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkCListSelectRow <-
function(object, row, column, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCList")
	row <- as.integer(row)
	column <- as.integer(column)

	w <- .RGtkCall("S_gtk_clist_select_row", object, row, column, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkCListUnselectRow <-
function(object, row, column, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCList")
	row <- as.integer(row)
	column <- as.integer(column)

	w <- .RGtkCall("S_gtk_clist_unselect_row", object, row, column, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkCListUndoSelection <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCList")

	w <- .RGtkCall("S_gtk_clist_undo_selection", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkCListClear <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCList")

	w <- .RGtkCall("S_gtk_clist_clear", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkCListGetSelectionInfo <-
function(object, x, y, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCList")
	x <- as.integer(x)
	y <- as.integer(y)

	w <- .RGtkCall("S_gtk_clist_get_selection_info", object, x, y, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkCListSelectAll <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCList")

	w <- .RGtkCall("S_gtk_clist_select_all", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkCListUnselectAll <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCList")

	w <- .RGtkCall("S_gtk_clist_unselect_all", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkCListSwapRows <-
function(object, row1, row2, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCList")
	row1 <- as.integer(row1)
	row2 <- as.integer(row2)

	w <- .RGtkCall("S_gtk_clist_swap_rows", object, row1, row2, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkCListRowMove <-
function(object, source.row, dest.row, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCList")
	source.row <- as.integer(source.row)
	dest.row <- as.integer(dest.row)

	w <- .RGtkCall("S_gtk_clist_row_move", object, source.row, dest.row, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkCListSetSortColumn <-
function(object, column, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCList")
	column <- as.integer(column)

	w <- .RGtkCall("S_gtk_clist_set_sort_column", object, column, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkCListSetSortType <-
function(object, sort.type, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCList")
	

	w <- .RGtkCall("S_gtk_clist_set_sort_type", object, sort.type, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkCListSort <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCList")

	w <- .RGtkCall("S_gtk_clist_sort", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkCListSetAutoSort <-
function(object, auto.sort, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCList")
	auto.sort <- as.logical(auto.sort)

	w <- .RGtkCall("S_gtk_clist_set_auto_sort", object, auto.sort, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkColorButtonGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_color_button_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkColorButtonNew <-
function(show = TRUE, .flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_color_button_new", PACKAGE = "RGtk2", .flush = .flush)

	if(show)
		gtkWidgetShowAll(w)

	return(w)
} 


gtkColorButtonNewWithColor <-
function(color, show = TRUE, .flush = TRUE, .depwarn = TRUE)
{
	color <- as.GdkColor(color)

	w <- .RGtkCall("S_gtk_color_button_new_with_color", color, PACKAGE = "RGtk2", .flush = .flush)

	if(show)
		gtkWidgetShowAll(w)

	return(w)
} 


gtkColorButtonSetColor <-
function(object, color, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkColorButton")
	color <- as.GdkColor(color)

	w <- .RGtkCall("S_gtk_color_button_set_color", object, color, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkColorButtonSetAlpha <-
function(object, alpha, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkColorButton")
	alpha <- as.integer(alpha)

	w <- .RGtkCall("S_gtk_color_button_set_alpha", object, alpha, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkColorButtonGetColor <-
function(object, color, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkColorButton")
	color <- as.GdkColor(color)

	w <- .RGtkCall("S_gtk_color_button_get_color", object, color, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkColorButtonGetAlpha <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkColorButton")

	w <- .RGtkCall("S_gtk_color_button_get_alpha", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkColorButtonSetUseAlpha <-
function(object, use.alpha, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkColorButton")
	use.alpha <- as.logical(use.alpha)

	w <- .RGtkCall("S_gtk_color_button_set_use_alpha", object, use.alpha, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkColorButtonGetUseAlpha <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkColorButton")

	w <- .RGtkCall("S_gtk_color_button_get_use_alpha", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkColorButtonSetTitle <-
function(object, title, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkColorButton")
	title <- as.character(title)

	w <- .RGtkCall("S_gtk_color_button_set_title", object, title, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkColorButtonGetTitle <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkColorButton")

	w <- .RGtkCall("S_gtk_color_button_get_title", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkColorSelectionGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_color_selection_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkColorSelectionNew <-
function(show = TRUE, .flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_color_selection_new", PACKAGE = "RGtk2", .flush = .flush)

	if(show)
		gtkWidgetShowAll(w)

	return(w)
} 


gtkColorSelectionGetHasOpacityControl <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkColorSelection")

	w <- .RGtkCall("S_gtk_color_selection_get_has_opacity_control", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkColorSelectionSetHasOpacityControl <-
function(object, has.opacity, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkColorSelection")
	has.opacity <- as.logical(has.opacity)

	w <- .RGtkCall("S_gtk_color_selection_set_has_opacity_control", object, has.opacity, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkColorSelectionGetHasPalette <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkColorSelection")

	w <- .RGtkCall("S_gtk_color_selection_get_has_palette", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkColorSelectionSetHasPalette <-
function(object, has.palette, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkColorSelection")
	has.palette <- as.logical(has.palette)

	w <- .RGtkCall("S_gtk_color_selection_set_has_palette", object, has.palette, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkColorSelectionSetCurrentColor <-
function(object, color, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkColorSelection")
	color <- as.GdkColor(color)

	w <- .RGtkCall("S_gtk_color_selection_set_current_color", object, color, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkColorSelectionSetCurrentAlpha <-
function(object, alpha, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkColorSelection")
	alpha <- as.integer(alpha)

	w <- .RGtkCall("S_gtk_color_selection_set_current_alpha", object, alpha, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkColorSelectionGetCurrentColor <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkColorSelection")

	w <- .RGtkCall("S_gtk_color_selection_get_current_color", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkColorSelectionGetCurrentAlpha <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkColorSelection")

	w <- .RGtkCall("S_gtk_color_selection_get_current_alpha", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkColorSelectionSetPreviousColor <-
function(object, color, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkColorSelection")
	color <- as.GdkColor(color)

	w <- .RGtkCall("S_gtk_color_selection_set_previous_color", object, color, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkColorSelectionSetPreviousAlpha <-
function(object, alpha, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkColorSelection")
	alpha <- as.integer(alpha)

	w <- .RGtkCall("S_gtk_color_selection_set_previous_alpha", object, alpha, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkColorSelectionGetPreviousColor <-
function(object, color, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkColorSelection")
	color <- as.GdkColor(color)

	w <- .RGtkCall("S_gtk_color_selection_get_previous_color", object, color, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkColorSelectionGetPreviousAlpha <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkColorSelection")

	w <- .RGtkCall("S_gtk_color_selection_get_previous_alpha", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkColorSelectionIsAdjusting <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkColorSelection")

	w <- .RGtkCall("S_gtk_color_selection_is_adjusting", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkColorSelectionPaletteFromString <-
function(str, .flush = TRUE, .depwarn = TRUE)
{
	str <- as.character(str)

	w <- .RGtkCall("S_gtk_color_selection_palette_from_string", str, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkColorSelectionPaletteToString <-
function(colors, .flush = TRUE, .depwarn = TRUE)
{
	colors <- lapply(colors, function(x) { x <- as.GdkColor(x); x })

	w <- .RGtkCall("S_gtk_color_selection_palette_to_string", colors, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkColorSelectionSetChangePaletteHook <-
function(func, .flush = TRUE, .depwarn = TRUE)
{
	func <- as.function(func)

	w <- .RGtkCall("S_gtk_color_selection_set_change_palette_hook", func, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkColorSelectionSetChangePaletteWithScreenHook <-
function(func, .flush = TRUE, .depwarn = TRUE)
{
	func <- as.function(func)

	w <- .RGtkCall("S_gtk_color_selection_set_change_palette_with_screen_hook", func, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkColorSelectionSetColor <-
function(object, color, .flush = TRUE, .depwarn = TRUE)
{
	if (.depwarn)
		warning("This function is deprecated: use GtkColorSelection.set_current_color")

	checkPtrType(object, "GtkColorSelection")
	color <- as.list(as.numeric(color))

	w <- .RGtkCall("S_gtk_color_selection_set_color", object, color, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkColorSelectionGetColor <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	if (.depwarn)
		warning("This function is deprecated: use GtkColorSelection.get_current_color")

	checkPtrType(object, "GtkColorSelection")

	w <- .RGtkCall("S_gtk_color_selection_get_color", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkColorSelectionSetUpdatePolicy <-
function(object, policy, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkColorSelection")
	

	w <- .RGtkCall("S_gtk_color_selection_set_update_policy", object, policy, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkColorSelectionDialogGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_color_selection_dialog_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkColorSelectionDialogNew <-
function(title = NULL, show = TRUE, .flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_color_selection_dialog_new", title, PACKAGE = "RGtk2", .flush = .flush)

	if(show)
		gtkWidgetShowAll(w)

	return(w)
} 


gtkComboGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_combo_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkComboNew <-
function(show = TRUE, .flush = TRUE, .depwarn = TRUE)
{
	if (.depwarn)
		warning("This function is deprecated: use gtk.ComboBoxEntry")

	

	w <- .RGtkCall("S_gtk_combo_new", PACKAGE = "RGtk2", .flush = .flush)

	if(show)
		gtkWidgetShowAll(w)

	return(w)
} 


gtkComboSetValueInList <-
function(object, val, ok.if.empty, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCombo")
	val <- as.logical(val)
	ok.if.empty <- as.logical(ok.if.empty)

	w <- .RGtkCall("S_gtk_combo_set_value_in_list", object, val, ok.if.empty, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkComboSetUseArrows <-
function(object, val, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCombo")
	val <- as.logical(val)

	w <- .RGtkCall("S_gtk_combo_set_use_arrows", object, val, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkComboSetUseArrowsAlways <-
function(object, val, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCombo")
	val <- as.logical(val)

	w <- .RGtkCall("S_gtk_combo_set_use_arrows_always", object, val, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkComboSetCaseSensitive <-
function(object, val, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCombo")
	val <- as.logical(val)

	w <- .RGtkCall("S_gtk_combo_set_case_sensitive", object, val, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkComboSetItemString <-
function(object, item, item.value, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCombo")
	checkPtrType(item, "GtkItem")
	item.value <- as.character(item.value)

	w <- .RGtkCall("S_gtk_combo_set_item_string", object, item, item.value, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkComboSetPopdownStrings <-
function(object, strings, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCombo")
	strings <- as.GList(strings)

	w <- .RGtkCall("S_gtk_combo_set_popdown_strings", object, strings, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkComboDisableActivate <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCombo")

	w <- .RGtkCall("S_gtk_combo_disable_activate", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkComboBoxGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_combo_box_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkComboBoxNew <-
function(show = TRUE, .flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_combo_box_new", PACKAGE = "RGtk2", .flush = .flush)

	if(show)
		gtkWidgetShowAll(w)

	return(w)
} 


gtkComboBoxNewWithModel <-
function(model, show = TRUE, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(model, "GtkTreeModel")

	w <- .RGtkCall("S_gtk_combo_box_new_with_model", model, PACKAGE = "RGtk2", .flush = .flush)

	if(show)
		gtkWidgetShowAll(w)

	return(w)
} 


gtkComboBoxSetWrapWidth <-
function(object, width, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkComboBox")
	width <- as.integer(width)

	w <- .RGtkCall("S_gtk_combo_box_set_wrap_width", object, width, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkComboBoxSetRowSpanColumn <-
function(object, row.span, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkComboBox")
	row.span <- as.integer(row.span)

	w <- .RGtkCall("S_gtk_combo_box_set_row_span_column", object, row.span, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkComboBoxSetColumnSpanColumn <-
function(object, column.span, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkComboBox")
	column.span <- as.integer(column.span)

	w <- .RGtkCall("S_gtk_combo_box_set_column_span_column", object, column.span, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkComboBoxGetActive <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkComboBox")

	w <- .RGtkCall("S_gtk_combo_box_get_active", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkComboBoxSetActive <-
function(object, index, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkComboBox")
	index <- as.integer(index)

	w <- .RGtkCall("S_gtk_combo_box_set_active", object, index, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkComboBoxGetActiveIter <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkComboBox")

	w <- .RGtkCall("S_gtk_combo_box_get_active_iter", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkComboBoxSetActiveIter <-
function(object, iter, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkComboBox")
	checkPtrType(iter, "GtkTreeIter")

	w <- .RGtkCall("S_gtk_combo_box_set_active_iter", object, iter, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkComboBoxSetModel <-
function(object, model = "NULL", .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkComboBox")
	if (!is.null( model )) checkPtrType(model, "GtkTreeModel")

	w <- .RGtkCall("S_gtk_combo_box_set_model", object, model, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkComboBoxGetModel <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkComboBox")

	w <- .RGtkCall("S_gtk_combo_box_get_model", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkComboBoxNewText <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_combo_box_new_text", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkComboBoxAppendText <-
function(object, text, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkComboBox")
	text <- as.character(text)

	w <- .RGtkCall("S_gtk_combo_box_append_text", object, text, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkComboBoxInsertText <-
function(object, position, text, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkComboBox")
	position <- as.integer(position)
	text <- as.character(text)

	w <- .RGtkCall("S_gtk_combo_box_insert_text", object, position, text, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkComboBoxPrependText <-
function(object, text, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkComboBox")
	text <- as.character(text)

	w <- .RGtkCall("S_gtk_combo_box_prepend_text", object, text, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkComboBoxRemoveText <-
function(object, position, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkComboBox")
	position <- as.integer(position)

	w <- .RGtkCall("S_gtk_combo_box_remove_text", object, position, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkComboBoxPopup <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkComboBox")

	w <- .RGtkCall("S_gtk_combo_box_popup", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkComboBoxPopdown <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkComboBox")

	w <- .RGtkCall("S_gtk_combo_box_popdown", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkComboBoxGetWrapWidth <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkComboBox")

	w <- .RGtkCall("S_gtk_combo_box_get_wrap_width", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkComboBoxGetRowSpanColumn <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkComboBox")

	w <- .RGtkCall("S_gtk_combo_box_get_row_span_column", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkComboBoxGetColumnSpanColumn <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkComboBox")

	w <- .RGtkCall("S_gtk_combo_box_get_column_span_column", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkComboBoxSetAddTearoffs <-
function(object, add.tearoffs, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkComboBox")
	add.tearoffs <- as.logical(add.tearoffs)

	w <- .RGtkCall("S_gtk_combo_box_set_add_tearoffs", object, add.tearoffs, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkComboBoxGetFocusOnClick <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkComboBox")

	w <- .RGtkCall("S_gtk_combo_box_get_focus_on_click", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkComboBoxSetFocusOnClick <-
function(object, focus.on.click, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkComboBox")
	focus.on.click <- as.logical(focus.on.click)

	w <- .RGtkCall("S_gtk_combo_box_set_focus_on_click", object, focus.on.click, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkComboBoxSetRowSeparatorFunc <-
function(object, func, data = NULL, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkComboBox")
	func <- as.function(func)
	

	w <- .RGtkCall("S_gtk_combo_box_set_row_separator_func", object, func, data, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkComboBoxGetRowSeparatorFunc <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkComboBox")

	w <- .RGtkCall("S_gtk_combo_box_get_row_separator_func", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkComboBoxGetActiveText <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkComboBox")

	w <- .RGtkCall("S_gtk_combo_box_get_active_text", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkComboBoxGetPopupAccessible <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkComboBox")

	w <- .RGtkCall("S_gtk_combo_box_get_popup_accessible", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkComboBoxEntryGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_combo_box_entry_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkComboBoxEntryNew <-
function(show = TRUE, .flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_combo_box_entry_new", PACKAGE = "RGtk2", .flush = .flush)

	if(show)
		gtkWidgetShowAll(w)

	return(w)
} 


gtkComboBoxEntryNewWithModel <-
function(model, text.column, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(model, "GtkTreeModel")
	text.column <- as.integer(text.column)

	w <- .RGtkCall("S_gtk_combo_box_entry_new_with_model", model, text.column, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkComboBoxEntrySetTextColumn <-
function(object, text.column, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkComboBoxEntry")
	text.column <- as.integer(text.column)

	w <- .RGtkCall("S_gtk_combo_box_entry_set_text_column", object, text.column, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkComboBoxEntryGetTextColumn <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkComboBoxEntry")

	w <- .RGtkCall("S_gtk_combo_box_entry_get_text_column", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkComboBoxEntryNewText <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_combo_box_entry_new_text", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkContainerGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_container_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkContainerSetBorderWidth <-
function(object, border.width, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkContainer")
	border.width <- as.numeric(border.width)

	w <- .RGtkCall("S_gtk_container_set_border_width", object, border.width, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkContainerGetBorderWidth <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkContainer")

	w <- .RGtkCall("S_gtk_container_get_border_width", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkContainerAdd <-
function(object, widget, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkContainer")
	checkPtrType(widget, "GtkWidget")

	w <- .RGtkCall("S_gtk_container_add", object, widget, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkContainerRemove <-
function(object, widget, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkContainer")
	checkPtrType(widget, "GtkWidget")

	w <- .RGtkCall("S_gtk_container_remove", object, widget, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkContainerSetResizeMode <-
function(object, resize.mode, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkContainer")
	

	w <- .RGtkCall("S_gtk_container_set_resize_mode", object, resize.mode, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkContainerGetResizeMode <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkContainer")

	w <- .RGtkCall("S_gtk_container_get_resize_mode", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkContainerCheckResize <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkContainer")

	w <- .RGtkCall("S_gtk_container_check_resize", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkContainerForeach <-
function(object, callback, callback.data = NULL, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkContainer")
	callback <- as.function(callback)
	

	w <- .RGtkCall("S_gtk_container_foreach", object, callback, callback.data, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkContainerForeachFull <-
function(object, callback, callback.data = NULL, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkContainer")
	callback <- as.function(callback)
	

	w <- .RGtkCall("S_gtk_container_foreach_full", object, callback, callback.data, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkContainerGetChildren <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkContainer")

	w <- .RGtkCall("S_gtk_container_get_children", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkContainerChildren <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	if (.depwarn)
		warning("This function is deprecated: use GtkContainer.get_children")

	checkPtrType(object, "GtkContainer")

	w <- .RGtkCall("S_gtk_container_children", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkContainerPropagateExpose <-
function(object, child, event, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkContainer")
	checkPtrType(child, "GtkWidget")
	checkPtrType(event, "GdkEventExpose")

	w <- .RGtkCall("S_gtk_container_propagate_expose", object, child, event, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkContainerSetFocusChain <-
function(object, focusable.widgets, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkContainer")
	focusable.widgets <- as.GList(focusable.widgets)

	w <- .RGtkCall("S_gtk_container_set_focus_chain", object, focusable.widgets, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkContainerGetFocusChain <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkContainer")

	w <- .RGtkCall("S_gtk_container_get_focus_chain", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkContainerUnsetFocusChain <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkContainer")

	w <- .RGtkCall("S_gtk_container_unset_focus_chain", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkContainerSetReallocateRedraws <-
function(object, needs.redraws, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkContainer")
	needs.redraws <- as.logical(needs.redraws)

	w <- .RGtkCall("S_gtk_container_set_reallocate_redraws", object, needs.redraws, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkContainerSetFocusChild <-
function(object, child, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkContainer")
	checkPtrType(child, "GtkWidget")

	w <- .RGtkCall("S_gtk_container_set_focus_child", object, child, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkContainerSetFocusVadjustment <-
function(object, adjustment, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkContainer")
	checkPtrType(adjustment, "GtkAdjustment")

	w <- .RGtkCall("S_gtk_container_set_focus_vadjustment", object, adjustment, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkContainerGetFocusVadjustment <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkContainer")

	w <- .RGtkCall("S_gtk_container_get_focus_vadjustment", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkContainerSetFocusHadjustment <-
function(object, adjustment, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkContainer")
	checkPtrType(adjustment, "GtkAdjustment")

	w <- .RGtkCall("S_gtk_container_set_focus_hadjustment", object, adjustment, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkContainerGetFocusHadjustment <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkContainer")

	w <- .RGtkCall("S_gtk_container_get_focus_hadjustment", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkContainerResizeChildren <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkContainer")

	w <- .RGtkCall("S_gtk_container_resize_children", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkContainerChildType <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkContainer")

	w <- .RGtkCall("S_gtk_container_child_type", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkContainerClassInstallChildProperty <-
function(cclass, property.id, pspec, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(cclass, "GtkContainerClass")
	property.id <- as.numeric(property.id)
	pspec <- as.GParamSpec(pspec)

	w <- .RGtkCall("S_gtk_container_class_install_child_property", cclass, property.id, pspec, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkContainerClassFindChildProperty <-
function(cclass, property.name, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(cclass, "GObjectClass")
	property.name <- as.character(property.name)

	w <- .RGtkCall("S_gtk_container_class_find_child_property", cclass, property.name, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkContainerClassListChildProperties <-
function(cclass, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(cclass, "GObjectClass")

	w <- .RGtkCall("S_gtk_container_class_list_child_properties", cclass, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkContainerChildSetProperty <-
function(object, child, property.name, value, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkContainer")
	checkPtrType(child, "GtkWidget")
	property.name <- as.character(property.name)
	

	w <- .RGtkCall("S_gtk_container_child_set_property", object, child, property.name, value, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkContainerChildGetProperty <-
function(object, child, property.name, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkContainer")
	checkPtrType(child, "GtkWidget")
	property.name <- as.character(property.name)

	w <- .RGtkCall("S_gtk_container_child_get_property", object, child, property.name, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkContainerForall <-
function(object, callback, callback.data = NULL, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkContainer")
	callback <- as.function(callback)
	

	w <- .RGtkCall("S_gtk_container_forall", object, callback, callback.data, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkCTreeGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_ctree_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkCTreeNewWithTitles <-
function(columns = "1", tree.column = "0", titles, show = TRUE, .flush = TRUE, .depwarn = TRUE)
{
	if (.depwarn)
		warning("This function is deprecated: use GtkTreeStore/GtkTreeView")

	columns <- as.integer(columns)
	tree.column <- as.integer(tree.column)
	titles <- as.list(as.character(titles))

	w <- .RGtkCall("S_gtk_ctree_new_with_titles", columns, tree.column, titles, PACKAGE = "RGtk2", .flush = .flush)

	if(show)
		gtkWidgetShowAll(w)

	return(w)
} 


gtkCTreeNew <-
function(columns = "1", tree.column = "0", show = TRUE, .flush = TRUE, .depwarn = TRUE)
{
	if (.depwarn)
		warning("This function is deprecated: use GtkTreeStore/GtkTreeView")

	columns <- as.integer(columns)
	tree.column <- as.integer(tree.column)

	w <- .RGtkCall("S_gtk_ctree_new", columns, tree.column, PACKAGE = "RGtk2", .flush = .flush)

	if(show)
		gtkWidgetShowAll(w)

	return(w)
} 


gtkCTreeInsertNode <-
function(object, parent, sibling, text, spacing = "5", pixmap.closed = "NULL", mask.closed = "NULL", pixmap.opened = "NULL", mask.opened = "NULL", is.leaf = "1", expanded = "0", .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCTree")
	checkPtrType(parent, "GtkCTreeNode")
	checkPtrType(sibling, "GtkCTreeNode")
	text <- as.list(as.character(text))
	spacing <- as.integer(spacing)
	if (!is.null( pixmap.closed )) checkPtrType(pixmap.closed, "GdkPixmap")
	if (!is.null( mask.closed )) checkPtrType(mask.closed, "GdkBitmap")
	if (!is.null( pixmap.opened )) checkPtrType(pixmap.opened, "GdkPixmap")
	if (!is.null( mask.opened )) checkPtrType(mask.opened, "GdkBitmap")
	is.leaf <- as.logical(is.leaf)
	expanded <- as.logical(expanded)

	w <- .RGtkCall("S_gtk_ctree_insert_node", object, parent, sibling, text, spacing, pixmap.closed, mask.closed, pixmap.opened, mask.opened, is.leaf, expanded, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkCTreeRemoveNode <-
function(object, node, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCTree")
	checkPtrType(node, "GtkCTreeNode")

	w <- .RGtkCall("S_gtk_ctree_remove_node", object, node, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkCTreeInsertGnode <-
function(object, parent, sibling, gnode, func, data = NULL, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCTree")
	checkPtrType(parent, "GtkCTreeNode")
	checkPtrType(sibling, "GtkCTreeNode")
	checkPtrType(gnode, "GNode")
	func <- as.function(func)
	

	w <- .RGtkCall("S_gtk_ctree_insert_gnode", object, parent, sibling, gnode, func, data, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkCTreeExportToGnode <-
function(object, parent, sibling, node, func, data = NULL, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCTree")
	checkPtrType(parent, "GNode")
	checkPtrType(sibling, "GNode")
	checkPtrType(node, "GtkCTreeNode")
	func <- as.function(func)
	

	w <- .RGtkCall("S_gtk_ctree_export_to_gnode", object, parent, sibling, node, func, data, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkCTreePostRecursive <-
function(object, node, func, data = NULL, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCTree")
	checkPtrType(node, "GtkCTreeNode")
	func <- as.function(func)
	

	w <- .RGtkCall("S_gtk_ctree_post_recursive", object, node, func, data, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkCTreePostRecursiveToDepth <-
function(object, node, depth, func, data = NULL, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCTree")
	checkPtrType(node, "GtkCTreeNode")
	depth <- as.integer(depth)
	func <- as.function(func)
	

	w <- .RGtkCall("S_gtk_ctree_post_recursive_to_depth", object, node, depth, func, data, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkCTreePreRecursive <-
function(object, node, func, data = NULL, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCTree")
	checkPtrType(node, "GtkCTreeNode")
	func <- as.function(func)
	

	w <- .RGtkCall("S_gtk_ctree_pre_recursive", object, node, func, data, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkCTreePreRecursiveToDepth <-
function(object, node, depth, func, data = NULL, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCTree")
	checkPtrType(node, "GtkCTreeNode")
	depth <- as.integer(depth)
	func <- as.function(func)
	

	w <- .RGtkCall("S_gtk_ctree_pre_recursive_to_depth", object, node, depth, func, data, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkCTreeIsViewable <-
function(object, node, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCTree")
	checkPtrType(node, "GtkCTreeNode")

	w <- .RGtkCall("S_gtk_ctree_is_viewable", object, node, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkCTreeLast <-
function(object, node, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCTree")
	checkPtrType(node, "GtkCTreeNode")

	w <- .RGtkCall("S_gtk_ctree_last", object, node, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkCTreeFindNodePtr <-
function(object, ctree.row, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCTree")
	checkPtrType(ctree.row, "GtkCTreeRow")

	w <- .RGtkCall("S_gtk_ctree_find_node_ptr", object, ctree.row, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkCTreeNodeNth <-
function(object, row, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCTree")
	row <- as.numeric(row)

	w <- .RGtkCall("S_gtk_ctree_node_nth", object, row, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkCTreeFind <-
function(object, node, child, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCTree")
	checkPtrType(node, "GtkCTreeNode")
	checkPtrType(child, "GtkCTreeNode")

	w <- .RGtkCall("S_gtk_ctree_find", object, node, child, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkCTreeIsAncestor <-
function(object, node, child, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCTree")
	checkPtrType(node, "GtkCTreeNode")
	checkPtrType(child, "GtkCTreeNode")

	w <- .RGtkCall("S_gtk_ctree_is_ancestor", object, node, child, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkCTreeFindByRowData <-
function(object, node, data = NULL, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCTree")
	checkPtrType(node, "GtkCTreeNode")
	

	w <- .RGtkCall("S_gtk_ctree_find_by_row_data", object, node, data, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkCTreeFindAllByRowData <-
function(object, node, data = NULL, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCTree")
	checkPtrType(node, "GtkCTreeNode")
	

	w <- .RGtkCall("S_gtk_ctree_find_all_by_row_data", object, node, data, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkCTreeFindByRowDataCustom <-
function(object, node, data = NULL, func, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCTree")
	checkPtrType(node, "GtkCTreeNode")
	
	func <- as.function(func)

	w <- .RGtkCall("S_gtk_ctree_find_by_row_data_custom", object, node, data, func, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkCTreeFindAllByRowDataCustom <-
function(object, node, data = NULL, func, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCTree")
	checkPtrType(node, "GtkCTreeNode")
	
	func <- as.function(func)

	w <- .RGtkCall("S_gtk_ctree_find_all_by_row_data_custom", object, node, data, func, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkCTreeIsHotSpot <-
function(object, x, y, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCTree")
	x <- as.integer(x)
	y <- as.integer(y)

	w <- .RGtkCall("S_gtk_ctree_is_hot_spot", object, x, y, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkCTreeMove <-
function(object, node, new.parent = NULL, new.sibling = NULL, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCTree")
	checkPtrType(node, "GtkCTreeNode")
	if (!is.null( new.parent )) checkPtrType(new.parent, "GtkCTreeNode")
	if (!is.null( new.sibling )) checkPtrType(new.sibling, "GtkCTreeNode")

	w <- .RGtkCall("S_gtk_ctree_move", object, node, new.parent, new.sibling, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkCTreeExpand <-
function(object, node, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCTree")
	checkPtrType(node, "GtkCTreeNode")

	w <- .RGtkCall("S_gtk_ctree_expand", object, node, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkCTreeExpandRecursive <-
function(object, node, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCTree")
	checkPtrType(node, "GtkCTreeNode")

	w <- .RGtkCall("S_gtk_ctree_expand_recursive", object, node, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkCTreeExpandToDepth <-
function(object, node, depth, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCTree")
	checkPtrType(node, "GtkCTreeNode")
	depth <- as.integer(depth)

	w <- .RGtkCall("S_gtk_ctree_expand_to_depth", object, node, depth, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkCTreeCollapse <-
function(object, node, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCTree")
	checkPtrType(node, "GtkCTreeNode")

	w <- .RGtkCall("S_gtk_ctree_collapse", object, node, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkCTreeCollapseRecursive <-
function(object, node, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCTree")
	checkPtrType(node, "GtkCTreeNode")

	w <- .RGtkCall("S_gtk_ctree_collapse_recursive", object, node, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkCTreeCollapseToDepth <-
function(object, node, depth, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCTree")
	checkPtrType(node, "GtkCTreeNode")
	depth <- as.integer(depth)

	w <- .RGtkCall("S_gtk_ctree_collapse_to_depth", object, node, depth, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkCTreeToggleExpansion <-
function(object, node, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCTree")
	checkPtrType(node, "GtkCTreeNode")

	w <- .RGtkCall("S_gtk_ctree_toggle_expansion", object, node, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkCTreeToggleExpansionRecursive <-
function(object, node, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCTree")
	checkPtrType(node, "GtkCTreeNode")

	w <- .RGtkCall("S_gtk_ctree_toggle_expansion_recursive", object, node, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkCTreeSelect <-
function(object, node, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCTree")
	checkPtrType(node, "GtkCTreeNode")

	w <- .RGtkCall("S_gtk_ctree_select", object, node, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkCTreeSelectRecursive <-
function(object, node, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCTree")
	checkPtrType(node, "GtkCTreeNode")

	w <- .RGtkCall("S_gtk_ctree_select_recursive", object, node, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkCTreeUnselect <-
function(object, node, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCTree")
	checkPtrType(node, "GtkCTreeNode")

	w <- .RGtkCall("S_gtk_ctree_unselect", object, node, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkCTreeUnselectRecursive <-
function(object, node, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCTree")
	checkPtrType(node, "GtkCTreeNode")

	w <- .RGtkCall("S_gtk_ctree_unselect_recursive", object, node, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkCTreeRealSelectRecursive <-
function(object, node, state, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCTree")
	checkPtrType(node, "GtkCTreeNode")
	state <- as.integer(state)

	w <- .RGtkCall("S_gtk_ctree_real_select_recursive", object, node, state, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkCTreeNodeSetText <-
function(object, node, column, text, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCTree")
	checkPtrType(node, "GtkCTreeNode")
	column <- as.integer(column)
	text <- as.character(text)

	w <- .RGtkCall("S_gtk_ctree_node_set_text", object, node, column, text, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkCTreeNodeSetPixmap <-
function(object, node, column, pixmap, mask = NULL, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCTree")
	checkPtrType(node, "GtkCTreeNode")
	column <- as.integer(column)
	checkPtrType(pixmap, "GdkPixmap")
	if (!is.null( mask )) checkPtrType(mask, "GdkBitmap")

	w <- .RGtkCall("S_gtk_ctree_node_set_pixmap", object, node, column, pixmap, mask, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkCTreeNodeSetPixtext <-
function(object, node, column, text, spacing, pixmap, mask = NULL, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCTree")
	checkPtrType(node, "GtkCTreeNode")
	column <- as.integer(column)
	text <- as.character(text)
	spacing <- as.integer(spacing)
	checkPtrType(pixmap, "GdkPixmap")
	if (!is.null( mask )) checkPtrType(mask, "GdkBitmap")

	w <- .RGtkCall("S_gtk_ctree_node_set_pixtext", object, node, column, text, spacing, pixmap, mask, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkCTreeSetNodeInfo <-
function(object, node, text, spacing, pixmap.closed = NULL, mask.closed = NULL, pixmap.opened = NULL, mask.opened = NULL, is.leaf, expanded, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCTree")
	checkPtrType(node, "GtkCTreeNode")
	text <- as.character(text)
	spacing <- as.integer(spacing)
	if (!is.null( pixmap.closed )) checkPtrType(pixmap.closed, "GdkPixmap")
	if (!is.null( mask.closed )) checkPtrType(mask.closed, "GdkBitmap")
	if (!is.null( pixmap.opened )) checkPtrType(pixmap.opened, "GdkPixmap")
	if (!is.null( mask.opened )) checkPtrType(mask.opened, "GdkBitmap")
	is.leaf <- as.logical(is.leaf)
	expanded <- as.logical(expanded)

	w <- .RGtkCall("S_gtk_ctree_set_node_info", object, node, text, spacing, pixmap.closed, mask.closed, pixmap.opened, mask.opened, is.leaf, expanded, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkCTreeNodeSetShift <-
function(object, node, column, vertical, horizontal, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCTree")
	checkPtrType(node, "GtkCTreeNode")
	column <- as.integer(column)
	vertical <- as.integer(vertical)
	horizontal <- as.integer(horizontal)

	w <- .RGtkCall("S_gtk_ctree_node_set_shift", object, node, column, vertical, horizontal, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkCTreeNodeSetSelectable <-
function(object, node, selectable, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCTree")
	checkPtrType(node, "GtkCTreeNode")
	selectable <- as.logical(selectable)

	w <- .RGtkCall("S_gtk_ctree_node_set_selectable", object, node, selectable, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkCTreeNodeGetSelectable <-
function(object, node, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCTree")
	checkPtrType(node, "GtkCTreeNode")

	w <- .RGtkCall("S_gtk_ctree_node_get_selectable", object, node, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkCTreeNodeGetCellType <-
function(object, node, column, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCTree")
	checkPtrType(node, "GtkCTreeNode")
	column <- as.integer(column)

	w <- .RGtkCall("S_gtk_ctree_node_get_cell_type", object, node, column, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkCTreeNodeGetText <-
function(object, node, column, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCTree")
	checkPtrType(node, "GtkCTreeNode")
	column <- as.integer(column)

	w <- .RGtkCall("S_gtk_ctree_node_get_text", object, node, column, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkCTreeNodeGetPixmap <-
function(object, node, column, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCTree")
	checkPtrType(node, "GtkCTreeNode")
	column <- as.integer(column)

	w <- .RGtkCall("S_gtk_ctree_node_get_pixmap", object, node, column, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkCTreeNodeGetPixtext <-
function(object, node, column, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCTree")
	checkPtrType(node, "GtkCTreeNode")
	column <- as.integer(column)

	w <- .RGtkCall("S_gtk_ctree_node_get_pixtext", object, node, column, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkCTreeGetNodeInfo <-
function(object, node, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCTree")
	checkPtrType(node, "GtkCTreeNode")

	w <- .RGtkCall("S_gtk_ctree_get_node_info", object, node, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkCTreeNodeSetRowStyle <-
function(object, node, style, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCTree")
	checkPtrType(node, "GtkCTreeNode")
	checkPtrType(style, "GtkStyle")

	w <- .RGtkCall("S_gtk_ctree_node_set_row_style", object, node, style, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkCTreeNodeGetRowStyle <-
function(object, node, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCTree")
	checkPtrType(node, "GtkCTreeNode")

	w <- .RGtkCall("S_gtk_ctree_node_get_row_style", object, node, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkCTreeNodeSetCellStyle <-
function(object, node, column, style, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCTree")
	checkPtrType(node, "GtkCTreeNode")
	column <- as.integer(column)
	checkPtrType(style, "GtkStyle")

	w <- .RGtkCall("S_gtk_ctree_node_set_cell_style", object, node, column, style, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkCTreeNodeGetCellStyle <-
function(object, node, column, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCTree")
	checkPtrType(node, "GtkCTreeNode")
	column <- as.integer(column)

	w <- .RGtkCall("S_gtk_ctree_node_get_cell_style", object, node, column, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkCTreeNodeSetForeground <-
function(object, node, color, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCTree")
	checkPtrType(node, "GtkCTreeNode")
	color <- as.GdkColor(color)

	w <- .RGtkCall("S_gtk_ctree_node_set_foreground", object, node, color, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkCTreeNodeSetBackground <-
function(object, node, color, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCTree")
	checkPtrType(node, "GtkCTreeNode")
	color <- as.GdkColor(color)

	w <- .RGtkCall("S_gtk_ctree_node_set_background", object, node, color, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkCTreeNodeSetRowData <-
function(object, node, data, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCTree")
	checkPtrType(node, "GtkCTreeNode")
	

	w <- .RGtkCall("S_gtk_ctree_node_set_row_data", object, node, data, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkCTreeNodeSetRowDataFull <-
function(object, node, data, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCTree")
	checkPtrType(node, "GtkCTreeNode")
	

	w <- .RGtkCall("S_gtk_ctree_node_set_row_data_full", object, node, data, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkCTreeNodeGetRowData <-
function(object, node, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCTree")
	checkPtrType(node, "GtkCTreeNode")

	w <- .RGtkCall("S_gtk_ctree_node_get_row_data", object, node, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkCTreeNodeMoveto <-
function(object, node, column, row.align, col.align, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCTree")
	checkPtrType(node, "GtkCTreeNode")
	column <- as.integer(column)
	row.align <- as.numeric(row.align)
	col.align <- as.numeric(col.align)

	w <- .RGtkCall("S_gtk_ctree_node_moveto", object, node, column, row.align, col.align, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkCTreeNodeIsVisible <-
function(object, node, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCTree")
	checkPtrType(node, "GtkCTreeNode")

	w <- .RGtkCall("S_gtk_ctree_node_is_visible", object, node, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkCTreeSetIndent <-
function(object, indent, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCTree")
	indent <- as.integer(indent)

	w <- .RGtkCall("S_gtk_ctree_set_indent", object, indent, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkCTreeSetSpacing <-
function(object, spacing, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCTree")
	spacing <- as.integer(spacing)

	w <- .RGtkCall("S_gtk_ctree_set_spacing", object, spacing, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkCTreeSetShowStub <-
function(object, show.stub, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCTree")
	show.stub <- as.logical(show.stub)

	w <- .RGtkCall("S_gtk_ctree_set_show_stub", object, show.stub, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkCTreeSetLineStyle <-
function(object, line.style, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCTree")
	

	w <- .RGtkCall("S_gtk_ctree_set_line_style", object, line.style, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkCTreeSetExpanderStyle <-
function(object, expander.style, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCTree")
	

	w <- .RGtkCall("S_gtk_ctree_set_expander_style", object, expander.style, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkCTreeSortNode <-
function(object, node, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCTree")
	checkPtrType(node, "GtkCTreeNode")

	w <- .RGtkCall("S_gtk_ctree_sort_node", object, node, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkCTreeSortRecursive <-
function(object, node, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCTree")
	checkPtrType(node, "GtkCTreeNode")

	w <- .RGtkCall("S_gtk_ctree_sort_recursive", object, node, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkCTreeNodeGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_ctree_node_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkCurveGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_curve_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkCurveNew <-
function(show = TRUE, .flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_curve_new", PACKAGE = "RGtk2", .flush = .flush)

	if(show)
		gtkWidgetShowAll(w)

	return(w)
} 


gtkCurveReset <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCurve")

	w <- .RGtkCall("S_gtk_curve_reset", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkCurveSetGamma <-
function(object, gamma, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCurve")
	gamma <- as.numeric(gamma)

	w <- .RGtkCall("S_gtk_curve_set_gamma", object, gamma, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkCurveSetRange <-
function(object, min.x, max.x, min.y, max.y, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCurve")
	min.x <- as.numeric(min.x)
	max.x <- as.numeric(max.x)
	min.y <- as.numeric(min.y)
	max.y <- as.numeric(max.y)

	w <- .RGtkCall("S_gtk_curve_set_range", object, min.x, max.x, min.y, max.y, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkCurveGetVector <-
function(object, veclen, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCurve")
	veclen <- as.integer(veclen)

	w <- .RGtkCall("S_gtk_curve_get_vector", object, veclen, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkCurveSetVector <-
function(object, vector, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCurve")
	vector <- as.list(as.numeric(vector))

	w <- .RGtkCall("S_gtk_curve_set_vector", object, vector, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkCurveSetCurveType <-
function(object, type, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkCurve")
	

	w <- .RGtkCall("S_gtk_curve_set_curve_type", object, type, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkDialogGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_dialog_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkDialogNew <-
function(show = TRUE, .flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_dialog_new", PACKAGE = "RGtk2", .flush = .flush)

	if(show)
		gtkWidgetShowAll(w)

	return(w)
} 


gtkDialogAddActionWidget <-
function(object, child, response.id, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkDialog")
	checkPtrType(child, "GtkWidget")
	response.id <- as.integer(response.id)

	w <- .RGtkCall("S_gtk_dialog_add_action_widget", object, child, response.id, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkDialogAddButton <-
function(object, button.text, response.id, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkDialog")
	button.text <- as.character(button.text)
	response.id <- as.integer(response.id)

	w <- .RGtkCall("S_gtk_dialog_add_button", object, button.text, response.id, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkDialogSetResponseSensitive <-
function(object, response.id, setting, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkDialog")
	response.id <- as.integer(response.id)
	setting <- as.logical(setting)

	w <- .RGtkCall("S_gtk_dialog_set_response_sensitive", object, response.id, setting, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkDialogSetDefaultResponse <-
function(object, response.id, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkDialog")
	response.id <- as.integer(response.id)

	w <- .RGtkCall("S_gtk_dialog_set_default_response", object, response.id, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkDialogGetResponseForWidget <-
function(object, widget, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkDialog")
	checkPtrType(widget, "GtkWidget")

	w <- .RGtkCall("S_gtk_dialog_get_response_for_widget", object, widget, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkDialogSetHasSeparator <-
function(object, setting, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkDialog")
	setting <- as.logical(setting)

	w <- .RGtkCall("S_gtk_dialog_set_has_separator", object, setting, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkDialogGetHasSeparator <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkDialog")

	w <- .RGtkCall("S_gtk_dialog_get_has_separator", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkDialogResponse <-
function(object, response.id, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkDialog")
	response.id <- as.integer(response.id)

	w <- .RGtkCall("S_gtk_dialog_response", object, response.id, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkDialogRun <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkDialog")

	w <- .RGtkCall("S_gtk_dialog_run", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkDialogSetAlternativeButtonOrderFromArray <-
function(object, new.order, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkDialog")
	new.order <- as.list(as.integer(new.order))

	w <- .RGtkCall("S_gtk_dialog_set_alternative_button_order_from_array", object, new.order, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkDragCheckThreshold <-
function(object, start.x, start.y, current.x, current.y, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWidget")
	start.x <- as.integer(start.x)
	start.y <- as.integer(start.y)
	current.x <- as.integer(current.x)
	current.y <- as.integer(current.y)

	w <- .RGtkCall("S_gtk_drag_check_threshold", object, start.x, start.y, current.x, current.y, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkDragGetData <-
function(object, context, target, time = "GDK_CURRENT_TIME", .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWidget")
	checkPtrType(context, "GdkDragContext")
	target <- as.GdkAtom(target)
	time <- as.numeric(time)

	w <- .RGtkCall("S_gtk_drag_get_data", object, context, target, time, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkDragHighlight <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWidget")

	w <- .RGtkCall("S_gtk_drag_highlight", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkDragUnhighlight <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWidget")

	w <- .RGtkCall("S_gtk_drag_unhighlight", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkDragDestSet <-
function(object, flags, targets, actions, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWidget")
	
	targets <- lapply(targets, function(x) { x <- as.GtkTargetEntry(x); x })
	

	w <- .RGtkCall("S_gtk_drag_dest_set", object, flags, targets, actions, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkDragDestSetProxy <-
function(object, proxy.window, protocol, use.coordinates, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWidget")
	checkPtrType(proxy.window, "GdkWindow")
	
	use.coordinates <- as.logical(use.coordinates)

	w <- .RGtkCall("S_gtk_drag_dest_set_proxy", object, proxy.window, protocol, use.coordinates, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkDragDestUnset <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWidget")

	w <- .RGtkCall("S_gtk_drag_dest_unset", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkDragDestFindTarget <-
function(object, context, target.list, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWidget")
	checkPtrType(context, "GdkDragContext")
	checkPtrType(target.list, "GtkTargetList")

	w <- .RGtkCall("S_gtk_drag_dest_find_target", object, context, target.list, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkDragDestGetTargetList <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWidget")

	w <- .RGtkCall("S_gtk_drag_dest_get_target_list", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkDragDestSetTargetList <-
function(object, target.list, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWidget")
	checkPtrType(target.list, "GtkTargetList")

	w <- .RGtkCall("S_gtk_drag_dest_set_target_list", object, target.list, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkDragSourceSet <-
function(object, start.button.mask, targets, actions, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWidget")
	
	targets <- lapply(targets, function(x) { x <- as.GtkTargetEntry(x); x })
	

	w <- .RGtkCall("S_gtk_drag_source_set", object, start.button.mask, targets, actions, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkDragSourceUnset <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWidget")

	w <- .RGtkCall("S_gtk_drag_source_unset", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkDragSourceSetIcon <-
function(object, colormap, pixmap, mask = "NULL", .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWidget")
	checkPtrType(colormap, "GdkColormap")
	checkPtrType(pixmap, "GdkPixmap")
	if (!is.null( mask )) checkPtrType(mask, "GdkBitmap")

	w <- .RGtkCall("S_gtk_drag_source_set_icon", object, colormap, pixmap, mask, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkDragSourceSetIconPixbuf <-
function(object, pixbuf, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWidget")
	checkPtrType(pixbuf, "GdkPixbuf")

	w <- .RGtkCall("S_gtk_drag_source_set_icon_pixbuf", object, pixbuf, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkDragSourceSetIconStock <-
function(object, stock.id, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWidget")
	stock.id <- as.character(stock.id)

	w <- .RGtkCall("S_gtk_drag_source_set_icon_stock", object, stock.id, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkDragSourceGetTargetList <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWidget")

	w <- .RGtkCall("S_gtk_drag_source_get_target_list", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkDragSourceSetTargetList <-
function(object, target.list, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWidget")
	checkPtrType(target.list, "GtkTargetList")

	w <- .RGtkCall("S_gtk_drag_source_set_target_list", object, target.list, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkDragBegin <-
function(object, targets, actions, button, event, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWidget")
	checkPtrType(targets, "GtkTargetList")
	
	button <- as.integer(button)
	checkPtrType(event, "GdkEvent")

	w <- .RGtkCall("S_gtk_drag_begin", object, targets, actions, button, event, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkDragSetDefaultIcon <-
function(colormap, pixmap, mask, hot.x, hot.y, .flush = TRUE, .depwarn = TRUE)
{
	if (.depwarn)
		warning("This function is deprecated: change the stock pixbuf for GTK_STOCK_DND")

	checkPtrType(colormap, "GdkColormap")
	checkPtrType(pixmap, "GdkPixmap")
	checkPtrType(mask, "GdkBitmap")
	hot.x <- as.integer(hot.x)
	hot.y <- as.integer(hot.y)

	w <- .RGtkCall("S_gtk_drag_set_default_icon", colormap, pixmap, mask, hot.x, hot.y, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkDragDestAddTextTargets <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWidget")

	w <- .RGtkCall("S_gtk_drag_dest_add_text_targets", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkDragDestAddImageTargets <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWidget")

	w <- .RGtkCall("S_gtk_drag_dest_add_image_targets", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkDragDestAddUriTargets <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWidget")

	w <- .RGtkCall("S_gtk_drag_dest_add_uri_targets", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkDragSourceAddTextTargets <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWidget")

	w <- .RGtkCall("S_gtk_drag_source_add_text_targets", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkDragSourceAddImageTargets <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWidget")

	w <- .RGtkCall("S_gtk_drag_source_add_image_targets", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkDragSourceAddUriTargets <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWidget")

	w <- .RGtkCall("S_gtk_drag_source_add_uri_targets", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTargetListAddTextTargets <-
function(list, info, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(list, "GtkTargetList")
	info <- as.numeric(info)

	w <- .RGtkCall("S_gtk_target_list_add_text_targets", list, info, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTargetListAddImageTargets <-
function(list, info, writable, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(list, "GtkTargetList")
	info <- as.numeric(info)
	writable <- as.logical(writable)

	w <- .RGtkCall("S_gtk_target_list_add_image_targets", list, info, writable, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTargetListAddUriTargets <-
function(list, info, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(list, "GtkTargetList")
	info <- as.numeric(info)

	w <- .RGtkCall("S_gtk_target_list_add_uri_targets", list, info, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkDragGetSourceWidget <-
function(context, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(context, "GdkDragContext")

	w <- .RGtkCall("S_gtk_drag_get_source_widget", context, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkDragSourceSetIconName <-
function(widget, icon.name, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(widget, "GtkWidget")
	icon.name <- as.character(icon.name)

	w <- .RGtkCall("S_gtk_drag_source_set_icon_name", widget, icon.name, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkDrawingAreaGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_drawing_area_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkDrawingAreaNew <-
function(show = TRUE, .flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_drawing_area_new", PACKAGE = "RGtk2", .flush = .flush)

	if(show)
		gtkWidgetShowAll(w)

	return(w)
} 


gtkDrawingAreaSize <-
function(object, width, height, .flush = TRUE, .depwarn = TRUE)
{
	if (.depwarn)
		warning("This function is deprecated: use GtkWidget.set_size_request")

	checkPtrType(object, "GtkDrawingArea")
	width <- as.integer(width)
	height <- as.integer(height)

	w <- .RGtkCall("S_gtk_drawing_area_size", object, width, height, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkEditableGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_editable_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkEditableSelectRegion <-
function(object, start, end, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkEditable")
	start <- as.integer(start)
	end <- as.integer(end)

	w <- .RGtkCall("S_gtk_editable_select_region", object, start, end, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkEditableGetSelectionBounds <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkEditable")

	w <- .RGtkCall("S_gtk_editable_get_selection_bounds", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkEditableInsertText <-
function(object, new.text, position = "0", .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkEditable")
	new.text <- as.character(new.text)
	position <- as.list(as.integer(position))

	w <- .RGtkCall("S_gtk_editable_insert_text", object, new.text, position, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkEditableDeleteText <-
function(object, start.pos, end.pos, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkEditable")
	start.pos <- as.integer(start.pos)
	end.pos <- as.integer(end.pos)

	w <- .RGtkCall("S_gtk_editable_delete_text", object, start.pos, end.pos, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkEditableGetChars <-
function(object, start.pos, end.pos, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkEditable")
	start.pos <- as.integer(start.pos)
	end.pos <- as.integer(end.pos)

	w <- .RGtkCall("S_gtk_editable_get_chars", object, start.pos, end.pos, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkEditableCutClipboard <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkEditable")

	w <- .RGtkCall("S_gtk_editable_cut_clipboard", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkEditableCopyClipboard <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkEditable")

	w <- .RGtkCall("S_gtk_editable_copy_clipboard", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkEditablePasteClipboard <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkEditable")

	w <- .RGtkCall("S_gtk_editable_paste_clipboard", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkEditableDeleteSelection <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkEditable")

	w <- .RGtkCall("S_gtk_editable_delete_selection", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkEditableSetPosition <-
function(object, position, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkEditable")
	position <- as.integer(position)

	w <- .RGtkCall("S_gtk_editable_set_position", object, position, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkEditableGetPosition <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkEditable")

	w <- .RGtkCall("S_gtk_editable_get_position", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkEditableSetEditable <-
function(object, is.editable, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkEditable")
	is.editable <- as.logical(is.editable)

	w <- .RGtkCall("S_gtk_editable_set_editable", object, is.editable, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkEditableGetEditable <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkEditable")

	w <- .RGtkCall("S_gtk_editable_get_editable", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkEntryGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_entry_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkEntryNew <-
function(show = TRUE, .flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_entry_new", PACKAGE = "RGtk2", .flush = .flush)

	if(show)
		gtkWidgetShowAll(w)

	return(w)
} 


gtkEntryNewWithMaxLength <-
function(max = "0", show = TRUE, .flush = TRUE, .depwarn = TRUE)
{
	if (.depwarn)
		warning("This function is deprecated: use gtk.Entry() instead")

	max <- as.integer(max)

	w <- .RGtkCall("S_gtk_entry_new_with_max_length", max, PACKAGE = "RGtk2", .flush = .flush)

	if(show)
		gtkWidgetShowAll(w)

	return(w)
} 


gtkEntrySetVisibility <-
function(object, visible, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkEntry")
	visible <- as.logical(visible)

	w <- .RGtkCall("S_gtk_entry_set_visibility", object, visible, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkEntryGetVisibility <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkEntry")

	w <- .RGtkCall("S_gtk_entry_get_visibility", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkEntrySetInvisibleChar <-
function(object, ch, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkEntry")
	ch <- as.numeric(ch)

	w <- .RGtkCall("S_gtk_entry_set_invisible_char", object, ch, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkEntryGetInvisibleChar <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkEntry")

	w <- .RGtkCall("S_gtk_entry_get_invisible_char", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkEntrySetHasFrame <-
function(object, setting, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkEntry")
	setting <- as.logical(setting)

	w <- .RGtkCall("S_gtk_entry_set_has_frame", object, setting, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkEntryGetHasFrame <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkEntry")

	w <- .RGtkCall("S_gtk_entry_get_has_frame", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkEntrySetMaxLength <-
function(object, max, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkEntry")
	max <- as.integer(max)

	w <- .RGtkCall("S_gtk_entry_set_max_length", object, max, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkEntryGetMaxLength <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkEntry")

	w <- .RGtkCall("S_gtk_entry_get_max_length", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkEntrySetActivatesDefault <-
function(object, setting, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkEntry")
	setting <- as.logical(setting)

	w <- .RGtkCall("S_gtk_entry_set_activates_default", object, setting, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkEntryGetActivatesDefault <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkEntry")

	w <- .RGtkCall("S_gtk_entry_get_activates_default", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkEntrySetWidthChars <-
function(object, n.chars, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkEntry")
	n.chars <- as.integer(n.chars)

	w <- .RGtkCall("S_gtk_entry_set_width_chars", object, n.chars, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkEntryGetWidthChars <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkEntry")

	w <- .RGtkCall("S_gtk_entry_get_width_chars", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkEntrySetText <-
function(object, text, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkEntry")
	text <- as.character(text)

	w <- .RGtkCall("S_gtk_entry_set_text", object, text, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkEntryGetText <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkEntry")

	w <- .RGtkCall("S_gtk_entry_get_text", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkEntryGetLayout <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkEntry")

	w <- .RGtkCall("S_gtk_entry_get_layout", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkEntryGetLayoutOffsets <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkEntry")

	w <- .RGtkCall("S_gtk_entry_get_layout_offsets", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkEntrySetAlignment <-
function(object, xalign, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkEntry")
	xalign <- as.numeric(xalign)

	w <- .RGtkCall("S_gtk_entry_set_alignment", object, xalign, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkEntryGetAlignment <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkEntry")

	w <- .RGtkCall("S_gtk_entry_get_alignment", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkEntrySetCompletion <-
function(object, completion, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkEntry")
	checkPtrType(completion, "GtkEntryCompletion")

	w <- .RGtkCall("S_gtk_entry_set_completion", object, completion, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkEntryGetCompletion <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkEntry")

	w <- .RGtkCall("S_gtk_entry_get_completion", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkEntryAppendText <-
function(object, text, .flush = TRUE, .depwarn = TRUE)
{
	if (.depwarn)
		warning("This function is deprecated: use GtkEditable.insert_text")

	checkPtrType(object, "GtkEntry")
	text <- as.character(text)

	w <- .RGtkCall("S_gtk_entry_append_text", object, text, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkEntryPrependText <-
function(object, text, .flush = TRUE, .depwarn = TRUE)
{
	if (.depwarn)
		warning("This function is deprecated: use GtkEditable.insert_text")

	checkPtrType(object, "GtkEntry")
	text <- as.character(text)

	w <- .RGtkCall("S_gtk_entry_prepend_text", object, text, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkEntrySetPosition <-
function(object, position, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkEntry")
	position <- as.integer(position)

	w <- .RGtkCall("S_gtk_entry_set_position", object, position, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkEntrySelectRegion <-
function(object, start, end, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkEntry")
	start <- as.integer(start)
	end <- as.integer(end)

	w <- .RGtkCall("S_gtk_entry_select_region", object, start, end, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkEntrySetEditable <-
function(object, editable, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkEntry")
	editable <- as.logical(editable)

	w <- .RGtkCall("S_gtk_entry_set_editable", object, editable, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkEntryCompletionGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_entry_completion_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkEntryCompletionNew <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_entry_completion_new", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkEntryCompletionGetEntry <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkEntryCompletion")

	w <- .RGtkCall("S_gtk_entry_completion_get_entry", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkEntryCompletionSetModel <-
function(object, model = "NULL", .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkEntryCompletion")
	if (!is.null( model )) checkPtrType(model, "GtkTreeModel")

	w <- .RGtkCall("S_gtk_entry_completion_set_model", object, model, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkEntryCompletionGetModel <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkEntryCompletion")

	w <- .RGtkCall("S_gtk_entry_completion_get_model", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkEntryCompletionSetMatchFunc <-
function(object, func, func.data = NULL, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkEntryCompletion")
	func <- as.function(func)
	

	w <- .RGtkCall("S_gtk_entry_completion_set_match_func", object, func, func.data, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkEntryCompletionSetMinimumKeyLength <-
function(object, length, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkEntryCompletion")
	length <- as.integer(length)

	w <- .RGtkCall("S_gtk_entry_completion_set_minimum_key_length", object, length, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkEntryCompletionGetMinimumKeyLength <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkEntryCompletion")

	w <- .RGtkCall("S_gtk_entry_completion_get_minimum_key_length", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkEntryCompletionComplete <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkEntryCompletion")

	w <- .RGtkCall("S_gtk_entry_completion_complete", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkEntryCompletionInsertActionText <-
function(object, index, text, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkEntryCompletion")
	index <- as.integer(index)
	text <- as.character(text)

	w <- .RGtkCall("S_gtk_entry_completion_insert_action_text", object, index, text, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkEntryCompletionInsertActionMarkup <-
function(object, index, markup, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkEntryCompletion")
	index <- as.integer(index)
	markup <- as.character(markup)

	w <- .RGtkCall("S_gtk_entry_completion_insert_action_markup", object, index, markup, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkEntryCompletionDeleteAction <-
function(object, index, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkEntryCompletion")
	index <- as.integer(index)

	w <- .RGtkCall("S_gtk_entry_completion_delete_action", object, index, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkEntryCompletionSetTextColumn <-
function(object, column, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkEntryCompletion")
	column <- as.integer(column)

	w <- .RGtkCall("S_gtk_entry_completion_set_text_column", object, column, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkEntryCompletionGetTextColumn <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkEntryCompletion")

	w <- .RGtkCall("S_gtk_entry_completion_get_text_column", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkEntryCompletionInsertPrefix <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkEntryCompletion")

	w <- .RGtkCall("S_gtk_entry_completion_insert_prefix", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkEntryCompletionSetInlineCompletion <-
function(object, inline.completion, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkEntryCompletion")
	inline.completion <- as.logical(inline.completion)

	w <- .RGtkCall("S_gtk_entry_completion_set_inline_completion", object, inline.completion, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkEntryCompletionGetInlineCompletion <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkEntryCompletion")

	w <- .RGtkCall("S_gtk_entry_completion_get_inline_completion", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkEntryCompletionSetPopupCompletion <-
function(object, popup.completion, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkEntryCompletion")
	popup.completion <- as.logical(popup.completion)

	w <- .RGtkCall("S_gtk_entry_completion_set_popup_completion", object, popup.completion, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkEntryCompletionGetPopupCompletion <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkEntryCompletion")

	w <- .RGtkCall("S_gtk_entry_completion_get_popup_completion", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkEntryCompletionSetPopupSetWidth <-
function(object, popup.set.width, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkEntryCompletion")
	popup.set.width <- as.logical(popup.set.width)

	w <- .RGtkCall("S_gtk_entry_completion_set_popup_set_width", object, popup.set.width, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkEntryCompletionGetPopupSetWidth <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkEntryCompletion")

	w <- .RGtkCall("S_gtk_entry_completion_get_popup_set_width", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkEntryCompletionSetPopupSingleMatch <-
function(object, popup.single.match, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkEntryCompletion")
	popup.single.match <- as.logical(popup.single.match)

	w <- .RGtkCall("S_gtk_entry_completion_set_popup_single_match", object, popup.single.match, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkEntryCompletionGetPopupSingleMatch <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkEntryCompletion")

	w <- .RGtkCall("S_gtk_entry_completion_get_popup_single_match", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkEventBoxGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_event_box_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkEventBoxNew <-
function(show = TRUE, .flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_event_box_new", PACKAGE = "RGtk2", .flush = .flush)

	if(show)
		gtkWidgetShowAll(w)

	return(w)
} 


gtkEventBoxGetVisibleWindow <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkEventBox")

	w <- .RGtkCall("S_gtk_event_box_get_visible_window", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkEventBoxSetVisibleWindow <-
function(object, visible.window, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkEventBox")
	visible.window <- as.logical(visible.window)

	w <- .RGtkCall("S_gtk_event_box_set_visible_window", object, visible.window, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkEventBoxGetAboveChild <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkEventBox")

	w <- .RGtkCall("S_gtk_event_box_get_above_child", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkEventBoxSetAboveChild <-
function(object, above.child, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkEventBox")
	above.child <- as.logical(above.child)

	w <- .RGtkCall("S_gtk_event_box_set_above_child", object, above.child, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkExpanderGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_expander_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkExpanderNew <-
function(label = NULL, show = TRUE, .flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_expander_new", label, PACKAGE = "RGtk2", .flush = .flush)

	if(show)
		gtkWidgetShowAll(w)

	return(w)
} 


gtkExpanderNewWithMnemonic <-
function(label = "NULL", .flush = TRUE, .depwarn = TRUE)
{
	if (!is.null( label )) label <- as.character(label)

	w <- .RGtkCall("S_gtk_expander_new_with_mnemonic", label, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkExpanderSetExpanded <-
function(object, expanded, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkExpander")
	expanded <- as.logical(expanded)

	w <- .RGtkCall("S_gtk_expander_set_expanded", object, expanded, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkExpanderGetExpanded <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkExpander")

	w <- .RGtkCall("S_gtk_expander_get_expanded", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkExpanderSetSpacing <-
function(object, spacing, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkExpander")
	spacing <- as.integer(spacing)

	w <- .RGtkCall("S_gtk_expander_set_spacing", object, spacing, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkExpanderGetSpacing <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkExpander")

	w <- .RGtkCall("S_gtk_expander_get_spacing", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkExpanderSetLabel <-
function(object, label = NULL, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkExpander")
	if (!is.null( label )) label <- as.character(label)

	w <- .RGtkCall("S_gtk_expander_set_label", object, label, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkExpanderGetLabel <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkExpander")

	w <- .RGtkCall("S_gtk_expander_get_label", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkExpanderSetUseUnderline <-
function(object, use.underline, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkExpander")
	use.underline <- as.logical(use.underline)

	w <- .RGtkCall("S_gtk_expander_set_use_underline", object, use.underline, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkExpanderGetUseUnderline <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkExpander")

	w <- .RGtkCall("S_gtk_expander_get_use_underline", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkExpanderSetUseMarkup <-
function(object, use.markup, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkExpander")
	use.markup <- as.logical(use.markup)

	w <- .RGtkCall("S_gtk_expander_set_use_markup", object, use.markup, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkExpanderGetUseMarkup <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkExpander")

	w <- .RGtkCall("S_gtk_expander_get_use_markup", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkExpanderSetLabelWidget <-
function(object, label.widget = NULL, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkExpander")
	if (!is.null( label.widget )) checkPtrType(label.widget, "GtkWidget")

	w <- .RGtkCall("S_gtk_expander_set_label_widget", object, label.widget, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkExpanderGetLabelWidget <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkExpander")

	w <- .RGtkCall("S_gtk_expander_get_label_widget", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkFileChooserGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_file_chooser_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkFileChooserErrorQuark <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_file_chooser_error_quark", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkFileChooserSetAction <-
function(object, action, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkFileChooser")
	

	w <- .RGtkCall("S_gtk_file_chooser_set_action", object, action, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkFileChooserGetAction <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkFileChooser")

	w <- .RGtkCall("S_gtk_file_chooser_get_action", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkFileChooserSetLocalOnly <-
function(object, local.only, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkFileChooser")
	local.only <- as.logical(local.only)

	w <- .RGtkCall("S_gtk_file_chooser_set_local_only", object, local.only, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkFileChooserGetLocalOnly <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkFileChooser")

	w <- .RGtkCall("S_gtk_file_chooser_get_local_only", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkFileChooserSetSelectMultiple <-
function(object, select.multiple, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkFileChooser")
	select.multiple <- as.logical(select.multiple)

	w <- .RGtkCall("S_gtk_file_chooser_set_select_multiple", object, select.multiple, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkFileChooserGetSelectMultiple <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkFileChooser")

	w <- .RGtkCall("S_gtk_file_chooser_get_select_multiple", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkFileChooserSetShowHidden <-
function(object, show.hidden, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkFileChooser")
	show.hidden <- as.logical(show.hidden)

	w <- .RGtkCall("S_gtk_file_chooser_set_show_hidden", object, show.hidden, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkFileChooserGetShowHidden <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkFileChooser")

	w <- .RGtkCall("S_gtk_file_chooser_get_show_hidden", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkFileChooserSetDoOverwriteConfirmation <-
function(object, do.overwrite.confirmation, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkFileChooser")
	do.overwrite.confirmation <- as.logical(do.overwrite.confirmation)

	w <- .RGtkCall("S_gtk_file_chooser_set_do_overwrite_confirmation", object, do.overwrite.confirmation, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkFileChooserGetDoOverwriteConfirmation <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkFileChooser")

	w <- .RGtkCall("S_gtk_file_chooser_get_do_overwrite_confirmation", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkFileChooserSetCurrentName <-
function(object, name, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkFileChooser")
	name <- as.character(name)

	w <- .RGtkCall("S_gtk_file_chooser_set_current_name", object, name, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkFileChooserGetFilename <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkFileChooser")

	w <- .RGtkCall("S_gtk_file_chooser_get_filename", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkFileChooserSetFilename <-
function(object, filename, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkFileChooser")
	filename <- as.character(filename)

	w <- .RGtkCall("S_gtk_file_chooser_set_filename", object, filename, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkFileChooserSelectFilename <-
function(object, filename, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkFileChooser")
	filename <- as.character(filename)

	w <- .RGtkCall("S_gtk_file_chooser_select_filename", object, filename, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkFileChooserUnselectFilename <-
function(object, filename, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkFileChooser")
	filename <- as.character(filename)

	w <- .RGtkCall("S_gtk_file_chooser_unselect_filename", object, filename, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkFileChooserSelectAll <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkFileChooser")

	w <- .RGtkCall("S_gtk_file_chooser_select_all", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkFileChooserUnselectAll <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkFileChooser")

	w <- .RGtkCall("S_gtk_file_chooser_unselect_all", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkFileChooserGetFilenames <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkFileChooser")

	w <- .RGtkCall("S_gtk_file_chooser_get_filenames", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkFileChooserSetCurrentFolder <-
function(object, filename, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkFileChooser")
	filename <- as.character(filename)

	w <- .RGtkCall("S_gtk_file_chooser_set_current_folder", object, filename, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkFileChooserGetCurrentFolder <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkFileChooser")

	w <- .RGtkCall("S_gtk_file_chooser_get_current_folder", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkFileChooserGetUri <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkFileChooser")

	w <- .RGtkCall("S_gtk_file_chooser_get_uri", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkFileChooserSetUri <-
function(object, uri, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkFileChooser")
	uri <- as.character(uri)

	w <- .RGtkCall("S_gtk_file_chooser_set_uri", object, uri, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkFileChooserSelectUri <-
function(object, uri, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkFileChooser")
	uri <- as.character(uri)

	w <- .RGtkCall("S_gtk_file_chooser_select_uri", object, uri, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkFileChooserUnselectUri <-
function(object, uri, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkFileChooser")
	uri <- as.character(uri)

	w <- .RGtkCall("S_gtk_file_chooser_unselect_uri", object, uri, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkFileChooserGetUris <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkFileChooser")

	w <- .RGtkCall("S_gtk_file_chooser_get_uris", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkFileChooserSetCurrentFolderUri <-
function(object, uri, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkFileChooser")
	uri <- as.character(uri)

	w <- .RGtkCall("S_gtk_file_chooser_set_current_folder_uri", object, uri, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkFileChooserGetCurrentFolderUri <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkFileChooser")

	w <- .RGtkCall("S_gtk_file_chooser_get_current_folder_uri", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkFileChooserSetPreviewWidget <-
function(object, preview.widget, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkFileChooser")
	checkPtrType(preview.widget, "GtkWidget")

	w <- .RGtkCall("S_gtk_file_chooser_set_preview_widget", object, preview.widget, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkFileChooserGetPreviewWidget <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkFileChooser")

	w <- .RGtkCall("S_gtk_file_chooser_get_preview_widget", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkFileChooserSetPreviewWidgetActive <-
function(object, active, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkFileChooser")
	active <- as.logical(active)

	w <- .RGtkCall("S_gtk_file_chooser_set_preview_widget_active", object, active, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkFileChooserGetPreviewWidgetActive <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkFileChooser")

	w <- .RGtkCall("S_gtk_file_chooser_get_preview_widget_active", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkFileChooserSetUsePreviewLabel <-
function(object, use.label, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkFileChooser")
	use.label <- as.logical(use.label)

	w <- .RGtkCall("S_gtk_file_chooser_set_use_preview_label", object, use.label, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkFileChooserGetUsePreviewLabel <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkFileChooser")

	w <- .RGtkCall("S_gtk_file_chooser_get_use_preview_label", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkFileChooserGetPreviewFilename <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkFileChooser")

	w <- .RGtkCall("S_gtk_file_chooser_get_preview_filename", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkFileChooserGetPreviewUri <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkFileChooser")

	w <- .RGtkCall("S_gtk_file_chooser_get_preview_uri", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkFileChooserSetExtraWidget <-
function(object, extra.widget, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkFileChooser")
	checkPtrType(extra.widget, "GtkWidget")

	w <- .RGtkCall("S_gtk_file_chooser_set_extra_widget", object, extra.widget, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkFileChooserGetExtraWidget <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkFileChooser")

	w <- .RGtkCall("S_gtk_file_chooser_get_extra_widget", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkFileChooserAddFilter <-
function(object, filter, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkFileChooser")
	checkPtrType(filter, "GtkFileFilter")

	w <- .RGtkCall("S_gtk_file_chooser_add_filter", object, filter, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkFileChooserRemoveFilter <-
function(object, filter, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkFileChooser")
	checkPtrType(filter, "GtkFileFilter")

	w <- .RGtkCall("S_gtk_file_chooser_remove_filter", object, filter, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkFileChooserListFilters <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkFileChooser")

	w <- .RGtkCall("S_gtk_file_chooser_list_filters", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkFileChooserSetFilter <-
function(object, filter, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkFileChooser")
	checkPtrType(filter, "GtkFileFilter")

	w <- .RGtkCall("S_gtk_file_chooser_set_filter", object, filter, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkFileChooserGetFilter <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkFileChooser")

	w <- .RGtkCall("S_gtk_file_chooser_get_filter", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkFileChooserAddShortcutFolder <-
function(object, folder, .flush = TRUE, .depwarn = TRUE, .errwarn = TRUE)
{
	checkPtrType(object, "GtkFileChooser")
	folder <- as.character(folder)

	w <- .RGtkCall("S_gtk_file_chooser_add_shortcut_folder", object, folder, PACKAGE = "RGtk2", .flush = .flush)

	if(.errwarn && !is.null(w$error))
		warning(w$error[["message"]])

	return(w)
} 


gtkFileChooserRemoveShortcutFolder <-
function(object, folder, .flush = TRUE, .depwarn = TRUE, .errwarn = TRUE)
{
	checkPtrType(object, "GtkFileChooser")
	folder <- as.character(folder)

	w <- .RGtkCall("S_gtk_file_chooser_remove_shortcut_folder", object, folder, PACKAGE = "RGtk2", .flush = .flush)

	if(.errwarn && !is.null(w$error))
		warning(w$error[["message"]])

	return(w)
} 


gtkFileChooserListShortcutFolders <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkFileChooser")

	w <- .RGtkCall("S_gtk_file_chooser_list_shortcut_folders", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkFileChooserAddShortcutFolderUri <-
function(object, uri, .flush = TRUE, .depwarn = TRUE, .errwarn = TRUE)
{
	checkPtrType(object, "GtkFileChooser")
	uri <- as.character(uri)

	w <- .RGtkCall("S_gtk_file_chooser_add_shortcut_folder_uri", object, uri, PACKAGE = "RGtk2", .flush = .flush)

	if(.errwarn && !is.null(w$error))
		warning(w$error[["message"]])

	return(w)
} 


gtkFileChooserRemoveShortcutFolderUri <-
function(object, uri, .flush = TRUE, .depwarn = TRUE, .errwarn = TRUE)
{
	checkPtrType(object, "GtkFileChooser")
	uri <- as.character(uri)

	w <- .RGtkCall("S_gtk_file_chooser_remove_shortcut_folder_uri", object, uri, PACKAGE = "RGtk2", .flush = .flush)

	if(.errwarn && !is.null(w$error))
		warning(w$error[["message"]])

	return(w)
} 


gtkFileChooserListShortcutFolderUris <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkFileChooser")

	w <- .RGtkCall("S_gtk_file_chooser_list_shortcut_folder_uris", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkFileChooserButtonGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_file_chooser_button_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkFileChooserButtonNew <-
function(title, action, show = TRUE, .flush = TRUE, .depwarn = TRUE)
{
	title <- as.character(title)
	

	w <- .RGtkCall("S_gtk_file_chooser_button_new", title, action, PACKAGE = "RGtk2", .flush = .flush)

	if(show)
		gtkWidgetShowAll(w)

	return(w)
} 


gtkFileChooserButtonNewWithBackend <-
function(title, action, backend, .flush = TRUE, .depwarn = TRUE)
{
	title <- as.character(title)
	
	backend <- as.character(backend)

	w <- .RGtkCall("S_gtk_file_chooser_button_new_with_backend", title, action, backend, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkFileChooserButtonNewWithDialog <-
function(dialog, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(dialog, "GtkWidget")

	w <- .RGtkCall("S_gtk_file_chooser_button_new_with_dialog", dialog, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkFileChooserButtonGetTitle <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkFileChooserButton")

	w <- .RGtkCall("S_gtk_file_chooser_button_get_title", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkFileChooserButtonSetTitle <-
function(object, title, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkFileChooserButton")
	title <- as.character(title)

	w <- .RGtkCall("S_gtk_file_chooser_button_set_title", object, title, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkFileChooserButtonGetWidthChars <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkFileChooserButton")

	w <- .RGtkCall("S_gtk_file_chooser_button_get_width_chars", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkFileChooserButtonSetWidthChars <-
function(object, n.chars, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkFileChooserButton")
	n.chars <- as.integer(n.chars)

	w <- .RGtkCall("S_gtk_file_chooser_button_set_width_chars", object, n.chars, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkFileChooserDialogGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_file_chooser_dialog_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkFileChooserWidgetGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_file_chooser_widget_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkFileChooserWidgetNew <-
function(action, show = TRUE, .flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_file_chooser_widget_new", action, PACKAGE = "RGtk2", .flush = .flush)

	if(show)
		gtkWidgetShowAll(w)

	return(w)
} 


gtkFileChooserWidgetNewWithBackend <-
function(action, backend, .flush = TRUE, .depwarn = TRUE)
{
	
	backend <- as.character(backend)

	w <- .RGtkCall("S_gtk_file_chooser_widget_new_with_backend", action, backend, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkFileFilterGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_file_filter_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkFileFilterNew <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_file_filter_new", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkFileFilterSetName <-
function(object, name, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkFileFilter")
	name <- as.character(name)

	w <- .RGtkCall("S_gtk_file_filter_set_name", object, name, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkFileFilterGetName <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkFileFilter")

	w <- .RGtkCall("S_gtk_file_filter_get_name", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkFileFilterAddMimeType <-
function(object, mime.type, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkFileFilter")
	mime.type <- as.character(mime.type)

	w <- .RGtkCall("S_gtk_file_filter_add_mime_type", object, mime.type, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkFileFilterAddPattern <-
function(object, pattern, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkFileFilter")
	pattern <- as.character(pattern)

	w <- .RGtkCall("S_gtk_file_filter_add_pattern", object, pattern, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkFileFilterAddPixbufFormats <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkFileFilter")

	w <- .RGtkCall("S_gtk_file_filter_add_pixbuf_formats", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkFileFilterAddCustom <-
function(object, needed, func, data = NULL, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkFileFilter")
	
	func <- as.function(func)
	

	w <- .RGtkCall("S_gtk_file_filter_add_custom", object, needed, func, data, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkFileFilterGetNeeded <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkFileFilter")

	w <- .RGtkCall("S_gtk_file_filter_get_needed", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkFileFilterFilter <-
function(object, filter.info, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkFileFilter")
	filter.info <- as.GtkFileFilterInfo(filter.info)

	w <- .RGtkCall("S_gtk_file_filter_filter", object, filter.info, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkFileSelectionGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_file_selection_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkFileSelectionNew <-
function(title = NULL, show = TRUE, .flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_file_selection_new", title, PACKAGE = "RGtk2", .flush = .flush)

	if(show)
		gtkWidgetShowAll(w)

	return(w)
} 


gtkFileSelectionSetFilename <-
function(object, filename, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkFileSelection")
	filename <- as.character(filename)

	w <- .RGtkCall("S_gtk_file_selection_set_filename", object, filename, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkFileSelectionGetFilename <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkFileSelection")

	w <- .RGtkCall("S_gtk_file_selection_get_filename", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkFileSelectionComplete <-
function(object, pattern, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkFileSelection")
	pattern <- as.character(pattern)

	w <- .RGtkCall("S_gtk_file_selection_complete", object, pattern, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkFileSelectionShowFileopButtons <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkFileSelection")

	w <- .RGtkCall("S_gtk_file_selection_show_fileop_buttons", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkFileSelectionHideFileopButtons <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkFileSelection")

	w <- .RGtkCall("S_gtk_file_selection_hide_fileop_buttons", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkFileSelectionGetSelections <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkFileSelection")

	w <- .RGtkCall("S_gtk_file_selection_get_selections", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkFileSelectionSetSelectMultiple <-
function(object, select.multiple, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkFileSelection")
	select.multiple <- as.logical(select.multiple)

	w <- .RGtkCall("S_gtk_file_selection_set_select_multiple", object, select.multiple, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkFileSelectionGetSelectMultiple <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkFileSelection")

	w <- .RGtkCall("S_gtk_file_selection_get_select_multiple", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkFixedGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_fixed_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkFixedNew <-
function(show = TRUE, .flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_fixed_new", PACKAGE = "RGtk2", .flush = .flush)

	if(show)
		gtkWidgetShowAll(w)

	return(w)
} 


gtkFixedPut <-
function(object, widget, x, y, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkFixed")
	checkPtrType(widget, "GtkWidget")
	x <- as.integer(x)
	y <- as.integer(y)

	w <- .RGtkCall("S_gtk_fixed_put", object, widget, x, y, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkFixedMove <-
function(object, widget, x, y, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkFixed")
	checkPtrType(widget, "GtkWidget")
	x <- as.integer(x)
	y <- as.integer(y)

	w <- .RGtkCall("S_gtk_fixed_move", object, widget, x, y, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkFixedSetHasWindow <-
function(object, has.window, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkFixed")
	has.window <- as.logical(has.window)

	w <- .RGtkCall("S_gtk_fixed_set_has_window", object, has.window, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkFixedGetHasWindow <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkFixed")

	w <- .RGtkCall("S_gtk_fixed_get_has_window", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkFontButtonGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_font_button_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkFontButtonNew <-
function(show = TRUE, .flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_font_button_new", PACKAGE = "RGtk2", .flush = .flush)

	if(show)
		gtkWidgetShowAll(w)

	return(w)
} 


gtkFontButtonNewWithFont <-
function(fontname, .flush = TRUE, .depwarn = TRUE)
{
	fontname <- as.character(fontname)

	w <- .RGtkCall("S_gtk_font_button_new_with_font", fontname, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkFontButtonGetTitle <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkFontButton")

	w <- .RGtkCall("S_gtk_font_button_get_title", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkFontButtonSetTitle <-
function(object, title, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkFontButton")
	title <- as.character(title)

	w <- .RGtkCall("S_gtk_font_button_set_title", object, title, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkFontButtonGetUseFont <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkFontButton")

	w <- .RGtkCall("S_gtk_font_button_get_use_font", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkFontButtonSetUseFont <-
function(object, use.font, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkFontButton")
	use.font <- as.logical(use.font)

	w <- .RGtkCall("S_gtk_font_button_set_use_font", object, use.font, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkFontButtonGetUseSize <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkFontButton")

	w <- .RGtkCall("S_gtk_font_button_get_use_size", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkFontButtonSetUseSize <-
function(object, use.size, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkFontButton")
	use.size <- as.logical(use.size)

	w <- .RGtkCall("S_gtk_font_button_set_use_size", object, use.size, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkFontButtonGetFontName <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkFontButton")

	w <- .RGtkCall("S_gtk_font_button_get_font_name", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkFontButtonSetFontName <-
function(object, fontname, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkFontButton")
	fontname <- as.character(fontname)

	w <- .RGtkCall("S_gtk_font_button_set_font_name", object, fontname, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkFontButtonGetShowStyle <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkFontButton")

	w <- .RGtkCall("S_gtk_font_button_get_show_style", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkFontButtonSetShowStyle <-
function(object, show.style, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkFontButton")
	show.style <- as.logical(show.style)

	w <- .RGtkCall("S_gtk_font_button_set_show_style", object, show.style, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkFontButtonGetShowSize <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkFontButton")

	w <- .RGtkCall("S_gtk_font_button_get_show_size", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkFontButtonSetShowSize <-
function(object, show.size, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkFontButton")
	show.size <- as.logical(show.size)

	w <- .RGtkCall("S_gtk_font_button_set_show_size", object, show.size, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkFontSelectionGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_font_selection_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkFontSelectionNew <-
function(show = TRUE, .flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_font_selection_new", PACKAGE = "RGtk2", .flush = .flush)

	if(show)
		gtkWidgetShowAll(w)

	return(w)
} 


gtkFontSelectionGetFontName <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkFontSelection")

	w <- .RGtkCall("S_gtk_font_selection_get_font_name", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkFontSelectionGetFont <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	if (.depwarn)
		warning("This function is deprecated: use GtkFontSelection.get_font_name")

	checkPtrType(object, "GtkFontSelection")

	w <- .RGtkCall("S_gtk_font_selection_get_font", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkFontSelectionSetFontName <-
function(object, fontname, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkFontSelection")
	fontname <- as.character(fontname)

	w <- .RGtkCall("S_gtk_font_selection_set_font_name", object, fontname, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkFontSelectionGetPreviewText <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkFontSelection")

	w <- .RGtkCall("S_gtk_font_selection_get_preview_text", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkFontSelectionSetPreviewText <-
function(object, text, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkFontSelection")
	text <- as.character(text)

	w <- .RGtkCall("S_gtk_font_selection_set_preview_text", object, text, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkFontSelectionDialogGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_font_selection_dialog_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkFontSelectionDialogNew <-
function(title = NULL, show = TRUE, .flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_font_selection_dialog_new", title, PACKAGE = "RGtk2", .flush = .flush)

	if(show)
		gtkWidgetShowAll(w)

	return(w)
} 


gtkFontSelectionDialogGetFontName <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkFontSelectionDialog")

	w <- .RGtkCall("S_gtk_font_selection_dialog_get_font_name", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkFontSelectionDialogGetFont <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	if (.depwarn)
		warning("This function is deprecated: use GtkFontSelectionDialog.get_font_name")

	checkPtrType(object, "GtkFontSelectionDialog")

	w <- .RGtkCall("S_gtk_font_selection_dialog_get_font", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkFontSelectionDialogSetFontName <-
function(object, fontname, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkFontSelectionDialog")
	fontname <- as.character(fontname)

	w <- .RGtkCall("S_gtk_font_selection_dialog_set_font_name", object, fontname, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkFontSelectionDialogGetPreviewText <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkFontSelectionDialog")

	w <- .RGtkCall("S_gtk_font_selection_dialog_get_preview_text", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkFontSelectionDialogSetPreviewText <-
function(object, text, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkFontSelectionDialog")
	text <- as.character(text)

	w <- .RGtkCall("S_gtk_font_selection_dialog_set_preview_text", object, text, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkFrameGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_frame_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkFrameNew <-
function(label = NULL, show = TRUE, .flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_frame_new", label, PACKAGE = "RGtk2", .flush = .flush)

	if(show)
		gtkWidgetShowAll(w)

	return(w)
} 


gtkFrameSetLabel <-
function(object, label = NULL, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkFrame")
	if (!is.null( label )) label <- as.character(label)

	w <- .RGtkCall("S_gtk_frame_set_label", object, label, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkFrameGetLabel <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkFrame")

	w <- .RGtkCall("S_gtk_frame_get_label", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkFrameSetLabelWidget <-
function(object, label.widget, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkFrame")
	checkPtrType(label.widget, "GtkWidget")

	w <- .RGtkCall("S_gtk_frame_set_label_widget", object, label.widget, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkFrameGetLabelWidget <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkFrame")

	w <- .RGtkCall("S_gtk_frame_get_label_widget", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkFrameSetLabelAlign <-
function(object, xalign, yalign, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkFrame")
	xalign <- as.numeric(xalign)
	yalign <- as.numeric(yalign)

	w <- .RGtkCall("S_gtk_frame_set_label_align", object, xalign, yalign, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkFrameGetLabelAlign <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkFrame")

	w <- .RGtkCall("S_gtk_frame_get_label_align", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkFrameSetShadowType <-
function(object, type, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkFrame")
	

	w <- .RGtkCall("S_gtk_frame_set_shadow_type", object, type, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkFrameGetShadowType <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkFrame")

	w <- .RGtkCall("S_gtk_frame_get_shadow_type", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkGammaCurveGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_gamma_curve_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkGammaCurveNew <-
function(show = TRUE, .flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_gamma_curve_new", PACKAGE = "RGtk2", .flush = .flush)

	if(show)
		gtkWidgetShowAll(w)

	return(w)
} 


gtkGcGet <-
function(depth, colormap, values, .flush = TRUE, .depwarn = TRUE)
{
	depth <- as.integer(depth)
	checkPtrType(colormap, "GdkColormap")
	values <- as.GdkGCValues(values)

	w <- .RGtkCall("S_gtk_gc_get", depth, colormap, values, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkGcRelease <-
function(gc, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(gc, "GdkGC")

	w <- .RGtkCall("S_gtk_gc_release", gc, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkHandleBoxGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_handle_box_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkHandleBoxNew <-
function(show = TRUE, .flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_handle_box_new", PACKAGE = "RGtk2", .flush = .flush)

	if(show)
		gtkWidgetShowAll(w)

	return(w)
} 


gtkHandleBoxSetShadowType <-
function(object, type, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkHandleBox")
	

	w <- .RGtkCall("S_gtk_handle_box_set_shadow_type", object, type, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkHandleBoxGetShadowType <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkHandleBox")

	w <- .RGtkCall("S_gtk_handle_box_get_shadow_type", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkHandleBoxSetHandlePosition <-
function(object, position, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkHandleBox")
	

	w <- .RGtkCall("S_gtk_handle_box_set_handle_position", object, position, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkHandleBoxGetHandlePosition <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkHandleBox")

	w <- .RGtkCall("S_gtk_handle_box_get_handle_position", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkHandleBoxSetSnapEdge <-
function(object, edge, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkHandleBox")
	

	w <- .RGtkCall("S_gtk_handle_box_set_snap_edge", object, edge, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkHandleBoxGetSnapEdge <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkHandleBox")

	w <- .RGtkCall("S_gtk_handle_box_get_snap_edge", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkHButtonBoxGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_hbutton_box_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkHButtonBoxNew <-
function(show = TRUE, .flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_hbutton_box_new", PACKAGE = "RGtk2", .flush = .flush)

	if(show)
		gtkWidgetShowAll(w)

	return(w)
} 


gtkHButtonBoxGetSpacingDefault <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_hbutton_box_get_spacing_default", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkHButtonBoxGetLayoutDefault <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_hbutton_box_get_layout_default", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkHButtonBoxSetSpacingDefault <-
function(spacing, .flush = TRUE, .depwarn = TRUE)
{
	spacing <- as.integer(spacing)

	w <- .RGtkCall("S_gtk_hbutton_box_set_spacing_default", spacing, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkHButtonBoxSetLayoutDefault <-
function(layout, .flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_hbutton_box_set_layout_default", layout, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkHBoxGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_hbox_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkHBoxNew <-
function(homogeneous = NULL, spacing = NULL, show = TRUE, .flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_hbox_new", homogeneous, spacing, PACKAGE = "RGtk2", .flush = .flush)

	if(show)
		gtkWidgetShowAll(w)

	return(w)
} 


gtkHPanedGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_hpaned_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkHPanedNew <-
function(show = TRUE, .flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_hpaned_new", PACKAGE = "RGtk2", .flush = .flush)

	if(show)
		gtkWidgetShowAll(w)

	return(w)
} 


gtkHRulerGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_hruler_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkHRulerNew <-
function(show = TRUE, .flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_hruler_new", PACKAGE = "RGtk2", .flush = .flush)

	if(show)
		gtkWidgetShowAll(w)

	return(w)
} 


gtkHScaleGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_hscale_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkHScaleNew <-
function(adjustment = NULL, show = TRUE, .flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_hscale_new", adjustment, PACKAGE = "RGtk2", .flush = .flush)

	if(show)
		gtkWidgetShowAll(w)

	return(w)
} 


gtkHScaleNewWithRange <-
function(min, max, step, show = TRUE, .flush = TRUE, .depwarn = TRUE)
{
	min <- as.numeric(min)
	max <- as.numeric(max)
	step <- as.numeric(step)

	w <- .RGtkCall("S_gtk_hscale_new_with_range", min, max, step, PACKAGE = "RGtk2", .flush = .flush)

	if(show)
		gtkWidgetShowAll(w)

	return(w)
} 


gtkHScrollbarGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_hscrollbar_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkHScrollbarNew <-
function(adjustment = NULL, show = TRUE, .flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_hscrollbar_new", adjustment, PACKAGE = "RGtk2", .flush = .flush)

	if(show)
		gtkWidgetShowAll(w)

	return(w)
} 


gtkHSeparatorGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_hseparator_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkHSeparatorNew <-
function(show = TRUE, .flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_hseparator_new", PACKAGE = "RGtk2", .flush = .flush)

	if(show)
		gtkWidgetShowAll(w)

	return(w)
} 


gtkIconFactoryGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_icon_factory_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkIconFactoryNew <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_icon_factory_new", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkIconFactoryAdd <-
function(object, stock.id, icon.set, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkIconFactory")
	stock.id <- as.character(stock.id)
	checkPtrType(icon.set, "GtkIconSet")

	w <- .RGtkCall("S_gtk_icon_factory_add", object, stock.id, icon.set, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkIconFactoryLookup <-
function(object, stock.id, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkIconFactory")
	stock.id <- as.character(stock.id)

	w <- .RGtkCall("S_gtk_icon_factory_lookup", object, stock.id, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkIconFactoryAddDefault <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkIconFactory")

	w <- .RGtkCall("S_gtk_icon_factory_add_default", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkIconFactoryRemoveDefault <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkIconFactory")

	w <- .RGtkCall("S_gtk_icon_factory_remove_default", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkIconFactoryLookupDefault <-
function(stock.id, .flush = TRUE, .depwarn = TRUE)
{
	stock.id <- as.character(stock.id)

	w <- .RGtkCall("S_gtk_icon_factory_lookup_default", stock.id, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkIconSizeLookup <-
function(size, .flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_icon_size_lookup", size, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkIconSizeLookupForSettings <-
function(settings, size, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(settings, "GtkSettings")
	

	w <- .RGtkCall("S_gtk_icon_size_lookup_for_settings", settings, size, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkIconSizeRegister <-
function(name, width, height, .flush = TRUE, .depwarn = TRUE)
{
	name <- as.character(name)
	width <- as.integer(width)
	height <- as.integer(height)

	w <- .RGtkCall("S_gtk_icon_size_register", name, width, height, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkIconSizeRegisterAlias <-
function(alias, target, .flush = TRUE, .depwarn = TRUE)
{
	alias <- as.character(alias)
	

	w <- .RGtkCall("S_gtk_icon_size_register_alias", alias, target, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkIconSizeFromName <-
function(name, .flush = TRUE, .depwarn = TRUE)
{
	name <- as.character(name)

	w <- .RGtkCall("S_gtk_icon_size_from_name", name, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkIconSizeGetName <-
function(size, .flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_icon_size_get_name", size, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkIconSetGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_icon_set_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkIconSetNew <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_icon_set_new", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkIconSetNewFromPixbuf <-
function(pixbuf, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(pixbuf, "GdkPixbuf")

	w <- .RGtkCall("S_gtk_icon_set_new_from_pixbuf", pixbuf, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkIconSetRef <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkIconSet")

	w <- .RGtkCall("S_gtk_icon_set_ref", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkIconSetUnref <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkIconSet")

	w <- .RGtkCall("S_gtk_icon_set_unref", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkIconSetCopy <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkIconSet")

	w <- .RGtkCall("S_gtk_icon_set_copy", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkIconSetRenderIcon <-
function(object, style, direction, state, size, widget = "NULL", detail = "NULL", .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkIconSet")
	checkPtrType(style, "GtkStyle")
	
	
	
	if (!is.null( widget )) checkPtrType(widget, "GtkWidget")
	if (!is.null( detail )) detail <- as.character(detail)

	w <- .RGtkCall("S_gtk_icon_set_render_icon", object, style, direction, state, size, widget, detail, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkIconSetAddSource <-
function(object, source, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkIconSet")
	checkPtrType(source, "GtkIconSource")

	w <- .RGtkCall("S_gtk_icon_set_add_source", object, source, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkIconSetGetSizes <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkIconSet")

	w <- .RGtkCall("S_gtk_icon_set_get_sizes", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkIconSourceGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_icon_source_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkIconSourceNew <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_icon_source_new", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkIconSourceCopy <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkIconSource")

	w <- .RGtkCall("S_gtk_icon_source_copy", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkIconSourceFree <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkIconSource")

	w <- .RGtkCall("S_gtk_icon_source_free", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkIconSourceSetFilename <-
function(object, filename, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkIconSource")
	filename <- as.character(filename)

	w <- .RGtkCall("S_gtk_icon_source_set_filename", object, filename, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkIconSourceSetIconName <-
function(object, icon.name, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkIconSource")
	icon.name <- as.character(icon.name)

	w <- .RGtkCall("S_gtk_icon_source_set_icon_name", object, icon.name, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkIconSourceSetPixbuf <-
function(object, pixbuf, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkIconSource")
	checkPtrType(pixbuf, "GdkPixbuf")

	w <- .RGtkCall("S_gtk_icon_source_set_pixbuf", object, pixbuf, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkIconSourceGetFilename <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkIconSource")

	w <- .RGtkCall("S_gtk_icon_source_get_filename", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkIconSourceGetIconName <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkIconSource")

	w <- .RGtkCall("S_gtk_icon_source_get_icon_name", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkIconSourceGetPixbuf <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkIconSource")

	w <- .RGtkCall("S_gtk_icon_source_get_pixbuf", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkIconSourceSetDirectionWildcarded <-
function(object, setting, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkIconSource")
	setting <- as.logical(setting)

	w <- .RGtkCall("S_gtk_icon_source_set_direction_wildcarded", object, setting, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkIconSourceSetStateWildcarded <-
function(object, setting, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkIconSource")
	setting <- as.logical(setting)

	w <- .RGtkCall("S_gtk_icon_source_set_state_wildcarded", object, setting, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkIconSourceSetSizeWildcarded <-
function(object, setting, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkIconSource")
	setting <- as.logical(setting)

	w <- .RGtkCall("S_gtk_icon_source_set_size_wildcarded", object, setting, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkIconSourceGetSizeWildcarded <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkIconSource")

	w <- .RGtkCall("S_gtk_icon_source_get_size_wildcarded", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkIconSourceGetStateWildcarded <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkIconSource")

	w <- .RGtkCall("S_gtk_icon_source_get_state_wildcarded", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkIconSourceGetDirectionWildcarded <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkIconSource")

	w <- .RGtkCall("S_gtk_icon_source_get_direction_wildcarded", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkIconSourceSetDirection <-
function(object, direction, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkIconSource")
	

	w <- .RGtkCall("S_gtk_icon_source_set_direction", object, direction, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkIconSourceSetState <-
function(object, state, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkIconSource")
	

	w <- .RGtkCall("S_gtk_icon_source_set_state", object, state, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkIconSourceSetSize <-
function(object, size, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkIconSource")
	

	w <- .RGtkCall("S_gtk_icon_source_set_size", object, size, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkIconSourceGetDirection <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkIconSource")

	w <- .RGtkCall("S_gtk_icon_source_get_direction", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkIconSourceGetState <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkIconSource")

	w <- .RGtkCall("S_gtk_icon_source_get_state", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkIconSourceGetSize <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkIconSource")

	w <- .RGtkCall("S_gtk_icon_source_get_size", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkIconThemeErrorQuark <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_icon_theme_error_quark", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkIconThemeGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_icon_theme_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkIconThemeNew <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_icon_theme_new", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkIconThemeGetDefault <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_icon_theme_get_default", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkIconThemeGetForScreen <-
function(screen, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(screen, "GdkScreen")

	w <- .RGtkCall("S_gtk_icon_theme_get_for_screen", screen, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkIconThemeSetScreen <-
function(object, screen, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkIconTheme")
	checkPtrType(screen, "GdkScreen")

	w <- .RGtkCall("S_gtk_icon_theme_set_screen", object, screen, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkIconThemeGetSearchPath <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkIconTheme")

	w <- .RGtkCall("S_gtk_icon_theme_get_search_path", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkIconThemeAppendSearchPath <-
function(object, path, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkIconTheme")
	path <- as.character(path)

	w <- .RGtkCall("S_gtk_icon_theme_append_search_path", object, path, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkIconThemePrependSearchPath <-
function(object, path, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkIconTheme")
	path <- as.character(path)

	w <- .RGtkCall("S_gtk_icon_theme_prepend_search_path", object, path, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkIconThemeSetCustomTheme <-
function(object, theme.name, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkIconTheme")
	theme.name <- as.character(theme.name)

	w <- .RGtkCall("S_gtk_icon_theme_set_custom_theme", object, theme.name, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkIconThemeHasIcon <-
function(object, icon.name, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkIconTheme")
	icon.name <- as.character(icon.name)

	w <- .RGtkCall("S_gtk_icon_theme_has_icon", object, icon.name, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkIconThemeLookupIcon <-
function(object, icon.name, size, flags, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkIconTheme")
	icon.name <- as.character(icon.name)
	size <- as.integer(size)
	

	w <- .RGtkCall("S_gtk_icon_theme_lookup_icon", object, icon.name, size, flags, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkIconThemeLoadIcon <-
function(object, icon.name, size, flags, .flush = TRUE, .depwarn = TRUE, .errwarn = TRUE)
{
	checkPtrType(object, "GtkIconTheme")
	icon.name <- as.character(icon.name)
	size <- as.integer(size)
	

	w <- .RGtkCall("S_gtk_icon_theme_load_icon", object, icon.name, size, flags, PACKAGE = "RGtk2", .flush = .flush)

	if(.errwarn && !is.null(w$error))
		warning(w$error[["message"]])

	return(w)
} 


gtkIconThemeListIcons <-
function(object, context = NULL, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkIconTheme")
	if (!is.null( context )) context <- as.character(context)

	w <- .RGtkCall("S_gtk_icon_theme_list_icons", object, context, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkIconThemeGetExampleIconName <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkIconTheme")

	w <- .RGtkCall("S_gtk_icon_theme_get_example_icon_name", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkIconThemeRescanIfNeeded <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkIconTheme")

	w <- .RGtkCall("S_gtk_icon_theme_rescan_if_needed", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkIconThemeAddBuiltinIcon <-
function(icon.name, size, pixbuf, .flush = TRUE, .depwarn = TRUE)
{
	icon.name <- as.character(icon.name)
	size <- as.integer(size)
	checkPtrType(pixbuf, "GdkPixbuf")

	w <- .RGtkCall("S_gtk_icon_theme_add_builtin_icon", icon.name, size, pixbuf, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkIconInfoGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_icon_info_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkIconInfoCopy <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkIconInfo")

	w <- .RGtkCall("S_gtk_icon_info_copy", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkIconInfoFree <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkIconInfo")

	w <- .RGtkCall("S_gtk_icon_info_free", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkIconInfoGetBaseSize <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkIconInfo")

	w <- .RGtkCall("S_gtk_icon_info_get_base_size", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkIconInfoGetFilename <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkIconInfo")

	w <- .RGtkCall("S_gtk_icon_info_get_filename", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkIconInfoGetBuiltinPixbuf <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkIconInfo")

	w <- .RGtkCall("S_gtk_icon_info_get_builtin_pixbuf", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkIconInfoLoadIcon <-
function(object, .flush = TRUE, .depwarn = TRUE, .errwarn = TRUE)
{
	checkPtrType(object, "GtkIconInfo")

	w <- .RGtkCall("S_gtk_icon_info_load_icon", object, PACKAGE = "RGtk2", .flush = .flush)

	if(.errwarn && !is.null(w$error))
		warning(w$error[["message"]])

	return(w)
} 


gtkIconInfoSetRawCoordinates <-
function(object, raw.coordinates, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkIconInfo")
	raw.coordinates <- as.logical(raw.coordinates)

	w <- .RGtkCall("S_gtk_icon_info_set_raw_coordinates", object, raw.coordinates, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkIconInfoGetEmbeddedRect <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkIconInfo")

	w <- .RGtkCall("S_gtk_icon_info_get_embedded_rect", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkIconInfoGetAttachPoints <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkIconInfo")

	w <- .RGtkCall("S_gtk_icon_info_get_attach_points", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkIconInfoGetDisplayName <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkIconInfo")

	w <- .RGtkCall("S_gtk_icon_info_get_display_name", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkIconThemeGetIconSizes <-
function(object, icon.name, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkIconTheme")
	icon.name <- as.character(icon.name)

	w <- .RGtkCall("S_gtk_icon_theme_get_icon_sizes", object, icon.name, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkIconViewGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_icon_view_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkIconViewNew <-
function(show = TRUE, .flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_icon_view_new", PACKAGE = "RGtk2", .flush = .flush)

	if(show)
		gtkWidgetShowAll(w)

	return(w)
} 


gtkIconViewNewWithModel <-
function(model = NULL, show = TRUE, .flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_icon_view_new_with_model", model, PACKAGE = "RGtk2", .flush = .flush)

	if(show)
		gtkWidgetShowAll(w)

	return(w)
} 


gtkIconViewSetModel <-
function(object, model = "NULL", .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkIconView")
	if (!is.null( model )) checkPtrType(model, "GtkTreeModel")

	w <- .RGtkCall("S_gtk_icon_view_set_model", object, model, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkIconViewGetModel <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkIconView")

	w <- .RGtkCall("S_gtk_icon_view_get_model", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkIconViewSetTextColumn <-
function(object, column, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkIconView")
	column <- as.integer(column)

	w <- .RGtkCall("S_gtk_icon_view_set_text_column", object, column, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkIconViewGetTextColumn <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkIconView")

	w <- .RGtkCall("S_gtk_icon_view_get_text_column", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkIconViewSetMarkupColumn <-
function(object, column, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkIconView")
	column <- as.integer(column)

	w <- .RGtkCall("S_gtk_icon_view_set_markup_column", object, column, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkIconViewGetMarkupColumn <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkIconView")

	w <- .RGtkCall("S_gtk_icon_view_get_markup_column", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkIconViewSetPixbufColumn <-
function(object, column, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkIconView")
	column <- as.integer(column)

	w <- .RGtkCall("S_gtk_icon_view_set_pixbuf_column", object, column, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkIconViewGetPixbufColumn <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkIconView")

	w <- .RGtkCall("S_gtk_icon_view_get_pixbuf_column", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkIconViewSetOrientation <-
function(object, orientation, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkIconView")
	

	w <- .RGtkCall("S_gtk_icon_view_set_orientation", object, orientation, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkIconViewGetOrientation <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkIconView")

	w <- .RGtkCall("S_gtk_icon_view_get_orientation", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkIconViewSetColumns <-
function(object, columns, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkIconView")
	columns <- as.integer(columns)

	w <- .RGtkCall("S_gtk_icon_view_set_columns", object, columns, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkIconViewGetColumns <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkIconView")

	w <- .RGtkCall("S_gtk_icon_view_get_columns", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkIconViewSetItemWidth <-
function(object, item.width, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkIconView")
	item.width <- as.integer(item.width)

	w <- .RGtkCall("S_gtk_icon_view_set_item_width", object, item.width, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkIconViewGetItemWidth <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkIconView")

	w <- .RGtkCall("S_gtk_icon_view_get_item_width", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkIconViewSetSpacing <-
function(object, spacing, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkIconView")
	spacing <- as.integer(spacing)

	w <- .RGtkCall("S_gtk_icon_view_set_spacing", object, spacing, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkIconViewGetSpacing <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkIconView")

	w <- .RGtkCall("S_gtk_icon_view_get_spacing", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkIconViewSetRowSpacing <-
function(object, row.spacing, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkIconView")
	row.spacing <- as.integer(row.spacing)

	w <- .RGtkCall("S_gtk_icon_view_set_row_spacing", object, row.spacing, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkIconViewGetRowSpacing <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkIconView")

	w <- .RGtkCall("S_gtk_icon_view_get_row_spacing", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkIconViewSetColumnSpacing <-
function(object, column.spacing, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkIconView")
	column.spacing <- as.integer(column.spacing)

	w <- .RGtkCall("S_gtk_icon_view_set_column_spacing", object, column.spacing, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkIconViewGetColumnSpacing <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkIconView")

	w <- .RGtkCall("S_gtk_icon_view_get_column_spacing", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkIconViewSetMargin <-
function(object, margin, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkIconView")
	margin <- as.integer(margin)

	w <- .RGtkCall("S_gtk_icon_view_set_margin", object, margin, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkIconViewGetMargin <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkIconView")

	w <- .RGtkCall("S_gtk_icon_view_get_margin", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkIconViewGetPathAtPos <-
function(object, x, y, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkIconView")
	x <- as.integer(x)
	y <- as.integer(y)

	w <- .RGtkCall("S_gtk_icon_view_get_path_at_pos", object, x, y, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkIconViewGetItemAtPos <-
function(object, x, y, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkIconView")
	x <- as.integer(x)
	y <- as.integer(y)

	w <- .RGtkCall("S_gtk_icon_view_get_item_at_pos", object, x, y, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkIconViewGetVisibleRange <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkIconView")

	w <- .RGtkCall("S_gtk_icon_view_get_visible_range", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkIconViewSelectedForeach <-
function(object, func, data = NULL, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkIconView")
	func <- as.function(func)
	

	w <- .RGtkCall("S_gtk_icon_view_selected_foreach", object, func, data, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkIconViewSetSelectionMode <-
function(object, mode, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkIconView")
	

	w <- .RGtkCall("S_gtk_icon_view_set_selection_mode", object, mode, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkIconViewGetSelectionMode <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkIconView")

	w <- .RGtkCall("S_gtk_icon_view_get_selection_mode", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkIconViewSelectPath <-
function(object, path, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkIconView")
	checkPtrType(path, "GtkTreePath")

	w <- .RGtkCall("S_gtk_icon_view_select_path", object, path, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkIconViewUnselectPath <-
function(object, path, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkIconView")
	checkPtrType(path, "GtkTreePath")

	w <- .RGtkCall("S_gtk_icon_view_unselect_path", object, path, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkIconViewPathIsSelected <-
function(object, path, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkIconView")
	checkPtrType(path, "GtkTreePath")

	w <- .RGtkCall("S_gtk_icon_view_path_is_selected", object, path, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkIconViewGetSelectedItems <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkIconView")

	w <- .RGtkCall("S_gtk_icon_view_get_selected_items", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkIconViewSelectAll <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkIconView")

	w <- .RGtkCall("S_gtk_icon_view_select_all", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkIconViewUnselectAll <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkIconView")

	w <- .RGtkCall("S_gtk_icon_view_unselect_all", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkIconViewItemActivated <-
function(object, path, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkIconView")
	checkPtrType(path, "GtkTreePath")

	w <- .RGtkCall("S_gtk_icon_view_item_activated", object, path, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkIconViewSetCursor <-
function(object, path, cell, start.editing, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkIconView")
	checkPtrType(path, "GtkTreePath")
	checkPtrType(cell, "GtkCellRenderer")
	start.editing <- as.logical(start.editing)

	w <- .RGtkCall("S_gtk_icon_view_set_cursor", object, path, cell, start.editing, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkIconViewGetCursor <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkIconView")

	w <- .RGtkCall("S_gtk_icon_view_get_cursor", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkIconViewScrollToPath <-
function(object, path, use.align, row.align, col.align, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkIconView")
	checkPtrType(path, "GtkTreePath")
	use.align <- as.logical(use.align)
	row.align <- as.numeric(row.align)
	col.align <- as.numeric(col.align)

	w <- .RGtkCall("S_gtk_icon_view_scroll_to_path", object, path, use.align, row.align, col.align, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkIconViewEnableModelDragSource <-
function(object, start.button.mask, targets, actions, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkIconView")
	
	targets <- lapply(targets, function(x) { x <- as.GtkTargetEntry(x); x })
	

	w <- .RGtkCall("S_gtk_icon_view_enable_model_drag_source", object, start.button.mask, targets, actions, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkIconViewEnableModelDragDest <-
function(object, targets, actions, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkIconView")
	targets <- lapply(targets, function(x) { x <- as.GtkTargetEntry(x); x })
	

	w <- .RGtkCall("S_gtk_icon_view_enable_model_drag_dest", object, targets, actions, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkIconViewUnsetModelDragSource <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkIconView")

	w <- .RGtkCall("S_gtk_icon_view_unset_model_drag_source", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkIconViewUnsetModelDragDest <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkIconView")

	w <- .RGtkCall("S_gtk_icon_view_unset_model_drag_dest", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkIconViewSetReorderable <-
function(object, reorderable, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkIconView")
	reorderable <- as.logical(reorderable)

	w <- .RGtkCall("S_gtk_icon_view_set_reorderable", object, reorderable, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkIconViewGetReorderable <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkIconView")

	w <- .RGtkCall("S_gtk_icon_view_get_reorderable", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkIconViewSetDragDestItem <-
function(object, path, pos, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkIconView")
	checkPtrType(path, "GtkTreePath")
	

	w <- .RGtkCall("S_gtk_icon_view_set_drag_dest_item", object, path, pos, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkIconViewGetDragDestItem <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkIconView")

	w <- .RGtkCall("S_gtk_icon_view_get_drag_dest_item", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkIconViewGetDestItemAtPos <-
function(object, drag.x, drag.y, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkIconView")
	drag.x <- as.integer(drag.x)
	drag.y <- as.integer(drag.y)

	w <- .RGtkCall("S_gtk_icon_view_get_dest_item_at_pos", object, drag.x, drag.y, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkIconViewCreateDragIcon <-
function(object, path, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkIconView")
	checkPtrType(path, "GtkTreePath")

	w <- .RGtkCall("S_gtk_icon_view_create_drag_icon", object, path, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkImageGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_image_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkImageNew <-
function(show = TRUE, .flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_image_new", PACKAGE = "RGtk2", .flush = .flush)

	if(show)
		gtkWidgetShowAll(w)

	return(w)
} 


gtkImageNewFromPixmap <-
function(pixmap = NULL, mask = NULL, show = TRUE, .flush = TRUE, .depwarn = TRUE)
{
	if (!is.null( pixmap )) checkPtrType(pixmap, "GdkPixmap")
	if (!is.null( mask )) checkPtrType(mask, "GdkBitmap")

	w <- .RGtkCall("S_gtk_image_new_from_pixmap", pixmap, mask, PACKAGE = "RGtk2", .flush = .flush)

	if(show)
		gtkWidgetShowAll(w)

	return(w)
} 


gtkImageNewFromImage <-
function(image = NULL, mask = NULL, show = TRUE, .flush = TRUE, .depwarn = TRUE)
{
	if (!is.null( image )) checkPtrType(image, "GdkImage")
	if (!is.null( mask )) checkPtrType(mask, "GdkBitmap")

	w <- .RGtkCall("S_gtk_image_new_from_image", image, mask, PACKAGE = "RGtk2", .flush = .flush)

	if(show)
		gtkWidgetShowAll(w)

	return(w)
} 


gtkImageNewFromFile <-
function(filename, show = TRUE, .flush = TRUE, .depwarn = TRUE)
{
	filename <- as.character(filename)

	w <- .RGtkCall("S_gtk_image_new_from_file", filename, PACKAGE = "RGtk2", .flush = .flush)

	if(show)
		gtkWidgetShowAll(w)

	return(w)
} 


gtkImageNewFromPixbuf <-
function(pixbuf = NULL, show = TRUE, .flush = TRUE, .depwarn = TRUE)
{
	if (!is.null( pixbuf )) checkPtrType(pixbuf, "GdkPixbuf")

	w <- .RGtkCall("S_gtk_image_new_from_pixbuf", pixbuf, PACKAGE = "RGtk2", .flush = .flush)

	if(show)
		gtkWidgetShowAll(w)

	return(w)
} 


gtkImageNewFromStock <-
function(stock.id, size, .flush = TRUE, .depwarn = TRUE)
{
	stock.id <- as.character(stock.id)
	

	w <- .RGtkCall("S_gtk_image_new_from_stock", stock.id, size, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkImageNewFromIconSet <-
function(icon.set, size, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(icon.set, "GtkIconSet")
	

	w <- .RGtkCall("S_gtk_image_new_from_icon_set", icon.set, size, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkImageNewFromAnimation <-
function(animation, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(animation, "GdkPixbufAnimation")

	w <- .RGtkCall("S_gtk_image_new_from_animation", animation, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkImageClear <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkImage")

	w <- .RGtkCall("S_gtk_image_clear", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkImageSetFromPixmap <-
function(object, pixmap, mask = NULL, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkImage")
	checkPtrType(pixmap, "GdkPixmap")
	if (!is.null( mask )) checkPtrType(mask, "GdkBitmap")

	w <- .RGtkCall("S_gtk_image_set_from_pixmap", object, pixmap, mask, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkImageSetFromImage <-
function(object, gdk.image = NULL, mask = NULL, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkImage")
	if (!is.null( gdk.image )) checkPtrType(gdk.image, "GdkImage")
	if (!is.null( mask )) checkPtrType(mask, "GdkBitmap")

	w <- .RGtkCall("S_gtk_image_set_from_image", object, gdk.image, mask, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkImageSetFromFile <-
function(object, filename = NULL, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkImage")
	if (!is.null( filename )) filename <- as.character(filename)

	w <- .RGtkCall("S_gtk_image_set_from_file", object, filename, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkImageSetFromPixbuf <-
function(object, pixbuf = NULL, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkImage")
	if (!is.null( pixbuf )) checkPtrType(pixbuf, "GdkPixbuf")

	w <- .RGtkCall("S_gtk_image_set_from_pixbuf", object, pixbuf, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkImageSetFromStock <-
function(object, stock.id, size, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkImage")
	stock.id <- as.character(stock.id)
	

	w <- .RGtkCall("S_gtk_image_set_from_stock", object, stock.id, size, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkImageSetFromIconSet <-
function(object, icon.set, size, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkImage")
	checkPtrType(icon.set, "GtkIconSet")
	

	w <- .RGtkCall("S_gtk_image_set_from_icon_set", object, icon.set, size, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkImageSetFromAnimation <-
function(object, animation, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkImage")
	checkPtrType(animation, "GdkPixbufAnimation")

	w <- .RGtkCall("S_gtk_image_set_from_animation", object, animation, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkImageGetStorageType <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkImage")

	w <- .RGtkCall("S_gtk_image_get_storage_type", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkImageGetPixmap <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkImage")

	w <- .RGtkCall("S_gtk_image_get_pixmap", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkImageGetImage <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkImage")

	w <- .RGtkCall("S_gtk_image_get_image", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkImageGetPixbuf <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkImage")

	w <- .RGtkCall("S_gtk_image_get_pixbuf", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkImageGetStock <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkImage")

	w <- .RGtkCall("S_gtk_image_get_stock", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkImageGetIconSet <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkImage")

	w <- .RGtkCall("S_gtk_image_get_icon_set", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkImageGetAnimation <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkImage")

	w <- .RGtkCall("S_gtk_image_get_animation", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkImageSet <-
function(object, val, mask, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkImage")
	checkPtrType(val, "GdkImage")
	checkPtrType(mask, "GdkBitmap")

	w <- .RGtkCall("S_gtk_image_set", object, val, mask, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkImageGet <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkImage")

	w <- .RGtkCall("S_gtk_image_get", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkImageNewFromIconName <-
function(icon.name, size, .flush = TRUE, .depwarn = TRUE)
{
	icon.name <- as.character(icon.name)
	

	w <- .RGtkCall("S_gtk_image_new_from_icon_name", icon.name, size, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkImageSetFromIconName <-
function(object, icon.name, size, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkImage")
	icon.name <- as.character(icon.name)
	

	w <- .RGtkCall("S_gtk_image_set_from_icon_name", object, icon.name, size, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkImageSetPixelSize <-
function(object, pixel.size, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkImage")
	pixel.size <- as.integer(pixel.size)

	w <- .RGtkCall("S_gtk_image_set_pixel_size", object, pixel.size, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkImageGetIconName <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkImage")

	w <- .RGtkCall("S_gtk_image_get_icon_name", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkImageGetPixelSize <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkImage")

	w <- .RGtkCall("S_gtk_image_get_pixel_size", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkImageMenuItemGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_image_menu_item_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkImageMenuItemNew <-
function(show = TRUE, .flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_image_menu_item_new", PACKAGE = "RGtk2", .flush = .flush)

	if(show)
		gtkWidgetShowAll(w)

	return(w)
} 


gtkImageMenuItemNewWithLabel <-
function(label, show = TRUE, .flush = TRUE, .depwarn = TRUE)
{
	label <- as.character(label)

	w <- .RGtkCall("S_gtk_image_menu_item_new_with_label", label, PACKAGE = "RGtk2", .flush = .flush)

	if(show)
		gtkWidgetShowAll(w)

	return(w)
} 


gtkImageMenuItemNewWithMnemonic <-
function(label, show = TRUE, .flush = TRUE, .depwarn = TRUE)
{
	label <- as.character(label)

	w <- .RGtkCall("S_gtk_image_menu_item_new_with_mnemonic", label, PACKAGE = "RGtk2", .flush = .flush)

	if(show)
		gtkWidgetShowAll(w)

	return(w)
} 


gtkImageMenuItemNewFromStock <-
function(stock.id, accel.group, show = TRUE, .flush = TRUE, .depwarn = TRUE)
{
	stock.id <- as.character(stock.id)
	checkPtrType(accel.group, "GtkAccelGroup")

	w <- .RGtkCall("S_gtk_image_menu_item_new_from_stock", stock.id, accel.group, PACKAGE = "RGtk2", .flush = .flush)

	if(show)
		gtkWidgetShowAll(w)

	return(w)
} 


gtkImageMenuItemSetImage <-
function(object, image = NULL, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkImageMenuItem")
	if (!is.null( image )) checkPtrType(image, "GtkWidget")

	w <- .RGtkCall("S_gtk_image_menu_item_set_image", object, image, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkImageMenuItemGetImage <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkImageMenuItem")

	w <- .RGtkCall("S_gtk_image_menu_item_get_image", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkIMContextGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_im_context_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkIMContextSetClientWindow <-
function(object, window, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkIMContext")
	checkPtrType(window, "GdkWindow")

	w <- .RGtkCall("S_gtk_im_context_set_client_window", object, window, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkIMContextGetPreeditString <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkIMContext")

	w <- .RGtkCall("S_gtk_im_context_get_preedit_string", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkIMContextFilterKeypress <-
function(object, event, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkIMContext")
	checkPtrType(event, "GdkEventKey")

	w <- .RGtkCall("S_gtk_im_context_filter_keypress", object, event, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkIMContextFocusIn <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkIMContext")

	w <- .RGtkCall("S_gtk_im_context_focus_in", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkIMContextFocusOut <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkIMContext")

	w <- .RGtkCall("S_gtk_im_context_focus_out", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkIMContextReset <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkIMContext")

	w <- .RGtkCall("S_gtk_im_context_reset", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkIMContextSetCursorLocation <-
function(object, area, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkIMContext")
	area <- as.GdkRectangle(area)

	w <- .RGtkCall("S_gtk_im_context_set_cursor_location", object, area, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkIMContextSetUsePreedit <-
function(object, use.preedit, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkIMContext")
	use.preedit <- as.logical(use.preedit)

	w <- .RGtkCall("S_gtk_im_context_set_use_preedit", object, use.preedit, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkIMContextSetSurrounding <-
function(object, text, len, cursor.index, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkIMContext")
	text <- as.character(text)
	len <- as.integer(len)
	cursor.index <- as.integer(cursor.index)

	w <- .RGtkCall("S_gtk_im_context_set_surrounding", object, text, len, cursor.index, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkIMContextGetSurrounding <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkIMContext")

	w <- .RGtkCall("S_gtk_im_context_get_surrounding", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkIMContextDeleteSurrounding <-
function(object, offset, n.chars, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkIMContext")
	offset <- as.integer(offset)
	n.chars <- as.integer(n.chars)

	w <- .RGtkCall("S_gtk_im_context_delete_surrounding", object, offset, n.chars, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkIMContextSimpleGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_im_context_simple_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkIMContextSimpleNew <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_im_context_simple_new", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkIMMulticontextGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_im_multicontext_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkIMMulticontextNew <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_im_multicontext_new", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkIMMulticontextAppendMenuitems <-
function(object, menushell, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkIMMulticontext")
	checkPtrType(menushell, "GtkMenuShell")

	w <- .RGtkCall("S_gtk_im_multicontext_append_menuitems", object, menushell, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkInputDialogGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_input_dialog_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkInputDialogNew <-
function(show = TRUE, .flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_input_dialog_new", PACKAGE = "RGtk2", .flush = .flush)

	if(show)
		gtkWidgetShowAll(w)

	return(w)
} 


gtkInvisibleGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_invisible_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkInvisibleNew <-
function(show = TRUE, .flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_invisible_new", PACKAGE = "RGtk2", .flush = .flush)

	if(show)
		gtkWidgetShowAll(w)

	return(w)
} 


gtkInvisibleNewForScreen <-
function(screen, show = TRUE, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(screen, "GdkScreen")

	w <- .RGtkCall("S_gtk_invisible_new_for_screen", screen, PACKAGE = "RGtk2", .flush = .flush)

	if(show)
		gtkWidgetShowAll(w)

	return(w)
} 


gtkInvisibleSetScreen <-
function(object, screen, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkInvisible")
	checkPtrType(screen, "GdkScreen")

	w <- .RGtkCall("S_gtk_invisible_set_screen", object, screen, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkInvisibleGetScreen <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkInvisible")

	w <- .RGtkCall("S_gtk_invisible_get_screen", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkItemGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_item_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkItemSelect <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkItem")

	w <- .RGtkCall("S_gtk_item_select", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkItemDeselect <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkItem")

	w <- .RGtkCall("S_gtk_item_deselect", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkItemToggle <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkItem")

	w <- .RGtkCall("S_gtk_item_toggle", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkItemFactoryGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_item_factory_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkItemFactoryNew <-
function(container.type, path, accel.group = "NULL", .flush = TRUE, .depwarn = TRUE)
{
	if (.depwarn)
		warning("This function is deprecated: use gtk.UIManager")

	container.type <- as.GType(container.type)
	path <- as.character(path)
	if (!is.null( accel.group )) checkPtrType(accel.group, "GtkAccelGroup")

	w <- .RGtkCall("S_gtk_item_factory_new", container.type, path, accel.group, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkItemFactoryConstruct <-
function(object, container.type, path, accel.group, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkItemFactory")
	container.type <- as.GType(container.type)
	path <- as.character(path)
	checkPtrType(accel.group, "GtkAccelGroup")

	w <- .RGtkCall("S_gtk_item_factory_construct", object, container.type, path, accel.group, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkItemFactoryAddForeign <-
function(accel.widget, full.path, accel.group, keyval, modifiers, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(accel.widget, "GtkWidget")
	full.path <- as.character(full.path)
	checkPtrType(accel.group, "GtkAccelGroup")
	keyval <- as.numeric(keyval)
	

	w <- .RGtkCall("S_gtk_item_factory_add_foreign", accel.widget, full.path, accel.group, keyval, modifiers, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkItemFactoryFromWidget <-
function(widget, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(widget, "GtkWidget")

	w <- .RGtkCall("S_gtk_item_factory_from_widget", widget, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkItemFactoryPathFromWidget <-
function(widget, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(widget, "GtkWidget")

	w <- .RGtkCall("S_gtk_item_factory_path_from_widget", widget, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkItemFactoryGetItem <-
function(object, path, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkItemFactory")
	path <- as.character(path)

	w <- .RGtkCall("S_gtk_item_factory_get_item", object, path, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkItemFactoryGetWidget <-
function(object, path, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkItemFactory")
	path <- as.character(path)

	w <- .RGtkCall("S_gtk_item_factory_get_widget", object, path, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkItemFactoryGetWidgetByAction <-
function(object, action, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkItemFactory")
	action <- as.numeric(action)

	w <- .RGtkCall("S_gtk_item_factory_get_widget_by_action", object, action, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkItemFactoryGetItemByAction <-
function(object, action, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkItemFactory")
	action <- as.numeric(action)

	w <- .RGtkCall("S_gtk_item_factory_get_item_by_action", object, action, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkItemFactoryCreateItem <-
function(object, entry, callback.data = NULL, callback.type, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkItemFactory")
	entry <- as.GtkItemFactoryEntry(entry)
	
	callback.type <- as.numeric(callback.type)

	w <- .RGtkCall("S_gtk_item_factory_create_item", object, entry, callback.data, callback.type, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkItemFactoryCreateItems <-
function(object, entries, callback.data = NULL, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkItemFactory")
	entries <- lapply(entries, function(x) { x <- as.GtkItemFactoryEntry(x); x })
	

	w <- .RGtkCall("S_gtk_item_factory_create_items", object, entries, callback.data, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkItemFactoryDeleteItem <-
function(object, path, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkItemFactory")
	path <- as.character(path)

	w <- .RGtkCall("S_gtk_item_factory_delete_item", object, path, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkItemFactoryDeleteEntry <-
function(object, entry, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkItemFactory")
	entry <- as.GtkItemFactoryEntry(entry)

	w <- .RGtkCall("S_gtk_item_factory_delete_entry", object, entry, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkItemFactoryDeleteEntries <-
function(object, entries, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkItemFactory")
	entries <- lapply(entries, function(x) { x <- as.GtkItemFactoryEntry(x); x })

	w <- .RGtkCall("S_gtk_item_factory_delete_entries", object, entries, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkItemFactoryPopup <-
function(object, x, y, mouse.button, time = "GDK_CURRENT_TIME", .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkItemFactory")
	x <- as.numeric(x)
	y <- as.numeric(y)
	mouse.button <- as.numeric(mouse.button)
	time <- as.numeric(time)

	w <- .RGtkCall("S_gtk_item_factory_popup", object, x, y, mouse.button, time, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkItemFactoryPopupWithData <-
function(object, popup.data, x, y, mouse.button, time = "GDK_CURRENT_TIME", .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkItemFactory")
	
	x <- as.numeric(x)
	y <- as.numeric(y)
	mouse.button <- as.numeric(mouse.button)
	time <- as.numeric(time)

	w <- .RGtkCall("S_gtk_item_factory_popup_with_data", object, popup.data, x, y, mouse.button, time, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkItemFactoryPopupData <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkItemFactory")

	w <- .RGtkCall("S_gtk_item_factory_popup_data", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkItemFactoryPopupDataFromWidget <-
function(widget, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(widget, "GtkWidget")

	w <- .RGtkCall("S_gtk_item_factory_popup_data_from_widget", widget, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkItemFactorySetTranslateFunc <-
function(object, func, data = NULL, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkItemFactory")
	func <- as.function(func)
	

	w <- .RGtkCall("S_gtk_item_factory_set_translate_func", object, func, data, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkItemFactoryFromPath <-
function(path, .flush = TRUE, .depwarn = TRUE)
{
	path <- as.character(path)

	w <- .RGtkCall("S_gtk_item_factory_from_path", path, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkItemFactoriesPathDelete <-
function(ifactory.path, path, .flush = TRUE, .depwarn = TRUE)
{
	ifactory.path <- as.character(ifactory.path)
	path <- as.character(path)

	w <- .RGtkCall("S_gtk_item_factories_path_delete", ifactory.path, path, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkItemFactoryCreateItemsAc <-
function(object, entries, callback.data, callback.type, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkItemFactory")
	entries <- lapply(entries, function(x) { x <- as.GtkItemFactoryEntry(x); x })
	
	callback.type <- as.numeric(callback.type)

	w <- .RGtkCall("S_gtk_item_factory_create_items_ac", object, entries, callback.data, callback.type, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkLabelGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_label_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkLabelNew <-
function(str = NULL, show = TRUE, .flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_label_new", str, PACKAGE = "RGtk2", .flush = .flush)

	if(show)
		gtkWidgetShowAll(w)

	return(w)
} 


gtkLabelNewWithMnemonic <-
function(str = NULL, show = TRUE, .flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_label_new_with_mnemonic", str, PACKAGE = "RGtk2", .flush = .flush)

	if(show)
		gtkWidgetShowAll(w)

	return(w)
} 


gtkLabelSetText <-
function(object, str, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkLabel")
	str <- as.character(str)

	w <- .RGtkCall("S_gtk_label_set_text", object, str, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkLabelGetText <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkLabel")

	w <- .RGtkCall("S_gtk_label_get_text", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkLabelSetAttributes <-
function(object, attrs, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkLabel")
	checkPtrType(attrs, "PangoAttrList")

	w <- .RGtkCall("S_gtk_label_set_attributes", object, attrs, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkLabelGetAttributes <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkLabel")

	w <- .RGtkCall("S_gtk_label_get_attributes", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkLabelSetLabel <-
function(object, str, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkLabel")
	str <- as.character(str)

	w <- .RGtkCall("S_gtk_label_set_label", object, str, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkLabelGetLabel <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkLabel")

	w <- .RGtkCall("S_gtk_label_get_label", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkLabelSetMarkup <-
function(object, str, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkLabel")
	str <- as.character(str)

	w <- .RGtkCall("S_gtk_label_set_markup", object, str, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkLabelSetUseMarkup <-
function(object, setting, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkLabel")
	setting <- as.logical(setting)

	w <- .RGtkCall("S_gtk_label_set_use_markup", object, setting, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkLabelGetUseMarkup <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkLabel")

	w <- .RGtkCall("S_gtk_label_get_use_markup", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkLabelSetUseUnderline <-
function(object, setting, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkLabel")
	setting <- as.logical(setting)

	w <- .RGtkCall("S_gtk_label_set_use_underline", object, setting, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkLabelGetUseUnderline <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkLabel")

	w <- .RGtkCall("S_gtk_label_get_use_underline", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkLabelSetMarkupWithMnemonic <-
function(object, str, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkLabel")
	str <- as.character(str)

	w <- .RGtkCall("S_gtk_label_set_markup_with_mnemonic", object, str, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkLabelGetMnemonicKeyval <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkLabel")

	w <- .RGtkCall("S_gtk_label_get_mnemonic_keyval", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkLabelSetMnemonicWidget <-
function(object, widget, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkLabel")
	checkPtrType(widget, "GtkWidget")

	w <- .RGtkCall("S_gtk_label_set_mnemonic_widget", object, widget, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkLabelGetMnemonicWidget <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkLabel")

	w <- .RGtkCall("S_gtk_label_get_mnemonic_widget", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkLabelSetTextWithMnemonic <-
function(object, str, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkLabel")
	str <- as.character(str)

	w <- .RGtkCall("S_gtk_label_set_text_with_mnemonic", object, str, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkLabelSetJustify <-
function(object, jtype, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkLabel")
	

	w <- .RGtkCall("S_gtk_label_set_justify", object, jtype, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkLabelGetJustify <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkLabel")

	w <- .RGtkCall("S_gtk_label_get_justify", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkLabelSetPattern <-
function(object, pattern, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkLabel")
	pattern <- as.character(pattern)

	w <- .RGtkCall("S_gtk_label_set_pattern", object, pattern, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkLabelSetLineWrap <-
function(object, wrap, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkLabel")
	wrap <- as.logical(wrap)

	w <- .RGtkCall("S_gtk_label_set_line_wrap", object, wrap, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkLabelGetLineWrap <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkLabel")

	w <- .RGtkCall("S_gtk_label_get_line_wrap", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkLabelSetSelectable <-
function(object, setting, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkLabel")
	setting <- as.logical(setting)

	w <- .RGtkCall("S_gtk_label_set_selectable", object, setting, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkLabelGetSelectable <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkLabel")

	w <- .RGtkCall("S_gtk_label_get_selectable", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkLabelSelectRegion <-
function(object, start.offset, end.offset, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkLabel")
	start.offset <- as.integer(start.offset)
	end.offset <- as.integer(end.offset)

	w <- .RGtkCall("S_gtk_label_select_region", object, start.offset, end.offset, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkLabelGetSelectionBounds <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkLabel")

	w <- .RGtkCall("S_gtk_label_get_selection_bounds", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkLabelGetLayout <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkLabel")

	w <- .RGtkCall("S_gtk_label_get_layout", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkLabelGetLayoutOffsets <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkLabel")

	w <- .RGtkCall("S_gtk_label_get_layout_offsets", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkLabelSet <-
function(object, str, .flush = TRUE, .depwarn = TRUE)
{
	if (.depwarn)
		warning("This function is deprecated: use GtkLabel.set_text")

	checkPtrType(object, "GtkLabel")
	str <- as.character(str)

	w <- .RGtkCall("S_gtk_label_set", object, str, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkLabelGet <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	if (.depwarn)
		warning("This function is deprecated: use GtkLabel.get_text")

	checkPtrType(object, "GtkLabel")

	w <- .RGtkCall("S_gtk_label_get", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkLabelParseUline <-
function(object, string, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkLabel")
	string <- as.character(string)

	w <- .RGtkCall("S_gtk_label_parse_uline", object, string, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkLabelSetEllipsize <-
function(object, mode, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkLabel")
	

	w <- .RGtkCall("S_gtk_label_set_ellipsize", object, mode, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkLabelGetEllipsize <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkLabel")

	w <- .RGtkCall("S_gtk_label_get_ellipsize", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkLabelSetAngle <-
function(object, angle, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkLabel")
	angle <- as.integer(angle)

	w <- .RGtkCall("S_gtk_label_set_angle", object, angle, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkLabelGetAngle <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkLabel")

	w <- .RGtkCall("S_gtk_label_get_angle", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkLabelSetWidthChars <-
function(object, n.chars, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkLabel")
	n.chars <- as.integer(n.chars)

	w <- .RGtkCall("S_gtk_label_set_width_chars", object, n.chars, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkLabelGetWidthChars <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkLabel")

	w <- .RGtkCall("S_gtk_label_get_width_chars", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkLabelSetMaxWidthChars <-
function(object, n.chars, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkLabel")
	n.chars <- as.integer(n.chars)

	w <- .RGtkCall("S_gtk_label_set_max_width_chars", object, n.chars, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkLabelGetMaxWidthChars <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkLabel")

	w <- .RGtkCall("S_gtk_label_get_max_width_chars", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkLabelSetSingleLineMode <-
function(object, single.line.mode, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkLabel")
	single.line.mode <- as.logical(single.line.mode)

	w <- .RGtkCall("S_gtk_label_set_single_line_mode", object, single.line.mode, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkLabelGetSingleLineMode <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkLabel")

	w <- .RGtkCall("S_gtk_label_get_single_line_mode", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkLayoutGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_layout_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkLayoutNew <-
function(hadjustment = NULL, vadjustment = NULL, show = TRUE, .flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_layout_new", hadjustment, vadjustment, PACKAGE = "RGtk2", .flush = .flush)

	if(show)
		gtkWidgetShowAll(w)

	return(w)
} 


gtkLayoutPut <-
function(object, child.widget, x, y, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkLayout")
	checkPtrType(child.widget, "GtkWidget")
	x <- as.integer(x)
	y <- as.integer(y)

	w <- .RGtkCall("S_gtk_layout_put", object, child.widget, x, y, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkLayoutMove <-
function(object, child.widget, x, y, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkLayout")
	checkPtrType(child.widget, "GtkWidget")
	x <- as.integer(x)
	y <- as.integer(y)

	w <- .RGtkCall("S_gtk_layout_move", object, child.widget, x, y, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkLayoutSetSize <-
function(object, width, height, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkLayout")
	width <- as.numeric(width)
	height <- as.numeric(height)

	w <- .RGtkCall("S_gtk_layout_set_size", object, width, height, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkLayoutGetSize <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkLayout")

	w <- .RGtkCall("S_gtk_layout_get_size", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkLayoutGetHadjustment <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkLayout")

	w <- .RGtkCall("S_gtk_layout_get_hadjustment", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkLayoutGetVadjustment <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkLayout")

	w <- .RGtkCall("S_gtk_layout_get_vadjustment", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkLayoutSetHadjustment <-
function(object, adjustment = NULL, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkLayout")
	if (!is.null( adjustment )) checkPtrType(adjustment, "GtkAdjustment")

	w <- .RGtkCall("S_gtk_layout_set_hadjustment", object, adjustment, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkLayoutSetVadjustment <-
function(object, adjustment = NULL, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkLayout")
	if (!is.null( adjustment )) checkPtrType(adjustment, "GtkAdjustment")

	w <- .RGtkCall("S_gtk_layout_set_vadjustment", object, adjustment, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkLayoutFreeze <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkLayout")

	w <- .RGtkCall("S_gtk_layout_freeze", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkLayoutThaw <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkLayout")

	w <- .RGtkCall("S_gtk_layout_thaw", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkListGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	if (.depwarn)
		warning("This function is deprecated: use GtkListStore/GtkTreeView")

	

	w <- .RGtkCall("S_gtk_list_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkListNew <-
function(show = TRUE, .flush = TRUE, .depwarn = TRUE)
{
	if (.depwarn)
		warning("This function is deprecated: use GtkListStore/GtkTreeView")

	

	w <- .RGtkCall("S_gtk_list_new", PACKAGE = "RGtk2", .flush = .flush)

	if(show)
		gtkWidgetShowAll(w)

	return(w)
} 


gtkListInsertItems <-
function(object, items, position, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkList")
	items <- as.GList(items)
	position <- as.integer(position)

	w <- .RGtkCall("S_gtk_list_insert_items", object, items, position, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkListAppendItems <-
function(object, items, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkList")
	items <- as.GList(items)

	w <- .RGtkCall("S_gtk_list_append_items", object, items, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkListPrependItems <-
function(object, items, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkList")
	items <- as.GList(items)

	w <- .RGtkCall("S_gtk_list_prepend_items", object, items, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkListRemoveItems <-
function(object, items, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkList")
	items <- as.GList(items)

	w <- .RGtkCall("S_gtk_list_remove_items", object, items, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkListRemoveItemsNoUnref <-
function(object, items, .flush = TRUE, .depwarn = TRUE)
{
	if (.depwarn)
		warning("This function is deprecated: use GtkListStore/GtkTreeView")

	checkPtrType(object, "GtkList")
	items <- as.GList(items)

	w <- .RGtkCall("S_gtk_list_remove_items_no_unref", object, items, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkListClearItems <-
function(object, start, end, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkList")
	start <- as.integer(start)
	end <- as.integer(end)

	w <- .RGtkCall("S_gtk_list_clear_items", object, start, end, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkListSelectItem <-
function(object, item, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkList")
	item <- as.integer(item)

	w <- .RGtkCall("S_gtk_list_select_item", object, item, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkListUnselectItem <-
function(object, item, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkList")
	item <- as.integer(item)

	w <- .RGtkCall("S_gtk_list_unselect_item", object, item, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkListSelectChild <-
function(object, child, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkList")
	checkPtrType(child, "GtkWidget")

	w <- .RGtkCall("S_gtk_list_select_child", object, child, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkListUnselectChild <-
function(object, child, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkList")
	checkPtrType(child, "GtkWidget")

	w <- .RGtkCall("S_gtk_list_unselect_child", object, child, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkListChildPosition <-
function(object, child, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkList")
	checkPtrType(child, "GtkWidget")

	w <- .RGtkCall("S_gtk_list_child_position", object, child, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkListSetSelectionMode <-
function(object, mode, .flush = TRUE, .depwarn = TRUE)
{
	if (.depwarn)
		warning("This function is deprecated: use GtkListStore/GtkTreeView")

	checkPtrType(object, "GtkList")
	

	w <- .RGtkCall("S_gtk_list_set_selection_mode", object, mode, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkListExtendSelection <-
function(object, scroll.type, position, auto.start.selection, .flush = TRUE, .depwarn = TRUE)
{
	if (.depwarn)
		warning("This function is deprecated: use GtkListStore/GtkTreeView")

	checkPtrType(object, "GtkList")
	
	position <- as.numeric(position)
	auto.start.selection <- as.logical(auto.start.selection)

	w <- .RGtkCall("S_gtk_list_extend_selection", object, scroll.type, position, auto.start.selection, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkListStartSelection <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	if (.depwarn)
		warning("This function is deprecated: use GtkListStore/GtkTreeView")

	checkPtrType(object, "GtkList")

	w <- .RGtkCall("S_gtk_list_start_selection", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkListEndSelection <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	if (.depwarn)
		warning("This function is deprecated: use GtkListStore/GtkTreeView")

	checkPtrType(object, "GtkList")

	w <- .RGtkCall("S_gtk_list_end_selection", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkListSelectAll <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	if (.depwarn)
		warning("This function is deprecated: use GtkListStore/GtkTreeView")

	checkPtrType(object, "GtkList")

	w <- .RGtkCall("S_gtk_list_select_all", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkListUnselectAll <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	if (.depwarn)
		warning("This function is deprecated: use GtkListStore/GtkTreeView")

	checkPtrType(object, "GtkList")

	w <- .RGtkCall("S_gtk_list_unselect_all", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkListScrollHorizontal <-
function(object, scroll.type, position, .flush = TRUE, .depwarn = TRUE)
{
	if (.depwarn)
		warning("This function is deprecated: use GtkListStore/GtkTreeView")

	checkPtrType(object, "GtkList")
	
	position <- as.numeric(position)

	w <- .RGtkCall("S_gtk_list_scroll_horizontal", object, scroll.type, position, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkListScrollVertical <-
function(object, scroll.type, position, .flush = TRUE, .depwarn = TRUE)
{
	if (.depwarn)
		warning("This function is deprecated: use GtkListStore/GtkTreeView")

	checkPtrType(object, "GtkList")
	
	position <- as.numeric(position)

	w <- .RGtkCall("S_gtk_list_scroll_vertical", object, scroll.type, position, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkListToggleAddMode <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	if (.depwarn)
		warning("This function is deprecated: use GtkListStore/GtkTreeView")

	checkPtrType(object, "GtkList")

	w <- .RGtkCall("S_gtk_list_toggle_add_mode", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkListToggleFocusRow <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	if (.depwarn)
		warning("This function is deprecated: use GtkListStore/GtkTreeView")

	checkPtrType(object, "GtkList")

	w <- .RGtkCall("S_gtk_list_toggle_focus_row", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkListToggleRow <-
function(object, item, .flush = TRUE, .depwarn = TRUE)
{
	if (.depwarn)
		warning("This function is deprecated: use GtkListStore/GtkTreeView")

	checkPtrType(object, "GtkList")
	checkPtrType(item, "GtkWidget")

	w <- .RGtkCall("S_gtk_list_toggle_row", object, item, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkListUndoSelection <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	if (.depwarn)
		warning("This function is deprecated: use GtkListStore/GtkTreeView")

	checkPtrType(object, "GtkList")

	w <- .RGtkCall("S_gtk_list_undo_selection", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkListEndDragSelection <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	if (.depwarn)
		warning("This function is deprecated: use GtkListStore/GtkTreeView")

	checkPtrType(object, "GtkList")

	w <- .RGtkCall("S_gtk_list_end_drag_selection", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkListItemGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_list_item_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkListItemNew <-
function(show = TRUE, .flush = TRUE, .depwarn = TRUE)
{
	if (.depwarn)
		warning("This function is deprecated: use gtk.TreeView")

	

	w <- .RGtkCall("S_gtk_list_item_new", PACKAGE = "RGtk2", .flush = .flush)

	if(show)
		gtkWidgetShowAll(w)

	return(w)
} 


gtkListItemNewWithLabel <-
function(label, show = TRUE, .flush = TRUE, .depwarn = TRUE)
{
	if (.depwarn)
		warning("This function is deprecated: use gtk.TreeView")

	label <- as.character(label)

	w <- .RGtkCall("S_gtk_list_item_new_with_label", label, PACKAGE = "RGtk2", .flush = .flush)

	if(show)
		gtkWidgetShowAll(w)

	return(w)
} 


gtkListItemSelect <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkListItem")

	w <- .RGtkCall("S_gtk_list_item_select", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkListItemDeselect <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkListItem")

	w <- .RGtkCall("S_gtk_list_item_deselect", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkListStoreGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_list_store_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkListStoreNewv <-
function(value, .flush = TRUE, .depwarn = TRUE)
{
	value <- as.list(as.numeric(value))

	w <- .RGtkCall("S_gtk_list_store_newv", value, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkListStoreSetColumnTypes <-
function(object, types, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkListStore")
	types <- as.list(as.numeric(types))

	w <- .RGtkCall("S_gtk_list_store_set_column_types", object, types, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkListStoreSetValue <-
function(object, iter, column, value, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkListStore")
	checkPtrType(iter, "GtkTreeIter")
	column <- as.integer(column)
	

	w <- .RGtkCall("S_gtk_list_store_set_value", object, iter, column, value, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkListStoreRemove <-
function(object, iter, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkListStore")
	checkPtrType(iter, "GtkTreeIter")

	w <- .RGtkCall("S_gtk_list_store_remove", object, iter, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkListStoreInsert <-
function(object, position, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkListStore")
	position <- as.integer(position)

	w <- .RGtkCall("S_gtk_list_store_insert", object, position, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkListStoreInsertBefore <-
function(object, sibling, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkListStore")
	checkPtrType(sibling, "GtkTreeIter")

	w <- .RGtkCall("S_gtk_list_store_insert_before", object, sibling, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkListStoreInsertAfter <-
function(object, sibling, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkListStore")
	checkPtrType(sibling, "GtkTreeIter")

	w <- .RGtkCall("S_gtk_list_store_insert_after", object, sibling, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkListStorePrepend <-
function(object, iter, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkListStore")
	checkPtrType(iter, "GtkTreeIter")

	w <- .RGtkCall("S_gtk_list_store_prepend", object, iter, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkListStoreAppend <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkListStore")

	w <- .RGtkCall("S_gtk_list_store_append", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkListStoreClear <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkListStore")

	w <- .RGtkCall("S_gtk_list_store_clear", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkListStoreIterIsValid <-
function(object, iter, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkListStore")
	checkPtrType(iter, "GtkTreeIter")

	w <- .RGtkCall("S_gtk_list_store_iter_is_valid", object, iter, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkListStoreReorder <-
function(object, new.order, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkListStore")
	new.order <- as.list(as.integer(new.order))

	w <- .RGtkCall("S_gtk_list_store_reorder", object, new.order, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkListStoreSwap <-
function(object, a, b, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkListStore")
	checkPtrType(a, "GtkTreeIter")
	checkPtrType(b, "GtkTreeIter")

	w <- .RGtkCall("S_gtk_list_store_swap", object, a, b, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkListStoreMoveAfter <-
function(object, iter, position = NULL, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkListStore")
	checkPtrType(iter, "GtkTreeIter")
	if (!is.null( position )) checkPtrType(position, "GtkTreeIter")

	w <- .RGtkCall("S_gtk_list_store_move_after", object, iter, position, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkListStoreMoveBefore <-
function(object, iter, position = NULL, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkListStore")
	checkPtrType(iter, "GtkTreeIter")
	if (!is.null( position )) checkPtrType(position, "GtkTreeIter")

	w <- .RGtkCall("S_gtk_list_store_move_before", object, iter, position, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkCheckVersion <-
function(required.major, required.minor, required.micro, .flush = TRUE, .depwarn = TRUE)
{
	required.major <- as.numeric(required.major)
	required.minor <- as.numeric(required.minor)
	required.micro <- as.numeric(required.micro)

	w <- .RGtkCall("S_gtk_check_version", required.major, required.minor, required.micro, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkExit <-
function(error.code, .flush = TRUE, .depwarn = TRUE)
{
	error.code <- as.integer(error.code)

	w <- .RGtkCall("S_gtk_exit", error.code, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkDisableSetlocale <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_disable_setlocale", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkSetLocale <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_set_locale", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkGetDefaultLanguage <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_get_default_language", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkEventsPending <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_events_pending", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkMainDoEvent <-
function(event, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(event, "GdkEvent")

	w <- .RGtkCall("S_gtk_main_do_event", event, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkMain <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_main", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkMainLevel <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_main_level", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkMainQuit <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_main_quit", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkMainIteration <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_main_iteration", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkMainIterationDo <-
function(blocking = "TRUE", .flush = TRUE, .depwarn = TRUE)
{
	blocking <- as.logical(blocking)

	w <- .RGtkCall("S_gtk_main_iteration_do", blocking, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTrue <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_true", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkFalse <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_false", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkGrabAdd <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWidget")

	w <- .RGtkCall("S_gtk_grab_add", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkGrabGetCurrent <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_grab_get_current", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkGrabRemove <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWidget")

	w <- .RGtkCall("S_gtk_grab_remove", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkInitAdd <-
function(fun, data = NULL, .flush = TRUE, .depwarn = TRUE)
{
	fun <- as.function(fun)
	

	w <- .RGtkCall("S_gtk_init_add", fun, data, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkQuitAddDestroy <-
function(main.level, object, .flush = TRUE, .depwarn = TRUE)
{
	main.level <- as.numeric(main.level)
	checkPtrType(object, "GtkObject")

	w <- .RGtkCall("S_gtk_quit_add_destroy", main.level, object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkQuitAdd <-
function(main.level, fun, data = NULL, .flush = TRUE, .depwarn = TRUE)
{
	main.level <- as.numeric(main.level)
	fun <- as.function(fun)
	

	w <- .RGtkCall("S_gtk_quit_add", main.level, fun, data, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkQuitAddFull <-
function(main.level, fun, data = NULL, .flush = TRUE, .depwarn = TRUE)
{
	main.level <- as.numeric(main.level)
	fun <- as.function(fun)
	

	w <- .RGtkCall("S_gtk_quit_add_full", main.level, fun, data, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkQuitRemove <-
function(quit.handler.id, .flush = TRUE, .depwarn = TRUE)
{
	quit.handler.id <- as.numeric(quit.handler.id)

	w <- .RGtkCall("S_gtk_quit_remove", quit.handler.id, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkQuitRemoveByData <-
function(data, .flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_quit_remove_by_data", data, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTimeoutAdd <-
function(interval, fun, data = NULL, .flush = TRUE, .depwarn = TRUE)
{
	interval <- as.numeric(interval)
	fun <- as.function(fun)
	

	w <- .RGtkCall("S_gtk_timeout_add", interval, fun, data, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTimeoutAddFull <-
function(interval, fun, data = NULL, .flush = TRUE, .depwarn = TRUE)
{
	interval <- as.numeric(interval)
	fun <- as.function(fun)
	

	w <- .RGtkCall("S_gtk_timeout_add_full", interval, fun, data, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTimeoutRemove <-
function(timeout.handler.id, .flush = TRUE, .depwarn = TRUE)
{
	timeout.handler.id <- as.numeric(timeout.handler.id)

	w <- .RGtkCall("S_gtk_timeout_remove", timeout.handler.id, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkIdleAdd <-
function(fun, data = NULL, .flush = TRUE, .depwarn = TRUE)
{
	fun <- as.function(fun)
	

	w <- .RGtkCall("S_gtk_idle_add", fun, data, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkIdleAddPriority <-
function(priority, fun, data = NULL, .flush = TRUE, .depwarn = TRUE)
{
	priority <- as.integer(priority)
	fun <- as.function(fun)
	

	w <- .RGtkCall("S_gtk_idle_add_priority", priority, fun, data, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkIdleAddFull <-
function(priority, fun, data = NULL, .flush = TRUE, .depwarn = TRUE)
{
	priority <- as.integer(priority)
	fun <- as.function(fun)
	

	w <- .RGtkCall("S_gtk_idle_add_full", priority, fun, data, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkIdleRemove <-
function(idle.handler.id, .flush = TRUE, .depwarn = TRUE)
{
	idle.handler.id <- as.numeric(idle.handler.id)

	w <- .RGtkCall("S_gtk_idle_remove", idle.handler.id, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkIdleRemoveByData <-
function(data, .flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_idle_remove_by_data", data, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkInputAddFull <-
function(source, condition, fun, data = NULL, .flush = TRUE, .depwarn = TRUE)
{
	source <- as.integer(source)
	
	fun <- as.function(fun)
	

	w <- .RGtkCall("S_gtk_input_add_full", source, condition, fun, data, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkInputRemove <-
function(input.handler.id, .flush = TRUE, .depwarn = TRUE)
{
	input.handler.id <- as.numeric(input.handler.id)

	w <- .RGtkCall("S_gtk_input_remove", input.handler.id, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkKeySnooperInstall <-
function(snooper, func.data = NULL, .flush = TRUE, .depwarn = TRUE)
{
	snooper <- as.function(snooper)
	

	w <- .RGtkCall("S_gtk_key_snooper_install", snooper, func.data, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkKeySnooperRemove <-
function(snooper.handler.id, .flush = TRUE, .depwarn = TRUE)
{
	snooper.handler.id <- as.numeric(snooper.handler.id)

	w <- .RGtkCall("S_gtk_key_snooper_remove", snooper.handler.id, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkGetCurrentEvent <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_get_current_event", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkGetCurrentEventTime <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_get_current_event_time", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkGetCurrentEventState <-
function(state, .flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_get_current_event_state", state, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkGetEventWidget <-
function(event, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(event, "GdkEvent")

	w <- .RGtkCall("S_gtk_get_event_widget", event, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkPropagateEvent <-
function(object, event, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWidget")
	checkPtrType(event, "GdkEvent")

	w <- .RGtkCall("S_gtk_propagate_event", object, event, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkMenuGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_menu_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkMenuNew <-
function(show = TRUE, .flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_menu_new", PACKAGE = "RGtk2", .flush = .flush)

	if(show)
		gtkWidgetShowAll(w)

	return(w)
} 


gtkMenuPopup <-
function(object, parent.menu.shell, parent.menu.item, func, data = NULL, button, activate.time, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkMenu")
	checkPtrType(parent.menu.shell, "GtkWidget")
	checkPtrType(parent.menu.item, "GtkWidget")
	func <- as.function(func)
	
	button <- as.numeric(button)
	activate.time <- as.numeric(activate.time)

	w <- .RGtkCall("S_gtk_menu_popup", object, parent.menu.shell, parent.menu.item, func, data, button, activate.time, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkMenuReposition <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkMenu")

	w <- .RGtkCall("S_gtk_menu_reposition", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkMenuPopdown <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkMenu")

	w <- .RGtkCall("S_gtk_menu_popdown", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkMenuGetActive <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkMenu")

	w <- .RGtkCall("S_gtk_menu_get_active", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkMenuSetActive <-
function(object, index, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkMenu")
	index <- as.numeric(index)

	w <- .RGtkCall("S_gtk_menu_set_active", object, index, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkMenuSetAccelGroup <-
function(object, accel.group, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkMenu")
	checkPtrType(accel.group, "GtkAccelGroup")

	w <- .RGtkCall("S_gtk_menu_set_accel_group", object, accel.group, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkMenuGetAccelGroup <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkMenu")

	w <- .RGtkCall("S_gtk_menu_get_accel_group", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkMenuSetAccelPath <-
function(object, accel.path, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkMenu")
	accel.path <- as.character(accel.path)

	w <- .RGtkCall("S_gtk_menu_set_accel_path", object, accel.path, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkMenuDetach <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkMenu")

	w <- .RGtkCall("S_gtk_menu_detach", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkMenuGetAttachWidget <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkMenu")

	w <- .RGtkCall("S_gtk_menu_get_attach_widget", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkMenuSetTearoffState <-
function(object, torn.off, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkMenu")
	torn.off <- as.logical(torn.off)

	w <- .RGtkCall("S_gtk_menu_set_tearoff_state", object, torn.off, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkMenuGetTearoffState <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkMenu")

	w <- .RGtkCall("S_gtk_menu_get_tearoff_state", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkMenuSetTitle <-
function(object, title, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkMenu")
	title <- as.character(title)

	w <- .RGtkCall("S_gtk_menu_set_title", object, title, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkMenuGetTitle <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkMenu")

	w <- .RGtkCall("S_gtk_menu_get_title", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkMenuReorderChild <-
function(object, child, position, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkMenu")
	checkPtrType(child, "GtkWidget")
	position <- as.integer(position)

	w <- .RGtkCall("S_gtk_menu_reorder_child", object, child, position, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkMenuSetScreen <-
function(object, screen = NULL, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkMenu")
	if (!is.null( screen )) checkPtrType(screen, "GdkScreen")

	w <- .RGtkCall("S_gtk_menu_set_screen", object, screen, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkMenuAttach <-
function(object, child, left.attach, right.attach, top.attach, bottom.attach, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkMenu")
	checkPtrType(child, "GtkWidget")
	left.attach <- as.numeric(left.attach)
	right.attach <- as.numeric(right.attach)
	top.attach <- as.numeric(top.attach)
	bottom.attach <- as.numeric(bottom.attach)

	w <- .RGtkCall("S_gtk_menu_attach", object, child, left.attach, right.attach, top.attach, bottom.attach, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkMenuSetMonitor <-
function(object, monitor.num, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkMenu")
	monitor.num <- as.integer(monitor.num)

	w <- .RGtkCall("S_gtk_menu_set_monitor", object, monitor.num, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkMenuGetForAttachWidget <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWidget")

	w <- .RGtkCall("S_gtk_menu_get_for_attach_widget", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkMenuBarGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_menu_bar_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkMenuBarNew <-
function(show = TRUE, .flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_menu_bar_new", PACKAGE = "RGtk2", .flush = .flush)

	if(show)
		gtkWidgetShowAll(w)

	return(w)
} 


gtkMenuBarGetPackDirection <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkMenuBar")

	w <- .RGtkCall("S_gtk_menu_bar_get_pack_direction", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkMenuBarSetPackDirection <-
function(object, pack.dir, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkMenuBar")
	

	w <- .RGtkCall("S_gtk_menu_bar_set_pack_direction", object, pack.dir, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkMenuBarGetChildPackDirection <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkMenuBar")

	w <- .RGtkCall("S_gtk_menu_bar_get_child_pack_direction", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkMenuBarSetChildPackDirection <-
function(object, child.pack.dir, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkMenuBar")
	

	w <- .RGtkCall("S_gtk_menu_bar_set_child_pack_direction", object, child.pack.dir, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkMenuItemGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_menu_item_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkMenuItemNew <-
function(show = TRUE, .flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_menu_item_new", PACKAGE = "RGtk2", .flush = .flush)

	if(show)
		gtkWidgetShowAll(w)

	return(w)
} 


gtkMenuItemNewWithLabel <-
function(label, show = TRUE, .flush = TRUE, .depwarn = TRUE)
{
	label <- as.character(label)

	w <- .RGtkCall("S_gtk_menu_item_new_with_label", label, PACKAGE = "RGtk2", .flush = .flush)

	if(show)
		gtkWidgetShowAll(w)

	return(w)
} 


gtkMenuItemNewWithMnemonic <-
function(label, show = TRUE, .flush = TRUE, .depwarn = TRUE)
{
	label <- as.character(label)

	w <- .RGtkCall("S_gtk_menu_item_new_with_mnemonic", label, PACKAGE = "RGtk2", .flush = .flush)

	if(show)
		gtkWidgetShowAll(w)

	return(w)
} 


gtkMenuItemSetSubmenu <-
function(object, submenu, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkMenuItem")
	checkPtrType(submenu, "GtkWidget")

	w <- .RGtkCall("S_gtk_menu_item_set_submenu", object, submenu, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkMenuItemGetSubmenu <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkMenuItem")

	w <- .RGtkCall("S_gtk_menu_item_get_submenu", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkMenuItemRemoveSubmenu <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkMenuItem")

	w <- .RGtkCall("S_gtk_menu_item_remove_submenu", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkMenuItemSelect <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkMenuItem")

	w <- .RGtkCall("S_gtk_menu_item_select", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkMenuItemDeselect <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkMenuItem")

	w <- .RGtkCall("S_gtk_menu_item_deselect", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkMenuItemActivate <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkMenuItem")

	w <- .RGtkCall("S_gtk_menu_item_activate", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkMenuItemToggleSizeRequest <-
function(object, requisition, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkMenuItem")
	requisition <- as.list(as.integer(requisition))

	w <- .RGtkCall("S_gtk_menu_item_toggle_size_request", object, requisition, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkMenuItemToggleSizeAllocate <-
function(object, allocation, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkMenuItem")
	allocation <- as.integer(allocation)

	w <- .RGtkCall("S_gtk_menu_item_toggle_size_allocate", object, allocation, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkMenuItemSetRightJustified <-
function(object, right.justified, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkMenuItem")
	right.justified <- as.logical(right.justified)

	w <- .RGtkCall("S_gtk_menu_item_set_right_justified", object, right.justified, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkMenuItemGetRightJustified <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkMenuItem")

	w <- .RGtkCall("S_gtk_menu_item_get_right_justified", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkMenuItemSetAccelPath <-
function(object, accel.path, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkMenuItem")
	accel.path <- as.character(accel.path)

	w <- .RGtkCall("S_gtk_menu_item_set_accel_path", object, accel.path, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkMenuItemRightJustify <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	if (.depwarn)
		warning("This function is deprecated: use GtkMenuItem.set_right_justified")

	checkPtrType(object, "GtkMenuItem")

	w <- .RGtkCall("S_gtk_menu_item_right_justify", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkMenuShellGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_menu_shell_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkMenuShellAppend <-
function(object, child, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkMenuShell")
	checkPtrType(child, "GtkWidget")

	w <- .RGtkCall("S_gtk_menu_shell_append", object, child, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkMenuShellPrepend <-
function(object, child, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkMenuShell")
	checkPtrType(child, "GtkWidget")

	w <- .RGtkCall("S_gtk_menu_shell_prepend", object, child, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkMenuShellInsert <-
function(object, child, position, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkMenuShell")
	checkPtrType(child, "GtkWidget")
	position <- as.integer(position)

	w <- .RGtkCall("S_gtk_menu_shell_insert", object, child, position, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkMenuShellDeactivate <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkMenuShell")

	w <- .RGtkCall("S_gtk_menu_shell_deactivate", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkMenuShellSelectItem <-
function(object, menu.item, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkMenuShell")
	checkPtrType(menu.item, "GtkWidget")

	w <- .RGtkCall("S_gtk_menu_shell_select_item", object, menu.item, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkMenuShellDeselect <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkMenuShell")

	w <- .RGtkCall("S_gtk_menu_shell_deselect", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkMenuShellActivateItem <-
function(object, menu.item, force.deactivate, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkMenuShell")
	checkPtrType(menu.item, "GtkWidget")
	force.deactivate <- as.logical(force.deactivate)

	w <- .RGtkCall("S_gtk_menu_shell_activate_item", object, menu.item, force.deactivate, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkMenuShellSelectFirst <-
function(object, search.sensitive, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkMenuShell")
	search.sensitive <- as.logical(search.sensitive)

	w <- .RGtkCall("S_gtk_menu_shell_select_first", object, search.sensitive, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkMenuShellCancel <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkMenuShell")

	w <- .RGtkCall("S_gtk_menu_shell_cancel", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkMenuShellGetTakeFocus <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkMenuShell")

	w <- .RGtkCall("S_gtk_menu_shell_get_take_focus", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkMenuShellSetTakeFocus <-
function(object, take.focus, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkMenuShell")
	take.focus <- as.logical(take.focus)

	w <- .RGtkCall("S_gtk_menu_shell_set_take_focus", object, take.focus, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkMenuToolButtonGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_menu_tool_button_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkMenuToolButtonNew <-
function(icon.widget, label, show = TRUE, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(icon.widget, "GtkWidget")
	label <- as.character(label)

	w <- .RGtkCall("S_gtk_menu_tool_button_new", icon.widget, label, PACKAGE = "RGtk2", .flush = .flush)

	if(show)
		gtkWidgetShowAll(w)

	return(w)
} 


gtkMenuToolButtonNewFromStock <-
function(stock.id, .flush = TRUE, .depwarn = TRUE)
{
	stock.id <- as.character(stock.id)

	w <- .RGtkCall("S_gtk_menu_tool_button_new_from_stock", stock.id, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkMenuToolButtonSetMenu <-
function(object, menu, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkMenuToolButton")
	checkPtrType(menu, "GtkWidget")

	w <- .RGtkCall("S_gtk_menu_tool_button_set_menu", object, menu, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkMenuToolButtonGetMenu <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkMenuToolButton")

	w <- .RGtkCall("S_gtk_menu_tool_button_get_menu", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkMenuToolButtonSetArrowTooltip <-
function(object, tooltips, tip.text = NULL, tip.private = "NULL", .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkMenuToolButton")
	checkPtrType(tooltips, "GtkTooltips")
	if (!is.null( tip.text )) tip.text <- as.character(tip.text)
	if (!is.null( tip.private )) tip.private <- as.character(tip.private)

	w <- .RGtkCall("S_gtk_menu_tool_button_set_arrow_tooltip", object, tooltips, tip.text, tip.private, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkMessageDialogGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_message_dialog_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkMessageDialogSetMarkup <-
function(object, str, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkMessageDialog")
	str <- as.character(str)

	w <- .RGtkCall("S_gtk_message_dialog_set_markup", object, str, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkMiscGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_misc_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkMiscSetAlignment <-
function(object, xalign, yalign, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkMisc")
	xalign <- as.numeric(xalign)
	yalign <- as.numeric(yalign)

	w <- .RGtkCall("S_gtk_misc_set_alignment", object, xalign, yalign, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkMiscGetAlignment <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkMisc")

	w <- .RGtkCall("S_gtk_misc_get_alignment", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkMiscSetPadding <-
function(object, xpad, ypad, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkMisc")
	xpad <- as.integer(xpad)
	ypad <- as.integer(ypad)

	w <- .RGtkCall("S_gtk_misc_set_padding", object, xpad, ypad, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkMiscGetPadding <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkMisc")

	w <- .RGtkCall("S_gtk_misc_get_padding", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkNotebookGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_notebook_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkNotebookNew <-
function(show = TRUE, .flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_notebook_new", PACKAGE = "RGtk2", .flush = .flush)

	if(show)
		gtkWidgetShowAll(w)

	return(w)
} 


gtkNotebookAppendPage <-
function(object, child, tab.label = "NULL", .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkNotebook")
	checkPtrType(child, "GtkWidget")
	if (!is.null( tab.label )) checkPtrType(tab.label, "GtkWidget")

	w <- .RGtkCall("S_gtk_notebook_append_page", object, child, tab.label, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkNotebookAppendPageMenu <-
function(object, child, tab.label = "NULL", menu.label = "NULL", .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkNotebook")
	checkPtrType(child, "GtkWidget")
	if (!is.null( tab.label )) checkPtrType(tab.label, "GtkWidget")
	if (!is.null( menu.label )) checkPtrType(menu.label, "GtkWidget")

	w <- .RGtkCall("S_gtk_notebook_append_page_menu", object, child, tab.label, menu.label, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkNotebookPrependPage <-
function(object, child, tab.label = "NULL", .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkNotebook")
	checkPtrType(child, "GtkWidget")
	if (!is.null( tab.label )) checkPtrType(tab.label, "GtkWidget")

	w <- .RGtkCall("S_gtk_notebook_prepend_page", object, child, tab.label, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkNotebookPrependPageMenu <-
function(object, child, tab.label = "NULL", menu.label = "NULL", .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkNotebook")
	checkPtrType(child, "GtkWidget")
	if (!is.null( tab.label )) checkPtrType(tab.label, "GtkWidget")
	if (!is.null( menu.label )) checkPtrType(menu.label, "GtkWidget")

	w <- .RGtkCall("S_gtk_notebook_prepend_page_menu", object, child, tab.label, menu.label, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkNotebookInsertPage <-
function(object, child, tab.label = "NULL", position = "-1", .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkNotebook")
	checkPtrType(child, "GtkWidget")
	if (!is.null( tab.label )) checkPtrType(tab.label, "GtkWidget")
	position <- as.integer(position)

	w <- .RGtkCall("S_gtk_notebook_insert_page", object, child, tab.label, position, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkNotebookInsertPageMenu <-
function(object, child, tab.label = "NULL", menu.label = "NULL", position = "-1", .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkNotebook")
	checkPtrType(child, "GtkWidget")
	if (!is.null( tab.label )) checkPtrType(tab.label, "GtkWidget")
	if (!is.null( menu.label )) checkPtrType(menu.label, "GtkWidget")
	position <- as.integer(position)

	w <- .RGtkCall("S_gtk_notebook_insert_page_menu", object, child, tab.label, menu.label, position, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkNotebookRemovePage <-
function(object, page.num, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkNotebook")
	page.num <- as.integer(page.num)

	w <- .RGtkCall("S_gtk_notebook_remove_page", object, page.num, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkNotebookGetCurrentPage <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkNotebook")

	w <- .RGtkCall("S_gtk_notebook_get_current_page", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkNotebookGetNthPage <-
function(object, page.num, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkNotebook")
	page.num <- as.integer(page.num)

	w <- .RGtkCall("S_gtk_notebook_get_nth_page", object, page.num, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkNotebookGetNPages <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkNotebook")

	w <- .RGtkCall("S_gtk_notebook_get_n_pages", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkNotebookPageNum <-
function(object, child, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkNotebook")
	checkPtrType(child, "GtkWidget")

	w <- .RGtkCall("S_gtk_notebook_page_num", object, child, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkNotebookSetCurrentPage <-
function(object, page.num, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkNotebook")
	page.num <- as.integer(page.num)

	w <- .RGtkCall("S_gtk_notebook_set_current_page", object, page.num, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkNotebookNextPage <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkNotebook")

	w <- .RGtkCall("S_gtk_notebook_next_page", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkNotebookPrevPage <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkNotebook")

	w <- .RGtkCall("S_gtk_notebook_prev_page", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkNotebookSetShowBorder <-
function(object, show.border, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkNotebook")
	show.border <- as.logical(show.border)

	w <- .RGtkCall("S_gtk_notebook_set_show_border", object, show.border, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkNotebookGetShowBorder <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkNotebook")

	w <- .RGtkCall("S_gtk_notebook_get_show_border", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkNotebookSetShowTabs <-
function(object, show.tabs, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkNotebook")
	show.tabs <- as.logical(show.tabs)

	w <- .RGtkCall("S_gtk_notebook_set_show_tabs", object, show.tabs, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkNotebookGetShowTabs <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkNotebook")

	w <- .RGtkCall("S_gtk_notebook_get_show_tabs", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkNotebookSetTabPos <-
function(object, pos, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkNotebook")
	

	w <- .RGtkCall("S_gtk_notebook_set_tab_pos", object, pos, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkNotebookGetTabPos <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkNotebook")

	w <- .RGtkCall("S_gtk_notebook_get_tab_pos", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkNotebookSetHomogeneousTabs <-
function(object, homogeneous, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkNotebook")
	homogeneous <- as.logical(homogeneous)

	w <- .RGtkCall("S_gtk_notebook_set_homogeneous_tabs", object, homogeneous, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkNotebookSetTabBorder <-
function(object, border.width, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkNotebook")
	border.width <- as.numeric(border.width)

	w <- .RGtkCall("S_gtk_notebook_set_tab_border", object, border.width, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkNotebookSetTabHborder <-
function(object, tab.hborder, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkNotebook")
	tab.hborder <- as.numeric(tab.hborder)

	w <- .RGtkCall("S_gtk_notebook_set_tab_hborder", object, tab.hborder, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkNotebookSetTabVborder <-
function(object, tab.vborder, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkNotebook")
	tab.vborder <- as.numeric(tab.vborder)

	w <- .RGtkCall("S_gtk_notebook_set_tab_vborder", object, tab.vborder, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkNotebookSetScrollable <-
function(object, scrollable, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkNotebook")
	scrollable <- as.logical(scrollable)

	w <- .RGtkCall("S_gtk_notebook_set_scrollable", object, scrollable, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkNotebookGetScrollable <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkNotebook")

	w <- .RGtkCall("S_gtk_notebook_get_scrollable", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkNotebookPopupEnable <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkNotebook")

	w <- .RGtkCall("S_gtk_notebook_popup_enable", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkNotebookPopupDisable <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkNotebook")

	w <- .RGtkCall("S_gtk_notebook_popup_disable", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkNotebookGetTabLabel <-
function(object, child, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkNotebook")
	checkPtrType(child, "GtkWidget")

	w <- .RGtkCall("S_gtk_notebook_get_tab_label", object, child, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkNotebookSetTabLabel <-
function(object, child, tab.label = "NULL", .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkNotebook")
	checkPtrType(child, "GtkWidget")
	if (!is.null( tab.label )) checkPtrType(tab.label, "GtkWidget")

	w <- .RGtkCall("S_gtk_notebook_set_tab_label", object, child, tab.label, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkNotebookSetTabLabelText <-
function(object, child, tab.text, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkNotebook")
	checkPtrType(child, "GtkWidget")
	tab.text <- as.character(tab.text)

	w <- .RGtkCall("S_gtk_notebook_set_tab_label_text", object, child, tab.text, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkNotebookGetTabLabelText <-
function(object, child, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkNotebook")
	checkPtrType(child, "GtkWidget")

	w <- .RGtkCall("S_gtk_notebook_get_tab_label_text", object, child, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkNotebookGetMenuLabel <-
function(object, child, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkNotebook")
	checkPtrType(child, "GtkWidget")

	w <- .RGtkCall("S_gtk_notebook_get_menu_label", object, child, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkNotebookSetMenuLabel <-
function(object, child, menu.label = "NULL", .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkNotebook")
	checkPtrType(child, "GtkWidget")
	if (!is.null( menu.label )) checkPtrType(menu.label, "GtkWidget")

	w <- .RGtkCall("S_gtk_notebook_set_menu_label", object, child, menu.label, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkNotebookSetMenuLabelText <-
function(object, child, menu.text, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkNotebook")
	checkPtrType(child, "GtkWidget")
	menu.text <- as.character(menu.text)

	w <- .RGtkCall("S_gtk_notebook_set_menu_label_text", object, child, menu.text, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkNotebookGetMenuLabelText <-
function(object, child, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkNotebook")
	checkPtrType(child, "GtkWidget")

	w <- .RGtkCall("S_gtk_notebook_get_menu_label_text", object, child, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkNotebookQueryTabLabelPacking <-
function(object, child, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkNotebook")
	checkPtrType(child, "GtkWidget")

	w <- .RGtkCall("S_gtk_notebook_query_tab_label_packing", object, child, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkNotebookSetTabLabelPacking <-
function(object, child, expand, fill, pack.type, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkNotebook")
	checkPtrType(child, "GtkWidget")
	expand <- as.logical(expand)
	fill <- as.logical(fill)
	

	w <- .RGtkCall("S_gtk_notebook_set_tab_label_packing", object, child, expand, fill, pack.type, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkNotebookReorderChild <-
function(object, child, position, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkNotebook")
	checkPtrType(child, "GtkWidget")
	position <- as.integer(position)

	w <- .RGtkCall("S_gtk_notebook_reorder_child", object, child, position, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkNotebookCurrentPage <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	if (.depwarn)
		warning("This function is deprecated: use GtkNotebook.get_current_page")

	checkPtrType(object, "GtkNotebook")

	w <- .RGtkCall("S_gtk_notebook_current_page", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkNotebookSetPage <-
function(object, page.num, .flush = TRUE, .depwarn = TRUE)
{
	if (.depwarn)
		warning("This function is deprecated: use GtkNotebook.set_current_page")

	checkPtrType(object, "GtkNotebook")
	page.num <- as.integer(page.num)

	w <- .RGtkCall("S_gtk_notebook_set_page", object, page.num, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkObjectGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_object_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkObjectSink <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkObject")

	w <- .RGtkCall("S_gtk_object_sink", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkObjectDestroy <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkObject")

	w <- .RGtkCall("S_gtk_object_destroy", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkOldEditableGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_old_editable_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkOldEditableClaimSelection <-
function(object, claim, time = "GDK_CURRENT_TIME", .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkOldEditable")
	claim <- as.logical(claim)
	time <- as.numeric(time)

	w <- .RGtkCall("S_gtk_old_editable_claim_selection", object, claim, time, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkOldEditableChanged <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkOldEditable")

	w <- .RGtkCall("S_gtk_old_editable_changed", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkOptionMenuGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_option_menu_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkOptionMenuNew <-
function(show = TRUE, .flush = TRUE, .depwarn = TRUE)
{
	if (.depwarn)
		warning("This function is deprecated: use gtk.ComboBox")

	

	w <- .RGtkCall("S_gtk_option_menu_new", PACKAGE = "RGtk2", .flush = .flush)

	if(show)
		gtkWidgetShowAll(w)

	return(w)
} 


gtkOptionMenuGetMenu <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkOptionMenu")

	w <- .RGtkCall("S_gtk_option_menu_get_menu", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkOptionMenuSetMenu <-
function(object, menu, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkOptionMenu")
	checkPtrType(menu, "GtkWidget")

	w <- .RGtkCall("S_gtk_option_menu_set_menu", object, menu, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkOptionMenuRemoveMenu <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkOptionMenu")

	w <- .RGtkCall("S_gtk_option_menu_remove_menu", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkOptionMenuGetHistory <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkOptionMenu")

	w <- .RGtkCall("S_gtk_option_menu_get_history", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkOptionMenuSetHistory <-
function(object, index, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkOptionMenu")
	index <- as.numeric(index)

	w <- .RGtkCall("S_gtk_option_menu_set_history", object, index, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkPanedGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_paned_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkPanedAdd1 <-
function(object, child, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkPaned")
	checkPtrType(child, "GtkWidget")

	w <- .RGtkCall("S_gtk_paned_add1", object, child, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkPanedAdd2 <-
function(object, child, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkPaned")
	checkPtrType(child, "GtkWidget")

	w <- .RGtkCall("S_gtk_paned_add2", object, child, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkPanedPack1 <-
function(object, child, resize = "FALSE", shrink = "TRUE", .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkPaned")
	checkPtrType(child, "GtkWidget")
	resize <- as.logical(resize)
	shrink <- as.logical(shrink)

	w <- .RGtkCall("S_gtk_paned_pack1", object, child, resize, shrink, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkPanedPack2 <-
function(object, child, resize = "TRUE", shrink = "TRUE", .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkPaned")
	checkPtrType(child, "GtkWidget")
	resize <- as.logical(resize)
	shrink <- as.logical(shrink)

	w <- .RGtkCall("S_gtk_paned_pack2", object, child, resize, shrink, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkPanedGetPosition <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkPaned")

	w <- .RGtkCall("S_gtk_paned_get_position", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkPanedSetPosition <-
function(object, position, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkPaned")
	position <- as.integer(position)

	w <- .RGtkCall("S_gtk_paned_set_position", object, position, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkPanedGetChild1 <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkPaned")

	w <- .RGtkCall("S_gtk_paned_get_child1", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkPanedGetChild2 <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkPaned")

	w <- .RGtkCall("S_gtk_paned_get_child2", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkPanedComputePosition <-
function(object, allocation, child1.req, child2.req, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkPaned")
	allocation <- as.integer(allocation)
	child1.req <- as.integer(child1.req)
	child2.req <- as.integer(child2.req)

	w <- .RGtkCall("S_gtk_paned_compute_position", object, allocation, child1.req, child2.req, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkPixmapGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_pixmap_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkPixmapNew <-
function(pixmap, mask = NULL, show = TRUE, .flush = TRUE, .depwarn = TRUE)
{
	if (.depwarn)
		warning("This function is deprecated: use GtkImage")

	checkPtrType(pixmap, "GdkPixmap")
	if (!is.null( mask )) checkPtrType(mask, "GdkBitmap")

	w <- .RGtkCall("S_gtk_pixmap_new", pixmap, mask, PACKAGE = "RGtk2", .flush = .flush)

	if(show)
		gtkWidgetShowAll(w)

	return(w)
} 


gtkPixmapSet <-
function(object, val, mask = NULL, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkPixmap")
	checkPtrType(val, "GdkPixmap")
	if (!is.null( mask )) checkPtrType(mask, "GdkBitmap")

	w <- .RGtkCall("S_gtk_pixmap_set", object, val, mask, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkPixmapGet <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkPixmap")

	w <- .RGtkCall("S_gtk_pixmap_get", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkPixmapSetBuildInsensitive <-
function(object, build, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkPixmap")
	build <- as.logical(build)

	w <- .RGtkCall("S_gtk_pixmap_set_build_insensitive", object, build, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkPlugGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_plug_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkPlugConstruct <-
function(object, socket.id, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkPlug")
	socket.id <- as.GdkNativeWindow(socket.id)

	w <- .RGtkCall("S_gtk_plug_construct", object, socket.id, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkPlugNew <-
function(socket.id, show = TRUE, .flush = TRUE, .depwarn = TRUE)
{
	socket.id <- as.GdkNativeWindow(socket.id)

	w <- .RGtkCall("S_gtk_plug_new", socket.id, PACKAGE = "RGtk2", .flush = .flush)

	if(show)
		gtkWidgetShowAll(w)

	return(w)
} 


gtkPlugConstructForDisplay <-
function(object, display, socket.id, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkPlug")
	checkPtrType(display, "GdkDisplay")
	socket.id <- as.GdkNativeWindow(socket.id)

	w <- .RGtkCall("S_gtk_plug_construct_for_display", object, display, socket.id, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkPlugNewForDisplay <-
function(display, socket.id, .flush = TRUE, .depwarn = TRUE)
{
	if (.depwarn)
		warning("This function is deprecated: use gtk.Plug(socket_id, display)")

	checkPtrType(display, "GdkDisplay")
	socket.id <- as.GdkNativeWindow(socket.id)

	w <- .RGtkCall("S_gtk_plug_new_for_display", display, socket.id, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkPlugGetId <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkPlug")

	w <- .RGtkCall("S_gtk_plug_get_id", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkPreviewGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_preview_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkPreviewUninit <-
function(.flush = TRUE, .depwarn = TRUE)
{
	if (.depwarn)
		warning("This function is deprecated: use GtkPixbuf")

	

	w <- .RGtkCall("S_gtk_preview_uninit", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkPreviewNew <-
function(type, show = TRUE, .flush = TRUE, .depwarn = TRUE)
{
	if (.depwarn)
		warning("This function is deprecated: use GtkDrawingArea")

	

	w <- .RGtkCall("S_gtk_preview_new", type, PACKAGE = "RGtk2", .flush = .flush)

	if(show)
		gtkWidgetShowAll(w)

	return(w)
} 


gtkPreviewSize <-
function(object, width, height, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkPreview")
	width <- as.integer(width)
	height <- as.integer(height)

	w <- .RGtkCall("S_gtk_preview_size", object, width, height, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkPreviewPut <-
function(object, window, gc, srcx, srcy, destx, desty, width, height, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkPreview")
	checkPtrType(window, "GdkWindow")
	checkPtrType(gc, "GdkGC")
	srcx <- as.integer(srcx)
	srcy <- as.integer(srcy)
	destx <- as.integer(destx)
	desty <- as.integer(desty)
	width <- as.integer(width)
	height <- as.integer(height)

	w <- .RGtkCall("S_gtk_preview_put", object, window, gc, srcx, srcy, destx, desty, width, height, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkPreviewDrawRow <-
function(object, data, y, w, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkPreview")
	data <- as.list(as.integer(data))
	y <- as.integer(y)
	w <- as.integer(w)

	w <- .RGtkCall("S_gtk_preview_draw_row", object, data, y, w, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkPreviewSetExpand <-
function(object, expand, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkPreview")
	expand <- as.logical(expand)

	w <- .RGtkCall("S_gtk_preview_set_expand", object, expand, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkPreviewSetGamma <-
function(gamma, .flush = TRUE, .depwarn = TRUE)
{
	if (.depwarn)
		warning("This function is deprecated: use GtkPixbuf")

	gamma <- as.numeric(gamma)

	w <- .RGtkCall("S_gtk_preview_set_gamma", gamma, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkPreviewSetColorCube <-
function(nred.shades, ngreen.shades, nblue.shades, ngray.shades, .flush = TRUE, .depwarn = TRUE)
{
	if (.depwarn)
		warning("This function is deprecated: use GtkPixbuf")

	nred.shades <- as.numeric(nred.shades)
	ngreen.shades <- as.numeric(ngreen.shades)
	nblue.shades <- as.numeric(nblue.shades)
	ngray.shades <- as.numeric(ngray.shades)

	w <- .RGtkCall("S_gtk_preview_set_color_cube", nred.shades, ngreen.shades, nblue.shades, ngray.shades, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkPreviewSetInstallCmap <-
function(install.cmap, .flush = TRUE, .depwarn = TRUE)
{
	if (.depwarn)
		warning("This function is deprecated: use GtkPixbuf")

	install.cmap <- as.integer(install.cmap)

	w <- .RGtkCall("S_gtk_preview_set_install_cmap", install.cmap, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkPreviewSetReserved <-
function(nreserved, .flush = TRUE, .depwarn = TRUE)
{
	if (.depwarn)
		warning("This function is deprecated: use GtkPixbuf")

	nreserved <- as.integer(nreserved)

	w <- .RGtkCall("S_gtk_preview_set_reserved", nreserved, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkPreviewSetDither <-
function(object, dither, .flush = TRUE, .depwarn = TRUE)
{
	if (.depwarn)
		warning("This function is deprecated: use GtkPixbuf")

	checkPtrType(object, "GtkPreview")
	

	w <- .RGtkCall("S_gtk_preview_set_dither", object, dither, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkPreviewGetVisual <-
function(.flush = TRUE, .depwarn = TRUE)
{
	if (.depwarn)
		warning("This function is deprecated: use GtkPixbuf")

	

	w <- .RGtkCall("S_gtk_preview_get_visual", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkPreviewGetCmap <-
function(.flush = TRUE, .depwarn = TRUE)
{
	if (.depwarn)
		warning("This function is deprecated: use GtkPixbuf")

	

	w <- .RGtkCall("S_gtk_preview_get_cmap", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkPreviewGetInfo <-
function(.flush = TRUE, .depwarn = TRUE)
{
	if (.depwarn)
		warning("This function is deprecated: use GtkPixbuf")

	

	w <- .RGtkCall("S_gtk_preview_get_info", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkPreviewReset <-
function(.flush = TRUE, .depwarn = TRUE)
{
	if (.depwarn)
		warning("This function is deprecated: use GtkPixbuf")

	

	w <- .RGtkCall("S_gtk_preview_reset", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkProgressGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_progress_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkProgressSetShowText <-
function(object, show.text, .flush = TRUE, .depwarn = TRUE)
{
	if (.depwarn)
		warning("This function is deprecated: gtk.Progress.set_show_text is deprecated, use gtk.ProgressBar methods")

	checkPtrType(object, "GtkProgress")
	show.text <- as.logical(show.text)

	w <- .RGtkCall("S_gtk_progress_set_show_text", object, show.text, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkProgressSetTextAlignment <-
function(object, x.align, y.align, .flush = TRUE, .depwarn = TRUE)
{
	if (.depwarn)
		warning("This function is deprecated: gtk.Progress.set_text_alignment is deprecated, use gtk.ProgressBar methods")

	checkPtrType(object, "GtkProgress")
	x.align <- as.numeric(x.align)
	y.align <- as.numeric(y.align)

	w <- .RGtkCall("S_gtk_progress_set_text_alignment", object, x.align, y.align, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkProgressSetFormatString <-
function(object, format, .flush = TRUE, .depwarn = TRUE)
{
	if (.depwarn)
		warning("This function is deprecated: gtk.Progress.set_format_string is deprecated, use gtk.ProgressBar methods")

	checkPtrType(object, "GtkProgress")
	format <- as.character(format)

	w <- .RGtkCall("S_gtk_progress_set_format_string", object, format, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkProgressSetAdjustment <-
function(object, adjustment, .flush = TRUE, .depwarn = TRUE)
{
	if (.depwarn)
		warning("This function is deprecated: gtk.Progress.set_adjustment is deprecated, use gtk.ProgressBar methods")

	checkPtrType(object, "GtkProgress")
	checkPtrType(adjustment, "GtkAdjustment")

	w <- .RGtkCall("S_gtk_progress_set_adjustment", object, adjustment, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkProgressConfigure <-
function(object, value, min, max, .flush = TRUE, .depwarn = TRUE)
{
	if (.depwarn)
		warning("This function is deprecated: gtk.Progress.configure is deprecated, use gtk.ProgressBar methods")

	checkPtrType(object, "GtkProgress")
	value <- as.numeric(value)
	min <- as.numeric(min)
	max <- as.numeric(max)

	w <- .RGtkCall("S_gtk_progress_configure", object, value, min, max, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkProgressSetPercentage <-
function(object, percentage, .flush = TRUE, .depwarn = TRUE)
{
	if (.depwarn)
		warning("This function is deprecated: gtk.Progress.set_percentage is deprecated, use gtk.ProgressBar methods")

	checkPtrType(object, "GtkProgress")
	percentage <- as.numeric(percentage)

	w <- .RGtkCall("S_gtk_progress_set_percentage", object, percentage, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkProgressSetValue <-
function(object, value, .flush = TRUE, .depwarn = TRUE)
{
	if (.depwarn)
		warning("This function is deprecated: gtk.Progress.set_value is deprecated, use gtk.ProgressBar methods")

	checkPtrType(object, "GtkProgress")
	value <- as.numeric(value)

	w <- .RGtkCall("S_gtk_progress_set_value", object, value, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkProgressGetValue <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	if (.depwarn)
		warning("This function is deprecated: gtk.Progress.get_value is deprecated, use gtk.ProgressBar methods")

	checkPtrType(object, "GtkProgress")

	w <- .RGtkCall("S_gtk_progress_get_value", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkProgressSetActivityMode <-
function(object, activity.mode, .flush = TRUE, .depwarn = TRUE)
{
	if (.depwarn)
		warning("This function is deprecated: gtk.Progress.set_activity_mode is deprecated, use gtk.ProgressBar methods")

	checkPtrType(object, "GtkProgress")
	activity.mode <- as.logical(activity.mode)

	w <- .RGtkCall("S_gtk_progress_set_activity_mode", object, activity.mode, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkProgressGetCurrentText <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	if (.depwarn)
		warning("This function is deprecated: gtk.Progress.get_current_text is deprecated, use gtk.ProgressBar methods")

	checkPtrType(object, "GtkProgress")

	w <- .RGtkCall("S_gtk_progress_get_current_text", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkProgressGetTextFromValue <-
function(object, value, .flush = TRUE, .depwarn = TRUE)
{
	if (.depwarn)
		warning("This function is deprecated: gtk.Progress.get_text_from_value is deprecated, use gtk.ProgressBar methods")

	checkPtrType(object, "GtkProgress")
	value <- as.numeric(value)

	w <- .RGtkCall("S_gtk_progress_get_text_from_value", object, value, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkProgressGetCurrentPercentage <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	if (.depwarn)
		warning("This function is deprecated: gtk.Progress.get_current_percentage is deprecated, use gtk.ProgressBar methods")

	checkPtrType(object, "GtkProgress")

	w <- .RGtkCall("S_gtk_progress_get_current_percentage", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkProgressGetPercentageFromValue <-
function(object, value, .flush = TRUE, .depwarn = TRUE)
{
	if (.depwarn)
		warning("This function is deprecated: gtk.Progress.get_percentage_from_value is deprecated, use gtk.ProgressBar methods")

	checkPtrType(object, "GtkProgress")
	value <- as.numeric(value)

	w <- .RGtkCall("S_gtk_progress_get_percentage_from_value", object, value, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkProgressBarGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_progress_bar_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkProgressBarNew <-
function(show = TRUE, .flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_progress_bar_new", PACKAGE = "RGtk2", .flush = .flush)

	if(show)
		gtkWidgetShowAll(w)

	return(w)
} 


gtkProgressBarPulse <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkProgressBar")

	w <- .RGtkCall("S_gtk_progress_bar_pulse", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkProgressBarSetText <-
function(object, text, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkProgressBar")
	text <- as.character(text)

	w <- .RGtkCall("S_gtk_progress_bar_set_text", object, text, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkProgressBarSetFraction <-
function(object, fraction, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkProgressBar")
	fraction <- as.numeric(fraction)

	w <- .RGtkCall("S_gtk_progress_bar_set_fraction", object, fraction, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkProgressBarSetPulseStep <-
function(object, fraction, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkProgressBar")
	fraction <- as.numeric(fraction)

	w <- .RGtkCall("S_gtk_progress_bar_set_pulse_step", object, fraction, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkProgressBarSetOrientation <-
function(object, orientation, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkProgressBar")
	

	w <- .RGtkCall("S_gtk_progress_bar_set_orientation", object, orientation, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkProgressBarGetText <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkProgressBar")

	w <- .RGtkCall("S_gtk_progress_bar_get_text", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkProgressBarGetFraction <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkProgressBar")

	w <- .RGtkCall("S_gtk_progress_bar_get_fraction", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkProgressBarGetPulseStep <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkProgressBar")

	w <- .RGtkCall("S_gtk_progress_bar_get_pulse_step", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkProgressBarGetOrientation <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkProgressBar")

	w <- .RGtkCall("S_gtk_progress_bar_get_orientation", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkProgressBarNewWithAdjustment <-
function(adjustment = "NULL", show = TRUE, .flush = TRUE, .depwarn = TRUE)
{
	if (!is.null( adjustment )) checkPtrType(adjustment, "GtkAdjustment")

	w <- .RGtkCall("S_gtk_progress_bar_new_with_adjustment", adjustment, PACKAGE = "RGtk2", .flush = .flush)

	if(show)
		gtkWidgetShowAll(w)

	return(w)
} 


gtkProgressBarSetBarStyle <-
function(object, style, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkProgressBar")
	

	w <- .RGtkCall("S_gtk_progress_bar_set_bar_style", object, style, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkProgressBarSetDiscreteBlocks <-
function(object, blocks, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkProgressBar")
	blocks <- as.numeric(blocks)

	w <- .RGtkCall("S_gtk_progress_bar_set_discrete_blocks", object, blocks, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkProgressBarSetActivityStep <-
function(object, step, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkProgressBar")
	step <- as.numeric(step)

	w <- .RGtkCall("S_gtk_progress_bar_set_activity_step", object, step, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkProgressBarSetActivityBlocks <-
function(object, blocks, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkProgressBar")
	blocks <- as.numeric(blocks)

	w <- .RGtkCall("S_gtk_progress_bar_set_activity_blocks", object, blocks, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkProgressBarUpdate <-
function(object, percentage, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkProgressBar")
	percentage <- as.numeric(percentage)

	w <- .RGtkCall("S_gtk_progress_bar_update", object, percentage, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkProgressBarSetEllipsize <-
function(object, mode, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkProgressBar")
	

	w <- .RGtkCall("S_gtk_progress_bar_set_ellipsize", object, mode, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkProgressBarGetEllipsize <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkProgressBar")

	w <- .RGtkCall("S_gtk_progress_bar_get_ellipsize", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkRadioActionGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_radio_action_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkRadioActionNew <-
function(name = NULL, label = NULL, tooltip = NULL, stock.id = NULL, value = NULL, .flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_radio_action_new", name, label, tooltip, stock.id, value, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkRadioActionSetGroup <-
function(object, group, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkRadioAction")
	group <- as.GSList(group)

	w <- .RGtkCall("S_gtk_radio_action_set_group", object, group, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkRadioActionGetGroup <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkRadioAction")

	w <- .RGtkCall("S_gtk_radio_action_get_group", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkRadioActionGetCurrentValue <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkRadioAction")

	w <- .RGtkCall("S_gtk_radio_action_get_current_value", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkRadioButtonGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_radio_button_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkRadioButtonNew <-
function(group = NULL, show = TRUE, .flush = TRUE, .depwarn = TRUE)
{
	if (!is.null( group )) group <- as.GSList(group)

	w <- .RGtkCall("S_gtk_radio_button_new", group, PACKAGE = "RGtk2", .flush = .flush)

	if(show)
		gtkWidgetShowAll(w)

	return(w)
} 


gtkRadioButtonNewFromWidget <-
function(group, show = TRUE, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(group, "GtkRadioButton")

	w <- .RGtkCall("S_gtk_radio_button_new_from_widget", group, PACKAGE = "RGtk2", .flush = .flush)

	if(show)
		gtkWidgetShowAll(w)

	return(w)
} 


gtkRadioButtonNewWithLabel <-
function(group = NULL, label, show = TRUE, .flush = TRUE, .depwarn = TRUE)
{
	if (!is.null( group )) group <- as.GSList(group)
	label <- as.character(label)

	w <- .RGtkCall("S_gtk_radio_button_new_with_label", group, label, PACKAGE = "RGtk2", .flush = .flush)

	if(show)
		gtkWidgetShowAll(w)

	return(w)
} 


gtkRadioButtonNewWithLabelFromWidget <-
function(group, label, show = TRUE, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(group, "GtkRadioButton")
	label <- as.character(label)

	w <- .RGtkCall("S_gtk_radio_button_new_with_label_from_widget", group, label, PACKAGE = "RGtk2", .flush = .flush)

	if(show)
		gtkWidgetShowAll(w)

	return(w)
} 


gtkRadioButtonNewWithMnemonic <-
function(group, label, show = TRUE, .flush = TRUE, .depwarn = TRUE)
{
	group <- as.GSList(group)
	label <- as.character(label)

	w <- .RGtkCall("S_gtk_radio_button_new_with_mnemonic", group, label, PACKAGE = "RGtk2", .flush = .flush)

	if(show)
		gtkWidgetShowAll(w)

	return(w)
} 


gtkRadioButtonNewWithMnemonicFromWidget <-
function(group, label, show = TRUE, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(group, "GtkRadioButton")
	label <- as.character(label)

	w <- .RGtkCall("S_gtk_radio_button_new_with_mnemonic_from_widget", group, label, PACKAGE = "RGtk2", .flush = .flush)

	if(show)
		gtkWidgetShowAll(w)

	return(w)
} 


gtkRadioButtonGetGroup <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkRadioButton")

	w <- .RGtkCall("S_gtk_radio_button_get_group", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkRadioButtonSetGroup <-
function(object, group, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkRadioButton")
	group <- as.GSList(group)

	w <- .RGtkCall("S_gtk_radio_button_set_group", object, group, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkRadioButtonGroup <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	if (.depwarn)
		warning("This function is deprecated: use GtkRadioButton.get_group")

	checkPtrType(object, "GtkRadioButton")

	w <- .RGtkCall("S_gtk_radio_button_group", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkRadioMenuItemGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_radio_menu_item_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkRadioMenuItemNew <-
function(group, show = TRUE, .flush = TRUE, .depwarn = TRUE)
{
	group <- as.GSList(group)

	w <- .RGtkCall("S_gtk_radio_menu_item_new", group, PACKAGE = "RGtk2", .flush = .flush)

	if(show)
		gtkWidgetShowAll(w)

	return(w)
} 


gtkRadioMenuItemNewWithLabel <-
function(group, label, show = TRUE, .flush = TRUE, .depwarn = TRUE)
{
	group <- as.GSList(group)
	label <- as.character(label)

	w <- .RGtkCall("S_gtk_radio_menu_item_new_with_label", group, label, PACKAGE = "RGtk2", .flush = .flush)

	if(show)
		gtkWidgetShowAll(w)

	return(w)
} 


gtkRadioMenuItemNewWithMnemonic <-
function(group, label, show = TRUE, .flush = TRUE, .depwarn = TRUE)
{
	group <- as.GSList(group)
	label <- as.character(label)

	w <- .RGtkCall("S_gtk_radio_menu_item_new_with_mnemonic", group, label, PACKAGE = "RGtk2", .flush = .flush)

	if(show)
		gtkWidgetShowAll(w)

	return(w)
} 


gtkRadioMenuItemNewFromWidget <-
function(group, show = TRUE, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(group, "GtkRadioMenuItem")

	w <- .RGtkCall("S_gtk_radio_menu_item_new_from_widget", group, PACKAGE = "RGtk2", .flush = .flush)

	if(show)
		gtkWidgetShowAll(w)

	return(w)
} 


gtkRadioMenuItemNewWithMnemonicFromWidget <-
function(group, label, show = TRUE, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(group, "GtkRadioMenuItem")
	label <- as.character(label)

	w <- .RGtkCall("S_gtk_radio_menu_item_new_with_mnemonic_from_widget", group, label, PACKAGE = "RGtk2", .flush = .flush)

	if(show)
		gtkWidgetShowAll(w)

	return(w)
} 


gtkRadioMenuItemNewWithLabelFromWidget <-
function(group, label, show = TRUE, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(group, "GtkRadioMenuItem")
	label <- as.character(label)

	w <- .RGtkCall("S_gtk_radio_menu_item_new_with_label_from_widget", group, label, PACKAGE = "RGtk2", .flush = .flush)

	if(show)
		gtkWidgetShowAll(w)

	return(w)
} 


gtkRadioMenuItemGetGroup <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkRadioMenuItem")

	w <- .RGtkCall("S_gtk_radio_menu_item_get_group", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkRadioMenuItemSetGroup <-
function(object, group, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkRadioMenuItem")
	group <- as.GSList(group)

	w <- .RGtkCall("S_gtk_radio_menu_item_set_group", object, group, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkRadioMenuItemGroup <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	if (.depwarn)
		warning("This function is deprecated: use GtkRadioMenuItem.get_group")

	checkPtrType(object, "GtkRadioMenuItem")

	w <- .RGtkCall("S_gtk_radio_menu_item_group", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkRadioToolButtonGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_radio_tool_button_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkRadioToolButtonNew <-
function(group, show = TRUE, .flush = TRUE, .depwarn = TRUE)
{
	group <- as.GSList(group)

	w <- .RGtkCall("S_gtk_radio_tool_button_new", group, PACKAGE = "RGtk2", .flush = .flush)

	if(show)
		gtkWidgetShowAll(w)

	return(w)
} 


gtkRadioToolButtonNewFromStock <-
function(group, stock.id, show = TRUE, .flush = TRUE, .depwarn = TRUE)
{
	group <- as.GSList(group)
	stock.id <- as.character(stock.id)

	w <- .RGtkCall("S_gtk_radio_tool_button_new_from_stock", group, stock.id, PACKAGE = "RGtk2", .flush = .flush)

	if(show)
		gtkWidgetShowAll(w)

	return(w)
} 


gtkRadioToolButtonNewFromWidget <-
function(group, show = TRUE, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(group, "GtkRadioToolButton")

	w <- .RGtkCall("S_gtk_radio_tool_button_new_from_widget", group, PACKAGE = "RGtk2", .flush = .flush)

	if(show)
		gtkWidgetShowAll(w)

	return(w)
} 


gtkRadioToolButtonNewWithStockFromWidget <-
function(group, stock.id, show = TRUE, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(group, "GtkRadioToolButton")
	stock.id <- as.character(stock.id)

	w <- .RGtkCall("S_gtk_radio_tool_button_new_with_stock_from_widget", group, stock.id, PACKAGE = "RGtk2", .flush = .flush)

	if(show)
		gtkWidgetShowAll(w)

	return(w)
} 


gtkRadioToolButtonSetGroup <-
function(object, group, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkRadioToolButton")
	group <- as.GSList(group)

	w <- .RGtkCall("S_gtk_radio_tool_button_set_group", object, group, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkRadioToolButtonGetGroup <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkRadioToolButton")

	w <- .RGtkCall("S_gtk_radio_tool_button_get_group", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkRangeGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_range_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkRangeSetUpdatePolicy <-
function(object, policy, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkRange")
	

	w <- .RGtkCall("S_gtk_range_set_update_policy", object, policy, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkRangeGetUpdatePolicy <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkRange")

	w <- .RGtkCall("S_gtk_range_get_update_policy", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkRangeSetAdjustment <-
function(object, adjustment, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkRange")
	checkPtrType(adjustment, "GtkAdjustment")

	w <- .RGtkCall("S_gtk_range_set_adjustment", object, adjustment, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkRangeGetAdjustment <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkRange")

	w <- .RGtkCall("S_gtk_range_get_adjustment", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkRangeSetInverted <-
function(object, setting, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkRange")
	setting <- as.logical(setting)

	w <- .RGtkCall("S_gtk_range_set_inverted", object, setting, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkRangeGetInverted <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkRange")

	w <- .RGtkCall("S_gtk_range_get_inverted", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkRangeSetIncrements <-
function(object, step, page, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkRange")
	step <- as.numeric(step)
	page <- as.numeric(page)

	w <- .RGtkCall("S_gtk_range_set_increments", object, step, page, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkRangeSetRange <-
function(object, min, max, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkRange")
	min <- as.numeric(min)
	max <- as.numeric(max)

	w <- .RGtkCall("S_gtk_range_set_range", object, min, max, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkRangeSetValue <-
function(object, value, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkRange")
	value <- as.numeric(value)

	w <- .RGtkCall("S_gtk_range_set_value", object, value, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkRangeGetValue <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkRange")

	w <- .RGtkCall("S_gtk_range_get_value", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkRcAddDefaultFile <-
function(filename, .flush = TRUE, .depwarn = TRUE)
{
	filename <- as.character(filename)

	w <- .RGtkCall("S_gtk_rc_add_default_file", filename, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkRcSetDefaultFiles <-
function(filenames, .flush = TRUE, .depwarn = TRUE)
{
	filenames <- as.list(as.character(filenames))

	w <- .RGtkCall("S_gtk_rc_set_default_files", filenames, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkRcGetDefaultFiles <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_rc_get_default_files", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkRcGetStyle <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWidget")

	w <- .RGtkCall("S_gtk_rc_get_style", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkRcGetStyleByPaths <-
function(settings, widget.path, class.path, type, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(settings, "GtkSettings")
	widget.path <- as.character(widget.path)
	class.path <- as.character(class.path)
	type <- as.GType(type)

	w <- .RGtkCall("S_gtk_rc_get_style_by_paths", settings, widget.path, class.path, type, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkRcReparseAllForSettings <-
function(settings, force.load, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(settings, "GtkSettings")
	force.load <- as.logical(force.load)

	w <- .RGtkCall("S_gtk_rc_reparse_all_for_settings", settings, force.load, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkRcResetStyles <-
function(settings, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(settings, "GtkSettings")

	w <- .RGtkCall("S_gtk_rc_reset_styles", settings, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkRcFindPixmapInPath <-
function(settings, scanner = NULL, pixmap.file, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(settings, "GtkSettings")
	if (!is.null( scanner )) checkPtrType(scanner, "GScanner")
	pixmap.file <- as.character(pixmap.file)

	w <- .RGtkCall("S_gtk_rc_find_pixmap_in_path", settings, scanner, pixmap.file, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkRcParse <-
function(filename, .flush = TRUE, .depwarn = TRUE)
{
	filename <- as.character(filename)

	w <- .RGtkCall("S_gtk_rc_parse", filename, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkRcParseString <-
function(rc.string, .flush = TRUE, .depwarn = TRUE)
{
	rc.string <- as.character(rc.string)

	w <- .RGtkCall("S_gtk_rc_parse_string", rc.string, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkRcReparseAll <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_rc_reparse_all", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkRcAddWidgetNameStyle <-
function(object, pattern, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkRcStyle")
	pattern <- as.character(pattern)

	w <- .RGtkCall("S_gtk_rc_add_widget_name_style", object, pattern, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkRcAddWidgetClassStyle <-
function(object, pattern, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkRcStyle")
	pattern <- as.character(pattern)

	w <- .RGtkCall("S_gtk_rc_add_widget_class_style", object, pattern, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkRcAddClassStyle <-
function(object, pattern, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkRcStyle")
	pattern <- as.character(pattern)

	w <- .RGtkCall("S_gtk_rc_add_class_style", object, pattern, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkRcStyleGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_rc_style_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkRcStyleNew <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_rc_style_new", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkRcStyleCopy <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkRcStyle")

	w <- .RGtkCall("S_gtk_rc_style_copy", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkRcStyleRef <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkRcStyle")

	w <- .RGtkCall("S_gtk_rc_style_ref", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkRcStyleUnref <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkRcStyle")

	w <- .RGtkCall("S_gtk_rc_style_unref", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkRcFindModuleInPath <-
function(module.file, .flush = TRUE, .depwarn = TRUE)
{
	module.file <- as.character(module.file)

	w <- .RGtkCall("S_gtk_rc_find_module_in_path", module.file, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkRcGetThemeDir <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_rc_get_theme_dir", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkRcGetModuleDir <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_rc_get_module_dir", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkRcGetImModulePath <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_rc_get_im_module_path", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkRcGetImModuleFile <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_rc_get_im_module_file", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkRcScannerNew <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_rc_scanner_new", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkRcParseColor <-
function(scanner, color, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(scanner, "GScanner")
	color <- as.GdkColor(color)

	w <- .RGtkCall("S_gtk_rc_parse_color", scanner, color, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkRcParseState <-
function(scanner, state, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(scanner, "GScanner")
	

	w <- .RGtkCall("S_gtk_rc_parse_state", scanner, state, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkRcParsePriority <-
function(scanner, priority, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(scanner, "GScanner")
	

	w <- .RGtkCall("S_gtk_rc_parse_priority", scanner, priority, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkRulerGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_ruler_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkRulerSetMetric <-
function(object, metric, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkRuler")
	

	w <- .RGtkCall("S_gtk_ruler_set_metric", object, metric, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkRulerSetRange <-
function(object, lower, upper, position, max.size, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkRuler")
	lower <- as.numeric(lower)
	upper <- as.numeric(upper)
	position <- as.numeric(position)
	max.size <- as.numeric(max.size)

	w <- .RGtkCall("S_gtk_ruler_set_range", object, lower, upper, position, max.size, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkRulerDrawTicks <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkRuler")

	w <- .RGtkCall("S_gtk_ruler_draw_ticks", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkRulerDrawPos <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkRuler")

	w <- .RGtkCall("S_gtk_ruler_draw_pos", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkRulerGetMetric <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkRuler")

	w <- .RGtkCall("S_gtk_ruler_get_metric", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkRulerGetRange <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkRuler")

	w <- .RGtkCall("S_gtk_ruler_get_range", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkScaleGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_scale_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkScaleSetDigits <-
function(object, digits, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkScale")
	digits <- as.integer(digits)

	w <- .RGtkCall("S_gtk_scale_set_digits", object, digits, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkScaleGetDigits <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkScale")

	w <- .RGtkCall("S_gtk_scale_get_digits", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkScaleSetDrawValue <-
function(object, draw.value, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkScale")
	draw.value <- as.logical(draw.value)

	w <- .RGtkCall("S_gtk_scale_set_draw_value", object, draw.value, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkScaleGetDrawValue <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkScale")

	w <- .RGtkCall("S_gtk_scale_get_draw_value", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkScaleSetValuePos <-
function(object, pos, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkScale")
	

	w <- .RGtkCall("S_gtk_scale_set_value_pos", object, pos, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkScaleGetValuePos <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkScale")

	w <- .RGtkCall("S_gtk_scale_get_value_pos", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkScaleGetLayout <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkScale")

	w <- .RGtkCall("S_gtk_scale_get_layout", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkScaleGetLayoutOffsets <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkScale")

	w <- .RGtkCall("S_gtk_scale_get_layout_offsets", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkScrollbarGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_scrollbar_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkScrolledWindowGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_scrolled_window_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkScrolledWindowNew <-
function(hadjustment = NULL, vadjustment = NULL, show = TRUE, .flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_scrolled_window_new", hadjustment, vadjustment, PACKAGE = "RGtk2", .flush = .flush)

	if(show)
		gtkWidgetShowAll(w)

	return(w)
} 


gtkScrolledWindowSetHadjustment <-
function(object, hadjustment, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkScrolledWindow")
	checkPtrType(hadjustment, "GtkAdjustment")

	w <- .RGtkCall("S_gtk_scrolled_window_set_hadjustment", object, hadjustment, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkScrolledWindowSetVadjustment <-
function(object, hadjustment, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkScrolledWindow")
	checkPtrType(hadjustment, "GtkAdjustment")

	w <- .RGtkCall("S_gtk_scrolled_window_set_vadjustment", object, hadjustment, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkScrolledWindowGetHadjustment <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkScrolledWindow")

	w <- .RGtkCall("S_gtk_scrolled_window_get_hadjustment", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkScrolledWindowGetVadjustment <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkScrolledWindow")

	w <- .RGtkCall("S_gtk_scrolled_window_get_vadjustment", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkScrolledWindowGetHscrollbar <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkScrolledWindow")

	w <- .RGtkCall("S_gtk_scrolled_window_get_hscrollbar", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkScrolledWindowGetVscrollbar <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkScrolledWindow")

	w <- .RGtkCall("S_gtk_scrolled_window_get_vscrollbar", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkScrolledWindowSetPolicy <-
function(object, hscrollbar.policy, vscrollbar.policy, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkScrolledWindow")
	
	

	w <- .RGtkCall("S_gtk_scrolled_window_set_policy", object, hscrollbar.policy, vscrollbar.policy, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkScrolledWindowGetPolicy <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkScrolledWindow")

	w <- .RGtkCall("S_gtk_scrolled_window_get_policy", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkScrolledWindowSetPlacement <-
function(object, window.placement, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkScrolledWindow")
	

	w <- .RGtkCall("S_gtk_scrolled_window_set_placement", object, window.placement, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkScrolledWindowGetPlacement <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkScrolledWindow")

	w <- .RGtkCall("S_gtk_scrolled_window_get_placement", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkScrolledWindowSetShadowType <-
function(object, type, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkScrolledWindow")
	

	w <- .RGtkCall("S_gtk_scrolled_window_set_shadow_type", object, type, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkScrolledWindowGetShadowType <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkScrolledWindow")

	w <- .RGtkCall("S_gtk_scrolled_window_get_shadow_type", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkScrolledWindowAddWithViewport <-
function(object, child, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkScrolledWindow")
	checkPtrType(child, "GtkWidget")

	w <- .RGtkCall("S_gtk_scrolled_window_add_with_viewport", object, child, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTargetListNew <-
function(targets, .flush = TRUE, .depwarn = TRUE)
{
	targets <- lapply(targets, function(x) { x <- as.GtkTargetEntry(x); x })

	w <- .RGtkCall("S_gtk_target_list_new", targets, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTargetListRef <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTargetList")

	w <- .RGtkCall("S_gtk_target_list_ref", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTargetListUnref <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTargetList")

	w <- .RGtkCall("S_gtk_target_list_unref", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTargetListAdd <-
function(object, target, flags, info, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTargetList")
	target <- as.GdkAtom(target)
	flags <- as.numeric(flags)
	info <- as.numeric(info)

	w <- .RGtkCall("S_gtk_target_list_add", object, target, flags, info, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTargetListAddTable <-
function(object, targets, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTargetList")
	targets <- lapply(targets, function(x) { x <- as.GtkTargetEntry(x); x })

	w <- .RGtkCall("S_gtk_target_list_add_table", object, targets, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTargetListRemove <-
function(object, target, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTargetList")
	target <- as.GdkAtom(target)

	w <- .RGtkCall("S_gtk_target_list_remove", object, target, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTargetListFind <-
function(object, target, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTargetList")
	target <- as.GdkAtom(target)

	w <- .RGtkCall("S_gtk_target_list_find", object, target, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkSelectionOwnerSet <-
function(object, selection, time = "GDK_CURRENT_TIME", .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWidget")
	selection <- as.GdkAtom(selection)
	time <- as.numeric(time)

	w <- .RGtkCall("S_gtk_selection_owner_set", object, selection, time, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkSelectionOwnerSetForDisplay <-
function(display, widget = NULL, selection, time = "GDK_CURRENT_TIME", .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(display, "GdkDisplay")
	if (!is.null( widget )) checkPtrType(widget, "GtkWidget")
	selection <- as.GdkAtom(selection)
	time <- as.numeric(time)

	w <- .RGtkCall("S_gtk_selection_owner_set_for_display", display, widget, selection, time, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkSelectionAddTarget <-
function(object, selection, target, info, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWidget")
	selection <- as.GdkAtom(selection)
	target <- as.GdkAtom(target)
	info <- as.numeric(info)

	w <- .RGtkCall("S_gtk_selection_add_target", object, selection, target, info, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkSelectionAddTargets <-
function(object, selection, targets, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWidget")
	selection <- as.GdkAtom(selection)
	targets <- lapply(targets, function(x) { x <- as.GtkTargetEntry(x); x })

	w <- .RGtkCall("S_gtk_selection_add_targets", object, selection, targets, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkSelectionClearTargets <-
function(object, selection, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWidget")
	selection <- as.GdkAtom(selection)

	w <- .RGtkCall("S_gtk_selection_clear_targets", object, selection, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkSelectionConvert <-
function(object, selection, target, time = "GDK_CURRENT_TIME", .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWidget")
	selection <- as.GdkAtom(selection)
	target <- as.GdkAtom(target)
	time <- as.numeric(time)

	w <- .RGtkCall("S_gtk_selection_convert", object, selection, target, time, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkSelectionDataSetText <-
function(object, str, len = "-1", .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkSelectionData")
	str <- as.character(str)
	len <- as.integer(len)

	w <- .RGtkCall("S_gtk_selection_data_set_text", object, str, len, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkSelectionDataGetText <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkSelectionData")

	w <- .RGtkCall("S_gtk_selection_data_get_text", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkSelectionDataGetTargets <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkSelectionData")

	w <- .RGtkCall("S_gtk_selection_data_get_targets", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkSelectionDataTargetsIncludeText <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkSelectionData")

	w <- .RGtkCall("S_gtk_selection_data_targets_include_text", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkSelectionRemoveAll <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWidget")

	w <- .RGtkCall("S_gtk_selection_remove_all", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkSelectionClear <-
function(object, event, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWidget")
	checkPtrType(event, "GdkEventSelection")

	w <- .RGtkCall("S_gtk_selection_clear", object, event, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkSelectionDataGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_selection_data_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkSelectionDataCopy <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkSelectionData")

	w <- .RGtkCall("S_gtk_selection_data_copy", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkSelectionDataFree <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkSelectionData")

	w <- .RGtkCall("S_gtk_selection_data_free", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkSelectionDataSetPixbuf <-
function(object, pixbuf, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkSelectionData")
	checkPtrType(pixbuf, "GdkPixbuf")

	w <- .RGtkCall("S_gtk_selection_data_set_pixbuf", object, pixbuf, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkSelectionDataGetPixbuf <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkSelectionData")

	w <- .RGtkCall("S_gtk_selection_data_get_pixbuf", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkSelectionDataSetUris <-
function(object, uris, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkSelectionData")
	uris <- as.list(as.character(uris))

	w <- .RGtkCall("S_gtk_selection_data_set_uris", object, uris, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkSelectionDataGetUris <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkSelectionData")

	w <- .RGtkCall("S_gtk_selection_data_get_uris", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkSelectionDataTargetsIncludeImage <-
function(object, writable, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkSelectionData")
	writable <- as.logical(writable)

	w <- .RGtkCall("S_gtk_selection_data_targets_include_image", object, writable, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkSeparatorGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_separator_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkSeparatorMenuItemGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_separator_menu_item_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkSeparatorMenuItemNew <-
function(show = TRUE, .flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_separator_menu_item_new", PACKAGE = "RGtk2", .flush = .flush)

	if(show)
		gtkWidgetShowAll(w)

	return(w)
} 


gtkSeparatorToolItemGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_separator_tool_item_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkSeparatorToolItemNew <-
function(show = TRUE, .flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_separator_tool_item_new", PACKAGE = "RGtk2", .flush = .flush)

	if(show)
		gtkWidgetShowAll(w)

	return(w)
} 


gtkSeparatorToolItemGetDraw <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkSeparatorToolItem")

	w <- .RGtkCall("S_gtk_separator_tool_item_get_draw", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkSeparatorToolItemSetDraw <-
function(object, draw, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkSeparatorToolItem")
	draw <- as.logical(draw)

	w <- .RGtkCall("S_gtk_separator_tool_item_set_draw", object, draw, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkSettingsGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_settings_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkSettingsGetDefault <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_settings_get_default", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkSettingsGetForScreen <-
function(screen, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(screen, "GdkScreen")

	w <- .RGtkCall("S_gtk_settings_get_for_screen", screen, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkSettingsInstallProperty <-
function(pspec, .flush = TRUE, .depwarn = TRUE)
{
	pspec <- as.GParamSpec(pspec)

	w <- .RGtkCall("S_gtk_settings_install_property", pspec, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkRcPropertyParseColor <-
function(pspec, gstring, .flush = TRUE, .depwarn = TRUE)
{
	pspec <- as.GParamSpec(pspec)
	gstring <- as.GString(gstring)

	w <- .RGtkCall("S_gtk_rc_property_parse_color", pspec, gstring, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkRcPropertyParseEnum <-
function(pspec, gstring, .flush = TRUE, .depwarn = TRUE)
{
	pspec <- as.GParamSpec(pspec)
	gstring <- as.GString(gstring)

	w <- .RGtkCall("S_gtk_rc_property_parse_enum", pspec, gstring, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkRcPropertyParseFlags <-
function(pspec, gstring, .flush = TRUE, .depwarn = TRUE)
{
	pspec <- as.GParamSpec(pspec)
	gstring <- as.GString(gstring)

	w <- .RGtkCall("S_gtk_rc_property_parse_flags", pspec, gstring, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkRcPropertyParseRequisition <-
function(pspec, gstring, .flush = TRUE, .depwarn = TRUE)
{
	pspec <- as.GParamSpec(pspec)
	gstring <- as.GString(gstring)

	w <- .RGtkCall("S_gtk_rc_property_parse_requisition", pspec, gstring, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkRcPropertyParseBorder <-
function(pspec, gstring, .flush = TRUE, .depwarn = TRUE)
{
	pspec <- as.GParamSpec(pspec)
	gstring <- as.GString(gstring)

	w <- .RGtkCall("S_gtk_rc_property_parse_border", pspec, gstring, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkSettingsSetPropertyValue <-
function(object, name, svalue, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkSettings")
	name <- as.character(name)
	svalue <- as.GtkSettingsValue(svalue)

	w <- .RGtkCall("S_gtk_settings_set_property_value", object, name, svalue, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkSettingsSetStringProperty <-
function(object, name, v.string, origin, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkSettings")
	name <- as.character(name)
	v.string <- as.character(v.string)
	origin <- as.character(origin)

	w <- .RGtkCall("S_gtk_settings_set_string_property", object, name, v.string, origin, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkSettingsSetLongProperty <-
function(object, name, v.long, origin, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkSettings")
	name <- as.character(name)
	v.long <- as.numeric(v.long)
	origin <- as.character(origin)

	w <- .RGtkCall("S_gtk_settings_set_long_property", object, name, v.long, origin, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkSettingsSetDoubleProperty <-
function(object, name, v.double, origin, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkSettings")
	name <- as.character(name)
	v.double <- as.numeric(v.double)
	origin <- as.character(origin)

	w <- .RGtkCall("S_gtk_settings_set_double_property", object, name, v.double, origin, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkSizeGroupGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_size_group_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkSizeGroupNew <-
function(mode = NULL, .flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_size_group_new", mode, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkSizeGroupSetMode <-
function(object, mode, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkSizeGroup")
	

	w <- .RGtkCall("S_gtk_size_group_set_mode", object, mode, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkSizeGroupGetMode <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkSizeGroup")

	w <- .RGtkCall("S_gtk_size_group_get_mode", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkSizeGroupSetIgnoreHidden <-
function(object, ignore.hidden, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkSizeGroup")
	ignore.hidden <- as.logical(ignore.hidden)

	w <- .RGtkCall("S_gtk_size_group_set_ignore_hidden", object, ignore.hidden, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkSizeGroupGetIgnoreHidden <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkSizeGroup")

	w <- .RGtkCall("S_gtk_size_group_get_ignore_hidden", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkSizeGroupAddWidget <-
function(object, widget, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkSizeGroup")
	checkPtrType(widget, "GtkWidget")

	w <- .RGtkCall("S_gtk_size_group_add_widget", object, widget, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkSizeGroupRemoveWidget <-
function(object, widget, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkSizeGroup")
	checkPtrType(widget, "GtkWidget")

	w <- .RGtkCall("S_gtk_size_group_remove_widget", object, widget, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkSocketGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_socket_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkSocketNew <-
function(show = TRUE, .flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_socket_new", PACKAGE = "RGtk2", .flush = .flush)

	if(show)
		gtkWidgetShowAll(w)

	return(w)
} 


gtkSocketAddId <-
function(object, window.id, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkSocket")
	window.id <- as.GdkNativeWindow(window.id)

	w <- .RGtkCall("S_gtk_socket_add_id", object, window.id, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkSocketGetId <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkSocket")

	w <- .RGtkCall("S_gtk_socket_get_id", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkSocketSteal <-
function(object, wid, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkSocket")
	wid <- as.GdkNativeWindow(wid)

	w <- .RGtkCall("S_gtk_socket_steal", object, wid, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkSpinButtonGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_spin_button_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkSpinButtonConfigure <-
function(object, adjustment = NULL, climb.rate, digits, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkSpinButton")
	if (!is.null( adjustment )) checkPtrType(adjustment, "GtkAdjustment")
	climb.rate <- as.numeric(climb.rate)
	digits <- as.numeric(digits)

	w <- .RGtkCall("S_gtk_spin_button_configure", object, adjustment, climb.rate, digits, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkSpinButtonNew <-
function(adjustment = NULL, climb.rate = NULL, digits = NULL, show = TRUE, .flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_spin_button_new", adjustment, climb.rate, digits, PACKAGE = "RGtk2", .flush = .flush)

	if(show)
		gtkWidgetShowAll(w)

	return(w)
} 


gtkSpinButtonNewWithRange <-
function(min, max, step, show = TRUE, .flush = TRUE, .depwarn = TRUE)
{
	min <- as.numeric(min)
	max <- as.numeric(max)
	step <- as.numeric(step)

	w <- .RGtkCall("S_gtk_spin_button_new_with_range", min, max, step, PACKAGE = "RGtk2", .flush = .flush)

	if(show)
		gtkWidgetShowAll(w)

	return(w)
} 


gtkSpinButtonSetAdjustment <-
function(object, adjustment, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkSpinButton")
	checkPtrType(adjustment, "GtkAdjustment")

	w <- .RGtkCall("S_gtk_spin_button_set_adjustment", object, adjustment, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkSpinButtonGetAdjustment <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkSpinButton")

	w <- .RGtkCall("S_gtk_spin_button_get_adjustment", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkSpinButtonSetDigits <-
function(object, digits, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkSpinButton")
	digits <- as.numeric(digits)

	w <- .RGtkCall("S_gtk_spin_button_set_digits", object, digits, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkSpinButtonGetDigits <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkSpinButton")

	w <- .RGtkCall("S_gtk_spin_button_get_digits", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkSpinButtonSetIncrements <-
function(object, step, page, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkSpinButton")
	step <- as.numeric(step)
	page <- as.numeric(page)

	w <- .RGtkCall("S_gtk_spin_button_set_increments", object, step, page, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkSpinButtonGetIncrements <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkSpinButton")

	w <- .RGtkCall("S_gtk_spin_button_get_increments", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkSpinButtonSetRange <-
function(object, min, max, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkSpinButton")
	min <- as.numeric(min)
	max <- as.numeric(max)

	w <- .RGtkCall("S_gtk_spin_button_set_range", object, min, max, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkSpinButtonGetRange <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkSpinButton")

	w <- .RGtkCall("S_gtk_spin_button_get_range", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkSpinButtonGetValue <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkSpinButton")

	w <- .RGtkCall("S_gtk_spin_button_get_value", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkSpinButtonGetValueAsInt <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkSpinButton")

	w <- .RGtkCall("S_gtk_spin_button_get_value_as_int", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkSpinButtonSetValue <-
function(object, value, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkSpinButton")
	value <- as.numeric(value)

	w <- .RGtkCall("S_gtk_spin_button_set_value", object, value, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkSpinButtonSetUpdatePolicy <-
function(object, policy, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkSpinButton")
	

	w <- .RGtkCall("S_gtk_spin_button_set_update_policy", object, policy, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkSpinButtonGetUpdatePolicy <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkSpinButton")

	w <- .RGtkCall("S_gtk_spin_button_get_update_policy", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkSpinButtonSetNumeric <-
function(object, numeric, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkSpinButton")
	numeric <- as.logical(numeric)

	w <- .RGtkCall("S_gtk_spin_button_set_numeric", object, numeric, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkSpinButtonGetNumeric <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkSpinButton")

	w <- .RGtkCall("S_gtk_spin_button_get_numeric", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkSpinButtonSpin <-
function(object, direction, increment, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkSpinButton")
	
	increment <- as.numeric(increment)

	w <- .RGtkCall("S_gtk_spin_button_spin", object, direction, increment, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkSpinButtonSetWrap <-
function(object, wrap, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkSpinButton")
	wrap <- as.logical(wrap)

	w <- .RGtkCall("S_gtk_spin_button_set_wrap", object, wrap, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkSpinButtonGetWrap <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkSpinButton")

	w <- .RGtkCall("S_gtk_spin_button_get_wrap", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkSpinButtonSetSnapToTicks <-
function(object, snap.to.ticks, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkSpinButton")
	snap.to.ticks <- as.logical(snap.to.ticks)

	w <- .RGtkCall("S_gtk_spin_button_set_snap_to_ticks", object, snap.to.ticks, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkSpinButtonGetSnapToTicks <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkSpinButton")

	w <- .RGtkCall("S_gtk_spin_button_get_snap_to_ticks", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkSpinButtonUpdate <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkSpinButton")

	w <- .RGtkCall("S_gtk_spin_button_update", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkStatusbarGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_statusbar_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkStatusbarNew <-
function(show = TRUE, .flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_statusbar_new", PACKAGE = "RGtk2", .flush = .flush)

	if(show)
		gtkWidgetShowAll(w)

	return(w)
} 


gtkStatusbarGetContextId <-
function(object, context.description, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkStatusbar")
	context.description <- as.character(context.description)

	w <- .RGtkCall("S_gtk_statusbar_get_context_id", object, context.description, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkStatusbarPush <-
function(object, context.id, text, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkStatusbar")
	context.id <- as.numeric(context.id)
	text <- as.character(text)

	w <- .RGtkCall("S_gtk_statusbar_push", object, context.id, text, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkStatusbarPop <-
function(object, context.id, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkStatusbar")
	context.id <- as.numeric(context.id)

	w <- .RGtkCall("S_gtk_statusbar_pop", object, context.id, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkStatusbarRemove <-
function(object, context.id, message.id, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkStatusbar")
	context.id <- as.numeric(context.id)
	message.id <- as.numeric(message.id)

	w <- .RGtkCall("S_gtk_statusbar_remove", object, context.id, message.id, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkStatusbarSetHasResizeGrip <-
function(object, setting, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkStatusbar")
	setting <- as.logical(setting)

	w <- .RGtkCall("S_gtk_statusbar_set_has_resize_grip", object, setting, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkStatusbarGetHasResizeGrip <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkStatusbar")

	w <- .RGtkCall("S_gtk_statusbar_get_has_resize_grip", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkStockAdd <-
function(items, .flush = TRUE, .depwarn = TRUE)
{
	items <- lapply(items, function(x) { x <- as.GtkStockItem(x); x })

	w <- .RGtkCall("S_gtk_stock_add", items, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkStockAddStatic <-
function(items, .flush = TRUE, .depwarn = TRUE)
{
	items <- lapply(items, function(x) { x <- as.GtkStockItem(x); x })

	w <- .RGtkCall("S_gtk_stock_add_static", items, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkStockLookup <-
function(stock.id, .flush = TRUE, .depwarn = TRUE)
{
	stock.id <- as.character(stock.id)

	w <- .RGtkCall("S_gtk_stock_lookup", stock.id, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkStockListIds <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_stock_list_ids", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkStockItemCopy <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	object <- as.GtkStockItem(object)

	w <- .RGtkCall("S_gtk_stock_item_copy", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkStockItemFree <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	object <- as.GtkStockItem(object)

	w <- .RGtkCall("S_gtk_stock_item_free", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkStockSetTranslateFunc <-
function(domain, func, data, .flush = TRUE, .depwarn = TRUE)
{
	domain <- as.character(domain)
	func <- as.function(func)
	

	w <- .RGtkCall("S_gtk_stock_set_translate_func", domain, func, data, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkStyleGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_style_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkStyleNew <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_style_new", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkStyleCopy <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkStyle")

	w <- .RGtkCall("S_gtk_style_copy", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkStyleAttach <-
function(object, window, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkStyle")
	checkPtrType(window, "GdkWindow")

	w <- .RGtkCall("S_gtk_style_attach", object, window, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkStyleDetach <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkStyle")

	w <- .RGtkCall("S_gtk_style_detach", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkStyleRef <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkStyle")

	w <- .RGtkCall("S_gtk_style_ref", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkStyleUnref <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkStyle")

	w <- .RGtkCall("S_gtk_style_unref", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkStyleGetFont <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkStyle")

	w <- .RGtkCall("S_gtk_style_get_font", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkStyleSetFont <-
function(object, font, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkStyle")
	checkPtrType(font, "GdkFont")

	w <- .RGtkCall("S_gtk_style_set_font", object, font, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkStyleSetBackground <-
function(object, window, state.type, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkStyle")
	checkPtrType(window, "GdkWindow")
	

	w <- .RGtkCall("S_gtk_style_set_background", object, window, state.type, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkStyleApplyDefaultBackground <-
function(object, window, set.bg, state.type, area = NULL, x, y, width, height, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkStyle")
	checkPtrType(window, "GdkWindow")
	set.bg <- as.logical(set.bg)
	
	if (!is.null( area )) area <- as.GdkRectangle(area)
	x <- as.integer(x)
	y <- as.integer(y)
	width <- as.integer(width)
	height <- as.integer(height)

	w <- .RGtkCall("S_gtk_style_apply_default_background", object, window, set.bg, state.type, area, x, y, width, height, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkStyleLookupIconSet <-
function(object, stock.id, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkStyle")
	stock.id <- as.character(stock.id)

	w <- .RGtkCall("S_gtk_style_lookup_icon_set", object, stock.id, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkStyleRenderIcon <-
function(object, source, direction, state, size, widget = "NULL", detail = "NULL", .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkStyle")
	checkPtrType(source, "GtkIconSource")
	
	
	
	if (!is.null( widget )) checkPtrType(widget, "GtkWidget")
	if (!is.null( detail )) detail <- as.character(detail)

	w <- .RGtkCall("S_gtk_style_render_icon", object, source, direction, state, size, widget, detail, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkDrawHline <-
function(object, window, state.type, x1, x2, y, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkStyle")
	checkPtrType(window, "GdkWindow")
	
	x1 <- as.integer(x1)
	x2 <- as.integer(x2)
	y <- as.integer(y)

	w <- .RGtkCall("S_gtk_draw_hline", object, window, state.type, x1, x2, y, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkDrawVline <-
function(object, window, state.type, y1, y2, x, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkStyle")
	checkPtrType(window, "GdkWindow")
	
	y1 <- as.integer(y1)
	y2 <- as.integer(y2)
	x <- as.integer(x)

	w <- .RGtkCall("S_gtk_draw_vline", object, window, state.type, y1, y2, x, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkDrawShadow <-
function(object, window, state.type, shadow.type, x, y, width, height, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkStyle")
	checkPtrType(window, "GdkWindow")
	
	
	x <- as.integer(x)
	y <- as.integer(y)
	width <- as.integer(width)
	height <- as.integer(height)

	w <- .RGtkCall("S_gtk_draw_shadow", object, window, state.type, shadow.type, x, y, width, height, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkDrawPolygon <-
function(object, window, state.type, shadow.type, points, fill, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkStyle")
	checkPtrType(window, "GdkWindow")
	
	
	points <- lapply(points, function(x) { x <- as.GdkPoint(x); x })
	fill <- as.logical(fill)

	w <- .RGtkCall("S_gtk_draw_polygon", object, window, state.type, shadow.type, points, fill, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkDrawArrow <-
function(object, window, state.type, shadow.type, arrow.type, fill, x, y, width, height, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkStyle")
	checkPtrType(window, "GdkWindow")
	
	
	
	fill <- as.logical(fill)
	x <- as.integer(x)
	y <- as.integer(y)
	width <- as.integer(width)
	height <- as.integer(height)

	w <- .RGtkCall("S_gtk_draw_arrow", object, window, state.type, shadow.type, arrow.type, fill, x, y, width, height, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkDrawDiamond <-
function(object, window, state.type, shadow.type, x, y, width, height, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkStyle")
	checkPtrType(window, "GdkWindow")
	
	
	x <- as.integer(x)
	y <- as.integer(y)
	width <- as.integer(width)
	height <- as.integer(height)

	w <- .RGtkCall("S_gtk_draw_diamond", object, window, state.type, shadow.type, x, y, width, height, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkDrawBox <-
function(object, window, state.type, shadow.type, x, y, width, height, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkStyle")
	checkPtrType(window, "GdkWindow")
	
	
	x <- as.integer(x)
	y <- as.integer(y)
	width <- as.integer(width)
	height <- as.integer(height)

	w <- .RGtkCall("S_gtk_draw_box", object, window, state.type, shadow.type, x, y, width, height, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkDrawFlatBox <-
function(object, window, state.type, shadow.type, x, y, width, height, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkStyle")
	checkPtrType(window, "GdkWindow")
	
	
	x <- as.integer(x)
	y <- as.integer(y)
	width <- as.integer(width)
	height <- as.integer(height)

	w <- .RGtkCall("S_gtk_draw_flat_box", object, window, state.type, shadow.type, x, y, width, height, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkDrawCheck <-
function(object, window, state.type, shadow.type, x, y, width, height, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkStyle")
	checkPtrType(window, "GdkWindow")
	
	
	x <- as.integer(x)
	y <- as.integer(y)
	width <- as.integer(width)
	height <- as.integer(height)

	w <- .RGtkCall("S_gtk_draw_check", object, window, state.type, shadow.type, x, y, width, height, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkDrawOption <-
function(object, window, state.type, shadow.type, x, y, width, height, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkStyle")
	checkPtrType(window, "GdkWindow")
	
	
	x <- as.integer(x)
	y <- as.integer(y)
	width <- as.integer(width)
	height <- as.integer(height)

	w <- .RGtkCall("S_gtk_draw_option", object, window, state.type, shadow.type, x, y, width, height, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkDrawTab <-
function(object, window, state.type, shadow.type, x, y, width, height, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkStyle")
	checkPtrType(window, "GdkWindow")
	
	
	x <- as.integer(x)
	y <- as.integer(y)
	width <- as.integer(width)
	height <- as.integer(height)

	w <- .RGtkCall("S_gtk_draw_tab", object, window, state.type, shadow.type, x, y, width, height, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkDrawShadowGap <-
function(object, window, state.type, shadow.type, x, y, width, height, gap.side, gap.x, gap.width, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkStyle")
	checkPtrType(window, "GdkWindow")
	
	
	x <- as.integer(x)
	y <- as.integer(y)
	width <- as.integer(width)
	height <- as.integer(height)
	
	gap.x <- as.integer(gap.x)
	gap.width <- as.integer(gap.width)

	w <- .RGtkCall("S_gtk_draw_shadow_gap", object, window, state.type, shadow.type, x, y, width, height, gap.side, gap.x, gap.width, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkDrawBoxGap <-
function(object, window, state.type, shadow.type, x, y, width, height, gap.side, gap.x, gap.width, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkStyle")
	checkPtrType(window, "GdkWindow")
	
	
	x <- as.integer(x)
	y <- as.integer(y)
	width <- as.integer(width)
	height <- as.integer(height)
	
	gap.x <- as.integer(gap.x)
	gap.width <- as.integer(gap.width)

	w <- .RGtkCall("S_gtk_draw_box_gap", object, window, state.type, shadow.type, x, y, width, height, gap.side, gap.x, gap.width, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkDrawExtension <-
function(object, window, state.type, shadow.type, x, y, width, height, gap.side, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkStyle")
	checkPtrType(window, "GdkWindow")
	
	
	x <- as.integer(x)
	y <- as.integer(y)
	width <- as.integer(width)
	height <- as.integer(height)
	

	w <- .RGtkCall("S_gtk_draw_extension", object, window, state.type, shadow.type, x, y, width, height, gap.side, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkDrawFocus <-
function(object, window, x, y, width, height, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkStyle")
	checkPtrType(window, "GdkWindow")
	x <- as.integer(x)
	y <- as.integer(y)
	width <- as.integer(width)
	height <- as.integer(height)

	w <- .RGtkCall("S_gtk_draw_focus", object, window, x, y, width, height, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkDrawSlider <-
function(object, window, state.type, shadow.type, x, y, width, height, orientation, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkStyle")
	checkPtrType(window, "GdkWindow")
	
	
	x <- as.integer(x)
	y <- as.integer(y)
	width <- as.integer(width)
	height <- as.integer(height)
	

	w <- .RGtkCall("S_gtk_draw_slider", object, window, state.type, shadow.type, x, y, width, height, orientation, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkDrawHandle <-
function(object, window, state.type, shadow.type, x, y, width, height, orientation, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkStyle")
	checkPtrType(window, "GdkWindow")
	
	
	x <- as.integer(x)
	y <- as.integer(y)
	width <- as.integer(width)
	height <- as.integer(height)
	

	w <- .RGtkCall("S_gtk_draw_handle", object, window, state.type, shadow.type, x, y, width, height, orientation, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkDrawExpander <-
function(object, window, state.type, x, y, is.open, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkStyle")
	checkPtrType(window, "GdkWindow")
	
	x <- as.integer(x)
	y <- as.integer(y)
	is.open <- as.logical(is.open)

	w <- .RGtkCall("S_gtk_draw_expander", object, window, state.type, x, y, is.open, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkDrawLayout <-
function(object, window, state.type, use.text, x, y, layout, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkStyle")
	checkPtrType(window, "GdkWindow")
	
	use.text <- as.logical(use.text)
	x <- as.integer(x)
	y <- as.integer(y)
	checkPtrType(layout, "PangoLayout")

	w <- .RGtkCall("S_gtk_draw_layout", object, window, state.type, use.text, x, y, layout, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkDrawResizeGrip <-
function(object, window, state.type, edge, x, y, width, height, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkStyle")
	checkPtrType(window, "GdkWindow")
	
	
	x <- as.integer(x)
	y <- as.integer(y)
	width <- as.integer(width)
	height <- as.integer(height)

	w <- .RGtkCall("S_gtk_draw_resize_grip", object, window, state.type, edge, x, y, width, height, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkPaintHline <-
function(object, window, state.type, area = NULL, widget = NULL, detail = NULL, x1, x2, y, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkStyle")
	checkPtrType(window, "GdkWindow")
	
	if (!is.null( area )) area <- as.GdkRectangle(area)
	if (!is.null( widget )) checkPtrType(widget, "GtkWidget")
	if (!is.null( detail )) detail <- as.character(detail)
	x1 <- as.integer(x1)
	x2 <- as.integer(x2)
	y <- as.integer(y)

	w <- .RGtkCall("S_gtk_paint_hline", object, window, state.type, area, widget, detail, x1, x2, y, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkPaintVline <-
function(object, window, state.type, area = NULL, widget = NULL, detail = NULL, y1, y2, x, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkStyle")
	checkPtrType(window, "GdkWindow")
	
	if (!is.null( area )) area <- as.GdkRectangle(area)
	if (!is.null( widget )) checkPtrType(widget, "GtkWidget")
	if (!is.null( detail )) detail <- as.character(detail)
	y1 <- as.integer(y1)
	y2 <- as.integer(y2)
	x <- as.integer(x)

	w <- .RGtkCall("S_gtk_paint_vline", object, window, state.type, area, widget, detail, y1, y2, x, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkPaintShadow <-
function(object, window, state.type, shadow.type, area = NULL, widget = NULL, detail = NULL, x, y, width, height, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkStyle")
	checkPtrType(window, "GdkWindow")
	
	
	if (!is.null( area )) area <- as.GdkRectangle(area)
	if (!is.null( widget )) checkPtrType(widget, "GtkWidget")
	if (!is.null( detail )) detail <- as.character(detail)
	x <- as.integer(x)
	y <- as.integer(y)
	width <- as.integer(width)
	height <- as.integer(height)

	w <- .RGtkCall("S_gtk_paint_shadow", object, window, state.type, shadow.type, area, widget, detail, x, y, width, height, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkPaintPolygon <-
function(object, window, state.type, shadow.type, area = NULL, widget = NULL, detail = NULL, points, fill, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkStyle")
	checkPtrType(window, "GdkWindow")
	
	
	if (!is.null( area )) area <- as.GdkRectangle(area)
	if (!is.null( widget )) checkPtrType(widget, "GtkWidget")
	if (!is.null( detail )) detail <- as.character(detail)
	points <- lapply(points, function(x) { x <- as.GdkPoint(x); x })
	fill <- as.logical(fill)

	w <- .RGtkCall("S_gtk_paint_polygon", object, window, state.type, shadow.type, area, widget, detail, points, fill, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkPaintArrow <-
function(object, window, state.type, shadow.type, area = NULL, widget = NULL, detail = NULL, arrow.type, fill, x, y, width, height, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkStyle")
	checkPtrType(window, "GdkWindow")
	
	
	if (!is.null( area )) area <- as.GdkRectangle(area)
	if (!is.null( widget )) checkPtrType(widget, "GtkWidget")
	if (!is.null( detail )) detail <- as.character(detail)
	
	fill <- as.logical(fill)
	x <- as.integer(x)
	y <- as.integer(y)
	width <- as.integer(width)
	height <- as.integer(height)

	w <- .RGtkCall("S_gtk_paint_arrow", object, window, state.type, shadow.type, area, widget, detail, arrow.type, fill, x, y, width, height, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkPaintDiamond <-
function(object, window, state.type, shadow.type, area = NULL, widget = NULL, detail = NULL, x, y, width, height, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkStyle")
	checkPtrType(window, "GdkWindow")
	
	
	if (!is.null( area )) area <- as.GdkRectangle(area)
	if (!is.null( widget )) checkPtrType(widget, "GtkWidget")
	if (!is.null( detail )) detail <- as.character(detail)
	x <- as.integer(x)
	y <- as.integer(y)
	width <- as.integer(width)
	height <- as.integer(height)

	w <- .RGtkCall("S_gtk_paint_diamond", object, window, state.type, shadow.type, area, widget, detail, x, y, width, height, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkPaintBox <-
function(object, window, state.type, shadow.type, area = NULL, widget = NULL, detail = NULL, x, y, width, height, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkStyle")
	checkPtrType(window, "GdkWindow")
	
	
	if (!is.null( area )) area <- as.GdkRectangle(area)
	if (!is.null( widget )) checkPtrType(widget, "GtkWidget")
	if (!is.null( detail )) detail <- as.character(detail)
	x <- as.integer(x)
	y <- as.integer(y)
	width <- as.integer(width)
	height <- as.integer(height)

	w <- .RGtkCall("S_gtk_paint_box", object, window, state.type, shadow.type, area, widget, detail, x, y, width, height, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkPaintFlatBox <-
function(object, window, state.type, shadow.type, area = NULL, widget = NULL, detail = NULL, x, y, width, height, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkStyle")
	checkPtrType(window, "GdkWindow")
	
	
	if (!is.null( area )) area <- as.GdkRectangle(area)
	if (!is.null( widget )) checkPtrType(widget, "GtkWidget")
	if (!is.null( detail )) detail <- as.character(detail)
	x <- as.integer(x)
	y <- as.integer(y)
	width <- as.integer(width)
	height <- as.integer(height)

	w <- .RGtkCall("S_gtk_paint_flat_box", object, window, state.type, shadow.type, area, widget, detail, x, y, width, height, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkPaintCheck <-
function(object, window, state.type, shadow.type, area = NULL, widget = NULL, detail = NULL, x, y, width, height, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkStyle")
	checkPtrType(window, "GdkWindow")
	
	
	if (!is.null( area )) area <- as.GdkRectangle(area)
	if (!is.null( widget )) checkPtrType(widget, "GtkWidget")
	if (!is.null( detail )) detail <- as.character(detail)
	x <- as.integer(x)
	y <- as.integer(y)
	width <- as.integer(width)
	height <- as.integer(height)

	w <- .RGtkCall("S_gtk_paint_check", object, window, state.type, shadow.type, area, widget, detail, x, y, width, height, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkPaintOption <-
function(object, window, state.type, shadow.type, area = NULL, widget = NULL, detail = NULL, x, y, width, height, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkStyle")
	checkPtrType(window, "GdkWindow")
	
	
	if (!is.null( area )) area <- as.GdkRectangle(area)
	if (!is.null( widget )) checkPtrType(widget, "GtkWidget")
	if (!is.null( detail )) detail <- as.character(detail)
	x <- as.integer(x)
	y <- as.integer(y)
	width <- as.integer(width)
	height <- as.integer(height)

	w <- .RGtkCall("S_gtk_paint_option", object, window, state.type, shadow.type, area, widget, detail, x, y, width, height, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkPaintTab <-
function(object, window, state.type, shadow.type, area = NULL, widget = NULL, detail = NULL, x, y, width, height, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkStyle")
	checkPtrType(window, "GdkWindow")
	
	
	if (!is.null( area )) area <- as.GdkRectangle(area)
	if (!is.null( widget )) checkPtrType(widget, "GtkWidget")
	if (!is.null( detail )) detail <- as.character(detail)
	x <- as.integer(x)
	y <- as.integer(y)
	width <- as.integer(width)
	height <- as.integer(height)

	w <- .RGtkCall("S_gtk_paint_tab", object, window, state.type, shadow.type, area, widget, detail, x, y, width, height, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkPaintShadowGap <-
function(object, window, state.type, shadow.type, area = NULL, widget = NULL, detail = NULL, x, y, width, height, gap.side, gap.x, gap.width, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkStyle")
	checkPtrType(window, "GdkWindow")
	
	
	if (!is.null( area )) area <- as.GdkRectangle(area)
	if (!is.null( widget )) checkPtrType(widget, "GtkWidget")
	if (!is.null( detail )) detail <- as.character(detail)
	x <- as.integer(x)
	y <- as.integer(y)
	width <- as.integer(width)
	height <- as.integer(height)
	
	gap.x <- as.integer(gap.x)
	gap.width <- as.integer(gap.width)

	w <- .RGtkCall("S_gtk_paint_shadow_gap", object, window, state.type, shadow.type, area, widget, detail, x, y, width, height, gap.side, gap.x, gap.width, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkPaintBoxGap <-
function(object, window, state.type, shadow.type, area = NULL, widget = NULL, detail = NULL, x, y, width, height, gap.side, gap.x, gap.width, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkStyle")
	checkPtrType(window, "GdkWindow")
	
	
	if (!is.null( area )) area <- as.GdkRectangle(area)
	if (!is.null( widget )) checkPtrType(widget, "GtkWidget")
	if (!is.null( detail )) detail <- as.character(detail)
	x <- as.integer(x)
	y <- as.integer(y)
	width <- as.integer(width)
	height <- as.integer(height)
	
	gap.x <- as.integer(gap.x)
	gap.width <- as.integer(gap.width)

	w <- .RGtkCall("S_gtk_paint_box_gap", object, window, state.type, shadow.type, area, widget, detail, x, y, width, height, gap.side, gap.x, gap.width, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkPaintExtension <-
function(object, window, state.type, shadow.type, area = NULL, widget = NULL, detail = NULL, x, y, width, height, gap.side, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkStyle")
	checkPtrType(window, "GdkWindow")
	
	
	if (!is.null( area )) area <- as.GdkRectangle(area)
	if (!is.null( widget )) checkPtrType(widget, "GtkWidget")
	if (!is.null( detail )) detail <- as.character(detail)
	x <- as.integer(x)
	y <- as.integer(y)
	width <- as.integer(width)
	height <- as.integer(height)
	

	w <- .RGtkCall("S_gtk_paint_extension", object, window, state.type, shadow.type, area, widget, detail, x, y, width, height, gap.side, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkPaintFocus <-
function(object, window, state.type, area = NULL, widget = NULL, detail = NULL, x, y, width, height, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkStyle")
	checkPtrType(window, "GdkWindow")
	
	if (!is.null( area )) area <- as.GdkRectangle(area)
	if (!is.null( widget )) checkPtrType(widget, "GtkWidget")
	if (!is.null( detail )) detail <- as.character(detail)
	x <- as.integer(x)
	y <- as.integer(y)
	width <- as.integer(width)
	height <- as.integer(height)

	w <- .RGtkCall("S_gtk_paint_focus", object, window, state.type, area, widget, detail, x, y, width, height, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkPaintSlider <-
function(object, window, state.type, shadow.type, area = NULL, widget = NULL, detail = NULL, x, y, width, height, orientation, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkStyle")
	checkPtrType(window, "GdkWindow")
	
	
	if (!is.null( area )) area <- as.GdkRectangle(area)
	if (!is.null( widget )) checkPtrType(widget, "GtkWidget")
	if (!is.null( detail )) detail <- as.character(detail)
	x <- as.integer(x)
	y <- as.integer(y)
	width <- as.integer(width)
	height <- as.integer(height)
	

	w <- .RGtkCall("S_gtk_paint_slider", object, window, state.type, shadow.type, area, widget, detail, x, y, width, height, orientation, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkPaintHandle <-
function(object, window, state.type, shadow.type, area = NULL, widget = NULL, detail = NULL, x, y, width, height, orientation, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkStyle")
	checkPtrType(window, "GdkWindow")
	
	
	if (!is.null( area )) area <- as.GdkRectangle(area)
	if (!is.null( widget )) checkPtrType(widget, "GtkWidget")
	if (!is.null( detail )) detail <- as.character(detail)
	x <- as.integer(x)
	y <- as.integer(y)
	width <- as.integer(width)
	height <- as.integer(height)
	

	w <- .RGtkCall("S_gtk_paint_handle", object, window, state.type, shadow.type, area, widget, detail, x, y, width, height, orientation, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkPaintExpander <-
function(object, window, state.type, area = NULL, widget = NULL, detail = NULL, x, y, expander.style, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkStyle")
	checkPtrType(window, "GdkWindow")
	
	if (!is.null( area )) area <- as.GdkRectangle(area)
	if (!is.null( widget )) checkPtrType(widget, "GtkWidget")
	if (!is.null( detail )) detail <- as.character(detail)
	x <- as.integer(x)
	y <- as.integer(y)
	

	w <- .RGtkCall("S_gtk_paint_expander", object, window, state.type, area, widget, detail, x, y, expander.style, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkPaintLayout <-
function(object, window, state.type, use.text, area = NULL, widget = NULL, detail = NULL, x, y, layout, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkStyle")
	checkPtrType(window, "GdkWindow")
	
	use.text <- as.logical(use.text)
	if (!is.null( area )) area <- as.GdkRectangle(area)
	if (!is.null( widget )) checkPtrType(widget, "GtkWidget")
	if (!is.null( detail )) detail <- as.character(detail)
	x <- as.integer(x)
	y <- as.integer(y)
	checkPtrType(layout, "PangoLayout")

	w <- .RGtkCall("S_gtk_paint_layout", object, window, state.type, use.text, area, widget, detail, x, y, layout, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkPaintResizeGrip <-
function(object, window, state.type, area = NULL, widget = NULL, detail = NULL, edge, x, y, width, height, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkStyle")
	checkPtrType(window, "GdkWindow")
	
	if (!is.null( area )) area <- as.GdkRectangle(area)
	if (!is.null( widget )) checkPtrType(widget, "GtkWidget")
	if (!is.null( detail )) detail <- as.character(detail)
	
	x <- as.integer(x)
	y <- as.integer(y)
	width <- as.integer(width)
	height <- as.integer(height)

	w <- .RGtkCall("S_gtk_paint_resize_grip", object, window, state.type, area, widget, detail, edge, x, y, width, height, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkBorderGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_border_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkBorderCopy <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkBorder")

	w <- .RGtkCall("S_gtk_border_copy", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkBorderFree <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkBorder")

	w <- .RGtkCall("S_gtk_border_free", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkStyleApplyDefaultPixmap <-
function(object, window, set.bg, area, x, y, width, height, .flush = TRUE, .depwarn = TRUE)
{
	if (.depwarn)
		warning("This function is deprecated: use GtkStyle.apply_default_background")

	checkPtrType(object, "GtkStyle")
	checkPtrType(window, "GdkWindow")
	set.bg <- as.logical(set.bg)
	area <- as.GdkRectangle(area)
	x <- as.integer(x)
	y <- as.integer(y)
	width <- as.integer(width)
	height <- as.integer(height)

	w <- .RGtkCall("S_gtk_style_apply_default_pixmap", object, window, set.bg, area, x, y, width, height, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkDrawString <-
function(object, window, state.type, x, y, string, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkStyle")
	checkPtrType(window, "GdkWindow")
	
	x <- as.integer(x)
	y <- as.integer(y)
	string <- as.character(string)

	w <- .RGtkCall("S_gtk_draw_string", object, window, state.type, x, y, string, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkPaintString <-
function(object, window, state.type, area = NULL, widget = NULL, detail = NULL, x, y, string, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkStyle")
	checkPtrType(window, "GdkWindow")
	
	if (!is.null( area )) area <- as.GdkRectangle(area)
	if (!is.null( widget )) checkPtrType(widget, "GtkWidget")
	if (!is.null( detail )) detail <- as.character(detail)
	x <- as.integer(x)
	y <- as.integer(y)
	string <- as.character(string)

	w <- .RGtkCall("S_gtk_paint_string", object, window, state.type, area, widget, detail, x, y, string, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkDrawInsertionCursor <-
function(widget, drawable, area = NULL, location, is.primary, direction, draw.arrow, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(widget, "GtkWidget")
	checkPtrType(drawable, "GdkDrawable")
	if (!is.null( area )) area <- as.GdkRectangle(area)
	location <- as.GdkRectangle(location)
	is.primary <- as.logical(is.primary)
	
	draw.arrow <- as.logical(draw.arrow)

	w <- .RGtkCall("S_gtk_draw_insertion_cursor", widget, drawable, area, location, is.primary, direction, draw.arrow, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTableGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_table_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTableNew <-
function(rows = NULL, columns = NULL, homogeneous = NULL, show = TRUE, .flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_table_new", rows, columns, homogeneous, PACKAGE = "RGtk2", .flush = .flush)

	if(show)
		gtkWidgetShowAll(w)

	return(w)
} 


gtkTableResize <-
function(object, rows, columns, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTable")
	rows <- as.numeric(rows)
	columns <- as.numeric(columns)

	w <- .RGtkCall("S_gtk_table_resize", object, rows, columns, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTableAttach <-
function(object, child, left.attach, right.attach, top.attach, bottom.attach, xoptions = "GTK_EXPAND|GTK_FILL", yoptions = "GTK_EXPAND|GTK_FILL", xpadding = "0", ypadding = "0", .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTable")
	checkPtrType(child, "GtkWidget")
	left.attach <- as.numeric(left.attach)
	right.attach <- as.numeric(right.attach)
	top.attach <- as.numeric(top.attach)
	bottom.attach <- as.numeric(bottom.attach)
	
	
	xpadding <- as.numeric(xpadding)
	ypadding <- as.numeric(ypadding)

	w <- .RGtkCall("S_gtk_table_attach", object, child, left.attach, right.attach, top.attach, bottom.attach, xoptions, yoptions, xpadding, ypadding, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTableAttachDefaults <-
function(object, widget, left.attach, right.attach, top.attach, bottom.attach, .flush = TRUE, .depwarn = TRUE)
{
	if (.depwarn)
		warning("This function is deprecated: use attach instead")

	checkPtrType(object, "GtkTable")
	checkPtrType(widget, "GtkWidget")
	left.attach <- as.numeric(left.attach)
	right.attach <- as.numeric(right.attach)
	top.attach <- as.numeric(top.attach)
	bottom.attach <- as.numeric(bottom.attach)

	w <- .RGtkCall("S_gtk_table_attach_defaults", object, widget, left.attach, right.attach, top.attach, bottom.attach, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTableSetRowSpacing <-
function(object, row, spacing, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTable")
	row <- as.numeric(row)
	spacing <- as.numeric(spacing)

	w <- .RGtkCall("S_gtk_table_set_row_spacing", object, row, spacing, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTableGetRowSpacing <-
function(object, row, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTable")
	row <- as.numeric(row)

	w <- .RGtkCall("S_gtk_table_get_row_spacing", object, row, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTableSetColSpacing <-
function(object, column, spacing, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTable")
	column <- as.numeric(column)
	spacing <- as.numeric(spacing)

	w <- .RGtkCall("S_gtk_table_set_col_spacing", object, column, spacing, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTableGetColSpacing <-
function(object, column, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTable")
	column <- as.numeric(column)

	w <- .RGtkCall("S_gtk_table_get_col_spacing", object, column, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTableSetRowSpacings <-
function(object, spacing, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTable")
	spacing <- as.numeric(spacing)

	w <- .RGtkCall("S_gtk_table_set_row_spacings", object, spacing, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTableGetDefaultRowSpacing <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTable")

	w <- .RGtkCall("S_gtk_table_get_default_row_spacing", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTableSetColSpacings <-
function(object, spacing, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTable")
	spacing <- as.numeric(spacing)

	w <- .RGtkCall("S_gtk_table_set_col_spacings", object, spacing, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTableGetDefaultColSpacing <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTable")

	w <- .RGtkCall("S_gtk_table_get_default_col_spacing", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTableSetHomogeneous <-
function(object, homogeneous, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTable")
	homogeneous <- as.logical(homogeneous)

	w <- .RGtkCall("S_gtk_table_set_homogeneous", object, homogeneous, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTableGetHomogeneous <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTable")

	w <- .RGtkCall("S_gtk_table_get_homogeneous", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTearoffMenuItemGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_tearoff_menu_item_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTearoffMenuItemNew <-
function(show = TRUE, .flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_tearoff_menu_item_new", PACKAGE = "RGtk2", .flush = .flush)

	if(show)
		gtkWidgetShowAll(w)

	return(w)
} 


gtkTextBufferGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_text_buffer_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTextBufferNew <-
function(table = NULL, .flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_text_buffer_new", table, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTextBufferGetLineCount <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextBuffer")

	w <- .RGtkCall("S_gtk_text_buffer_get_line_count", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTextBufferGetCharCount <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextBuffer")

	w <- .RGtkCall("S_gtk_text_buffer_get_char_count", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTextBufferGetTagTable <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextBuffer")

	w <- .RGtkCall("S_gtk_text_buffer_get_tag_table", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTextBufferSetText <-
function(object, text, len = "-1", .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextBuffer")
	text <- as.character(text)
	len <- as.integer(len)

	w <- .RGtkCall("S_gtk_text_buffer_set_text", object, text, len, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTextBufferInsert <-
function(object, iter, text, len = "-1", .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextBuffer")
	checkPtrType(iter, "GtkTextIter")
	text <- as.character(text)
	len <- as.integer(len)

	w <- .RGtkCall("S_gtk_text_buffer_insert", object, iter, text, len, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTextBufferInsertAtCursor <-
function(object, text, len = "-1", .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextBuffer")
	text <- as.character(text)
	len <- as.integer(len)

	w <- .RGtkCall("S_gtk_text_buffer_insert_at_cursor", object, text, len, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTextBufferInsertRange <-
function(object, iter, start, end, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextBuffer")
	checkPtrType(iter, "GtkTextIter")
	checkPtrType(start, "GtkTextIter")
	checkPtrType(end, "GtkTextIter")

	w <- .RGtkCall("S_gtk_text_buffer_insert_range", object, iter, start, end, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTextBufferInsertRangeInteractive <-
function(object, iter, start, end, default.editable, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextBuffer")
	checkPtrType(iter, "GtkTextIter")
	checkPtrType(start, "GtkTextIter")
	checkPtrType(end, "GtkTextIter")
	default.editable <- as.logical(default.editable)

	w <- .RGtkCall("S_gtk_text_buffer_insert_range_interactive", object, iter, start, end, default.editable, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTextBufferDelete <-
function(object, start, end, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextBuffer")
	checkPtrType(start, "GtkTextIter")
	checkPtrType(end, "GtkTextIter")

	w <- .RGtkCall("S_gtk_text_buffer_delete", object, start, end, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTextBufferDeleteInteractive <-
function(object, start.iter, end.iter, default.editable, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextBuffer")
	checkPtrType(start.iter, "GtkTextIter")
	checkPtrType(end.iter, "GtkTextIter")
	default.editable <- as.logical(default.editable)

	w <- .RGtkCall("S_gtk_text_buffer_delete_interactive", object, start.iter, end.iter, default.editable, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTextBufferGetText <-
function(object, start, end, include.hidden.chars = "TRUE", .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextBuffer")
	checkPtrType(start, "GtkTextIter")
	checkPtrType(end, "GtkTextIter")
	include.hidden.chars <- as.logical(include.hidden.chars)

	w <- .RGtkCall("S_gtk_text_buffer_get_text", object, start, end, include.hidden.chars, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTextBufferGetSlice <-
function(object, start, end, include.hidden.chars = "TRUE", .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextBuffer")
	checkPtrType(start, "GtkTextIter")
	checkPtrType(end, "GtkTextIter")
	include.hidden.chars <- as.logical(include.hidden.chars)

	w <- .RGtkCall("S_gtk_text_buffer_get_slice", object, start, end, include.hidden.chars, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTextBufferInsertPixbuf <-
function(object, iter, pixbuf, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextBuffer")
	checkPtrType(iter, "GtkTextIter")
	checkPtrType(pixbuf, "GdkPixbuf")

	w <- .RGtkCall("S_gtk_text_buffer_insert_pixbuf", object, iter, pixbuf, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTextBufferInsertChildAnchor <-
function(object, iter, anchor, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextBuffer")
	checkPtrType(iter, "GtkTextIter")
	checkPtrType(anchor, "GtkTextChildAnchor")

	w <- .RGtkCall("S_gtk_text_buffer_insert_child_anchor", object, iter, anchor, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTextBufferCreateChildAnchor <-
function(object, iter, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextBuffer")
	checkPtrType(iter, "GtkTextIter")

	w <- .RGtkCall("S_gtk_text_buffer_create_child_anchor", object, iter, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTextBufferCreateMark <-
function(object, mark.name = NULL, where, left.gravity = "FALSE", .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextBuffer")
	if (!is.null( mark.name )) mark.name <- as.character(mark.name)
	checkPtrType(where, "GtkTextIter")
	left.gravity <- as.logical(left.gravity)

	w <- .RGtkCall("S_gtk_text_buffer_create_mark", object, mark.name, where, left.gravity, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTextBufferMoveMark <-
function(object, mark, where, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextBuffer")
	checkPtrType(mark, "GtkTextMark")
	checkPtrType(where, "GtkTextIter")

	w <- .RGtkCall("S_gtk_text_buffer_move_mark", object, mark, where, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTextBufferDeleteMark <-
function(object, mark, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextBuffer")
	checkPtrType(mark, "GtkTextMark")

	w <- .RGtkCall("S_gtk_text_buffer_delete_mark", object, mark, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTextBufferGetMark <-
function(object, name, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextBuffer")
	name <- as.character(name)

	w <- .RGtkCall("S_gtk_text_buffer_get_mark", object, name, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTextBufferMoveMarkByName <-
function(object, name, where, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextBuffer")
	name <- as.character(name)
	checkPtrType(where, "GtkTextIter")

	w <- .RGtkCall("S_gtk_text_buffer_move_mark_by_name", object, name, where, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTextBufferDeleteMarkByName <-
function(object, name, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextBuffer")
	name <- as.character(name)

	w <- .RGtkCall("S_gtk_text_buffer_delete_mark_by_name", object, name, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTextBufferGetInsert <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextBuffer")

	w <- .RGtkCall("S_gtk_text_buffer_get_insert", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTextBufferGetSelectionBound <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextBuffer")

	w <- .RGtkCall("S_gtk_text_buffer_get_selection_bound", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTextBufferPlaceCursor <-
function(object, where, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextBuffer")
	checkPtrType(where, "GtkTextIter")

	w <- .RGtkCall("S_gtk_text_buffer_place_cursor", object, where, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTextBufferSelectRange <-
function(object, ins, bound, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextBuffer")
	checkPtrType(ins, "GtkTextIter")
	checkPtrType(bound, "GtkTextIter")

	w <- .RGtkCall("S_gtk_text_buffer_select_range", object, ins, bound, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTextBufferApplyTag <-
function(object, tag, start, end, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextBuffer")
	checkPtrType(tag, "GtkTextTag")
	checkPtrType(start, "GtkTextIter")
	checkPtrType(end, "GtkTextIter")

	w <- .RGtkCall("S_gtk_text_buffer_apply_tag", object, tag, start, end, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTextBufferRemoveTag <-
function(object, tag, start, end, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextBuffer")
	checkPtrType(tag, "GtkTextTag")
	checkPtrType(start, "GtkTextIter")
	checkPtrType(end, "GtkTextIter")

	w <- .RGtkCall("S_gtk_text_buffer_remove_tag", object, tag, start, end, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTextBufferApplyTagByName <-
function(object, name, start, end, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextBuffer")
	name <- as.character(name)
	checkPtrType(start, "GtkTextIter")
	checkPtrType(end, "GtkTextIter")

	w <- .RGtkCall("S_gtk_text_buffer_apply_tag_by_name", object, name, start, end, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTextBufferRemoveTagByName <-
function(object, name, start, end, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextBuffer")
	name <- as.character(name)
	checkPtrType(start, "GtkTextIter")
	checkPtrType(end, "GtkTextIter")

	w <- .RGtkCall("S_gtk_text_buffer_remove_tag_by_name", object, name, start, end, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTextBufferRemoveAllTags <-
function(object, start, end, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextBuffer")
	checkPtrType(start, "GtkTextIter")
	checkPtrType(end, "GtkTextIter")

	w <- .RGtkCall("S_gtk_text_buffer_remove_all_tags", object, start, end, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTextBufferGetIterAtLineOffset <-
function(object, line.number, char.offset, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextBuffer")
	line.number <- as.integer(line.number)
	char.offset <- as.integer(char.offset)

	w <- .RGtkCall("S_gtk_text_buffer_get_iter_at_line_offset", object, line.number, char.offset, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTextBufferGetIterAtLineIndex <-
function(object, line.number, byte.index, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextBuffer")
	line.number <- as.integer(line.number)
	byte.index <- as.integer(byte.index)

	w <- .RGtkCall("S_gtk_text_buffer_get_iter_at_line_index", object, line.number, byte.index, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTextBufferGetIterAtOffset <-
function(object, char.offset, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextBuffer")
	char.offset <- as.integer(char.offset)

	w <- .RGtkCall("S_gtk_text_buffer_get_iter_at_offset", object, char.offset, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTextBufferGetIterAtLine <-
function(object, line.number, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextBuffer")
	line.number <- as.integer(line.number)

	w <- .RGtkCall("S_gtk_text_buffer_get_iter_at_line", object, line.number, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTextBufferGetStartIter <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextBuffer")

	w <- .RGtkCall("S_gtk_text_buffer_get_start_iter", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTextBufferGetEndIter <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextBuffer")

	w <- .RGtkCall("S_gtk_text_buffer_get_end_iter", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTextBufferGetBounds <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextBuffer")

	w <- .RGtkCall("S_gtk_text_buffer_get_bounds", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTextBufferGetIterAtMark <-
function(object, mark, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextBuffer")
	checkPtrType(mark, "GtkTextMark")

	w <- .RGtkCall("S_gtk_text_buffer_get_iter_at_mark", object, mark, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTextBufferGetIterAtChildAnchor <-
function(object, anchor, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextBuffer")
	checkPtrType(anchor, "GtkTextChildAnchor")

	w <- .RGtkCall("S_gtk_text_buffer_get_iter_at_child_anchor", object, anchor, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTextBufferGetModified <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextBuffer")

	w <- .RGtkCall("S_gtk_text_buffer_get_modified", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTextBufferSetModified <-
function(object, setting, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextBuffer")
	setting <- as.logical(setting)

	w <- .RGtkCall("S_gtk_text_buffer_set_modified", object, setting, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTextBufferAddSelectionClipboard <-
function(object, clipboard, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextBuffer")
	checkPtrType(clipboard, "GtkClipboard")

	w <- .RGtkCall("S_gtk_text_buffer_add_selection_clipboard", object, clipboard, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTextBufferRemoveSelectionClipboard <-
function(object, clipboard, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextBuffer")
	checkPtrType(clipboard, "GtkClipboard")

	w <- .RGtkCall("S_gtk_text_buffer_remove_selection_clipboard", object, clipboard, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTextBufferCutClipboard <-
function(object, clipboard, default.editable, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextBuffer")
	checkPtrType(clipboard, "GtkClipboard")
	default.editable <- as.logical(default.editable)

	w <- .RGtkCall("S_gtk_text_buffer_cut_clipboard", object, clipboard, default.editable, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTextBufferCopyClipboard <-
function(object, clipboard, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextBuffer")
	checkPtrType(clipboard, "GtkClipboard")

	w <- .RGtkCall("S_gtk_text_buffer_copy_clipboard", object, clipboard, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTextBufferPasteClipboard <-
function(object, clipboard, override.location = NULL, default.editable, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextBuffer")
	checkPtrType(clipboard, "GtkClipboard")
	if (!is.null( override.location )) checkPtrType(override.location, "GtkTextIter")
	default.editable <- as.logical(default.editable)

	w <- .RGtkCall("S_gtk_text_buffer_paste_clipboard", object, clipboard, override.location, default.editable, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTextBufferGetSelectionBounds <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextBuffer")

	w <- .RGtkCall("S_gtk_text_buffer_get_selection_bounds", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTextBufferDeleteSelection <-
function(object, interactive, default.editable, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextBuffer")
	interactive <- as.logical(interactive)
	default.editable <- as.logical(default.editable)

	w <- .RGtkCall("S_gtk_text_buffer_delete_selection", object, interactive, default.editable, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTextBufferBeginUserAction <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextBuffer")

	w <- .RGtkCall("S_gtk_text_buffer_begin_user_action", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTextBufferEndUserAction <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextBuffer")

	w <- .RGtkCall("S_gtk_text_buffer_end_user_action", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTextChildAnchorGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_text_child_anchor_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTextChildAnchorNew <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_text_child_anchor_new", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTextChildAnchorGetWidgets <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextChildAnchor")

	w <- .RGtkCall("S_gtk_text_child_anchor_get_widgets", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTextChildAnchorGetDeleted <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextChildAnchor")

	w <- .RGtkCall("S_gtk_text_child_anchor_get_deleted", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTextBufferBackspace <-
function(object, iter, interactive, default.editable, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextBuffer")
	checkPtrType(iter, "GtkTextIter")
	interactive <- as.logical(interactive)
	default.editable <- as.logical(default.editable)

	w <- .RGtkCall("S_gtk_text_buffer_backspace", object, iter, interactive, default.editable, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTextIterGetBuffer <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextIter")

	w <- .RGtkCall("S_gtk_text_iter_get_buffer", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTextIterCopy <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextIter")

	w <- .RGtkCall("S_gtk_text_iter_copy", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTextIterFree <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextIter")

	w <- .RGtkCall("S_gtk_text_iter_free", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTextIterGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_text_iter_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTextIterGetOffset <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextIter")

	w <- .RGtkCall("S_gtk_text_iter_get_offset", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTextIterGetLine <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextIter")

	w <- .RGtkCall("S_gtk_text_iter_get_line", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTextIterGetLineOffset <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextIter")

	w <- .RGtkCall("S_gtk_text_iter_get_line_offset", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTextIterGetLineIndex <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextIter")

	w <- .RGtkCall("S_gtk_text_iter_get_line_index", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTextIterGetVisibleLineOffset <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextIter")

	w <- .RGtkCall("S_gtk_text_iter_get_visible_line_offset", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTextIterGetVisibleLineIndex <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextIter")

	w <- .RGtkCall("S_gtk_text_iter_get_visible_line_index", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTextIterGetChar <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextIter")

	w <- .RGtkCall("S_gtk_text_iter_get_char", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTextIterGetSlice <-
function(object, end, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextIter")
	checkPtrType(end, "GtkTextIter")

	w <- .RGtkCall("S_gtk_text_iter_get_slice", object, end, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTextIterGetText <-
function(object, end, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextIter")
	checkPtrType(end, "GtkTextIter")

	w <- .RGtkCall("S_gtk_text_iter_get_text", object, end, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTextIterGetVisibleSlice <-
function(object, end, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextIter")
	checkPtrType(end, "GtkTextIter")

	w <- .RGtkCall("S_gtk_text_iter_get_visible_slice", object, end, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTextIterGetVisibleText <-
function(object, end, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextIter")
	checkPtrType(end, "GtkTextIter")

	w <- .RGtkCall("S_gtk_text_iter_get_visible_text", object, end, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTextIterGetPixbuf <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextIter")

	w <- .RGtkCall("S_gtk_text_iter_get_pixbuf", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTextIterGetMarks <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextIter")

	w <- .RGtkCall("S_gtk_text_iter_get_marks", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTextIterGetChildAnchor <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextIter")

	w <- .RGtkCall("S_gtk_text_iter_get_child_anchor", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTextIterGetToggledTags <-
function(object, toggled.on, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextIter")
	toggled.on <- as.logical(toggled.on)

	w <- .RGtkCall("S_gtk_text_iter_get_toggled_tags", object, toggled.on, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTextIterBeginsTag <-
function(object, tag = "NULL", .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextIter")
	if (!is.null( tag )) checkPtrType(tag, "GtkTextTag")

	w <- .RGtkCall("S_gtk_text_iter_begins_tag", object, tag, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTextIterEndsTag <-
function(object, tag = "NULL", .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextIter")
	if (!is.null( tag )) checkPtrType(tag, "GtkTextTag")

	w <- .RGtkCall("S_gtk_text_iter_ends_tag", object, tag, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTextIterTogglesTag <-
function(object, tag = "NULL", .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextIter")
	if (!is.null( tag )) checkPtrType(tag, "GtkTextTag")

	w <- .RGtkCall("S_gtk_text_iter_toggles_tag", object, tag, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTextIterHasTag <-
function(object, tag, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextIter")
	checkPtrType(tag, "GtkTextTag")

	w <- .RGtkCall("S_gtk_text_iter_has_tag", object, tag, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTextIterGetTags <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextIter")

	w <- .RGtkCall("S_gtk_text_iter_get_tags", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTextIterEditable <-
function(object, default.setting, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextIter")
	default.setting <- as.logical(default.setting)

	w <- .RGtkCall("S_gtk_text_iter_editable", object, default.setting, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTextIterCanInsert <-
function(object, default.editability, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextIter")
	default.editability <- as.logical(default.editability)

	w <- .RGtkCall("S_gtk_text_iter_can_insert", object, default.editability, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTextIterStartsWord <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextIter")

	w <- .RGtkCall("S_gtk_text_iter_starts_word", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTextIterEndsWord <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextIter")

	w <- .RGtkCall("S_gtk_text_iter_ends_word", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTextIterInsideWord <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextIter")

	w <- .RGtkCall("S_gtk_text_iter_inside_word", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTextIterStartsSentence <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextIter")

	w <- .RGtkCall("S_gtk_text_iter_starts_sentence", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTextIterEndsSentence <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextIter")

	w <- .RGtkCall("S_gtk_text_iter_ends_sentence", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTextIterInsideSentence <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextIter")

	w <- .RGtkCall("S_gtk_text_iter_inside_sentence", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTextIterStartsLine <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextIter")

	w <- .RGtkCall("S_gtk_text_iter_starts_line", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTextIterEndsLine <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextIter")

	w <- .RGtkCall("S_gtk_text_iter_ends_line", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTextIterIsCursorPosition <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextIter")

	w <- .RGtkCall("S_gtk_text_iter_is_cursor_position", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTextIterGetCharsInLine <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextIter")

	w <- .RGtkCall("S_gtk_text_iter_get_chars_in_line", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTextIterGetBytesInLine <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextIter")

	w <- .RGtkCall("S_gtk_text_iter_get_bytes_in_line", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTextIterGetAttributes <-
function(object, values, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextIter")
	checkPtrType(values, "GtkTextAttributes")

	w <- .RGtkCall("S_gtk_text_iter_get_attributes", object, values, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTextIterGetLanguage <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextIter")

	w <- .RGtkCall("S_gtk_text_iter_get_language", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTextIterIsEnd <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextIter")

	w <- .RGtkCall("S_gtk_text_iter_is_end", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTextIterIsStart <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextIter")

	w <- .RGtkCall("S_gtk_text_iter_is_start", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTextIterForwardChar <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextIter")

	w <- .RGtkCall("S_gtk_text_iter_forward_char", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTextIterBackwardChar <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextIter")

	w <- .RGtkCall("S_gtk_text_iter_backward_char", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTextIterForwardChars <-
function(object, count, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextIter")
	count <- as.integer(count)

	w <- .RGtkCall("S_gtk_text_iter_forward_chars", object, count, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTextIterBackwardChars <-
function(object, count, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextIter")
	count <- as.integer(count)

	w <- .RGtkCall("S_gtk_text_iter_backward_chars", object, count, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTextIterForwardLine <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextIter")

	w <- .RGtkCall("S_gtk_text_iter_forward_line", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTextIterBackwardLine <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextIter")

	w <- .RGtkCall("S_gtk_text_iter_backward_line", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTextIterForwardLines <-
function(object, count, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextIter")
	count <- as.integer(count)

	w <- .RGtkCall("S_gtk_text_iter_forward_lines", object, count, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTextIterBackwardLines <-
function(object, count, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextIter")
	count <- as.integer(count)

	w <- .RGtkCall("S_gtk_text_iter_backward_lines", object, count, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTextIterForwardWordEnd <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextIter")

	w <- .RGtkCall("S_gtk_text_iter_forward_word_end", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTextIterBackwardWordStart <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextIter")

	w <- .RGtkCall("S_gtk_text_iter_backward_word_start", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTextIterForwardWordEnds <-
function(object, count, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextIter")
	count <- as.integer(count)

	w <- .RGtkCall("S_gtk_text_iter_forward_word_ends", object, count, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTextIterBackwardWordStarts <-
function(object, count, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextIter")
	count <- as.integer(count)

	w <- .RGtkCall("S_gtk_text_iter_backward_word_starts", object, count, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTextIterForwardVisibleLine <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextIter")

	w <- .RGtkCall("S_gtk_text_iter_forward_visible_line", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTextIterBackwardVisibleLine <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextIter")

	w <- .RGtkCall("S_gtk_text_iter_backward_visible_line", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTextIterForwardVisibleLines <-
function(object, count, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextIter")
	count <- as.integer(count)

	w <- .RGtkCall("S_gtk_text_iter_forward_visible_lines", object, count, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTextIterBackwardVisibleLines <-
function(object, count, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextIter")
	count <- as.integer(count)

	w <- .RGtkCall("S_gtk_text_iter_backward_visible_lines", object, count, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTextIterForwardVisibleWordEnd <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextIter")

	w <- .RGtkCall("S_gtk_text_iter_forward_visible_word_end", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTextIterBackwardVisibleWordStart <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextIter")

	w <- .RGtkCall("S_gtk_text_iter_backward_visible_word_start", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTextIterForwardVisibleWordEnds <-
function(object, count, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextIter")
	count <- as.integer(count)

	w <- .RGtkCall("S_gtk_text_iter_forward_visible_word_ends", object, count, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTextIterBackwardVisibleWordStarts <-
function(object, count, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextIter")
	count <- as.integer(count)

	w <- .RGtkCall("S_gtk_text_iter_backward_visible_word_starts", object, count, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTextIterForwardSentenceEnd <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextIter")

	w <- .RGtkCall("S_gtk_text_iter_forward_sentence_end", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTextIterBackwardSentenceStart <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextIter")

	w <- .RGtkCall("S_gtk_text_iter_backward_sentence_start", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTextIterForwardSentenceEnds <-
function(object, count, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextIter")
	count <- as.integer(count)

	w <- .RGtkCall("S_gtk_text_iter_forward_sentence_ends", object, count, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTextIterBackwardSentenceStarts <-
function(object, count, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextIter")
	count <- as.integer(count)

	w <- .RGtkCall("S_gtk_text_iter_backward_sentence_starts", object, count, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTextIterForwardCursorPosition <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextIter")

	w <- .RGtkCall("S_gtk_text_iter_forward_cursor_position", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTextIterBackwardCursorPosition <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextIter")

	w <- .RGtkCall("S_gtk_text_iter_backward_cursor_position", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTextIterForwardCursorPositions <-
function(object, count, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextIter")
	count <- as.integer(count)

	w <- .RGtkCall("S_gtk_text_iter_forward_cursor_positions", object, count, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTextIterBackwardCursorPositions <-
function(object, count, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextIter")
	count <- as.integer(count)

	w <- .RGtkCall("S_gtk_text_iter_backward_cursor_positions", object, count, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTextIterForwardVisibleCursorPosition <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextIter")

	w <- .RGtkCall("S_gtk_text_iter_forward_visible_cursor_position", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTextIterBackwardVisibleCursorPosition <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextIter")

	w <- .RGtkCall("S_gtk_text_iter_backward_visible_cursor_position", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTextIterForwardVisibleCursorPositions <-
function(object, count, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextIter")
	count <- as.integer(count)

	w <- .RGtkCall("S_gtk_text_iter_forward_visible_cursor_positions", object, count, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTextIterBackwardVisibleCursorPositions <-
function(object, count, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextIter")
	count <- as.integer(count)

	w <- .RGtkCall("S_gtk_text_iter_backward_visible_cursor_positions", object, count, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTextIterSetOffset <-
function(object, char.offset, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextIter")
	char.offset <- as.integer(char.offset)

	w <- .RGtkCall("S_gtk_text_iter_set_offset", object, char.offset, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTextIterSetLine <-
function(object, line.number, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextIter")
	line.number <- as.integer(line.number)

	w <- .RGtkCall("S_gtk_text_iter_set_line", object, line.number, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTextIterSetLineOffset <-
function(object, char.on.line, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextIter")
	char.on.line <- as.integer(char.on.line)

	w <- .RGtkCall("S_gtk_text_iter_set_line_offset", object, char.on.line, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTextIterSetLineIndex <-
function(object, byte.on.line, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextIter")
	byte.on.line <- as.integer(byte.on.line)

	w <- .RGtkCall("S_gtk_text_iter_set_line_index", object, byte.on.line, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTextIterForwardToEnd <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextIter")

	w <- .RGtkCall("S_gtk_text_iter_forward_to_end", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTextIterForwardToLineEnd <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextIter")

	w <- .RGtkCall("S_gtk_text_iter_forward_to_line_end", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTextIterSetVisibleLineOffset <-
function(object, char.on.line, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextIter")
	char.on.line <- as.integer(char.on.line)

	w <- .RGtkCall("S_gtk_text_iter_set_visible_line_offset", object, char.on.line, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTextIterSetVisibleLineIndex <-
function(object, byte.on.line, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextIter")
	byte.on.line <- as.integer(byte.on.line)

	w <- .RGtkCall("S_gtk_text_iter_set_visible_line_index", object, byte.on.line, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTextIterForwardToTagToggle <-
function(object, tag = NULL, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextIter")
	if (!is.null( tag )) checkPtrType(tag, "GtkTextTag")

	w <- .RGtkCall("S_gtk_text_iter_forward_to_tag_toggle", object, tag, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTextIterBackwardToTagToggle <-
function(object, tag = NULL, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextIter")
	if (!is.null( tag )) checkPtrType(tag, "GtkTextTag")

	w <- .RGtkCall("S_gtk_text_iter_backward_to_tag_toggle", object, tag, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTextIterForwardFindChar <-
function(object, pred, user.data = NULL, limit, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextIter")
	pred <- as.function(pred)
	
	checkPtrType(limit, "GtkTextIter")

	w <- .RGtkCall("S_gtk_text_iter_forward_find_char", object, pred, user.data, limit, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTextIterBackwardFindChar <-
function(object, pred, user.data = NULL, limit, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextIter")
	pred <- as.function(pred)
	
	checkPtrType(limit, "GtkTextIter")

	w <- .RGtkCall("S_gtk_text_iter_backward_find_char", object, pred, user.data, limit, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTextIterForwardSearch <-
function(object, str, flags, limit = NULL, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextIter")
	str <- as.character(str)
	
	if (!is.null( limit )) checkPtrType(limit, "GtkTextIter")

	w <- .RGtkCall("S_gtk_text_iter_forward_search", object, str, flags, limit, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTextIterBackwardSearch <-
function(object, str, flags, limit = NULL, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextIter")
	str <- as.character(str)
	
	if (!is.null( limit )) checkPtrType(limit, "GtkTextIter")

	w <- .RGtkCall("S_gtk_text_iter_backward_search", object, str, flags, limit, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTextIterEqual <-
function(object, rhs, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextIter")
	checkPtrType(rhs, "GtkTextIter")

	w <- .RGtkCall("S_gtk_text_iter_equal", object, rhs, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTextIterCompare <-
function(object, rhs, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextIter")
	checkPtrType(rhs, "GtkTextIter")

	w <- .RGtkCall("S_gtk_text_iter_compare", object, rhs, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTextIterInRange <-
function(object, start, end, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextIter")
	checkPtrType(start, "GtkTextIter")
	checkPtrType(end, "GtkTextIter")

	w <- .RGtkCall("S_gtk_text_iter_in_range", object, start, end, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTextIterOrder <-
function(object, second, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextIter")
	checkPtrType(second, "GtkTextIter")

	w <- .RGtkCall("S_gtk_text_iter_order", object, second, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTextMarkGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_text_mark_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTextMarkSetVisible <-
function(object, setting, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextMark")
	setting <- as.logical(setting)

	w <- .RGtkCall("S_gtk_text_mark_set_visible", object, setting, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTextMarkGetVisible <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextMark")

	w <- .RGtkCall("S_gtk_text_mark_get_visible", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTextMarkGetName <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextMark")

	w <- .RGtkCall("S_gtk_text_mark_get_name", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTextMarkGetDeleted <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextMark")

	w <- .RGtkCall("S_gtk_text_mark_get_deleted", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTextMarkGetBuffer <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextMark")

	w <- .RGtkCall("S_gtk_text_mark_get_buffer", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTextMarkGetLeftGravity <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextMark")

	w <- .RGtkCall("S_gtk_text_mark_get_left_gravity", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTextTagGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_text_tag_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTextTagNew <-
function(name = NULL, .flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_text_tag_new", name, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTextTagGetPriority <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextTag")

	w <- .RGtkCall("S_gtk_text_tag_get_priority", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTextTagSetPriority <-
function(object, priority, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextTag")
	priority <- as.integer(priority)

	w <- .RGtkCall("S_gtk_text_tag_set_priority", object, priority, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTextTagEvent <-
function(object, event.object, event, iter, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextTag")
	checkPtrType(event.object, "GObject")
	checkPtrType(event, "GdkEvent")
	checkPtrType(iter, "GtkTextIter")

	w <- .RGtkCall("S_gtk_text_tag_event", object, event.object, event, iter, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTextAttributesNew <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_text_attributes_new", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTextAttributesCopy <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextAttributes")

	w <- .RGtkCall("S_gtk_text_attributes_copy", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTextAttributesCopyValues <-
function(object, dest, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextAttributes")
	checkPtrType(dest, "GtkTextAttributes")

	w <- .RGtkCall("S_gtk_text_attributes_copy_values", object, dest, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTextAttributesUnref <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextAttributes")

	w <- .RGtkCall("S_gtk_text_attributes_unref", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTextAttributesRef <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextAttributes")

	w <- .RGtkCall("S_gtk_text_attributes_ref", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTextAttributesGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_text_attributes_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTextTagTableGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_text_tag_table_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTextTagTableNew <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_text_tag_table_new", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTextTagTableAdd <-
function(object, tag, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextTagTable")
	checkPtrType(tag, "GtkTextTag")

	w <- .RGtkCall("S_gtk_text_tag_table_add", object, tag, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTextTagTableRemove <-
function(object, tag, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextTagTable")
	checkPtrType(tag, "GtkTextTag")

	w <- .RGtkCall("S_gtk_text_tag_table_remove", object, tag, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTextTagTableLookup <-
function(object, name, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextTagTable")
	name <- as.character(name)

	w <- .RGtkCall("S_gtk_text_tag_table_lookup", object, name, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTextTagTableForeach <-
function(object, func, data = NULL, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextTagTable")
	func <- as.function(func)
	

	w <- .RGtkCall("S_gtk_text_tag_table_foreach", object, func, data, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTextTagTableGetSize <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextTagTable")

	w <- .RGtkCall("S_gtk_text_tag_table_get_size", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTextViewGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_text_view_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTextViewNew <-
function(show = TRUE, .flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_text_view_new", PACKAGE = "RGtk2", .flush = .flush)

	if(show)
		gtkWidgetShowAll(w)

	return(w)
} 


gtkTextViewNewWithBuffer <-
function(buffer = NULL, show = TRUE, .flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_text_view_new_with_buffer", buffer, PACKAGE = "RGtk2", .flush = .flush)

	if(show)
		gtkWidgetShowAll(w)

	return(w)
} 


gtkTextViewSetBuffer <-
function(object, buffer, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextView")
	checkPtrType(buffer, "GtkTextBuffer")

	w <- .RGtkCall("S_gtk_text_view_set_buffer", object, buffer, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTextViewGetBuffer <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextView")

	w <- .RGtkCall("S_gtk_text_view_get_buffer", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTextViewScrollToIter <-
function(object, iter, within.margin, use.align = "FALSE", xalign = "0.5", yalign = "0.5", .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextView")
	checkPtrType(iter, "GtkTextIter")
	within.margin <- as.numeric(within.margin)
	use.align <- as.logical(use.align)
	xalign <- as.numeric(xalign)
	yalign <- as.numeric(yalign)

	w <- .RGtkCall("S_gtk_text_view_scroll_to_iter", object, iter, within.margin, use.align, xalign, yalign, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTextViewScrollToMark <-
function(object, mark, within.margin, use.align = "FALSE", xalign = "0.5", yalign = "0.5", .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextView")
	checkPtrType(mark, "GtkTextMark")
	within.margin <- as.numeric(within.margin)
	use.align <- as.logical(use.align)
	xalign <- as.numeric(xalign)
	yalign <- as.numeric(yalign)

	w <- .RGtkCall("S_gtk_text_view_scroll_to_mark", object, mark, within.margin, use.align, xalign, yalign, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTextViewScrollMarkOnscreen <-
function(object, mark, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextView")
	checkPtrType(mark, "GtkTextMark")

	w <- .RGtkCall("S_gtk_text_view_scroll_mark_onscreen", object, mark, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTextViewMoveMarkOnscreen <-
function(object, mark, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextView")
	checkPtrType(mark, "GtkTextMark")

	w <- .RGtkCall("S_gtk_text_view_move_mark_onscreen", object, mark, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTextViewPlaceCursorOnscreen <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextView")

	w <- .RGtkCall("S_gtk_text_view_place_cursor_onscreen", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTextViewGetVisibleRect <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextView")

	w <- .RGtkCall("S_gtk_text_view_get_visible_rect", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTextViewSetCursorVisible <-
function(object, setting, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextView")
	setting <- as.logical(setting)

	w <- .RGtkCall("S_gtk_text_view_set_cursor_visible", object, setting, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTextViewGetCursorVisible <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextView")

	w <- .RGtkCall("S_gtk_text_view_get_cursor_visible", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTextViewGetIterLocation <-
function(object, iter, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextView")
	checkPtrType(iter, "GtkTextIter")

	w <- .RGtkCall("S_gtk_text_view_get_iter_location", object, iter, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTextViewGetIterAtLocation <-
function(object, x, y, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextView")
	x <- as.integer(x)
	y <- as.integer(y)

	w <- .RGtkCall("S_gtk_text_view_get_iter_at_location", object, x, y, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTextViewGetIterAtPosition <-
function(object, x, y, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextView")
	x <- as.integer(x)
	y <- as.integer(y)

	w <- .RGtkCall("S_gtk_text_view_get_iter_at_position", object, x, y, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTextViewGetLineYrange <-
function(object, iter, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextView")
	checkPtrType(iter, "GtkTextIter")

	w <- .RGtkCall("S_gtk_text_view_get_line_yrange", object, iter, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTextViewGetLineAtY <-
function(object, y, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextView")
	y <- as.integer(y)

	w <- .RGtkCall("S_gtk_text_view_get_line_at_y", object, y, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTextViewBufferToWindowCoords <-
function(object, win, buffer.x, buffer.y, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextView")
	
	buffer.x <- as.integer(buffer.x)
	buffer.y <- as.integer(buffer.y)

	w <- .RGtkCall("S_gtk_text_view_buffer_to_window_coords", object, win, buffer.x, buffer.y, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTextViewWindowToBufferCoords <-
function(object, win, window.x, window.y, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextView")
	
	window.x <- as.integer(window.x)
	window.y <- as.integer(window.y)

	w <- .RGtkCall("S_gtk_text_view_window_to_buffer_coords", object, win, window.x, window.y, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTextViewGetWindow <-
function(object, win, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextView")
	

	w <- .RGtkCall("S_gtk_text_view_get_window", object, win, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTextViewGetWindowType <-
function(object, window, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextView")
	checkPtrType(window, "GdkWindow")

	w <- .RGtkCall("S_gtk_text_view_get_window_type", object, window, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTextViewSetBorderWindowSize <-
function(object, type, size, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextView")
	
	size <- as.integer(size)

	w <- .RGtkCall("S_gtk_text_view_set_border_window_size", object, type, size, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTextViewGetBorderWindowSize <-
function(object, type, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextView")
	

	w <- .RGtkCall("S_gtk_text_view_get_border_window_size", object, type, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTextViewForwardDisplayLine <-
function(object, iter, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextView")
	checkPtrType(iter, "GtkTextIter")

	w <- .RGtkCall("S_gtk_text_view_forward_display_line", object, iter, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTextViewBackwardDisplayLine <-
function(object, iter, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextView")
	checkPtrType(iter, "GtkTextIter")

	w <- .RGtkCall("S_gtk_text_view_backward_display_line", object, iter, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTextViewForwardDisplayLineEnd <-
function(object, iter, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextView")
	checkPtrType(iter, "GtkTextIter")

	w <- .RGtkCall("S_gtk_text_view_forward_display_line_end", object, iter, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTextViewBackwardDisplayLineStart <-
function(object, iter, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextView")
	checkPtrType(iter, "GtkTextIter")

	w <- .RGtkCall("S_gtk_text_view_backward_display_line_start", object, iter, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTextViewStartsDisplayLine <-
function(object, iter, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextView")
	checkPtrType(iter, "GtkTextIter")

	w <- .RGtkCall("S_gtk_text_view_starts_display_line", object, iter, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTextViewMoveVisually <-
function(object, iter, count, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextView")
	checkPtrType(iter, "GtkTextIter")
	count <- as.integer(count)

	w <- .RGtkCall("S_gtk_text_view_move_visually", object, iter, count, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTextViewAddChildAtAnchor <-
function(object, child, anchor, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextView")
	checkPtrType(child, "GtkWidget")
	checkPtrType(anchor, "GtkTextChildAnchor")

	w <- .RGtkCall("S_gtk_text_view_add_child_at_anchor", object, child, anchor, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTextViewAddChildInWindow <-
function(object, child, which.window, xpos, ypos, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextView")
	checkPtrType(child, "GtkWidget")
	
	xpos <- as.integer(xpos)
	ypos <- as.integer(ypos)

	w <- .RGtkCall("S_gtk_text_view_add_child_in_window", object, child, which.window, xpos, ypos, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTextViewMoveChild <-
function(object, child, xpos, ypos, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextView")
	checkPtrType(child, "GtkWidget")
	xpos <- as.integer(xpos)
	ypos <- as.integer(ypos)

	w <- .RGtkCall("S_gtk_text_view_move_child", object, child, xpos, ypos, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTextViewSetWrapMode <-
function(object, wrap.mode, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextView")
	

	w <- .RGtkCall("S_gtk_text_view_set_wrap_mode", object, wrap.mode, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTextViewGetWrapMode <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextView")

	w <- .RGtkCall("S_gtk_text_view_get_wrap_mode", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTextViewSetEditable <-
function(object, setting, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextView")
	setting <- as.logical(setting)

	w <- .RGtkCall("S_gtk_text_view_set_editable", object, setting, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTextViewGetEditable <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextView")

	w <- .RGtkCall("S_gtk_text_view_get_editable", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTextViewSetOverwrite <-
function(object, overwrite, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextView")
	overwrite <- as.logical(overwrite)

	w <- .RGtkCall("S_gtk_text_view_set_overwrite", object, overwrite, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTextViewGetOverwrite <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextView")

	w <- .RGtkCall("S_gtk_text_view_get_overwrite", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTextViewSetAcceptsTab <-
function(object, accepts.tab, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextView")
	accepts.tab <- as.logical(accepts.tab)

	w <- .RGtkCall("S_gtk_text_view_set_accepts_tab", object, accepts.tab, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTextViewGetAcceptsTab <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextView")

	w <- .RGtkCall("S_gtk_text_view_get_accepts_tab", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTextViewSetPixelsAboveLines <-
function(object, pixels.above.lines, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextView")
	pixels.above.lines <- as.integer(pixels.above.lines)

	w <- .RGtkCall("S_gtk_text_view_set_pixels_above_lines", object, pixels.above.lines, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTextViewGetPixelsAboveLines <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextView")

	w <- .RGtkCall("S_gtk_text_view_get_pixels_above_lines", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTextViewSetPixelsBelowLines <-
function(object, pixels.below.lines, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextView")
	pixels.below.lines <- as.integer(pixels.below.lines)

	w <- .RGtkCall("S_gtk_text_view_set_pixels_below_lines", object, pixels.below.lines, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTextViewGetPixelsBelowLines <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextView")

	w <- .RGtkCall("S_gtk_text_view_get_pixels_below_lines", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTextViewSetPixelsInsideWrap <-
function(object, pixels.inside.wrap, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextView")
	pixels.inside.wrap <- as.integer(pixels.inside.wrap)

	w <- .RGtkCall("S_gtk_text_view_set_pixels_inside_wrap", object, pixels.inside.wrap, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTextViewGetPixelsInsideWrap <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextView")

	w <- .RGtkCall("S_gtk_text_view_get_pixels_inside_wrap", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTextViewSetJustification <-
function(object, justification, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextView")
	

	w <- .RGtkCall("S_gtk_text_view_set_justification", object, justification, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTextViewGetJustification <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextView")

	w <- .RGtkCall("S_gtk_text_view_get_justification", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTextViewSetLeftMargin <-
function(object, left.margin, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextView")
	left.margin <- as.integer(left.margin)

	w <- .RGtkCall("S_gtk_text_view_set_left_margin", object, left.margin, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTextViewGetLeftMargin <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextView")

	w <- .RGtkCall("S_gtk_text_view_get_left_margin", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTextViewSetRightMargin <-
function(object, right.margin, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextView")
	right.margin <- as.integer(right.margin)

	w <- .RGtkCall("S_gtk_text_view_set_right_margin", object, right.margin, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTextViewGetRightMargin <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextView")

	w <- .RGtkCall("S_gtk_text_view_get_right_margin", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTextViewSetIndent <-
function(object, indent, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextView")
	indent <- as.integer(indent)

	w <- .RGtkCall("S_gtk_text_view_set_indent", object, indent, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTextViewGetIndent <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextView")

	w <- .RGtkCall("S_gtk_text_view_get_indent", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTextViewSetTabs <-
function(object, tabs, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextView")
	checkPtrType(tabs, "PangoTabArray")

	w <- .RGtkCall("S_gtk_text_view_set_tabs", object, tabs, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTextViewGetTabs <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextView")

	w <- .RGtkCall("S_gtk_text_view_get_tabs", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTextViewGetDefaultAttributes <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTextView")

	w <- .RGtkCall("S_gtk_text_view_get_default_attributes", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTipsQueryGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_tips_query_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTipsQueryNew <-
function(show = TRUE, .flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_tips_query_new", PACKAGE = "RGtk2", .flush = .flush)

	if(show)
		gtkWidgetShowAll(w)

	return(w)
} 


gtkTipsQueryStartQuery <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTipsQuery")

	w <- .RGtkCall("S_gtk_tips_query_start_query", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTipsQueryStopQuery <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTipsQuery")

	w <- .RGtkCall("S_gtk_tips_query_stop_query", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTipsQuerySetCaller <-
function(object, caller, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTipsQuery")
	checkPtrType(caller, "GtkWidget")

	w <- .RGtkCall("S_gtk_tips_query_set_caller", object, caller, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTipsQuerySetLabels <-
function(object, label.inactive, label.no.tip, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTipsQuery")
	label.inactive <- as.character(label.inactive)
	label.no.tip <- as.character(label.no.tip)

	w <- .RGtkCall("S_gtk_tips_query_set_labels", object, label.inactive, label.no.tip, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkToggleActionGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_toggle_action_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkToggleActionNew <-
function(name = NULL, label = NULL, tooltip = NULL, stock.id = NULL, .flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_toggle_action_new", name, label, tooltip, stock.id, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkToggleActionToggled <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkToggleAction")

	w <- .RGtkCall("S_gtk_toggle_action_toggled", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkToggleActionSetActive <-
function(object, is.active, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkToggleAction")
	is.active <- as.logical(is.active)

	w <- .RGtkCall("S_gtk_toggle_action_set_active", object, is.active, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkToggleActionGetActive <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkToggleAction")

	w <- .RGtkCall("S_gtk_toggle_action_get_active", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkToggleActionSetDrawAsRadio <-
function(object, draw.as.radio, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkToggleAction")
	draw.as.radio <- as.logical(draw.as.radio)

	w <- .RGtkCall("S_gtk_toggle_action_set_draw_as_radio", object, draw.as.radio, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkToggleActionGetDrawAsRadio <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkToggleAction")

	w <- .RGtkCall("S_gtk_toggle_action_get_draw_as_radio", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkToggleButtonGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_toggle_button_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkToggleButtonNew <-
function(show = TRUE, .flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_toggle_button_new", PACKAGE = "RGtk2", .flush = .flush)

	if(show)
		gtkWidgetShowAll(w)

	return(w)
} 


gtkToggleButtonNewWithLabel <-
function(label, show = TRUE, .flush = TRUE, .depwarn = TRUE)
{
	label <- as.character(label)

	w <- .RGtkCall("S_gtk_toggle_button_new_with_label", label, PACKAGE = "RGtk2", .flush = .flush)

	if(show)
		gtkWidgetShowAll(w)

	return(w)
} 


gtkToggleButtonNewWithMnemonic <-
function(label, show = TRUE, .flush = TRUE, .depwarn = TRUE)
{
	label <- as.character(label)

	w <- .RGtkCall("S_gtk_toggle_button_new_with_mnemonic", label, PACKAGE = "RGtk2", .flush = .flush)

	if(show)
		gtkWidgetShowAll(w)

	return(w)
} 


gtkToggleButtonSetMode <-
function(object, draw.indicator, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkToggleButton")
	draw.indicator <- as.logical(draw.indicator)

	w <- .RGtkCall("S_gtk_toggle_button_set_mode", object, draw.indicator, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkToggleButtonGetMode <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkToggleButton")

	w <- .RGtkCall("S_gtk_toggle_button_get_mode", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkToggleButtonSetActive <-
function(object, is.active, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkToggleButton")
	is.active <- as.logical(is.active)

	w <- .RGtkCall("S_gtk_toggle_button_set_active", object, is.active, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkToggleButtonGetActive <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkToggleButton")

	w <- .RGtkCall("S_gtk_toggle_button_get_active", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkToggleButtonToggled <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkToggleButton")

	w <- .RGtkCall("S_gtk_toggle_button_toggled", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkToggleButtonSetInconsistent <-
function(object, setting, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkToggleButton")
	setting <- as.logical(setting)

	w <- .RGtkCall("S_gtk_toggle_button_set_inconsistent", object, setting, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkToggleButtonGetInconsistent <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkToggleButton")

	w <- .RGtkCall("S_gtk_toggle_button_get_inconsistent", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkToggleButtonSetState <-
function(object, is.active, .flush = TRUE, .depwarn = TRUE)
{
	if (.depwarn)
		warning("This function is deprecated: use GtkToggleButton.set_active")

	checkPtrType(object, "GtkToggleButton")
	is.active <- as.logical(is.active)

	w <- .RGtkCall("S_gtk_toggle_button_set_state", object, is.active, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkToggleToolButtonGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_toggle_tool_button_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkToggleToolButtonNew <-
function(show = TRUE, .flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_toggle_tool_button_new", PACKAGE = "RGtk2", .flush = .flush)

	if(show)
		gtkWidgetShowAll(w)

	return(w)
} 


gtkToggleToolButtonNewFromStock <-
function(stock.id, .flush = TRUE, .depwarn = TRUE)
{
	stock.id <- as.character(stock.id)

	w <- .RGtkCall("S_gtk_toggle_tool_button_new_from_stock", stock.id, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkToggleToolButtonSetActive <-
function(object, is.active, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkToggleToolButton")
	is.active <- as.logical(is.active)

	w <- .RGtkCall("S_gtk_toggle_tool_button_set_active", object, is.active, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkToggleToolButtonGetActive <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkToggleToolButton")

	w <- .RGtkCall("S_gtk_toggle_tool_button_get_active", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkToolbarGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_toolbar_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkToolbarNew <-
function(show = TRUE, .flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_toolbar_new", PACKAGE = "RGtk2", .flush = .flush)

	if(show)
		gtkWidgetShowAll(w)

	return(w)
} 


gtkToolbarInsert <-
function(object, item, pos, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkToolbar")
	checkPtrType(item, "GtkToolItem")
	pos <- as.integer(pos)

	w <- .RGtkCall("S_gtk_toolbar_insert", object, item, pos, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkToolbarGetItemIndex <-
function(object, item, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkToolbar")
	checkPtrType(item, "GtkToolItem")

	w <- .RGtkCall("S_gtk_toolbar_get_item_index", object, item, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkToolbarGetNItems <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkToolbar")

	w <- .RGtkCall("S_gtk_toolbar_get_n_items", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkToolbarGetNthItem <-
function(object, n, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkToolbar")
	n <- as.integer(n)

	w <- .RGtkCall("S_gtk_toolbar_get_nth_item", object, n, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkToolbarGetDropIndex <-
function(object, x, y, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkToolbar")
	x <- as.integer(x)
	y <- as.integer(y)

	w <- .RGtkCall("S_gtk_toolbar_get_drop_index", object, x, y, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkToolbarSetDropHighlightItem <-
function(object, tool.item = NULL, index, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkToolbar")
	if (!is.null( tool.item )) checkPtrType(tool.item, "GtkToolItem")
	index <- as.integer(index)

	w <- .RGtkCall("S_gtk_toolbar_set_drop_highlight_item", object, tool.item, index, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkToolbarSetShowArrow <-
function(object, show.arrow, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkToolbar")
	show.arrow <- as.logical(show.arrow)

	w <- .RGtkCall("S_gtk_toolbar_set_show_arrow", object, show.arrow, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkToolbarGetShowArrow <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkToolbar")

	w <- .RGtkCall("S_gtk_toolbar_get_show_arrow", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkToolbarGetReliefStyle <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkToolbar")

	w <- .RGtkCall("S_gtk_toolbar_get_relief_style", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkToolbarAppendSpace <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkToolbar")

	w <- .RGtkCall("S_gtk_toolbar_append_space", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkToolbarPrependSpace <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkToolbar")

	w <- .RGtkCall("S_gtk_toolbar_prepend_space", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkToolbarInsertSpace <-
function(object, position, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkToolbar")
	position <- as.integer(position)

	w <- .RGtkCall("S_gtk_toolbar_insert_space", object, position, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkToolbarRemoveSpace <-
function(object, position, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkToolbar")
	position <- as.integer(position)

	w <- .RGtkCall("S_gtk_toolbar_remove_space", object, position, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkToolbarAppendWidget <-
function(object, widget, tooltip.text = NULL, tooltip.private.text = NULL, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkToolbar")
	checkPtrType(widget, "GtkWidget")
	if (!is.null( tooltip.text )) tooltip.text <- as.character(tooltip.text)
	if (!is.null( tooltip.private.text )) tooltip.private.text <- as.character(tooltip.private.text)

	w <- .RGtkCall("S_gtk_toolbar_append_widget", object, widget, tooltip.text, tooltip.private.text, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkToolbarPrependWidget <-
function(object, widget, tooltip.text = NULL, tooltip.private.text = NULL, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkToolbar")
	checkPtrType(widget, "GtkWidget")
	if (!is.null( tooltip.text )) tooltip.text <- as.character(tooltip.text)
	if (!is.null( tooltip.private.text )) tooltip.private.text <- as.character(tooltip.private.text)

	w <- .RGtkCall("S_gtk_toolbar_prepend_widget", object, widget, tooltip.text, tooltip.private.text, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkToolbarInsertWidget <-
function(object, widget, tooltip.text = NULL, tooltip.private.text = NULL, position, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkToolbar")
	checkPtrType(widget, "GtkWidget")
	if (!is.null( tooltip.text )) tooltip.text <- as.character(tooltip.text)
	if (!is.null( tooltip.private.text )) tooltip.private.text <- as.character(tooltip.private.text)
	position <- as.integer(position)

	w <- .RGtkCall("S_gtk_toolbar_insert_widget", object, widget, tooltip.text, tooltip.private.text, position, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkToolbarSetOrientation <-
function(object, orientation, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkToolbar")
	

	w <- .RGtkCall("S_gtk_toolbar_set_orientation", object, orientation, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkToolbarSetStyle <-
function(object, style, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkToolbar")
	

	w <- .RGtkCall("S_gtk_toolbar_set_style", object, style, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkToolbarSetIconSize <-
function(object, icon.size, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkToolbar")
	

	w <- .RGtkCall("S_gtk_toolbar_set_icon_size", object, icon.size, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkToolbarSetTooltips <-
function(object, enable, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkToolbar")
	enable <- as.logical(enable)

	w <- .RGtkCall("S_gtk_toolbar_set_tooltips", object, enable, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkToolbarUnsetStyle <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkToolbar")

	w <- .RGtkCall("S_gtk_toolbar_unset_style", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkToolbarUnsetIconSize <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkToolbar")

	w <- .RGtkCall("S_gtk_toolbar_unset_icon_size", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkToolbarGetOrientation <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkToolbar")

	w <- .RGtkCall("S_gtk_toolbar_get_orientation", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkToolbarGetStyle <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkToolbar")

	w <- .RGtkCall("S_gtk_toolbar_get_style", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkToolbarGetIconSize <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkToolbar")

	w <- .RGtkCall("S_gtk_toolbar_get_icon_size", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkToolbarGetTooltips <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkToolbar")

	w <- .RGtkCall("S_gtk_toolbar_get_tooltips", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkToolButtonGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_tool_button_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkToolButtonNew <-
function(icon.widget = "NULL", label = "NULL", show = TRUE, .flush = TRUE, .depwarn = TRUE)
{
	if (!is.null( icon.widget )) checkPtrType(icon.widget, "GtkWidget")
	if (!is.null( label )) label <- as.character(label)

	w <- .RGtkCall("S_gtk_tool_button_new", icon.widget, label, PACKAGE = "RGtk2", .flush = .flush)

	if(show)
		gtkWidgetShowAll(w)

	return(w)
} 


gtkToolButtonNewFromStock <-
function(stock.id, .flush = TRUE, .depwarn = TRUE)
{
	stock.id <- as.character(stock.id)

	w <- .RGtkCall("S_gtk_tool_button_new_from_stock", stock.id, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkToolButtonSetLabel <-
function(object, label = NULL, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkToolButton")
	if (!is.null( label )) label <- as.character(label)

	w <- .RGtkCall("S_gtk_tool_button_set_label", object, label, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkToolButtonGetLabel <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkToolButton")

	w <- .RGtkCall("S_gtk_tool_button_get_label", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkToolButtonSetUseUnderline <-
function(object, use.underline, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkToolButton")
	use.underline <- as.logical(use.underline)

	w <- .RGtkCall("S_gtk_tool_button_set_use_underline", object, use.underline, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkToolButtonGetUseUnderline <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkToolButton")

	w <- .RGtkCall("S_gtk_tool_button_get_use_underline", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkToolButtonSetStockId <-
function(object, stock.id = NULL, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkToolButton")
	if (!is.null( stock.id )) stock.id <- as.character(stock.id)

	w <- .RGtkCall("S_gtk_tool_button_set_stock_id", object, stock.id, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkToolButtonSetIconName <-
function(object, icon.name, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkToolButton")
	icon.name <- as.character(icon.name)

	w <- .RGtkCall("S_gtk_tool_button_set_icon_name", object, icon.name, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkToolButtonGetIconName <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkToolButton")

	w <- .RGtkCall("S_gtk_tool_button_get_icon_name", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkToolButtonGetStockId <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkToolButton")

	w <- .RGtkCall("S_gtk_tool_button_get_stock_id", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkToolButtonSetIconWidget <-
function(object, icon.widget = NULL, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkToolButton")
	if (!is.null( icon.widget )) checkPtrType(icon.widget, "GtkWidget")

	w <- .RGtkCall("S_gtk_tool_button_set_icon_widget", object, icon.widget, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkToolButtonGetIconWidget <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkToolButton")

	w <- .RGtkCall("S_gtk_tool_button_get_icon_widget", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkToolButtonSetLabelWidget <-
function(object, label.widget = NULL, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkToolButton")
	if (!is.null( label.widget )) checkPtrType(label.widget, "GtkWidget")

	w <- .RGtkCall("S_gtk_tool_button_set_label_widget", object, label.widget, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkToolButtonGetLabelWidget <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkToolButton")

	w <- .RGtkCall("S_gtk_tool_button_get_label_widget", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkToolItemGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_tool_item_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkToolItemNew <-
function(show = TRUE, .flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_tool_item_new", PACKAGE = "RGtk2", .flush = .flush)

	if(show)
		gtkWidgetShowAll(w)

	return(w)
} 


gtkToolItemSetHomogeneous <-
function(object, homogeneous, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkToolItem")
	homogeneous <- as.logical(homogeneous)

	w <- .RGtkCall("S_gtk_tool_item_set_homogeneous", object, homogeneous, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkToolItemGetHomogeneous <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkToolItem")

	w <- .RGtkCall("S_gtk_tool_item_get_homogeneous", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkToolItemSetExpand <-
function(object, expand, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkToolItem")
	expand <- as.logical(expand)

	w <- .RGtkCall("S_gtk_tool_item_set_expand", object, expand, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkToolItemGetExpand <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkToolItem")

	w <- .RGtkCall("S_gtk_tool_item_get_expand", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkToolItemSetTooltip <-
function(object, tooltips, tip.text = "NULL", tip.private = "NULL", .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkToolItem")
	checkPtrType(tooltips, "GtkTooltips")
	if (!is.null( tip.text )) tip.text <- as.character(tip.text)
	if (!is.null( tip.private )) tip.private <- as.character(tip.private)

	w <- .RGtkCall("S_gtk_tool_item_set_tooltip", object, tooltips, tip.text, tip.private, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkToolItemSetUseDragWindow <-
function(object, use.drag.window, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkToolItem")
	use.drag.window <- as.logical(use.drag.window)

	w <- .RGtkCall("S_gtk_tool_item_set_use_drag_window", object, use.drag.window, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkToolItemGetUseDragWindow <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkToolItem")

	w <- .RGtkCall("S_gtk_tool_item_get_use_drag_window", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkToolItemSetVisibleHorizontal <-
function(object, visible.horizontal, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkToolItem")
	visible.horizontal <- as.logical(visible.horizontal)

	w <- .RGtkCall("S_gtk_tool_item_set_visible_horizontal", object, visible.horizontal, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkToolItemGetVisibleHorizontal <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkToolItem")

	w <- .RGtkCall("S_gtk_tool_item_get_visible_horizontal", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkToolItemSetVisibleVertical <-
function(object, visible.vertical, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkToolItem")
	visible.vertical <- as.logical(visible.vertical)

	w <- .RGtkCall("S_gtk_tool_item_set_visible_vertical", object, visible.vertical, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkToolItemGetVisibleVertical <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkToolItem")

	w <- .RGtkCall("S_gtk_tool_item_get_visible_vertical", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkToolItemSetIsImportant <-
function(object, is.important, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkToolItem")
	is.important <- as.logical(is.important)

	w <- .RGtkCall("S_gtk_tool_item_set_is_important", object, is.important, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkToolItemGetIsImportant <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkToolItem")

	w <- .RGtkCall("S_gtk_tool_item_get_is_important", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkToolItemGetIconSize <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkToolItem")

	w <- .RGtkCall("S_gtk_tool_item_get_icon_size", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkToolItemGetOrientation <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkToolItem")

	w <- .RGtkCall("S_gtk_tool_item_get_orientation", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkToolItemGetToolbarStyle <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkToolItem")

	w <- .RGtkCall("S_gtk_tool_item_get_toolbar_style", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkToolItemGetReliefStyle <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkToolItem")

	w <- .RGtkCall("S_gtk_tool_item_get_relief_style", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkToolItemRetrieveProxyMenuItem <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkToolItem")

	w <- .RGtkCall("S_gtk_tool_item_retrieve_proxy_menu_item", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkToolItemSetProxyMenuItem <-
function(object, menu.item.id, menu.item = NULL, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkToolItem")
	menu.item.id <- as.character(menu.item.id)
	if (!is.null( menu.item )) checkPtrType(menu.item, "GtkWidget")

	w <- .RGtkCall("S_gtk_tool_item_set_proxy_menu_item", object, menu.item.id, menu.item, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkToolItemGetProxyMenuItem <-
function(object, menu.item.id, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkToolItem")
	menu.item.id <- as.character(menu.item.id)

	w <- .RGtkCall("S_gtk_tool_item_get_proxy_menu_item", object, menu.item.id, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkToolItemRebuildMenu <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkToolItem")

	w <- .RGtkCall("S_gtk_tool_item_rebuild_menu", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTooltipsGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_tooltips_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTooltipsNew <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_tooltips_new", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTooltipsEnable <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTooltips")

	w <- .RGtkCall("S_gtk_tooltips_enable", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTooltipsDisable <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTooltips")

	w <- .RGtkCall("S_gtk_tooltips_disable", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTooltipsSetDelay <-
function(object, delay, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTooltips")
	delay <- as.numeric(delay)

	w <- .RGtkCall("S_gtk_tooltips_set_delay", object, delay, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTooltipsSetTip <-
function(object, widget, tip.text = NULL, tip.private = "NULL", .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTooltips")
	checkPtrType(widget, "GtkWidget")
	if (!is.null( tip.text )) tip.text <- as.character(tip.text)
	if (!is.null( tip.private )) tip.private <- as.character(tip.private)

	w <- .RGtkCall("S_gtk_tooltips_set_tip", object, widget, tip.text, tip.private, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTooltipsDataGet <-
function(widget, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(widget, "GtkWidget")

	w <- .RGtkCall("S_gtk_tooltips_data_get", widget, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTooltipsForceWindow <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTooltips")

	w <- .RGtkCall("S_gtk_tooltips_force_window", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTooltipsGetInfoFromTipWindow <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWindow")

	w <- .RGtkCall("S_gtk_tooltips_get_info_from_tip_window", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTreeDragSourceGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_tree_drag_source_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTreeDragSourceRowDraggable <-
function(object, path, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeDragSource")
	checkPtrType(path, "GtkTreePath")

	w <- .RGtkCall("S_gtk_tree_drag_source_row_draggable", object, path, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTreeDragSourceDragDataDelete <-
function(object, path, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeDragSource")
	checkPtrType(path, "GtkTreePath")

	w <- .RGtkCall("S_gtk_tree_drag_source_drag_data_delete", object, path, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTreeDragSourceDragDataGet <-
function(object, path, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeDragSource")
	checkPtrType(path, "GtkTreePath")

	w <- .RGtkCall("S_gtk_tree_drag_source_drag_data_get", object, path, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTreeDragDestGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_tree_drag_dest_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTreeDragDestDragDataReceived <-
function(object, dest, selection.data, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeDragDest")
	checkPtrType(dest, "GtkTreePath")
	checkPtrType(selection.data, "GtkSelectionData")

	w <- .RGtkCall("S_gtk_tree_drag_dest_drag_data_received", object, dest, selection.data, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTreeDragDestRowDropPossible <-
function(object, dest.path, selection.data, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeDragDest")
	checkPtrType(dest.path, "GtkTreePath")
	checkPtrType(selection.data, "GtkSelectionData")

	w <- .RGtkCall("S_gtk_tree_drag_dest_row_drop_possible", object, dest.path, selection.data, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTreeSetRowDragData <-
function(object, tree.model, path, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkSelectionData")
	checkPtrType(tree.model, "GtkTreeModel")
	checkPtrType(path, "GtkTreePath")

	w <- .RGtkCall("S_gtk_tree_set_row_drag_data", object, tree.model, path, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTreeGetRowDragData <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkSelectionData")

	w <- .RGtkCall("S_gtk_tree_get_row_drag_data", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTreePathNew <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_tree_path_new", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTreePathNewFromString <-
function(path, .flush = TRUE, .depwarn = TRUE)
{
	path <- as.character(path)

	w <- .RGtkCall("S_gtk_tree_path_new_from_string", path, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTreePathToString <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreePath")

	w <- .RGtkCall("S_gtk_tree_path_to_string", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTreePathNewFirst <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_tree_path_new_first", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTreePathAppendIndex <-
function(object, index, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreePath")
	index <- as.integer(index)

	w <- .RGtkCall("S_gtk_tree_path_append_index", object, index, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTreePathPrependIndex <-
function(object, index, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreePath")
	index <- as.integer(index)

	w <- .RGtkCall("S_gtk_tree_path_prepend_index", object, index, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTreePathGetDepth <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreePath")

	w <- .RGtkCall("S_gtk_tree_path_get_depth", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTreePathGetIndices <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreePath")

	w <- .RGtkCall("S_gtk_tree_path_get_indices", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTreePathFree <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreePath")

	w <- .RGtkCall("S_gtk_tree_path_free", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTreePathCopy <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreePath")

	w <- .RGtkCall("S_gtk_tree_path_copy", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTreePathCompare <-
function(object, b, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreePath")
	checkPtrType(b, "GtkTreePath")

	w <- .RGtkCall("S_gtk_tree_path_compare", object, b, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTreePathNext <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreePath")

	w <- .RGtkCall("S_gtk_tree_path_next", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTreePathPrev <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreePath")

	w <- .RGtkCall("S_gtk_tree_path_prev", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTreePathUp <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreePath")

	w <- .RGtkCall("S_gtk_tree_path_up", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTreePathDown <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreePath")

	w <- .RGtkCall("S_gtk_tree_path_down", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTreePathIsAncestor <-
function(object, descendant, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreePath")
	checkPtrType(descendant, "GtkTreePath")

	w <- .RGtkCall("S_gtk_tree_path_is_ancestor", object, descendant, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTreePathIsDescendant <-
function(object, ancestor, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreePath")
	checkPtrType(ancestor, "GtkTreePath")

	w <- .RGtkCall("S_gtk_tree_path_is_descendant", object, ancestor, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTreeRowReferenceGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_tree_row_reference_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTreeRowReferenceNew <-
function(model, path, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(model, "GtkTreeModel")
	checkPtrType(path, "GtkTreePath")

	w <- .RGtkCall("S_gtk_tree_row_reference_new", model, path, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTreeRowReferenceNewProxy <-
function(proxy, model, path, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(proxy, "GObject")
	checkPtrType(model, "GtkTreeModel")
	checkPtrType(path, "GtkTreePath")

	w <- .RGtkCall("S_gtk_tree_row_reference_new_proxy", proxy, model, path, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTreeRowReferenceGetPath <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeRowReference")

	w <- .RGtkCall("S_gtk_tree_row_reference_get_path", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTreeRowReferenceGetModel <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeRowReference")

	w <- .RGtkCall("S_gtk_tree_row_reference_get_model", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTreeRowReferenceValid <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeRowReference")

	w <- .RGtkCall("S_gtk_tree_row_reference_valid", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTreeRowReferenceCopy <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeRowReference")

	w <- .RGtkCall("S_gtk_tree_row_reference_copy", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTreeRowReferenceFree <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeRowReference")

	w <- .RGtkCall("S_gtk_tree_row_reference_free", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTreeRowReferenceInserted <-
function(proxy, path, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(proxy, "GObject")
	checkPtrType(path, "GtkTreePath")

	w <- .RGtkCall("S_gtk_tree_row_reference_inserted", proxy, path, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTreeRowReferenceDeleted <-
function(proxy, path, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(proxy, "GObject")
	checkPtrType(path, "GtkTreePath")

	w <- .RGtkCall("S_gtk_tree_row_reference_deleted", proxy, path, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTreeRowReferenceReordered <-
function(proxy, path, iter, new.order, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(proxy, "GObject")
	checkPtrType(path, "GtkTreePath")
	checkPtrType(iter, "GtkTreeIter")
	new.order <- as.list(as.integer(new.order))

	w <- .RGtkCall("S_gtk_tree_row_reference_reordered", proxy, path, iter, new.order, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTreeIterCopy <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeIter")

	w <- .RGtkCall("S_gtk_tree_iter_copy", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTreeIterFree <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeIter")

	w <- .RGtkCall("S_gtk_tree_iter_free", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTreeIterGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_tree_iter_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTreeModelGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_tree_model_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTreeModelGetFlags <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeModel")

	w <- .RGtkCall("S_gtk_tree_model_get_flags", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTreeModelGetNColumns <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeModel")

	w <- .RGtkCall("S_gtk_tree_model_get_n_columns", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTreeModelGetColumnType <-
function(object, index, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeModel")
	index <- as.integer(index)

	w <- .RGtkCall("S_gtk_tree_model_get_column_type", object, index, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTreeModelGetIter <-
function(object, path, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeModel")
	checkPtrType(path, "GtkTreePath")

	w <- .RGtkCall("S_gtk_tree_model_get_iter", object, path, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTreeModelGetIterFromString <-
function(object, path.string, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeModel")
	path.string <- as.character(path.string)

	w <- .RGtkCall("S_gtk_tree_model_get_iter_from_string", object, path.string, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTreeModelGetStringFromIter <-
function(object, iter, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeModel")
	checkPtrType(iter, "GtkTreeIter")

	w <- .RGtkCall("S_gtk_tree_model_get_string_from_iter", object, iter, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTreeModelGetIterRoot <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeModel")

	w <- .RGtkCall("S_gtk_tree_model_get_iter_root", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTreeModelGetIterFirst <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeModel")

	w <- .RGtkCall("S_gtk_tree_model_get_iter_first", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTreeModelGetPath <-
function(object, iter, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeModel")
	checkPtrType(iter, "GtkTreeIter")

	w <- .RGtkCall("S_gtk_tree_model_get_path", object, iter, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTreeModelGetValue <-
function(object, iter, column, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeModel")
	checkPtrType(iter, "GtkTreeIter")
	column <- as.integer(column)

	w <- .RGtkCall("S_gtk_tree_model_get_value", object, iter, column, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTreeModelIterNext <-
function(object, iter, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeModel")
	checkPtrType(iter, "GtkTreeIter")

	w <- .RGtkCall("S_gtk_tree_model_iter_next", object, iter, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTreeModelIterChildren <-
function(object, parent = NULL, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeModel")
	if (!is.null( parent )) checkPtrType(parent, "GtkTreeIter")

	w <- .RGtkCall("S_gtk_tree_model_iter_children", object, parent, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTreeModelIterHasChild <-
function(object, iter, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeModel")
	checkPtrType(iter, "GtkTreeIter")

	w <- .RGtkCall("S_gtk_tree_model_iter_has_child", object, iter, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTreeModelIterNChildren <-
function(object, iter = NULL, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeModel")
	if (!is.null( iter )) checkPtrType(iter, "GtkTreeIter")

	w <- .RGtkCall("S_gtk_tree_model_iter_n_children", object, iter, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTreeModelIterNthChild <-
function(object, parent = NULL, n, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeModel")
	if (!is.null( parent )) checkPtrType(parent, "GtkTreeIter")
	n <- as.integer(n)

	w <- .RGtkCall("S_gtk_tree_model_iter_nth_child", object, parent, n, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTreeModelIterParent <-
function(object, child, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeModel")
	checkPtrType(child, "GtkTreeIter")

	w <- .RGtkCall("S_gtk_tree_model_iter_parent", object, child, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTreeModelRefNode <-
function(object, iter, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeModel")
	checkPtrType(iter, "GtkTreeIter")

	w <- .RGtkCall("S_gtk_tree_model_ref_node", object, iter, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTreeModelUnrefNode <-
function(object, iter, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeModel")
	checkPtrType(iter, "GtkTreeIter")

	w <- .RGtkCall("S_gtk_tree_model_unref_node", object, iter, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTreeModelForeach <-
function(object, func, user.data = NULL, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeModel")
	func <- as.function(func)
	

	w <- .RGtkCall("S_gtk_tree_model_foreach", object, func, user.data, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTreeModelRowChanged <-
function(object, path, iter, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeModel")
	checkPtrType(path, "GtkTreePath")
	checkPtrType(iter, "GtkTreeIter")

	w <- .RGtkCall("S_gtk_tree_model_row_changed", object, path, iter, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTreeModelRowInserted <-
function(object, path, iter, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeModel")
	checkPtrType(path, "GtkTreePath")
	checkPtrType(iter, "GtkTreeIter")

	w <- .RGtkCall("S_gtk_tree_model_row_inserted", object, path, iter, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTreeModelRowHasChildToggled <-
function(object, path, iter, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeModel")
	checkPtrType(path, "GtkTreePath")
	checkPtrType(iter, "GtkTreeIter")

	w <- .RGtkCall("S_gtk_tree_model_row_has_child_toggled", object, path, iter, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTreeModelRowDeleted <-
function(object, path, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeModel")
	checkPtrType(path, "GtkTreePath")

	w <- .RGtkCall("S_gtk_tree_model_row_deleted", object, path, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTreeModelRowsReordered <-
function(object, path, iter, new.order, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeModel")
	checkPtrType(path, "GtkTreePath")
	checkPtrType(iter, "GtkTreeIter")
	new.order <- as.list(as.integer(new.order))

	w <- .RGtkCall("S_gtk_tree_model_rows_reordered", object, path, iter, new.order, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTreeModelFilterGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_tree_model_filter_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTreeModelFilterNew <-
function(object, root = "NULL", .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeModel")
	if (!is.null( root )) checkPtrType(root, "GtkTreePath")

	w <- .RGtkCall("S_gtk_tree_model_filter_new", object, root, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTreeModelFilterSetVisibleFunc <-
function(object, func, data = NULL, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeModelFilter")
	func <- as.function(func)
	

	w <- .RGtkCall("S_gtk_tree_model_filter_set_visible_func", object, func, data, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTreeModelFilterSetModifyFunc <-
function(object, types, func, data = NULL, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeModelFilter")
	types <- as.list(as.numeric(types))
	func <- as.function(func)
	

	w <- .RGtkCall("S_gtk_tree_model_filter_set_modify_func", object, types, func, data, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTreeModelFilterSetVisibleColumn <-
function(object, column, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeModelFilter")
	column <- as.integer(column)

	w <- .RGtkCall("S_gtk_tree_model_filter_set_visible_column", object, column, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTreeModelFilterGetModel <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeModelFilter")

	w <- .RGtkCall("S_gtk_tree_model_filter_get_model", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTreeModelFilterConvertChildIterToIter <-
function(object, child.iter, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeModelFilter")
	checkPtrType(child.iter, "GtkTreeIter")

	w <- .RGtkCall("S_gtk_tree_model_filter_convert_child_iter_to_iter", object, child.iter, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTreeModelFilterConvertIterToChildIter <-
function(object, filter.iter, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeModelFilter")
	checkPtrType(filter.iter, "GtkTreeIter")

	w <- .RGtkCall("S_gtk_tree_model_filter_convert_iter_to_child_iter", object, filter.iter, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTreeModelFilterConvertChildPathToPath <-
function(object, child.path, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeModelFilter")
	checkPtrType(child.path, "GtkTreePath")

	w <- .RGtkCall("S_gtk_tree_model_filter_convert_child_path_to_path", object, child.path, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTreeModelFilterConvertPathToChildPath <-
function(object, filter.path, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeModelFilter")
	checkPtrType(filter.path, "GtkTreePath")

	w <- .RGtkCall("S_gtk_tree_model_filter_convert_path_to_child_path", object, filter.path, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTreeModelFilterRefilter <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeModelFilter")

	w <- .RGtkCall("S_gtk_tree_model_filter_refilter", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTreeModelFilterClearCache <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeModelFilter")

	w <- .RGtkCall("S_gtk_tree_model_filter_clear_cache", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTreeModelSortGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_tree_model_sort_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTreeModelSortNewWithModel <-
function(child.model = NULL, .flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_tree_model_sort_new_with_model", child.model, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTreeModelSortGetModel <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeModelSort")

	w <- .RGtkCall("S_gtk_tree_model_sort_get_model", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTreeModelSortConvertChildPathToPath <-
function(object, child.path, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeModelSort")
	checkPtrType(child.path, "GtkTreePath")

	w <- .RGtkCall("S_gtk_tree_model_sort_convert_child_path_to_path", object, child.path, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTreeModelSortConvertChildIterToIter <-
function(object, child.iter, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeModelSort")
	checkPtrType(child.iter, "GtkTreeIter")

	w <- .RGtkCall("S_gtk_tree_model_sort_convert_child_iter_to_iter", object, child.iter, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTreeModelSortConvertPathToChildPath <-
function(object, sorted.path, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeModelSort")
	checkPtrType(sorted.path, "GtkTreePath")

	w <- .RGtkCall("S_gtk_tree_model_sort_convert_path_to_child_path", object, sorted.path, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTreeModelSortConvertIterToChildIter <-
function(object, sorted.iter, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeModelSort")
	checkPtrType(sorted.iter, "GtkTreeIter")

	w <- .RGtkCall("S_gtk_tree_model_sort_convert_iter_to_child_iter", object, sorted.iter, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTreeModelSortResetDefaultSortFunc <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeModelSort")

	w <- .RGtkCall("S_gtk_tree_model_sort_reset_default_sort_func", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTreeModelSortClearCache <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeModelSort")

	w <- .RGtkCall("S_gtk_tree_model_sort_clear_cache", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTreeModelSortIterIsValid <-
function(object, iter, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeModelSort")
	checkPtrType(iter, "GtkTreeIter")

	w <- .RGtkCall("S_gtk_tree_model_sort_iter_is_valid", object, iter, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTreeSelectionGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_tree_selection_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTreeSelectionSetMode <-
function(object, type, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeSelection")
	

	w <- .RGtkCall("S_gtk_tree_selection_set_mode", object, type, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTreeSelectionGetMode <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeSelection")

	w <- .RGtkCall("S_gtk_tree_selection_get_mode", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTreeSelectionSetSelectFunction <-
function(object, func, data = NULL, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeSelection")
	func <- as.function(func)
	

	w <- .RGtkCall("S_gtk_tree_selection_set_select_function", object, func, data, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTreeSelectionGetUserData <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeSelection")

	w <- .RGtkCall("S_gtk_tree_selection_get_user_data", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTreeSelectionGetTreeView <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeSelection")

	w <- .RGtkCall("S_gtk_tree_selection_get_tree_view", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTreeSelectionGetSelected <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeSelection")

	w <- .RGtkCall("S_gtk_tree_selection_get_selected", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTreeSelectionGetSelectedRows <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeSelection")

	w <- .RGtkCall("S_gtk_tree_selection_get_selected_rows", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTreeSelectionCountSelectedRows <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeSelection")

	w <- .RGtkCall("S_gtk_tree_selection_count_selected_rows", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTreeSelectionSelectedForeach <-
function(object, func, data = NULL, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeSelection")
	func <- as.function(func)
	

	w <- .RGtkCall("S_gtk_tree_selection_selected_foreach", object, func, data, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTreeSelectionSelectPath <-
function(object, path, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeSelection")
	checkPtrType(path, "GtkTreePath")

	w <- .RGtkCall("S_gtk_tree_selection_select_path", object, path, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTreeSelectionUnselectPath <-
function(object, path, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeSelection")
	checkPtrType(path, "GtkTreePath")

	w <- .RGtkCall("S_gtk_tree_selection_unselect_path", object, path, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTreeSelectionSelectIter <-
function(object, iter, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeSelection")
	checkPtrType(iter, "GtkTreeIter")

	w <- .RGtkCall("S_gtk_tree_selection_select_iter", object, iter, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTreeSelectionUnselectIter <-
function(object, iter, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeSelection")
	checkPtrType(iter, "GtkTreeIter")

	w <- .RGtkCall("S_gtk_tree_selection_unselect_iter", object, iter, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTreeSelectionPathIsSelected <-
function(object, path, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeSelection")
	checkPtrType(path, "GtkTreePath")

	w <- .RGtkCall("S_gtk_tree_selection_path_is_selected", object, path, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTreeSelectionIterIsSelected <-
function(object, iter, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeSelection")
	checkPtrType(iter, "GtkTreeIter")

	w <- .RGtkCall("S_gtk_tree_selection_iter_is_selected", object, iter, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTreeSelectionSelectAll <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeSelection")

	w <- .RGtkCall("S_gtk_tree_selection_select_all", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTreeSelectionUnselectAll <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeSelection")

	w <- .RGtkCall("S_gtk_tree_selection_unselect_all", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTreeSelectionSelectRange <-
function(object, start.path, end.path, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeSelection")
	checkPtrType(start.path, "GtkTreePath")
	checkPtrType(end.path, "GtkTreePath")

	w <- .RGtkCall("S_gtk_tree_selection_select_range", object, start.path, end.path, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTreeSelectionUnselectRange <-
function(object, start.path, end.path, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeSelection")
	checkPtrType(start.path, "GtkTreePath")
	checkPtrType(end.path, "GtkTreePath")

	w <- .RGtkCall("S_gtk_tree_selection_unselect_range", object, start.path, end.path, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTreeSortableGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_tree_sortable_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTreeSortableSortColumnChanged <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeSortable")

	w <- .RGtkCall("S_gtk_tree_sortable_sort_column_changed", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTreeSortableGetSortColumnId <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeSortable")

	w <- .RGtkCall("S_gtk_tree_sortable_get_sort_column_id", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTreeSortableSetSortColumnId <-
function(object, sort.column.id, order, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeSortable")
	sort.column.id <- as.integer(sort.column.id)
	

	w <- .RGtkCall("S_gtk_tree_sortable_set_sort_column_id", object, sort.column.id, order, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTreeSortableSetSortFunc <-
function(object, sort.column.id, sort.func, user.data = NULL, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeSortable")
	sort.column.id <- as.integer(sort.column.id)
	sort.func <- as.function(sort.func)
	

	w <- .RGtkCall("S_gtk_tree_sortable_set_sort_func", object, sort.column.id, sort.func, user.data, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTreeSortableSetDefaultSortFunc <-
function(object, sort.func, user.data = NULL, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeSortable")
	sort.func <- as.function(sort.func)
	

	w <- .RGtkCall("S_gtk_tree_sortable_set_default_sort_func", object, sort.func, user.data, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTreeSortableHasDefaultSortFunc <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeSortable")

	w <- .RGtkCall("S_gtk_tree_sortable_has_default_sort_func", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTreeStoreGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_tree_store_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTreeStoreNewv <-
function(types, .flush = TRUE, .depwarn = TRUE)
{
	types <- as.list(as.numeric(types))

	w <- .RGtkCall("S_gtk_tree_store_newv", types, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTreeStoreSetColumnTypes <-
function(object, types, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeStore")
	types <- as.list(as.numeric(types))

	w <- .RGtkCall("S_gtk_tree_store_set_column_types", object, types, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTreeStoreSetValue <-
function(object, iter, column, value, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeStore")
	checkPtrType(iter, "GtkTreeIter")
	column <- as.integer(column)
	

	w <- .RGtkCall("S_gtk_tree_store_set_value", object, iter, column, value, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTreeStoreRemove <-
function(object, iter, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeStore")
	checkPtrType(iter, "GtkTreeIter")

	w <- .RGtkCall("S_gtk_tree_store_remove", object, iter, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTreeStoreInsert <-
function(object, parent, position, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeStore")
	checkPtrType(parent, "GtkTreeIter")
	position <- as.integer(position)

	w <- .RGtkCall("S_gtk_tree_store_insert", object, parent, position, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTreeStoreInsertBefore <-
function(object, parent, sibling, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeStore")
	checkPtrType(parent, "GtkTreeIter")
	checkPtrType(sibling, "GtkTreeIter")

	w <- .RGtkCall("S_gtk_tree_store_insert_before", object, parent, sibling, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTreeStoreInsertAfter <-
function(object, parent, sibling, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeStore")
	checkPtrType(parent, "GtkTreeIter")
	checkPtrType(sibling, "GtkTreeIter")

	w <- .RGtkCall("S_gtk_tree_store_insert_after", object, parent, sibling, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTreeStorePrepend <-
function(object, parent = NULL, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeStore")
	if (!is.null( parent )) checkPtrType(parent, "GtkTreeIter")

	w <- .RGtkCall("S_gtk_tree_store_prepend", object, parent, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTreeStoreAppend <-
function(object, parent = NULL, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeStore")
	if (!is.null( parent )) checkPtrType(parent, "GtkTreeIter")

	w <- .RGtkCall("S_gtk_tree_store_append", object, parent, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTreeStoreIsAncestor <-
function(object, iter, descendant, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeStore")
	checkPtrType(iter, "GtkTreeIter")
	checkPtrType(descendant, "GtkTreeIter")

	w <- .RGtkCall("S_gtk_tree_store_is_ancestor", object, iter, descendant, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTreeStoreIterDepth <-
function(object, iter, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeStore")
	checkPtrType(iter, "GtkTreeIter")

	w <- .RGtkCall("S_gtk_tree_store_iter_depth", object, iter, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTreeStoreClear <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeStore")

	w <- .RGtkCall("S_gtk_tree_store_clear", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTreeStoreIterIsValid <-
function(object, iter, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeStore")
	checkPtrType(iter, "GtkTreeIter")

	w <- .RGtkCall("S_gtk_tree_store_iter_is_valid", object, iter, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTreeStoreReorder <-
function(object, parent, new.order, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeStore")
	checkPtrType(parent, "GtkTreeIter")
	new.order <- as.list(as.integer(new.order))

	w <- .RGtkCall("S_gtk_tree_store_reorder", object, parent, new.order, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTreeStoreSwap <-
function(object, a, b, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeStore")
	checkPtrType(a, "GtkTreeIter")
	checkPtrType(b, "GtkTreeIter")

	w <- .RGtkCall("S_gtk_tree_store_swap", object, a, b, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTreeStoreMoveAfter <-
function(object, iter, position = NULL, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeStore")
	checkPtrType(iter, "GtkTreeIter")
	if (!is.null( position )) checkPtrType(position, "GtkTreeIter")

	w <- .RGtkCall("S_gtk_tree_store_move_after", object, iter, position, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTreeStoreMoveBefore <-
function(object, iter, position = NULL, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeStore")
	checkPtrType(iter, "GtkTreeIter")
	if (!is.null( position )) checkPtrType(position, "GtkTreeIter")

	w <- .RGtkCall("S_gtk_tree_store_move_before", object, iter, position, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTreeViewColumnQueueResize <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeViewColumn")

	w <- .RGtkCall("S_gtk_tree_view_column_queue_resize", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTreeViewGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_tree_view_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTreeViewNew <-
function(show = TRUE, .flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_tree_view_new", PACKAGE = "RGtk2", .flush = .flush)

	if(show)
		gtkWidgetShowAll(w)

	return(w)
} 


gtkTreeViewNewWithModel <-
function(model = NULL, show = TRUE, .flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_tree_view_new_with_model", model, PACKAGE = "RGtk2", .flush = .flush)

	if(show)
		gtkWidgetShowAll(w)

	return(w)
} 


gtkTreeViewGetModel <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeView")

	w <- .RGtkCall("S_gtk_tree_view_get_model", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTreeViewSetModel <-
function(object, model = "NULL", .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeView")
	if (!is.null( model )) checkPtrType(model, "GtkTreeModel")

	w <- .RGtkCall("S_gtk_tree_view_set_model", object, model, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTreeViewGetSelection <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeView")

	w <- .RGtkCall("S_gtk_tree_view_get_selection", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTreeViewGetHadjustment <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeView")

	w <- .RGtkCall("S_gtk_tree_view_get_hadjustment", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTreeViewSetHadjustment <-
function(object, adjustment, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeView")
	checkPtrType(adjustment, "GtkAdjustment")

	w <- .RGtkCall("S_gtk_tree_view_set_hadjustment", object, adjustment, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTreeViewGetVadjustment <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeView")

	w <- .RGtkCall("S_gtk_tree_view_get_vadjustment", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTreeViewSetVadjustment <-
function(object, adjustment, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeView")
	checkPtrType(adjustment, "GtkAdjustment")

	w <- .RGtkCall("S_gtk_tree_view_set_vadjustment", object, adjustment, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTreeViewGetHeadersVisible <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeView")

	w <- .RGtkCall("S_gtk_tree_view_get_headers_visible", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTreeViewSetHeadersVisible <-
function(object, headers.visible, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeView")
	headers.visible <- as.logical(headers.visible)

	w <- .RGtkCall("S_gtk_tree_view_set_headers_visible", object, headers.visible, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTreeViewColumnsAutosize <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeView")

	w <- .RGtkCall("S_gtk_tree_view_columns_autosize", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTreeViewSetHeadersClickable <-
function(object, active, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeView")
	active <- as.logical(active)

	w <- .RGtkCall("S_gtk_tree_view_set_headers_clickable", object, active, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTreeViewSetRulesHint <-
function(object, setting, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeView")
	setting <- as.logical(setting)

	w <- .RGtkCall("S_gtk_tree_view_set_rules_hint", object, setting, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTreeViewGetRulesHint <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeView")

	w <- .RGtkCall("S_gtk_tree_view_get_rules_hint", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTreeViewAppendColumn <-
function(object, column, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeView")
	checkPtrType(column, "GtkTreeViewColumn")

	w <- .RGtkCall("S_gtk_tree_view_append_column", object, column, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTreeViewRemoveColumn <-
function(object, column, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeView")
	checkPtrType(column, "GtkTreeViewColumn")

	w <- .RGtkCall("S_gtk_tree_view_remove_column", object, column, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTreeViewInsertColumn <-
function(object, column, position, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeView")
	checkPtrType(column, "GtkTreeViewColumn")
	position <- as.integer(position)

	w <- .RGtkCall("S_gtk_tree_view_insert_column", object, column, position, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTreeViewInsertColumnWithDataFunc <-
function(object, position, title, cell, func, data = NULL, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeView")
	position <- as.integer(position)
	title <- as.character(title)
	checkPtrType(cell, "GtkCellRenderer")
	func <- as.function(func)
	

	w <- .RGtkCall("S_gtk_tree_view_insert_column_with_data_func", object, position, title, cell, func, data, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTreeViewGetColumn <-
function(object, n, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeView")
	n <- as.integer(n)

	w <- .RGtkCall("S_gtk_tree_view_get_column", object, n, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTreeViewGetColumns <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeView")

	w <- .RGtkCall("S_gtk_tree_view_get_columns", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTreeViewMoveColumnAfter <-
function(object, column, base.column = NULL, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeView")
	checkPtrType(column, "GtkTreeViewColumn")
	if (!is.null( base.column )) checkPtrType(base.column, "GtkTreeViewColumn")

	w <- .RGtkCall("S_gtk_tree_view_move_column_after", object, column, base.column, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTreeViewSetExpanderColumn <-
function(object, column, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeView")
	checkPtrType(column, "GtkTreeViewColumn")

	w <- .RGtkCall("S_gtk_tree_view_set_expander_column", object, column, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTreeViewGetExpanderColumn <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeView")

	w <- .RGtkCall("S_gtk_tree_view_get_expander_column", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTreeViewSetColumnDragFunction <-
function(object, func, user.data = NULL, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeView")
	func <- as.function(func)
	

	w <- .RGtkCall("S_gtk_tree_view_set_column_drag_function", object, func, user.data, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTreeViewScrollToPoint <-
function(object, tree.x, tree.y, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeView")
	tree.x <- as.integer(tree.x)
	tree.y <- as.integer(tree.y)

	w <- .RGtkCall("S_gtk_tree_view_scroll_to_point", object, tree.x, tree.y, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTreeViewScrollToCell <-
function(object, path, column = "NULL", use.align = "FALSE", row.align = "0.0", col.align = "0.0", .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeView")
	checkPtrType(path, "GtkTreePath")
	if (!is.null( column )) checkPtrType(column, "GtkTreeViewColumn")
	use.align <- as.logical(use.align)
	row.align <- as.numeric(row.align)
	col.align <- as.numeric(col.align)

	w <- .RGtkCall("S_gtk_tree_view_scroll_to_cell", object, path, column, use.align, row.align, col.align, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTreeViewRowActivated <-
function(object, path, column, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeView")
	checkPtrType(path, "GtkTreePath")
	checkPtrType(column, "GtkTreeViewColumn")

	w <- .RGtkCall("S_gtk_tree_view_row_activated", object, path, column, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTreeViewExpandAll <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeView")

	w <- .RGtkCall("S_gtk_tree_view_expand_all", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTreeViewCollapseAll <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeView")

	w <- .RGtkCall("S_gtk_tree_view_collapse_all", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTreeViewExpandToPath <-
function(object, path, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeView")
	checkPtrType(path, "GtkTreePath")

	w <- .RGtkCall("S_gtk_tree_view_expand_to_path", object, path, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTreeViewExpandRow <-
function(object, path, open.all, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeView")
	checkPtrType(path, "GtkTreePath")
	open.all <- as.logical(open.all)

	w <- .RGtkCall("S_gtk_tree_view_expand_row", object, path, open.all, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTreeViewCollapseRow <-
function(object, path, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeView")
	checkPtrType(path, "GtkTreePath")

	w <- .RGtkCall("S_gtk_tree_view_collapse_row", object, path, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTreeViewMapExpandedRows <-
function(object, func, data = NULL, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeView")
	func <- as.function(func)
	

	w <- .RGtkCall("S_gtk_tree_view_map_expanded_rows", object, func, data, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTreeViewRowExpanded <-
function(object, path, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeView")
	checkPtrType(path, "GtkTreePath")

	w <- .RGtkCall("S_gtk_tree_view_row_expanded", object, path, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTreeViewSetReorderable <-
function(object, reorderable, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeView")
	reorderable <- as.logical(reorderable)

	w <- .RGtkCall("S_gtk_tree_view_set_reorderable", object, reorderable, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTreeViewGetReorderable <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeView")

	w <- .RGtkCall("S_gtk_tree_view_get_reorderable", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTreeViewSetCursor <-
function(object, path, focus.column = "NULL", start.editing = "FALSE", .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeView")
	checkPtrType(path, "GtkTreePath")
	if (!is.null( focus.column )) checkPtrType(focus.column, "GtkTreeViewColumn")
	start.editing <- as.logical(start.editing)

	w <- .RGtkCall("S_gtk_tree_view_set_cursor", object, path, focus.column, start.editing, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTreeViewSetCursorOnCell <-
function(object, path, focus.column = "NULL", focus.cell = "NULL", start.editing = "FALSE", .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeView")
	checkPtrType(path, "GtkTreePath")
	if (!is.null( focus.column )) checkPtrType(focus.column, "GtkTreeViewColumn")
	if (!is.null( focus.cell )) checkPtrType(focus.cell, "GtkCellRenderer")
	start.editing <- as.logical(start.editing)

	w <- .RGtkCall("S_gtk_tree_view_set_cursor_on_cell", object, path, focus.column, focus.cell, start.editing, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTreeViewGetCursor <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeView")

	w <- .RGtkCall("S_gtk_tree_view_get_cursor", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTreeViewGetBinWindow <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeView")

	w <- .RGtkCall("S_gtk_tree_view_get_bin_window", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTreeViewGetPathAtPos <-
function(object, x, y, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeView")
	x <- as.integer(x)
	y <- as.integer(y)

	w <- .RGtkCall("S_gtk_tree_view_get_path_at_pos", object, x, y, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTreeViewGetCellArea <-
function(object, path, column, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeView")
	checkPtrType(path, "GtkTreePath")
	checkPtrType(column, "GtkTreeViewColumn")

	w <- .RGtkCall("S_gtk_tree_view_get_cell_area", object, path, column, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTreeViewGetBackgroundArea <-
function(object, path, column, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeView")
	checkPtrType(path, "GtkTreePath")
	checkPtrType(column, "GtkTreeViewColumn")

	w <- .RGtkCall("S_gtk_tree_view_get_background_area", object, path, column, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTreeViewGetVisibleRect <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeView")

	w <- .RGtkCall("S_gtk_tree_view_get_visible_rect", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTreeViewWidgetToTreeCoords <-
function(object, wx, wy, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeView")
	wx <- as.integer(wx)
	wy <- as.integer(wy)

	w <- .RGtkCall("S_gtk_tree_view_widget_to_tree_coords", object, wx, wy, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTreeViewTreeToWidgetCoords <-
function(object, tx, ty, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeView")
	tx <- as.integer(tx)
	ty <- as.integer(ty)

	w <- .RGtkCall("S_gtk_tree_view_tree_to_widget_coords", object, tx, ty, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTreeViewEnableModelDragSource <-
function(object, start.button.mask, targets, actions, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeView")
	
	targets <- lapply(targets, function(x) { x <- as.GtkTargetEntry(x); x })
	

	w <- .RGtkCall("S_gtk_tree_view_enable_model_drag_source", object, start.button.mask, targets, actions, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTreeViewEnableModelDragDest <-
function(object, targets, actions, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeView")
	targets <- lapply(targets, function(x) { x <- as.GtkTargetEntry(x); x })
	

	w <- .RGtkCall("S_gtk_tree_view_enable_model_drag_dest", object, targets, actions, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTreeViewUnsetRowsDragSource <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeView")

	w <- .RGtkCall("S_gtk_tree_view_unset_rows_drag_source", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTreeViewUnsetRowsDragDest <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeView")

	w <- .RGtkCall("S_gtk_tree_view_unset_rows_drag_dest", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTreeViewSetDragDestRow <-
function(object, path, pos, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeView")
	checkPtrType(path, "GtkTreePath")
	

	w <- .RGtkCall("S_gtk_tree_view_set_drag_dest_row", object, path, pos, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTreeViewGetDragDestRow <-
function(object, path, pos, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeView")
	checkPtrType(path, "GtkTreePath")
	

	w <- .RGtkCall("S_gtk_tree_view_get_drag_dest_row", object, path, pos, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTreeViewGetDestRowAtPos <-
function(object, drag.x, drag.y, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeView")
	drag.x <- as.integer(drag.x)
	drag.y <- as.integer(drag.y)

	w <- .RGtkCall("S_gtk_tree_view_get_dest_row_at_pos", object, drag.x, drag.y, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTreeViewCreateRowDragIcon <-
function(object, path, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeView")
	checkPtrType(path, "GtkTreePath")

	w <- .RGtkCall("S_gtk_tree_view_create_row_drag_icon", object, path, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTreeViewSetEnableSearch <-
function(object, enable.search, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeView")
	enable.search <- as.logical(enable.search)

	w <- .RGtkCall("S_gtk_tree_view_set_enable_search", object, enable.search, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTreeViewGetEnableSearch <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeView")

	w <- .RGtkCall("S_gtk_tree_view_get_enable_search", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTreeViewGetSearchColumn <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeView")

	w <- .RGtkCall("S_gtk_tree_view_get_search_column", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTreeViewSetSearchColumn <-
function(object, column, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeView")
	column <- as.integer(column)

	w <- .RGtkCall("S_gtk_tree_view_set_search_column", object, column, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTreeViewGetSearchEqualFunc <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeView")

	w <- .RGtkCall("S_gtk_tree_view_get_search_equal_func", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTreeViewSetSearchEqualFunc <-
function(object, search.equal.func, search.user.data = NULL, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeView")
	search.equal.func <- as.function(search.equal.func)
	

	w <- .RGtkCall("S_gtk_tree_view_set_search_equal_func", object, search.equal.func, search.user.data, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTreeViewSetDestroyCountFunc <-
function(object, func, data = NULL, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeView")
	func <- as.function(func)
	

	w <- .RGtkCall("S_gtk_tree_view_set_destroy_count_func", object, func, data, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTreeViewSetFixedHeightMode <-
function(object, enable, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeView")
	enable <- as.logical(enable)

	w <- .RGtkCall("S_gtk_tree_view_set_fixed_height_mode", object, enable, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTreeViewGetFixedHeightMode <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeView")

	w <- .RGtkCall("S_gtk_tree_view_get_fixed_height_mode", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTreeViewSetHoverSelection <-
function(object, hover, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeView")
	hover <- as.logical(hover)

	w <- .RGtkCall("S_gtk_tree_view_set_hover_selection", object, hover, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTreeViewGetHoverSelection <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeView")

	w <- .RGtkCall("S_gtk_tree_view_get_hover_selection", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTreeViewSetHoverExpand <-
function(object, expand, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeView")
	expand <- as.logical(expand)

	w <- .RGtkCall("S_gtk_tree_view_set_hover_expand", object, expand, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTreeViewGetHoverExpand <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeView")

	w <- .RGtkCall("S_gtk_tree_view_get_hover_expand", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTreeViewGetRowSeparatorFunc <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeView")

	w <- .RGtkCall("S_gtk_tree_view_get_row_separator_func", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTreeViewSetRowSeparatorFunc <-
function(object, func, data = NULL, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeView")
	func <- as.function(func)
	

	w <- .RGtkCall("S_gtk_tree_view_set_row_separator_func", object, func, data, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTreeViewColumnGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_tree_view_column_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTreeViewColumnNew <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_tree_view_column_new", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTreeViewColumnPackStart <-
function(object, cell, expand = "TRUE", .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeViewColumn")
	checkPtrType(cell, "GtkCellRenderer")
	expand <- as.logical(expand)

	w <- .RGtkCall("S_gtk_tree_view_column_pack_start", object, cell, expand, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTreeViewColumnPackEnd <-
function(object, cell, expand = "TRUE", .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeViewColumn")
	checkPtrType(cell, "GtkCellRenderer")
	expand <- as.logical(expand)

	w <- .RGtkCall("S_gtk_tree_view_column_pack_end", object, cell, expand, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTreeViewColumnClear <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeViewColumn")

	w <- .RGtkCall("S_gtk_tree_view_column_clear", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTreeViewColumnGetCellRenderers <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeViewColumn")

	w <- .RGtkCall("S_gtk_tree_view_column_get_cell_renderers", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTreeViewColumnAddAttribute <-
function(object, cell.renderer, attribute, column, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeViewColumn")
	checkPtrType(cell.renderer, "GtkCellRenderer")
	attribute <- as.character(attribute)
	column <- as.integer(column)

	w <- .RGtkCall("S_gtk_tree_view_column_add_attribute", object, cell.renderer, attribute, column, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTreeViewColumnSetCellDataFunc <-
function(object, cell.renderer, func, func.data = NULL, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeViewColumn")
	checkPtrType(cell.renderer, "GtkCellRenderer")
	func <- as.function(func)
	

	w <- .RGtkCall("S_gtk_tree_view_column_set_cell_data_func", object, cell.renderer, func, func.data, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTreeViewColumnClearAttributes <-
function(object, cell.renderer, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeViewColumn")
	checkPtrType(cell.renderer, "GtkCellRenderer")

	w <- .RGtkCall("S_gtk_tree_view_column_clear_attributes", object, cell.renderer, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTreeViewColumnSetSpacing <-
function(object, spacing, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeViewColumn")
	spacing <- as.integer(spacing)

	w <- .RGtkCall("S_gtk_tree_view_column_set_spacing", object, spacing, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTreeViewColumnGetSpacing <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeViewColumn")

	w <- .RGtkCall("S_gtk_tree_view_column_get_spacing", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTreeViewColumnSetVisible <-
function(object, visible, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeViewColumn")
	visible <- as.logical(visible)

	w <- .RGtkCall("S_gtk_tree_view_column_set_visible", object, visible, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTreeViewColumnGetVisible <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeViewColumn")

	w <- .RGtkCall("S_gtk_tree_view_column_get_visible", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTreeViewColumnSetResizable <-
function(object, resizable, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeViewColumn")
	resizable <- as.logical(resizable)

	w <- .RGtkCall("S_gtk_tree_view_column_set_resizable", object, resizable, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTreeViewColumnGetResizable <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeViewColumn")

	w <- .RGtkCall("S_gtk_tree_view_column_get_resizable", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTreeViewColumnSetSizing <-
function(object, type, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeViewColumn")
	

	w <- .RGtkCall("S_gtk_tree_view_column_set_sizing", object, type, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTreeViewColumnGetSizing <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeViewColumn")

	w <- .RGtkCall("S_gtk_tree_view_column_get_sizing", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTreeViewColumnGetWidth <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeViewColumn")

	w <- .RGtkCall("S_gtk_tree_view_column_get_width", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTreeViewColumnGetFixedWidth <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeViewColumn")

	w <- .RGtkCall("S_gtk_tree_view_column_get_fixed_width", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTreeViewColumnSetFixedWidth <-
function(object, fixed.width, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeViewColumn")
	fixed.width <- as.integer(fixed.width)

	w <- .RGtkCall("S_gtk_tree_view_column_set_fixed_width", object, fixed.width, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTreeViewColumnSetMinWidth <-
function(object, min.width, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeViewColumn")
	min.width <- as.integer(min.width)

	w <- .RGtkCall("S_gtk_tree_view_column_set_min_width", object, min.width, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTreeViewColumnGetMinWidth <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeViewColumn")

	w <- .RGtkCall("S_gtk_tree_view_column_get_min_width", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTreeViewColumnSetMaxWidth <-
function(object, max.width, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeViewColumn")
	max.width <- as.integer(max.width)

	w <- .RGtkCall("S_gtk_tree_view_column_set_max_width", object, max.width, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTreeViewColumnGetMaxWidth <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeViewColumn")

	w <- .RGtkCall("S_gtk_tree_view_column_get_max_width", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTreeViewColumnClicked <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeViewColumn")

	w <- .RGtkCall("S_gtk_tree_view_column_clicked", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTreeViewColumnSetTitle <-
function(object, title, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeViewColumn")
	title <- as.character(title)

	w <- .RGtkCall("S_gtk_tree_view_column_set_title", object, title, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTreeViewColumnGetTitle <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeViewColumn")

	w <- .RGtkCall("S_gtk_tree_view_column_get_title", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTreeViewColumnSetExpand <-
function(object, expand, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeViewColumn")
	expand <- as.logical(expand)

	w <- .RGtkCall("S_gtk_tree_view_column_set_expand", object, expand, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTreeViewColumnGetExpand <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeViewColumn")

	w <- .RGtkCall("S_gtk_tree_view_column_get_expand", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTreeViewColumnSetClickable <-
function(object, active, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeViewColumn")
	active <- as.logical(active)

	w <- .RGtkCall("S_gtk_tree_view_column_set_clickable", object, active, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTreeViewColumnGetClickable <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeViewColumn")

	w <- .RGtkCall("S_gtk_tree_view_column_get_clickable", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTreeViewColumnSetWidget <-
function(object, widget = NULL, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeViewColumn")
	if (!is.null( widget )) checkPtrType(widget, "GtkWidget")

	w <- .RGtkCall("S_gtk_tree_view_column_set_widget", object, widget, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTreeViewColumnGetWidget <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeViewColumn")

	w <- .RGtkCall("S_gtk_tree_view_column_get_widget", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTreeViewColumnSetAlignment <-
function(object, xalign, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeViewColumn")
	xalign <- as.numeric(xalign)

	w <- .RGtkCall("S_gtk_tree_view_column_set_alignment", object, xalign, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTreeViewColumnGetAlignment <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeViewColumn")

	w <- .RGtkCall("S_gtk_tree_view_column_get_alignment", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTreeViewColumnSetReorderable <-
function(object, reorderable, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeViewColumn")
	reorderable <- as.logical(reorderable)

	w <- .RGtkCall("S_gtk_tree_view_column_set_reorderable", object, reorderable, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTreeViewColumnGetReorderable <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeViewColumn")

	w <- .RGtkCall("S_gtk_tree_view_column_get_reorderable", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTreeViewColumnSetSortColumnId <-
function(object, sort.column.id, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeViewColumn")
	sort.column.id <- as.integer(sort.column.id)

	w <- .RGtkCall("S_gtk_tree_view_column_set_sort_column_id", object, sort.column.id, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTreeViewColumnGetSortColumnId <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeViewColumn")

	w <- .RGtkCall("S_gtk_tree_view_column_get_sort_column_id", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTreeViewColumnSetSortIndicator <-
function(object, setting, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeViewColumn")
	setting <- as.logical(setting)

	w <- .RGtkCall("S_gtk_tree_view_column_set_sort_indicator", object, setting, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTreeViewColumnGetSortIndicator <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeViewColumn")

	w <- .RGtkCall("S_gtk_tree_view_column_get_sort_indicator", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTreeViewColumnSetSortOrder <-
function(object, order, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeViewColumn")
	

	w <- .RGtkCall("S_gtk_tree_view_column_set_sort_order", object, order, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTreeViewColumnGetSortOrder <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeViewColumn")

	w <- .RGtkCall("S_gtk_tree_view_column_get_sort_order", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTreeViewColumnCellSetCellData <-
function(object, tree.model, iter, is.expander, is.expanded, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeViewColumn")
	checkPtrType(tree.model, "GtkTreeModel")
	checkPtrType(iter, "GtkTreeIter")
	is.expander <- as.logical(is.expander)
	is.expanded <- as.logical(is.expanded)

	w <- .RGtkCall("S_gtk_tree_view_column_cell_set_cell_data", object, tree.model, iter, is.expander, is.expanded, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTreeViewColumnCellGetSize <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeViewColumn")

	w <- .RGtkCall("S_gtk_tree_view_column_cell_get_size", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTreeViewColumnCellIsVisible <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeViewColumn")

	w <- .RGtkCall("S_gtk_tree_view_column_cell_is_visible", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkTreeViewColumnFocusCell <-
function(object, cell, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeViewColumn")
	checkPtrType(cell, "GtkCellRenderer")

	w <- .RGtkCall("S_gtk_tree_view_column_focus_cell", object, cell, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkTreeViewColumnCellGetPosition <-
function(object, cell.renderer, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkTreeViewColumn")
	checkPtrType(cell.renderer, "GtkCellRenderer")

	w <- .RGtkCall("S_gtk_tree_view_column_cell_get_position", object, cell.renderer, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkUIManagerGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_ui_manager_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkUIManagerNew <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_ui_manager_new", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkUIManagerSetAddTearoffs <-
function(object, add.tearoffs, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkUIManager")
	add.tearoffs <- as.logical(add.tearoffs)

	w <- .RGtkCall("S_gtk_ui_manager_set_add_tearoffs", object, add.tearoffs, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkUIManagerGetAddTearoffs <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkUIManager")

	w <- .RGtkCall("S_gtk_ui_manager_get_add_tearoffs", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkUIManagerInsertActionGroup <-
function(object, action.group, pos, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkUIManager")
	checkPtrType(action.group, "GtkActionGroup")
	pos <- as.integer(pos)

	w <- .RGtkCall("S_gtk_ui_manager_insert_action_group", object, action.group, pos, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkUIManagerRemoveActionGroup <-
function(object, action.group, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkUIManager")
	checkPtrType(action.group, "GtkActionGroup")

	w <- .RGtkCall("S_gtk_ui_manager_remove_action_group", object, action.group, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkUIManagerGetActionGroups <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkUIManager")

	w <- .RGtkCall("S_gtk_ui_manager_get_action_groups", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkUIManagerGetAccelGroup <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkUIManager")

	w <- .RGtkCall("S_gtk_ui_manager_get_accel_group", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkUIManagerGetWidget <-
function(object, path, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkUIManager")
	path <- as.character(path)

	w <- .RGtkCall("S_gtk_ui_manager_get_widget", object, path, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkUIManagerGetToplevels <-
function(object, types, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkUIManager")
	

	w <- .RGtkCall("S_gtk_ui_manager_get_toplevels", object, types, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkUIManagerGetAction <-
function(object, path, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkUIManager")
	path <- as.character(path)

	w <- .RGtkCall("S_gtk_ui_manager_get_action", object, path, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkUIManagerAddUiFromString <-
function(object, buffer, length = "-1", .flush = TRUE, .depwarn = TRUE, .errwarn = TRUE)
{
	checkPtrType(object, "GtkUIManager")
	buffer <- as.character(buffer)
	length <- as.integer(length)

	w <- .RGtkCall("S_gtk_ui_manager_add_ui_from_string", object, buffer, length, PACKAGE = "RGtk2", .flush = .flush)

	if(.errwarn && !is.null(w$error))
		warning(w$error[["message"]])

	return(w)
} 


gtkUIManagerAddUiFromFile <-
function(object, filename, .flush = TRUE, .depwarn = TRUE, .errwarn = TRUE)
{
	checkPtrType(object, "GtkUIManager")
	filename <- as.character(filename)

	w <- .RGtkCall("S_gtk_ui_manager_add_ui_from_file", object, filename, PACKAGE = "RGtk2", .flush = .flush)

	if(.errwarn && !is.null(w$error))
		warning(w$error[["message"]])

	return(w)
} 


gtkUIManagerAddUi <-
function(object, merge.id, path, name, action = NULL, type, top, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkUIManager")
	merge.id <- as.numeric(merge.id)
	path <- as.character(path)
	name <- as.character(name)
	if (!is.null( action )) action <- as.character(action)
	
	top <- as.logical(top)

	w <- .RGtkCall("S_gtk_ui_manager_add_ui", object, merge.id, path, name, action, type, top, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkUIManagerRemoveUi <-
function(object, merge.id, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkUIManager")
	merge.id <- as.numeric(merge.id)

	w <- .RGtkCall("S_gtk_ui_manager_remove_ui", object, merge.id, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkUIManagerGetUi <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkUIManager")

	w <- .RGtkCall("S_gtk_ui_manager_get_ui", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkUIManagerEnsureUpdate <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkUIManager")

	w <- .RGtkCall("S_gtk_ui_manager_ensure_update", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkUIManagerNewMergeId <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkUIManager")

	w <- .RGtkCall("S_gtk_ui_manager_new_merge_id", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkVButtonBoxGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_vbutton_box_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkVButtonBoxNew <-
function(show = TRUE, .flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_vbutton_box_new", PACKAGE = "RGtk2", .flush = .flush)

	if(show)
		gtkWidgetShowAll(w)

	return(w)
} 


gtkVButtonBoxGetSpacingDefault <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_vbutton_box_get_spacing_default", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkVButtonBoxSetSpacingDefault <-
function(spacing, .flush = TRUE, .depwarn = TRUE)
{
	spacing <- as.integer(spacing)

	w <- .RGtkCall("S_gtk_vbutton_box_set_spacing_default", spacing, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkVButtonBoxGetLayoutDefault <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_vbutton_box_get_layout_default", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkVButtonBoxSetLayoutDefault <-
function(layout, .flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_vbutton_box_set_layout_default", layout, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkVBoxGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_vbox_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkVBoxNew <-
function(homogeneous = NULL, spacing = NULL, show = TRUE, .flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_vbox_new", homogeneous, spacing, PACKAGE = "RGtk2", .flush = .flush)

	if(show)
		gtkWidgetShowAll(w)

	return(w)
} 


gtkViewportGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_viewport_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkViewportNew <-
function(hadjustment = NULL, vadjustment = NULL, show = TRUE, .flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_viewport_new", hadjustment, vadjustment, PACKAGE = "RGtk2", .flush = .flush)

	if(show)
		gtkWidgetShowAll(w)

	return(w)
} 


gtkViewportGetHadjustment <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkViewport")

	w <- .RGtkCall("S_gtk_viewport_get_hadjustment", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkViewportGetVadjustment <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkViewport")

	w <- .RGtkCall("S_gtk_viewport_get_vadjustment", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkViewportSetHadjustment <-
function(object, adjustment = NULL, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkViewport")
	if (!is.null( adjustment )) checkPtrType(adjustment, "GtkAdjustment")

	w <- .RGtkCall("S_gtk_viewport_set_hadjustment", object, adjustment, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkViewportSetVadjustment <-
function(object, adjustment = NULL, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkViewport")
	if (!is.null( adjustment )) checkPtrType(adjustment, "GtkAdjustment")

	w <- .RGtkCall("S_gtk_viewport_set_vadjustment", object, adjustment, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkViewportSetShadowType <-
function(object, type, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkViewport")
	

	w <- .RGtkCall("S_gtk_viewport_set_shadow_type", object, type, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkViewportGetShadowType <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkViewport")

	w <- .RGtkCall("S_gtk_viewport_get_shadow_type", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkVPanedGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_vpaned_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkVPanedNew <-
function(show = TRUE, .flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_vpaned_new", PACKAGE = "RGtk2", .flush = .flush)

	if(show)
		gtkWidgetShowAll(w)

	return(w)
} 


gtkVRulerGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_vruler_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkVRulerNew <-
function(show = TRUE, .flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_vruler_new", PACKAGE = "RGtk2", .flush = .flush)

	if(show)
		gtkWidgetShowAll(w)

	return(w)
} 


gtkVScaleGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_vscale_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkVScaleNew <-
function(adjustment = NULL, show = TRUE, .flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_vscale_new", adjustment, PACKAGE = "RGtk2", .flush = .flush)

	if(show)
		gtkWidgetShowAll(w)

	return(w)
} 


gtkVScaleNewWithRange <-
function(min, max, step, show = TRUE, .flush = TRUE, .depwarn = TRUE)
{
	min <- as.numeric(min)
	max <- as.numeric(max)
	step <- as.numeric(step)

	w <- .RGtkCall("S_gtk_vscale_new_with_range", min, max, step, PACKAGE = "RGtk2", .flush = .flush)

	if(show)
		gtkWidgetShowAll(w)

	return(w)
} 


gtkVScrollbarGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_vscrollbar_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkVScrollbarNew <-
function(adjustment = NULL, show = TRUE, .flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_vscrollbar_new", adjustment, PACKAGE = "RGtk2", .flush = .flush)

	if(show)
		gtkWidgetShowAll(w)

	return(w)
} 


gtkVSeparatorGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_vseparator_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkVSeparatorNew <-
function(show = TRUE, .flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_vseparator_new", PACKAGE = "RGtk2", .flush = .flush)

	if(show)
		gtkWidgetShowAll(w)

	return(w)
} 


gtkWidgetGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_widget_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkWidgetRef <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWidget")

	w <- .RGtkCall("S_gtk_widget_ref", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkWidgetUnref <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWidget")

	w <- .RGtkCall("S_gtk_widget_unref", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkWidgetDestroy <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWidget")

	w <- .RGtkCall("S_gtk_widget_destroy", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkWidgetUnparent <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWidget")

	w <- .RGtkCall("S_gtk_widget_unparent", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkWidgetShow <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWidget")

	w <- .RGtkCall("S_gtk_widget_show", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkWidgetShowNow <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWidget")

	w <- .RGtkCall("S_gtk_widget_show_now", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkWidgetHide <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWidget")

	w <- .RGtkCall("S_gtk_widget_hide", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkWidgetShowAll <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWidget")

	w <- .RGtkCall("S_gtk_widget_show_all", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkWidgetHideAll <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWidget")

	w <- .RGtkCall("S_gtk_widget_hide_all", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkWidgetSetNoShowAll <-
function(object, no.show.all, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWidget")
	no.show.all <- as.logical(no.show.all)

	w <- .RGtkCall("S_gtk_widget_set_no_show_all", object, no.show.all, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkWidgetGetNoShowAll <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWidget")

	w <- .RGtkCall("S_gtk_widget_get_no_show_all", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkWidgetMap <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWidget")

	w <- .RGtkCall("S_gtk_widget_map", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkWidgetUnmap <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWidget")

	w <- .RGtkCall("S_gtk_widget_unmap", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkWidgetRealize <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWidget")

	w <- .RGtkCall("S_gtk_widget_realize", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkWidgetUnrealize <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWidget")

	w <- .RGtkCall("S_gtk_widget_unrealize", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkWidgetQueueDraw <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWidget")

	w <- .RGtkCall("S_gtk_widget_queue_draw", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkWidgetQueueDrawArea <-
function(object, x, y, width, height, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWidget")
	x <- as.integer(x)
	y <- as.integer(y)
	width <- as.integer(width)
	height <- as.integer(height)

	w <- .RGtkCall("S_gtk_widget_queue_draw_area", object, x, y, width, height, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkWidgetQueueClear <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	if (.depwarn)
		warning("This function is deprecated: use GtkWidget.queue_draw")

	checkPtrType(object, "GtkWidget")

	w <- .RGtkCall("S_gtk_widget_queue_clear", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkWidgetQueueClearArea <-
function(object, x, y, width, height, .flush = TRUE, .depwarn = TRUE)
{
	if (.depwarn)
		warning("This function is deprecated: use GtkWidget.queue_draw_area")

	checkPtrType(object, "GtkWidget")
	x <- as.integer(x)
	y <- as.integer(y)
	width <- as.integer(width)
	height <- as.integer(height)

	w <- .RGtkCall("S_gtk_widget_queue_clear_area", object, x, y, width, height, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkWidgetQueueResize <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWidget")

	w <- .RGtkCall("S_gtk_widget_queue_resize", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkWidgetQueueResizeNoRedraw <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWidget")

	w <- .RGtkCall("S_gtk_widget_queue_resize_no_redraw", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkWidgetDraw <-
function(object, area, .flush = TRUE, .depwarn = TRUE)
{
	if (.depwarn)
		warning("This function is deprecated: use GtkWidget.queue_draw_area")

	checkPtrType(object, "GtkWidget")
	area <- as.GdkRectangle(area)

	w <- .RGtkCall("S_gtk_widget_draw", object, area, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkWidgetSizeRequest <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWidget")

	w <- .RGtkCall("S_gtk_widget_size_request", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkWidgetSizeAllocate <-
function(object, allocation, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWidget")
	allocation <- as.GtkAllocation(allocation)

	w <- .RGtkCall("S_gtk_widget_size_allocate", object, allocation, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkWidgetGetChildRequisition <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWidget")

	w <- .RGtkCall("S_gtk_widget_get_child_requisition", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkWidgetAddAccelerator <-
function(object, accel.signal, accel.group, accel.key, accel.mods, accel.flags, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWidget")
	accel.signal <- as.character(accel.signal)
	checkPtrType(accel.group, "GtkAccelGroup")
	accel.key <- as.numeric(accel.key)
	
	

	w <- .RGtkCall("S_gtk_widget_add_accelerator", object, accel.signal, accel.group, accel.key, accel.mods, accel.flags, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkWidgetRemoveAccelerator <-
function(object, accel.group, accel.key, accel.mods, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWidget")
	checkPtrType(accel.group, "GtkAccelGroup")
	accel.key <- as.numeric(accel.key)
	

	w <- .RGtkCall("S_gtk_widget_remove_accelerator", object, accel.group, accel.key, accel.mods, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkWidgetSetAccelPath <-
function(object, accel.path, accel.group, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWidget")
	accel.path <- as.character(accel.path)
	checkPtrType(accel.group, "GtkAccelGroup")

	w <- .RGtkCall("S_gtk_widget_set_accel_path", object, accel.path, accel.group, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkWidgetCanActivateAccel <-
function(object, signal.id, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWidget")
	signal.id <- as.numeric(signal.id)

	w <- .RGtkCall("S_gtk_widget_can_activate_accel", object, signal.id, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkWidgetMnemonicActivate <-
function(object, group.cycling, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWidget")
	group.cycling <- as.logical(group.cycling)

	w <- .RGtkCall("S_gtk_widget_mnemonic_activate", object, group.cycling, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkWidgetEvent <-
function(object, event, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWidget")
	checkPtrType(event, "GdkEvent")

	w <- .RGtkCall("S_gtk_widget_event", object, event, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkWidgetSendExpose <-
function(object, event, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWidget")
	checkPtrType(event, "GdkEvent")

	w <- .RGtkCall("S_gtk_widget_send_expose", object, event, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkWidgetActivate <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWidget")

	w <- .RGtkCall("S_gtk_widget_activate", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkWidgetSetScrollAdjustments <-
function(object, hadjustment = NULL, vadjustment = NULL, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWidget")
	if (!is.null( hadjustment )) checkPtrType(hadjustment, "GtkAdjustment")
	if (!is.null( vadjustment )) checkPtrType(vadjustment, "GtkAdjustment")

	w <- .RGtkCall("S_gtk_widget_set_scroll_adjustments", object, hadjustment, vadjustment, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkWidgetReparent <-
function(object, new.parent, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWidget")
	checkPtrType(new.parent, "GtkWidget")

	w <- .RGtkCall("S_gtk_widget_reparent", object, new.parent, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkWidgetIntersect <-
function(object, area, intersection, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWidget")
	area <- as.GdkRectangle(area)
	intersection <- as.GdkRectangle(intersection)

	w <- .RGtkCall("S_gtk_widget_intersect", object, area, intersection, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkWidgetRegionIntersect <-
function(object, region, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWidget")
	checkPtrType(region, "GdkRegion")

	w <- .RGtkCall("S_gtk_widget_region_intersect", object, region, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkWidgetFreezeChildNotify <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWidget")

	w <- .RGtkCall("S_gtk_widget_freeze_child_notify", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkWidgetChildNotify <-
function(object, child.property, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWidget")
	child.property <- as.character(child.property)

	w <- .RGtkCall("S_gtk_widget_child_notify", object, child.property, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkWidgetThawChildNotify <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWidget")

	w <- .RGtkCall("S_gtk_widget_thaw_child_notify", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkWidgetIsFocus <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWidget")

	w <- .RGtkCall("S_gtk_widget_is_focus", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkWidgetGrabFocus <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWidget")

	w <- .RGtkCall("S_gtk_widget_grab_focus", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkWidgetGrabDefault <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWidget")

	w <- .RGtkCall("S_gtk_widget_grab_default", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkWidgetSetName <-
function(object, name, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWidget")
	name <- as.character(name)

	w <- .RGtkCall("S_gtk_widget_set_name", object, name, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkWidgetGetName <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWidget")

	w <- .RGtkCall("S_gtk_widget_get_name", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkWidgetSetState <-
function(object, state, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWidget")
	

	w <- .RGtkCall("S_gtk_widget_set_state", object, state, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkWidgetSetSensitive <-
function(object, sensitive, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWidget")
	sensitive <- as.logical(sensitive)

	w <- .RGtkCall("S_gtk_widget_set_sensitive", object, sensitive, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkWidgetSetAppPaintable <-
function(object, app.paintable, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWidget")
	app.paintable <- as.logical(app.paintable)

	w <- .RGtkCall("S_gtk_widget_set_app_paintable", object, app.paintable, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkWidgetSetDoubleBuffered <-
function(object, double.buffered, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWidget")
	double.buffered <- as.logical(double.buffered)

	w <- .RGtkCall("S_gtk_widget_set_double_buffered", object, double.buffered, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkWidgetSetRedrawOnAllocate <-
function(object, redraw.on.allocate, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWidget")
	redraw.on.allocate <- as.logical(redraw.on.allocate)

	w <- .RGtkCall("S_gtk_widget_set_redraw_on_allocate", object, redraw.on.allocate, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkWidgetSetParent <-
function(object, parent, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWidget")
	checkPtrType(parent, "GtkWidget")

	w <- .RGtkCall("S_gtk_widget_set_parent", object, parent, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkWidgetSetParentWindow <-
function(object, parent.window, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWidget")
	checkPtrType(parent.window, "GdkWindow")

	w <- .RGtkCall("S_gtk_widget_set_parent_window", object, parent.window, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkWidgetSetChildVisible <-
function(object, is.visible, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWidget")
	is.visible <- as.logical(is.visible)

	w <- .RGtkCall("S_gtk_widget_set_child_visible", object, is.visible, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkWidgetGetChildVisible <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWidget")

	w <- .RGtkCall("S_gtk_widget_get_child_visible", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkWidgetGetParent <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWidget")

	w <- .RGtkCall("S_gtk_widget_get_parent", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkWidgetGetParentWindow <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWidget")

	w <- .RGtkCall("S_gtk_widget_get_parent_window", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkWidgetChildFocus <-
function(object, direction, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWidget")
	

	w <- .RGtkCall("S_gtk_widget_child_focus", object, direction, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkWidgetSetSizeRequest <-
function(object, width, height, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWidget")
	width <- as.integer(width)
	height <- as.integer(height)

	w <- .RGtkCall("S_gtk_widget_set_size_request", object, width, height, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkWidgetGetSizeRequest <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWidget")

	w <- .RGtkCall("S_gtk_widget_get_size_request", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkWidgetSetUposition <-
function(object, x, y, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWidget")
	x <- as.integer(x)
	y <- as.integer(y)

	w <- .RGtkCall("S_gtk_widget_set_uposition", object, x, y, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkWidgetSetUsize <-
function(object, width, height, .flush = TRUE, .depwarn = TRUE)
{
	if (.depwarn)
		warning("This function is deprecated: use GtkWidget.set_size_request")

	checkPtrType(object, "GtkWidget")
	width <- as.integer(width)
	height <- as.integer(height)

	w <- .RGtkCall("S_gtk_widget_set_usize", object, width, height, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkWidgetSetEvents <-
function(object, events, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWidget")
	events <- as.integer(events)

	w <- .RGtkCall("S_gtk_widget_set_events", object, events, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkWidgetAddEvents <-
function(object, events, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWidget")
	events <- as.integer(events)

	w <- .RGtkCall("S_gtk_widget_add_events", object, events, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkWidgetSetExtensionEvents <-
function(object, mode, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWidget")
	

	w <- .RGtkCall("S_gtk_widget_set_extension_events", object, mode, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkWidgetGetExtensionEvents <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWidget")

	w <- .RGtkCall("S_gtk_widget_get_extension_events", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkWidgetGetToplevel <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWidget")

	w <- .RGtkCall("S_gtk_widget_get_toplevel", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkWidgetGetAncestor <-
function(object, widget.type, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWidget")
	widget.type <- as.GType(widget.type)

	w <- .RGtkCall("S_gtk_widget_get_ancestor", object, widget.type, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkWidgetGetColormap <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWidget")

	w <- .RGtkCall("S_gtk_widget_get_colormap", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkWidgetGetVisual <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWidget")

	w <- .RGtkCall("S_gtk_widget_get_visual", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkWidgetGetScreen <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWidget")

	w <- .RGtkCall("S_gtk_widget_get_screen", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkWidgetHasScreen <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWidget")

	w <- .RGtkCall("S_gtk_widget_has_screen", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkWidgetGetDisplay <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWidget")

	w <- .RGtkCall("S_gtk_widget_get_display", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkWidgetGetRootWindow <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWidget")

	w <- .RGtkCall("S_gtk_widget_get_root_window", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkWidgetGetSettings <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWidget")

	w <- .RGtkCall("S_gtk_widget_get_settings", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkWidgetGetClipboard <-
function(object, selection, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWidget")
	selection <- as.GdkAtom(selection)

	w <- .RGtkCall("S_gtk_widget_get_clipboard", object, selection, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkWidgetGetAccessible <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWidget")

	w <- .RGtkCall("S_gtk_widget_get_accessible", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkWidgetSetColormap <-
function(object, colormap, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWidget")
	checkPtrType(colormap, "GdkColormap")

	w <- .RGtkCall("S_gtk_widget_set_colormap", object, colormap, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkWidgetGetEvents <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWidget")

	w <- .RGtkCall("S_gtk_widget_get_events", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkWidgetGetPointer <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWidget")

	w <- .RGtkCall("S_gtk_widget_get_pointer", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkWidgetIsAncestor <-
function(object, ancestor, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWidget")
	checkPtrType(ancestor, "GtkWidget")

	w <- .RGtkCall("S_gtk_widget_is_ancestor", object, ancestor, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkWidgetTranslateCoordinates <-
function(object, dest.widget, src.x, src.y, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWidget")
	checkPtrType(dest.widget, "GtkWidget")
	src.x <- as.integer(src.x)
	src.y <- as.integer(src.y)

	w <- .RGtkCall("S_gtk_widget_translate_coordinates", object, dest.widget, src.x, src.y, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkWidgetHideOnDelete <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWidget")

	w <- .RGtkCall("S_gtk_widget_hide_on_delete", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkWidgetSetStyle <-
function(object, style = NULL, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWidget")
	if (!is.null( style )) checkPtrType(style, "GtkStyle")

	w <- .RGtkCall("S_gtk_widget_set_style", object, style, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkWidgetEnsureStyle <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWidget")

	w <- .RGtkCall("S_gtk_widget_ensure_style", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkWidgetGetStyle <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWidget")

	w <- .RGtkCall("S_gtk_widget_get_style", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkWidgetModifyStyle <-
function(object, style, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWidget")
	checkPtrType(style, "GtkRcStyle")

	w <- .RGtkCall("S_gtk_widget_modify_style", object, style, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkWidgetGetModifierStyle <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWidget")

	w <- .RGtkCall("S_gtk_widget_get_modifier_style", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkWidgetModifyFg <-
function(object, state, color = NULL, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWidget")
	
	if (!is.null( color )) color <- as.GdkColor(color)

	w <- .RGtkCall("S_gtk_widget_modify_fg", object, state, color, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkWidgetModifyBg <-
function(object, state, color = NULL, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWidget")
	
	if (!is.null( color )) color <- as.GdkColor(color)

	w <- .RGtkCall("S_gtk_widget_modify_bg", object, state, color, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkWidgetModifyText <-
function(object, state, color = NULL, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWidget")
	
	if (!is.null( color )) color <- as.GdkColor(color)

	w <- .RGtkCall("S_gtk_widget_modify_text", object, state, color, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkWidgetModifyBase <-
function(object, state, color = NULL, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWidget")
	
	if (!is.null( color )) color <- as.GdkColor(color)

	w <- .RGtkCall("S_gtk_widget_modify_base", object, state, color, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkWidgetModifyFont <-
function(object, font.desc = NULL, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWidget")
	if (!is.null( font.desc )) checkPtrType(font.desc, "PangoFontDescription")

	w <- .RGtkCall("S_gtk_widget_modify_font", object, font.desc, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkWidgetCreatePangoContext <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWidget")

	w <- .RGtkCall("S_gtk_widget_create_pango_context", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkWidgetGetPangoContext <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWidget")

	w <- .RGtkCall("S_gtk_widget_get_pango_context", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkWidgetCreatePangoLayout <-
function(object, text, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWidget")
	text <- as.character(text)

	w <- .RGtkCall("S_gtk_widget_create_pango_layout", object, text, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkWidgetRenderIcon <-
function(object, stock.id, size, detail = "NULL", .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWidget")
	stock.id <- as.character(stock.id)
	
	if (!is.null( detail )) detail <- as.character(detail)

	w <- .RGtkCall("S_gtk_widget_render_icon", object, stock.id, size, detail, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkWidgetSetCompositeName <-
function(object, name, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWidget")
	name <- as.character(name)

	w <- .RGtkCall("S_gtk_widget_set_composite_name", object, name, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkWidgetGetCompositeName <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWidget")

	w <- .RGtkCall("S_gtk_widget_get_composite_name", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkWidgetResetRcStyles <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWidget")

	w <- .RGtkCall("S_gtk_widget_reset_rc_styles", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkWidgetPushColormap <-
function(cmap, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(cmap, "GdkColormap")

	w <- .RGtkCall("S_gtk_widget_push_colormap", cmap, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkWidgetPushCompositeChild <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_widget_push_composite_child", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkWidgetPopCompositeChild <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_widget_pop_composite_child", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkWidgetPopColormap <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_widget_pop_colormap", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkWidgetClassInstallStyleProperty <-
function(klass, pspec, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(klass, "GtkWidgetClass")
	pspec <- as.GParamSpec(pspec)

	w <- .RGtkCall("S_gtk_widget_class_install_style_property", klass, pspec, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkWidgetClassFindStyleProperty <-
function(klass, property.name, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(klass, "GtkWidgetClass")
	property.name <- as.character(property.name)

	w <- .RGtkCall("S_gtk_widget_class_find_style_property", klass, property.name, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkWidgetClassListStyleProperties <-
function(klass, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(klass, "GtkWidgetClass")

	w <- .RGtkCall("S_gtk_widget_class_list_style_properties", klass, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkWidgetStyleGetProperty <-
function(object, property.name, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWidget")
	property.name <- as.character(property.name)

	w <- .RGtkCall("S_gtk_widget_style_get_property", object, property.name, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkWidgetGetDefaultStyle <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_widget_get_default_style", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkWidgetSetDefaultColormap <-
function(colormap, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(colormap, "GdkColormap")

	w <- .RGtkCall("S_gtk_widget_set_default_colormap", colormap, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkWidgetGetDefaultColormap <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_widget_get_default_colormap", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkWidgetGetDefaultVisual <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_widget_get_default_visual", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkWidgetSetDirection <-
function(object, dir, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWidget")
	

	w <- .RGtkCall("S_gtk_widget_set_direction", object, dir, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkWidgetGetDirection <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWidget")

	w <- .RGtkCall("S_gtk_widget_get_direction", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkWidgetSetDefaultDirection <-
function(dir, .flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_widget_set_default_direction", dir, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkWidgetGetDefaultDirection <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_widget_get_default_direction", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkWidgetShapeCombineMask <-
function(object, shape.mask, offset.x, offset.y, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWidget")
	checkPtrType(shape.mask, "GdkBitmap")
	offset.x <- as.integer(offset.x)
	offset.y <- as.integer(offset.y)

	w <- .RGtkCall("S_gtk_widget_shape_combine_mask", object, shape.mask, offset.x, offset.y, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkWidgetResetShapes <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWidget")

	w <- .RGtkCall("S_gtk_widget_reset_shapes", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkWidgetPath <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWidget")

	w <- .RGtkCall("S_gtk_widget_path", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkWidgetClassPath <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWidget")

	w <- .RGtkCall("S_gtk_widget_class_path", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkWidgetListMnemonicLabels <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWidget")

	w <- .RGtkCall("S_gtk_widget_list_mnemonic_labels", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkWidgetAddMnemonicLabel <-
function(object, label, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWidget")
	checkPtrType(label, "GtkWidget")

	w <- .RGtkCall("S_gtk_widget_add_mnemonic_label", object, label, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkWidgetRemoveMnemonicLabel <-
function(object, label, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWidget")
	checkPtrType(label, "GtkWidget")

	w <- .RGtkCall("S_gtk_widget_remove_mnemonic_label", object, label, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkRequisitionGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_requisition_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkRequisitionCopy <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkRequisition")

	w <- .RGtkCall("S_gtk_requisition_copy", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkRequisitionFree <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkRequisition")

	w <- .RGtkCall("S_gtk_requisition_free", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkWindowGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_window_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkWindowNew <-
function(type = NULL, show = TRUE, .flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_window_new", type, PACKAGE = "RGtk2", .flush = .flush)

	if(show)
		gtkWidgetShowAll(w)

	return(w)
} 


gtkWindowSetTitle <-
function(object, title, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWindow")
	title <- as.character(title)

	w <- .RGtkCall("S_gtk_window_set_title", object, title, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkWindowGetTitle <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWindow")

	w <- .RGtkCall("S_gtk_window_get_title", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkWindowSetWmclass <-
function(object, wmclass.name, wmclass.class, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWindow")
	wmclass.name <- as.character(wmclass.name)
	wmclass.class <- as.character(wmclass.class)

	w <- .RGtkCall("S_gtk_window_set_wmclass", object, wmclass.name, wmclass.class, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkWindowSetRole <-
function(object, role, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWindow")
	role <- as.character(role)

	w <- .RGtkCall("S_gtk_window_set_role", object, role, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkWindowGetRole <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWindow")

	w <- .RGtkCall("S_gtk_window_get_role", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkWindowAddAccelGroup <-
function(object, accel.group, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWindow")
	checkPtrType(accel.group, "GtkAccelGroup")

	w <- .RGtkCall("S_gtk_window_add_accel_group", object, accel.group, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkWindowRemoveAccelGroup <-
function(object, accel.group, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWindow")
	checkPtrType(accel.group, "GtkAccelGroup")

	w <- .RGtkCall("S_gtk_window_remove_accel_group", object, accel.group, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkWindowSetPosition <-
function(object, position, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWindow")
	

	w <- .RGtkCall("S_gtk_window_set_position", object, position, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkWindowActivateFocus <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWindow")

	w <- .RGtkCall("S_gtk_window_activate_focus", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkWindowSetFocus <-
function(object, focus = NULL, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWindow")
	if (!is.null( focus )) checkPtrType(focus, "GtkWidget")

	w <- .RGtkCall("S_gtk_window_set_focus", object, focus, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkWindowGetFocus <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWindow")

	w <- .RGtkCall("S_gtk_window_get_focus", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkWindowSetDefault <-
function(object, default.widget = NULL, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWindow")
	if (!is.null( default.widget )) checkPtrType(default.widget, "GtkWidget")

	w <- .RGtkCall("S_gtk_window_set_default", object, default.widget, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkWindowActivateDefault <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWindow")

	w <- .RGtkCall("S_gtk_window_activate_default", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkWindowSetTransientFor <-
function(object, parent = NULL, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWindow")
	if (!is.null( parent )) checkPtrType(parent, "GtkWindow")

	w <- .RGtkCall("S_gtk_window_set_transient_for", object, parent, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkWindowGetTransientFor <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWindow")

	w <- .RGtkCall("S_gtk_window_get_transient_for", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkWindowSetTypeHint <-
function(object, hint, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWindow")
	

	w <- .RGtkCall("S_gtk_window_set_type_hint", object, hint, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkWindowGetTypeHint <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWindow")

	w <- .RGtkCall("S_gtk_window_get_type_hint", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkWindowSetSkipTaskbarHint <-
function(object, setting, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWindow")
	setting <- as.logical(setting)

	w <- .RGtkCall("S_gtk_window_set_skip_taskbar_hint", object, setting, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkWindowGetSkipTaskbarHint <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWindow")

	w <- .RGtkCall("S_gtk_window_get_skip_taskbar_hint", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkWindowSetSkipPagerHint <-
function(object, setting, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWindow")
	setting <- as.logical(setting)

	w <- .RGtkCall("S_gtk_window_set_skip_pager_hint", object, setting, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkWindowGetSkipPagerHint <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWindow")

	w <- .RGtkCall("S_gtk_window_get_skip_pager_hint", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkWindowSetUrgencyHint <-
function(object, setting, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWindow")
	setting <- as.logical(setting)

	w <- .RGtkCall("S_gtk_window_set_urgency_hint", object, setting, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkWindowGetUrgencyHint <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWindow")

	w <- .RGtkCall("S_gtk_window_get_urgency_hint", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkWindowSetAcceptFocus <-
function(object, setting, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWindow")
	setting <- as.logical(setting)

	w <- .RGtkCall("S_gtk_window_set_accept_focus", object, setting, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkWindowGetAcceptFocus <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWindow")

	w <- .RGtkCall("S_gtk_window_get_accept_focus", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkWindowSetDestroyWithParent <-
function(object, setting, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWindow")
	setting <- as.logical(setting)

	w <- .RGtkCall("S_gtk_window_set_destroy_with_parent", object, setting, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkWindowGetDestroyWithParent <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWindow")

	w <- .RGtkCall("S_gtk_window_get_destroy_with_parent", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkWindowSetResizable <-
function(object, resizable, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWindow")
	resizable <- as.logical(resizable)

	w <- .RGtkCall("S_gtk_window_set_resizable", object, resizable, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkWindowGetResizable <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWindow")

	w <- .RGtkCall("S_gtk_window_get_resizable", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkWindowSetGravity <-
function(object, gravity, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWindow")
	

	w <- .RGtkCall("S_gtk_window_set_gravity", object, gravity, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkWindowGetGravity <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWindow")

	w <- .RGtkCall("S_gtk_window_get_gravity", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkWindowSetGeometryHints <-
function(object, geometry.widget, geometry, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWindow")
	checkPtrType(geometry.widget, "GtkWidget")
	geometry <- as.GdkGeometry(geometry)

	w <- .RGtkCall("S_gtk_window_set_geometry_hints", object, geometry.widget, geometry, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkWindowSetScreen <-
function(object, screen, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWindow")
	checkPtrType(screen, "GdkScreen")

	w <- .RGtkCall("S_gtk_window_set_screen", object, screen, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkWindowGetScreen <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWindow")

	w <- .RGtkCall("S_gtk_window_get_screen", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkWindowIsActive <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWindow")

	w <- .RGtkCall("S_gtk_window_is_active", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkWindowHasToplevelFocus <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWindow")

	w <- .RGtkCall("S_gtk_window_has_toplevel_focus", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkWindowSetHasFrame <-
function(object, setting, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWindow")
	setting <- as.logical(setting)

	w <- .RGtkCall("S_gtk_window_set_has_frame", object, setting, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkWindowGetHasFrame <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWindow")

	w <- .RGtkCall("S_gtk_window_get_has_frame", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkWindowSetFrameDimensions <-
function(object, left, top, right, bottom, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWindow")
	left <- as.integer(left)
	top <- as.integer(top)
	right <- as.integer(right)
	bottom <- as.integer(bottom)

	w <- .RGtkCall("S_gtk_window_set_frame_dimensions", object, left, top, right, bottom, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkWindowGetFrameDimensions <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWindow")

	w <- .RGtkCall("S_gtk_window_get_frame_dimensions", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkWindowSetDecorated <-
function(object, setting, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWindow")
	setting <- as.logical(setting)

	w <- .RGtkCall("S_gtk_window_set_decorated", object, setting, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkWindowGetDecorated <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWindow")

	w <- .RGtkCall("S_gtk_window_get_decorated", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkWindowSetIconList <-
function(object, list, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWindow")
	list <- as.GList(list)

	w <- .RGtkCall("S_gtk_window_set_icon_list", object, list, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkWindowGetIconList <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWindow")

	w <- .RGtkCall("S_gtk_window_get_icon_list", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkWindowSetIcon <-
function(object, icon = NULL, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWindow")
	if (!is.null( icon )) checkPtrType(icon, "GdkPixbuf")

	w <- .RGtkCall("S_gtk_window_set_icon", object, icon, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkWindowSetIconFromFile <-
function(object, filename, .flush = TRUE, .depwarn = TRUE, .errwarn = TRUE)
{
	checkPtrType(object, "GtkWindow")
	filename <- as.character(filename)

	w <- .RGtkCall("S_gtk_window_set_icon_from_file", object, filename, PACKAGE = "RGtk2", .flush = .flush)

	if(.errwarn && !is.null(w$error))
		warning(w$error[["message"]])

	return(w)
} 


gtkWindowGetIcon <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWindow")

	w <- .RGtkCall("S_gtk_window_get_icon", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkWindowSetDefaultIconList <-
function(list, .flush = TRUE, .depwarn = TRUE)
{
	list <- as.GList(list)

	w <- .RGtkCall("S_gtk_window_set_default_icon_list", list, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkWindowGetDefaultIconList <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_window_get_default_icon_list", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkWindowSetDefaultIcon <-
function(icon, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(icon, "GdkPixbuf")

	w <- .RGtkCall("S_gtk_window_set_default_icon", icon, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkWindowSetDefaultIconFromFile <-
function(filename, .flush = TRUE, .depwarn = TRUE, .errwarn = TRUE)
{
	filename <- as.character(filename)

	w <- .RGtkCall("S_gtk_window_set_default_icon_from_file", filename, PACKAGE = "RGtk2", .flush = .flush)

	if(.errwarn && !is.null(w$error))
		warning(w$error[["message"]])

	return(invisible(w))
} 


gtkWindowSetAutoStartupNotification <-
function(setting, .flush = TRUE, .depwarn = TRUE)
{
	setting <- as.logical(setting)

	w <- .RGtkCall("S_gtk_window_set_auto_startup_notification", setting, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkWindowSetModal <-
function(object, modal, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWindow")
	modal <- as.logical(modal)

	w <- .RGtkCall("S_gtk_window_set_modal", object, modal, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkWindowGetModal <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWindow")

	w <- .RGtkCall("S_gtk_window_get_modal", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkWindowListToplevels <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_window_list_toplevels", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkWindowAddMnemonic <-
function(object, keyval, target, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWindow")
	keyval <- as.numeric(keyval)
	checkPtrType(target, "GtkWidget")

	w <- .RGtkCall("S_gtk_window_add_mnemonic", object, keyval, target, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkWindowRemoveMnemonic <-
function(object, keyval, target, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWindow")
	keyval <- as.numeric(keyval)
	checkPtrType(target, "GtkWidget")

	w <- .RGtkCall("S_gtk_window_remove_mnemonic", object, keyval, target, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkWindowMnemonicActivate <-
function(object, keyval, modifier, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWindow")
	keyval <- as.numeric(keyval)
	

	w <- .RGtkCall("S_gtk_window_mnemonic_activate", object, keyval, modifier, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkWindowSetMnemonicModifier <-
function(object, modifier, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWindow")
	

	w <- .RGtkCall("S_gtk_window_set_mnemonic_modifier", object, modifier, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkWindowGetMnemonicModifier <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWindow")

	w <- .RGtkCall("S_gtk_window_get_mnemonic_modifier", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkWindowActivateKey <-
function(object, event, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWindow")
	checkPtrType(event, "GdkEventKey")

	w <- .RGtkCall("S_gtk_window_activate_key", object, event, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkWindowPropagateKeyEvent <-
function(object, event, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWindow")
	checkPtrType(event, "GdkEventKey")

	w <- .RGtkCall("S_gtk_window_propagate_key_event", object, event, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkWindowPresent <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWindow")

	w <- .RGtkCall("S_gtk_window_present", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkWindowPresentWithTime <-
function(object, timestamp, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWindow")
	timestamp <- as.numeric(timestamp)

	w <- .RGtkCall("S_gtk_window_present_with_time", object, timestamp, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkWindowIconify <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWindow")

	w <- .RGtkCall("S_gtk_window_iconify", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkWindowDeiconify <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWindow")

	w <- .RGtkCall("S_gtk_window_deiconify", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkWindowStick <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWindow")

	w <- .RGtkCall("S_gtk_window_stick", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkWindowUnstick <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWindow")

	w <- .RGtkCall("S_gtk_window_unstick", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkWindowMaximize <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWindow")

	w <- .RGtkCall("S_gtk_window_maximize", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkWindowUnmaximize <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWindow")

	w <- .RGtkCall("S_gtk_window_unmaximize", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkWindowFullscreen <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWindow")

	w <- .RGtkCall("S_gtk_window_fullscreen", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkWindowUnfullscreen <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWindow")

	w <- .RGtkCall("S_gtk_window_unfullscreen", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkWindowSetKeepAbove <-
function(object, setting, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWindow")
	setting <- as.logical(setting)

	w <- .RGtkCall("S_gtk_window_set_keep_above", object, setting, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkWindowSetKeepBelow <-
function(object, setting, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWindow")
	setting <- as.logical(setting)

	w <- .RGtkCall("S_gtk_window_set_keep_below", object, setting, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkWindowBeginResizeDrag <-
function(object, edge, button, root.x, root.y, timestamp, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWindow")
	
	button <- as.integer(button)
	root.x <- as.integer(root.x)
	root.y <- as.integer(root.y)
	timestamp <- as.numeric(timestamp)

	w <- .RGtkCall("S_gtk_window_begin_resize_drag", object, edge, button, root.x, root.y, timestamp, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkWindowBeginMoveDrag <-
function(object, button, root.x, root.y, timestamp, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWindow")
	button <- as.integer(button)
	root.x <- as.integer(root.x)
	root.y <- as.integer(root.y)
	timestamp <- as.numeric(timestamp)

	w <- .RGtkCall("S_gtk_window_begin_move_drag", object, button, root.x, root.y, timestamp, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkWindowSetPolicy <-
function(object, allow.shrink, allow.grow, auto.shrink, .flush = TRUE, .depwarn = TRUE)
{
	if (.depwarn)
		warning("This function is deprecated: use GtkWindow.set_resizable")

	checkPtrType(object, "GtkWindow")
	allow.shrink <- as.integer(allow.shrink)
	allow.grow <- as.integer(allow.grow)
	auto.shrink <- as.integer(auto.shrink)

	w <- .RGtkCall("S_gtk_window_set_policy", object, allow.shrink, allow.grow, auto.shrink, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkWindowSetDefaultSize <-
function(object, width, height, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWindow")
	width <- as.integer(width)
	height <- as.integer(height)

	w <- .RGtkCall("S_gtk_window_set_default_size", object, width, height, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkWindowGetDefaultSize <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWindow")

	w <- .RGtkCall("S_gtk_window_get_default_size", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkWindowResize <-
function(object, width, height, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWindow")
	width <- as.integer(width)
	height <- as.integer(height)

	w <- .RGtkCall("S_gtk_window_resize", object, width, height, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkWindowGetSize <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWindow")

	w <- .RGtkCall("S_gtk_window_get_size", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkWindowMove <-
function(object, x, y, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWindow")
	x <- as.integer(x)
	y <- as.integer(y)

	w <- .RGtkCall("S_gtk_window_move", object, x, y, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkWindowGetPosition <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWindow")

	w <- .RGtkCall("S_gtk_window_get_position", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkWindowParseGeometry <-
function(object, geometry, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWindow")
	geometry <- as.character(geometry)

	w <- .RGtkCall("S_gtk_window_parse_geometry", object, geometry, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkWindowReshowWithInitialSize <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWindow")

	w <- .RGtkCall("S_gtk_window_reshow_with_initial_size", object, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkWindowGroupGetType <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_window_group_get_type", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkWindowGroupNew <-
function(.flush = TRUE, .depwarn = TRUE)
{
	

	w <- .RGtkCall("S_gtk_window_group_new", PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkWindowGroupAddWindow <-
function(object, window, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWindowGroup")
	checkPtrType(window, "GtkWindow")

	w <- .RGtkCall("S_gtk_window_group_add_window", object, window, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkWindowGroupRemoveWindow <-
function(object, window, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWindowGroup")
	checkPtrType(window, "GtkWindow")

	w <- .RGtkCall("S_gtk_window_group_remove_window", object, window, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkWindowRemoveEmbeddedXid <-
function(object, xid, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWindow")
	xid <- as.numeric(xid)

	w <- .RGtkCall("S_gtk_window_remove_embedded_xid", object, xid, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkWindowAddEmbeddedXid <-
function(object, xid, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWindow")
	xid <- as.numeric(xid)

	w <- .RGtkCall("S_gtk_window_add_embedded_xid", object, xid, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkWindowSetFocusOnMap <-
function(object, setting, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWindow")
	setting <- as.logical(setting)

	w <- .RGtkCall("S_gtk_window_set_focus_on_map", object, setting, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkWindowGetFocusOnMap <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWindow")

	w <- .RGtkCall("S_gtk_window_get_focus_on_map", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkWindowSetIconName <-
function(object, name = NULL, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWindow")
	if (!is.null( name )) name <- as.character(name)

	w <- .RGtkCall("S_gtk_window_set_icon_name", object, name, PACKAGE = "RGtk2", .flush = .flush)

	return(invisible(w))
} 


gtkWindowGetIconName <-
function(object, .flush = TRUE, .depwarn = TRUE)
{
	checkPtrType(object, "GtkWindow")

	w <- .RGtkCall("S_gtk_window_get_icon_name", object, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 


gtkWindowSetDefaultIconName <-
function(name, .flush = TRUE, .depwarn = TRUE)
{
	name <- as.character(name)

	w <- .RGtkCall("S_gtk_window_set_default_icon_name", name, PACKAGE = "RGtk2", .flush = .flush)

	return(w)
} 

