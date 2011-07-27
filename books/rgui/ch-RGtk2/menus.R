###################################################
### chunk number 1: 
###################################################
#line 4 "menus.Rnw"
require(RGtk2)


###################################################
### chunk number 2: rgtk2-menus-actions-constructor
###################################################
#line 29 "menus.Rnw"
a <- gtkAction(name="ok", label="_Ok", 
               tooltip="An OK button", stock.id="gtk-ok")


###################################################
### chunk number 3: rgtk2-menus-actions-activate
###################################################
#line 40 "menus.Rnw"
gSignalConnect(a, "activate", f = function(w, data) {
  print(a$getName())                    # or some useful thing
})


###################################################
### chunk number 4: ConnectAction
###################################################
#line 52 "menus.Rnw"
b <- gtkButton()
b$setRelatedAction(a)


###################################################
### chunk number 5: rgtk2-menus-action-group
###################################################
#line 68 "menus.Rnw"
group <- gtkActionGroup()
group$addActionWithAccel(a, "<control>O")


###################################################
### chunk number 6: rgtk2-menus-toggle-action
###################################################
#line 85 "menus.Rnw"
fullScreen <- gtkToggleAction("fullscreen", "Full screen", 
                              "Toggle full screen",stock.id="gtk-fullscreen")
gSignalConnect(fullScreen, "toggled", function(action) {
  if(fullScreen['active'])
    window$fullscreen()
  else
    window$unfullscreen()
})


###################################################
### chunk number 7: showGUI
###################################################
#line 99 "menus.Rnw"
window <- gtkWindow(show=FALSE)
window['title'] <- "Action with button example"
window$add(b)
window$showAll()


###################################################
### chunk number 8: rgtk2-menus-menubar
###################################################
#line 123 "menus.Rnw"
menubar <- gtkMenuBar()


###################################################
### chunk number 9: rgtk2-menus-menu
###################################################
#line 134 "menus.Rnw"
fileMenu <- gtkMenu()


###################################################
### chunk number 10: rgtk2-menus-menuitem
###################################################
#line 140 "menus.Rnw"
fileItem <- gtkMenuItemNewWithMnemonic(label="_File")
fileItem$setSubmenu(fileMenu)


###################################################
### chunk number 11: rgtk2-menus-append
###################################################
#line 148 "menus.Rnw"
menubar$append(fileItem)


###################################################
### chunk number 12: rgtk2-menus-open
###################################################
#line 161 "menus.Rnw"
open <- gtkMenuItemNewWithMnemonic("_Open")


###################################################
### chunk number 13: rgtk2-menus-open-activate
###################################################
#line 167 "menus.Rnw"
gSignalConnect(open, "activate", function(item) {
  f <- file.choose()
  file.show(f)
})


###################################################
### chunk number 14: rgtk2-menus-append-item
###################################################
#line 175 "menus.Rnw"
fileMenu$append(open)


###################################################
### chunk number 15: rgtk2-menus-save-action
###################################################
#line 182 "menus.Rnw"
saveAction <- 
  gtkAction("save", "Save", "Save object", "gtk-save")


###################################################
### chunk number 16: rgtk2-menus-save-item
###################################################
#line 189 "menus.Rnw"
save <- saveAction$createMenuItem()
fileMenu$append(save)


###################################################
### chunk number 17: rgtk2-menus-separator
###################################################
#line 198 "menus.Rnw"
fileMenu$append(gtkSeparatorMenuItem())


###################################################
### chunk number 18: rgtk2-menus-toggle-item
###################################################
#line 204 "menus.Rnw"
autoSaveAction <- gtkToggleAction("autosave", "Autosave", 
                                  "Enable autosave")
autoSave <- autoSaveAction$createMenuItem()
fileMenu$append(autoSave)


###################################################
### chunk number 19: rgtk2-menus-window
###################################################
#line 212 "menus.Rnw"
mainWindow <- gtkWindow()
vbox <- gtkVBox()
mainWindow$add(vbox)
vbox$packStart(menubar, FALSE, FALSE)


###################################################
### chunk number 20: "menubar-ex"
###################################################
#line 225 "menus.Rnw"
popup <- gtkMenu()                       # top level
popup$append(gtkMenuItem("cut"))
popup$append(gtkMenuItem("copy"))
popup$append(gtkSeparatorMenuItem())
popup$append(gtkMenuItem("paste"))


###################################################
### chunk number 21: rgtk2-menus-popup-button
###################################################
#line 235 "menus.Rnw"
b <- gtkButton("Click me with right mouse button")
w <- gtkWindow(); w$setTitle("Popup menu example")
w$add(b)


###################################################
### chunk number 22: 
###################################################
#line 243 "menus.Rnw"
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
#line 264 "menus.Rnw"
IDs <- sapply(popup$getChildren(), function(i) {
  if(!inherits(i, "GtkSeparatorMenuItem")) # skip these
    gSignalConnect(i, "activate",
                   f = function(w, data) print("replace me"))
})


###################################################
### chunk number 24: rgtk2-menus-toolbar-construct
###################################################
#line 285 "menus.Rnw"
toolbar <- gtkToolbar()


###################################################
### chunk number 25: rgtk2-menus-toolbar-open-item
###################################################
#line 294 "menus.Rnw"
openButton <- gtkToolButton(stock.id = "gtk-open") 


###################################################
### chunk number 26: rgtk2-menus-toolbar-add
###################################################
#line 303 "menus.Rnw"
toolbar$add(openButton)


###################################################
### chunk number 27: rgtk2-menus-toolbar-save-item
###################################################
#line 314 "menus.Rnw"
saveButton <- saveAction$createToolItem()
toolbar$add(saveButton)


###################################################
### chunk number 28: rgtk2-menus-toolbar-separator
###################################################
#line 323 "menus.Rnw"
toolbar$add(gtkSeparatorToolItem())


###################################################
### chunk number 29: rgtk2-menus-toolbar-toggle
###################################################
#line 328 "menus.Rnw"
fullScreenButton <- fullScreen$createToolItem()
toolbar$add(fullScreenButton)


###################################################
### chunk number 30: rgtk2-menus-toolbar-style eval=FALSE
###################################################
## #line 344 "menus.Rnw"
## toolbar$setStyle("icon")


###################################################
### chunk number 31: rgtk2-menus-toolbar-is-important
###################################################
#line 353 "menus.Rnw"
fullScreen["is-important"] <- TRUE


###################################################
### chunk number 32: rgtk2-menus-toolbar-expand eval=FALSE
###################################################
## #line 362 "menus.Rnw"
## expander <- gtkSeparatorToolItem()
## expander["draw"] <- FALSE
## toolbar$add(expander)
## toolbar$childSet(expander, expand = TRUE)


###################################################
### chunk number 33: rgtk2-menus-toolbar-help
###################################################
#line 373 "menus.Rnw"
helpAction <- gtkAction("help", "Help", "Get help", "gtk-help")
toolbar$add(helpAction$createToolItem())


###################################################
### chunk number 34: rgtk2-menus-toolbar-place
###################################################
#line 380 "menus.Rnw"
vbox$packStart(toolbar, FALSE, FALSE)


###################################################
### chunk number 35: rgtk2-mennus-toolbar-color-button
###################################################
#line 398 "menus.Rnw"
gdkColor <- gdkColorParse(palette()[1])$color
colorButton <- gtkColorButton(gdkColor)


###################################################
### chunk number 36: rgtk2-menus-toolbar-color-menu
###################################################
#line 408 "menus.Rnw"
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
#line 428 "menus.Rnw"
colorMenuItemActivated <- function(item) {
  color <- gdkColorParse(item$getLabel())$color
  colorButton$setColor(color)
}
sapply(colorItems, gSignalConnect, "activate", 
       colorMenuItemActivated)


###################################################
### chunk number 38: rgtk2-menus-toolbar-menu
###################################################
#line 439 "menus.Rnw"
menuButton <- gtkMenuToolButton(colorButton, "Color")
menuButton$setMenu(colorMenu)
toolbar$add(menuButton)


###################################################
### chunk number 39: rgtk2-menus-tool-item-group eval=FALSE
###################################################
## #line 464 "menus.Rnw"
## fileGroup <- gtkToolItemGroup("File")
## fileGroup$add(gtkToolButton(stock.id = "gtk-open"))
## fileGroup$add(saveAction$createToolItem())
## helpGroup <- gtkToolItemGroup("Help")
## helpGroup$add(helpAction$createToolItem())


###################################################
### chunk number 40: rgtk2-menus-tool-palette eval=FALSE
###################################################
## #line 474 "menus.Rnw"
## palette <- gtkToolPalette()
## palette$add(fileGroup)
## palette$add(helpGroup)


###################################################
### chunk number 41: rgtk2-menus-tool-palette-collapse eval=FALSE
###################################################
## #line 481 "menus.Rnw"
## helpGroup$setCollapsed(TRUE)


###################################################
### chunk number 42: 
###################################################
#line 512 "menus.Rnw"
ib <- gtkInfoBar(show=FALSE)
ib$setNoShowAll(TRUE)


###################################################
### chunk number 43: 
###################################################
#line 523 "menus.Rnw"
l <- gtkLabel("Warning, Warning ....")
ib$setMessageType("warning")            
ib$getContentArea()$add(l)


###################################################
### chunk number 44: 
###################################################
#line 530 "menus.Rnw"
ib$addButton(button.text="gtk-ok",
             response.id=GtkResponseType['ok'])


###################################################
### chunk number 45: 
###################################################
#line 539 "menus.Rnw"
gSignalConnect(ib, "response", function(w, resp.id) w$hide())


###################################################
### chunk number 46: addToWinodw
###################################################
#line 544 "menus.Rnw"
vbox$packStart(ib, expand = FALSE)
ib$show()


###################################################
### chunk number 47: not-shown
###################################################
#line 578 "menus.Rnw"
## sample RGtk2 menu
library(RGtk2)


###################################################
### chunk number 48: 
###################################################
#line 584 "menus.Rnw"
uimanager = gtkUIManager()


###################################################
### chunk number 49: 
###################################################
#line 591 "menus.Rnw"
someAction <- function(action,...) 
  statusbar$push(statusbar$getContextId("message"), 
                 action$getName())


###################################################
### chunk number 50: 
###################################################
#line 598 "menus.Rnw"
Quit <- function(...) win$destroy()


###################################################
### chunk number 51: Define-first-action-group
###################################################
#line 613 "menus.Rnw"
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
#line 639 "menus.Rnw"
firstActionGroup$addActions(firstActionEntries)
uimanager$insertActionGroup(firstActionGroup, 0) # 0-based


###################################################
### chunk number 53: How-to-set-sensitivity
###################################################
#line 648 "menus.Rnw"
redo <- firstActionGroup$getAction("Redo")
redo['sensitive'] <- FALSE


###################################################
### chunk number 54: 
###################################################
#line 655 "menus.Rnw"
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
#line 666 "menus.Rnw"
toggleActions <- list(
  tooltips = list("UseTooltips", NULL, "Use _Tooltips", "<control>T", 
    "Enable tooltips", someAction, TRUE)
)
helpActionGroup$addToggleActions(toggleActions)


###################################################
### chunk number 56: "insert help action group"
###################################################
#line 679 "menus.Rnw"
uimanager$insertActionGroup(helpActionGroup, 1)


###################################################
### chunk number 57: "Load UI from file"
###################################################
#line 732 "menus.Rnw"
id <- uimanager$addUiFromFile("ex-menus.xml")


###################################################
### chunk number 58: "Retrieve menubar and toolbar from the uimanager"
###################################################
#line 743 "menus.Rnw"
menubar <- uimanager$getWidget("/menubar")
toolbar <- uimanager$getWidget("/toolbar")


###################################################
### chunk number 59: "define statusbar"
###################################################
#line 748 "menus.Rnw"
statusbar <- gtkStatusbar()


###################################################
### chunk number 60: Define-window-add-accelerator-group
###################################################
#line 756 "menus.Rnw"
win <- gtkWindow(show=TRUE)
win$setTitle("Window example")
accelgroup <- uimanager$getAccelGroup()
win$addAccelGroup(accelgroup)


###################################################
### chunk number 61: setup-box
###################################################
#line 764 "menus.Rnw"
box <- gtkVBox()
win$add(box)

box$packStart(menubar, expand=FALSE, fill=FALSE, 0)
box$packStart(toolbar, expand=FALSE, fill= FALSE, 0)
contentArea <- gtkVBox()
box$packStart(contentArea, expand=TRUE, fill=TRUE, 0)
contentArea$packStart(gtkLabel("Content Area"))
box$packStart(statusbar, expand=FALSE, fill=FALSE, 0)


