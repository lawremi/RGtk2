###################################################
### chunk number 1: 
###################################################
#line 4 "SweaveInput"
require(RGtk2)


###################################################
### chunk number 2: rgtk2-menus-actions-constructor
###################################################
#line 29 "SweaveInput"
a <- gtkAction(name="ok", label="_Ok", 
               tooltip="An OK button", stock.id="gtk-ok")


###################################################
### chunk number 3: rgtk2-menus-actions-activate
###################################################
#line 40 "SweaveInput"
gSignalConnect(a, "activate", f = function(w, data) {
  print(a$getName())                    # or some useful thing
})


###################################################
### chunk number 4: ConnectAction
###################################################
#line 53 "SweaveInput"
b <- gtkButton()
b$setRelatedAction(a)


###################################################
### chunk number 5: rgtk2-menus-action-appearance eval=FALSE
###################################################
## #line 64 "SweaveInput"
## b["use-action-appearance"] <- TRUE


###################################################
### chunk number 6: rgtk2-menus-action-group
###################################################
#line 73 "SweaveInput"
group <- gtkActionGroup()
group$addActionWithAccel(a, "<control>O")


###################################################
### chunk number 7: rgtk2-menus-toggle-action
###################################################
#line 90 "SweaveInput"
fullScreen <- gtkToggleAction("fullscreen", "Full screen", "Toggle full screen")
gSignalConnect(fullScreen, "toggled", function(action) {
  if(fullScreen['active'])
    window$fullscreen()
  else
    window$unfullscreen()
})


###################################################
### chunk number 8: showGUI
###################################################
#line 103 "SweaveInput"
window <- gtkWindow(show=FALSE)
window['title'] <- "Action with button example"
window$add(b)
window$showAll()


###################################################
### chunk number 9: rgtk2-menus-menubar
###################################################
#line 128 "SweaveInput"
menubar <- gtkMenuBar()


###################################################
### chunk number 10: rgtk2-menus-menu
###################################################
#line 139 "SweaveInput"
fileMenu <- gtkMenu()


###################################################
### chunk number 11: rgtk2-menus-menuitem
###################################################
#line 145 "SweaveInput"
fileItem <- gtkMenuItemNewWithMnemonic(label="_File")
fileItem$setSubmenu(fileMenu)


###################################################
### chunk number 12: rgtk2-menus-append
###################################################
#line 153 "SweaveInput"
menubar$append(fileItem)


###################################################
### chunk number 13: rgtk2-menus-open
###################################################
#line 166 "SweaveInput"
open <- gtkMenuItemNewWithMnemonic("_Open")


###################################################
### chunk number 14: rgtk2-menus-open-activate
###################################################
#line 172 "SweaveInput"
gSignalConnect(open, "activate", function(item) {
  f <- file.choose()
  file.show(f)
})


###################################################
### chunk number 15: rgtk2-menus-append-item
###################################################
#line 180 "SweaveInput"
fileMenu$append(open)


###################################################
### chunk number 16: rgtk2-menus-save-action
###################################################
#line 187 "SweaveInput"
saveAction <- gtkAction("save", "Save", "Save object", "gtk-save")


###################################################
### chunk number 17: rgtk2-menus-save-item
###################################################
#line 193 "SweaveInput"
save <- saveAction$createMenuItem()
## unnecessary?
##save["use-action-appearance"] <- TRUE
fileMenu$append(save)


###################################################
### chunk number 18: rgtk2-menus-separator
###################################################
#line 204 "SweaveInput"
fileMenu$append(gtkSeparatorMenuItem())


###################################################
### chunk number 19: rgtk2-menus-toggle-item
###################################################
#line 210 "SweaveInput"
autoSaveAction <- gtkToggleAction("autosave", "Autosave", 
                                  "Enable autosave")
autoSave <- autoSaveAction$createMenuItem()
fileMenu$append(autoSave)


###################################################
### chunk number 20: rgtk2-menus-window
###################################################
#line 218 "SweaveInput"
mainWindow <- gtkWindow()
vbox <- gtkVBox()
mainWindow$add(vbox)
vbox$packStart(menubar, FALSE, FALSE)


###################################################
### chunk number 21: "menubar-ex"
###################################################
#line 231 "SweaveInput"
popup <- gtkMenu()                       # top level
popup$append(gtkMenuItem("cut"))
popup$append(gtkMenuItem("copy"))
popup$append(gtkSeparatorMenuItem())
popup$append(gtkMenuItem("paste"))


###################################################
### chunk number 22: rgtk2-menus-popup-button
###################################################
#line 241 "SweaveInput"
b <- gtkButton("Click me with right mouse button")
w <- gtkWindow(); w$setTitle("Popup menu example")
w$add(b)


###################################################
### chunk number 23: 
###################################################
#line 253 "SweaveInput"
gSignalConnect(b,"button-press-event",
       f = function(w, e, menu) {
         if(e$getButton() == 3 ||
            (e$getButton() == 1 && # a mac
             e$getState() == GdkModifierType['control-mask'])) 
           gtkMenuPopup(menu, 
                        button = e$getButton(),
                        activate.time = e$getTime())
         return(FALSE)
       }, data=popup)


###################################################
### chunk number 24: 
###################################################
#line 270 "SweaveInput"
IDs <- sapply(popup$getChildren(), function(i) {
  if(!inherits(i, "GtkSeparatorMenuItem")) # skip these
    gSignalConnect(i, "activate",
                   f = function(w, data) print("replace me"))
})


###################################################
### chunk number 25: rgtk2-menus-toolbar-construct
###################################################
#line 289 "SweaveInput"
toolbar <- gtkToolbar()


###################################################
### chunk number 26: rgtk2-menus-toolbar-open-item
###################################################
#line 298 "SweaveInput"
openButton <- gtkToolButton(stock.id = "gtk-open") 


###################################################
### chunk number 27: rgtk2-menus-toolbar-add
###################################################
#line 307 "SweaveInput"
toolbar$add(openButton)


###################################################
### chunk number 28: rgtk2-menus-toolbar-save-item
###################################################
#line 318 "SweaveInput"
saveButton <- saveAction$createToolItem()
toolbar$add(saveButton)


###################################################
### chunk number 29: rgtk2-menus-toolbar-separator
###################################################
#line 327 "SweaveInput"
toolbar$add(gtkSeparatorToolItem())


###################################################
### chunk number 30: rgtk2-menus-toolbar-toggle
###################################################
#line 332 "SweaveInput"
fullScreenButton <- fullScreen$createToolItem()
toolbar$add(fullScreenButton)


###################################################
### chunk number 31: rgtk2-menus-toolbar-style
###################################################
#line 348 "SweaveInput"
toolbar$setStyle("icon")


###################################################
### chunk number 32: rgtk2-menus-toolbar-is-important
###################################################
#line 357 "SweaveInput"
fullScreen["is-important"] <- TRUE


###################################################
### chunk number 33: rgtk2-menus-toolbar-expand
###################################################
#line 366 "SweaveInput"
expander <- gtkSeparatorToolItem()
expander["draw"] <- FALSE
toolbar$add(expander)
### JV XXX This causes my R to crash
#toolbar$childSetProperty(expander, "expand", TRUE)


###################################################
### chunk number 34: rgtk2-menus-toolbar-help
###################################################
#line 378 "SweaveInput"
helpAction <- gtkAction("help", "Help", "Get help", "gtk-help")
toolbar$add(helpAction$createToolItem())


###################################################
### chunk number 35: rgtk2-menus-toolbar-place
###################################################
#line 385 "SweaveInput"
vbox$packStart(toolbar, FALSE, FALSE)


###################################################
### chunk number 36: rgtk2-mennus-toolbar-color-button
###################################################
#line 403 "SweaveInput"
gdkColor <- gdkColorParse(palette()[1])$color
colorButton <- gtkColorButton(gdkColor)


###################################################
### chunk number 37: rgtk2-menus-toolbar-color-menu
###################################################
#line 413 "SweaveInput"
colorMenuItem <- function(color) {
  da <- gtkDrawingArea()
  da$setSizeRequest(20, 20)
  da$modifyBg("normal", color)
  item <- gtkImageMenuItem(color)
  item$setImage(da)
  item
}
colorItems <- sapply(palette(), colorMenuItem)
colorMenu <- gtkMenu()
for (item in colorItems)
  colorMenu$append(item)


###################################################
### chunk number 38: rgtk2-menus-toolbar-color-cb
###################################################
#line 433 "SweaveInput"
colorMenuItemActivated <- function(item) {
  color <- gdkColorParse(item$getLabel())$color
  colorButton$setColor(color)
}
sapply(colorItems, gSignalConnect, "activate", colorMenuItemActivated)


###################################################
### chunk number 39: rgtk2-menus-toolbar-menu
###################################################
#line 443 "SweaveInput"
menuButton <- gtkMenuToolButton(colorButton, "Color")
menuButton$setMenu(colorMenu)
toolbar$add(menuButton)


###################################################
### chunk number 40: rgtk2-menus-tool-item-group eval=FALSE
###################################################
## #line 469 "SweaveInput"
## fileGroup <- gtkToolItemGroup("File")
## fileGroup$add(gtkToolButton(stock.id = "gtk-open"))
## fileGroup$add(saveAction$createToolItem())
## helpGroup <- gtkToolItemGroup("Help")
## helpGroup$add(helpAction$createToolItem())


###################################################
### chunk number 41: rgtk2-menus-tool-palette eval=FALSE
###################################################
## #line 479 "SweaveInput"
## palette <- gtkToolPalette()
## palette$add(fileGroup)
## palette$add(helpGroup)


###################################################
### chunk number 42: rgtk2-menus-tool-palette-collapse eval=FALSE
###################################################
## #line 486 "SweaveInput"
## helpGroup$setCollapsed(TRUE)


###################################################
### chunk number 43: 
###################################################
#line 517 "SweaveInput"
ib <- gtkInfoBar(show=FALSE)
ib$setNoShowAll(TRUE)


###################################################
### chunk number 44: 
###################################################
#line 528 "SweaveInput"
l <- gtkLabel("Warning, Warning ....")
ib$setMessageType("warning")            
ib$getContentArea()$add(l)


###################################################
### chunk number 45: 
###################################################
#line 535 "SweaveInput"
ib$addButton(button.text="gtk-ok",
             response.id=GtkResponseType['ok'])


###################################################
### chunk number 46: 
###################################################
#line 544 "SweaveInput"
gSignalConnect(ib, "response", function(w, response.id) w$hide())


###################################################
### chunk number 47: addToWinodw
###################################################
#line 549 "SweaveInput"
vbox$packStart(ib, expand = FALSE)
ib$show()


###################################################
### chunk number 48: not-shown
###################################################
#line 583 "SweaveInput"
## sample RGtk2 menu
library(RGtk2)


###################################################
### chunk number 49: 
###################################################
#line 589 "SweaveInput"
uimanager = gtkUIManager()


###################################################
### chunk number 50: 
###################################################
#line 597 "SweaveInput"
someAction <- function(action,...) 
  statusbar$push(statusbar$getContextId("message"), action$getName())
Quit <- function(...) win$destroy()


###################################################
### chunk number 51: Define-first-action-group
###################################################
#line 613 "SweaveInput"
firstActionGroup <- gtkActionGroup("firstActionGroup")
firstActionEntries <- list(
  ## name,ID,label,accelerator,tooltip,callback
  file = list("File",NULL,"_File",NULL,NULL,NULL),
  new = list("New", "gtk-new", "_New", "<control>N", 
    "New document", someAction),
  sub = list("Submenu", NULL, "S_ub", NULL, NULL, NULL),
  open = list("Open", "gtk-open", "_Open", "<ctrl>0", 
    "Open document", someAction),
  save = list("Save", "gtk-save", "_Save", "<alt>S", 
    "Save document", someAction),
  quit = list("Quit", "gtk-quit", "_Quit", "<ctrl>Q", 
    "Quit", Quit),
  edit = list("Edit", NULL, "_Edit", NULL, NULL, NULL),
  undo = list("Undo", "gtk-undo", "_Undo", "<ctrl>Z", 
    "Undo change", someAction),
  redo = list("Redo", "gtk-redo", "_Redo", "<ctrl>U", 
    "Redo change", someAction)
)


###################################################
### chunk number 52: "Insert action group"
###################################################
#line 639 "SweaveInput"
firstActionGroup$addActions(firstActionEntries)
uimanager$insertActionGroup(firstActionGroup, 0) # 0-based


###################################################
### chunk number 53: 
###################################################
#line 646 "SweaveInput"
helpActionGroup <- gtkActionGroup("helpActionGroup")
helpActionEntries <- list(
  help = list("Help", "", "_Help", "", "", NULL),
  about = list("About", "gtk-about", "_About", "", "", someAction)
)
helpActionGroup$addActions(helpActionEntries)


###################################################
### chunk number 54: "a toggle action"
###################################################
#line 663 "SweaveInput"
toggleActions <- list(
        ## name, label, tooltip, stock.id              
        tooltips = gtkToggleAction("UseTooltips", "Use tooltips", 
          "Use tooltips to show additional information", NULL)
)
gSignalConnect(toggleActions[[1]], "toggled", function(...) print("toggled"))
helpActionGroup$addAction(toggleActions$tooltips)


###################################################
### chunk number 55: "insert help action group"
###################################################
#line 677 "SweaveInput"
uimanager$insertActionGroup(helpActionGroup, 1)


###################################################
### chunk number 56: "Load UI from file"
###################################################
#line 732 "SweaveInput"
id <- uimanager$addUiFromFile("ex-menus.xml")


###################################################
### chunk number 57: "Retrieve menubar and toolbar from the uimanager"
###################################################
#line 743 "SweaveInput"
menubar <- uimanager$getWidget("/menubar")
toolbar <- uimanager$getWidget("/toolbar")


###################################################
### chunk number 58: "define statusbar"
###################################################
#line 748 "SweaveInput"
statusbar <- gtkStatusbar()


###################################################
### chunk number 59: Define-window-add-accelerator-group
###################################################
#line 756 "SweaveInput"
win <- gtkWindow(show=TRUE)
win$setTitle("Window example")
accelgroup <- uimanager$getAccelGroup()
win$addAccelGroup(accelgroup)


###################################################
### chunk number 60: setup-box
###################################################
#line 764 "SweaveInput"
box <- gtkVBox()
win$add(box)

box$packStart(menubar, expand=FALSE, fill=FALSE,0)
box$packStart(toolbar, expand=FALSE, fill= FALSE,0)
contentArea <- gtkVBox()
box$packStart(contentArea, expand=TRUE, fill=TRUE,0)
contentArea$packStart(gtkLabel("Content Area"))
box$packStart(statusbar, expand=FALSE, fill=FALSE, 0)


###################################################
### chunk number 61: How-to-set-sensitivity
###################################################
#line 779 "SweaveInput"
redo <- firstActionGroup$getAction("Redo")
redo['sensitive'] <- FALSE


