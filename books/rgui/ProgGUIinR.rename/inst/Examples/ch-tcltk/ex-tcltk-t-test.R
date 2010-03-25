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
e$x <- tclVar("")
e$f <- tclVar("")
e$data <- tclVar("")
e$mu <- tclVar(0)
e$alternative <- tclVar("two.sided")
e$conf.level <- tclVar(95)
e$var.equal <- tclVar(FALSE)


###################################################
### chunk number 4: layout
###################################################
### GUI
w <- tktoplevel()
tkwm.title(w, "t-test Dialog")
f <- ttkframe(w, padding=c(3,3,3,12))
tkpack(f, expand=TRUE, fill="both")
lf <- ttklabelframe(f, text="t.test()", padding=10)
tkpack(lf, expand=TRUE, fill="both", padx=5, pady=5)


###################################################
### chunk number 5: tkgridHelper
###################################################
putLabel <- function(parent,text,row, column) {
  label <- ttklabel(parent, text=text)
  tkgrid(label, row=row, column=column, sticky="e")
}


###################################################
### chunk number 6: 
###################################################
putLabel(lf, "data:",0,0)
dataCombo <- ttkcombobox(lf, values=getDfs(), textvariable=e$data)
tkgrid(dataCombo, row=0, column=1, sticky="ew", padx=2)
tkfocus(dataCombo)                      # give focus


###################################################
### chunk number 7: 
###################################################
putLabel(lf, "x:",1,0)
xCombo <-  ttkcombobox(lf, values=getNumericVars(), textvariable=e$x)
tkgrid(xCombo, row=1, column=1, sticky="ew", padx=2)


###################################################
### chunk number 8: ehocFALSE
###################################################
putLabel(lf, "f:",1,2)
fCombo <-  ttkcombobox(lf, values=getTwoLevelFactor(), textvariable=e$f)
tkgrid(fCombo, row=1, column=3, sticky="ew", padx=2)


###################################################
### chunk number 9: 
###################################################
## not a natural widget
putLabel(lf, "mu:", 2, 0)
muCombo <-  ttkcombobox(lf, values=c(""), textvariable=e$mu)
tkgrid(muCombo, row=2, column=1, sticky="ew", padx=2)


###################################################
### chunk number 10: 
###################################################
putLabel(lf, "alternative:", 3,0)
altCombo <-   ttkcombobox(lf, values=c("two.sided","less","greater"),
                          textvariable=e$alternative)
tkgrid(altCombo, row=3, column=1, sticky="ew", padx=2)


###################################################
### chunk number 11: makeUpMissing
###################################################
ttkscale <- function(parent, ...) tkwidget(parent, "ttk::scale", ...)
tkspinbox <- function(parent, ...) tkwidget(parent, "tk::spinbox", ...)

putLabel(lf, "conf.level:", 3, 2)
altFrame <- ttkframe(lf)
tkgrid(altFrame, row=3, column=3, columnspan=2, sticky="ew", padx=2)

altScale <- ttkscale(altFrame, from=75, to=100, variable=e$conf.level)
tkpack(altScale, expand=TRUE, fill="y", side="left")

altSpin <- tkspinbox(altFrame, from=75, to = 100, increment=1, textvariable=e$conf.level, width=5)
tkpack(altSpin, side="left")


###################################################
### chunk number 12: 
###################################################
putLabel(lf, "var.equal:", 4,0)
veCheck <- ttkcheckbutton(lf, variable=e$var.equal)
tkgrid(veCheck, row=4, column=1, stick="w", padx=2)


###################################################
### chunk number 13: 
###################################################
tkgrid.columnconfigure(lf, 0, weight=1)
tkgrid.columnconfigure(lf, 1, weight=10)
tkgrid.columnconfigure(lf, 2, weight=1)
tkgrid.columnconfigure(lf, 1, weight=10)


###################################################
### chunk number 14: 
###################################################
bf <- ttkframe(f)
tkpack(bf, fill="x", padx=5, pady=5)

cancel <- ttkbutton(bf, text="cancel", command=function() {
  tcl("after","cancel",updateID$ID)
  tkdestroy(w)
})
ok <- ttkbutton(bf, text="ok")

tkpack(ttklabel(bf, text=" "), expand=TRUE, fill="y", side="left")
tkpack(cancel, padx=6, side="left")
tkpack(ok, padx=6, side="left")
tkconfigure(ok, default="active")


###################################################
### chunk number 15: 
###################################################
okCallback <- function() {
  l <- lapply(e, tclvalue)
  runTTest(l)
}
tkbind(ok, "<Button-1>", okCallback)
tkbind(w, "<Return>", okCallback)        # for active binding


###################################################
### chunk number 16: 
###################################################
updateUI <- function() {
  tkconfigure(dataCombo, values=getDfs())
  dfName <- tclvalue(e$data)

  if(dfName == "") {
    tkconfigure(xCombo, state="disabled")
  } else {
    df <- get(dfName, envir=.GlobalEnv)
    tkconfigure(xCombo, state="normal", values=getNumericVars(df))
    if(! tclvalue(e$x) %in% getNumericVars(df))
      tclvalue(e$x) <- ""

    tkconfigure(fCombo, values=getTwoLevelFactor(df))
    if(!tclvalue(e$f) %in% getTwoLevelFactor(df))
      tclvalue(e$f) <- ""
  }
  
  tkconfigure(fCombo, state=
              ifelse(tclvalue(e$x) == "", "disabled", "normal"))
  
  if(tclvalue(e$f) == "")  {
    tkconfigure(muCombo, state="normal")
    tkconfigure(veCheck, state="disabled")
  } else {
    tclvalue(e$mu) <- 0
    tkconfigure(muCombo, state="disabled")
    tkconfigure(veCheck, state="normal")
  }
}


###################################################
### chunk number 17: 
###################################################
updateID <- new.env()
updateID$flag <- TRUE
updateID$ID <- NA
repeatFun <- function() {
  if(updateID$flag && as.logical(tkwinfo("exists",w))) {
    updateUI()
    updateID$ID <- tcl("after",1000, repeatFun)
  }
}
repeatFun()


###################################################
### chunk number 18: 
###################################################
runTTest <- function(l) {
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


