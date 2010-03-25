library(RGtk2)

## make a range widget
from <- 0
to <- 100
by <- 1

slider <- gtkHScale(min=from, max=to, step=by)
slider['draw-value'] <- FALSE
adjustment <- slider$getAdjustment()
spinbutton <- gtkSpinButton(adjustment=adjustment)

g <- gtkHBox()
g$packStart(slider, expand=TRUE, fill=TRUE, padding=5)
g$packStart(spinbutton, expand=FALSE, padding=5)

w <- gtkWindow(show=FALSE)
w['title'] <- "Example of a range widget"
w$setSizeRequest(width=200, height=-1)
w$add(g)
w$show()
