###################################################
### chunk number 1: 
###################################################
#line 12 "ex-tcltk-t-test.Rnw"
## t.test dialog
## using basic widgets -- no entry widgets yet
library(tcltk)


###################################################
### chunk number 2: 
###################################################
#line 18 "ex-tcltk-t-test.Rnw"
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
#line 53 "ex-tcltk-t-test.Rnw"
### Data model
e <- new.env()
e$x <- tclVar(""); e$f <- tclVar(""); e$data <- tclVar("")
e$mu <- tclVar(0); e$alternative <- tclVar("two.sided")
e$conf.level <- tclVar(95); e$var.equal <- tclVar(FALSE)


###################################################
### chunk number 4: notShown
###################################################
#line 62 "ex-tcltk-t-test.Rnw"
### GUI Our standard setup
w <- tktoplevel()
tkwm.title(w, "t-test Dialog")
f <- ttkframe(w, padding=c(3,3,3,12))
tkpack(f, expand=TRUE, fill="both")


###################################################
### chunk number 5: layout
###################################################
#line 72 "ex-tcltk-t-test.Rnw"
lf <- ttklabelframe(f, text="t.test()", padding=10)
tkpack(lf, expand=TRUE, fill="both", padx=5, pady=5)


###################################################
### chunk number 6: tkgridHelper
###################################################
#line 81 "ex-tcltk-t-test.Rnw"
putLabel <- function(parent, text, row, column) {
  label <- ttklabel(parent, text=text)
  tkgrid(label, row=row, column=column, sticky="e")
}


###################################################
### chunk number 7: 
###################################################
#line 96 "ex-tcltk-t-test.Rnw"
putLabel(lf, "data:",0,0)
dataCombo <- ttkcombobox(lf, values=getDfs(), textvariable=e$data)
tkgrid(dataCombo, row=0, column=1, sticky="ew", padx=2)
tkfocus(dataCombo)                      # give focus


###################################################
### chunk number 8: notShown
###################################################
#line 103 "ex-tcltk-t-test.Rnw"
## not shown
putLabel(lf, "x:",1,0)
xCombo <-  ttkcombobox(lf, values=getNumericVars(), textvariable=e$x)
tkgrid(xCombo, row=1, column=1, sticky="ew", padx=2)


###################################################
### chunk number 9: notShown
###################################################
#line 110 "ex-tcltk-t-test.Rnw"
## not shown
putLabel(lf, "~ f:",1,2)
fCombo <-  ttkcombobox(lf, values=getTwoLevelFactor(), textvariable=e$f)
tkgrid(fCombo, row=1, column=3, sticky="ew", padx=2)


###################################################
### chunk number 10: mu
###################################################
#line 120 "ex-tcltk-t-test.Rnw"
putLabel(lf, "mu:", 2, 0)
muCombo <-  ttkcombobox(lf, values=c(""), textvariable=e$mu)
tkgrid(muCombo, row=2, column=1, sticky="ew", padx=2)


###################################################
### chunk number 11: 
###################################################
#line 129 "ex-tcltk-t-test.Rnw"
ttkscale <- function(parent, ...) tkwidget(parent, "ttk::scale", ...)
tkspinbox <- function(parent, ...) tkwidget(parent, "tk::spinbox", ...)


###################################################
### chunk number 12: 
###################################################
#line 133 "ex-tcltk-t-test.Rnw"
putLabel(lf, "alternative:", 3, 0)
altCombo <- tkspinbox(lf, values=c("two.sided","less","greater"),
                      textvariable=e$alternative, wrap=TRUE)
tkgrid(altCombo, row=3, column=1, sticky="ew", padx=2)


###################################################
### chunk number 13: 
###################################################
#line 143 "ex-tcltk-t-test.Rnw"
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
### chunk number 14: 
###################################################
#line 158 "ex-tcltk-t-test.Rnw"
putLabel(lf, "var.equal:", 4, 0)
veCheck <- ttkcheckbutton(lf, variable=e$var.equal)
tkgrid(veCheck, row=4, column=1, stick="w", padx=2)


###################################################
### chunk number 15: 
###################################################
#line 165 "ex-tcltk-t-test.Rnw"
tkgrid.columnconfigure(lf, 0, weight=1)
tkgrid.columnconfigure(lf, 1, weight=10)
tkgrid.columnconfigure(lf, 2, weight=1)
tkgrid.columnconfigure(lf, 1, weight=10)


###################################################
### chunk number 16: 
###################################################
#line 173 "ex-tcltk-t-test.Rnw"
bf <- ttkframe(f)
tkpack(bf, fill="x", padx=5, pady=5)

cancel <- ttkbutton(bf, text="cancel", command=function() {
  tcl("after","cancel",updateID$ID)
  tkdestroy(w)
})
ok <- ttkbutton(bf, text="ok")

tkpack(ttklabel(bf, text=" "), expand=TRUE, fill="y", 
       side="left")                     # add a spring
tkpack(cancel, padx=6, side="left")
tkpack(ok, padx=6, side="left")


###################################################
### chunk number 17: 
###################################################
#line 194 "ex-tcltk-t-test.Rnw"
okCallback <- function() {
  l <- lapply(e, tclvalue)
  runTTest(l)
}
tkconfigure(ok, command=okCallback)
tkbind("TButton", "<Return>", function(W) tcl(W, "invoke"))


###################################################
### chunk number 18: 
###################################################
#line 209 "ex-tcltk-t-test.Rnw"
updateUI <- function() {
  dfName <- tclvalue(e$data)
  curDfs <- getDfs()
  tkconfigure(dataCombo, values=curDfs)
  if(!dfName %in% curDfs) {
    dfName <- ""
    tclvalue(e$data) <- ""
  }

  if(dfName == "") {
    ## disable all
    sapply(list(xCombo, fCombo, muCombo,  veCheck),
           function(W) tkconfigure(W, state="disabled"))
    ## disable altSpin, confSpin, confScale
  } else {
    ## enable univariate
    sapply(list(xCombo,  muCombo),
           function(W) tkconfigure(W, state="normal"))
    ## enable altSpin, confSpin, confScale
    df <- get(dfName, envir=.GlobalEnv)
    numVars <- getNumericVars(df)
    tkconfigure(xCombo, values=numVars)
    if(! tclvalue(e$x) %in% numVars)
      tclvalue(e$x) <- ""

    ## bivariate
    availFactors <- getTwoLevelFactor(df)
    sapply(list(fCombo, veCheck),
           function(W) tkconfigure(W, state=ifelse(length(availFactors), "normal", "disabled")))
    tkconfigure(fCombo, values=availFactors)
    if(!tclvalue(e$f) %in% availFactors)
      tclvalue(e$f) <- ""
      
  }
}
tkbind(dataCombo, "<<ComboboxSelected>>", updateUI)


###################################################
### chunk number 19: 
###################################################
#line 254 "ex-tcltk-t-test.Rnw"
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
### chunk number 20: 
###################################################
#line 268 "ex-tcltk-t-test.Rnw"
id <- addTaskCallback(create_function())


###################################################
### chunk number 21: 
###################################################
#line 277 "ex-tcltk-t-test.Rnw"
## We don't show the function runTTest.
## It is a bit long, as care must be taken as it isn't clear if a formula should be used.  
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


