## example menu bar and popup menu
## need statistical content
w <- tktoplevel()
f <- ttkframe(w, padding=c(3,3,3,12))
tkpack(f, expand=TRUE, fill="both")

b <- ttkbutton(f, text="click me")
tkpack(b)

.Tcl("option add *tearOff 0")         # disable tearoff menus
mb <- tkmenu(w)
tkconfigure(w, menu=mb)

## top-level menus
fileMenu <- tkmenu(mb)
tkadd(mb, "cascade", label="File", menu= fileMenu)
editMenu <- tkmenu(mb)
tkadd(mb, "cascade", label="Edit", menu= editMenu)

## submenus
## vanilla
tkadd(fileMenu, "command", label="Open...",
      command=function() {
        print("open")
      })
## separator
tkadd(fileMenu, "separator")
## images -- doesn't work on mac
tkimage.create("photo", "::img::dismiss", file = system.file("images/dismiss.gif",package="gWidgets"))
tkadd(fileMenu, "command",
      label="Quit", image="::img::dismiss", compound="left",
      command = function() {
        print("quit")
      })



## radio buttons
radio <- tclVar("radio 1")
tkadd(editMenu, "radiobutton", label="radio 1", variable=radio,
      command=function() print(tclvalue(radio)))
tkadd(editMenu, "radiobutton", label="radio 2", variable=radio,
      command=function() print(tclvalue(radio)))

tkadd(editMenu, "separator")

## check button
checkButton <- tclVar("1")
tkadd(editMenu, "checkbutton", label="check", variable=checkbutton,
      onvalue=1, offvalue=0,
      command=function() print(tclvalue(checkbutton)))

## set state -- use index 0 -based disabled, normal
tkentryconfigure(fileMenu, 2, state="disabled") ## can use "end" or "last" here too

## change label text (not goo with radio button
tkentryconfigure(fileMenu, 0, label="Ouvrir...")


## popupmenus
pmb <- tkmenu(b)
tkadd(pmb, "command", label="huh 1", command=function() print("hi"))
tkadd(pmb, "command", label="huh 2", command=function() print("hi"))

doPopup <- function(X, Y) tkpopup(pmb, X, Y)
if (as.character(tcl("tk", "windowingsystem")) == "aqua") {
  tkbind(b, "<Button-2>", doPopup)
  tkbind(b, "<Control-1>", doPopup)
} else {
  tkbind(b, "<Button-3>", doPopup)
}
