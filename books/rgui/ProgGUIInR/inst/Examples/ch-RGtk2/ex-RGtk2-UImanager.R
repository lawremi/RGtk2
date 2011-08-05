###################################################
### chunk number 1: not-shown
###################################################
#line 10 "ex-RGtk2-UImanager.Rnw"
## sample RGtk2 menu
library(RGtk2)


###################################################
### chunk number 2: 
###################################################
#line 16 "ex-RGtk2-UImanager.Rnw"
uimanager = gtkUIManager()


###################################################
### chunk number 3: 
###################################################
#line 23 "ex-RGtk2-UImanager.Rnw"
someAction <- function(action,...) 
  statusbar$push(statusbar$getContextId("message"), 
                 action$getName())


###################################################
### chunk number 4: 
###################################################
#line 30 "ex-RGtk2-UImanager.Rnw"
Quit <- function(...) win$destroy()


###################################################
### chunk number 5: Define-first-action-group
###################################################
#line 45 "ex-RGtk2-UImanager.Rnw"
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
### chunk number 6: "Insert action group"
###################################################
#line 71 "ex-RGtk2-UImanager.Rnw"
firstActionGroup$addActions(firstActionEntries)
uimanager$insertActionGroup(firstActionGroup, 0) # 0-based


###################################################
### chunk number 7: How-to-set-sensitivity
###################################################
#line 80 "ex-RGtk2-UImanager.Rnw"
redo <- firstActionGroup$getAction("Redo")
redo['sensitive'] <- FALSE


###################################################
### chunk number 8: 
###################################################
#line 87 "ex-RGtk2-UImanager.Rnw"
helpActionGroup <- gtkActionGroup("helpActionGroup")
helpActionEntries <- list(
  help = list("Help", "", "_Help", "", "", NULL),
  about = list("About", "gtk-about", "_About", "", "", 
    someAction)
)
helpActionGroup$addActions(helpActionEntries)


###################################################
### chunk number 9: "a toggle action"
###################################################
#line 98 "ex-RGtk2-UImanager.Rnw"
toggleActions <- list(
  tooltips = list("UseTooltips", NULL, "Use _Tooltips", "<control>T", 
    "Enable tooltips", someAction, TRUE)
)
helpActionGroup$addToggleActions(toggleActions)


###################################################
### chunk number 10: "insert help action group"
###################################################
#line 111 "ex-RGtk2-UImanager.Rnw"
uimanager$insertActionGroup(helpActionGroup, 1)


###################################################
### chunk number 11: "Load UI from file"
###################################################
#line 164 "ex-RGtk2-UImanager.Rnw"
id <- uimanager$addUiFromFile("ex-menus.xml")


###################################################
### chunk number 12: "Retrieve menubar and toolbar from the uimanager"
###################################################
#line 175 "ex-RGtk2-UImanager.Rnw"
menubar <- uimanager$getWidget("/menubar")
toolbar <- uimanager$getWidget("/toolbar")


###################################################
### chunk number 13: "define statusbar"
###################################################
#line 180 "ex-RGtk2-UImanager.Rnw"
statusbar <- gtkStatusbar()


###################################################
### chunk number 14: Define-window-add-accelerator-group
###################################################
#line 188 "ex-RGtk2-UImanager.Rnw"
win <- gtkWindow(show=TRUE)
win$setTitle("Window example")
accelgroup <- uimanager$getAccelGroup()
win$addAccelGroup(accelgroup)


###################################################
### chunk number 15: setup-box
###################################################
#line 196 "ex-RGtk2-UImanager.Rnw"
box <- gtkVBox()
win$add(box)

box$packStart(menubar, expand=FALSE, fill=FALSE, 0)
box$packStart(toolbar, expand=FALSE, fill= FALSE, 0)
contentArea <- gtkVBox()
box$packStart(contentArea, expand=TRUE, fill=TRUE, 0)
contentArea$packStart(gtkLabel("Content Area"))
box$packStart(statusbar, expand=FALSE, fill=FALSE, 0)


