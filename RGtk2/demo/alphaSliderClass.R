require(RGtk2)
n <- 5000
backbone <- rnorm(n)
ma_data <- cbind(backbone, backbone+rnorm(n,,0.3))
require(cairoDevice)
win <- gtkWindow(show = F)
da <- gtkDrawingArea()
asCairoDevice(da)
par(pty = "s")

library(RGtk2)

#debug(gClass)
tform_scale_type <- gClass("RTransformedHScale", "GtkHScale", list(
  .props = list(
    gParamSpec("R", "expr", "e", "Transformation of scale value",
      default.value = expression(x))
  ),
  GtkScale = list(
    format_value = function(range, x)
      as.character(eval(range[["expr"]]))
  ),
  GtkRange = list(
    value_changed = function(range) {
      x <- range$getValue()
      plot(ma_data, col = rgb(0,0,0,eval(range[["expr"]])),
        xlab = "Replicate 1", ylab = "Replicate 2", 
        main = "Expression levels of WT at time 0",  pch = 19)
    }
  )
))

adj <- gtkAdjustment(0.5, 0.15, 1.00, 0.05, 0.5, 0)
s <- gObject(tform_scale_type, adjustment = adj, expr = expression(x^3))

#s <- gtkHScale(,0.15, 1.00, 0.05)

vbox <- gtkVBox()
vbox$packStart(da)
vbox$packStart(s, FALSE)
win$add(vbox)
win$setDefaultSize(400,400)
win$showAll() 
s$setValue(0.7)
