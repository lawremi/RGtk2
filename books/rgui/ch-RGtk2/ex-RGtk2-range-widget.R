###################################################
### chunk number 1: 
###################################################
#line 16 "ex-RGtk2-range-widget.Rnw"
## make a range widget combining both a slider and spinbutton to choose a number
library(RGtk2)


###################################################
### chunk number 2: 
###################################################
#line 23 "ex-RGtk2-range-widget.Rnw"
from <- 0; to <- 100; by <- 1


###################################################
### chunk number 3: 
###################################################
#line 31 "ex-RGtk2-range-widget.Rnw"
slider <- gtkHScale(min=from, max=to, step=by)
slider['draw-value'] <- FALSE
adjustment <- slider$getAdjustment()
spinbutton <- gtkSpinButton(adjustment = adjustment)


###################################################
### chunk number 4: 
###################################################
#line 41 "ex-RGtk2-range-widget.Rnw"
g <- gtkHBox()
g$packStart(slider, expand=TRUE, fill=TRUE, padding=5)
g$packStart(spinbutton, expand=FALSE, padding=5)


###################################################
### chunk number 5: 
###################################################
#line 48 "ex-RGtk2-range-widget.Rnw"
w <- gtkWindow(show=FALSE)
w['title'] <- "Example of a range widget"
w$setSizeRequest(width=200, height=-1)
w$add(g)
w$show()


