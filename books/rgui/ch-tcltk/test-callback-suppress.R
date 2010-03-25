library(tcltk)
w <- tktoplevel()
b <- ttkbutton(w, text="click me", command = function() {
  ## default command: bind Button <1> {tk::ButtonDown %W}
  print("hi")
})

tkpack(b)

tkbind(b, "<Button-1>", function() {
  print("hello")
  .Tcl("return -code break") ## doesn't suppress call of other
})

## in Tcl?
.Tcl("toplevel .w")
.Tcl("wm title .w {title}")
.Tcl("button .w.b -text {Click me} -command {puts hi}")
.Tcl("pack .w.b")
#.Tcl("bind .w.b <Button-1> {puts hello}")
.Tcl("bind .w.b <Button-1> {puts hello; return -code break}") ## no hi
