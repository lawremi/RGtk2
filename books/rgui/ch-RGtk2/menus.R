###################################################
### chunk number 1: 
###################################################
require(RGtk2)


###################################################
### chunk number 2: "menubar-ex"
###################################################
popup <- gtkMenu()                       # top level

menuItemList <- list()
for(i in c("cut","copy","----","paste")) {
  if(i == "----")
    popup$Append(gtkSeparatorMenuItem())
  else
    popup$Append(menuItemList[[i]] <- gtkMenuItem(i))
}


###################################################
### chunk number 3: 
###################################################
b <- gtkButton(); b$SetLabel("Click me with right mouse button")
w <- gtkWindow(); w$SetTitle("Popup menu example")
w$Add(b)

QT <- connectSignal(b,"button-press-event",
                    f = function(widget, event, userData) {
                      buttonNumber <- event$GetButton()
                      if(buttonNumber != 3) return(TRUE)
                      
                      gtkMenuPopup(userData$mb,
                                   button = buttonNumber,
                                   activate.time = event$GetTime())
                    },
                    data=list(mb=popup)
                    )


###################################################
### chunk number 4: 
###################################################
IDs <- sapply(menuItemList, function(i)
              connectSignal(i,"activate",
                            f = function(w,...) print("clicked")))


###################################################
### chunk number 5: 
###################################################
menuItemList[["cut"]]$SetSensitive(FALSE)


###################################################
### chunk number 6: not-shown
###################################################
## sample RGtk2 menu
library(RGtk2)


###################################################
### chunk number 7: 
###################################################
uimanager = gtkUIManager()


###################################################
### chunk number 8: 
###################################################
someAction <- function(action,...) 
  statusbar$Push(statusbar$getContextId("message"), action$GetName())
Quit <- function(...) win$Destroy()


###################################################
### chunk number 9: Define-first-action-group
###################################################
firstActionGroup = gtkActionGroup("firstActionGroup")
firstActionEntries = list(
  ## name,ID,label,accelerator,tooltip,callback
  file = list("File",NULL,"_File",NULL,NULL,NULL),
  new = list("New","gtk-new","_New","<control>N","New document",someAction),
  sub = list("Submenu",NULL,"S_ub",NULL,NULL,NULL),
  open = list("Open","gtk-open","_Open","<ctrl>0","New document",someAction),
  save = list("Save","gtk-save","_Save","<alt>S","New document",someAction),
  quit = list("Quit","gtk-quit","_Quit","<ctrl>Q","New document",Quit),
  edit = list("Edit",NULL,"_Edit",NULL,NULL,NULL),
  undo = list("Undo","gtk-undo","_Undo","<ctrl>Z","Undo change",someAction),
  redo = list("Redo","gtk-redo","_Redo","<ctrl>U","Redo change",someAction)
)


###################################################
### chunk number 10: "Insert action group"
###################################################
QT <- firstActionGroup$AddActions(firstActionEntries)
uimanager$InsertActionGroup(firstActionGroup,0) # 0 -- first spot


###################################################
### chunk number 11: 
###################################################
helpActionGroup = gtkActionGroup("helpActionGroup")
helpActionEntries = list(
  help = list("Help","","_Help","","",NULL),
  about = list("About","gtk-about","_About","","",someAction)
  )
QT <- helpActionGroup$AddActions(helpActionEntries)


###################################################
### chunk number 12: "a toggle action"
###################################################
toggleAction <- gtkToggleAction("UseTooltips",label="_Use tooltips",
                                tooltip="Use tooltips ")
toggleAction$SetActive(TRUE)            # initially set
QT <- connectSignal(toggleAction,signal = "toggled",
                    f=function(ta,userData) cat(userData,ta$GetName(),"\n"),
                    data="toggled")
helpActionGroup$AddAction(toggleAction)


###################################################
### chunk number 13: "insert help action group"
###################################################
uimanager$InsertActionGroup(helpActionGroup,1)


###################################################
### chunk number 14: "Load UI from file"
###################################################
id <- uimanager$AddUiFromFile("ex-menus.xml")


###################################################
### chunk number 15: "Retrieve menubar and toolbar from the uimanager"
###################################################
menubar <- uimanager$GetWidget("/menubar")
toolbar <- uimanager$GetWidget("/toolbar")


###################################################
### chunk number 16: "define statusbar"
###################################################
statusbar <- gtkStatusbar()


###################################################
### chunk number 17: Define-window-add-accelerator-group
###################################################
win <- gtkWindow(show=TRUE)
win$SetTitle("Window example")
accelgroup = uimanager$GetAccelGroup()  # add accel group
win$AddAccelGroup(accelgroup)


###################################################
### chunk number 18: setup-box
###################################################
box <- gtkVBox()
win$Add(box)

box$PackStart(menubar, expand=FALSE, fill=FALSE,0)
box$PackStart(toolbar, expand=FALSE, fill= FALSE,0)
contentArea = gtkVBox()
box$PackStart(contentArea, expand=TRUE, fill=TRUE,0)
contentArea$PackStart(gtkLabel("Content Area"))
box$PackStart(statusbar, expand=FALSE, fill=FALSE, 0)


###################################################
### chunk number 19: How-to-set-sensitivity
###################################################
uimanager$GetWidget("/menubar/Edit/EditRedo")$SetSensitive(FALSE)


###################################################
### chunk number 20: How-to-replace-menuitem-text
###################################################
a <- uimanager$GetWidget("/menubar/Edit/EditUndo")
a[[1]]$SetText("Undo add text")


