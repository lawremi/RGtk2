###################################################
### chunk number 1: 
###################################################
value <- tclVar(TRUE)
tclvalue(value) <- FALSE
tclvalue(value)


###################################################
### chunk number 2: setup-window
###################################################
w <- tktoplevel(); tkwm.title(w, "Check button example")
f <- ttkframe(w); tkpack(f, expand=TRUE, fill="both")


###################################################
### chunk number 3: make-TCL-variables
###################################################
value <- tclVar(TRUE)
callback <- function() print(tclvalue(value))     # uses global variable value
labelVar <- tclVar("check button label")
cb <- ttkcheckbutton(f, variable=value, textvariable=labelVar, command=callback)
tkpack(cb)


###################################################
### chunk number 4: 
###################################################
tkcget(cb, "variable"=NULL)


###################################################
### chunk number 5: 
###################################################
addBinding <- function(widget, event="<Button-1>", cb, userData=NULL, subArgs = "") {
  subArgs <- paste(subArgs, collapse=", ")
  expr <- paste("function(", subArgs,") {",
                "h <- list(widget=widget, userData=userData);",
                "cb(h,",subArgs,")}", sep="")
  callback = eval(parse(text=expr))
  tkbind(widget,event,callback)
}
addBinding(widget=cb, event="<Return>",
           cb= function(h,W)  tclvalue(h$userData) <- !as.numeric(tclvalue(h$userData)),
           userData=value)


###################################################
### chunk number 6: 
###################################################
w <- tktoplevel(); tkwm.title(w, "Radio example")
f <- ttkframe(w); tkpack(f, expand=TRUE, fill="both")


###################################################
### chunk number 7: 
###################################################
values <- c("less","greater","two.sided")
var <- tclVar(values[1])
callback <- function() print(tclvalue(var))

for(i in 1:length(values)) {
  rb <- ttkradiobutton(f, text=values[i], variable=var, value=values[i],
                       command=callback)
  tkpack(rb, side="top", anchor="w")
}


###################################################
### chunk number 8: 
###################################################
w <- tktoplevel(); tkwm.title(w, "Combobox example")
f <- ttkframe(w, padding=c(3,3,12,12)); tkpack(f, expand=TRUE, fill="both")


###################################################
### chunk number 9: 
###################################################
carNames <- rownames(mtcars)
var <- tclVar(values[1])


###################################################
### chunk number 10: 
###################################################
cb <- ttkcombobox(f,
                  values=carNames,
                  textvariable=var,
                  state="normal", # or readonly
                  justify="left")
tkpack(cb)


###################################################
### chunk number 11: Combobox-get
###################################################
tclvalue(var)                           # TCL variable
tkget(cb)                               # get subcommand
tcl(cb, "current")                      # 0-based index


###################################################
### chunk number 12: Combobox-set
###################################################
tclvalue(var) <- carNames[2]            # using tcl variable
tkset(cb, carNames[4])                  # by value
tcl(cb,"current",0)                     # by index


###################################################
### chunk number 13: Combobox-set-values
###################################################
## set the possible values
tkconfigure(cb, values = tolower(carNames))


###################################################
### chunk number 14: combobox-selection-binding
###################################################
tkbind(cb, "<<ComboboxSelected>>", function() {
  print(tclvalue(var))
} )


###################################################
### chunk number 15: Combobox-binding-to-return
###################################################
tkbind(cb, "<Return>", function(W) {
  val <- tkget(W)
  cat(as.character(val), "\n")
})


###################################################
### chunk number 16: ttkscale
###################################################
ttkscale <- function(parent, ...) tkwidget(parent, "ttk::scale", ...)


###################################################
### chunk number 17: 
###################################################
tkspinbox <- function(parent, ...) tkwidget(parent, "tk::spinbox", ...)


###################################################
### chunk number 18: 
###################################################
## t.test dialog
## using basic widgets -- no entry widgets yet
library(tcltk)


###################################################
### chunk number 19: 
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
### chunk number 20: makeUpMissing
###################################################
ttkscale <- function(parent, ...) tkwidget(parent, "ttk::scale", ...)
tkspinbox <- function(parent, ...) tkwidget(parent, "tk::spinbox", ...)


###################################################
### chunk number 21: dataModel
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
### chunk number 22: layout
###################################################
### GUI
w <- tktoplevel()
tkwm.title(w, "t-test Dialog")
f <- ttkframe(w, padding=c(3,3,3,12))
tkpack(f, expand=TRUE, fill="both")
lf <- ttklabelframe(f, text="t.test()", padding=10)
tkpack(lf, expand=TRUE, fill="both", padx=5, pady=5)


###################################################
### chunk number 23: tkgridHelper
###################################################
## The GUI uses tkgrid layout
## helper
putLabel <- function(parent,text,row, column) {
  label <- ttklabel(parent, text=text)
  tkgrid(label, row=row, column=column, sticky="e")
}


###################################################
### chunk number 24: 
###################################################
putLabel(lf, "data:",0,0)
dataCombo <- ttkcombobox(lf, values=getDfs(), textvariable=e$data)
tkgrid(dataCombo, row=0, column=1, sticky="ew", padx=2)
tkfocus(dataCombo)                      # give focus


###################################################
### chunk number 25: 
###################################################
putLabel(lf, "x:",1,0)
xCombo <-  ttkcombobox(lf, values=getNumericVars(), textvariable=e$x)
tkgrid(xCombo, row=1, column=1, sticky="ew", padx=2)


###################################################
### chunk number 26: 
###################################################
putLabel(lf, "f:",1,2)
fCombo <-  ttkcombobox(lf, values=getTwoLevelFactor(), textvariable=e$f)
tkgrid(fCombo, row=1, column=3, sticky="ew", padx=2)


###################################################
### chunk number 27: 
###################################################
## not a natural widget
putLabel(lf, "mu:", 2, 0)
muCombo <-  ttkcombobox(lf, values=c(""), textvariable=e$mu)
tkgrid(muCombo, row=2, column=1, sticky="ew", padx=2)


###################################################
### chunk number 28: 
###################################################
putLabel(lf, "alternative:", 3,0)
altCombo <-   ttkcombobox(lf, values=c("two.sided","less","greater"),
                          textvariable=e$alternative)
tkgrid(altCombo, row=3, column=1, sticky="ew", padx=2)


###################################################
### chunk number 29: 
###################################################
putLabel(lf, "conf.level:", 3, 2)
altFrame <- ttkframe(lf)
tkgrid(altFrame, row=3, column=3, columnspan=2, sticky="ew", padx=2)

altScale <- ttkscale(altFrame, from=75, to=100, variable=e$conf.level)
tkpack(altScale, expand=TRUE, fill="y", side="left")

altSpin <- tkspinbox(altFrame, from=75, to = 100, increment=1, textvariable=e$conf.level, width=5)
tkpack(altSpin, side="left")


###################################################
### chunk number 30: 
###################################################
putLabel(lf, "var.equal:", 4,0)
veCheck <- ttkcheckbutton(lf, variable=e$var.equal)
tkgrid(veCheck, row=4, column=1, stick="w", padx=2)


###################################################
### chunk number 31: 
###################################################
tkgrid.columnconfigure(lf, 0, weight=1)
tkgrid.columnconfigure(lf, 1, weight=10)
tkgrid.columnconfigure(lf, 2, weight=1)
tkgrid.columnconfigure(lf, 1, weight=10)


###################################################
### chunk number 32: 
###################################################
# button
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

okCallback <- function() {
  l <- lapply(e, tclvalue)
  runTTest(l)
}
tkbind(ok, "<Button-1>", okCallback)
tkbind(w, "<Return>", okCallback)        # for active binding


###################################################
### chunk number 33: 
###################################################
## update UI
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
### chunk number 34: 
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
### chunk number 35: 
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


###################################################
### chunk number 36: entryExample
###################################################
w <- tktoplevel()
tkwm.title(w,"Entry widget test")
f <- ttkframe(w, padding=c(3,3,3,12)); tkpack(f, expand=TRUE, fill="both")


###################################################
### chunk number 37: entryExampleDef
###################################################
eVar <- tclVar("initial value")
e <- ttkentry(w, textvariable=eVar)
tkpack(e)


###################################################
### chunk number 38: 
###################################################
tclvalue(eVar)
tclvalue(eVar) <- "set value"


###################################################
### chunk number 39: tkget
###################################################
tkget(e)


###################################################
### chunk number 40: tkinsert
###################################################
tkinsert(e,"end","new text")


###################################################
### chunk number 41: 
###################################################
tkdelete(e, 0, 4)


###################################################
### chunk number 42: 
###################################################
tkicursor(e, 0)


###################################################
### chunk number 43: 
###################################################
tkselection.range(e, 0, "end")


###################################################
### chunk number 44: 
###################################################
## Search box example
## uses image to give curve: from http://wiki.tcl.tk/18188
## demonstrates style for entry widget
## uses default value for text that is in gray
library(tcltk)


###################################################
### chunk number 45: setUpStyle
###################################################
## Data here is a uunendocde gif file
.imageData <- paste("R0lGODlhKgAaAOfnAFdZVllbWFpcWVtdWlxeW11fXF9hXmBiX2ZnZWhpZ2lraGxua25wbXJ0",
               "cXR2c3V3dHZ4dXh6d3x+e31/fH6AfYSGg4eJhoiKh4qMiYuNio2PjHmUqnqVq3yXrZGTkJKU",
               "kX+asJSWk32cuJWXlIGcs5aYlX6euZeZloOetZial4SftpqbmIWgt4GhvYahuIKivpudmYei",
               "uYOjv5yem4ijuoSkwIWlwYmlu56gnYamwp+hnoenw4unvaCin4ioxJCnuZykrImpxZmlsoaq",
               "zI2pv6KkoZGouoqqxpqms4erzaOloo6qwYurx5Kqu5untIiszqSmo5CrwoysyJeqtpOrvJyo",
               "tZGsw42typSsvaaopZKtxJWtvp6qt4+uy6epppOuxZCvzKiqp5quuZSvxoyx06mrqJWwx42y",
               "1JKxzpmwwaqsqZaxyI6z1ZqxwqutqpOzz4+01qyuq56yvpizypS00Jm0y5W10Zq1zJa20rCy",
               "rpu3zqizwbGzr6C3yZy4z7K0saG4yp250LO1sqK5y5660Z+70qO7zKy4xaC806S8zba4taG9",
               "1KW9zq66x6+7yLi6t6S/1rC8yrm7uLO8xLG9y7q8ubS9xabB2anB07K+zLW+xrO/za7CzrTA",
               "zrjAyLXBz77BvbbC0K/G2LjD0bnE0rLK28TGw8bIxcLL07vP28HN28rMycvOyr/T38DU4cnR",
               "2s/RztHT0NLU0cTY5MrW5MvX5dHX2c3Z59bY1dPb5Nbb3dLe7Nvd2t3f3NXh797g3d3j5dnl",
               "9OPl4eTm4+Ln6tzo9uXn5Obo5eDp8efp5uHq8uXq7ejq5+nr6OPs9Ovu6unu8O3v6+vw8+7w",
               "7ezx9O/x7vDy7/Hz8O/19/P18vT38/L3+fb49Pf59vX6/fj69/b7/vn7+Pr8+ff9//v9+vz/",
               "+/7//P//////////////////////////////////////////////////////////////////",
               "/////////////////////////////////yH/C05FVFNDQVBFMi4wAwEAAAAh+QQJZAD/ACwC",
               "AAIAKAAWAAAI/gD/CRz4bwUGCg8eQFjIsGHDBw4iTLAQgqBFgisuePCiyJOpUyBDihRpypMi",
               "Lx8qaLhIMIyGFZ5sAUsmjZrNmzhzWpO2DJgtTysqfGDpxoMbW8ekeQsXzty4p1CjRjUXrps3",
               "asJsuclQ4uKKSbamMR3n1JzZs2jRkh1HzuxVXX8y4CDYAwqua+DInVrRwMGJU2kDp31KThy1",
               "XGWGDlxhi1rTPAUICBBAoEAesoIzn6Vm68MKgVAUHftmzhOCBCtQwQKSoABgzZnJdSMmyIPA",
               "FbCotdUQAIhNa9B6DPCAGbZac+SowVIMRVe4pwkA4GpqDlwuAAmMZx4nTtfnf1mO5JEDNy46",
               "MHJkxQEDgKC49rPjwC0bqGaZuOoZAKjBPE4NgAzUvYcWOc0QZF91imAnCDHJ5JFAAJN0I2Ba",
               "4iRDUC/gOEVNDwIUcEABCAgAAATUTIgWOMBYRFp80ghiAQIIVAAEAwJIYI2JZnUji0XSYAYO",
               "NcsQA8wy0hCTwAASXGOiONFcxAtpTokTHznfiLMNMAkcAMuE43jDC0vLeGOWe2R5o4sn1LgH",
               "GzkWsvTPMgEOaA433Ag4TjjMuDkQMNi0tZ12sqWoJ0HATMPNffAZZ6U0wLAyqJ62RGoLLrhI",
               "aqmlpzwaEAAh+QQJZAD/ACwAAAAAKgAaAAAI/gD/CRw40JEhQoEC+fGjcOHCMRAjRkxDsKLF",
               "f5YcAcID582ZjyBDJhmZZIjJIUySEDHiBMhFghrtdNnRAgSHmzhz6sTZQcSLITx+CHn5bxSk",
               "Nz5MCMGy55CjTVCjbuJEtSrVQ3uwqDBRQwrFi476SHHxow8qXcemVbPGtm21t3CnTaP27Jgu",
               "VHtuiIjBsuImQkRiiEEFTNo2cOTMKV7MuLE5cN68QUOGSgwKG1EqJqJDY8+rZt8UjxtNunTj",
               "cY3DgZOWS46KIFgGjiI0ZIsqaqNNjWjgYMUpx8Adc3v2aosNMAI1DbqyI9WycOb4IAggQEAB",
               "A3lQBxet/TG4cMpI/tHwYeSfIzxM0uTKNs7UgAQrYL1akaDA7+3bueVqY4NJlUhIcQLNYx8E",
               "AIQ01mwjTQ8DeNAdfouNA8440GBCQxJY3MEGD6p4Y844CQCAizcSgpMLAAlAuJ03qOyQRBR3",
               "nEHEK+BMGKIui4kDDAAIPKiiYuSYSMQQRCDCxhiziPMYBgDkEaEaAGQA3Y+MjUPOLFoMoUUh",
               "cKxRC4ngeILiH8Qkk0cCAUzSDZWpzbLEE1EwggcYqWCj2DNADFDAAQUgIAAAEFDDJmPYqNJF",
               "F1s4cscTmCDjDTjdSPOHBQggUAEQDAgggTWDPoYMJkFoUdRmddyyjWLeULMMMcAsIw0x4wkM",
               "IME1g25zyxpHxFYUHmyIggw4H4ojITnfiLMNMAkcAAub4BQjihRdDGTJHmvc4Qo1wD6Imje6",
               "eILbj+BQ4wqu5Q3ECSJ0FOKKMtv4mBg33Pw4zjbKuBIIE1xYpIkhdQQiyi7OtAucj6dt48wu",
               "otQhBRa6VvSJIRwhIkotvgRTzMUYZ6xxMcj4QkspeKDxxRhEmUfIHWjAgQcijEDissuXvCyz",
               "zH7Q8YQURxDhUsn/bCInR3AELfTQZBRt9BBJkCGFFVhMwTNBlnBCSCGEIJQQIAklZMXWRBAR",
               "RRRWENHwRQEBADs=}",
               sep="\n")


###################################################
### chunk number 46: 
###################################################
QT <- tkimage.create("photo","::image::search1", data=.imageData, format="gif -index 0")
QT <- tkimage.create("photo","::image::search2", data=.imageData, format="gif -index 1")


###################################################
### chunk number 47: searchFieldElement
###################################################
.Tcl(paste("ttk::style element create Search.field ",
           "image {::image::search1 focus ::image::search2} ",
           "-border {22 7 14} -sticky ew",
           sep=""))


###################################################
### chunk number 48: 
###################################################
.Tcl(paste("ttk::style layout Search.entry {",
           "Search.field -sticky nswe -border 1 -children {",
           "Entry.padding -sticky nswe -children {",
           "Entry.textarea -sticky nswe",
           "}}}",
           sep="\n"))


###################################################
### chunk number 49: 
###################################################
## set the background color of the entry
tcl("ttk::style", "configure","Search.entry", background="#b2b2b2")


###################################################
### chunk number 50: 
###################################################
w <- tktoplevel()
tkwm.title(w, "Search box example")
f <- ttkframe(w, padding=c(3,3,3,12)); tkpack(f, expand=TRUE, fill="both")


###################################################
### chunk number 51: 
###################################################
eVar <- tclVar("")
e <- ttkentry(f, textvariable=eVar, style="Search.entry")
tkpack(e)
b <- ttkbutton(f, text="click me"); tkpack(b)


###################################################
### chunk number 52: 
###################################################
initialText <- "Search"
tkbind(e,"<Expose>", function(W) {
  cur <- as.character(tcl(W,"get"))
  if(length(cur) ==0 || cur == "") {    # first time
    tclvalue(eVar) <- initialText
    tkconfigure(W,foreground="gray50")
  } else {
    tkconfigure(W, foreground="black")
  }
})


###################################################
### chunk number 53: 
###################################################
tkbind(e,"<FocusIn>",function(W) {
  cur <- as.character(tcl(W,"get"))
  if(cur == initialText) {              # searching for initial text?
    tclvalue(eVar) <- ""
    tkconfigure(W, foreground="black")
  }
})


###################################################
### chunk number 54: 
###################################################
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
### chunk number 55: 
###################################################
## test of validation command
## trcky bit is that validation commands must return TRUE or FALSE
## we can do this with tcl("eval","FALSE") or .Tcl("expr false")

library(tcltk)


###################################################
### chunk number 56: 
###################################################
datePatterns <- c()
for(i in list(c("%m","%d","%Y"),
              c("%m","%d","%y"))) {
  for(j in c("/","-"," ") )
      datePatterns[length(datePatterns)+1] <- paste(i,sep="", collapse=j)
}


###################################################
### chunk number 57: setValidDateCallback
###################################################
isValidDate <- function(W,P) {          #  P is the current value, W entry
  for(i in datePatterns) {
    date <- try( as.Date(P, format=i), silent=TRUE)
    if(!inherits(date, "try-error") && !is.na(date)) {
      tkconfigure(W,foreground="black") #  consult style?
      tkdelete(W,"0","end")
      tkinsert(W,0, format(date, format="%m/%d/%y"))
      return(tcl("expr","TRUE"))
    } 
  }
  return(tcl("expr","FALSE"))
}


###################################################
### chunk number 58: setInvalidCallback
###################################################
indicateInvalidDate <- function(W) {
  tkconfigure(W,foreground="red")
  tcl("expr","TRUE")
}


###################################################
### chunk number 59: 
###################################################
w <- tktoplevel(); tkwm.title(w,"Validation of date example")
f <- ttkframe(w, padding=c(3,3,3,12)); tkpack(f, expand=TRUE, fill="both")
tkpack(ttklabel(f, text="Enter a date mm/dd/yy"), side="left")


###################################################
### chunk number 60: entryWidgetWithValidation
###################################################
e <- ttkentry(f, validate="focusout",
              validatecommand=isValidDate,
              invalidcommand=indicateInvalidDate)
tkpack(e, side="left")

b <- ttkbutton(f,text="click")          # something to focus on
tkpack(b, side="bottom")


###################################################
### chunk number 61: scrollbar-example
###################################################
library(tcltk)
w <- tktoplevel(); tkwm.title(w, "Scrollbar example")
parent <- ttkframe(w); tkpack(parent, expand=TRUE, fill="both")
widget <- tktext(parent)


###################################################
### chunk number 62: 
###################################################
xscr <- ttkscrollbar(parent, orient="horizontal",
                     command=function(...) tkxview(widget, ...))
yscr <- ttkscrollbar(parent, orient="vertical",
                     command=function(...) tkxview(widget, ...))


###################################################
### chunk number 63: 
###################################################
tkconfigure(widget,
            xscrollcommand=function(...) tkset(xscr,...),
            yscrollcommand=function(...) tkset(yscr,...))


###################################################
### chunk number 64: 
###################################################
tkgrid(widget, row=0, column=0, sticky="news")
tkgrid(yscr,row=0,column=1, sticky="ns")
tkgrid(xscr, row=1, column=0, sticky="ew")
tkgrid.columnconfigure(parent, 0, weight=1)
tkgrid.rowconfigure(parent, 0, weight=1)


###################################################
### chunk number 65: addScrollbars
###################################################
## function to add scrollbars to widget and pack into grid
## parent uses grid manager -- con't pack in other children
addScrollbars <- function(parent, widget) {
  xscr <- ttkscrollbar(parent, orient="horizontal",
                       command=function(...) tkxview(widget, ...))
  yscr <- ttkscrollbar(parent, orient="vertical",
                       command=function(...) tkxview(widget, ...))

  tkconfigure(widget,
              xscrollcommand=function(...) tkset(xscr,...),
              yscrollcommand=function(...) tkset(yscr,...))

  tkgrid(widget, row=0, column=0, sticky="news")
  tkgrid(yscr,row=0,column=1, sticky="ns")
  tkgrid(xscr, row=1, column=0, sticky="ew")
  tkgrid.columnconfigure(parent, 0, weight=1)
  tkgrid.rowconfigure(parent, 0, weight=1)
}


###################################################
### chunk number 66: ex-tktext-easiest
###################################################
w <- tktoplevel(); tkwm.title(w, "Simple tktext example")
t <- tktext(w); tkpack(t)


###################################################
### chunk number 67: tkinsert-example
###################################################
tkinsert(t, "end", "more text\n new line")         # or tcl(t, "insert", "end", "more text")


###################################################
### chunk number 68: get-values
###################################################
value <- tkget(t, "1.0", "end")
as.character(value)                     # wrong way
tclvalue(value)


###################################################
### chunk number 69: 
###################################################
tkinsert(t, "end", "last words", "lastWords")


###################################################
### chunk number 70: 
###################################################
tktag.add(t,"firstWord","1.0 wordstart", "1.0 wordend")
tktag.configure(t, "firstWord", foreground="red", font="helvetica 12 bold")


###################################################
### chunk number 71: 
###################################################
popupContext <- function(W, x, y) {
  ## or use paste("@", x, ",", y, sep="")
  cur <- tkget(W,"current  wordstart", "current wordend") 
  cur <- tclvalue(cur)
  popupContextMenuFor(cur, x, y)        # some function
}


###################################################
### chunk number 72: 
###################################################
tkmark.set(t,"limit","insert")
tkmark.gravity(t,"limit","left")
tkinsert(t,"insert","new text")
tkget(t, "limit", "insert")


###################################################
### chunk number 73: 
###################################################
tcl(t, "edit", "undo")                  # no output
tcl(t, "edit", "modified")              # 1 = TRUE


###################################################
### chunk number 74: 
###################################################
evalCmdChunk <- function(t, cmds) {
  cmdChunks <- try(parse(text=cmds), silent=TRUE)
  if(inherits(cmdChunks,"try-error")) {
    tkinsert(t, "end", "Error", "errorTag") # add tag for markup
    tktag.configure(t, "errorTag", foreground="red", font="courier 12 bold")
  }

  for(cmd in cmdChunks) {
    dcmd <- deparse(cmd, width.cutoff = 0.75 * getOption("width"))
    command <-  paste(getOption("prompt"),
                      paste(dcmd,collapse=paste("\n", getOption("continue"), sep="")),
                      sep="", collapse="")
    tkinsert(t, "end", command, "commandTag")
    tktag.configure(t, "commandTag", foreground="blue", font = "courier 12 italic")
    tkinsert(t, "end","\n")
    ## output
    output <- capture.output(eval(cmd, envir=.GlobalEnv))
    output <- paste(output, collapse="\n")
    tkinsert(t, "end", output, "outputTag")
    tktag.configure(t, "outputTag", font = "courier 12")
    tkinsert(t, "end","\n")
  }
}


###################################################
### chunk number 75: 
###################################################
## function to add scrollbars to a widget
addScrollbars <- function(parent, widget) {
  xscr <- ttkscrollbar(parent, orient="horizontal",
                       command=function(...) tkxview(widget, ...))
  yscr <- ttkscrollbar(parent, orient="vertical",
                       command=function(...) tkxview(widget, ...))

  tkconfigure(widget,
              xscrollcommand=function(...) tkset(xscr,...),
              yscrollcommand=function(...) tkset(yscr,...))

  tkgrid(widget, row=0, column=0, sticky="news")
  tkgrid(yscr,row=0,column=1, sticky="ns")
  tkgrid(xscr, row=1, column=0, sticky="ew")
  tkgrid.columnconfigure(parent, 0, weight=1)
  tkgrid.rowconfigure(parent, 0, weight=1)
}


###################################################
### chunk number 76: makeGUI
###################################################
w <- tktoplevel(); tkwm.title(w, "Text buffer example")
f <- ttkframe(w, padding=c(3,3,3,12)); tkpack(f, expand=TRUE, fill="both")

t <- tktext(f, width=80, height = 24)
addScrollbars(f, t)


###################################################
### chunk number 77: TryIt
###################################################
evalCmdChunk(t, "2 + 2; lm(mpg ~ wt, mtcars)")


###################################################
### chunk number 78: treeExample
###################################################
w <- tktoplevel()
tkwm.title(w, "Choose CRAN mirror")
f <- ttkframe(w, padding=c(3,3,3,12))
tkpack(f, expand=TRUE, fill="both")


###################################################
### chunk number 79: 
###################################################
tr <- ttktreeview(f, columns=1, show="headings", height=25)  
addScrollbars(f, tr)                    # call function to add scrollbars


###################################################
### chunk number 80: 
###################################################
tcl(tr, "heading", 1, text="Host", anchor="center")


###################################################
### chunk number 81: 
###################################################
tcl(tr, "column", 1, width=400,  stretch=TRUE, anchor="w")


###################################################
### chunk number 82: 
###################################################
x <- getCRANmirrors()
Host <- paste('"',x$Host,'"', sep="")   # add quotes!
shade <- c("gray","none")               # tag names
for(i in 1:length(x$Host))
  ID <- tcl(tr,"insert", "", "end", tag=shade[1 + i %%2], values=Host[i])
tktag.configure(tr, "gray", background="gray95") # shade tagged rows


###################################################
### chunk number 83: 
###################################################
children <- tcl(tr,"children","")
(x <- head(as.character(children)))     # as.character, not tclvalue
sapply(x, function(i) tclvalue(tkindex(tr, i)))


###################################################
### chunk number 84: getValue
###################################################
x <- tcl(tr, "item", x[1], "-values")
tclvalue(x)


###################################################
### chunk number 85: 
###################################################
callbackExample <- function(W, x, y) {
  col <- as.character(tcl(W, "identify", "column", x, y))
  row <- as.character(tcl(W, "identify", "row", x, y))
  ## do something ...
}


###################################################
### chunk number 86: 
###################################################
library(tcltk)

## helpers
quoteIt <- function(string) {           
  doQuote <- function(x) {
    xx <- strsplit(x, '"', fixe=TRUE)[[1]]
    paste(paste('"', xx, '"', sep=""), collapse='\'"\'')
  }
  if(!length(string)) return("")
  has_double_quote <- grep('"',string)
  if(!length(has_double_quote))
    return(paste('"',string,'"',sep=""))
  if (!length(grep("([$`])", string))) {
    paste("\"", gsub("([\"!\\])", "\\\\\\1", string), 
          "\"", sep = "")
  } else sapply(string, doQuote)
}


## covert a dta frame into a character based on
.toCharacter <- function(x,width,...) UseMethod(".toCharacter")
.toCharacter.default <- function(x,width,...) as.character(x)
.toCharacter.integer <- function(x,width,...) {
 if(missing(width)) width <- max(nchar(as.character(x))) + 2  
  format(x, justify="right", width=width)
}
.toCharacter.numeric <- function(x,width,...) {
  if(missing(width)) width <- max(nchar(as.character(x))) + 2
  format(x,trim=FALSE, width=width, justify="right")
}
.toCharacter.factor <- function(x,width,...) {
  if(missing(width)) width <- max(nchar(as.character(x))) + 2
  .toCharacter(as.character(x),width,...)
}
.toCharacter.logical <- function(x,width,...) {
  if(missing(width)) width <- 7
  format(as.character(x), justify="centre", width=width)
}
.toCharacter.data.frame <- function(x,width= 10, ...) {
  nms <- dimnames(x)
  df <- as.data.frame(lapply(x,function(i) .toCharacter(i, width=width)),
                      stringsAsFactors=FALSE)
  dimnames(df) <- nms
  return(df)
}

addScrollbars <- function(parent, widget) {
  xscr <- ttkscrollbar(parent, orient="horizontal",
                       command=function(...) tkxview(widget, ...))
  yscr <- ttkscrollbar(parent, orient="vertical",
                       command=function(...) tkxview(widget, ...))

  tkconfigure(widget,
              xscrollcommand=function(...) tkset(xscr,...),
              yscrollcommand=function(...) tkset(yscr,...))

  tkgrid(widget, row=0, column=0, sticky="news")
  tkgrid(yscr,row=0,column=1, sticky="ns")
  tkgrid(xscr, row=1, column=0, sticky="ew")
  tkgrid.columnconfigure(parent, 0, weight=1)
  tkgrid.rowconfigure(parent, 0, weight=1)
}


###################################################
### chunk number 87: 
###################################################
df <- getCRANmirrors()[, c(1,2,5,4)]; nms <- names(df)


###################################################
### chunk number 88: 
###################################################
w <- tktoplevel()
tkwm.title(w, "Choose a CRAN mirror")
f <- ttkframe(w, padding=c(3,3,3,12))
tkpack(f, expand=TRUE, fill="both")

f0 <- ttkframe(f); tkpack(f0, fill="x")
l <- ttklabel(f0, text="filter:"); tkpack(l, side="left")
filterVar <- tclVar("")
filterEntry <- ttkentry(f0, textvariable=filterVar)
tkpack(filterEntry, side="left")


###################################################
### chunk number 89: 
###################################################
f1 <- ttkframe(f); tkpack(f1, expand=TRUE, fill="both")
tr <- ttktreeview(f1, columns=1:ncol(df), 
                  displaycolumns = 1:(ncol(df) -1 ), # not url column
                  show = "headings",    # not "tree" which shows column "#0"
                  selectmode = "browse") # single selection
addScrollbars(f1, tr)


###################################################
### chunk number 90: 
###################################################
widths <- c(100, 75, 400, 0)            # hard code
for(i in 1:ncol(df)) {
  tcl(tr, "heading", i, text=nms[i])
  tcl(tr, "column", i, width=widths[i], stretch=TRUE, anchor="w")
}


###################################################
### chunk number 91: 
###################################################
fillTable <- function(tr, df) {
  children <- as.character(tcl(tr, "children", ""))
  for(i in children) tcl(tr, "delete", i)
  shade <- c("gray","none")
  for(i in seq_len(nrow(df))) 
    tcl(tr, "insert", "", "end", tag=shade[1 + i %% 2],text="",  values=unlist(df[i,]))
  tktag.configure(tr, "gray", background="gray95")
}


###################################################
### chunk number 92: 
###################################################
fillTable(tr, df)


###################################################
### chunk number 93: 
###################################################
curInd <- 1:nrow(df)
tkbind(filterEntry, "<KeyRelease>", function(W, K) {
  val <- tclvalue(tkget(W))
  possVals <- apply(df,1, function(...) paste(..., collapse=" "))
  ind<- grep(val, possVals)
  if(length(ind) == 0) ind <- 1:nrow(df)
  curInd <<- ind                        # store for later
  fillTable(tr, df[ind,])
})


###################################################
### chunk number 94: 
###################################################
tkbind(tr, "<Double-Button-1>", function(W, x, y) {
  sel <- as.character(tcl(W, "identify", "row", x, y))
  ind <- as.numeric(tcl(W, "index", sel))
  URL <- (df[curInd,])[ind + 1, "URL"]  # index is 0-based
  print(URL)
})


###################################################
### chunk number 95: 
###################################################
## not shown
## load in tcltk
library(tcltk)

## helper funtion to add scrollbars
addScrollbars <- function(parent, widget) {
  xscr <- ttkscrollbar(parent, orient="horizontal",
                       command=function(...) tkxview(widget, ...))
  yscr <- ttkscrollbar(parent, orient="vertical",
                       command=function(...) tkxview(widget, ...))

  tkconfigure(widget,
              xscrollcommand=function(...) tkset(xscr,...),
              yscrollcommand=function(...) tkset(yscr,...))

  tkgrid(widget, row=0, column=0, sticky="news")
  tkgrid(yscr,row=0,column=1, sticky="ns")
  tkgrid(xscr, row=1, column=0, sticky="ew")
  tkgrid.columnconfigure(parent, 0, weight=1)
  tkgrid.rowconfigure(parent, 0, weight=1)
}


###################################################
### chunk number 96: 
###################################################
library(XML)
fileName <- "http://www.omegahat.net/RSXML/shortIntro.html" # XML's doc
QT <- function(...) {}  # quit next call
doc <- htmlTreeParse(fileName, useInternalNodes=TRUE, error=QT)
root <- xmlRoot(doc)


###################################################
### chunk number 97: 
###################################################
w <- tktoplevel()
tkwm.title(w, "Treeview example with XML")
f <- ttkframe(w, padding=c(3,3,3,12))
tkpack(f, expand=TRUE, fill="both")
tr <- ttktreeview(f, displaycolumns="#all", columns=2)
addScrollbars(f, tr)                    # previously defined


###################################################
### chunk number 98: columnConfiguration
###################################################
tcl(tr, "heading", "#0", text="Name")
tcl(tr, "column", "#0", minwidth=20)
tcl(tr, "heading", 0, text="value")
tcl(tr, "column", 0, minwidth=20)


###################################################
### chunk number 99: 
###################################################
## http://www.omegahat.net/RSXML/shortIntro.html
## xmlChildren gives children
## xmlName gives name of node
## xmlValue gives values stored in node -- text

## issue with quoting values of tree. This taken from shQuote
quoteIt <- function(string) {           
  doQuote <- function(x) {
    xx <- strsplit(x, '"', fixe=TRUE)[[1]]
    paste(paste('"', xx, '"', sep=""), collapse='\'"\'')
  }
  if(!length(string)) return("")
  has_double_quote <- grep('"',string)
  if(!length(has_double_quote))
    return(paste('"',string,'"',sep=""))
  if (!length(grep("([$`])", string))) {
    paste("\"", gsub("([\"!\\])", "\\\\\\1", string), 
          "\"", sep = "")
  } else sapply(string, doQuote)
}


###################################################
### chunk number 100: 
###################################################
insertChild <- function(tr, node, parent="") {
  l <- list(tr, "insert",parent,"end",text=xmlName(node))
  children <- xmlChildren(node)
  if(length(children) == 0) {             # add in values
    values <- paste(xmlValue(node), sep=" ", collapse=" ")
    values <- gsub("\n"," ", values)    # tree view doesn't like \n
    values <- quoteIt(values)           # tree view doesn't like spaces
    l$values <- values
  }
  treePath <- do.call("tcl", l)

  if(length(children))                  # recurse
    for(i in children) insertChild(tr, i, treePath)
}
insertChild(tr, root)


###################################################
### chunk number 101: 
###################################################
.selectedID <- ""                       # globals
.dragging <- FALSE


###################################################
### chunk number 102: 
###################################################
tkbind(tr, "<Button-1>", function(W,x,y) {
  .selectedID <<- as.character(tcl(W, "identify","row", x, y))
})  


###################################################
### chunk number 103: 
###################################################
tkbind(tr, "<B1-Motion>", function(W, x, y, X, Y) {
  tkconfigure(W, cursor="diamond_cross")
  .dragging <<-TRUE
})


###################################################
### chunk number 104: 
###################################################
tkbind(tr, "<ButtonRelease-1>", function(W, x, y, X, Y) {
  if(.dragging && .selectedID != "") {
    w = tkwinfo("containing", X, Y)
    if(as.character(w) == as.character(W)) {
      dropID <- as.character(tcl(W, "identify","row", x, y))
      try(tkmove(W, .selectedID, dropID, "0"), silent=TRUE) # can't always work
    }
  }
  .dragging <<- FALSE; .selectedID <<- "" # reset
})


###################################################
### chunk number 105: walkTreeReturnAList
###################################################
treeToList <- function(tr) {
  l <- list()
  walkTree <- function(child, l) {
    l$name <- tclvalue(tcl(tr,"item",child,"-text"))
    l$value <- tclvalue(tcl(tr,"item",child,"-values"))
    children <- as.character(tcl(tr, "children", child)) # not tclvalue
    if(length(children)) {
      l$children <- list()
      for(i in children) {
        l$children[[i]] <- list()
        l$children[[i]] <- walkTree(i, l$children[[i]]) # recurse
      }
    }
    return(l)
  }
  l <- walkTree("",l)
  return(l)
}



###################################################
### chunk number 106: 
###################################################
tcl("option","add","*tearOff",0)       # disable tearoff menus


###################################################
### chunk number 107: testIfMac
###################################################
usingMac <- function()  
  as.character(tcl("tk", "windowingsystem")) == "aqua"


###################################################
### chunk number 108: 
###################################################
w <- tktoplevel()
tkwm.title(w, "Popup menu example")
f <- ttkframe(w, padding=c(3,3,3,12))
tkpack(f, expand=TRUE, fill="both")

b <- ttkbutton(f, text="Click me for popup")


###################################################
### chunk number 109: 
###################################################
doPopup <- function(X, Y) tkpopup(pmb, X, Y) # define call back
if (usingMac()) {
  tkbind(b, "<Button-2>", doPopup)      # right click
  tkbind(b, "<Control-1>", doPopup)     # Control + click
} else {
  tkbind(b, "<Button-3>", doPopup)
}


###################################################
### chunk number 110: 
###################################################
## Not shown
library(tcltk)

## Helper functions
usingMac <- function()  
  as.character(tcl("tk", "windowingsystem")) == "aqua"

addScrollbars <- function(parent, widget,type=c("both", "x", "y")) {
  if(any(type %in% c("both","x"))) {
    xscr <- ttkscrollbar(parent, orient="horizontal",
                         command=function(...) tkxview(widget, ...))
    tkconfigure(widget,
                xscrollcommand=function(...) tkset(xscr,...))
  }

  if(any(type %in% c("both","y"))) {
     yscr <- ttkscrollbar(parent, orient="vertical",
                          command=function(...) tkxview(widget, ...))
     tkconfigure(widget,
                 yscrollcommand=function(...) tkset(yscr,...))
   }

  ## place in grid     
  tkgrid(widget, row=0, column=0, sticky="news")
  if(any(type %in% c("both", "x"))) {
    tkgrid(xscr, row=1, column=0, sticky="ew")
    tkgrid.columnconfigure(parent, 0, weight=1)
  }
  if(any(type %in% c("both", "y"))) {
    tkgrid(yscr,row=0,column=1, sticky="ns")
    tkgrid.rowconfigure(parent, 0, weight=1)
  }
}


###################################################
### chunk number 111: 
###################################################
library(svMisc)                         # for some helpers
showCmd <- function(cmd) writeLine(captureAll(Parse(cmd)))


###################################################
### chunk number 112: 
###################################################
w <- tktoplevel()
tkwm.title(w, "Simple code editor")
f <- ttkframe(w,padding=c(3,3,3,12)); tkpack(f, expand=TRUE, fill="both")
tb <- tktext(f, undo=TRUE)
addScrollbars(f, tb)


###################################################
### chunk number 113: 
###################################################
mb <- tkmenu(w); tkconfigure(w, menu=mb)
fileMenu <- tkmenu(mb); tkadd(mb, "cascade", label="File", menu=fileMenu)
editMenu <- tkmenu(mb); tkadd(mb, "cascade", label="Edit", menu=editMenu)


###################################################
### chunk number 114: 
###################################################
tkadd(fileMenu, "command", label="Evaluate buffer",
      command = function() {
        curVal <- tclvalue(tkget(tb, "1.0", "end"))
        showCmd(curVal)
      })


###################################################
### chunk number 115: 
###################################################
tkadd(fileMenu, "command", label="Evaluate selection",
      state="disabled",
      command = function() {
        curSel <- tclvalue(tkget(tb, "sel.first", "sel.last"))
        showCmd(curSel)
      })


###################################################
### chunk number 116: addQuit
###################################################
tkadd(fileMenu, "separator")
tkadd(fileMenu, "command", label="Quit", command=function() tkdestroy(w))


###################################################
### chunk number 117: 
###################################################
img <- system.file("images/up.gif",package="gWidgets")
tkimage.create("photo", "::img::undo", 
               file = img)
tkadd(editMenu, "command", label="Undo",
      accelerator="Ctrl-U",
      image="::img::undo", compound="left",
      command = function() tcl(tb, "edit", "undo"))
tkadd(editMenu, "command", label="Redo",
      command = function() tcl(tb, "edit", "redo"))


###################################################
### chunk number 118: updateUI
###################################################
updateUI <- function() {
  states <- c("disabled","normal")
  ## selection
  hasSelection <- function(W) {
    ranges <- tclvalue(tcl(W, "tag", "ranges", "sel"))
    length(ranges) > 1 || ranges != ""
  }
  tkentryconfigure(fileMenu,1,  state=states[hasSelection(tb) + 1]) # by index
  ## undo -- if buffer modified, assume undo stack possible
  ## no good check for redo
  canUndo <- function(W) as.logical(tcl(W,"edit", "modified"))
  tkentryconfigure(editMenu,"Undo", state=states[canUndo(tb) + 1]) # by pattern
  tkentryconfigure(editMenu,"Redo", state=states[canUndo(tb) + 1])
}


###################################################
### chunk number 119: 
###################################################
afterID <- ""
repeatCall <- function(ms=1000, f, w) {
  afterID <<- tcl("after", ms, function() {
    if(as.logical(tkwinfo("exists", w))) {
      f()
      afterID <<- repeatCall(ms, f, w)
    } else {
      tcl("after", "cancel", afterID)
    }
  })
}
repeatCall(100, updateUI, w)


###################################################
### chunk number 120: addKeyboardShortcut
###################################################
if(usingMac()) {
  tkentryconfigure(editMenu,"Undo",accelerator="Cmd-z")
  tkbind(w,"<Option-z>", function() tcl(tb,"edit","undo"))
} else {
  tkentryconfigure(editMenu,"Undo",accelerator="Control-u")
  tkbind(w,"<Control-u>", function() tcl(tb,"edit","undo"))
}


###################################################
### chunk number 121: definePopup
###################################################
doPopup <- function(W, X, Y) {
  cur <- tclvalue(tkget(W,"current  wordstart", "current wordend"))
  tcl(W, "tag", "add", "popup", "current  wordstart", "current wordend")
  posVals <- head(CompletePlus(cur)[,1, drop=TRUE], n=20)
  if(length(posVals) > 1) {
    popup <- tkmenu(tb)
    sapply(posVals, function(i) {           # no loop?
      tkadd(popup, "command", label=i, command = function() {
        tcl(W,"replace", "popup.first", "popup.last", i)
      })
    })
    tkpopup(popup, X, Y)
 }}


###################################################
### chunk number 122: addPopup
###################################################
if (!usingMac()) {
  tkbind(tb, "<Button-3>", doPopup)
} else {
  tkbind(tb, "<Button-2>", function(W,X,Y) {
    tcl("clipboard","clear",displayof=W) # UNIX legacy re mouse-2 click for selection copy
    doPopup(W,X,Y)
    })      # right click
  tkbind(tb, "<Control-1>", doPopup)     # Control + click
}


###################################################
### chunk number 123: 
###################################################
## This is also an example of using a canvas to make a scrollable box container
## cf http://mail.python.org/pipermail/python-list/1999-June/005180.html

library(tcltk)
addScrollbars <- function(parent, widget) {
  xscr <- ttkscrollbar(parent, orient="horizontal",
                       command=function(...) tkxview(widget, ...))
  tkconfigure(widget, xscrollcommand = function(...) tkset(xscr,...))

  yscr <- ttkscrollbar(parent, command=function(...) tkyview(widget,...))
  tkconfigure(widget, yscrollcommand = function(...) tkset(yscr,...))
  
  ## Pack into a grid, from tkFAQ 10.1
  tkgrid(widget,row=0,column=0, sticky="news")
  tkgrid(xscr,row=1,column=0, sticky="ew")
  tkgrid(yscr,row=0,column=1, sticky="ns")
  tkgrid.columnconfigure(parent, 0, weight=1)
  tkgrid.rowconfigure(parent, 0, weight=1)
}


###################################################
### chunk number 124: 
###################################################
scrollableFrame <- function(parent, width= 300, height=300) {
  canvasWidget <- 
    tkcanvas(parent,
             borderwidth=0, highlightthickness=0,
             background="#e3e3e3", # match themed widgets
             width=width, height=height)
  addScrollbars(parent, canvasWidget)

  gp <- ttkframe(canvasWidget, padding=c(0,0,0,0))
  gpID <- tkcreate(canvasWidget, "window", 0, 0, anchor="nw", 
                   window=gp)
  
  tkbind(gp,"<Configure>",function() {  # changes scrollregion when items added
    bbox <- tcl(canvasWidget, "bbox", "all")
    tcl(canvasWidget,"config", scrollregion=bbox)
  })

  return(gp)
}


###################################################
### chunk number 125: 
###################################################
w <- tktoplevel()
tkwm.title(w,"Scrollable frame example")
#tkwm.resizable(tt,TRUE,TRUE)
g <- ttkframe(w); tkpack(g, expand=TRUE, fill="both")
gp <- scrollableFrame(g, 300, 300)
## fill with buttons
for(i in 0:119) 
  tkgrid(ttkbutton(gp, text=as.character(i)), row=i %% 20, column = floor(i/20))


###################################################
### chunk number 126: 
###################################################
## sparklines
library(tcltk)
library(tseries)
w <- tktoplevel()
tkwm.title(w, "Sparklines example")
f <- ttkframe(w, padding=c(3,3,3,12))
tkpack(f, expand=TRUE, fill="both")


###################################################
### chunk number 127: 
###################################################
mL <- function(label) {
  if(is.numeric(label))
    label <- format(label, digits=4)
  ttklabel(f, text=label) # save some typing
}


###################################################
### chunk number 128: makeHeaderRule
###################################################
tkgrid(mL(""), mL("2000-01-01"), mL("-- until --"), mL("today"), mL("low"), mL("high"))
tkgrid(ttkseparator(f), row=1, column=1, columnspan=5, sticky="we")


###################################################
### chunk number 129: 
###################################################
addSparkLine <- function(label, symbol="MSFT") {
  width <- 100; height=15               # fix width, height
  y <- get.hist.quote(instrument=symbol, start="2000-01-01",
                      quote="C", provider="yahoo", retclass="zoo")$Close
  min <- min(y); max <- max(y)
  start <- y[1]; end <- tail(y,n=1)
  rng <- range(y)

  sparkLineCanvas <- tkcanvas(f, width=width, height=height)
  x <- 0:(length(y)-1) * width/length(y)
  if(diff(rng) != 0) {
    y1 <- (y - rng[1])/diff(rng) * height
    y1 <- height - y1   # adjust to canvas coordinates
  } else {
    y1 <- height/2 + 0 * y
  }
  ## make line with: pathName create line x1 y1... xn yn 
  l <- list(sparkLineCanvas,"create","line")
  sapply(1:length(x), function(i) {
    l[[2*i + 2]] <<- x[i]
    l[[2*i + 3]] <<- y1[i]
  })
  do.call("tcl",l)

  tkgrid(mL(label),mL(start), sparkLineCanvas, 
         mL(end), mL(min), mL(max), pady=1)
}


###################################################
### chunk number 130:  eval=FALSE
###################################################
## addSparkLine("Microsoft","MSFT")
## addSparkLine("General Electric", "GE")
## addSparkLine("Starbucks","SBUX")


###################################################
### chunk number 131: 
###################################################
## Canvas example of moving a point. See tkcanvas for much more
library(tcltk)
w <- tktoplevel()
tkwm.title(w, "Move canvas object example")
canvas <- tkcanvas(w, width=450, height=300)
tkpack(canvas, expand=TRUE, fill="both")


###################################################
### chunk number 132: 
###################################################
x <- 200; y <- 150
item <- tkcreate(canvas, "oval", x - 6, y - 6, x + 6, y + 6,
                 width=1, outline="black",
                 fill="SkyBlue2")
tkaddtag(canvas, "point", "withtag", item)


###################################################
### chunk number 133: 
###################################################
## highlight to indicate mouseover any point object
tkitembind(canvas, "point", "<Any-Enter>", function()
           tkitemconfigure(canvas, "current", fill="red"))
tkitembind(canvas, "point", "<Any-Leave>", function()
           tkitemconfigure(canvas, "current", fill="SkyBlue2"))


###################################################
### chunk number 134: 
###################################################
lastPos <- numeric(2)                   # global to track position
tagSelected <- function(W, x, y) {
  tkaddtag(W,  "selected",  "withtag",  "current")
  tkitemraise(W, "current")
  lastPos <<- as.numeric(c(x, y))
}
tkitembind(canvas, "point", "<Button-1>",  tagSelected)


###################################################
### chunk number 135: moveSelectedPoint
###################################################
moveSelected <- function(W, x, y) {
  pos <- as.numeric(c(x,y))
  tkmove(W, "selected", pos[1] - lastPos[1], pos[2] - lastPos[2])
  lastPos <<- pos
}
tkbind(canvas, "<B1-Motion>", moveSelected)


###################################################
### chunk number 136: 
###################################################
tkbind(canvas, "<ButtonRelease-1>", function(W) tkdtag(W,"selected"))


