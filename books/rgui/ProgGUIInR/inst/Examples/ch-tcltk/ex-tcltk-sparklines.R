###################################################
### chunk number 1: 
###################################################
## sparklines
library(tcltk)
library(tseries)
w <- tktoplevel()
tkwm.title(w, "Sparklines example")
f <- ttkframe(w, padding=c(3,3,3,12))
tkpack(f, expand=TRUE, fill="both")


###################################################
### chunk number 2: 
###################################################
mL <- function(label) {
  if(is.numeric(label))
    label <- format(label, digits=4)
  ttklabel(f, text=label) # save some typing
}


###################################################
### chunk number 3: makeHeaderRule
###################################################
tkgrid(mL(""), mL("2000-01-01"), mL("-- until --"), mL("today"), mL("low"), mL("high"))
tkgrid(ttkseparator(f), row=1, column=1, columnspan=5, sticky="we")


###################################################
### chunk number 4: 
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
### chunk number 5:  eval=FALSE
###################################################
## addSparkLine("Microsoft","MSFT")
## addSparkLine("General Electric", "GE")
## addSparkLine("Starbucks","SBUX")


