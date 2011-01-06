###################################################
### chunk number 1: 
###################################################
#line 15 "ex-tcltk-dnd.Rnw"
## ex-tcltk-dnd
## Example of drag and drop
## idea from http://wiki.tcl.tk/416
library(tcltk)


###################################################
### chunk number 2: 
###################################################
#line 26 "ex-tcltk-dnd.Rnw"
w <- tktoplevel()
bDrag <- ttkbutton(w, text="Drag me")
bDrop <- ttkbutton(w, text="Drop here")
tkpack(bDrag)
tkpack(ttklabel(w, text="Drag over me"))
tkpack(bDrop)


###################################################
### chunk number 3: dndGlobalVariables
###################################################
#line 38 "ex-tcltk-dnd.Rnw"
.dragging <- FALSE                 # currently dragging?
.dragValue <- ""                   # value to transfer
.lastWidgetID <- ""                # last widget dragged over


###################################################
### chunk number 4: defineDragLabel
###################################################
#line 44 "ex-tcltk-dnd.Rnw"
## make a drag label to pop up during dragging to show text
## label idea from http://www.codebykevin.com/opensource/xplat_oss.html
## not shown in text, but here as an example if desired
tclServiceMode(FALSE)
tcl("image", "create", "photo", "::dnd::icon",
    data=paste(                         # uuencode gif image of document
      "R0lGODlhEAAQALMAAAAAAMbGxv//////////////////////////////////",
      "/////////////////////yH5BAEAAAEALAAAAAAQABAAAAQwMMhJ6wQ4YyuB",
      "+OBmeeDnAWNpZhWpmu0bxrKAUu57X7VNy7tOLxjIqYiapIjDbDYjADs=",
      sep=""))
dragLabel <- tktoplevel()
tkwm.title(dragLabel, "")
tkwm.resizable(dragLabel, FALSE,FALSE)  # no size handler in Mac OS X
tkwm.overrideredirect(dragLabel, TRUE)  # Should remove title bar (not in Mac OS X)
tkwm.transient(dragLabel, w)
tcl("wm","attributes", dragLabel, topmost=TRUE)
tkwm.withdraw(dragLabel)                # minimize window
tclServiceMode(TRUE)                    # back to redrawin
## can set this using tkconfigure
dragLabel_label <- ttklabel(dragLabel,image="::dnd::icon", text="this space for rent", compound="left")
tkpack(dragLabel_label)


###################################################
### chunk number 5: buttonPressEvent
###################################################
#line 69 "ex-tcltk-dnd.Rnw"
tkbind(bDrag,"<ButtonPress-1>",function(W) {
  .dragging <<-  TRUE
  .dragValue <<- as.character(tkcget(W,text=NULL))
  .lastWidgetID <<- as.character(W)
  tkconfigure(dragLabel_label, text=.dragValue)
})


###################################################
### chunk number 6: 
###################################################
#line 81 "ex-tcltk-dnd.Rnw"
## If using dragLabel, you can add this line to handler code:
## 


###################################################
### chunk number 7: 
###################################################
#line 100 "ex-tcltk-dnd.Rnw"


tkbind(w, "<B1-Motion>", function(W, X, Y) {
  if(!.dragging) return()
  ## see cursor help page in API for more options
  ## For custom cursors cf. http://wiki.tcl.tk/8674. 
##  tkconfigure(W, cursor="coffee_mug")   # set cursor
  tkconfigure(W, cursor="")   # set cursor

  w = tkwinfo("containing", X, Y)       # widget mouse is over
  if(as.logical(tkwinfo("exists", w)))  # does widget exist?
    tkevent.generate(w, "<<DragOver>>")

  ## generate drag leave if we left last widget
  if(as.logical(tkwinfo("exists", w)) &&
     nchar(as.character(w)) > 0 && 
     length(.lastWidgetID) > 0          # character(0) if not tcltk widget
     ) {
    if(as.character(w) != .lastWidgetID) 
      tkevent.generate(.lastWidgetID, "<<DragLeave>>")
  }
  .lastWidgetID <<- as.character(w)


  tkwm.deiconify(dragLabel)
  tkwm.geometry(dragLabel, sprintf("+%s+%s", as.character(X), as.character(Y))) #paste("+",X,"+",Y, sep="")) # put in of


  ## raise
  ##



})


###################################################
### chunk number 8: 
###################################################
#line 123 "ex-tcltk-dnd.Rnw"
## if doing example with drag label, include the following in the motion event callback


###################################################
### chunk number 9: 
###################################################
#line 132 "ex-tcltk-dnd.Rnw"
 tkbind(bDrag, "<ButtonRelease-1>", function(W, X, Y) {
  if(!.dragging) return()
  w <- tkwinfo("containing", X, Y)
    
  if(as.logical(tkwinfo("exists", w))) {
    tkevent.generate(w, "<<DragLeave>>")
    tkevent.generate(w, "<<DragDrop>>")
    tkconfigure(w, cursor="")
  }
  .dragging <<- FALSE
  .lastWidgetID <<- "" 
  tkconfigure(W, cursor="")

  tkwm.withdraw(dragLabel)
})


###################################################
### chunk number 10: 
###################################################
#line 148 "ex-tcltk-dnd.Rnw"
## if doing dragLabel, we have this as well:
## 


###################################################
### chunk number 11: 
###################################################
#line 157 "ex-tcltk-dnd.Rnw"
tkbind(bDrop,"<<DragOver>>",function(W) {
  if(.dragging) 
    tcl(W, "state", "active")
})


###################################################
### chunk number 12: 
###################################################
#line 166 "ex-tcltk-dnd.Rnw"
tkbind(bDrop,"<<DragLeave>>", function(W) {
  if(.dragging)  {
    tkconfigure(W, cursor="")
    tcl(W, "state", "!active")  
   }
})


###################################################
### chunk number 13: 
###################################################
#line 178 "ex-tcltk-dnd.Rnw"
tkbind(bDrop,"<<DragDrop>>", function(W) {
  tkconfigure(W, text=.dragValue)
  .dragValue <- ""
})


