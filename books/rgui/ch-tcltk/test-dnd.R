library(tcltk)
## Example of drag and drop
## idea from http://wiki.tcl.tk/416
## label idea from http://www.codebykevin.com/opensource/xplat_oss.html

w <- tktoplevel()
f <- ttkframe(w); tkpack(f, expand=TRUE, fill="both")

b <- ttkbutton(f, text="drag"); tkpack(b)
l <- ttklabel(f, text="Drag over me"); tkpack(l)
b1 <- ttkbutton(f, text="drop"); tkpack(b1)

## make a drag label to pop up during dragging
tclServiceMode(FALSE)
tcl("image", "create", "photo", "::dnd::icon",
    data=paste(1
      "R0lGODlhEAAQALMAAAAAAMbGxv//////////////////////////////////",
      "/////////////////////yH5BAEAAAEALAAAAAAQABAAAAQwMMhJ6wQ4YyuB",
      "+OBmeeDnAWNpZhWpmu0bxrKAUu57X7VNy7tOLxjIqYiapIjDbDYjADs=",
      sep=""))
dragLabel <- tktoplevel()
tkwm.title(dragLabel, "")
tkwm.resizable(dragLabel, FALSE,FALSE)
tkwm.withdraw(dragLabel)
tclServiceMode(TRUE)
tkwm.overridedirect(dragLabel, TRUE)    # Doesn't drop title bar
dragLabel_label <- ttklabel(dragLabel,image="::dnd::icon", text="this space for rent", compound="left")
tkpack(dragLabel_label)

## Globals to keep track of drag state
.dragging <- FALSE                      # current dragging
.lastWidgetID <- ""                     # track last widget we have gone over
.dropValue <- ""                        # what to pass


## Binding on source widgets (that we can drag from)
## initial press to set state and dropvalue
tkbind(bDrag, "<ButtonPress-1>", function(W) {
  .dragging <<- TRUE
  .lastWidgetID <- ""
  .dropValue <<- "put text here"
  tkconfigure(dragLabel_label, text=.dropValue)
})
## motion - generate DragOver and DragLeave events
## these are then responded to by the target widget
tkbind(bDrag, "<B1-Motion>", function(X,Y) {
  tkconfigure(b, cursor="diamond_cross")
  w <- tkwinfo("containing",X,Y)
  if(as.logical(tkwinfo("exists",w))) 
    tkevent.generate(w, "<<DragOver>>")
  
  if(as.logical(tkwinfo("exists",w)) &&
     length(as.character(w)) > 0 &&
     length(as.character(.lastWidgetID)) > 0
     ) {
    if(as.character(w)[1] != .lastWidgetID) {
      tkevent.generate(.lastWidgetID,"<<DragLeave>>")
    }
  }
  .lastWidgetID <<- as.character(w)
  
  ## position (and raise if needed) the dragLabel window
  tkwm.deiconify(dragLabel)
  tkwm.geometry(dragLabel, paste("+",X,"+",Y, sep="")) # put in offset
  
})
## what happens when we release the button
tkbind(bDrag, "<ButtonRelease-1>", function(W,X,Y) {
  w <- tkwinfo("containing",X,Y)
  if(as.logical(tkwinfo("exists", w))) {
    tkevent.generate(w,"<<DragLeave>>")
    tkevent.generate(w,"<<DragDrop>>")
    tkconfigure(w,cursor="")
  }
  .dragging <<- FALSE
  tkconfigure(W, cursor="")
  tkwm.withdraw(dragLabel)
})


## bindings for source widget
tkbind(bDrop, "<<DragOver>>", function(W,X,Y) {
  tkconfigure(W,default="active")
  tkconfigure(W, cursor="coffee_mug")
})
tkbind(bDrop, "<<DragLeave>>", function(W,X,Y) {
  tkconfigure(W,default="normal")
  tkconfigure(W, cursor="")
})
tkbind(bDrop, "<<DragDrop>>", function(W,X,Y) {
  tkconfigure(W, text=.dropValue)
})
