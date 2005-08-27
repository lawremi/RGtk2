browserForward.handler <- function(action, browser) { 
	browser$goForward()
}
browserBackward.handler <- function(action, browser) {
	browser$goBack()
}
browserRefresh.handler <- function(action, browser) {
	browser$reload("normal")
}
browserHome.handler <- function(action, browser) {
	browser$loadUrl(browser$getData("home"))
}
browserStop.handler <- function(action, browser) {
	browser$stopLoad()
}
browserLinkMessage.handler <- function(browser, statusbar)
{
	statusbar$push(statusbar$getContextId("link"), browser$getLinkMessage())
}
browserLocationAction.handler <- function(browser, ag)
{
	 ag$getAction("BrowserBack")$setSensitive(browser$canGoBack())
	 ag$getAction("BrowserForward")$setSensitive(browser$canGoForward())
	 ag$getAction("BrowserRefresh")$setSensitive(TRUE)
}
browserLocationEntry.handler <- function(browser, entry)
{
	entry$setText(browser$getLocation())
}
browserNetState.handler <- function(browser, progress, status, statusbar)
{
	if (status > 0) { print(status) } # i think this indicates an error
	message <- ""
	if (bitCheck(bitAnd(progress, GtkMozEmbedProgressFlags[["is-request"]]))) {
		if (bitCheck(bitAnd(progress, GtkMozEmbedProgressFlags[["transferring"]])))
			message <- "Sending request..."
		else if (bitCheck(bitAnd(progress, GtkMozEmbedProgressFlags[["stop"]])))
			message <- "Waiting..."
	} else if (bitCheck(bitAnd(progress, GtkMozEmbedProgressFlags[["is-document"]])))
		message <- "Transferring data..."
	else if (bitCheck(bitAnd(progress, GtkMozEmbedProgressFlags[["stop"]])))
		message <- "Finished"
	statusbar$push(statusbar$getContextId("progress"), message)
}
browserTitle.handler <- function(browser, window)
{
	window$setTitle(paste("RGtk Web Browser:", browser$getTitle()))
}
browserNetStart.handler <- function(browser, action)
{
	action$setSensitive(TRUE)
}
browserNetStop.handler <- function(browser, action)
{
	action$setSensitive(FALSE)
}
browserUrlEntry.handler <- function(entry, browser)
{
	browser$loadUrl(entry$getText())
}

	browserWindow <- gtkWindowNew("toplevel", show = F)
	browserWindow$setTitle("RGtk web browser")
	browserWindow$setSizeRequest(800, 500)
	
	mozembed <- gtkMozEmbedNew()
	
	actionEntries <- list(
		list("BrowserBack", "gtk-go-back", "Go _Back", "<control>B", "Go back to previous page", browserBackward.handler),
		list("BrowserForward", "gtk-go-forward", "Go _Forward", "<control>F", "Go forward to next page", browserForward.handler),
		list("BrowserRefresh", "gtk-refresh", "_Refresh", "<control>F", "Refresh the current page", browserRefresh.handler),
		list("BrowserHome", "gtk-home", "Go _Home", "<control>H", "Go back to initial page", browserHome.handler),
		list("BrowserStop", "gtk-stop", "_Stop", "<control>F", "Stop operation", browserStop.handler)
	)
	
	ag <- gtkActionGroupNew("BrowserActions")
	ag$addActions(actionEntries, mozembed)
	
	uiManager <- gtkUIManagerNew()
    uiManager$insertActionGroup(ag, 0)
    
	ui.xml <- paste(
		'<ui>',
			'<toolbar name="Toolbar">',
				'<toolitem name="Back" action="BrowserBack"/>',
				'<toolitem name="Forward" action="BrowserForward"/>',
				'<toolitem name="Refresh" action="BrowserRefresh"/>',
				'<toolitem name="Home" action="BrowserHome"/>',
				'<toolitem name="Stop" action="BrowserStop"/>',
			'</toolbar>',
		'</ui>',
	sep="\n")
	
	uiManager$addUiFromString(ui.xml)
	
	toolbar <- uiManager$getWidget("/Toolbar")
	toolbar$setStyle("icons")
	
	urlEntry <- gtkEntryNew()
	connectSignal(urlEntry, "activate", browserUrlEntry.handler, mozembed)
	urlEntryItem <- gtkToolItemNew()
	urlEntryItem$setExpand(TRUE)
	urlEntryItem$add(urlEntry)
	toolbar$insert(urlEntryItem, -1)
	
	statusbar <- gtkStatusbarNew()
	statusbar$setHasResizeGrip(TRUE)
	
	vbox <- gtkVBoxNew()
	vbox$packStart(toolbar, FALSE, FALSE, 0)
	vbox$packStart(mozembed, TRUE, TRUE, 0)
	vbox$packStart(statusbar, FALSE, FALSE, 0)
	browserWindow$add(vbox)
	
	connectSignal(mozembed, "link_message", browserLinkMessage.handler, statusbar)
	connectSignal(mozembed, "location", browserLocationAction.handler, ag)
	connectSignal(mozembed, "location", browserLocationEntry.handler, urlEntry)
	connectSignal(mozembed, "net_state", browserNetState.handler, statusbar)
	connectSignal(mozembed, "title", browserTitle.handler, browserWindow)
	
	stopAction <- ag$getAction("BrowserStop")
	connectSignal(mozembed, "net_start", browserNetStart.handler, stopAction)
	connectSignal(mozembed, "net_stop", browserNetStop.handler, stopAction)
	
	home <- "http://www.r-project.org"
	mozembed$loadUrl(home)
	mozembed$setData("home", home)
	
	browserWindow$showAll()
