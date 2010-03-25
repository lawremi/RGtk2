###################################################
### chunk number 1: not-shown
###################################################
## sample RGtk2 menu
library(RGtk2)


###################################################
### chunk number 2: 
###################################################
uimanager = gtkUIManager()


###################################################
### chunk number 3: 
###################################################
someAction <- function(action,...) 
  statusbar$push(statusbar$getContextId("message"), action$getName())
Quit <- function(...) win$destroy()


###################################################
### chunk number 4: Define-first-action-group
###################################################
firstActionGroup = gtkActionGroup("firstActionGroup")
firstActionEntries = list(
  ## name,ID,label,accelerator,tooltip,callback
  file = list("File",NULL,"_File",NULL,NULL,NULL),
  new = list("New","gtk-new","_New","<control>N","New document",someAction),
  sub = list("Submenu",NULL,"S_ub",NULL,NULL,NULL),
  open = list("Open","gtk-open","_Open","<ctrl>0","Open document",someAction),
  save = list("Save","gtk-save","_Save","<alt>S","Save document",someAction),
  quit = list("Quit","gtk-quit","_Quit","<ctrl>Q","Quit",Quit),
  edit = list("Edit",NULL,"_Edit",NULL,NULL,NULL),
  undo = list("Undo","gtk-undo","_Undo","<ctrl>Z","Undo change",someAction),
  redo = list("Redo","gtk-redo","_Redo","<ctrl>U","Redo change",someAction)
)


###################################################
### chunk number 5: "Insert action group"
###################################################
QT <- firstActionGroup$addActions(firstActionEntries)
uimanager$insertActionGroup(firstActionGroup,0) # 0 -- first spot


###################################################
### chunk number 6: 
###################################################
helpActionGroup = gtkActionGroup("helpActionGroup")
helpActionEntries = list(
  help = list("Help","","_Help","","",NULL),
  about = list("About","gtk-about","_About","","",someAction)
  )
QT <- helpActionGroup$AddActions(helpActionEntries)


###################################################
### chunk number 7: "a toggle action"
###################################################
toggleAction <- gtkToggleAction("UseTooltips",label="_Use tooltips",
                                tooltip="Use tooltips ")
toggleAction$setActive(TRUE)            # initially set
ID <- gSignalConnect(toggleAction,signal = "toggled",
                    f=function(ta,userData) cat(userData,ta$getName(),"\n"),
                    data="toggled")
helpActionGroup$addAction(toggleAction)


###################################################
### chunk number 8: "insert help action group"
###################################################
uimanager$insertActionGroup(helpActionGroup,1)


###################################################
### chunk number 9: "Load UI from file"
###################################################
id <- uimanager$addUiFromFile("ex-menus.xml")


###################################################
### chunk number 10: "Retrieve menubar and toolbar from the uimanager"
###################################################
menubar <- uimanager$getWidget("/menubar")
toolbar <- uimanager$getWidget("/toolbar")


###################################################
### chunk number 11: "define statusbar"
###################################################
statusbar <- gtkStatusbar()


###################################################
### chunk number 12: Define-window-add-accelerator-group
###################################################
win <- gtkWindow(show=TRUE)
win$setTitle("Window example")
accelgroup = uimanager$getAccelGroup()  # add accel group
win$addAccelGroup(accelgroup)


###################################################
### chunk number 13: setup-box
###################################################
box <- gtkVBox()
win$add(box)

box$packStart(menubar, expand=FALSE, fill=FALSE,0)
box$packStart(toolbar, expand=FALSE, fill= FALSE,0)
contentArea = gtkVBox()
box$packStart(contentArea, expand=TRUE, fill=TRUE,0)
contentArea$packStart(gtkLabel("Content Area"))
box$packStart(statusbar, expand=FALSE, fill=FALSE, 0)


###################################################
### chunk number 14: How-to-set-sensitivity
###################################################
uimanager$getWidget("/menubar/Edit/EditRedo")$setSensitive(FALSE)


###################################################
### chunk number 15: How-to-replace-menuitem-text
###################################################
a <- uimanager$getWidget("/menubar/Edit/EditUndo")
a[[1]]$setText("Undo add text")


