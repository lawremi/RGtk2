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
#line 24 "ex-RGtk2-UImanager.Rnw"
someAction <- function(action,...) 
  statusbar$push(statusbar$getContextId("message"), action$getName())
Quit <- function(...) win$destroy()


###################################################
### chunk number 4: Define-first-action-group
###################################################
#line 40 "ex-RGtk2-UImanager.Rnw"
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
### chunk number 5: "Insert action group"
###################################################
#line 66 "ex-RGtk2-UImanager.Rnw"
firstActionGroup$addActions(firstActionEntries)
uimanager$insertActionGroup(firstActionGroup, 0) # 0-based


###################################################
### chunk number 6: 
###################################################
#line 73 "ex-RGtk2-UImanager.Rnw"
helpActionGroup <- gtkActionGroup("helpActionGroup")
helpActionEntries <- list(
  help = list("Help", "", "_Help", "", "", NULL),
  about = list("About", "gtk-about", "_About", "", "", someAction)
)
helpActionGroup$addActions(helpActionEntries)


###################################################
### chunk number 7: "a toggle action"
###################################################
#line 90 "ex-RGtk2-UImanager.Rnw"
toggleActions <- list(
        ## name, label, tooltip, stock.id              
        tooltips = gtkToggleAction("UseTooltips", "Use tooltips", 
          "Use tooltips to show additional information", NULL)
)
gSignalConnect(toggleActions[[1]], "toggled", function(...) print("toggled"))
helpActionGroup$addAction(toggleActions$tooltips)


###################################################
### chunk number 8: "insert help action group"
###################################################
#line 104 "ex-RGtk2-UImanager.Rnw"
uimanager$insertActionGroup(helpActionGroup, 1)


###################################################
### chunk number 9: "Load UI from file"
###################################################
#line 159 "ex-RGtk2-UImanager.Rnw"
id <- uimanager$addUiFromFile("ex-menus.xml")


###################################################
### chunk number 10: "Retrieve menubar and toolbar from the uimanager"
###################################################
#line 170 "ex-RGtk2-UImanager.Rnw"
menubar <- uimanager$getWidget("/menubar")
toolbar <- uimanager$getWidget("/toolbar")


###################################################
### chunk number 11: "define statusbar"
###################################################
#line 175 "ex-RGtk2-UImanager.Rnw"
statusbar <- gtkStatusbar()


###################################################
### chunk number 12: Define-window-add-accelerator-group
###################################################
#line 183 "ex-RGtk2-UImanager.Rnw"
win <- gtkWindow(show=TRUE)
win$setTitle("Window example")
accelgroup <- uimanager$getAccelGroup()
win$addAccelGroup(accelgroup)


###################################################
### chunk number 13: setup-box
###################################################
#line 191 "ex-RGtk2-UImanager.Rnw"
box <- gtkVBox()
win$add(box)

box$packStart(menubar, expand=FALSE, fill=FALSE,0)
box$packStart(toolbar, expand=FALSE, fill= FALSE,0)
contentArea <- gtkVBox()
box$packStart(contentArea, expand=TRUE, fill=TRUE,0)
contentArea$packStart(gtkLabel("Content Area"))
box$packStart(statusbar, expand=FALSE, fill=FALSE, 0)


###################################################
### chunk number 14: How-to-set-sensitivity
###################################################
#line 206 "ex-RGtk2-UImanager.Rnw"
redo <- firstActionGroup$getAction("Redo")
redo['sensitive'] <- FALSE


