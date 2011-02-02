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
#line 52 "SweaveInput"
b <- gtkButton()
b$setRelatedAction(a)


###################################################
### chunk number 5: rgtk2-menus-action-group
###################################################
#line 68 "SweaveInput"
group <- gtkActionGroup()
group$addActionWithAccel(a, "<control>O")


###################################################
### chunk number 6: rgtk2-menus-toggle-action
###################################################
#line 85 "SweaveInput"
fullScreen <- gtkToggleAction("fullscreen", "Full screen", 
                              "Toggle full screen")
gSignalConnect(fullScreen, "toggled", function(action) {
  if(fullScreen['active'])
    window$fullscreen()
  else
    window$unfullscreen()
})


###################################################
### chunk number 7: showGUI
###################################################
#line 99 "SweaveInput"
window <- gtkWindow(show=FALSE)
window['title'] <- "Action with button example"
window$add(b)
window$showAll()


###################################################
### chunk number 8: rgtk2-menus-menubar
###################################################
#line 123 "SweaveInput"
menubar <- gtkMenuBar()


###################################################
### chunk number 9: rgtk2-menus-menu
###################################################
#line 134 "SweaveInput"
fileMenu <- gtkMenu()


###################################################
### chunk number 10: rgtk2-menus-menuitem
###################################################
#line 140 "SweaveInput"
fileItem <- gtkMenuItemNewWithMnemonic(label="_File")
fileItem$setSubmenu(fileMenu)


###################################################
### chunk number 11: rgtk2-menus-append
###################################################
#line 148 "SweaveInput"
menubar$append(fileItem)


###################################################
### chunk number 12: rgtk2-menus-open
###################################################
#line 161 "SweaveInput"
open <- gtkMenuItemNewWithMnemonic("_Open")


###################################################
### chunk number 13: rgtk2-menus-open-activate
###################################################
#line 167 "SweaveInput"
gSignalConnect(open, "activate", function(item) {
  f <- file.choose()
  file.show(f)
})


###################################################
### chunk number 14: rgtk2-menus-append-item
###################################################
#line 175 "SweaveInput"
fileMenu$append(open)


###################################################
### chunk number 15: rgtk2-menus-save-action
###################################################
#line 182 "SweaveInput"
saveAction <- 
  gtkAction("save", "Save", "Save object", "gtk-save")


###################################################
### chunk number 16: rgtk2-menus-save-item
###################################################
#line 189 "SweaveInput"
save <- saveAction$createMenuItem()
fileMenu$append(save)


###################################################
### chunk number 17: rgtk2-menus-separator
###################################################
#line 198 "SweaveInput"
fileMenu$append(gtkSeparatorMenuItem())


###################################################
### chunk number 18: rgtk2-menus-toggle-item
###################################################
#line 204 "SweaveInput"
autoSaveAction <- gtkToggleAction("autosave", "Autosave", 
                                  "Enable autosave")
autoSave <- autoSaveAction$createMenuItem()
fileMenu$append(autoSave)


###################################################
### chunk number 19: rgtk2-menus-window
###################################################
#line 212 "SweaveInput"
mainWindow <- gtkWindow()
vbox <- gtkVBox()
mainWindow$add(vbox)
vbox$packStart(menubar, FALSE, FALSE)


###################################################
### chunk number 20: "menubar-ex"
###################################################
#line 225 "SweaveInput"
popup <- gtkMenu()                       # top level
popup$append(gtkMenuItem("cut"))
popup$append(gtkMenuItem("copy"))
popup$append(gtkSeparatorMenuItem())
popup$append(gtkMenuItem("paste"))


###################################################
### chunk number 21: rgtk2-menus-popup-button
###################################################
#line 235 "SweaveInput"
b <- gtkButton("Click me with right mouse button")
w <- gtkWindow(); w$setTitle("Popup menu example")
w$add(b)


###################################################
### chunk number 22: 
###################################################
#line 243 "SweaveInput"
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
### chunk number 23: 
###################################################
#line 264 "SweaveInput"
IDs <- sapply(popup$getChildren(), function(i) {
  if(!inherits(i, "GtkSeparatorMenuItem")) # skip these
    gSignalConnect(i, "activate",
                   f = function(w, data) print("replace me"))
})


###################################################
### chunk number 24: rgtk2-menus-toolbar-construct
###################################################
#line 285 "SweaveInput"
toolbar <- gtkToolbar()


###################################################
### chunk number 25: rgtk2-menus-toolbar-open-item
###################################################
#line 294 "SweaveInput"
openButton <- gtkToolButton(stock.id = "gtk-open") 


###################################################
### chunk number 26: rgtk2-menus-toolbar-add
###################################################
#line 303 "SweaveInput"
toolbar$add(openButton)


###################################################
### chunk number 27: rgtk2-menus-toolbar-save-item
###################################################
#line 314 "SweaveInput"
saveButton <- saveAction$createToolItem()
toolbar$add(saveButton)


###################################################
### chunk number 28: rgtk2-menus-toolbar-separator
###################################################
#line 323 "SweaveInput"
toolbar$add(gtkSeparatorToolItem())


###################################################
### chunk number 29: rgtk2-menus-toolbar-toggle
###################################################
#line 328 "SweaveInput"
fullScreenButton <- fullScreen$createToolItem()
toolbar$add(fullScreenButton)


###################################################
### chunk number 30: rgtk2-menus-toolbar-style
###################################################
#line 344 "SweaveInput"
toolbar$setStyle("icon")


###################################################
### chunk number 31: rgtk2-menus-toolbar-is-important
###################################################
#line 353 "SweaveInput"
fullScreen["is-important"] <- TRUE


###################################################
### chunk number 32: rgtk2-menus-toolbar-expand eval=FALSE
###################################################
## #line 362 "SweaveInput"
## expander <- gtkSeparatorToolItem()
## expander["draw"] <- FALSE
## toolbar$add(expander)
## toolbar$childSet(expander, expand = TRUE)


###################################################
### chunk number 33: rgtk2-menus-toolbar-help
###################################################
#line 373 "SweaveInput"
helpAction <- gtkAction("help", "Help", "Get help", "gtk-help")
toolbar$add(helpAction$createToolItem())


###################################################
### chunk number 34: rgtk2-menus-toolbar-place
###################################################
#line 380 "SweaveInput"
vbox$packStart(toolbar, FALSE, FALSE)


###################################################
### chunk number 35: rgtk2-mennus-toolbar-color-button
###################################################
#line 398 "SweaveInput"
gdkColor <- gdkColorParse(palette()[1])$color
colorButton <- gtkColorButton(gdkColor)


###################################################
### chunk number 36: rgtk2-menus-toolbar-color-menu
###################################################
#line 408 "SweaveInput"
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
### chunk number 37: rgtk2-menus-toolbar-color-cb
###################################################
#line 428 "SweaveInput"
colorMenuItemActivated <- function(item) {
  color <- gdkColorParse(item$getLabel())$color
  colorButton$setColor(color)
}
sapply(colorItems, gSignalConnect, "activate", 
       colorMenuItemActivated)


###################################################
### chunk number 38: rgtk2-menus-toolbar-menu
###################################################
#line 439 "SweaveInput"
menuButton <- gtkMenuToolButton(colorButton, "Color")
menuButton$setMenu(colorMenu)
toolbar$add(menuButton)


###################################################
### chunk number 39: rgtk2-menus-tool-item-group eval=FALSE
###################################################
## #line 464 "SweaveInput"
## fileGroup <- gtkToolItemGroup("File")
## fileGroup$add(gtkToolButton(stock.id = "gtk-open"))
## fileGroup$add(saveAction$createToolItem())
## helpGroup <- gtkToolItemGroup("Help")
## helpGroup$add(helpAction$createToolItem())


###################################################
### chunk number 40: rgtk2-menus-tool-palette eval=FALSE
###################################################
## #line 474 "SweaveInput"
## palette <- gtkToolPalette()
## palette$add(fileGroup)
## palette$add(helpGroup)


###################################################
### chunk number 41: rgtk2-menus-tool-palette-collapse eval=FALSE
###################################################
## #line 481 "SweaveInput"
## helpGroup$setCollapsed(TRUE)


###################################################
### chunk number 42: 
###################################################
#line 512 "SweaveInput"
ib <- gtkInfoBar(show=FALSE)
ib$setNoShowAll(TRUE)


###################################################
### chunk number 43: 
###################################################
#line 523 "SweaveInput"
l <- gtkLabel("Warning, Warning ....")
ib$setMessageType("warning")            
ib$getContentArea()$add(l)


###################################################
### chunk number 44: 
###################################################
#line 530 "SweaveInput"
ib$addButton(button.text="gtk-ok",
             response.id=GtkResponseType['ok'])


###################################################
### chunk number 45: 
###################################################
#line 539 "SweaveInput"
gSignalConnect(ib, "response", function(w, resp.id) w$hide())


###################################################
### chunk number 46: addToWinodw
###################################################
#line 544 "SweaveInput"
vbox$packStart(ib, expand = FALSE)
ib$show()


###################################################
### chunk number 47: not-shown
###################################################
#line 578 "SweaveInput"
## sample RGtk2 menu
library(RGtk2)


###################################################
### chunk number 48: 
###################################################
#line 584 "SweaveInput"
uimanager = gtkUIManager()


###################################################
### chunk number 49: 
###################################################
#line 591 "SweaveInput"
someAction <- function(action,...) 
  statusbar$push(statusbar$getContextId("message"), 
                 action$getName())


###################################################
### chunk number 50: 
###################################################
#line 598 "SweaveInput"
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
### chunk number 53: How-to-set-sensitivity
###################################################
#line 648 "SweaveInput"
redo <- firstActionGroup$getAction("Redo")
redo['sensitive'] <- FALSE


###################################################
### chunk number 54: 
###################################################
#line 655 "SweaveInput"
helpActionGroup <- gtkActionGroup("helpActionGroup")
helpActionEntries <- list(
  help = list("Help", "", "_Help", "", "", NULL),
  about = list("About", "gtk-about", "_About", "", "", 
    someAction)
)
helpActionGroup$addActions(helpActionEntries)


###################################################
### chunk number 55: "a toggle action"
###################################################
#line 666 "SweaveInput"
toggleActions <- list(
  tooltips = list("UseTooltips", NULL, "Use _Tooltips", "<control>T", 
    "Enable tooltips", someAction, TRUE)
)
helpActionGroup$addToggleActions(toggleActions)


###################################################
### chunk number 56: "insert help action group"
###################################################
#line 679 "SweaveInput"
uimanager$insertActionGroup(helpActionGroup, 1)


###################################################
### chunk number 57: "Load UI from file"
###################################################
#line 732 "SweaveInput"
id <- uimanager$addUiFromFile("ex-menus.xml")


###################################################
### chunk number 58: "Retrieve menubar and toolbar from the uimanager"
###################################################
#line 743 "SweaveInput"
menubar <- uimanager$getWidget("/menubar")
toolbar <- uimanager$getWidget("/toolbar")


###################################################
### chunk number 59: "define statusbar"
###################################################
#line 748 "SweaveInput"
statusbar <- gtkStatusbar()


###################################################
### chunk number 60: Define-window-add-accelerator-group
###################################################
#line 756 "SweaveInput"
win <- gtkWindow(show=TRUE)
win$setTitle("Window example")
accelgroup <- uimanager$getAccelGroup()
win$addAccelGroup(accelgroup)


###################################################
### chunk number 61: setup-box
###################################################
#line 764 "SweaveInput"
box <- gtkVBox()
win$add(box)

box$packStart(menubar, expand=FALSE, fill=FALSE, 0)
box$packStart(toolbar, expand=FALSE, fill= FALSE, 0)
contentArea <- gtkVBox()
box$packStart(contentArea, expand=TRUE, fill=TRUE, 0)
contentArea$packStart(gtkLabel("Content Area"))
box$packStart(statusbar, expand=FALSE, fill=FALSE, 0)


