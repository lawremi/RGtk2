# appWindow demo from GTK

window <- NULL

# define some callbacks

activate.radio.action <- function(action, current)
{
    name <- action$getName()
    typename <- action$typeName()
    value <- current$getCurrentValue()
    if (current$getActive()) {
        dialog <- gtkMessageDialogNew(window, "destroy-with-parent", "info", "close",
                       "You activated radio action:", name, "of type ", typename,
                       "\nCurrent value: ", value)
        connectSignal(dialog, "response", gtkWidgetDestroy)
    }

}

activate.action <- function(action, w)
{
    name <- action$getName()
    typename <- action$typeName() # parent, dialog mode, message type, buttons, message
    dialog <- gtkMessageDialogNew(window, "destroy-with-parent", "info", "close",
        "You activated action:", name, "of type", typename)
    connectSignal(dialog, "response", gtkWidgetDestroy)
}
activate.email <- function(about, link, data)
{
    print(paste("send mail to", link))
}
activate.url <- function(about, link, data)
{
    print(paste("show url", link))
}
about.cb <- function(action, window)
{
    filename <- demofile("rgtk-logo.gif")
    if (file.exists(filename)) {
        pixbuf <- gdkPixbufNewFromFile(filename)[[1]]
        # make white space transparent
        transparent <- pixbuf$addAlpha(TRUE, 255, 255, 255)
    }

    gtkAboutDialogSetEmailHook(activate.email)
    gtkAboutDialogSetUrlHook(activate.url)

    gtkShowAboutDialog(window, name="RGtk Example", version="2.0 beta",
        copyright="(C) 2005 Michael Lawrence and Duncan", license="Have Fun!",
        website="http://www.omegahat.org/RGtk", comments="An example of RGtk's power",
        authors=c("Michael <lawremi@iastate.edu>", "Duncan"), documenters="Nobody yet", logo=transparent)
}
update.statusbar <- function(buffer, statusbar)
{
    statusbar$pop(0)
    count <- buffer$getCharCount()
    # get an "iter" describing the position of the cursor
    iter <- buffer$getIterAtMark(buffer$getInsert())$iter
    row <- iter$getLine()
    col <- iter$getLineOffset()
    msg <- paste("Cursor at row", row, "column", col, "-", count, "chars in document")
    statusbar$push(0, msg)
}

mark.set.callback <- function(buffer, new.location, mark, data)
{
    update.statusbar(buffer, data)
}

update.resize.grip <- function(widget, event, statusbar)
{
    if (any(as.logical(bitAnd(event[["changedMask"]],
        bitOr(GdkWindowState["maximized"], GdkWindowState["fullscreen"])))))
    {
        statusbar$setHasResizeGrip(FALSE)
    }
    return(FALSE)
}

registered <- FALSE
register.stock.icons <- function()
{
    if (registered)
        return

    item <- list(c("rgtk-logo", "_RGtk!", 0, 0, NULL))

    gtkStockAdd(item) # register as stock

    # now we also have to add it to an icon factory
    factory <- gtkIconFactoryNew() # make our own factory
    gtkIconFactoryAddDefault(factory) # make it a default factory

    filename <- demofile("rgtk-logo.gif")
    if (file.exists(filename)) {
        pixbuf <- gdkPixbufNewFromFile(filename)[[1]]
        # make white space transparent
        transparent <- pixbuf$addAlpha(TRUE, 255, 255, 255)
        # make an icon from the image and add it to factory using stock id
        icon.set <- gtkIconSetNewFromPixbuf(transparent)
        factory$add("rgtk-logo", icon.set)
    } else warning("Could not load the RGtk logo")

    registered = TRUE
}

# create the actions

entries <- list(
    # name, stock.id (prefab icons), label (. signifies mneumonic)
    list("FileMenu", NULL, "_File"),
    list("PreferencesMenu", NULL, "_Preferences"),
    list("ColorMenu", NULL, "_Color"),
    list("ShapeMenu", NULL, "_Shape"),
    list("HelpMenu", NULL, "_Help"), # accelerator (kb shortcut), tooltip, callback
    list("New", "gtk-new", "_New", "<control>N", "Create a new file", activate.action),
    list("Open", "gtk-open", "_Open", "<control>O", "Open a file", activate.action),
    list("Save", "gtk-save", "_Save", "<control>S", "Save current file", activate.action),
    list("SaveAs", "gtk-save", "Save _As...", NULL, "Save to a file", activate.action),
    list("Quit", "gtk-quit", "_Quit", "<control>Q", "Quit", activate.action),
    list("About", NULL, "_About", "<control>A", "About", about.cb),
    list("Logo", "rgtk-logo", NULL, NULL, "RGtk", activate.action)
)

# create radio actions for choosing a color and a shape

color.entries <- list(
    list("Red", NULL, "_Red", "<control>R", "Blood", 0), # value
    list("Green", NULL, "_Green", "<control>G", "Grass", 1),
    list("Blue", NULL, "_Blue", "<control>B", "Sky", 2)
)
shape.entries <- list(
    list("Square", NULL, "_Square", "<control>S", "Square", 0),
    list("Rectangle", NULL, "_Rectangle", "<control>R", "Rectangle", 1),
    list("Oval", NULL, "_Oval", "<control>O", "Egg", 2)
)

# create some toggle (on/off) actions
toggle.entries <- list(c("Bold", "gtk-bold", "_Bold", "<control>B", "Bold", activate.action, TRUE)) # active?

# add the RGtk logo to themeable icons
register.stock.icons()

# create a window
window <- gtkWindowNew("toplevel")
window$setDefaultSize(200, 200)
window$setTitle("RGtk is in business")

# add a table layout
table <- gtkTableNew(1, 4, FALSE)
window$add(table)

agroup <- gtkActionGroupNew("AppWindowActions")

# add actions to group with the window widget passed to callbacks
agroup$addActions(entries, window)
agroup$addToggleActions(toggle.entries)
agroup$addRadioActions(color.entries, 0, activate.radio.action)
agroup$addRadioActions(shape.entries, 0, activate.radio.action)

# create a UI manager to read in menus specified in XML
manager <- gtkUIManagerNew()

window$setData("ui-manager", manager)
manager$insertActionGroup(agroup, 0)

window$addAccelGroup(manager$getAccelGroup())

# Define some XML
uistr <- paste(
"<ui>",
"  <menubar name='MenuBar'>",
"    <menu action='FileMenu'>",
"      <menuitem action='New'/>",
"      <menuitem action='Open'/>",
"      <menuitem action='Save'/>",
"      <menuitem action='SaveAs'/>",
"      <separator/>",
"      <menuitem action='Quit'/>",
"    </menu>",
"    <menu action='PreferencesMenu'>",
"      <menu action='ColorMenu'>",
"	<menuitem action='Red'/>",
"	<menuitem action='Green'/>",
"	<menuitem action='Blue'/>",
"      </menu>",
"      <menu action='ShapeMenu'>",
"        <menuitem action='Square'/>",
"        <menuitem action='Rectangle'/>",
"        <menuitem action='Oval'/>",
"      </menu>",
"      <menuitem action='Bold'/>",
"    </menu>",
"    <menu action='HelpMenu'>",
"      <menuitem action='About'/>",
"    </menu>",
"  </menubar>",
"  <toolbar  name='ToolBar'>",
"    <toolitem action='Open'/>",
"    <toolitem action='Quit'/>",
"    <separator action='Sep1'/>",
"    <toolitem action='Logo'/>",
"  </toolbar>",
"</ui>", sep="\n")

manager$addUIFromString(uistr)
menubar <- manager$getWidget("/MenuBar")
menubar$show() # location, layout behavior, padding
table$attach(menubar, 0, 1, 0, 1, c("expand", "fill"), 0, 0, 0)

bar <- manager$getWidget("/ToolBar")
bar$setTooltips(TRUE)
bar$show()
table$attach(bar, 0, 1, 1, 2, c("expand", "fill"), 0, 0, 0)

scrolled.window <- gtkScrolledWindowNew()
scrolled.window$setPolicy("automatic", "automatic")
scrolled.window$setShadowType("in") # add scrolled window below toolbar and fill the remaining space
table$attach(scrolled.window, 0, 1, 2, 3, c("expand", "fill"), c("expand", "fill"), 0, 0)

# now let the user put some text in the scrolling window

contents <- gtkTextViewNew()
contents$grabFocus()
scrolled.window$add(contents)

# how about a cool status bar?

statusbar <- gtkStatusbarNew() # squeeze it in at the bottom
table$attach(statusbar, 0, 1, 3, 4, c("expand", "fill"), 0, 0, 0)

buffer <- contents$getBuffer() # statusbar listens to buffer
connectSignal(buffer, "changed", update.statusbar, statusbar)
connectSignal(buffer, "mark_set", mark.set.callback, statusbar)
# link resize grip to window state
connectSignal(window, "window_state_event", update.resize.grip, statusbar)

update.statusbar(buffer, statusbar)