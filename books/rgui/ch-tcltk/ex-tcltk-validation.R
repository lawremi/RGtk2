###################################################
### chunk number 1: 
###################################################
#line 2 "ex-tcltk-validation.Rnw"
## Example of using validation to adjust the date
## in case a user doesn't use desired format

## Docs on validation
## VALIDATION
## The -validate, -validatecommand, and -invalidcommand options are used to enable entry widget validation.
## VALIDATION MODES
## There are two main validation modes: prevalidation, in which the -validatecommand is evaluated prior to each edit and the return value is used to determine whether to accept or reject the change; and revalidation, in which the -validatecommand is evaluated to determine whether the current value is valid.

## The -validate option determines when validation occurs; it may be set to any of the following values:

## none
##     Default. This means validation will only occur when specifically requested by the validate widget command.

## key
##     The entry will be prevalidated prior to each edit (specifically, whenever the insert or delete widget commands are called). If prevalidation fails, the edit is rejected.

## focus
##     The entry is revalidated when the entry receives or loses focus.

## focusin
##     The entry is revalidated when the entry receives focus.

## focusout
##     The entry is revalidated when the entry loses focus.

## all
##     Validation is performed for all above conditions.

## The -invalidcommand is evaluated whenever the -validatecommand returns a false value.

## The -validatecommand and -invalidcommand may modify the entry widget's value via the widget insert or delete commands, or by setting the linked -textvariable. If either does so during prevalidation, then the edit is rejected regardless of the value returned by the -validatecommand.

## If -validatecommand is empty (the default), validation always succeeds.


###################################################
### chunk number 2: 
###################################################
#line 40 "ex-tcltk-validation.Rnw"
## test of validation command
## trcky bit is that validation commands must return TRUE or FALSE
## we can do this with tcl("eval","FALSE") or .Tcl("expr false")

library(tcltk)


###################################################
### chunk number 3: 
###################################################
#line 82 "ex-tcltk-validation.Rnw"
datePatterns <- c()
for(i in list(c("%m","%d","%Y"),        # U.S. style
              c("%m","%d","%y"))) {
  for(j in c("/","-"," ") )
    datePatterns[length(datePatterns)+1] <- 
      paste(i,sep="", collapse=j)
}


###################################################
### chunk number 4: setValidDateCallback
###################################################
#line 94 "ex-tcltk-validation.Rnw"
isValidDate <- function(W, P) { # P is the current value
  for(i in datePatterns) {
    date <- try( as.Date(P, format=i), silent=TRUE)
    if(!inherits(date, "try-error") && !is.na(date)) {
      tkconfigure(W,foreground="black") #  consult style?
      tkdelete(W, 0,"end")
      tkinsert(W, 0, format(date, format="%m/%d/%y"))
      return(tcl("expr","TRUE"))        
    } 
  }
  return(tcl("expr","FALSE"))
}


###################################################
### chunk number 5: setInvalidCallback
###################################################
#line 110 "ex-tcltk-validation.Rnw"
indicateInvalidDate <- function(W) {
  tkconfigure(W,foreground="red")
  tcl("expr","TRUE")
}


###################################################
### chunk number 6: notShown
###################################################
#line 117 "ex-tcltk-validation.Rnw"
## A simple GUI to show the entry widget.
w <- tktoplevel(); tkwm.title(w,"Validation of date example")
f <- ttkframe(w, padding=c(3,3,3,12)); tkpack(f, expand=TRUE, fill="both")
tkpack(ttklabel(f, text="Enter a date mm/dd/yy"), side="left")


###################################################
### chunk number 7: entryWidgetWithValidation
###################################################
#line 133 "ex-tcltk-validation.Rnw"
e <- ttkentry(f, validate="focusout",
              validatecommand=isValidDate,
              invalidcommand=indicateInvalidDate)
tkpack(e, side="left")

b <- ttkbutton(f,text="click")          # something to focus on
tkpack(b, side="bottom")


