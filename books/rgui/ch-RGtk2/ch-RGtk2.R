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
### chunk number 3: gtkWindow-classes
###################################################
class(gtkWindow())


###################################################
### chunk number 4: gtkButtonAddApi
###################################################
gtkButtonPrintHello <- function(obj) print("hello")
b <- gtkButton()
b$printHello()


###################################################
### chunk number 5: showProperties
###################################################
head(names(b), n=8)                     # or b$getPropInfo()


###################################################
### chunk number 6: 
###################################################
b <- gtkButton("A button")
gObjectGet(b,"label")
gObjectSet(b,label="a new label for our button")


###################################################
### chunk number 7: 
###################################################
b$getLabel()
b$setLabel("Again, a new label for our button")


###################################################
### chunk number 8: 
###################################################
b['label']


###################################################
### chunk number 9: 
###################################################
GtkToolbarStyle


###################################################
### chunk number 10: 
###################################################
tb <- gtkToolbar()
tb$setStyle(GtkToolbarStyle['icons'] )


###################################################
### chunk number 11: 
###################################################
tb$setStyle("icons")


###################################################
### chunk number 12: 
###################################################
names(b$getSignals())


###################################################
### chunk number 13:  eval=FALSE
###################################################
## types <- class(b)
## lst <- sapply(head(types,n=-1), gtkTypeGetSignals)
## for(i in names(lst)) { cat(i,"\n"); print(lst[[i]])}


###################################################
### chunk number 14: 
###################################################
args(gSignalConnect)


###################################################
### chunk number 15: 
###################################################
w <- gtkWindow(); w['title'] <- "test signals"
x <- 1; 
b <- gtkButton("click me"); w$add(b)
ID <- gSignalConnect(b,signal="clicked",f = function(widget,...) {
  widget$setData("x",2)
  x <- 2
  return(TRUE)
})


###################################################
### chunk number 16: 
###################################################
b$setData("x",2)                        # fix non-interactivity


###################################################
### chunk number 17: 
###################################################
cat(x, b$getData("x"),"\n") # 1 and 2


###################################################
### chunk number 18: 
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
### chunk number 19: 
###################################################
while(gtkEventsPending()) 
  gtkMainIteration()


###################################################
### chunk number 20: 
###################################################
library(RGtk2)


###################################################
### chunk number 21: 
###################################################
w <- gtkWindow(show=FALSE)              # use default type
w$setTitle("Window title")              # set window title
w['title']                              # or w$getTitle()
w$setDefaultSize(250,300)               # 250 wide, 300 high
w$show()                                # show window


###################################################
### chunk number 22: 
###################################################
## create a window and a dialog window
w <- gtkWindow(show=FALSE); w$setTitle("Top level window")
d <- gtkWindow(show=FALSE); d$setTitle("dialog window")
d$setTransientFor(w)
d$setPosition(GtkWindowPosition["center-on-parent"])
d$setDestroyWithParent(TRUE)
w$show()
d$Show()


###################################################
### chunk number 23: 
###################################################
w <- gtkWindow(); w$setTitle("Hello world")
l <- gtkLabel("Hello world")
w$add(l)


###################################################
### chunk number 24: 
###################################################
w$getChild()['label']                   # return label property of child


###################################################
### chunk number 25:  eval=FALSE
###################################################
## ## leave out?
## l$getParent()


###################################################
### chunk number 26: mix-pack-start-pack-end
###################################################
## show how expand controls window placemnt.
w <- gtkWindow(show=FALSE); w$setTitle("Pack Start and Pack End")
w$setSizeRequest(400,25); w$show()
g <- gtkHBox(); w$add(g)
g$packStart(gtkButton("Left"), expand=FALSE)
g$packStart(gtkButton("Middle"), expand=FALSE)
g$packEnd(gtkButton("Right"), expand=FALSE)


###################################################
### chunk number 27: remove-child-component-3
###################################################
b <- g[[3]]
g$remove(b)                             # removed
g$packStart(b, expand=TRUE, fill=TRUE)


###################################################
### chunk number 28: 
###################################################
b3 <- g[[3]]
g$reorderChild(b3, 2 - 1)               # second is 2 - 1


###################################################
### chunk number 29: padding-vs-spacing
###################################################
## who difference between padding -- around both sides and spacing -- between
w <- gtkWindow(); w$setTitle("Padding versus spacing")
g1 <- gtkVBox(spacing=10); w$add(g1)
g2 <- gtkHBox(spacing=10); g1$packStart(g2)
g3 <- gtkHBox(spacing=0); g1$packStart(g3)
g2$packStart(gtkButton("Hey"))
g2$packStart(gtkButton("Hey"))
g2$packStart(gtkButton("Hey"))
g3$packStart(gtkButton("Hey"),padding=10)
g3$packStart(gtkButton("Hey"),padding=10)


###################################################
### chunk number 30: expand-fill-example
###################################################
w <- gtkWindow(show=FALSE); w$setTitle("Expand vs. Fill");
w$setDefaultSize(500,25); w$show()
g <- gtkHBox(homogeneous=FALSE); w$add(g)
g$packStart(gtkButton("expand=FALSE"), expand=FALSE)
g$packStart(gtkButton("fill=FALSE"), expand=TRUE, fill=FALSE)
g$packStart(gtkButton("fill=TRUE"), expand=TRUE, fill=TRUE)


###################################################
### chunk number 31: ButtonConstructors
###################################################
w <- gtkWindow(show=FALSE)
w$setTitle("Various buttons")
w$setDefaultSize(400, 25)
g <- gtkHBox(homogeneous=FALSE, spacing=5)
w$add(g)
b <- gtkButtonNew(); 
b$setLabel("long way")
g$packStart(b)
g$packStart(gtkButton(label="label only") )
g$packStart(gtkButton(stock.id="gtk-ok") )
g$packStart(gtkButtonNewWithMnemonic("_Mnemonic") ) # Alt-m to "click"
w$show()


###################################################
### chunk number 32: CallbackExampleForButton
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
### chunk number 33: MacOSXstyleButton
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
### chunk number 34: StockButtons
###################################################
cancel <- gtkButton(stock.id="gtk-cancel")
ok <- gtkButton(stock.id="gtk-ok")
delete <- gtkButton(stock.id="gtk-delete")


###################################################
### chunk number 35: macButtonPack
###################################################
g$packEnd(ok, padding=0)
g$packEnd(cancel, padding=12)
g$packEnd(delete, padding=12)
g$packEnd(gtkLabel(""), expand=TRUE, fill=TRUE)


###################################################
### chunk number 36: 
###################################################
ok$grabFocus()
QT <- gSignalConnect(ok, "clicked", function(...) print("ok"))


###################################################
### chunk number 37: 
###################################################
## not shown
w$showAll()


###################################################
### chunk number 38: gtkHButtonBoxExample
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
### chunk number 39: LabelFormatting
###################################################
w <- gtkWindow(); w$setTitle("Label formatting")
w$setSizeRequest(250,100)               # narrow
g <- gtkVBox(spacing=2); g$setBorderWidth(5); w$add(g)
string = "the quick brown fox jumped over the lazy dog"
## wrap by setting number of characters
basicLabel <- gtkLabel(string)
basicLabel$setLineWrap(TRUE); 
basicLabel$setWidthChars(35)            # specify number of characters

## Set ellipsis to shorten long text
ellipsized <- gtkLabel(string)
ellipsized$setEllipsize(PangoEllipsizeMode["middle"])

## Right justify text
## use xalign property for label in cell
rightJustified <- gtkLabel("right justify"); 
rightJustified$setJustify(GtkJustification["right"])
rightJustified['xalign'] <- 1

## PANGO markup
pangoLabel <- gtkLabel(); 
pangoLabel$setMarkup(paste("<span foreground='blue' size='x-small'>",
                           string,"</span>"));
QT <- sapply(list(basicLabel, ellipsized, rightJustified, pangoLabel),
             function(i) g$packStart(i, expand=TRUE, fill=TRUE ))
w$showAll()


###################################################
### chunk number 40: LinkButton
###################################################
w <- gtkWindow()
g <- gtkVBox(); w$add(g)
lb <- gtkLinkButton(uri="http://www.r-project.org")
lb1<- gtkLinkButton(uri="http://www.r-project.org", label="R Home")
g$packStart(lb)
g$packStart(lb1)

f <- function(w,...) browseURL(w['uri'])

ID <- gSignalConnect(lb,  "clicked", f = f)
ID <- gSignalConnect(lb1, "clicked", f = f)


###################################################
### chunk number 41: 
###################################################
library(RGtk2)


###################################################
### chunk number 42: 
###################################################
w <- gtkWindow(show=FALSE); w$setTitle("Graphic window");
w$setSizeRequest(400,400)
g <- gtkHBox(); w$add(g)
w$showAll()


###################################################
### chunk number 43: 
###################################################
theSize <- g$getAllocation()
width <- theSize$width; height <- theSize$height


###################################################
### chunk number 44:  eval=FALSE
###################################################
## filename <- tempfile()
## png(file = filename, width = width, height = height)
## hist(rnorm(100))
## QT <- dev.off()


###################################################
### chunk number 45:  eval=FALSE
###################################################
## image <- gtkImageNewFromFile(filename)
## g$packStart(image, expand=TRUE, fill = TRUE)
## unlink(filename)                        # tidy up


###################################################
### chunk number 46: notShown
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
### chunk number 47: gtkStockListIds
###################################################
head(unlist(gtkStockListIds()), n=4)   


###################################################
### chunk number 48: ButtonNewFromStockHardWay
###################################################
b <- gtkButton()
g <- gtkHBox()
pbuf <- b$renderIcon("gtk-ok", size=GtkIconSize["button"]) 
i <- gtkImageNewFromPixbuf(pbuf)
i['xalign'] <- 1; i['xpad'] <- 5        # right align with padding
g$packStart(i, expand=FALSE)
l <- gtkLabel(gettext("ok")); 
l['xalign'] <- 0 # left align
g$packStart(l, expand=TRUE, fill=TRUE)
b$add(g)
## show it
w <- gtkWindow(); w$add(b)


###################################################
### chunk number 49: 
###################################################
library(RGtk2)


###################################################
### chunk number 50: 
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
### chunk number 51:  eval=FALSE
###################################################
## require(ggplot2)
## require(Cairo)
## iconNames <- c("GeomBar","GeomHistogram")   # 2 of many ggplot functions
## icon.size <- 16
## iconDir <- tempdir()
## fileNames <- sapply(iconNames, function(name) {
##   nm <- paste(iconDir, "/", name, ".png", sep="", collapse="")
##   Cairo(file=nm, width=icon.size, height=icon.size, type="png")
##   val <- try(get(name))
##   grid.newpage()
##   try(grid.draw(val$icon()), silent=TRUE)
##   dev.off()
##   nm
## })


###################################################
### chunk number 52: addToStockIcons eval=FALSE
###################################################
## addToStockIcons <- function(iconNames, fileNames, stock.prefix="new") {
##   iconfactory <- gtkIconFactoryNew()
##   
##   for(i in seq_along(iconNames)) {
##     
##     iconsource = gtkIconSourceNew()
##     iconsource$setFilename(fileNames[i])
##     
##     iconset = gtkIconSetNew()
##     iconset$addSource(iconsource)
##     
##     stockName = paste(stock.prefix, "-", iconNames[i], sep="")
##     iconfactory$add(stockName, iconset)
##     
##     items = list(test=list(stockName, iconNames[i],"","",""))
##     gtkStockAdd(items)
##   }
##   iconfactory$AddDefault()
##   invisible(TRUE)
## }


###################################################
### chunk number 53:  eval=FALSE
###################################################
## addToStockIcons(iconNames, fileNames)
## nms <- gtkStockListIds()
## unlist(nms[grep("^new", nms)])


###################################################
### chunk number 54: 
###################################################
require(RGtk2)


###################################################
### chunk number 55: 
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
### chunk number 56: 
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
### chunk number 57: 
###################################################
showAlertPanel <- function(obj) {
  obj$label$setText(obj$message)
  obj$evb$show()
}


###################################################
### chunk number 58: 
###################################################
hideAlertPanel <- function(obj) obj$evb$hide()


###################################################
### chunk number 59: 
###################################################
w <- gtkWindow()
g <- gtkVBox(); w$add(g)

ap <- newAlertPanel()
g$packStart(getAlertPanelBlock(ap), expand=FALSE)
g$packStart(gtkLabel("fill space"), expand=TRUE, fill=TRUE)
ap$message <- "New Message"             # add message
showAlertPanel(ap)


###################################################
### chunk number 60: InsertDeleteText
###################################################
e <- gtkEntry()
e$setText("Where did that guy go?")
add.pos <- regexpr("guy", e['text']) - 1 # before "guy"
ret <- e$insertText("@$#%! ", position = add.pos)
e$getText()                             # or e['text']
e$deleteText(start = add.pos, end= ret$position)
e$getText()


###################################################
### chunk number 61: RadioGroupExample
###################################################
vals <- c("two.sided", "less", "greater")
l <- list()                                 # list for group
l[[vals[1]]] <- gtkRadioButton(label=vals[1]) # group = NULL
for(i in vals[-1]) 
  l[[i]] <- gtkRadioButton(l, label=i)  # group is a list


###################################################
### chunk number 62: 
###################################################
w <- gtkWindow(); w$setTitle("Radio group example")
g <- gtkVBox(FALSE, 5); w$add(g)
QT <- sapply(l, function(i) g$packStart(i))


###################################################
### chunk number 63: 
###################################################
l[[3]]$setActive(TRUE)           
sapply(l, function(i) i$getActive()) 


###################################################
### chunk number 64: 
###################################################
QT <- sapply(l, function(i) 
       gSignalConnect(i, "toggled",     # attach each to "toggled"
                      f = function(w, data) {
                        if(w$getActive()) # set before callback
                          cat("clicked", w$getLabel(),"\n")
                      }))


###################################################
### chunk number 65: 
###################################################
radiogp <- gtkRadioButton(label=vals[1])
for(i in vals[-1])
  radiogp$newWithLabelFromWidget(i)

w <- gtkWindow(); 
w['title'] <- "Radio group example"
g <- gtkVBox(); w$add(g)
QT <- sapply(rev(radiogp$getGroup()),         # reverse list
             function(i) g$packStart(i))


###################################################
### chunk number 66: 
###################################################
vals <- c("two.sided", "less", "greater")
cb <- gtkComboBoxNewText()
for(i in vals) cb$appendText(i)
cb$setActive(0)                         # first one
ID <- gSignalConnect(cb, "changed",
                     f = function(w, ...) {
                       i <- w$getActive() + 1 # shift index
                       if(i == 0) 
                         cat("No value selected\n")
                       else
                         cat("Value is", w$getActiveText(), "\n")
                     })


###################################################
### chunk number 67: 
###################################################
w <- gtkWindow(show=FALSE)
w['title'] <- "Combobox example"
w$add(cb)
w$showAll()    # propogate down to cb


###################################################
### chunk number 68: SliderAndHistogram
###################################################
library(lattice)
w <- gtkWindow(); w$setTitle("Histogram bin selection")

slider <- gtkHScaleNewWithRange(1, 100, 1) # min, max, step
slider$setValue(10)                        # initial val.
slider['value-pos'] <- "bottom"
w$add(slider)

f <- function(val) print(histogram(x, nint = val))
ID <- gSignalConnect(slider,"value-changed",
               f = function(w, ...) {
                 val <- w$getValue()
                 f(val)
               })
x <- rnorm(100)                         # the data
f(slider$getValue())                    # initial graphic


###################################################
### chunk number 69: 
###################################################
## make a range widget combining both a slider and spinbutton to choose a number
library(RGtk2)


###################################################
### chunk number 70: 
###################################################
from <- 0; to <- 100; by <- 1


###################################################
### chunk number 71: 
###################################################
slider <- gtkHScale(min=from, max=to, step=by)
slider['draw-value'] <- FALSE
adjustment <- slider$getAdjustment()
spinbutton <- gtkSpinButton(adjustment=adjustment)


###################################################
### chunk number 72: 
###################################################
g <- gtkHBox()
g$packStart(slider, expand=TRUE, fill=TRUE, padding=5)
g$packStart(spinbutton, expand=FALSE, padding=5)


###################################################
### chunk number 73: 
###################################################
w <- gtkWindow(show=FALSE)
w['title'] <- "Example of a range widget"
w$setSizeRequest(width=200, height=-1)
w$add(g)
w$show()


###################################################
### chunk number 74: 
###################################################
gtkNotebookInsertPageWithCloseButton <- 
  function(object, child, label.text="", position=-1) {
    label <- gtkHBox()
    label$packStart(gtkLabel(label.text))
    label$packEnd(b <- gtkButton("x"))   # prettier with icon
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
### chunk number 75: 
###################################################
w <- gtkWindow()
nb <- gtkNotebook(); w$add(nb)
nb$setScrollable(TRUE)
QT <- nb$insertPageWithCloseButton(gtkButton("hello"), 
                                   label.text="page 1")
QT <- nb$insertPageWithCloseButton(gtkButton("world"), 
                                   label.text="page 2")


###################################################
### chunk number 76: ScrolledWindowExample
###################################################
library(RGtk2)


###################################################
### chunk number 77: 
###################################################
g <- gtkVBox(spacing=0)
QT <- sapply(state.name, function(i) {
  l <- gtkLabel(i)
  l['xalign'] <- 0; l['xpad'] <- 10
  g$packStart(l, expand=TRUE, fill=TRUE)
})


###################################################
### chunk number 78: 
###################################################
sw <- gtkScrolledWindow()
sw$setPolicy("never","automatic")
sw$addWithViewport(g)                   # just "Add" for text, tree, ...


###################################################
### chunk number 79: 
###################################################
w <- gtkWindow(show=FALSE)
w$setTitle("Scrolled window example")
w$setSizeRequest(-1, 300)
w$add(sw)
w$show()


###################################################
### chunk number 80: 
###################################################
## layout a basic dialog -- center align
library(RGtk2)


###################################################
### chunk number 81: 
###################################################
w <- gtkWindow(show=FALSE)
w$setTitle("example of gtkTable and attaching")
tbl <- gtkTable(rows=4, columns=2, homogeneous=FALSE)
w$add(tbl)


###################################################
### chunk number 82: 
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
### chunk number 83: 
###################################################
tbl$attach(l1, left.attach=0,1, top.attach=0,1, yoptions="fill")
l1["xalign"] <- 1; l1["xpad"] <- 5
tbl$attach(w1, left.attach=1,2, top.attach=0,1, xoptions="fill", yoptions="fill")


###################################################
### chunk number 84: 
###################################################
tbl$attach(l2, left.attach=0,1, top.attach=1,2, yoptions="fill")
l2["xalign"] <- 1; l2['yalign'] <- 0; l2["xpad"] <- 4
tbl$attach(w2, left.attach=1,2, top.attach=1,2, xoptions=c("expand", "fill"))


###################################################
### chunk number 85: 
###################################################
tbl$attach(gtkHSeparator(),left.attach=0,2, top.attach=2,3, ypadding=10, yoptions="fill")
tbl$attach(w3, left.attach=1,2, top.attach=3,4, xoptions="fill", yoptions="fill")


###################################################
### chunk number 86: 
###################################################
w$showAll()                             # propogate to combo


###################################################
### chunk number 87: 
###################################################
TARGET.TYPE.TEXT   <- 80                 
TARGET.TYPE.PIXMAP <- 81                  


###################################################
### chunk number 88: 
###################################################
widgetTargetTypes <- list(
## target -- string representing the drag type. MIME type used.
## flag delimiting drag scope. 0 -- no limit
## info -- application assigned value to identify
text = gtkTargetEntry("text/plain", 0, TARGET.TYPE.TEXT),
pixmap = gtkTargetEntry("image/x-pixmap", 0, TARGET.TYPE.PIXMAP)
)


###################################################
### chunk number 89: 
###################################################
w <- gtkWindow(); w['title'] <- "Drag Source"
dragSourceWidget <-  gtkButton("Drag me")
w$add(dragSourceWidget)

QT <- gtkDragSourceSet(dragSourceWidget,
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
### chunk number 90: 
###################################################
w <- gtkWindow(); w['title'] <- "Drop Target"
dropTargetWidget <- gtkButton("Drop here")
w$add(dropTargetWidget)

QT <- gtkDragDestSet(dropTargetWidget,
                     flags="all", 
                     targets=widgetTargetTypes[["text"]],
                     actions="copy"
                     )


###################################################
### chunk number 91: 
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
### chunk number 92: 
###################################################
library(RGtk2)


###################################################
### chunk number 93: textViewBasics
###################################################
tv <- gtkTextView()
sw <- gtkScrolledWindow()
sw$setPolicy("automatic", "automatic")
sw$add(tv)

w <- gtkWindow(); w$add(sw)

tv['editable'] <- TRUE                  
tv['cursor-visible'] <- TRUE            
tv['wrap-mode'] <- "word"             # GtkWrapMode value
tv['justification'] <- "left"         # GtkJustification value
tv['left-margin'] <- 20               # 0 is default

tb <- tv$getBuffer()                    
tb$setText("the quick brown fox jumped over the lazy dog")

font.str <- "Serif, monospace bold italic 8"
font <- pangoFontDescriptionFromString(font.str)
tv$modifyFont(font)


###################################################
### chunk number 94: 
###################################################
## setup example, not shown
w <- gtkWindow()
tv <- gtkTextView()
w$add(tv)


###################################################
### chunk number 95: FindWordAtMouseClick
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
### chunk number 96: 
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
### chunk number 97: 
###################################################
## make a *basic* terminal in RGtk2
library(RGtk2)


###################################################
### chunk number 98: TextViewWidget
###################################################
tv <- gtkTextView()
tb <- tv$getBuffer()
font <- pangoFontDescriptionFromString("Monospace")
tv$modifyFont(font)                     # widget wide


###################################################
### chunk number 99: 
###################################################
tb$setData("textview", tv)


###################################################
### chunk number 100: 
###################################################
aTag <- tb$createTag(tag.name="cmdInput")
aTag <- tb$createTag(tag.name="cmdOutput", 
                     weight=PangoWeight["bold"])
aTag <- tb$createTag(tag.name="cmdError", 
                     weight=PangoStyle["italic"], foreground="red")
aTag <- tb$createTag(tag.name="uneditable", editable=FALSE)


###################################################
### chunk number 101: 
###################################################
startCmd <- gtkTextMark("startCmd", left.gravity=TRUE)
tb$addMark(startCmd, tb$getStartIter()$iter)


###################################################
### chunk number 102: 
###################################################
moveViewport <- function(obj) {
  tv <- obj$getData("textview")
  endIter <- obj$getEndIter()
  QT <- tv$scrollToIter(endIter$iter, 0)
}


###################################################
### chunk number 103: 
###################################################
addPrompt <- function(obj, prompt=c("prompt","continue"), 
                      setMark=TRUE) {
  prompt <- match.arg(prompt)
  prompt <- getOption(prompt)
  
  endIter <- obj$getEndIter()
  obj$insert(endIter$iter, prompt)
  tv <- obj$getData("textview")
  if(setMark)
    obj$moveMarkByName("startCmd", endIter$iter)
}
addPrompt(tb) ## place an initial prompt


###################################################
### chunk number 104: addOutput
###################################################
addOutput <- function(obj, output, tagName="cmdOutput") {
  if(length(output) > 100)              # shorten if needed
    out <- c(output[1:100], "...")

  endIter <- obj$getEndIter()
  if(length(output) > 0) 
    sapply(output, function(i)  {
      obj$insertWithTagsByName(endIter$iter, i, tagName)
      obj$insert(endIter$iter, "\n", len=-1)
    })
  
  addPrompt(obj, "prompt", setMark=TRUE)
  obj$applyTagByName("uneditable", obj$getStartIter()$iter, 
                     obj$getEndIter()$iter)
  moveViewport(obj)
}


###################################################
### chunk number 105: 
###################################################
## not shown in example
addErrorMessage <- function(obj, msg) {
  ## add error message to end of buffer, new line with continuation prompt
  endIter <- obj$getEndIter()
  obj$insert(endIter$iter, "\n", len=-1)
  sapply(msg, function(i) {
    obj$insertWithTagsByName(endIter$iter, i,  "cmdError")
    obj$insert(endIter$iter, "\n", len=-1)
  })
  addPrompt(obj, "prompt", setMark=TRUE)
  moveViewport(obj)  
}


###################################################
### chunk number 106: 
###################################################
findCMD <- function(obj) {
  endIter <- obj$getEndIter()
  startIter <- obj$getIterAtMark(startCmd)
  cmd <- obj$getText(startIter$iter, endIter$iter, TRUE)

  cmd <- unlist(strsplit(cmd, "\n[+] ")) # hardcoded "+"
  cmd
}


###################################################
### chunk number 107: 
###################################################
evalCMD <- function(obj, cmd) {
  cmd <- paste(cmd, sep="\n")
  out <- try(parse(text=cmd), silent=TRUE)
  if(inherits(out, "try-error")) {
    if(length(grep("end", out))) {      # unexpected end of input
      ## continue
      addPrompt(obj, "continue", setMark=FALSE)
      moveViewport(obj)
    } else {
      ## error
      addErrorMessage(obj, out)
    }
    return()
  }
  addHistory(obj, cmd)  ## if keeping track of history
  
  out <- capture.output(eval(parse(text = cmd), envir=.GlobalEnv))
  addOutput(obj, out)
}


###################################################
### chunk number 108: connectBinding
###################################################
ID <- gSignalConnect(tv, "key-release-event", f=function(w, e, data) {
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
### chunk number 109: makeGUI
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
### chunk number 110: 
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
### chunk number 111: NotShown
###################################################
## Not shown, but this shows how to add a button to a text view widget
b <- gtkButton("click me")              # child
end <- tb$getEndIter()$iter             # get  an iter
anchor <- tb$createChildAnchor(end)     # make anchor
tv$addChildAtAnchor(b, anchor)          # set widget at anchor


###################################################
### chunk number 112: 
###################################################
data(Cars93, package="MASS")            # mix of classes
model <- rGtkDataFrame(Cars93)
model[1, 4] <- 12
model[1, 4]                              # get value


###################################################
### chunk number 113: 
###################################################
QT <- model$setFrame(Cars93[1:5, 1:5])


###################################################
### chunk number 114: AppendListStore
###################################################
lstore <- gtkListStore("gchararray")
QT <- sapply(Cars93[,1], function(i) {
  iter <- lstore$append()
  if(is.null(iter$retval)) 
    lstore$setValue(iter$iter, 0, i)
})


###################################################
### chunk number 115: 
###################################################
iter <- lstore$getIterFirst()           # first row
lstore$getValue(iter$iter, column = 0)


###################################################
### chunk number 116: 
###################################################
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
### chunk number 117: 
###################################################
iter <- tstore$getIterFromString("0:0") #  the 1st child of root
tstore$getValue(iter$iter,column=0)$value


###################################################
### chunk number 118: PreviousIter
###################################################
gtkTreeModelIterPrev <- function(object, iter) {
  path <- object$getPath(iter)
  ret <- path$prev()
  if(ret)
    return(list(retval=NULL, iter=object$getIter(path)$iter))
  else
    return(list(retval=FALSE,iter=NA))
}


###################################################
### chunk number 119: cr-right-aligned
###################################################
cr <- gtkCellRendererText()
cr['xalign'] <- 1                       # default 0.5 = centered
cr['family'] <- "Helvetica"  


###################################################
### chunk number 120: CellRendererPixbufExample
###################################################
cr <- gtkCellRendererPixbuf()
cr['stock.id'] <- "gtk-ok" ## or from a column in a model


###################################################
### chunk number 121: 
###################################################
data("Cars93", package="MASS")
dfNames <- c("mtcars", "Cars93")
dfModel <- rGtkDataFrame(dfNames)
dfCb <- gtkComboBoxEntryNewWithModel(dfModel, text.column=0)


###################################################
### chunk number 122: 
###################################################
variableNames <- character(0)
varModel <- rGtkDataFrame(variableNames)
varCb <- gtkComboBoxNewWithModel(varModel)
cr <- gtkCellRendererText()
varCb$packStart(cr)
varCb$addAttribute(cr, "text", 0)       # column 1


###################################################
### chunk number 123: notShown
###################################################
## Our basic GUI uses a table for layout. Comboboxes fill and expand to fill the cell.
tbl <- gtkTableNew(rows=2, columns=2, homogeneous=FALSE)
tbl$attach(gtkLabel("Data frame"), left.attach=0,1, top.attach=0,1)
tbl$attach(dfCb, left.attach=1,2, top.attach=0,1)

tbl$attach(gtkLabel("Variables"), left.attach=0,1, top.attach=1,2)
tbl$attach(varCb, left.attach=1,2, top.attach=1,2)


###################################################
### chunk number 124: 
###################################################
w <- gtkWindow(show=FALSE)
w['title'] <- "Example of comboboxes"
g <- gtkHBox()
g$packStart(tbl, padding=15)
w$add(g)
w$showAll()


###################################################
### chunk number 125: 
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


###################################################
### chunk number 126: 
###################################################
QT <- gSignalConnect(dfCb, "changed", f=newDfSelected,
                     user.data.first=TRUE,
                     data=varCb)
QT <- gSignalConnect(dfCb$getChild(), "activate", f=newDfSelected,
                     user.data.first=TRUE,
                     data=varCb)
QT <- gSignalConnect(varCb, "changed", f=function(w, ...) {
  model <- w$getModel()
  iter <- w$getActiveIter()
  val <- model$getValue(iter$iter, column=0)
  print(val$value)                      # add real purpose
})


###################################################
### chunk number 127: 
###################################################
## Example of combo box for colors

library(grid)
library(RGtk2)


###################################################
### chunk number 128: makePixbuf
###################################################
makePixbufFromColor <- function(color) {
  filename <- tempfile()
  png(file=filename, width=25,height=10)
  grid.newpage()
  grid.draw(rectGrob(gp = gpar(fill = color)))
  dev.off()
  image <- gdkPixbufNewFromFile(filename)
  unlink(filename)
  return(image$retval)
}


###################################################
### chunk number 129: 
###################################################
store <- gtkListStore(c("GObject","gchararray"))


###################################################
### chunk number 130: theColors eval=FALSE
###################################################
## theColors <- palette()                  # some colors
## for(i in theColors) {
##   iter <- store$append()
##   store$setValue(iter$iter, 0, makePixbufFromColor(i))
##   store$setValue(iter$iter, 1, i)
## }


###################################################
### chunk number 131: comboBox eval=FALSE
###################################################
## combobox <- gtkComboBox(model=store)
## ## pixbuf
## crp <- gtkCellRendererPixbuf(); crp['xalign'] <- 0
## combobox$packStart(crp, expand=FALSE)                
## combobox$addAttribute(crp, "pixbuf", 0)
## ## text
## crt <- gtkCellRendererText(); 
## crt['xpad'] <- 5                        # give some space
## combobox$packStart(crt)
## combobox$addAttribute(crt, "text", 1)


###################################################
### chunk number 132:  eval=FALSE
###################################################
## ## display in a window
## win <- gtkWindow(show=FALSE)
## win$setTitle("Color test")
## win$add(combobox)
## win$showAll()


###################################################
### chunk number 133: 
###################################################
require(RGtk2)


###################################################
### chunk number 134: AppendWords
###################################################
entry <- gtkEntry()
completion <- gtkEntryCompletionNew()
entry$setCompletion(completion)


###################################################
### chunk number 135: SetCompletion
###################################################
store <- rGtkDataFrame(state.name)
completion$setModel(store)
completion$setTextColumn(0)             # which column in model
completion['inline-completion'] <- TRUE # inline with text edit
completion['popup-single-match'] <- FALSE


###################################################
### chunk number 136: SetMatchFunc
###################################################
f <- function(comp, str, iter, user.data) {
  model <- comp$getModel()
  rowVal <- model$getValue(iter, 0)$value   # column 0 in model
  
  str <- comp$getEntry()$getText()      # case sensitive
  grepl(str, rowVal)
}
QT <- completion$setMatchFunc(func=f)


###################################################
### chunk number 137: notShown
###################################################
## Our basic GUI is basic:
w <- gtkWindow(show=FALSE)
w$setTitle("Test of entry with completion")
w$add(entry)
w$showAll()


###################################################
### chunk number 138: cellRendererToggle
###################################################
cr <- gtkCellRendererToggle()
cr['activatable'] <- TRUE               # cell can be edited
cr['active'] <- TRUE
QT <- gSignalConnect(cr, "toggled", function(w, path) {
  print(as.numeric(path) + 1) ## modify model as needed
})


###################################################
### chunk number 139: 
###################################################
cr <- gtkCellRendererCombo()
store <- rGtkDataFrame(state.name)
cr['model'] <- store
cr['text-column'] <- 0
cr['editable'] <- TRUE                  # needed


###################################################
### chunk number 140: comboEditor
###################################################
cr <- gtkCellRendererProgress()
cr["value"] <- 50                       # fixed 50%
cr['orientation'] <- "right-to-left"


###################################################
### chunk number 141: 
###################################################
func <- function(viewCol, cellRend, model, iter, data) {
  curVal <- model$GetValue(iter, 0)$value
  fVal <- sprintf("%.3f", curVal)
  cellRend['text'] <- fVal
  cellRend['xalign'] <- 1
}


###################################################
### chunk number 142: 
###################################################
cr <- gtkCellRendererText()


###################################################
### chunk number 143: editedSignal
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
### chunk number 144: 
###################################################
## example showing how to add a toggle button on left of data display
library(RGtk2)


###################################################
### chunk number 145: FixACRANforSweave
###################################################
repos <- getOption("repos")
repos["CRAN"] <- "http://streaming.stat.iastate.edu/CRAN"
options(repos = repos)


###################################################
### chunk number 146: getUpgradablePackages
###################################################
avail <- available.packages()
installed <- installed.packages()
tmp <- merge(avail, installed, by="Package")
need.upgrade <- with(tmp, as.character(Version.x) 
                     != as.character(Version.y))
d <- tmp[need.upgrade, c(1, 2, 16, 6)]
names(d) <- c("Package", "Available", "Installed", "Depends")


###################################################
### chunk number 147: 
###################################################
doThis <- function(d) print(d)


###################################################
### chunk number 148: 
###################################################
n <- ncol(d)
nms <- names(d)
d$.toggle <- rep(FALSE, nrow(d))
store <- rGtkDataFrame(d)


###################################################
### chunk number 149: 
###################################################
view <- gtkTreeView()
# add toggle
togglevc <- gtkTreeViewColumn()
QT <- view$insertColumn(togglevc, 0)
cr <- gtkCellRendererToggle()
togglevc$packStart(cr)
cr['activatable'] <- TRUE
togglevc$addAttribute(cr, "active", n)
QT <- gSignalConnect(cr, "toggled", function(cr, path, user.data) {
  view <- user.data
  row <- as.numeric(path) + 1
  model <- view$getModel()
  n <- dim(model)[2]
  model[row, n] <- !model[row, n]
},
               data=view)


###################################################
### chunk number 150: 
###################################################
QT <- sapply(1:n, function(i) {
  vc <- gtkTreeViewColumn()
  vc$setTitle(nms[i])
  view$insertColumn(vc, i)

  cr <- gtkCellRendererText()
  vc$packStart(cr)
  vc$addAttribute(cr, "text", i-1)
})


###################################################
### chunk number 151: 
###################################################
view$setModel(store)


###################################################
### chunk number 152: 
###################################################
b <- gtkButton("click me")
QT <- gSignalConnect(b, "clicked", function(w, data) {
  view <- data
  model <- view$getModel()
  n <- dim(model)[2]
  vals <- model[model[, n], -n, drop=FALSE]
  doThis(vals)
}, data=view)


###################################################
### chunk number 153: 
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
### chunk number 154: 
###################################################
df <- data.frame(col=letters[1:3], vis=c(TRUE, TRUE, FALSE))
store <- rGtkDataFrame(df)
filtered <- store$filterNew()
filtered$setVisibleColumn(1)            # 0-based
view <- gtkTreeView(filtered)


###################################################
### chunk number 155: notShown
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
### chunk number 156: basicSort
###################################################
store <- rGtkDataFrame(mtcars)
sorted <- gtkTreeModelSortNewWithModel(store)
#
view <- gtkTreeView(sorted)
vc <- gtkTreeViewColumn()
QT <- view$insertColumn(vc, 0)                  # first column
vc$setTitle("Click to sort")
vc$setClickable(TRUE)
vc$setSortColumnId(0)                   
#
cr <- gtkCellRendererText()
vc$packStart(cr)
vc$addAttribute(cr, "text", 0)


###################################################
### chunk number 157: sort-example
###################################################
f <- function(model, iter1, iter2, user.data) {
  column <- user.data
  val1 <- model$GetValue(iter1, column)$value
  val2 <- model$GetValue(iter2, column)$value
  val1 > val2
}
QT <- sorted$setSortFunc(sort.column.id=0, sort.func=f, 
                         user.data=0)   # column


###################################################
### chunk number 158: notShown
###################################################
## basic GUI
sw <- gtkScrolledWindow()
sw$add(view)
w <- gtkWindow(show=FALSE)
w['title'] <- "Example of sortable tree view"
w$add(sw)
w$show()


###################################################
### chunk number 159: 
###################################################
store <- rGtkDataFrame(mtcars)
view <- gtkTreeView(store)
selection <- view$getSelection()
QT <- selection$setMode("single")


###################################################
### chunk number 160: 
###################################################
## create some tree view columns and cell renderers
vc <- gtkTreeViewColumn()
QT <- view$insertColumn(vc, 0)
cr <- gtkCellRendererText()
vc$PackStart(cr)
vc$addAttribute(cr, "text", 0)
## pack in GUI
sw <- gtkScrolledWindow()
sw$add(view)
##
w <- gtkWindow(show=FALSE)
w['title'] <- "Multiple selection example"
w$Add(sw)
w$show()


###################################################
### chunk number 161: 
###################################################
selection$selectPath(gtkTreePathNewFromString("3")) # set 
# 
curSel <- selection$getSelected()       # retrieve selection
with(curSel, model$getValue(iter, 0)$value) # model, iter


###################################################
### chunk number 162: 
###################################################
selection$setMode("multiple")


###################################################
### chunk number 163: notShown
###################################################
selection$selectPath(gtkTreePathNewFromString("1")) # set for example
selection$selectPath(gtkTreePathNewFromString("2")) # set for example
selection$selectPath(gtkTreePathNewFromString("3")) # set for example


###################################################
### chunk number 164: 
###################################################
curSel <- selection$getSelectedRows()
if(length(curSel$retval)) {
  rows <- sapply(curSel$retval, function(path) {
    as.numeric(path$toString()) + 1
  })
  curSel$model[rows, 1]
}


###################################################
### chunk number 165:  eval=FALSE
###################################################
## sapply(tree.view$getColumns(), function(i) i == column)


###################################################
### chunk number 166: 
###################################################
library(RGtk2)


###################################################
### chunk number 167: 
###################################################
df <- data.frame(state.name)
df$VISIBLE <- rep(TRUE, nrow(df))
store <- rGtkDataFrame(df)


###################################################
### chunk number 168: 
###################################################
filteredStore <- store$filterNew()
filteredStore$setVisibleColumn(ncol(df)-1)      # offset
view <- gtkTreeView(filteredStore)


###################################################
### chunk number 169: 
###################################################
vc <- gtkTreeViewColumn()
cr <- gtkCellRendererText()
vc$packStart(cr, TRUE)
vc$setTitle("Col")
vc$addAttribute(cr, "text", 0)
QT <- view$insertColumn(vc, 0)


###################################################
### chunk number 170: 
###################################################
e <- gtkEntry()
ID <- gSignalConnect(e, "changed", function(w, data) {
  val <- w$getText()
  df <- data$getModel()
  values <- df[,1]
  df[, dim(df)[2]] <- sapply(values, function(i) 
                             as.logical(length(grep(val,i))))
},
                     data=filteredStore)



###################################################
### chunk number 171: 
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
### chunk number 172: 
###################################################
## also in previous example
addToStockIcons <- function(iconNames, fileNames, stock.prefix="new") {
  iconfactory <- gtkIconFactoryNew()
  
  for(i in seq_along(iconNames)) {
    
    iconsource = gtkIconSourceNew()
    iconsource$setFilename(fileNames[i])
    
    iconset = gtkIconSetNew()
    iconset$addSource(iconsource)
    
    stockName = paste(stock.prefix, "-",iconNames[i],sep="")
    iconfactory$add(stockName, iconset)
    
    items = list(test=list(stockName, iconNames[i],"","",""))
    gtkStockAdd(items)
  }
  iconfactory$AddDefault()
}


###################################################
### chunk number 173: addIcons
###################################################
nms <- c("factor","numeric")
fileNms <- c(system.file("images","factor.gif", package="gWidgets"),
             system.file("images","numeric.gif", package="gWidgets"))
QT <- addToStockIcons(nms, fileNms)


###################################################
### chunk number 174: 
###################################################
d <- data.frame(varNames=c("response", "trt1", "trt2"),
                stock.id=c("new-numeric", "new-factor", "new-factor"),
                leftView  = rep(TRUE, 3),
                rightView = rep(FALSE, 3),
                stringsAsFactors=FALSE)
model <- rGtkDataFrame(d)


###################################################
### chunk number 175: 
###################################################
makeView <- function(model, vis.col) {
  filteredModel <- model$filterNew()
  filteredModel$setVisibleColumn(vis.col - 1)
  tv <- gtkTreeView(filteredModel)
  tv$getSelection()$setMode("multiple")
  ##
  vc <- gtkTreeViewColumn()
  vc$setTitle("Variable")
  tv$insertColumn(vc, 0)
  ##
  cr <- gtkCellRendererPixbuf()
  vc$PackStart(cr, expand=FALSE)
  cr['xalign'] <- 1
  vc$addAttribute(cr, "stock-id", 1)
  ##
  cr <- gtkCellRendererText()
  vc$PackStart(cr, expand=TRUE)
  cr['xalign'] <- 0
  cr['xpad'] <- 5
  vc$addAttribute(cr, "text", 0)

  return(tv)
}


###################################################
### chunk number 176: 
###################################################
views <- list()
views[["left"]] <- makeView(model,3)
views[["right"]] <- makeView(model,4)
selections <- lapply(views, gtkTreeViewGetSelection)


###################################################
### chunk number 177: 
###################################################
buttons <- list()
buttons[["fromLeft"]] <- gtkButton(">")
buttons[["fromRight"]] <- gtkButton("<")


###################################################
### chunk number 178: basicGUI
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
### chunk number 179: 
###################################################
moveSelected <- function(b, user.data) {
  model <- user.data$model

  selection <- selections[[user.data$from]]
  selected <- selection$getSelectedRows()
  if(length(selected$retval)) {
    childRows <- sapply(selected$retval, function(childPath) {
      childRow <- as.numeric(childPath$toString()) + 1
    })
    shownIndices <- which(model[, 2 + user.data$from])
    rows <- shownIndices[childRows]

    model[rows, 2 + user.data$from] <- FALSE
    model[rows, 2 + (3-user.data$from)] <- 
      !model[rows, 2 + user.data$from]
  }
}


###################################################
### chunk number 180: 
###################################################
IDs <- sapply(1:2, function(i) 
              gSignalConnect(buttons[[i]], signal="clicked", 
                             f=moveSelected,
                             data=list(from=i, model=model)))


###################################################
### chunk number 181: disableButtonsIfNoSelection
###################################################
disableButton <- function(sel, data) {
  selected <- sel$getSelectedRows()
  buttons[[data]]$setSensitive(length(selected$retval) != 0)
}
IDs <- sapply(1:2, function(i) 
              gSignalConnect(selections[[i]], signal="changed",
                             f=disableButton,
                             data=i))


###################################################
### chunk number 182: 
###################################################
QT <- sapply(buttons, function(i) i$setSensitive(FALSE))


###################################################
### chunk number 183: notShown
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
### chunk number 184: 
###################################################
store <- rGtkDataFrame(Cars93[,"Model", drop=FALSE])


###################################################
### chunk number 185: makeView
###################################################
view <- gtkTreeView()
vc <- gtkTreeViewColumn()
vc$setTitle("Make")
QT <- view$insertColumn(vc, 0)
cr <- gtkCellRendererText()
vc$packStart(cr)
vc$addAttribute(cr, "text", 0)


###################################################
### chunk number 186: makeGUI
###################################################
w <- gtkWindow(show=FALSE)
w['title'] <- "Example of changing models"
sw <- gtkScrolledWindow()
sw$add(view)
w$add(sw)
w$show()


###################################################
### chunk number 187: 
###################################################
view$setModel(store)               # the rectangular store
view$setModel(tstore)              # or the tree store


###################################################
### chunk number 188: 
###################################################
## tree example
## a variable browser
require(RGtk2)


###################################################
### chunk number 189: SetUpStore
###################################################
store <- gtkTreeStore(rep("gchararray",2))
sstore <- gtkTreeModelSortNewWithModel(store)


###################################################
### chunk number 190: 
###################################################
iter <- store$append(parent=NULL)$iter
store$setValue(iter,column=0, "GlobalEnv")
store$setValue(iter,column=1,"")
iter <- store$append(parent=iter)


###################################################
### chunk number 191: 
###################################################
view <- gtkTreeViewNewWithModel(sstore)
view$getSelection()$setMode(GtkSelectionMode["multiple"])


###################################################
### chunk number 192: 
###################################################
ID <- gSignalConnect(view,signal="row-expanded",
          f = function(view, iter, tpath, user.data) {
            store <- user.data
            p.iter <- tpathToPIter(view, tpath)
            path <- iterToPath(view, p.iter)
            children = getChildren(path)
            addChildren(store, children, parentIter=p.iter)
            ## remove errant 1st offspring. See addChildren
            ci <- store$iterChildren(p.iter)
            if(ci$retval) store$remove(ci$iter)
          },
          data=store)


###################################################
### chunk number 193: 
###################################################
ID <- gSignalConnect(view,signal="row-collapsed",
          f = function(view, iter, tpath, user.data) {
            store <- user.data
            p.iter <- tpathToPIter(view,tpath)

            n = store$iterNChildren(p.iter)
            if(n > 1) { ## n=1 gets removed when expanded
              for(i in 1:(n-1)) {
                child.iter = store$iterChildren(p.iter)
                if(child.iter$retval)
                  store$remove(child.iter$iter)
              }
            }
          }, 
          data=store)


###################################################
### chunk number 194: DoubleClickHandler
###################################################
ID <- gSignalConnect(view,signal="row-activated",
          f = function(view, tpath, tcol) {
            p.iter <- tpathToPIter(view, tpath)
            path <- iterToPath(view, p.iter)
            sel <- view$getSelection()
            out <- sel$getSelectedRows()
            if(length(out) == 0) return(c()) # nothing
            vals <- c()
            for(i in out$retval) {  # multiple selections
              iter <- out$model$getIter(i)$iter
              newValue <- out$model$getValue(iter,0)$value
              vals <- c(vals, newValue)
            }
            print(vals)  # [Replace this]
          })


###################################################
### chunk number 195: addChildren
###################################################
addChildren <- function(store, children, parentIter=NULL) {
  if(nrow(children) == 0) 
    return(NULL)
  for(i in 1:nrow(children)) {
    iter <- store$append(parent=parentIter)$iter
    ## use last column to indicate logical
    sapply(1:(ncol(children) - 1), function(j)              
           store$setValue(iter, column=j-1, children[i,j]))
    ## Add a branch if there are children
    if(children[i, "offspring"])
      store$append(parent=iter)
  }
}


###################################################
### chunk number 196: getChildren
###################################################
getChildren <- function(path=character(0)) {
  pathToObject <- function(path) {      
    x <- try(eval(parse(text=paste(path, collapse="$")),
                  envir=.GlobalEnv), silent=TRUE)
    if(inherits(x, "try-error")) {
      cat(sprintf("Error with %s", path))
      return(NA)
    }
    return(x)
  }

  theChildren <- function(path) {
    if(length(path) == 0)
      ls(envir=.GlobalEnv)
    else
      names(pathToObject(path))
  }
  hasChildren <- function(obj) is.recursive(obj) && !is.null(names(obj))
  
  getType <- function(obj) head(class(obj), n=1)

  children <- theChildren(path)
  objs <- sapply(children,function(i) pathToObject(c(path,i)))
  d <- data.frame(children=children,
                  class=sapply(objs, getType),
                  offspring=sapply(objs, hasChildren))
  ## filter out Gtk ones
  ind = grep("^Gtk", d$class)
  if(length(ind) == 0) return(d) else return(d[-ind,])
}


###################################################
### chunk number 197: trePathToIter
###################################################
tpathToPIter <- function(view, tpath) {
  ## view$getModel -- sstore, again store
  sstore <- view$getModel()
  store <- sstore$getModel()
  uspath <- sstore$convertPathToChildPath(tpath)
  p.iter <- store$getIter(uspath)$iter
  return(p.iter)
}


###################################################
### chunk number 198: IterToPath
###################################################
iterToPath <- function(view, iter) {
  sstore <- view$getModel()
  store <- sstore$getModel()
  string <- store$getPath(iter)$toString()
  indices <- unlist(strsplit(string,":"))
  thePath <- c()
  for(i in seq_along(indices)) {
    path <- paste(indices[1:i],collapse=":")
    iter <- store$getIterFromString(path)$iter
    thePath[i] <- store$getValue(iter,0)$value
  }
  return(thePath[-1])
}


###################################################
### chunk number 199: addRenderer
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
### chunk number 200: exampleGUI
###################################################
## We now place the tree view widget into a basic GUI.
sw <- gtkScrolledWindow()
sw$setPolicy("automatic","automatic")
sw$add(view)

w <- gtkWindow()
w$setTitle("Tree view")
w$add(sw)


###################################################
### chunk number 201: 
###################################################
require(RGtk2)


###################################################
### chunk number 202: DefineAction
###################################################
a <- gtkAction(name="ok", label="_Ok", 
               tooltip="An OK button", stock.id="gtk-ok")
ID <- gSignalConnect(a, "activate", f = function(w, data) {
  print(a$GetName())                    # or some useful thing
})


###################################################
### chunk number 203: ConnectAction
###################################################
b <- gtkButton()
a$connectProxy(b)


###################################################
### chunk number 204: addImageFromStockId
###################################################
b$setImage(a$createIcon('button')) # GtkIconSize value


###################################################
### chunk number 205: showGUI
###################################################
w <- gtkWindow(show=FALSE)
w['title'] <- "Action with button example"
w$add(b)
w$showAll()


###################################################
### chunk number 206: 
###################################################
mb <- gtkMenuBar()
fileMi <- gtkMenuItemNewWithMnemonic(label="_File")
mb$append(fileMi)


###################################################
### chunk number 207: 
###################################################
fileMb <- gtkMenu()
fileMi$setSubmenu(fileMb)


###################################################
### chunk number 208: 
###################################################
open <- gtkMenuItem(label="open")


###################################################
### chunk number 209: 
###################################################
saveAction <- gtkAction("save", "save", "Save object", "gtk-save")
save <- saveAction$CreateMenuItem()


###################################################
### chunk number 210: 
###################################################
quit <- gtkImageMenuItem(label="quit")
quit$setImage(gtkImageNewFromStock("gtk-quit", 
              size=GtkIconSize["menu"]))


###################################################
### chunk number 211: 
###################################################
happy <- gtkCheckMenuItem(label="happy")
happy$setActive(TRUE)


###################################################
### chunk number 212: 
###################################################
items <- list(open, save, happy, gtkSeparatorMenuItem(), quit)
Qt <- sapply(items, function(i) {
       fileMb$append(i)
     })


###################################################
### chunk number 213: 
###################################################
ID <- gSignalConnect(happy, "toggled", function(b,data) {
  if(b$getActive())
    print("User is now happy ;)")
  else
    print("User is unhappy ;(")
})


###################################################
### chunk number 214: 
###################################################
QT <- sapply(list(open, quit, saveAction), function(i) 
       gSignalConnect(i, "activate", f=function(mi, data) {
         cat("item selected\n")
       })
       )


###################################################
### chunk number 215: makeGUI
###################################################
## We make as simple GUI for the menubar.
 w <- gtkWindow(show=FALSE)
w['title'] <- "Menubar example"
w$add(mb)
w$ShowAll()


###################################################
### chunk number 216: "menubar-ex"
###################################################
popup <- gtkMenu()                       # top level

for(i in c("cut","copy","----","paste")) {
  if(i == "----")
    popup$append(gtkSeparatorMenuItem())
  else
    popup$append(gtkMenuItem(i))
}


###################################################
### chunk number 217: 
###################################################
b <- gtkButton("Click me with right mouse button")
w <- gtkWindow(); w$setTitle("Popup menu example")
w$add(b)

ID <- gSignalConnect(b,"button-press-event",
             f = function(w, e, userData) {
               if(e$getButton() == 3 ||
                  (e$getButton() == 1 && # a mac
                   e$getState() == GdkModifierType['control-mask'])
                  ) {
                 gtkMenuPopup(userData$mb,
                              button = e$getButton(),
                              activate.time = e$getTime())
                 }
               return(FALSE)
             },
             data=list(mb=popup)
             )


###################################################
### chunk number 218: 
###################################################
IDs <- sapply(popup$getChildren(), function(i) {
  if(!inherits(i, "GtkSeparatorMenuItem")) # skip these
    gSignalConnect(i, "activate",
                   f = function(w, data) print("replace me"))
})


###################################################
### chunk number 219: 
###################################################
tb <- gtkToolbar()


###################################################
### chunk number 220: 
###################################################
b1 <-  gtkToolButtonNewFromStock("gtk-open") 
tb$add(b1)


###################################################
### chunk number 221: 
###################################################
f <- system.file("images/dataframe.gif", package="gWidgets")
image <- gtkImageNewFromFile(f)
b2 <- gtkToolButton()
b2$setIconWidget(image)
b2$setLabel("Edit")
tb$add(b2)


###################################################
### chunk number 222: 
###################################################
b3 <- gtkToggleToolButtonNewFromStock("gtk-fullscreen")
tb$add(b3)
QT <- gSignalConnect(b3, "toggled", f=function(button, data) {
  if(button$getActive())
    cat("toggle button is depressed\n")
  })


###################################################
### chunk number 223: 
###################################################
QT <- sapply(1:2, function(i) {
  gSignalConnect(tb[[i]], "clicked", function(button, data) {
    cat("You clicked", button$getLabel(), "\n")
  })
})


###################################################
### chunk number 224: MakeToolbarGUI
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
### chunk number 225: not-shown
###################################################
## sample RGtk2 menu
library(RGtk2)


###################################################
### chunk number 226: 
###################################################
uimanager = gtkUIManager()


###################################################
### chunk number 227: 
###################################################
someAction <- function(action,...) 
  statusbar$push(statusbar$getContextId("message"), action$getName())
Quit <- function(...) win$destroy()


###################################################
### chunk number 228: Define-first-action-group
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
### chunk number 229: "Insert action group"
###################################################
QT <- firstActionGroup$addActions(firstActionEntries)
uimanager$insertActionGroup(firstActionGroup, 0) # 0-based


###################################################
### chunk number 230: 
###################################################
helpActionGroup = gtkActionGroup("helpActionGroup")
helpActionEntries = list(
  help = list("Help", "", "_Help", "", "", NULL),
  about = list("About", "gtk-about", "_About", "", "", someAction)
  )
QT <- helpActionGroup$AddActions(helpActionEntries)


###################################################
### chunk number 231: "a toggle action"
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
### chunk number 232: "insert help action group"
###################################################
uimanager$insertActionGroup(helpActionGroup,1)


###################################################
### chunk number 233: "Load UI from file"
###################################################
id <- uimanager$addUiFromFile("ex-menus.xml")


###################################################
### chunk number 234: "Retrieve menubar and toolbar from the uimanager"
###################################################
menubar <- uimanager$getWidget("/menubar")
toolbar <- uimanager$getWidget("/toolbar")


###################################################
### chunk number 235: "define statusbar"
###################################################
statusbar <- gtkStatusbar()


###################################################
### chunk number 236: Define-window-add-accelerator-group
###################################################
win <- gtkWindow(show=TRUE)
win$setTitle("Window example")
accelgroup = uimanager$getAccelGroup()  # add accel group
win$addAccelGroup(accelgroup)


###################################################
### chunk number 237: setup-box
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
### chunk number 238: How-to-set-sensitivity
###################################################
uimanager$getWidget("/menubar/Edit/EditRedo")$setSensitive(FALSE)


###################################################
### chunk number 239: How-to-replace-menuitem-text
###################################################
a <- uimanager$getWidget("/menubar/Edit/EditUndo")
a[[1]]$setText("Undo add text")


###################################################
### chunk number 240:  eval=FALSE
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
### chunk number 241: 
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
### chunk number 242: openFileDialog
###################################################
dlg <- gtkFileChooserDialog(title="Open a file", 
                     parent=NULL, action="open",
                     "gtk-ok", GtkResponseType["ok"],
                     "gtk-cancel", GtkResponseType["cancel"])


###################################################
### chunk number 243: 
###################################################
ID <- gSignalConnect(dlg, "response", f=function(dlg, resp, data) {
  if(resp == GtkResponseType["ok"]) {
    filename <- dlg$getFilename()
    print(filename)
  }
  dlg$destroy()
})


###################################################
### chunk number 244: 
###################################################
fileFilter <- gtkFileFilter()
fileFilter$setName("R files")
dlg$addFilter(fileFilter)
QT <- sapply(c("*.R", "*.Rdata"), 
             function(i) fileFilter$addPattern(i))
QT <- sapply(c("text/plain"), 
             function(i) fileFilter$addMimeType(i))


###################################################
### chunk number 245: 
###################################################
options(prompt="> ")
options(continue="+ ")
options(width=80)


