## use a combobox as a notebook switcher
## This might be useful if one had several pages to add
## as the ttknotebook doesn't handle multiple tabs gracefully.

## illustrates using env environment of tkwin object
## uses grid for layout
## uses pack forget, propagate subcommand

library(tcltk)

tclQuote <- function(str) {
  return(str)
  paste('"', str, '"', sep="")
}
## returns child object to be managed. Has method
## addPage(cs, child, label) to add page
## getWidget(cs) to get tcl widget to use as container
comboSwitcher <- function(parent, width, height) {

  tclServiceMode(FALSE) # freeze

  ## main widgets
  f <- ttkframe(parent, padding = 10)

  ## Here we take advantage of tkwin's env component, using
  ## an environment to store some values we will need later.
  
  e <- f$env                            # use this environment
  e$switcher <- ttkcombobox(f, values="", state="readonly", justify="center")
  e$contentArea <- ttkframe(f, padding=c(0,3,0,0))

  ## set size
  if(!missing(width))
    tkconfigure(e$contentArea, width=as.integer(width))
  if(!missing(height))
    tkconfigure(e$contentArea, height=as.integer(height))
  ## propagate subcommand of pack stops window size from managing frame size
  if(!missing(width) || !missing(height))
    tkpack("propagate", e$contentArea, FALSE)

  
  ## state variables
  e$values <- c()
  e$pages <- list()
  e$curPage <- NULL


  ## grid layout for f
  tkgrid(ttkseparator(f, orient="horizontal"), row=0, column=0,sticky="we")
  tkgrid(e$switcher, row=0, column=1)
  tkgrid(ttkseparator(f, orient="horizontal"), row=0, column=2,sticky="we")
  tkgrid(e$contentArea, row=1, column=0, columnspan=3, sticky="news")

  tkgrid.rowconfigure(f, 1, weight=1)
  tkgrid.columnconfigure(f, 0, weight=1)
  tkgrid.columnconfigure(f, 2, weight=1)

  tclServiceMode(TRUE)                  # thaw

  e$switchPage <- function(index) {
    index <- as.integer(index)
    if(index <= 0 || index > length(e$pages))
      return()                            # can't switch to this
    ## remove old page
    if(!is.null(e$curPage))
      tkpack("forget", e$pages[[e$curPage]])
    ## add new page
    tkpack(e$pages[[index]], expand=TRUE, fill="both")
    ## set combo
    tcl(e$switcher,"current", index - 1)
    ## store current
    e$curPage <- index
  }

  ## switch pages when combobox selected
  tkbind(e$switcher, "<<ComboboxSelected>>", function() {
    index <- as.integer(tcl(e$switcher, "current")) + 1
    e$switchPage(index)
  })
  
  class(f) <- c("comboSwitcher", class(f))
  return(f)
}
  

## add pages to contentArea container
addPage <- function(cs, child, label="new page") {

  if(!is(cs,"comboSwitcher")) {
    warning("first argument must be object returned by comboSwitcher")
    return()
  }
  e <- cs$env
  
  n <- length(e$pages) + 1
  ## add new page
  e$pages[[n]] <- child
  
  ## add to values
  e$values <- c(e$values, tclQuote(label))
  tkconfigure(e$switcher, values=e$values)
  e$switchPage(n)
}
## awkward, need to return f so user can manage it
## But we also need to have a container to add to -- but not the same object
## this is contentArea above
getWidget <- function(cs) cs$e$contentArea


## Test it

w <- tktoplevel(); tkwm.title(w, "example")
sizeHandlerOffset <- c(0,0,9,9)
parent <- ttkframe(w, padding= 3 + sizeHandlerOffset)
tkpack(parent, expand=TRUE, fill="both")


f <- comboSwitcher(parent, width=400, height=400)
tkpack(f, expand=TRUE, fill="both")


## use getWidget here instead of f, as parent container is not f
b <- ttkbutton(getWidget(f), text="testing")
addPage(f, b, label="a label")

b <- ttkbutton(getWidget(f), text="test 2")
addPage(f, b, label="label three")


g <- ttkframe(getWidget(f))
addPage(f, g, label="frame")
for(i in 1:10)
  tkpack(ttklabel(g, text=i))
