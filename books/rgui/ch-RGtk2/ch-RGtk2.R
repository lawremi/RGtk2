###################################################
### chunk number 1: 
###################################################
options(prompt=" ")
options(continue=" ")
options(width=80)

findmethod <- function (obj, name, where=.GlobalEnv) 
{
    classes <- c(attr(obj, "interfaces"), class(obj))
    sym <- paste(tolower(substring(classes, 1, 1)), substring(classes, 
        2), toupper(substring(name, 1, 1)), substring(name, 2), 
        sep = "")
    which <- sapply(sym, exists, where)
    if (!any(which)) 
        stop(paste("No such method", name, "for classes", paste(class(obj), 
            collapse = ", ")))
    return(sym[which][1])
}

## override NULL in output
args <- function(name) {
  out <- capture.output(.Internal(args(name)))
  invisible(cat(out[-length(out)],"\n"))
}


###################################################
### chunk number 2: 
###################################################
require(RGtk2)


###################################################
### chunk number 3: intro-constructor-gtkWindow
###################################################
window <- gtkWindow("toplevel", show = FALSE)


###################################################
### chunk number 4: intro-constructor-classes
###################################################
class(window)


###################################################
### chunk number 5: intro-constructor-interfaces
###################################################
interface.GObject(window)


###################################################
### chunk number 6: intro-methods-button
###################################################
button <- gtkButton("Hello World")
window$add(button)
window$setDefaultSize(200, 200)


###################################################
### chunk number 7: gtkButtonAddApi
###################################################
gtkButtonSayHello <- function(obj, target) 
  obj$setLabel(paste("Hello", target))
button$sayHello("John")
button$getLabel()


###################################################
### chunk number 8: showProperties
###################################################
head(names(button), n=8)                     # or b$getPropInfo()


###################################################
### chunk number 9: intro-props-get-set
###################################################
image <- gdkPixbuf(filename = imagefile("rgtk-logo.gif"))[[1]]
window$set(icon = image, title = "Hello World 1.0")


###################################################
### chunk number 10: 
###################################################
window$setTitle("Hello World 1.0")
window$getTitle()


###################################################
### chunk number 11: intro-props-visible
###################################################
window["visible"]


###################################################
### chunk number 12: intro-props-show
###################################################
window["visible"] <- TRUE 
window$show() # same effect


###################################################
### chunk number 13:  eval=FALSE
###################################################
## names(gTypeGetSignals("GtkButton"))


###################################################
### chunk number 14: 
###################################################
args(gSignalConnect)


###################################################
### chunk number 15: intro-signals-hello-world
###################################################
gSignalConnect(button, "clicked", 
               function(widget) print("Hello world!"))


###################################################
### chunk number 16: 
###################################################
w <- gtkWindow(); w['title'] <- "test signals"
x <- 1; 
b <- gtkButton("click me"); w$add(b)
ID <- gSignalConnect(b, signal = "clicked", f = function(widget) {
  widget$setData("x", 2)
  x <- 2
  return(TRUE)
})


###################################################
### chunk number 17: 
###################################################
b$setData("x", 2)                        # fix non-interactivity


###################################################
### chunk number 18: 
###################################################
cat(x, b$getData("x"), "\n") # 1 and 2


###################################################
### chunk number 19: 
###################################################
b <- gtkButton("click")
w <- gtkWindow()
w$add(b)
id1 <- gSignalConnect(b, "button-press-event", 
function(b, event, data) {
  print("hi"); return(FALSE)
})
id2 <- gSignalConnect(b, "button-press-event", 
function(b, event, data) {
  print("and"); return(TRUE)
})
id3 <- gSignalConnect(b, "button-press-event", 
function(b, event, data) {
  print("bye"); return(TRUE)
})


###################################################
### chunk number 20: intro-enum-window eval=FALSE
###################################################
## window <- gtkWindow("toplevel", show = FALSE)


###################################################
### chunk number 21: intro-enum-GtkWindowType
###################################################
GtkWindowType


###################################################
### chunk number 22: intro-enum-GtkWidgetFlags
###################################################
GtkWidgetFlags


###################################################
### chunk number 23: intro-enum-gtkWidgetFlags
###################################################
window$flags()


###################################################
### chunk number 24: intro-enum-toplevel
###################################################
(window$flags() & GtkWidgetFlags["toplevel"]) > 0


###################################################
### chunk number 25: 
###################################################
while(gtkEventsPending()) 
  gtkMainIteration()


###################################################
### chunk number 26: 
###################################################
library(RGtk2)


###################################################
### chunk number 27: 
###################################################
w <- gtkWindow(show=FALSE)              # use default type
w$setTitle("Window title")              # set window title
w['title']                              # or w$getTitle()
w$setDefaultSize(250,300)               # 250 wide, 300 high
w$show()                                # show window


###################################################
### chunk number 28: basic-window-label
###################################################
w <- gtkWindow(show=FALSE); w$setTitle("Hello world")
l <- gtkLabel("Hello world")
w$add(l)


###################################################
### chunk number 29: 
###################################################
## create a window and a dialog window
w <- gtkWindow(show=FALSE); w$setTitle("Top level window")
d <- gtkWindow(show=FALSE); d$setTitle("dialog window")
d$setTransientFor(w)
d$setPosition(GtkWindowPosition["center-on-parent"])
d$setDestroyWithParent(TRUE)
w$show()
d$show()


###################################################
### chunk number 30: 
###################################################
w$getChild()['label']                   # return label property of child


###################################################
### chunk number 31:  eval=FALSE
###################################################
## ## leave out?
## l$getParent()


###################################################
### chunk number 32: 
###################################################
g <- gtkHBox()
for(i in 1:3) g$packStart(gtkButton(i))


###################################################
### chunk number 33: remove-child-widget-3
###################################################
b <- g[[3]]
g$remove(b)                             # removed
g$packStart(b, expand=TRUE, fill=TRUE)


###################################################
### chunk number 34: layout-window-show-first
###################################################
w <- gtkWindow(show=FALSE); w$setTitle("Hello world")
l <- gtkLabel("Hello world")
w$add(l)


###################################################
### chunk number 35: layout-window-show-first-alloc
###################################################
l$getAllocation()


###################################################
### chunk number 36: layout-window-show-later
###################################################
w <- gtkWindow(show=FALSE); w$setTitle("Hello world")
l <- gtkLabel("Hello world")
w$add(l)
w$show()
l$getAllocation()


###################################################
### chunk number 37: basic-box-homo
###################################################
box <- gtkHBox(TRUE, 5)


###################################################
### chunk number 38: basic-box-homo-nofill
###################################################
button_a <- gtkButton("Button A")
button_b <- gtkButton("Button B")
box$packStart(button_a, fill = FALSE)
box$packStart(button_b, fill = FALSE)


###################################################
### chunk number 39: basic-box-hetero
###################################################
box <- gtkHBox(FALSE, 5)


###################################################
### chunk number 40: basic-box-expand
###################################################
box$packStart(button_a, expand = TRUE, fill = FALSE)
box$packStart(button_b, expand = FALSE, fill = FALSE)


###################################################
### chunk number 41: 
###################################################
b3 <- g[[3]]
g$reorderChild(b3, 2 - 1)               # second is 2 - 1


###################################################
### chunk number 42: basic-layout-align-window
###################################################
w <- gtkWindow(show=FALSE); w$setTitle("Hello world")
l <- gtkLabel("Hello world")
w$add(l)


###################################################
### chunk number 43: basic-layout-align-left
###################################################
l["xalign"] <- 0


###################################################
### chunk number 44: basic-layout-align-GtkAlignment
###################################################
w <- gtkWindow(); w$setTitle("Hello world")
a <- gtkAlignment()
a$set(xalign = 0, yalign = 0.5, xscale = 0, yscale = 1)
w$add(a)
l <- gtkLabel("Hello world")
a$add(l)


###################################################
### chunk number 45: ButtonConstructors
###################################################
w <- gtkWindow(show=FALSE)
w$setTitle("Various buttons")
w$setDefaultSize(400, 25)
g <- gtkHBox(homogeneous=FALSE, spacing=5)
w$add(g)
b <- gtkButtonNew() 
b$setLabel("long way")
g$packStart(b)
g$packStart(gtkButton(label="label only") )
g$packStart(gtkButton(stock.id="gtk-ok") )
g$packStart(gtkButtonNewWithMnemonic("_Mnemonic") ) # Alt-m to "click"
w$show()


###################################################
### chunk number 46: CallbackExampleForButton
###################################################
w <- gtkWindow(); b <- gtkButton("click me");
w$add(b)

ID <- gSignalConnect(b,"button-press-event",   # just mouse click
                     f = function(w,e,data) {
                       print(e$getButton())    # which button
                       return(FALSE)           # propogate
                     })
ID <- gSignalConnect(b,"clicked",              # click or keyboard
                     f = function(w,...) {
                       print("clicked")
                     })


###################################################
### chunk number 47: MacOSXstyleButton
###################################################
## not shown
w <- gtkWindow(show=FALSE)
w$setTitle("MAC OS X style buttons")
g <- gtkHButtonBox()
fg <- gtkHBox()
fg$setSizeRequest(width=800, height=-1)
w$add(fg)

g <- gtkHBox()
fg$packStart(g, padding=15)              # for size grip


###################################################
### chunk number 48: StockButtons
###################################################
cancel <- gtkButton(stock.id="gtk-cancel")
ok <- gtkButton(stock.id="gtk-ok")
delete <- gtkButton(stock.id="gtk-delete")


###################################################
### chunk number 49: macButtonPack
###################################################
g$packEnd(ok, padding=0)
g$packEnd(cancel, padding=12)
g$packEnd(delete, padding=12)
g$packEnd(gtkLabel(""), expand=TRUE, fill=TRUE)


###################################################
### chunk number 50: 
###################################################
ok$grabFocus()
QT <- gSignalConnect(ok, "clicked", function(...) print("ok"))


###################################################
### chunk number 51: 
###################################################
## not shown
w$showAll()


###################################################
### chunk number 52: gtkHButtonBoxExample
###################################################
## not shown
## Had we only wanted to use a button box
w <- gtkWindow()
bb <- gtkHButtonBox()
w$add(bb)

bb$add(gtkButton(stock.id="gtk-delete"))
bb$add(gtkButton(stock.id="gtk-cancel"))
bb$add(gtkButton(stock.id="gtk-ok"))


###################################################
### chunk number 53: LabelFormatting
###################################################
w <- gtkWindow(); w$setTitle("Label formatting")
w$setSizeRequest(250,100)               # narrow
g <- gtkVBox(spacing=2); g$setBorderWidth(5); w$add(g)
string <- "the quick brown fox jumped over the lazy dog"
## wrap by setting number of characters
basicLabel <- gtkLabel(string)
basicLabel$setLineWrap(TRUE)
basicLabel$setWidthChars(35)            # specify number of characters

## Set ellipsis to shorten long text
ellipsized <- gtkLabel(string)
ellipsized$setEllipsize(PangoEllipsizeMode["middle"])

## Right justify text lines
## use xalign property for aligning entire block
rightJustified <- gtkLabel("right justify"); 
rightJustified$setJustify(GtkJustification["right"])
rightJustified['xalign'] <- 1

## PANGO markup
pangoLabel <- gtkLabel()
pangoLabel$setMarkup(paste("<span foreground='blue' size='x-small'>",
                           string, "</span>"))
sapply(list(basicLabel, ellipsized, rightJustified, pangoLabel), 
       g$packStart, expand = TRUE, fill = TRUE)
w$showAll()


###################################################
### chunk number 54: 
###################################################
library(RGtk2)


###################################################
### chunk number 55: 
###################################################
w <- gtkWindow(show=FALSE); w$setTitle("Graphic window");
w$setSizeRequest(400,400)
g <- gtkHBox(); w$add(g)
w$showAll()


###################################################
### chunk number 56: 
###################################################
theSize <- g$getAllocation()
width <- theSize$width; height <- theSize$height


###################################################
### chunk number 57: 
###################################################
require(cairoDevice)
pixmap <- gdkPixmap(drawable = NULL, width = width, height = height,
                    depth = 24)
asCairoDevice(pixmap)
hist(rnorm(100))


###################################################
### chunk number 58:  eval=FALSE
###################################################
## image <- gtkImage(pixmap = pixmap)
## g$packStart(image, expand=TRUE, fill = TRUE)


###################################################
### chunk number 59: notShown
###################################################
## Work this into an example ###
makeIconRGtk2 <- function(w, giffile) {
  if(checkPtrType(w, "GtkWindow")) {
    img <- gdkPixbufNewFromFile(giffile)
    if(!is.null(img$retval))
      w$setIcon(img$retval)
  }
}


###################################################
### chunk number 60: gtkStockListIds
###################################################
head(unlist(gtkStockListIds()), n=4)   


###################################################
### chunk number 61: 
###################################################
library(RGtk2)


###################################################
### chunk number 62: 
###################################################
## This example shows how to add new icons to the stock icons
## It uses as an icon source the elements of ggplot2, which have an icon 
## built into them.


## From the API
## An icon factory manages a collection of GtkIconSet; 
## a GtkIconSet manages a set of variants of a particular icon 
## (i.e. a GtkIconSet contains variants for different sizes and 
## widget states). Icons in an icon factory are named by a stock ID, 
## which is a simple string identifying the icon. Each GtkStyle has a 
## list of GtkIconFactory derived from the current theme; those icon 
## factories are consulted first when searching for an icon. If the 
## theme doesn't set a particular icon, GTK+ looks for the icon in a 
## list of default icon factories, maintained by 
## gtk_icon_factory_add_default() and gtk_icon_factory_remove_default(). 
## Applications with icons should add a default icon factory with
## their icons, which will allow themes to override the icons for the 
## application. 


###################################################
### chunk number 63:  eval=FALSE
###################################################
## require(ggplot2)
## iconNames <- c("GeomBar","GeomHistogram")   # 2 of many ggplot functions
## icon.size <- 16
## pixbufs <- sapply(iconNames, function(name) {
##   pixmap <- gdkPixmap(drawable = NULL, width = icon.size, height = icon.size,
##                       depth = 24)
##   asCairoDevice(pixmap)
##   val <- try(get(name))
##   grid.newpage()
##   try(grid.draw(val$icon()), silent=TRUE)
##   dev.off()
##   gdkPixbufGetFromDrawable(NULL, pixmap, NULL, 0, 0, 0, 0, -1 -1)
## })


###################################################
### chunk number 64: addToStockIcons eval=FALSE
###################################################
## addToStockIcons <- function(pixbufs, stock.prefix="new") {
##   iconfactory <- gtkIconFactory()
##   
##   items <- lapply(names(pixbufs), function(iconName) {
##     ## each icon has its own icon set, which is registered with icon factory
##     iconset <- gtkIconSetNewFromPixbuf(pixbufs[[iconName]])
##     stockName <- paste(stock.prefix, "-", iconName, sep="")
##     iconfactory$add(stockName, iconset)
##     
##     ## create stock item for icon
##     as.GtkStockItem(list(stock_id = stockName, label = iconName))
##   })
##   ## register our factory of icons
##   iconfactory$addDefault()
##   ## officially register the stock items
##   gtkStockAdd(items)
## }


###################################################
### chunk number 65:  eval=FALSE
###################################################
## addToStockIcons(pixbufs)
## nms <- gtkStockListIds()
## unlist(nms[grep("^new", nms)])


###################################################
### chunk number 66: 
###################################################
require(RGtk2)


###################################################
### chunk number 67: 
###################################################
newAlertPanel <- function(wrap=35,
                          icon="gtk-dialog-warning",
                          message="",
                          panel.color="goldenrod",
                          evb=NULL,
                          image=NULL,
                          label=NULL # info
                    ) {
  x <- c("wrap","icon","message","panel.color","evb","image","label")
  e <- new.env()
  sapply(x, function(i) assign(i, envir=e, get(i)))
  return(e)
}


###################################################
### chunk number 68: 
###################################################
getAlertPanelBlock <- function(obj) {

  obj$evb <- gtkEventBox(show=FALSE)
  obj$evb$ModifyBg(state="normal",color=obj$panel.color)

  g <- gtkHBox(homogeneous=FALSE, spacing=5)
  obj$evb$add(g)

  obj$image <- gtkImageNewFromStock(obj$icon, size="button")
  obj$image['yalign'] <- .5
  g$packStart(obj$image, expand=FALSE)

  obj$label <- gtkLabel(obj$message)
  obj$label['xalign'] <- 0; obj$label['yalign'] <- .5
  obj$label$setLineWrap(TRUE)
  obj$label$setWidthChars(obj$wrap)
  g$packStart(obj$label, expand=TRUE, fill=TRUE)

  xbutton <- gtkEventBox()
  xbutton$modifyBg(state="normal", color=obj$panel.color) 
  xbutton$add(gtkImageNewFromStock("gtk-close", size="menu"))
  g$packEnd(xbutton, expand=FALSE, fill=FALSE)
  xbuttonCallback <- function(data, widget,...) {
    hideAlertPanel(data)
    return(FALSE)
  }

  ## close on button press and event box click
  sapply(list(xbutton, obj$evb), function(i) {
    gSignalConnect(i, "button-press-event",
                   f=xbuttonCallback,
                   data=obj, user.data.first=TRUE)
    })
  return(obj$evb)
}


###################################################
### chunk number 69: 
###################################################
showAlertPanel <- function(obj) {
  obj$label$setText(obj$message)
  obj$evb$show()
}


###################################################
### chunk number 70: 
###################################################
hideAlertPanel <- function(obj) obj$evb$hide()


###################################################
### chunk number 71: 
###################################################
w <- gtkWindow()
g <- gtkVBox(); w$add(g)

ap <- newAlertPanel()
g$packStart(getAlertPanelBlock(ap), expand=FALSE)
g$packStart(gtkLabel("fill space"), expand=TRUE, fill=TRUE)
ap$message <- "New Message"             # add message
showAlertPanel(ap)


###################################################
### chunk number 72: InsertDeleteText
###################################################
e <- gtkEntry()
e$setText("Where did that guy go?")
add.pos <- regexpr("guy", e['text']) - 1 # before "guy"
ret <- e$insertText("@$#%! ", position = add.pos)
e$getText()                             # or e['text']
e$deleteText(start = add.pos, end= ret$position)
e$getText()


###################################################
### chunk number 73: RadioGroupExample
###################################################
vals <- c("two.sided", "less", "greater")
radiogp <- list()                                 # list for group
radiogp[[vals[1]]] <- gtkRadioButton(label=vals[1]) # group = NULL
for(i in vals[-1]) 
  radiogp[[i]] <- gtkRadioButton(radiogp, label=i)  # group is a list


###################################################
### chunk number 74: 
###################################################
w <- gtkWindow(); w$setTitle("Radio group example")
g <- gtkVBox(FALSE, 5); w$add(g)
sapply(radiogp, gtkBoxPackStart, object = g)


###################################################
### chunk number 75: 
###################################################
g[[3]]$setActive(TRUE)           
sapply(radiogp, `[`, "active") 


###################################################
### chunk number 76: 
###################################################
sapply(radiogp, gSignalConnect, "toggled",     # attach each to "toggled"
       f = function(w, data) {
         if(w$getActive()) # set before callback
           cat("clicked", w$getLabel(),"\n")
       })


###################################################
### chunk number 77: 
###################################################
radiogp <- gtkRadioButton(label=vals[1])
sapply(vals[-1], gtkRadioButtonNewWithLabelFromWidget, group = radiogp)
w <- gtkWindow(); 
w['title'] <- "Radio group example"
g <- gtkVBox(); w$add(g)
sapply(rev(radiogp$getGroup()), gtkBoxPackStart, object = g)


###################################################
### chunk number 78: 
###################################################
vals <- c("two.sided", "less", "greater")
cb <- gtkComboBoxNewText()
sapply(vals, gtkComboBoxAppendText, object = cb)
cb$setActive(0)                         # first one
gSignalConnect(cb, "changed",
               f = function(w, ...) {
                 i <- w$getActive() + 1 # shift index
                 if(i == 0) 
                   cat("No value selected\n")
                 else
                   cat("Value is", w$getActiveText(), "\n")
               })
w <- gtkWindow(show=FALSE)
w['title'] <- "Combobox example"
w$add(cb)
w$show()


###################################################
### chunk number 79: SliderAndHistogram
###################################################
library(lattice)
w <- gtkWindow(); w$setTitle("Histogram bin selection")

slider <- gtkHScale(min = 1, max = 100, step = 1)
slider$setValue(10)                        # initial val.
slider['value-pos'] <- "bottom"
w$add(slider)

drawHistogram <- function(val) print(histogram(x, nint = val))
gSignalConnect(slider, "value-changed",
               f = function(w, ...) {
                 val <- w$getValue()
                 drawHistogram(val)
               })
x <- rnorm(100)                         # the data
drawHistogram(slider$getValue())                    # initial graphic


###################################################
### chunk number 80: 
###################################################
## make a range widget combining both a slider and spinbutton to choose a number
library(RGtk2)


###################################################
### chunk number 81: 
###################################################
from <- 0; to <- 100; by <- 1


###################################################
### chunk number 82: 
###################################################
slider <- gtkHScale(min=from, max=to, step=by)
slider['draw-value'] <- FALSE
adjustment <- slider$getAdjustment()
spinbutton <- gtkSpinButton(adjustment = adjustment)


###################################################
### chunk number 83: 
###################################################
g <- gtkHBox()
g$packStart(slider, expand=TRUE, fill=TRUE, padding=5)
g$packStart(spinbutton, expand=FALSE, padding=5)


###################################################
### chunk number 84: 
###################################################
w <- gtkWindow(show=FALSE)
w['title'] <- "Example of a range widget"
w$setSizeRequest(width=200, height=-1)
w$add(g)
w$show()


###################################################
### chunk number 85: 
###################################################
gtkNotebookInsertPageWithCloseButton <- 
  function(object, child, label.text="", position=-1) {
    label <- gtkHBox()
    label$packStart(gtkLabel(label.text))
    icon <- gtkImage(pixbuf = object$renderIcon("gtk-close", "button"))
    closeButton <- gtkButton()
    closeButton$setImage(icon)
    label$packEnd(closeButton)
    ID <- gSignalConnect(b,"clicked",
                         function(userData, b, ...) {
                           nb <- userData$nb 
                           page <- userData$page
                           nb$removePage(nb$pageNum(page))
                         },
                         data = list(nb=object, page=child),
                         user.data.first=TRUE)
    object$insertPage(child, label, position)
  }


###################################################
### chunk number 86: 
###################################################
w <- gtkWindow()
nb <- gtkNotebook(); w$add(nb)
nb$setScrollable(TRUE)
nb$insertPageWithCloseButton(gtkButton("hello"), 
                             label.text="page 1")
nb$insertPageWithCloseButton(gtkButton("world"), 
                             label.text="page 2")


###################################################
### chunk number 87: ScrolledWindowExample
###################################################
library(RGtk2)


###################################################
### chunk number 88: 
###################################################
g <- gtkVBox(spacing=0)
sapply(state.name, function(i) {
  l <- gtkLabel(i)
  l['xalign'] <- 0; l['xpad'] <- 10
  g$packStart(l, expand=TRUE, fill=TRUE)
})


###################################################
### chunk number 89: 
###################################################
sw <- gtkScrolledWindow()
sw$setPolicy("never","automatic")
sw$addWithViewport(g)                   # just "Add" for text, tree, ...


###################################################
### chunk number 90: 
###################################################
w <- gtkWindow(show=FALSE)
w$setTitle("Scrolled window example")
w$setSizeRequest(-1, 300)
w$add(sw)
w$show()


###################################################
### chunk number 91: 
###################################################
## layout a basic dialog -- center align
library(RGtk2)


###################################################
### chunk number 92: 
###################################################
w <- gtkWindow(show=FALSE)
w$setTitle("example of gtkTable and attaching")
tbl <- gtkTable(rows=4, columns=2, homogeneous=FALSE)
w$add(tbl)


###################################################
### chunk number 93: 
###################################################
l1 <- gtkLabel("Sample size")
w1 <- gtkComboBoxNewText()
QT <- sapply(c(5, 10, 15, 30), function(i) w1$appendText(i))

l2 <- gtkLabel("Show diagnostic ")
w2 <- gtkVBox()
rb <- list()
rb[["t"]] <- gtkRadioButton(label="t-statistic")
for(i in c("mean","median")) rb[[i]] <- gtkRadioButton(rb, label=i)
QT <- sapply(rb, function(i) w2$packStart(i))

w3 <- gtkButton("Run simulation")


###################################################
### chunk number 94: 
###################################################
tbl$attach(l1, left.attach=0,1, top.attach=0,1, yoptions="fill")
l1["xalign"] <- 1; l1["xpad"] <- 5
tbl$attach(w1, left.attach=1,2, top.attach=0,1, xoptions="fill", yoptions="fill")


###################################################
### chunk number 95: 
###################################################
tbl$attach(l2, left.attach=0,1, top.attach=1,2, yoptions="fill")
l2["xalign"] <- 1; l2['yalign'] <- 0; l2["xpad"] <- 4
tbl$attach(w2, left.attach=1,2, top.attach=1,2, xoptions=c("expand", "fill"))


###################################################
### chunk number 96: 
###################################################
tbl$attach(gtkHSeparator(),left.attach=0,2, top.attach=2,3, ypadding=10, yoptions="fill")
tbl$attach(w3, left.attach=1,2, top.attach=3,4, xoptions="fill", yoptions="fill")


###################################################
### chunk number 97: 
###################################################
w$showAll()                             # propogate to combo


###################################################
### chunk number 98: 
###################################################
TARGET.TYPE.TEXT   <- 80                 
TARGET.TYPE.PIXMAP <- 81                  


###################################################
### chunk number 99: 
###################################################
widgetTargetTypes <- list(
## target -- string representing the drag type. MIME type used.
## flag delimiting drag scope. 0 -- no limit
## info -- application assigned value to identify
text = gtkTargetEntry("text/plain", 0, TARGET.TYPE.TEXT),
pixmap = gtkTargetEntry("image/x-pixmap", 0, TARGET.TYPE.PIXMAP)
)


###################################################
### chunk number 100: 
###################################################
w <- gtkWindow(); w['title'] <- "Drag Source"
dragSourceWidget <-  gtkButton("Drag me")
w$add(dragSourceWidget)

gtkDragSourceSet(dragSourceWidget,
                 start.button.mask=c("button1-mask", "button3-mask"),
                 targets=widgetTargetTypes[["text"]],
                 actions="copy") ## can also be any of GdkDragAction

ID <- 
  gSignalConnect(dragSourceWidget, "drag-data-get", 
                 f=function(widget, context, 
                   selection, targetType, eventTime) {
                   ## customize this to set the text
                   selection$setText(str="some value") 
                 })


###################################################
### chunk number 101: 
###################################################
w <- gtkWindow(); w['title'] <- "Drop Target"
dropTargetWidget <- gtkButton("Drop here")
w$add(dropTargetWidget)

gtkDragDestSet(dropTargetWidget,
               flags="all", 
               targets=widgetTargetTypes[["text"]],
               actions="copy"
               )


###################################################
### chunk number 102: 
###################################################
ID <- 
  gSignalConnect(dropTargetWidget, "drag-data-received", 
                 f=function(dropTargetWidget, 
                   context, x, y, 
                   selection, targetType, eventTime) {
                   dropdata <- selection$getText()
                   if(class(dropdata)[1] == "raw")
                     val <- paste(rawToChar(dropdata), sep="")
                   else
                     val <- paste(dropdata, sep="")
                   print(val) ## some action
                 })


###################################################
### chunk number 103: 
###################################################
library(RGtk2)


###################################################
### chunk number 104: 
###################################################
data(Cars93, package="MASS")            # mix of classes
model <- rGtkDataFrame(Cars93)
model[1, 4] <- 12
model[1, 4]                              # get value


###################################################
### chunk number 105: 
###################################################
model$setFrame(Cars93[1:5, 1:5])


###################################################
### chunk number 106: rgtk2-mvc-treeview-construct
###################################################
view <- gtkTreeView(model)


###################################################
### chunk number 107: rgtk2-mvc-insert-column-hardway
###################################################
vc <- gtkTreeViewColumn()
vc$setTitle("Manufacturer")
cr <- gtkCellRendererText()
vc$packStart(cr)
vc$addAttribute(cr, "text", 0)
view$insertColumn(vc, 0)


###################################################
### chunk number 108: rgtk2-mvc-insert-column-easyway
###################################################
view$insertColumnWithAttributes(position = -1, title = "Model", 
                                cell = gtkCellRendererText(), text = 1)


###################################################
### chunk number 109: rgtk2-mvc-insert-all-columns
###################################################
view <- gtkTreeView(model)
mapply(view$insertColumnWithAttributes,  -1, colnames(model), 
       list(gtkCellRendererText()), text = seq_len(ncol(model)) - 1)


###################################################
### chunk number 110: rgtk2-mvc-path-constructor-list
###################################################
secondRow <- gtkTreePathNewFromIndices(2)


###################################################
### chunk number 111: rgtk2-mvc-path-constructor-tree
###################################################
abcPath <- gtkTreePathNewFromIndices(c(1, 3, 2))
abcPath <- gtkTreePathNewFromString("1:3:2")


###################################################
### chunk number 112: rgtk2-mvc-iter-traverse eval=FALSE
###################################################
## ### JV HAD issues with thi
## iter <- model$getIterFirst()
## manufacturer <- character()
## while(iter$retval) {
##   manufacturer <- c(manufacturer, model$get(iter$iter, 0)[[1]])
##   model$iterNext(iter$iter)
## }


###################################################
### chunk number 113: rgtk2-mvc-iter-apply
###################################################
nrows <- model$iterNChildren(NULL)
manufacturer <- sapply(seq(nrows), function(i) {
  iter <- model$iterNthChild(NULL, i)
  model$get(iter$iter, 0)[[1]]
})


###################################################
### chunk number 114: 
###################################################
model <- rGtkDataFrame(mtcars)
view <- gtkTreeView(model)
selection <- view$getSelection()
selection$setMode("single")


###################################################
### chunk number 115: 
###################################################
vc <- gtkTreeViewColumn()

## JV: had issues with second line
## view$insertColumnWithAttributes(vc, 0, "title", gtkCellRendererText(), text = 0)
view$insertColumnWithAttributes(0, "title", gtkCellRendererText(), text = 0)
## pack in GUI
sw <- gtkScrolledWindow()
sw$add(view)
##
w <- gtkWindow(show=FALSE)
w['title'] <- "Multiple selection example"
w$add(sw)
w$show()


###################################################
### chunk number 116: 
###################################################
selection$selectPath(gtkTreePathNewFromIndices(3)) # set 
# 
curSel <- selection$getSelected()       # retrieve selection
with(curSel, model$getValue(iter, 0)$value) # model, iter


###################################################
### chunk number 117: 
###################################################
selection$setMode("multiple")


###################################################
### chunk number 118: notShown
###################################################
selection$selectPath(gtkTreePathNewFromIndices(1)) # set for example
selection$selectPath(gtkTreePathNewFromIndices(2)) # set for example
selection$selectPath(gtkTreePathNewFromIndices(3)) # set for example


###################################################
### chunk number 119: 
###################################################
curSel <- selection$getSelectedRows()
if(length(curSel$retval)) {
  rows <- sapply(curSel$retval, gtkTreePathGetIndices) + 1L
  curSel$model[rows, 1]
}


###################################################
### chunk number 120:  eval=FALSE
###################################################
## sapply(view$getColumns(), function(i) i == column)


###################################################
### chunk number 121: rgtk2-mvc-sorting-clickable
###################################################
vc <- view$getColumn(0)
vc$setSortColumnId(0)


###################################################
### chunk number 122: rgtk2-mvc-sorting-sortable
###################################################
model$setSortColumnId(0, GtkSortType['ascending'])


###################################################
### chunk number 123: basicSort
###################################################
store <- rGtkDataFrame(mtcars)
sorted <- gtkTreeModelSortNewWithModel(store)
view <- gtkTreeView(sorted)
view$insertColumnWithAttributes(0, "Click to sort", gtkCellRendererText(), 
                                text = 0)
view$getColumn(0)$setSortColumnId(0)


###################################################
### chunk number 124: sort-example
###################################################
f <- function(model, iter1, iter2, user.data) {
  column <- user.data
  val1 <- model$getValue(iter1, column)$value
  val2 <- model$getValue(iter2, column)$value
  as.integer(val1 - val2)
}
sorted$setSortFunc(sort.column.id=0, sort.func=f, user.data=0)   # column


###################################################
### chunk number 125: notShown
###################################################
## basic GUI
sw <- gtkScrolledWindow()
sw$add(view)
w <- gtkWindow(show=FALSE)
w['title'] <- "Example of sortable tree view"
w$add(sw)
w$show()


###################################################
### chunk number 126: 
###################################################
df <- data.frame(col=letters[1:3], vis=c(TRUE, TRUE, FALSE))
store <- rGtkDataFrame(df)
filtered <- store$filter()
filtered$setVisibleColumn(1)            # 0-based
view <- gtkTreeView(filtered)


###################################################
### chunk number 127: notShown
###################################################
vc <- gtkTreeViewColumn()
QT <- view$insertColumn(vc, 0)
cr <- gtkCellRendererText()
vc$packStart(cr)
vc$addAttribute(cr, "text", 0)      

sw <- gtkScrolledWindow()
sw$add(view)
w <- gtkWindow(show=FALSE)
w$add(sw)
w$show()


###################################################
### chunk number 128: 
###################################################
library(RGtk2)


###################################################
### chunk number 129: 
###################################################
df <- data.frame(state.name)
df$VISIBLE <- rep(TRUE, nrow(df))
store <- rGtkDataFrame(df)


###################################################
### chunk number 130: 
###################################################
filteredStore <- store$filter()
filteredStore$setVisibleColumn(ncol(df)-1)      # offset
view <- gtkTreeView(filteredStore)


###################################################
### chunk number 131: 
###################################################
view$insertColumnWithAttributes(0, "Col", gtkCellRendererText(), text = 0)


###################################################
### chunk number 132: 
###################################################
e <- gtkEntry()
gSignalConnect(e, "changed", function(w, data) {
  pattern <- w$getText()
  df <- data$getModel()
  values <- df[, "state.name"]
  df[, "VISIBLE"] <- grepl(pattern, values)
}, data=filteredStore)


###################################################
### chunk number 133: 
###################################################
## not shown, but this places widgets into a simple GUI
w <- gtkWindow(show=FALSE)
w['title'] <- "A filtered data store"
w$setSizeRequest(width=300, height=400)

g <- gtkVBox()
w$add(g)
g$packStart(e, expand=FALSE)

## add scroll window
sw <- gtkScrolledWindow()
sw$setPolicy("automatic", "automatic")
sw$add(view)
g$packStart(sw, expand=TRUE, fill=TRUE)

w$show()


###################################################
### chunk number 134: cr-right-aligned
###################################################
cr <- gtkCellRendererText()
cr['xalign'] <- 1                       # default 0.5 = centered
cr['family'] <- "Helvetica"  


###################################################
### chunk number 135: 
###################################################
cr <- gtkCellRendererCombo()
store <- rGtkDataFrame(state.name)
cr['model'] <- store
cr['text-column'] <- 0
cr['editable'] <- TRUE                  # needed


###################################################
### chunk number 136: rgtk2-mvc-pixbuf-in-df
###################################################
library(RGtk2)
apple <- gdkPixbuf(filename = imagefile("apple-red.png"))[[1]]
floppy <- gdkPixbuf(filename = imagefile("floppybuddy.gif"))[[1]]
logo <- gdkPixbuf(filename = imagefile("rgtk-logo.gif"))[[1]]
rdf <- rGtkDataFrame(data.frame(image = I(list(apple, floppy, logo))))
view <- gtkTreeView(rdf)
view$insertColumnWithAttributes(0, "image", gtkCellRendererPixbuf(), pixbuf = 0)
win <- gtkWindow()
win$add(view)


###################################################
### chunk number 137: 
###################################################
## also in previous example
addToStockIcons <- function(pixbufs, stock.prefix="new") {
  iconfactory <- gtkIconFactory()
  
  items <- lapply(names(pixbufs), function(iconName) {
    ## each icon has its own icon set, which is registered with icon factory
    iconset <- gtkIconSetNewFromPixbuf(pixbufs[[iconName]])
    stockName <- paste(stock.prefix, "-", iconName, sep="")
    iconfactory$add(stockName, iconset)
    
    ## create stock item for icon
    as.GtkStockItem(list(stock_id = stockName, label = iconName))
  })
  ## register our factory of icons
  iconfactory$addDefault()
  ## officially register the stock items
  gtkStockAdd(items)
}


###################################################
### chunk number 138: addIcons
###################################################
fileNms <- c(factor = system.file("images","factor.gif", package="gWidgets"),
             numeric = system.file("images","numeric.gif", package="gWidgets"))
pixbufs <- lapply(fileNms, function(fn) gdkPixbuf(file = fn)[[1]])
addToStockIcons(pixbufs)


###################################################
### chunk number 139: 
###################################################
d <- data.frame(varNames=c("response", "trt1", "trt2"),
                stock.id=c("new-numeric", "new-factor", "new-factor"),
                leftView  = rep(TRUE, 3),
                rightView = rep(FALSE, 3),
                stringsAsFactors=FALSE)
model <- rGtkDataFrame(d)


###################################################
### chunk number 140: 
###################################################
makeView <- function(model, vis.col) {
  filteredModel <- model$filter()
  filteredModel$setVisibleColumn(vis.col - 1)
  tv <- gtkTreeView(filteredModel)
  tv$getSelection()$setMode("multiple")
  ##
  cr <- gtkCellRendererPixbuf()
  cr['xalign'] <- 1
  tv$insertColumnWithAttributes(0, "Variable", cr, "stock-id" = 1)
  vc <- tv$getColumn(0)
  ##
  cr <- gtkCellRendererText()
  vc$PackStart(cr, expand=TRUE)
  cr['xalign'] <- 0
  cr['xpad'] <- 5
  vc$addAttribute(cr, "text", 0)

  return(tv)
}


###################################################
### chunk number 141: 
###################################################
views <- list()
views[["left"]] <- makeView(model,3)
views[["right"]] <- makeView(model,4)
selections <- lapply(views, gtkTreeViewGetSelection)


###################################################
### chunk number 142: 
###################################################
buttons <- list()
buttons[["fromLeft"]] <- gtkButton(">")
buttons[["fromRight"]] <- gtkButton("<")


###################################################
### chunk number 143: basicGUI
###################################################
## Not shown, but lays out a basic GUI
w <- gtkWindow()
g <- gtkHBox()
w$add(g)
g$PackStart(views$left)
vg <- gtkVBox()
QT <- sapply(buttons, function(i) vg$packStart(i, expand=FALSE))
g$PackStart(vg)
g$PackStart(views$right)


###################################################
### chunk number 144: 
###################################################
moveSelected <- function(b, i) {
  selection <- selections[[i]]
  selected <- selection$getSelectedRows()
  if(length(selected$retval)) {
    childRows <- sapply(selected$retval, function(childPath) {
      childRow <- as.numeric(childPath$toString()) + 1L
    })
    shownIndices <- which(model[, 2L + i])
    rows <- shownIndices[childRows]
    
    model[rows, 2L + i] <- FALSE
    model[rows, 2L + (3L-i)] <- !model[rows, 2L + i]
  }
}


###################################################
### chunk number 145: 
###################################################
mapply(gSignalConnect, buttons, "clicked", list(moveSelected), 1:2)


###################################################
### chunk number 146: disableButtonsIfNoSelection
###################################################
disableButton <- function(sel, button) {
  selected <- sel$getSelectedRows()
  button$setSensitive(length(selected$retval) != 0)
}
mapply(gSignalConnect, selections, "changed", list(disableButton), buttons)


###################################################
### chunk number 147: 
###################################################
sapply(buttons, gtkWidgetSetSensitive, FALSE)


###################################################
### chunk number 148: cellRendererToggle
###################################################
cr <- gtkCellRendererToggle()
cr['activatable'] <- TRUE               # cell can be activated
cr['active'] <- TRUE
gSignalConnect(cr, "toggled", function(w, path) {
  model$active[as.numeric(path) + 1] <- w['active']
})


###################################################
### chunk number 149: 
###################################################
## example showing how to add a toggle button on left of data display
library(RGtk2)


###################################################
### chunk number 150: FixACRANforSweave
###################################################
repos <- getOption("repos")
repos["CRAN"] <- "http://streaming.stat.iastate.edu/CRAN"
options(repos = repos)


###################################################
### chunk number 151: getUpgradablePackages
###################################################
d <- old.packages()[,c("Package", "Installed", "ReposVer")]
d <- as.data.frame(d)


###################################################
### chunk number 152: 
###################################################
doUpdate <- function(d) {
  install.packages(d$Package)
}


###################################################
### chunk number 153: 
###################################################
n <- ncol(d)
nms <- colnames(d)
d$.toggle <- rep(FALSE, nrow(d))
store <- rGtkDataFrame(d)


###################################################
### chunk number 154: 
###################################################
view <- gtkTreeView()
# add toggle
cr <- gtkCellRendererToggle()
view$insertColumnWithAttributes(0, "", cr, active = n)
cr['activatable'] <- TRUE
gSignalConnect(cr, "toggled", function(cr, path, user.data) {
  view <- user.data
  row <- as.numeric(path) + 1
  model <- view$getModel()
  n <- dim(model)[2]
  model[row, n] <- !model[row, n]
}, data=view)


###################################################
### chunk number 155: 
###################################################
mapply(view$insertColumnWithAttributes, -1, nms, list(gtkCellRendererText()), 
       text = 1:n-1)


###################################################
### chunk number 156: 
###################################################
view$setModel(store)


###################################################
### chunk number 157: 
###################################################
b <- gtkButton("Update packages")
gSignalConnect(b, "clicked", function(w, data) {
  view <- data
  model <- view$getModel()
  n <- dim(model)[2]
  vals <- model[model[, n], -n, drop=FALSE]
  doUpdate(vals)
}, data=view)


###################################################
### chunk number 158: 
###################################################
w <- gtkWindow(show=FALSE)
w$setTitle("Installed packages that need upgrading")
w$setSizeRequest(300, 300)

g <- gtkVBox(); w$add(g)
sw <- gtkScrolledWindow()
g$packStart(sw, expand=TRUE, fill=TRUE)

sw$add(view)
sw$setPolicy("automatic", "automatic")
g$packStart(b, expand=FALSE)
w$show()


###################################################
### chunk number 159: comboEditor
###################################################
cr <- gtkCellRendererProgress()
cr["value"] <- 50                       # fixed 50%
cr['orientation'] <- "right-to-left"


###################################################
### chunk number 160: 
###################################################
func <- function(viewCol, cellRend, model, iter, data) {
  curVal <- model$getValue(iter, 0)$value
  fVal <- sprintf("%.3f", curVal)
  cellRend['text'] <- fVal
  cellRend['xalign'] <- 1
}


###################################################
### chunk number 161: 
###################################################
view <- gtkTreeView(rGtkDataFrame(data.frame(rnorm(100))))
cr <- gtkCellRendererText()
view$insertColumnWithAttributes(0, "numbers", cr, text = 0)
vc <- view$getColumn(0)
vc$setCellDataFunc(cr, func)


###################################################
### chunk number 162: 
###################################################
cr <- gtkCellRendererText()


###################################################
### chunk number 163: editedSignal
###################################################
cr['editable'] <- TRUE
ID <- gSignalConnect(cr, "edited", 
f=function(cr, path, newtext, user.data) {
  curRow <- as.numeric(path) + 1
  curCol <- user.data$column
  model <- user.data$model
  model[curRow, curCol] <- newtext
}, data=list(model=store, column=1))


###################################################
### chunk number 164: 
###################################################
tstore <- gtkTreeStore("gchararray")
by(Cars93, Cars93$Manufacturer, function(df) {
  piter <- tstore$append()              # parent
  tstore$setValue(piter$iter, column = 0, value = df$Manufacturer[1])
  sapply(df$Model, function(model) {
    sibiter <- tstore$append(parent = piter$iter) # child
    if (is.null(sibiter$retval)) 
      tstore$setValue(sibiter$iter, column = 0, value = model)
  })
})


###################################################
### chunk number 165: 
###################################################
iter <- tstore$getIterFromString("0:0")
tstore$getValue(iter$iter, column = 0)$value


###################################################
### chunk number 166: rgtk2-mvc-tree-traverse eval=FALSE
###################################################
## ## JV: had issues with this (older RGtk2?)
## iter <- tstore$getIterFirst()
## models <- NULL
## while(iter$retval) {
##   child <- tstore$iterChildren(iter$iter)
##   while(child$retval) {
##     models <- c(models, tstore$get(child$iter, 0)[[1]])
##   }
##   tstore$iterNext(iter$iter)
## }


###################################################
### chunk number 167: notShown
###################################################
## define tstore, but aslo in earlier example so not shown
data(Cars93, package="MASS")
tstore <- gtkTreeStore("gchararray")
Manufacturers <- Cars93$Manufacturer
Makes <- split(Cars93[,"Model"], Manufacturers)
for(i in unique(Manufacturers)) {
  piter <- tstore$append()              # parent
  tstore$setValue(piter$iter, column=0, value=i)
  for(j in Makes[[i]]) { 
    sibiter <- tstore$append(parent=piter$iter) # child
    if(is.null(sibiter$retval)) 
      tstore$setValue(sibiter$iter,column=0, value=j)
  }
}


###################################################
### chunk number 168: 
###################################################
store <- rGtkDataFrame(Cars93[,"Model", drop=FALSE])


###################################################
### chunk number 169: makeView
###################################################
view <- gtkTreeView()
view$insertColumnWithAttributes(0, "Make", gtkCellRendererText(), text = 0)


###################################################
### chunk number 170: makeGUI
###################################################
w <- gtkWindow(show=FALSE)
w['title'] <- "Example of changing models"
sw <- gtkScrolledWindow()
sw$add(view)
w$add(sw)
w$show()


###################################################
### chunk number 171: 
###################################################
view$setModel(store)               # the rectangular store
view$setModel(tstore)              # or the tree store


###################################################
### chunk number 172: 
###################################################
## tree example
## a variable browser
require(RGtk2)


###################################################
### chunk number 173: SetUpStore
###################################################
store <- gtkTreeStore(rep("gchararray", 2))
sstore <- gtkTreeModelSort(store)


###################################################
### chunk number 174: 
###################################################
iter <- store$append(parent=NULL)$iter
store$setValue(iter, column=0, "GlobalEnv")
store$setValue(iter, column=1, "environment")
iter <- store$append(parent=iter)


###################################################
### chunk number 175: 
###################################################
view <- gtkTreeView(sstore)
view$getSelection()$setMode("multiple")


###################################################
### chunk number 176: 
###################################################
gSignalConnect(view, signal = "row-expanded",
               f = function(view, iter, tpath, user.data) {
                 sortedModel <- view$getModel()
                 iter <- pathToIter(sortedModel, tpath)
                 path <- iterToRPath(sortedModel, iter)
                 children <- getChildren(path)
                 addChildren(store, children, parentIter=iter)
                 ## remove errant 1st offspring. See addChildren
                 ci <- store$iterChildren(iter)
                 if(ci$retval) store$remove(ci$iter)
               })


###################################################
### chunk number 177: trePathToIter
###################################################
pathToIter <- function(sstore, tpath) {
  store <- sstore$getModel()
  uspath <- sstore$convertPathToChildPath(tpath)
  store$getIter(uspath)$iter
}


###################################################
### chunk number 178: IterToPath
###################################################
iterToRPath <- function(sstore, iter) {
  store <- sstore$getModel()
  indices <- store$getPath(iter)$getIndices()
  iter <- NULL
  path <- sapply(indices, function(i) {
    iter <<- store$iterNthChild(iter, i)$iter
    store$getValue(iter, 0)$value
  })
  return(path[-1])
}


###################################################
### chunk number 179: getChildren
###################################################
getChildren <- function(path=character(0)) {
  hasChildren <- function(obj) 
    (is.list(obj) || is.environment(obj)) && !is.null(names(as.list(obj)))
  
  getType <- function(obj) head(class(obj), n=1)

  obj <- if (!length(path))
    .GlobalEnv
  else eval(parse(text=paste(path, collapse="$")), envir=.GlobalEnv)

  children <- as.list(obj)
  
  d <- data.frame(children = names(children),
                  class = sapply(children, getType),
                  offspring = sapply(children, hasChildren))
  
  ## filter out Gtk ones
  d[!grepl("^Gtk", d$class), ]
}


###################################################
### chunk number 180: addChildren
###################################################
addChildren <- function(store, children, parentIter = NULL) {
  if(nrow(children) == 0) 
    return(NULL)
  for(i in 1:nrow(children)) {
    iter <- store$append(parent=parentIter)$iter
    sapply(1:(ncol(children) - 1), function(j)              
           store$setValue(iter, column = j - 1, children[i, j]))
    ## Add a branch if there are children
    if(children[i, "offspring"])
      store$append(parent=iter)
  }
}


###################################################
### chunk number 181: 
###################################################
gSignalConnect(view, signal = "row-collapsed",
               f = function(view, iter, tpath, user.data) {
                 sortedModel <- view$getModel()
                 iter <- pathToIter(sortedModel, tpath)
                 n = store$iterNChildren(iter)
                 if(n > 1) { ## n=1 gets removed when expanded
                   for(i in 1:(n-1)) {
                     child.iter <- store$iterChildren(iter)
                     if(child.iter$retval)
                       store$remove(child.iter$iter)
                   }
                 }
               })


###################################################
### chunk number 182: DoubleClickHandler
###################################################
gSignalConnect(view, signal = "row-activated",
               f = function(view, tpath, tcol) {
                 sortedModel <- view$getModel()
                 iter <- pathToIter(sortedModel, tpath)
                 path <- iterToRPath(sortedModel, iter)
                 sel <- view$getSelection()
                 out <- sel$getSelectedRows()
                 if(length(out) == 0) return(c()) # nothing
                 vals <- c()
                 for(i in out$retval) {  # multiple selections
                   iter <- sortedModel$getIter(i)$iter
                   newValue <- sortedModel$getValue(iter, 0)$value
                   vals <- c(vals, newValue)
                 }
                 print(vals)  # [Replace this]
               })


###################################################
### chunk number 183: addRenderer
###################################################
## Now, we define our GUI. The view will have two similar columns.
## add two cell renderers -- 1 for name, 1 for type
nms <- c("Variable name","type")
for(i in 1:2) {
  cr <- gtkCellRendererText()
  vc <- gtkTreeViewColumn()
  vc$setSortColumnId(i-1) # allow sorting
  vc$setResizable(TRUE)
  vc$setTitle(nms[i])
  vc$packStart(cr,TRUE)
  vc$addAttribute(cr,"text",i-1)
  view$insertColumn(vc, i-1)
}


###################################################
### chunk number 184: exampleGUI
###################################################
## We now place the tree view widget into a basic GUI.
sw <- gtkScrolledWindow()
sw$setPolicy("automatic","automatic")
sw$add(view)

w <- gtkWindow()
w$setTitle("Tree view")
w$add(sw)


###################################################
### chunk number 185: 
###################################################
datasets <- c("mtcars", "Cars93")
rdf <- rGtkDataFrame(datasets)
#dfCb <- gtkComboBoxEntryNewWithModel(rdf, text.column = 2)
dfCb <- gtkComboBoxEntry(); dfCb$model <- rdf


###################################################
### chunk number 186: 
###################################################
variableNames <- character(0)
varModel <- rGtkDataFrame(variableNames)
varCb <- gtkComboBox(varModel)
cr <- gtkCellRendererText()
varCb$packStart(cr)
varCb$addAttribute(cr, "text", 0)       # column 1


###################################################
### chunk number 187: notShown
###################################################
## Our basic GUI uses a table for layout. Comboboxes fill and expand to fill 
## the cell.
tbl <- gtkTableNew(rows=2, columns=2, homogeneous=FALSE)
tbl$attach(gtkLabel("Data frame"), left.attach=0,1, top.attach=0,1, 
           xoptions = 0, yoptions = 0, xpadding = 5)
tbl$attach(dfCb, left.attach=1,2, top.attach=0,1, yoptions = 0)

tbl$attach(gtkLabel("Variables"), left.attach=0,1, top.attach=1,2, 
           xoptions = 0, yoptions = 0, xpadding = 5)
tbl$attach(varCb, left.attach=1,2, top.attach=1,2, yoptions = 0)


###################################################
### chunk number 188: 
###################################################
w <- gtkWindow(show=FALSE)
w['title'] <- "Example of comboboxes"
g <- gtkHBox()
g$packStart(tbl, padding=15)
w$add(g)
w$showAll()


###################################################
### chunk number 189: 
###################################################
newDfSelected <- function(varCb, w, ...) {
  if(inherits(w, "GtkComboBox"))        # get entry widget
    w <- w$getChild()
  val <- w$getText()
  df <- try(get(val, envir=.GlobalEnv), silent=TRUE)
  if(!inherits(df, "try-error") && is.data.frame(df)) {
    nms <- names(df)
    ## update model
    newModel <- rGtkDataFrame(nms)
    varCb$setModel(newModel)
    varCb$setActive(-1)
  }
}
gSignalConnect(dfCb, "changed", f=newDfSelected,
               user.data.first=TRUE,
               data=varCb)
gSignalConnect(dfCb$getChild(), "activate", f=newDfSelected,
               user.data.first=TRUE,
               data=varCb)


###################################################
### chunk number 190: 
###################################################
## Example of combo box for colors
library(RGtk2)


###################################################
### chunk number 191: 
###################################################
model <- rGtkDataFrame(palette())


###################################################
### chunk number 192: comboBox
###################################################
combobox <- gtkComboBox(model)
## color
crc <- gtkCellRendererText()
combobox$packStart(crc, expand=FALSE)                
combobox$addAttribute(crc, "cell-background", 0)
crc$width <- 25
## text
crt <- gtkCellRendererText()
crt['xpad'] <- 5                        # give some space
combobox$packStart(crt)
combobox$addAttribute(crt, "text", 0)


###################################################
### chunk number 193:  eval=FALSE
###################################################
## ## display in a window
## win <- gtkWindow(show=FALSE)
## win$setTitle("Color test")
## win$add(combobox)
## win$showAll()


###################################################
### chunk number 194: 
###################################################
require(RGtk2)


###################################################
### chunk number 195: AppendWords
###################################################
entry <- gtkEntry()
completion <- gtkEntryCompletion()
entry$setCompletion(completion)


###################################################
### chunk number 196: SetCompletion
###################################################
store <- rGtkDataFrame(state.name)
completion$setModel(store)
completion$setTextColumn(0)
completion['inline-completion'] <- TRUE
completion['popup-single-match'] <- FALSE


###################################################
### chunk number 197: SetMatchFunc
###################################################
matchAnywhere <- function(comp, str, iter, user.data) {
  model <- comp$getModel()
  rowVal <- model$getValue(iter, 0)$value   # column 0 in model
  
  str <- comp$getEntry()$getText()      # case sensitive
  grepl(str, rowVal)
}
completion$setMatchFunc(matchAnywhere)


###################################################
### chunk number 198: notShown
###################################################
## Our basic GUI is basic:
w <- gtkWindow(show=FALSE)
w$setTitle("Test of entry with completion")
w$add(entry)
w$showAll()


###################################################
### chunk number 199: 
###################################################
## setup example, not shown
w <- gtkWindow()
tv <- gtkTextView()
w$add(tv)


###################################################
### chunk number 200: FindWordAtMouseClick
###################################################
ID <- gSignalConnect(tv, "button-press-event", f=function(w, e, ...) {
  siter <- w$getIterAtLocation(e$getX(), e$getY())$iter
  niter <- siter$copy()                 # need copy
  siter$backwardWordStart()
  niter$forwardWordEnd()
  val <- w$getBuffer()$getText(siter, niter)
  print(val)                            # replace
  return(FALSE)                         # call next handler
})


###################################################
### chunk number 201: 
###################################################
tv <- gtkTextView()
tb <- tv$getBuffer()
tb$setText("the quick brown fox jumped over the lazy dog")
##
tag.b <- tb$createTag(tag.name="bold", 
                      weight=PangoWeight["bold"])
tag.em <- tb$createTag(tag.name="em", 
                       style=PangoStyle["italic"])
tag.large <- tb$createTag(tag.name="large", 
                          font="Serif normal 18")
##
iter <- tb$getBounds()         # or get iters another way
tb$applyTag(tag.b, iter$start, iter$end)  # updates iters
tb$applyTagByName("em", iter$start, iter$end)


###################################################
### chunk number 202: 
###################################################
## make a *basic* terminal in RGtk2
library(RGtk2)


###################################################
### chunk number 203: TextViewWidget
###################################################
tv <- gtkTextView()
tb <- tv$getBuffer()
font <- pangoFontDescriptionFromString("Monospace")
tv$modifyFont(font)                     # widget wide


###################################################
### chunk number 204: 
###################################################
aTag <- tb$createTag(tag.name="cmdInput")
aTag <- tb$createTag(tag.name="cmdOutput", 
                     weight=PangoWeight["bold"])
aTag <- tb$createTag(tag.name="cmdError", 
                     weight=PangoStyle["italic"], foreground="red")
aTag <- tb$createTag(tag.name="uneditable", editable=FALSE)


###################################################
### chunk number 205: 
###################################################
startCmd <- gtkTextMark("startCmd", left.gravity=TRUE)
tb$addMark(startCmd, tb$getStartIter()$iter)


###################################################
### chunk number 206: 
###################################################
scrollViewport <- function(view, ...) {
  iter <- view$getBuffer()$getEndIter()$iter
  view$scrollToIter(iter, 0)
}


###################################################
### chunk number 207: 
###################################################
addPrompt <- function(obj, prompt=c("prompt", "continue"),
                      setMark=TRUE) 
{
  prompt <- match.arg(prompt)
  prompt <- getOption(prompt)
  
  endIter <- obj$getEndIter()
  obj$insert(endIter$iter, prompt)
  if(setMark)
    obj$moveMarkByName("startCmd", endIter$iter)
  obj$applyTagByName("uneditable", obj$getStartIter()$iter, 
                     obj$getEndIter()$iter)
}
addPrompt(tb) ## place an initial prompt


###################################################
### chunk number 208: addOutput
###################################################
addOutput <- function(obj, output, tagName="cmdOutput") {
  endIter <- obj$getEndIter()
  if(length(output) > 0) 
    sapply(output, function(i)  {
      obj$insertWithTagsByName(endIter$iter, i, tagName)
      obj$insert(endIter$iter, "\n", len=-1)
    })
}


###################################################
### chunk number 209: 
###################################################
findCMD <- function(obj) {
  endIter <- obj$getEndIter()
  startIter <- obj$getIterAtMark(startCmd)
  cmd <- obj$getText(startIter$iter, endIter$iter, TRUE)
  regex <- paste("\n[", getOption("continue"), "] ", sep = "")
  cmd <- unlist(strsplit(cmd, regex))
  cmd
}


###################################################
### chunk number 210: 
###################################################
evalCMD <- function(obj, cmd) {
  cmd <- paste(cmd, sep="\n")
  out <- try(parse(text=cmd), silent=TRUE)
  if(inherits(out, "try-error")) {
    if(length(grep("end", out))) {      # unexpected end of input
      ## continue
      addPrompt(obj, "continue", setMark=FALSE)
    } else {
      ## error
      addOutput(obj, out, tagName = "cmdError")
    }
    return()
  }
  
  e <- parse(text = cmd)
  out <- capture.output(vis <- withVisible(try(eval(e, .GlobalEnv), TRUE)))

  addOutput(obj, out) 
  if (inherits(vis$value, "try-error"))
    addOutput(obj, vis$value, "cmdError")
  else if (vis$visible)
    addOutput(obj, capture.output(print(vis$value)))
  
  addPrompt(obj, "prompt", setMark=TRUE)
}


###################################################
### chunk number 211: connectBinding
###################################################
gSignalConnect(tv, "key-release-event", f=function(w, e, data) {
  obj <- w$getBuffer()                  # w is textview
  keyval <- e$getKeyval()
  if(keyval == GDK_Return) {
    cmd <- findCMD(obj)                 # character(0) if nothing
    if(length(cmd) && nchar(cmd) > 0)
      evalCMD(obj, cmd)
  }
  return(FALSE)                         # events need return value
})


###################################################
### chunk number 212: 
###################################################
gSignalConnect(tb, "changed", scrollViewport, tv, after = TRUE, 
               user.data.first = TRUE)


###################################################
### chunk number 213: makeGUI
###################################################
## scroll window
sw <- gtkScrolledWindow()
sw$setPolicy("automatic", "automatic")
sw$add(tv)

## top-level window
w <- gtkWindow(show=FALSE)
w$setTitle("A terminal")
w$add(sw)
w$setSizeRequest(400,200)
w$showAll()


###################################################
### chunk number 214: 
###################################################
## History features
## This is not illustrated in text, but is added here to illustrate how this might be implemented
## The major issue with this example is we can't trap the return or arrow keys before they move 
## the cursor so any thing ends up looking jerky

## store the stack and a pointer to the current command with the text buffer
tb$setData("history", list())
tb$setData("ptr", 0)


## replace cmd with that in str.
replaceCMD <- function(obj, str) {
  endIter <- obj$getEndIter()
  startIter <- obj$getIterAtMark(startCmd)
  obj$delete(startIter$iter, endIter$iter)
  endIter <- obj$getEndIter()
  obj$insertWithTagsByName(endIter$iter, str[1], "cmdInput")
  if(length(str) > 1) {
    for(i in str[-1]) {
      obj$insert(endIter$iter, "\n")
      obj$insertWithTagsByName(endIter$iter, getOption("continue"), "cmdInput")
      obj$insertWithTagsByName(endIter$iter, i, "cmdInput")
    }
  }
  moveViewport(obj)
}

## This adds the command to the history stack and moves the pointer.
addHistory <- function(obj, cmd) {
  history <- obj$GetData("history"); ptr <- obj$GetData("ptr")
  history <- c(history, cmd)
  ptr <- length(history)
  obj$SetData("ptr", ptr)
  obj$SetData("history", history)
}

## these next two functions scroll through the history
scrollHistoryUp <- function(obj) {
  ## move through history
  ptr <- obj$GetData("ptr") - 1
  if(ptr > 0)
    replaceCMD(obj, obj$GetData("history")[[ptr]])
  obj$SetData("ptr", max(ptr,0))
  obj$PlaceCursor(obj$GetEndIter()$iter)
}

scrollHistoryDown <- function(obj) {
  ## move through history
  ptr <- obj$GetData("ptr") + 1
  history <- obj$GetData("history")
  if(ptr <= length(history)) 
    replaceCMD(obj, history[[ptr]])
  obj$SetData("ptr", min(ptr,length(history)))
  obj$PlaceCursor(obj$GetEndIter()$iter)
}

## History bindings
## this uses Control-p and Control-n to move
ID <- gSignalConnect(tv, "key-release-event", f=function(w, e, data) {
  if(e$GetState() != GdkModifierType['control-mask'])
    return(TRUE)

  obj <- w$GetBuffer()
  keyval <- e$GetKeyval()

  if(keyval == GDK_p) {
    scrollHistoryUp(obj)
  } else if(keyval == GDK_n) {
    scrollHistoryDown(obj)
  }
  return(TRUE)
})


###################################################
### chunk number 215: NotShown
###################################################
## Not shown, but this shows how to add a button to a text view widget
b <- gtkButton("click me")              # child
end <- tb$getEndIter()$iter             # get  an iter
anchor <- tb$createChildAnchor(end)     # make anchor
tv$addChildAtAnchor(b, anchor)          # set widget at anchor


###################################################
### chunk number 216: 
###################################################
require(RGtk2)


###################################################
### chunk number 217: rgtk2-menus-actions-constructor
###################################################
a <- gtkAction(name="ok", label="_Ok", 
               tooltip="An OK button", stock.id="gtk-ok")


###################################################
### chunk number 218: rgtk2-menus-actions-activate
###################################################
gSignalConnect(a, "activate", f = function(w, data) {
  print(a$getName())                    # or some useful thing
})


###################################################
### chunk number 219: ConnectAction
###################################################
b <- gtkButton()
a$connectProxy(b)


###################################################
### chunk number 220: rgtk2-menus-action-appearance eval=FALSE
###################################################
## ## JV: this gave an erro
## a["use-action-appearance"] <- TRUE


###################################################
### chunk number 221: rgtk2-menus-action-group
###################################################
group <- gtkActionGroup()
group$addActionWithAccel(a, "<control>O")


###################################################
### chunk number 222: rgtk2-menus-toggle-action
###################################################
fullScreen <- gtkToggleAction("fullscreen", "Full screen", "Toggle full screen")
gSignalConnect(fullScreen, "toggled", function(action) {
  window$fullscreen()
})


###################################################
### chunk number 223: showGUI
###################################################
window <- gtkWindow(show=FALSE)
window['title'] <- "Action with button example"
window$add(b)
window$showAll()


###################################################
### chunk number 224: rgtk2-menus-menubar
###################################################
menubar <- gtkMenuBar()


###################################################
### chunk number 225: rgtk2-menus-menu
###################################################
fileMenu <- gtkMenu()


###################################################
### chunk number 226: rgtk2-menus-menuitem
###################################################
fileItem <- gtkMenuItemNewWithMnemonic(label="_File")
fileItem$setSubmenu(fileMenu)


###################################################
### chunk number 227: rgtk2-menus-append
###################################################
menubar$append(fileItem)


###################################################
### chunk number 228: rgtk2-menus-open
###################################################
open <- gtkMenuItemNewWithMnemonic("_Open")


###################################################
### chunk number 229: rgtk2-menus-open-activate
###################################################
gSignalConnect(open, "activate", function(item) {
  f <- file.choose()
  file.show(f)
})


###################################################
### chunk number 230: rgtk2-menus-append-item
###################################################
fileMenu$append(open)


###################################################
### chunk number 231: rgtk2-menus-save-action
###################################################
saveAction <- gtkAction("save", "Save", "Save object", "gtk-save")


###################################################
### chunk number 232: rgtk2-menus-save-item
###################################################
save <- saveAction$createMenuItem()
##save["use-action-appearance"] <- TRUE
fileMenu$append(save)


###################################################
### chunk number 233: rgtk2-menus-toggle-item
###################################################
autoSaveAction <- gtkToggleAction("autosave", "Autosave", "Enable autosave")
autoSave <- autoSaveAction$createMenuItem()
fileMenu$append(autoSave)


###################################################
### chunk number 234: rgtk2-menus-separator
###################################################
fileMenu$append(gtkSeparatorMenuItem())


###################################################
### chunk number 235: "menubar-ex"
###################################################
popup <- gtkMenu()                       # top level
popup$append(gtkMenuItem("cut"))
popup$append(gtkMenuItem("copy"))
popup$append(gtkSeparatorMenuItem())
popup$append(gtkMenuItem("paste"))


###################################################
### chunk number 236: rgtk2-menus-popup-button
###################################################
b <- gtkButton("Click me with right mouse button")
w <- gtkWindow(); w$setTitle("Popup menu example")
w$add(b)


###################################################
### chunk number 237: 
###################################################
gSignalConnect(b,"button-press-event",
               f = function(w, e, menu) {
                 if(e$getButton() == 3 ||
                    (e$getButton() == 1 && # a mac
                     e$getState() == GdkModifierType['control-mask'])) 
                   gtkMenuPopup(menu, 
                                button = e$getButton(),
                                activate.time = e$getTime())
                 return(FALSE)
               }, data=popup)


###################################################
### chunk number 238: 
###################################################
IDs <- sapply(popup$getChildren(), function(i) {
  if(!inherits(i, "GtkSeparatorMenuItem")) # skip these
    gSignalConnect(i, "activate",
                   f = function(w, data) print("replace me"))
})


###################################################
### chunk number 239: rgtk2-menus-toolbar-construct
###################################################
toolbar <- gtkToolbar()


###################################################
### chunk number 240: rgtk2-menus-toolbar-open-item
###################################################
## openButton <-  gtkToolButton(stock.id = "gtk-open") 
## JV: had to do this:
openButton <- gtkToolButton()
openButton['stock-id'] <- "gtk-open"


###################################################
### chunk number 241: rgtk2-menus-toolbar-add
###################################################
toolbar$add(openButton)


###################################################
### chunk number 242: rgtk2-menus-toolbar-save-item
###################################################
saveButton <- saveAction$createToolItem()
toolbar$add(saveButton)


###################################################
### chunk number 243: rgtk2-menus-toolbar-separator
###################################################
toolbar$add(gtkSeparatorToolItem())


###################################################
### chunk number 244: rgtk2-menus-toolbar-toggle
###################################################
fullScreenButton <- fullScreen$createToolItem()
toolbar$add(fullScreenButton)


###################################################
### chunk number 246: rgtk2-mennus-toolbar-color-button
###################################################
## JV: moved )
##gdkColor <- gdkColorParse(palette()[1]$color)
gdkColor <- gdkColorParse(palette()[1])$color
colorButton <- gtkColorButton(gdkColor)


###################################################
### chunk number 247: rgtk2-menus-toolbar-color-menu
###################################################
colorMenuItem <- function(color) {
  da <- gtkDrawingArea()
  da$setSizeRequest(20, 20)
  da$modifyBg("normal", color)
  item <- gtkImageMenuItem(color)
  item$setImage(da)
  item
}
colorItems <- sapply(palette(), colorMenuItem)
colorMenu <- gtkMenu()
for (item in colorItems)
  ## JV: fixed this
##  menu$append(item)
  colorMenu$append(item)


###################################################
### chunk number 248: rgtk2-menus-toolbar-color-cb
###################################################
colorMenuItemActivated <- function(item) {
  color <- gdkColorParse(item$getLabel())$color
  colorButton$setColor(color)
}
sapply(colorItems, gSignalConnect, "activate", colorMenuItemActivated)


###################################################
### chunk number 249: rgtk2-menus-toolbar-menu
###################################################
menuButton <- gtkMenuToolButton(colorButton, "Color")
menuButton$setMenu(colorMenu)
toolbar$add(menuButton)


###################################################
### chunk number 250: 
###################################################
tb <- gtkToolbar()


###################################################
### chunk number 251: 
###################################################
b1 <-  gtkToolButtonNewFromStock("gtk-open") 
tb$add(b1)


###################################################
### chunk number 252: 
###################################################
f <- system.file("images/dataframe.gif", package="gWidgets")
image <- gtkImageNewFromFile(f)
b2 <- gtkToolButton()
b2$setIconWidget(image)
b2$setLabel("Edit")
tb$add(b2)


###################################################
### chunk number 253: 
###################################################
b3 <- gtkToggleToolButtonNewFromStock("gtk-fullscreen")
tb$add(b3)
QT <- gSignalConnect(b3, "toggled", f=function(button, data) {
  if(button$getActive())
    cat("toggle button is depressed\n")
  })


###################################################
### chunk number 254: 
###################################################
QT <- sapply(1:2, function(i) {
  gSignalConnect(tb[[i]], "clicked", function(button, data) {
    cat("You clicked", button$getLabel(), "\n")
  })
})


###################################################
### chunk number 255: MakeToolbarGUI
###################################################
## simple GUI to finish toolbar example
w <- gtkWindow(show=FALSE)
w['title'] <- "Toolbar example"
g <- gtkVBox()
w$add(g)
g$packStart(tb, expand=FALSE)
g$packStart(gtkLabel("filler"), expand=TRUE, fill=TRUE)
w$showAll()


###################################################
### chunk number 256: not-shown
###################################################
## sample RGtk2 menu
library(RGtk2)


###################################################
### chunk number 257: 
###################################################
uimanager = gtkUIManager()


###################################################
### chunk number 258: 
###################################################
someAction <- function(action,...) 
  statusbar$push(statusbar$getContextId("message"), action$getName())
Quit <- function(...) win$destroy()


###################################################
### chunk number 259: Define-first-action-group
###################################################
firstActionGroup = gtkActionGroup("firstActionGroup")
firstActionEntries = list(
  ## name,ID,label,accelerator,tooltip,callback
  file = list("File",NULL,"_File",NULL,NULL,NULL),
  new = list("New", "gtk-new", "_New", "<control>N", 
    "New document", someAction),
  sub = list("Submenu", NULL, "S_ub", NULL, NULL, NULL),
  open = list("Open", "gtk-open", "_Open", "<ctrl>0", 
    "Open document", someAction),
  save = list("Save", "gtk-save", "_Save", "<alt>S", 
    "Save document", someAction),
  quit = list("Quit", "gtk-quit", "_Quit", "<ctrl>Q", 
    "Quit", Quit),
  edit = list("Edit", NULL, "_Edit", NULL, NULL, NULL),
  undo = list("Undo", "gtk-undo", "_Undo", "<ctrl>Z", 
    "Undo change", someAction),
  redo = list("Redo", "gtk-redo", "_Redo", "<ctrl>U", 
    "Redo change", someAction)
)


###################################################
### chunk number 260: "Insert action group"
###################################################
QT <- firstActionGroup$addActions(firstActionEntries)
uimanager$insertActionGroup(firstActionGroup, 0) # 0-based


###################################################
### chunk number 261: 
###################################################
helpActionGroup = gtkActionGroup("helpActionGroup")
helpActionEntries = list(
  help = list("Help", "", "_Help", "", "", NULL),
  about = list("About", "gtk-about", "_About", "", "", someAction)
  )
QT <- helpActionGroup$AddActions(helpActionEntries)


###################################################
### chunk number 262: "a toggle action"
###################################################
toggleAction <- gtkToggleAction("UseTooltips",
                                label="_Use tooltips",
                                tooltip="Use tooltips ")
toggleAction$setActive(TRUE)            # initially set
ID <- gSignalConnect(toggleAction, signal = "toggled",
                    f=function(ta, userData)  {
                      cat(userData,ta$getName(),"\n")
                    },
                    data="toggled")
helpActionGroup$addAction(toggleAction)


###################################################
### chunk number 263: "insert help action group"
###################################################
uimanager$insertActionGroup(helpActionGroup,1)


###################################################
### chunk number 264: "Load UI from file"
###################################################
id <- uimanager$addUiFromFile("ex-menus.xml")


###################################################
### chunk number 265: "Retrieve menubar and toolbar from the uimanager"
###################################################
menubar <- uimanager$getWidget("/menubar")
toolbar <- uimanager$getWidget("/toolbar")


###################################################
### chunk number 266: "define statusbar"
###################################################
statusbar <- gtkStatusbar()


###################################################
### chunk number 267: Define-window-add-accelerator-group
###################################################
win <- gtkWindow(show=TRUE)
win$setTitle("Window example")
accelgroup = uimanager$getAccelGroup()  # add accel group
win$addAccelGroup(accelgroup)


###################################################
### chunk number 268: setup-box
###################################################
box <- gtkVBox()
win$add(box)

box$packStart(menubar, expand=FALSE, fill=FALSE,0)
box$packStart(toolbar, expand=FALSE, fill= FALSE,0)
contentArea = gtkVBox()
box$packStart(contentArea, expand=TRUE, fill=TRUE,0)
contentArea$packStart(gtkLabel("Content Area"))
box$packStart(statusbar, expand=FALSE, fill=FALSE, 0)


###################################################
### chunk number 269: How-to-set-sensitivity
###################################################
uimanager$getWidget("/menubar/Edit/EditRedo")$setSensitive(FALSE)


###################################################
### chunk number 270: How-to-replace-menuitem-text
###################################################
a <- uimanager$getWidget("/menubar/Edit/EditUndo")
a[[1]]$setText("Undo add text")


###################################################
### chunk number 271:  eval=FALSE
###################################################
## w <- gtkWindow()
## w['title'] <- "Parent window"
## dlg <- gtkMessageDialog(parent=w, flags="destroy-with-parent",
##                         type="question", buttons="ok",
##                         "My message")
## dlg['secondary-text'] <- "A secondary message"
## response <- dlg$run()
## if(response == GtkResponseType["cancel"] || # for other buttons
##    response == GtkResponseType["close"] ||
##    response == GtkResponseType["delete-event"]) {
##   ## pass
## } else if(response == GtkResponseType["ok"]) {
##   print("Ok")
## }
## dlg$Destroy()


###################################################
### chunk number 272: 
###################################################
dlg <- gtkDialogNewWithButtons(title="Enter a value", 
                parent=NULL, flags=0,
                "gtk-ok", GtkResponseType["ok"],
                "gtk-cancel", GtkResponseType["cancel"],
                show=FALSE)
g <- dlg$getVbox()                           # content area
vg <- gtkVBox()
vg['spacing'] <- 10
g$packStart(vg)

vg$packStart(gtkLabel("Enter a value"))
entry <- gtkEntry()
vg$packStart(entry)
ID <- gSignalConnect(dlg, "response", 
                     f=function(dlg, resp, user.data) {
                       if(resp == GtkResponseType["ok"])
                         print(entry$getText())
                       dlg$Destroy()
                     })
dlg$showAll()
dlg$setModal(TRUE)


###################################################
### chunk number 273: openFileDialog
###################################################
dlg <- gtkFileChooserDialog(title="Open a file", 
                     parent=NULL, action="open",
                     "gtk-ok", GtkResponseType["ok"],
                     "gtk-cancel", GtkResponseType["cancel"])


###################################################
### chunk number 274: 
###################################################
ID <- gSignalConnect(dlg, "response", f=function(dlg, resp, data) {
  if(resp == GtkResponseType["ok"]) {
    filename <- dlg$getFilename()
    print(filename)
  }
  dlg$destroy()
})


###################################################
### chunk number 275: 
###################################################
fileFilter <- gtkFileFilter()
fileFilter$setName("R files")
dlg$addFilter(fileFilter)
QT <- sapply(c("*.R", "*.Rdata"), 
             function(i) fileFilter$addPattern(i))
QT <- sapply(c("text/plain"), 
             function(i) fileFilter$addMimeType(i))


###################################################
### chunk number 276: 
###################################################
options(prompt="> ")
options(continue="+ ")
options(width=80)


