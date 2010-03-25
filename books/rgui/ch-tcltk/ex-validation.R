## validation
## example with a validation check, if false, then call invalid
## use .Tcl("set state 0") to get BOOLEAN return value
## example where user enters a data in a certain format might be good
## or a value between a range


library(tcltk)
w <- tktoplevel()

validator <- function(d,i,P,s,S,v,V,W) {
  cat(d,i,P,s,S,v,V,W,"\n")

  ## return BOOLEAN, return(FALSE) fails
#  .Tcl("set state 0") ## 1 or 0 for boolean
  .Tcl("expr true")


}

## use 
invalid <- function(d,i,P,s,S,v,V,W) {
  ## tktclvalue(textvar) <- toupper(s)

  ## pathName selection option arg
  tkselection.range(W,0,sample(1:5,1)) ## highlight first 3
  ## many others -- delete, ...
}
textvar <- tclVar("edit me")
e <- ttkentry(w, textvariable=textvar,
              validatecommand=validator,
              invalidcommand = invalid,
#              validate="focusout")
              validate="key")
tkpack(e)

tkpack(ttkbutton(w,text="asdf"))

