###################################################
### chunk number 1: 
###################################################
## ex-tcltk-dnd
## Example of drag and drop
## idea from http://wiki.tcl.tk/416
library(tcltk)


###################################################
### chunk number 2: 
###################################################
w <- tktoplevel()
bDrag <- ttkbutton(w, text="Drag me")
bDrop <- ttkbutton(w, text="Drop here")
tkpack(bDrag)
tkpack(ttklabel(w, text="Drag over me"))
tkpack(bDrop)


###################################################
### chunk number 3: 
###################################################
.dragging <- FALSE
.lastWidgetID <- ""
.dragValue <- ""


###################################################
### chunk number 4: defineDragLabel
###################################################
## make a drag label to pop up during dragging to show text
## label idea from http://www.codebykevin.com/opensource/xplat_oss.html
## not shown in text, but here as an example if desired
QT <- tclServiceMode(FALSE)
QT <- tcl("image", "create", "photo", "::dnd::icon",
    data=paste(                         # uuencode gif image of document
      "R0lGODlhEAAQALMAAAAAAMbGxv//////////////////////////////////",
      "/////////////////////yH5BAEAAAEALAAAAAAQABAAAAQwMMhJ6wQ4YyuB",
      "+OBmeeDnAWNpZhWpmu0bxrKAUu57X7VNy7tOLxjIqYiapIjDbDYjADs=",
      sep=""))
dragLabel <- tktoplevel()
tkwm.title(dragLabel, "")
tkwm.resizable(dragLabel, FALSE,FALSE)  # no size handler in Mac OS X
tkwm.withdraw(dragLabel)                # minimize window
QT <- tclServiceMode(TRUE)                    # back to redrawin
tkwm.overrideredirect(dragLabel, TRUE)  # Should remove title bar (not in Mac OS X)
## can set this using tkconfigure
dragLabel_label <- ttklabel(dragLabel,image="::dnd::icon", text="this space for rent", compound="left")
tkpack(dragLabel_label)


###################################################
### chunk number 5: 
###################################################
tkbind(bDrag,"<ButtonPress-1>",function(W) {
  .dragging <<-  TRUE
  .lastWidgetID <<- as.character(W)
  .dragValue <<- as.character(tkcget(W,text=NULL))
})


###################################################
### chunk number 6: 
###################################################
## If using dragLabel, you can add this line to handler code:
## tkconfigure(dragLabel_label, text=.dragValue)


###################################################
### chunk number 7: 
###################################################
tkbind(bDrag,"<B1-Motion>",function(W,X,Y) {
  if(!.dragging) return()
  ## set cursor
  tkconfigure(W,cursor="coffee_mug") ## see cursor help page in API for more
  ## For custom cursors cf. http://wiki.tcl.tk/8674. This failed with OS X. Note "
  ##  .Tcl(paste(as.character(bDrag$ID),' configure -cursor "@', getwd(),'/cursor.xbm black"', sep=""))

  w = tkwinfo("containing", X, Y)       # widget mouse is over
  if(as.logical(tkwinfo("exists",w)))   # does widget still exist?
    tkevent.generate(w, "<<DragOver>>")

  ## generate drag leave if we left last widget
  if(as.logical(tkwinfo("exists",w)) &&
     length(as.character(w)) > 0 &&
     length(as.character(.lastWidgetID)) > 0
     ) {
    if(as.character(w)[1] != .lastWidgetID) 
      tkevent.generate(.lastWidgetID,"<<DragLeave>>")
  }
  .lastWidgetID <<- as.character(w)
})


###################################################
### chunk number 8: 
###################################################
## if doing example with drag label, include the following in the motion event callback
##  tkwm.deiconify(dragLabel)
##  tkwm.geometry(dragLabel, paste("+",X,"+",Y, sep="")) # put in offset if desired


###################################################
### chunk number 9: 
###################################################
 tkbind(bDrag,"<ButtonRelease-1>",function(W, X, Y) {
  if(!.dragging) return()
  w = tkwinfo("containing", X, Y)
    
  if(as.logical(tkwinfo("exists", w))) {
    tkevent.generate(w,"<<DragLeave>>")
    tkevent.generate(w,"<<DragDrop>>")
    tkconfigure(w,cursor="")
  }
  .dragging <<- FALSE
  tkconfigure(W,cursor="")
})


###################################################
### chunk number 10: 
###################################################
## if doing dragLabel, we have this as well:
## tkwm.withdraw(dragLabel)


###################################################
### chunk number 11: 
###################################################
tkbind(bDrop,"<<DragOver>>",function(W) {
  if(.dragging) 
    tkconfigure(W,default="active")
})


###################################################
### chunk number 12: 
###################################################
tkbind(bDrop,"<<DragLeave>>",function(W) {
  if(.dragging)  {
    tkconfigure(W, cursor="")
     tkconfigure(W,default="normal")  
   }
})


###################################################
### chunk number 13: 
###################################################
tkbind(bDrop,"<<DragDrop>>",function(W) {
  tkconfigure(W, text= .dragValue)
  .dragValue <- ""
})


