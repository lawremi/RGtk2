###################################################
### chunk number 1: 
###################################################
## t.test dialog
## using basic widgets -- no entry widgets yet
library(tcltk)


###################################################
### chunk number 2: 
###################################################
## helper functions
## not shown
getDfs <- function(envir=.GlobalEnv) {
  tmp <- ls(envir=envir)
  out <- sapply(tmp, function(i) is.data.frame(get(i, envir=envir)))
  tmp[out]
}
getNumericVars <- function(df) {
  if(missing(df))
    return(c(""))
  nms <- names(df)
  ind <- sapply(df, is.numeric)
  if(length(ind) > 0)
    nms[ind]
  else
    c("")
}
getTwoLevelFactor <- function(df) {
  if(missing(df))
    return(c(""))
  nms <- names(df)
  ind <- sapply(df, function(i) length(levels(as.factor(i))) == 2)
  if(length(ind) > 0)
    nms[ind]
  else
    c("")
}


###################################################
### chunk number 3: dataModel
###################################################
### Data model
e <- new.env()
e$x <- tclVar(""); e$f <- tclVar(""); e$data <- tclVar("")
e$mu <- tclVar(0); e$alternative <- tclVar("two.sided")
e$conf.level <- tclVar(95); e$var.equal <- tclVar(FALSE)


###################################################
### chunk number 4: 
###################################################
## We don't show the function runTTest.
## It is a bit long, as care must be taken as it isn't clear if a formula should be used.  
runTTest <- function() {
  l <- lapply(e, tclvalue)
  
  ## ugly function to run t test
  if(l$data == "" || l$x == "")
    return()

  l$data <- get(l$data, envir=.GlobalEnv)

  if(l$f != "") {
    l$formula <- formula(paste(l$x,l$f, sep="~"))
    l$x <- l$f <- NULL
    l$mu <- NULL
    l$var.equal <- as.logical(as.numeric(l$var.equal))

    TTest <- stats:::t.test.formula
  } else {
    l$x <- l$data[, l$x]
    l$f <- NULL
    l$mu = as.numeric(l$mu)
    l$var.equal <- NULL
    
    TTest <- stats:::t.test.default
  }
  l$conf.level <- as.numeric(l$conf.level)/100
  ret <- capture.output(do.call("TTest", l))
  cat(paste(ret, collapse="\n"))
}


###################################################
### chunk number 5: notShown
###################################################
### GUI Our standard setup
w <- tktoplevel()
tkwm.title(w, "t-test Dialog")
f <- ttkframe(w, padding=c(3,3,3,12))
tkpack(f, expand=TRUE, fill="both")


###################################################
### chunk number 6: layout
###################################################
lf <- ttklabelframe(f, text="t.test()", padding=10)
tkpack(lf, expand=TRUE, fill="both", padx=5, pady=5)


###################################################
### chunk number 7: tkgridHelper
###################################################
putLabel <- function(parent, text, row, column) {
  label <- ttklabel(parent, text=text)
  tkgrid(label, row=row, column=column, sticky="e")
}


###################################################
### chunk number 8: 
###################################################
putLabel(lf, "data:",0,0)
dataCombo <- ttkcombobox(lf, state="readonly", values=getDfs(), textvariable=e$data)
tkgrid(dataCombo, row=0, column=1, sticky="ew", padx=2)
tkfocus(dataCombo)                      # give focus


###################################################
### chunk number 9: notShown
###################################################
## not shown
putLabel(lf, "x:",1,0)
xCombo <-  ttkcombobox(lf, values=getNumericVars(), textvariable=e$x)
tkgrid(xCombo, row=1, column=1, sticky="ew", padx=2)


###################################################
### chunk number 10: notShown
###################################################
## not shown
putLabel(lf, "~ f:",1,2)
fCombo <-  ttkcombobox(lf, values=getTwoLevelFactor(), textvariable=e$f)
tkgrid(fCombo, row=1, column=3, sticky="ew", padx=2)


###################################################
### chunk number 11: mu
###################################################
putLabel(lf, "mu:", 2, 0)
muCombo <-  ttkentry(lf,  textvariable=e$mu)
tkgrid(muCombo, row=2, column=1, sticky="ew", padx=2)


###################################################
### chunk number 12: 
###################################################
ttkscale <- function(parent, ...) tkwidget(parent, "ttk::scale", ...)
tkspinbox <- function(parent, ...) tkwidget(parent, "tk::spinbox", ...)


###################################################
### chunk number 13: 
###################################################
putLabel(lf, "alternative:", 3, 0)
rbFrame <- ttkframe(lf)
sapply(c("two.sided","less","greater"), function(i) {
  rb <- ttkradiobutton(rbFrame, variable=e$alternative, text=i, value=i)
  tkpack(rb, side="left")
})
tkgrid(rbFrame, row=3, column=1, sticky="ew", padx=2)


###################################################
### chunk number 14: 
###################################################
putLabel(lf, "conf.level:", 3, 2)
confFrame <- ttkframe(lf)
tkgrid(confFrame, row=3, column=3, columnspan=2, 
       sticky="ew", padx=2)
confScale <- ttkscale(confFrame, from=75, to=100, 
                     variable=e$conf.level)
tkpack(confScale, expand=TRUE, fill="y", side="left")

confSpin <- tkspinbox(confFrame, from=75, to=100, increment=1, 
                     textvariable=e$conf.level, width=5)
tkpack(confSpin, side="left")


###################################################
### chunk number 15: 
###################################################
putLabel(lf, "var.equal:", 4, 0)
veCheck <- ttkcheckbutton(lf, variable=e$var.equal)
tkgrid(veCheck, row=4, column=1, stick="w", padx=2)


###################################################
### chunk number 16: 
###################################################
tkgrid.columnconfigure(lf, 0, weight=1)
tkgrid.columnconfigure(lf, 1, weight=10)
tkgrid.columnconfigure(lf, 2, weight=1)
tkgrid.columnconfigure(lf, 1, weight=10)


###################################################
### chunk number 17: 
###################################################
bf <- ttkframe(f)
cancel <- ttkbutton(bf, text="cancel")
ok <- ttkbutton(bf, text="ok")
#
tkpack(bf, fill="x", padx=5, pady=5)
tkpack(ttklabel(bf, text=" "), expand=TRUE, fill="y", 
       side="left")                     # add a spring
tkpack(cancel, padx=6, side="left")
tkpack(ok, padx=6, side="left")


###################################################
### chunk number 18: 
###################################################
tkconfigure(ok, command=runTTest)
tkconfigure(cancel, command=function() tkdestroy(w))
tkbind("TButton", "<Return>", function(W) tcl(W, "invoke"))


###################################################
### chunk number 19: 
###################################################
updateUI <- function() {
  dfName <- tclvalue(e$data)
  curDfs <- getDfs()
  tkconfigure(dataCombo, values=curDfs)
  if(!dfName %in% curDfs) {
    dfName <- ""
    tclvalue(e$data) <- ""
  }

  if(dfName == "") {
    ## 3 ways to disable needed !
    sapply(list(xCombo, fCombo, muCombo,  confScale, veCheck, ok),
           function(W) tcl(W, "state", "disabled"))
    sapply(as.character(tkwinfo("children", rbFrame)), function(W)
           tcl(W, "state", "disabled"))
    tkconfigure(confSpin, state="disabled")
  } else {
    ## enable univariate, ok
    sapply(list(xCombo,  muCombo, confScale, ok),
           function(W) tcl(W, "state", "!disabled"))
    sapply(as.character(tkwinfo("children", rbFrame)), function(W)
           tcl(W, "state", "!disabled"))
    tkconfigure(confSpin, state="normal")
    
    df <- get(dfName, envir=.GlobalEnv)
    numVars <- getNumericVars(df)
    tkconfigure(xCombo, values=numVars)
    if(! tclvalue(e$x) %in% numVars)
      tclvalue(e$x) <- ""

    ## bivariate
    availFactors <- getTwoLevelFactor(df)
    sapply(list(fCombo, veCheck),
           function(W) tcl(W, "state", sprintf("%sdisabled",
                                               ifelse(length(availFactors), "!", ""))))
    tkconfigure(fCombo, values=availFactors)
    if(!tclvalue(e$f) %in% availFactors)
      tclvalue(e$f) <- ""
      
         }
}
updateUI()
tkbind(dataCombo, "<<ComboboxSelected>>", updateUI)


###################################################
### chunk number 20: 
###################################################
require(digest)
create_function <- function() {
  .dfs <- digest(getDfs())
  f <- function(...) {
    if((val <- digest(getDfs())) != .dfs) {
      .dfs <<- val
      updateUI()
    }
    return(TRUE)
  }
}


###################################################
### chunk number 21: 
###################################################
id <- addTaskCallback(create_function())


