###################################################
### chunk number 1: 
###################################################
#line 14 "SweaveInput"
options(prompt=" ")
options(continue=" ")
options(width=65)

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
  body(name) <- NULL
  environment(name) <- .GlobalEnv
  name
  ## out <- capture.output(base::args(name))
  ## invisible(cat(out[-length(out)], "\n"))
}


###################################################
### chunk number 2: 
###################################################
#line 48 "SweaveInput"
require(RGtk2)


###################################################
### chunk number 3: gtk-overview-initial-example
###################################################
#line 118 "SweaveInput"
button <- gtkButton("Click Me")
button['image'] <- gtkImage(stock = "gtk-apply", size = "button")
gSignalConnect(button, "clicked", function(x) message("Hello World!"))
window <- gtkWindow(show = FALSE)
window$add(button)
window$showAll()


###################################################
### chunk number 4: gtk-intro-classes-ancestors
###################################################
#line 153 "SweaveInput"
gTypeGetAncestors("GtkWidget")


###################################################
### chunk number 5: gtk-intro-class-interfaces
###################################################
#line 172 "SweaveInput"
gTypeGetInterfaces("GtkWidget")


###################################################
### chunk number 6: intro-constructor-gtkWindow
###################################################
#line 203 "SweaveInput"
window <- gtkWindow("toplevel", show = FALSE)


###################################################
### chunk number 7: gtk-overview-construct-image
###################################################
#line 226 "SweaveInput"
gtkImage(stock = "gtk-apply", size = "button")


###################################################
### chunk number 8: gtk-overview-construct-image-args
###################################################
#line 233 "SweaveInput"
args(gtkImage)


###################################################
### chunk number 9: gtk-overview-objects-value
###################################################
#line 243 "SweaveInput"
a <- -1
abs(a)
a


###################################################
### chunk number 10: gtk-overview-objects-ref
###################################################
#line 251 "SweaveInput"
gtkButtonSetLabel(button, "New text")
gtkButtonGetLabel(button)


###################################################
### chunk number 11: intro-constructor-classes
###################################################
#line 263 "SweaveInput"
class(window)


###################################################
### chunk number 12: intro-constructor-interfaces
###################################################
#line 276 "SweaveInput"
interface(window)


###################################################
### chunk number 13: intro-methods-button
###################################################
#line 312 "SweaveInput"
button <- gtkButton("Hello World")
window$add(button)
window$setDefaultSize(200, 200)


###################################################
### chunk number 14: gtkButtonAddApi
###################################################
#line 324 "SweaveInput"
gtkButtonSayHello <- function(obj, target) 
  obj$setLabel(paste("Hello", target))
button$sayHello("World")
button$getLabel()


###################################################
### chunk number 15: showProperties
###################################################
#line 356 "SweaveInput"
head(names(button), n=8)                 # or b$getPropInfo()


###################################################
### chunk number 16: intro-props-get-set
###################################################
#line 371 "SweaveInput"
image <- gdkPixbuf(filename = imagefile("rgtk-logo.gif"))[[1]]
window$set(icon = image, title = "Hello World 1.0")


###################################################
### chunk number 17: 
###################################################
#line 380 "SweaveInput"
window$setTitle("Hello World 1.0")
window$getTitle()


###################################################
### chunk number 18: intro-props-visible
###################################################
#line 388 "SweaveInput"
window["visible"]


###################################################
### chunk number 19: intro-props-show
###################################################
#line 393 "SweaveInput"
window["visible"] <- TRUE 
window$show() # same effect


###################################################
### chunk number 20: 
###################################################
#line 413 "SweaveInput"
names(gTypeGetSignals("GtkButton"))


###################################################
### chunk number 21: 
###################################################
#line 424 "SweaveInput"
args(gSignalConnect)


###################################################
### chunk number 22: intro-signals-hello-world
###################################################
#line 438 "SweaveInput"
gSignalConnect(button, "clicked", 
               function(widget) print("Hello world!"))


###################################################
### chunk number 23: 
###################################################
#line 467 "SweaveInput"
w <- gtkWindow(); w['title'] <- "test signals"
x <- 1; 
b <- gtkButton("click me"); w$add(b)
ID <- gSignalConnect(b, signal = "clicked", 
                     f = function(widget) {
                       widget$setData("x", 2)
                       x <- 2
                       return(TRUE)
                     })


###################################################
### chunk number 24: 
###################################################
#line 479 "SweaveInput"
b$setData("x", 2)                        # fix non-interactivity


###################################################
### chunk number 25: 
###################################################
#line 483 "SweaveInput"
cat(x, b$getData("x"), "\n") # 1 and 2


###################################################
### chunk number 26: 
###################################################
#line 495 "SweaveInput"
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
### chunk number 27: intro-enum-window eval=FALSE
###################################################
## #line 528 "SweaveInput"
## window <- gtkWindow("toplevel", show = FALSE)


###################################################
### chunk number 28: intro-enum-GtkWindowType
###################################################
#line 543 "SweaveInput"
GtkWindowType


###################################################
### chunk number 29: intro-enum-GtkWidgetFlags
###################################################
#line 557 "SweaveInput"
GtkWidgetFlags


###################################################
### chunk number 30: intro-enum-gtkWidgetFlags
###################################################
#line 566 "SweaveInput"
window$flags()


###################################################
### chunk number 31: intro-enum-toplevel
###################################################
#line 581 "SweaveInput"
(window$flags() & GtkWidgetFlags["toplevel"]) > 0


###################################################
### chunk number 32: 
###################################################
#line 595 "SweaveInput"
while(gtkEventsPending()) 
  gtkMainIteration()


###################################################
### chunk number 33:  eval=FALSE
###################################################
## #line 629 "SweaveInput"
## g <- gtkBuildableNew()
## g$addFromFile("buildable.xml")


###################################################
### chunk number 34:  eval=FALSE
###################################################
## #line 638 "SweaveInput"
## d <- g$getObject("dialog1")
## d$showAll()


###################################################
### chunk number 35:  eval=FALSE
###################################################
## #line 652 "SweaveInput"
## ok_button_clicked <- function(w, userData) {
##   print("hello world")
## }
## g$connectSignals()


###################################################
### chunk number 36: 
###################################################
#line 688 "SweaveInput"
library(RGtk2)


###################################################
### chunk number 37: 
###################################################
#line 726 "SweaveInput"
w <- gtkWindow(show=FALSE)              # use default type
w$setTitle("Window title")              # set window title
w['title']                              # or  use getTitle
w$setDefaultSize(250,300)               # 250 wide, 300 high
w$show()                                # show window


###################################################
### chunk number 38: basic-window-label
###################################################
#line 753 "SweaveInput"
w <- gtkWindow(show=FALSE); w$setTitle("Hello world")
l <- gtkLabel("Hello world")
w$add(l)


###################################################
### chunk number 39: gtk-container-window-delete
###################################################
#line 774 "SweaveInput"
gSignalConnect(w, "delete-event", function(event) {
  gtkMessageDialog(parent=w, flags=0, type="question", buttons=c("yes", "no"),
                   "Are you sure you want to quit?")
  dlg$run() != GtkResponseType["yes"]
})


###################################################
### chunk number 40: gtk-container-window-destroy
###################################################
#line 791 "SweaveInput"
w$destroy()


###################################################
### chunk number 41: 
###################################################
#line 806 "SweaveInput"
## create a window and a dialog window
w <- gtkWindow(show=FALSE); w$setTitle("Top level window")
d <- gtkWindow(show=FALSE); d$setTitle("dialog window")
d$setTransientFor(w)
d$setPosition("center-on-parent")
d$setDestroyWithParent(TRUE)
w$show()
d$show()


###################################################
### chunk number 42: 
###################################################
#line 841 "SweaveInput"
w <- gtkWindow(show=FALSE); w$setTitle("Hello world")
l <- gtkLabel("Hello world")
w$add(l)


###################################################
### chunk number 43: 
###################################################
#line 852 "SweaveInput"
w$getChild()['label']


###################################################
### chunk number 44: gtk-container-brackets
###################################################
#line 860 "SweaveInput"
w[[1]]['label']


###################################################
### chunk number 45:  eval=FALSE
###################################################
## #line 866 "SweaveInput"
## ## leave out?
## l$getParent()


###################################################
### chunk number 46: remove-child-widget-3
###################################################
#line 874 "SweaveInput"
w$remove(l)
w$add(l)


###################################################
### chunk number 47: layout-window-show-first
###################################################
#line 898 "SweaveInput"
w <- gtkWindow(); w$setTitle("Hello world")
l <- gtkLabel("Hello world")
w$add(l)


###################################################
### chunk number 48: layout-window-show-first-alloc
###################################################
#line 914 "SweaveInput"
l$getAllocation()$allocation


###################################################
### chunk number 49: 
###################################################
#line 918 "SweaveInput"
sapply(l$getAllocation()$allocation, function(i) i)


###################################################
### chunk number 50: layout-window-show-later
###################################################
#line 924 "SweaveInput"
w <- gtkWindow(show=FALSE); w$setTitle("Hello world")
l <- gtkLabel("Hello world")
w$add(l)
w$show()
l$getAllocation()$allocation


###################################################
### chunk number 51: 
###################################################
#line 931 "SweaveInput"
sapply(l$getAllocation()$allocation, function(i) i)


###################################################
### chunk number 52: basic-box-homo
###################################################
#line 1007 "SweaveInput"
box <- gtkHBox(TRUE, 5)


###################################################
### chunk number 53: basic-box-homo-nofill
###################################################
#line 1022 "SweaveInput"
button_a <- gtkButton("Button A")
button_b <- gtkButton("Button B")
box$packStart(button_a, fill = FALSE)
box$packStart(button_b, fill = FALSE)


###################################################
### chunk number 54: basic-box-hetero
###################################################
#line 1049 "SweaveInput"
box <- gtkHBox(FALSE, 5)


###################################################
### chunk number 55: 
###################################################
#line 1077 "SweaveInput"
## re create buttons
button_a <- gtkButton("Button A")
button_b <- gtkButton("Button B")


###################################################
### chunk number 56: basic-box-expand
###################################################
#line 1083 "SweaveInput"
box$packStart(button_a, expand = TRUE, fill = FALSE)
box$packStart(button_b, expand = FALSE, fill = FALSE)


###################################################
### chunk number 57: 
###################################################
#line 1124 "SweaveInput"
g <- gtkHBox()
sapply(1:3, function(i) g$packStart(gtkLabel(i)))


###################################################
### chunk number 58: 
###################################################
#line 1128 "SweaveInput"
b3 <- g[[3]]
g$reorderChild(b3, 2 - 1)               # second is 2 - 1


###################################################
### chunk number 59: basic-layout-align-window
###################################################
#line 1138 "SweaveInput"
w <- gtkWindow(); w$setTitle("Hello world")
l <- gtkLabel("Hello world")
w$add(l)


###################################################
### chunk number 60: basic-layout-align-left
###################################################
#line 1161 "SweaveInput"
l["xalign"] <- 0


###################################################
### chunk number 61: basic-layout-align-GtkAlignment
###################################################
#line 1172 "SweaveInput"
w <- gtkWindow(); w$setTitle("Hello world")
a <- gtkAlignment()
a$set(xalign = 0, yalign = 0.5, xscale = 0, yscale = 1)
w$add(a)
l <- gtkLabel("Hello world")
a$add(l)


###################################################
### chunk number 62: 
###################################################
#line 1202 "SweaveInput"
w <- gtkWindow(); w['title'] <- "Parent window"
#
dlg <- gtkMessageDialog(parent=w, 
                        flags="destroy-with-parent",
                        type="question", 
                        buttons="ok",
                        "My message")
dlg['secondary-text'] <- "A secondary message"


###################################################
### chunk number 63: 
###################################################
#line 1230 "SweaveInput"
response <- dlg$run()
if(response == GtkResponseType["cancel"] || # for other buttons
   response == GtkResponseType["close"] ||
   response == GtkResponseType["delete-event"]) {
  ## pass
} else if(response == GtkResponseType["ok"]) {
  print("Ok")
}
dlg$Destroy()


###################################################
### chunk number 64: 
###################################################
#line 1257 "SweaveInput"
dlg <- gtkDialogNewWithButtons(title="Enter a value", 
                       parent=NULL, flags=0,
                       "gtk-ok", GtkResponseType["ok"],
                       "gtk-cancel", GtkResponseType["cancel"],
                       show=FALSE)


###################################################
### chunk number 65: OurDialogsLayout
###################################################
#line 1276 "SweaveInput"
hb <- gtkHBox()
hb['spacing'] <- 10
#
hb$packStart(gtkLabel("Enter a value:"))
entry <- gtkEntry()
hb$packStart(entry)
#
vb <- dlg$getContentArea()
vb$packStart(hb)


###################################################
### chunk number 66: connectResponse
###################################################
#line 1295 "SweaveInput"
ID <- gSignalConnect(dlg, "response", 
                     f=function(dlg, resp, user.data) {
                       if(resp == GtkResponseType["ok"])
                         print(entry$getText()) # Replace this
                       dlg$Destroy()
                     })
dlg$showAll()
dlg$setModal(TRUE)


###################################################
### chunk number 67: openFileDialog
###################################################
#line 1321 "SweaveInput"
dlg <- gtkFileChooserDialog(title="Open a file", 
                            parent=NULL, action="open",
                            "gtk-ok", GtkResponseType["ok"],
                            "gtk-cancel", GtkResponseType["cancel"],
                            show=FALSE)


###################################################
### chunk number 68: 
###################################################
#line 1336 "SweaveInput"
gSignalConnect(dlg, "response", f=function(dlg, resp, data) {
  if(resp == GtkResponseType["ok"]) {
    filename <- dlg$getFilename()
    print(filename)
  }
  dlg$destroy()
})


###################################################
### chunk number 69: 
###################################################
#line 1353 "SweaveInput"
fileFilter <- gtkFileFilter()
fileFilter$setName("R files")
fileFilter$addPattern("*.R")
fileFilter$addPattern("*.Rdata")
dlg$addFilter(fileFilter)


###################################################
### chunk number 70: gtk-container-frame
###################################################
#line 1410 "SweaveInput"
frame <- gtkFrame("Options")
vbox <- gtkVBox()
vbox$packStart(gtkCheckButton("Option 1"), FALSE)
vbox$packStart(gtkCheckButton("Option 2"), FALSE)
frame$add(vbox)


###################################################
### chunk number 71: gtk-container-expander
###################################################
#line 1431 "SweaveInput"
expander <- gtkExpander("Advanced")
expander$add(frame)


###################################################
### chunk number 72: qt-layout-notebook
###################################################
#line 1454 "SweaveInput"
nb <- gtkNotebook()
nb$appendPage(gtkLabel("Page 1"), gtkLabel("Tab 1"))
nb$appendPage(gtkLabel("Page 2"), gtkLabel("Tab 2"))


###################################################
### chunk number 73: qt-layout-notebook-pos
###################################################
#line 1470 "SweaveInput"
nb['tab-pos'] <- "bottom"


###################################################
### chunk number 74: qt-layout-notebook-current
###################################################
#line 1479 "SweaveInput"
nb['page'] <- 1
nb['page']


###################################################
### chunk number 75: 
###################################################
#line 1517 "SweaveInput"
gtkNotebookInsertPageWithCloseButton <- 
  function(object, child, label.text="", position=-1) {
    label <- gtkHBox()
    label$packStart(gtkLabel(label.text))
    icon <- gtkImage(pixbuf = 
            object$renderIcon("gtk-close", "button", size="menu"))
    closeButton <- gtkButton()
    closeButton$setImage(icon)
    closeButton$setRelief("none")
    label$packEnd(closeButton)
    gSignalConnect(closeButton, "clicked", function(b) {
      index <- nb$pageNum(child)
      nb$removePage(index)
    })
    object$insertPage(child, label, position)
  }


###################################################
### chunk number 76: 
###################################################
#line 1537 "SweaveInput"
w <- gtkWindow()
nb <- gtkNotebook(); w$add(nb)
nb$insertPageWithCloseButton(gtkButton("hello"), 
                             label.text="page 1")
nb$insertPageWithCloseButton(gtkButton("world"), 
                             label.text="page 2")


###################################################
### chunk number 77: gtk-container-scrolled-device
###################################################
#line 1566 "SweaveInput"
library(cairoDevice)
device <- gtkDrawingArea()
device$setSizeRequest(600, 400)
asCairoDevice(device)


###################################################
### chunk number 78: gtk-container-scrolled-construct
###################################################
#line 1574 "SweaveInput"
scrolled <- gtkScrolledWindow()
scrolled$addWithViewport(device)


###################################################
### chunk number 79: gtk-container-scrolled-zoom
###################################################
#line 1590 "SweaveInput"
zoomPlot <- function(x = 2.0) {
  allocation <- device$getAllocation()$allocation
  device$setSizeRequest(allocation$width * x, allocation$height * x)
  updateAdjustment <- function(adj) {
    adj$setValue(x * adj$getValue() + (x - 1) * adj$getPageSize() / 2)
  }
  updateAdjustment(scrolled$getHadjustment())
  updateAdjustment(scrolled$getVadjustment())
}


###################################################
### chunk number 80: gtk-container-scrolled-key-press
###################################################
#line 1612 "SweaveInput"
gSignalConnect(scrolled, "key-press-event", function(x, event) {
  key <- event[["keyval"]]
  if (key == GDK_plus)
    zoomPlot(2.0)
  else if (key == GDK_minus)
    zoomPlot(0.5)
  TRUE
})


###################################################
### chunk number 81: gtk-container-scrolled-window
###################################################
#line 1625 "SweaveInput"
win <- gtkWindow(show = FALSE)
win$add(scrolled)
win$showAll()


###################################################
### chunk number 82: gtk-container-scrolled-plot
###################################################
#line 1632 "SweaveInput"
plot(mpg ~ hp, data = mtcars)


###################################################
### chunk number 83: gtk-container-paned-construct
###################################################
#line 1660 "SweaveInput"
paned <- gtkHPaned()


###################################################
### chunk number 84: gtk-container-paned-add
###################################################
#line 1668 "SweaveInput"
paned$add1(gtkLabel("Left (1)"))
paned$add2(gtkLabel("Right (2)"))


###################################################
### chunk number 85: gtk-container-paned-pack
###################################################
#line 1681 "SweaveInput"
paned$pack1(gtkLabel("Left (1)"), resize = TRUE, shrink = TRUE)
paned$pack2(gtkLabel("Right (2)"), resize = TRUE, shrink = TRUE)


###################################################
### chunk number 86: 
###################################################
#line 1711 "SweaveInput"
## layout a basic dialog -- center align
library(RGtk2)


###################################################
### chunk number 87: gtk-container-table-construct
###################################################
#line 1724 "SweaveInput"
tbl <- gtkTable(rows=3, columns=2, homogeneous=FALSE)


###################################################
### chunk number 88: 
###################################################
#line 1733 "SweaveInput"
sizeLabel <- gtkLabel("Sample size:")
sizeCombo <- gtkComboBoxNewText()
sapply(c(5, 10, 15, 30), sizeCombo$appendText)

diagLabel <- gtkLabel("Diagnostic:")
diagRadios <- gtkVBox()
rb <- list()
rb$t <- gtkRadioButton(label="t-statistic")
rb$mean <- gtkRadioButton(rb, label="mean")
rb$median <- gtkRadioButton(rb, label="median")
sapply(rb, diagRadios$packStart)
submitBox <- gtkVBox()
submitBox$packEnd(gtkButton("Run simulation"), expand = FALSE)


###################################################
### chunk number 89: gtk-container-layout-align
###################################################
#line 1751 "SweaveInput"
sizeLabel['xalign'] <- 1
diagLabel['xalign'] <- 1; diagLabel['yalign'] <- 0
diagAlign <- gtkAlignment(xalign = 0)
diagAlign$add(diagRadios)


###################################################
### chunk number 90: 
###################################################
#line 1783 "SweaveInput"
tbl$attach(sizeLabel, left.attach=0,1, top.attach=0,1, 
           xoptions = c("expand", "fill"), yoptions="")
tbl$attach(sizeCombo, left.attach=1,2, top.attach=0,1, 
           xoptions="fill", yoptions="")
#
tbl$attach(diagLabel, left.attach=0,1, top.attach=1,2, 
           xoptions = c("expand", "fill"), 
           yoptions=c("expand", "fill"))
#
tbl$attach(diagAlign, left.attach=1,2, top.attach=1,2, 
           xoptions=c("expand", "fill"), yoptions = "")
#
tbl$attach(submitBox, left.attach=1,2, top.attach=2,3, 
           xoptions="", yoptions=c("expand", "fill"))


###################################################
### chunk number 91: gtk-container-table-spacing
###################################################
#line 1808 "SweaveInput"
tbl$setColSpacing(0, 5)


###################################################
### chunk number 92: 
###################################################
#line 1813 "SweaveInput"
w <- gtkWindow(show=FALSE)
w['border-width'] <- 14
w$setTitle("GtkTable Example")
w$add(tbl)


###################################################
### chunk number 93: 
###################################################
#line 1820 "SweaveInput"
w$show()                             


###################################################
### chunk number 94: ButtonConstructors
###################################################
#line 1839 "SweaveInput"
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
g$packStart(gtkButtonNewWithMnemonic("_Mnemonic") )
w$show()


###################################################
### chunk number 95: CallbackExampleForButton
###################################################
#line 1896 "SweaveInput"
w <- gtkWindow(); b <- gtkButton("click me");
w$add(b)

ID <- gSignalConnect(b,"button-press-event",   # just mouse
                     f = function(w,e,data) {
                       print(e$getButton())    # which button
                       return(FALSE)           # propagate
                     })
ID <- gSignalConnect(b,"clicked",              # keyboard too
                     f = function(w,...) {
                       print("clicked")
                     })


###################################################
### chunk number 96: gtk-widget-button-sensitive
###################################################
#line 1916 "SweaveInput"
b$setSensitive(FALSE)


###################################################
### chunk number 97: MacOSXstyleButton
###################################################
#line 1948 "SweaveInput"
## not shown
w <- gtkWindow(show=FALSE)
w$setTitle("MAC OS X style buttons")
g <- gtkHButtonBox()
fg <- gtkHBox()
fg$setSizeRequest(width=800, height=-1)
w$add(fg)

hbox <- gtkHBox()
fg$packStart(hbox, padding=15)              # for size grip


###################################################
### chunk number 98: StockButtons
###################################################
#line 1970 "SweaveInput"
cancel <- gtkButton(stock.id="gtk-cancel")
ok <- gtkButton(stock.id="gtk-ok")
delete <- gtkButton(stock.id="gtk-delete")


###################################################
### chunk number 99: macButtonPack
###################################################
#line 1978 "SweaveInput"
hbox$packEnd(ok, padding=0)
hbox$packEnd(cancel, padding=12)
hbox$packEnd(delete, padding=12)
hbox$packEnd(gtkLabel(""), expand=TRUE, fill=TRUE)


###################################################
### chunk number 100: 
###################################################
#line 1994 "SweaveInput"
ok$grabFocus()


###################################################
### chunk number 101: 
###################################################
#line 1998 "SweaveInput"
## not shown
w$showAll()


###################################################
### chunk number 102: gtkHButtonBoxExample
###################################################
#line 2002 "SweaveInput"
## not shown
## Had we only wanted to use a button box
w <- gtkWindow()
bb <- gtkHButtonBox()
w$add(bb)

bb$add(gtkButton(stock.id="gtk-delete"))
bb$add(gtkButton(stock.id="gtk-cancel"))
bb$add(gtkButton(stock.id="gtk-ok"))


###################################################
### chunk number 103: gtk-widget-label-window
###################################################
#line 2048 "SweaveInput"
w <- gtkWindow(show=FALSE); w$setTitle("Label formatting")
w$setSizeRequest(250,300)               # narrow
g <- gtkVBox(spacing=2); g$setBorderWidth(5); w$add(g)


###################################################
### chunk number 104: LabelFormatting
###################################################
#line 2053 "SweaveInput"
string <- "the quick brown fox jumped over the lazy dog"
## wrap by setting number of characters
basicLabel <- gtkLabel(string)
basicLabel$setLineWrap(TRUE)
basicLabel$setWidthChars(35)            # no. characters

## Set ellipsis to shorten long text
ellipsized <- gtkLabel(string)
ellipsized$setEllipsize("middle")

## Right justify text lines
## use xalign property for aligning entire block
rightJustified <- gtkLabel("right justify"); 
rightJustified$setJustify("right")
rightJustified['xalign'] <- 1

## PANGO markup
pangoLabel <- gtkLabel()
tmpl <- "<span foreground='blue' size='x-small'>%s</span>"
pangoLabel$setMarkup(sprintf(tmpl, string))
#
sapply(list(basicLabel, ellipsized, rightJustified, pangoLabel), 
       g$packStart, expand = TRUE, fill = TRUE)
w$showAll()


###################################################
### chunk number 105: 
###################################################
#line 2141 "SweaveInput"
library(RGtk2)


###################################################
### chunk number 106: 
###################################################
#line 2152 "SweaveInput"
w <- gtkWindow(show=FALSE); w$setTitle("Graphic window");
w$setSizeRequest(400,400)
hbox <- gtkHBox(); w$add(hbox)
w$showAll()


###################################################
### chunk number 107: 
###################################################
#line 2164 "SweaveInput"
theSize <- g$getAllocation()$allocation
width <- theSize$width; height <- theSize$height


###################################################
### chunk number 108: 
###################################################
#line 2172 "SweaveInput"
require(cairoDevice)
pixmap <- gdkPixmap(drawable = NULL, 
                    width = width, height = height, depth = 24)
asCairoDevice(pixmap)
hist(rnorm(100))


###################################################
### chunk number 109:  eval=FALSE
###################################################
## #line 2182 "SweaveInput"
## image <- gtkImage(pixmap = pixmap)
## hbox$packStart(image, expand=TRUE, fill = TRUE)


###################################################
### chunk number 110: notShown
###################################################
#line 2189 "SweaveInput"
## Work this into an example ###
makeIconRGtk2 <- function(w, giffile) {
  if(checkPtrType(w, "GtkWindow")) {
    img <- gdkPixbufNewFromFile(giffile)
    if(!is.null(img$retval))
      w$setIcon(img$retval)
  }
}


###################################################
### chunk number 111: gtkStockListIds
###################################################
#line 2221 "SweaveInput"
head(unlist(gtkStockListIds()), n=3)   


###################################################
### chunk number 112: gtk-widget-entry
###################################################
#line 2277 "SweaveInput"
e <- gtkEntry()


###################################################
### chunk number 113: gtk-widget-entry-activate
###################################################
#line 2287 "SweaveInput"
gSignalConnect(e, "activate", function() {
  message("Text entered: ", e$getText())
})


###################################################
### chunk number 114: InsertDeleteText
###################################################
#line 2309 "SweaveInput"
e$setText("Where did that guy go?")
add.pos <- regexpr("guy", e['text']) - 1 # before "guy"
ret <- e$insertText("@$#%! ", position = add.pos)
e$getText()                             # or e['text']
e$deleteText(start = add.pos, end = ret$position)
e$getText()


###################################################
### chunk number 115: gtk-widget-entry-validate
###################################################
#line 2346 "SweaveInput"
validatedEntry <- gtkEntry()
gSignalConnect(validatedEntry, "changed", function(entry) {
  text <- entry$getText()
  if (nzchar(gsub("[a-zA-Z]", "", text))) {
    entry$setIconFromStock("primary", "gtk-no")
    validatedEntry$setIconTooltipText("primary", 
                                 "Only letters are allowed")
  }
  else { 
    entry$setIconFromStock("primary", "gtk-yes")
    validatedEntry$setIconTooltipText("primary", NULL)
  }
})
validatedEntry$setIconFromStock("primary", "gtk-yes")


###################################################
### chunk number 116: 
###################################################
#line 2362 "SweaveInput"
w <- gtkWindow(show=FALSE)
w$add(validatedEntry)
w$showAll()


###################################################
### chunk number 117: gtk-widget-check-button
###################################################
#line 2383 "SweaveInput"
cb <- gtkCheckButton("Option")


###################################################
### chunk number 118: gtk-widget-check-button-active
###################################################
#line 2389 "SweaveInput"
cb['active']
cb['active'] <- TRUE


###################################################
### chunk number 119: gtk-widget-check-button-toggle
###################################################
#line 2397 "SweaveInput"
gSignalConnect(cb, "toggled", function(x) {
  message("Button is ", if (x$active) "active" else "inactive")
})


###################################################
### chunk number 120: RadioGroupExample
###################################################
#line 2425 "SweaveInput"
labels <- c("two.sided", "less", "greater")
radiogp <- list()                           # list for group
radiogp[[labels[1]]] <- gtkRadioButton(label=labels[1]) 
for(label in labels[-1]) 
  radiogp[[label]] <- gtkRadioButton(radiogp, label=label)


###################################################
### chunk number 121: 
###################################################
#line 2440 "SweaveInput"
w <- gtkWindow(); w$setTitle("Radio group example")
g <- gtkVBox(FALSE, 5); w$add(g)
sapply(radiogp, gtkBoxPackStart, object = g)


###################################################
### chunk number 122: 
###################################################
#line 2447 "SweaveInput"
g[[3]]$setActive(TRUE)           
sapply(radiogp, `[`, "active") 


###################################################
### chunk number 123: 
###################################################
#line 2454 "SweaveInput"
sapply(radiogp, gSignalConnect, "toggled",     # connect each
       f = function(w, data) {
         if(w['active']) # set before callback
           message("clicked", w$getLabel(),"\n")
       })


###################################################
### chunk number 124: 
###################################################
#line 2468 "SweaveInput"
radiogp <- gtkRadioButton(label=labels[1])
btns <- sapply(labels[-1], gtkRadioButtonNewWithLabelFromWidget, 
               group = radiogp)
w <- gtkWindow()
w['title'] <- "Radio group example"
g <- gtkVBox(); w$add(g)
sapply(rev(radiogp$getGroup()), gtkBoxPackStart, object = g)


###################################################
### chunk number 125: gtk-widget-combo
###################################################
#line 2498 "SweaveInput"
combo <- gtkComboBoxNewText()
sapply(c("two.sided", "less", "greater"), combo$appendText)


###################################################
### chunk number 126: gtk-widget-combo-active
###################################################
#line 2507 "SweaveInput"
combo['active']


###################################################
### chunk number 127: gtk-widget-combo-changed
###################################################
#line 2516 "SweaveInput"
gSignalConnect(combo, "changed",
               f = function(w, ...) {
                 if(w$getActive() < 0) 
                   cat("No value selected\n")
                 else
                   cat("Value is", w$getActiveText(), "\n")
               })


###################################################
### chunk number 128: ComboBoxExample
###################################################
#line 2532 "SweaveInput"
## An example of two comboboxes where 1 updates the other
require(RGtk2)
data(mtcars); library(MASS); data(Cars93) # need some data frames


###################################################
### chunk number 129: 
###################################################
#line 2542 "SweaveInput"
#library(ProgGUIinR)                     # for avail_dfs, find_vars
source("~/GUI/ProgGUIInR/R/misc.R")


###################################################
### chunk number 130: Widgets
###################################################
#line 2548 "SweaveInput"
w <- gtkWindow(show=FALSE)
w$setTitle("gtkComboBox example")

df_combo <- gtkComboBoxNewText()
var_combo <- gtkComboBoxNewText()


###################################################
### chunk number 131: Layout
###################################################
#line 2559 "SweaveInput"
g <- gtkVBox(); w$add(g)
#
g1 <- gtkHBox(); g$packStart(g1)
g1$packStart(gtkLabel("Data frames:"))
g1$packStart(df_combo)
#
g2 <- gtkHBox(); g$packStart(g2)
g2$packStart(gtkLabel("Variable:"))
g2$packStart(var_combo)
g2$hide()


###################################################
### chunk number 132: configureComboBoxes
###################################################
#line 2575 "SweaveInput"
sapply(avail_dfs(), df_combo$appendText)
df_combo$setActive(-1)
#
gSignalConnect(df_combo, "changed", function(w, ...) {
  var_combo$getModel()$clear()
  sapply(find_vars(w$getActiveText()),  var_combo$appendText)
  g2$show()
})


###################################################
### chunk number 133: 
###################################################
#line 2587 "SweaveInput"
## show window
w$show()


###################################################
### chunk number 134: gtk-widget-slider
###################################################
#line 2610 "SweaveInput"
slider <- gtkHScale(min = 1, max = 100, step = 1)
slider$setValue(10)
slider['value-pos'] <- "bottom"


###################################################
### chunk number 135: gtk-widget-slider-value-changed
###################################################
#line 2627 "SweaveInput"
gSignalConnect(slider, "value-changed",
               f = function(w, ...) {
                 val <- w$getValue() 
                 drawHistogram(val)
               })


###################################################
### chunk number 136: SliderAndHistogram
###################################################
#line 2637 "SweaveInput"
data <- rnorm(100)

library(lattice)
drawHistogram <- function(val) print(histogram(data, nint = val))
drawHistogram(slider$getValue())        

w <- gtkWindow(); w$setTitle("Histogram bin selection")
w$add(slider)


###################################################
### chunk number 137: 
###################################################
#line 2677 "SweaveInput"
## make a range widget combining both a slider and spinbutton to choose a number
library(RGtk2)


###################################################
### chunk number 138: 
###################################################
#line 2684 "SweaveInput"
from <- 0; to <- 100; by <- 1


###################################################
### chunk number 139: 
###################################################
#line 2692 "SweaveInput"
slider <- gtkHScale(min=from, max=to, step=by)
slider['draw-value'] <- FALSE
adjustment <- slider$getAdjustment()
spinbutton <- gtkSpinButton(adjustment = adjustment)


###################################################
### chunk number 140: 
###################################################
#line 2702 "SweaveInput"
g <- gtkHBox()
g$packStart(slider, expand=TRUE, fill=TRUE, padding=5)
g$packStart(spinbutton, expand=FALSE, padding=5)


###################################################
### chunk number 141: 
###################################################
#line 2709 "SweaveInput"
w <- gtkWindow(show=FALSE)
w['title'] <- "Example of a range widget"
w$setSizeRequest(width=200, height=-1)
w$add(g)
w$show()


###################################################
### chunk number 142: 
###################################################
#line 2733 "SweaveInput"
w <- gtkWindow(); w$setTitle("Progress bar example")
pb <- gtkProgressBar()
w$add(pb)
#
pb$setText("Please be patient...")
for(i in 1:100) {
  pb$setFraction(i/100)
  Sys.sleep(0.05) ## replace with a step in the process
}
pb$setText("All done.")


###################################################
### chunk number 143: gtk-widget-progress-pulse
###################################################
#line 2748 "SweaveInput"
pb$pulse()


###################################################
### chunk number 144: gtk-widget-spinner eval=FALSE
###################################################
## #line 2758 "SweaveInput"
## spinner <- gtkSpinner()
## spinner$start()
## spinner$stop()


###################################################
### chunk number 145: installPackagesWizard
###################################################
#line 2799 "SweaveInput"
## gtk Assistant example
require(RGtk2)


###################################################
### chunk number 146: defineAssistant
###################################################
#line 2812 "SweaveInput"
asst <- gtkAssistant(show=FALSE)
asst$setSizeRequest(500, 500)
gSignalConnect(asst, "cancel", function(asst) asst$destroy())


###################################################
### chunk number 147: makePages
###################################################
#line 2820 "SweaveInput"
pages <- lapply(1:5, gtkVBox, spacing=5, homogeneous=FALSE)
page_types <- c("intro", rep("confirm",3), "summary")
sapply(pages, gtkAssistantAppendPage, object=asst)
sapply(pages, gtkAssistantSetPageType, object=asst, 
       type=page_types)


###################################################
### chunk number 148: sideLogo
###################################################
#line 2829 "SweaveInput"
image <- gdkPixbuf(filename = imagefile("rgtk-logo.gif"))[[1]]
sapply(pages, gtkAssistantSetPageSideImage, object=asst, 
       pixbuf=image)


###################################################
### chunk number 149: 
###################################################
#line 2838 "SweaveInput"
populatePage <- list()                
gSignalConnect(asst, "prepare", function(a, w, data) {
  page_no <- which(sapply(pages, identical, w))
  if(!length(w$getChildren()))
    populatePage[[page_no]]()
})


###################################################
### chunk number 150: 
###################################################
#line 2852 "SweaveInput"
asst$setForwardPageFunc(function(i, data) {
  ifelse(i == 0 && have_CRAN(), 2L, as.integer(i + 1))
}, data=NULL)


###################################################
### chunk number 151: 
###################################################
#line 2859 "SweaveInput"
CRAN_package <- NA
install_options <- list() #type, dependencies, lib


###################################################
### chunk number 152: HelperFunctions
###################################################
#line 2864 "SweaveInput"
## Helper functions
##' return value or NA
##'
gtkTreeViewGetSelectedValue <- function(object, column) {
  cur <- object$getSelection()$getSelected()
  if(cur$retval)
    with(cur, object$getModel()$getValue(iter, column -1 )$value)
  else
    NA
}


have_CRAN <- function() getOption("repos")["CRAN"] != "@CRAN@"

##' from getCRANmirrors
set_CRAN <- function(url) {
  if(is.null(url)) return()
  repos <- getOption("repos")
  repos["CRAN"] <- gsub("/$", "", url)
  options(repos=repos)
}


###################################################
### chunk number 153: page1
###################################################
#line 2895 "SweaveInput"
populatePage[[1]] <- function() {
  asst$setPageTitle(pages[[1]], "Install a CRAN package")
  pages[[1]]$packStart(l <- gtkLabel())
  pages[[1]]$packStart(gtkLabel(), expand=TRUE) # a spring
  
  l$setMarkup(paste(
       "<span font='x-large'>Install a CRAN package</span>",
       "This wizard will help install a package from <b>CRAN</b>",
       "If you have not already specified a CRAN repository, one",
       "you will be prompted to do so.",
       sep="\n"))
  asst$setPageComplete(pages[[1]], TRUE)
}


###################################################
### chunk number 154: CRANMirror
###################################################
#line 2912 "SweaveInput"
## Not shown
populatePage[[2]] <- function() {
  asst$setPageTitle(pages[[2]], "Select a CRAN mirror")

  CRAN_mirrors <- getCRANmirrors(all = FALSE, local.only = FALSE)[, c(1,2,4)]
  nms <- names(CRAN_mirrors)
  d <- rGtkDataFrame(CRAN_mirrors)
  #
  view <- gtkTreeView()
  mapply(view$insertColumnWithAttributes, -1, nms[1:2], 
         list(gtkCellRendererText()), text = 0:1)
  view$setModel(d)
  view$getSelection()$unselectAll()     # no selection
  gSignalConnect(view$getSelection(), "changed", function(view, ...) {
    CRAN_repos <- view$getSelectedValue(3)
    set_CRAN(CRAN_repos)
    asst$setPageComplete(pages[[2]], TRUE)
  }, data=view, user.data.first=TRUE)
  
  
  sw <- gtkScrolledWindow(); sw$add(view)
  sw$setPolicy("automatic", "automatic")
  
  pages[[2]]$packStart(gtkLabel("Select a CRAN mirror"), expand=FALSE)
  pages[[2]]$packStart(sw, expand=TRUE, fill=TRUE)

}


###################################################
### chunk number 155: SelectPacakge
###################################################
#line 2943 "SweaveInput"
## Not shown
populatePage[[3]] <- function() {
  asst$setPageTitle(pages[[3]], "Select a CRAN package")
  #
  avail_packages <- available.packages()[, c(1,2)]
  nms <- colnames(avail_packages)
  avail_packages_store <- rGtkDataFrame(avail_packages)
  #
  view <- gtkTreeView()
  mapply(view$insertColumnWithAttributes, -1, nms, 
         list(gtkCellRendererText()), text = 0:1)
  view$setModel(avail_packages_store)
  gSignalConnect(view$getSelection(), "changed", function(view, ...) {
    CRAN_package <<- view$getSelectedValue(1)
    asst$setPageComplete(pages[[3]], TRUE)
  }, data=view, user.data.first=TRUE) 
  view$getSelection()$unselectAll()     # no selection  
  #
  sw <- gtkScrolledWindow(); sw$add(view)
  sw$setPolicy("automatic", "automatic")
  #
  pages[[3]]$packStart(gtkLabel("Select a package to install"), expand=FALSE)
  pages[[3]]$packStart(sw, expand=TRUE, fill=TRUE)
}


###################################################
### chunk number 156: 
###################################################
#line 2974 "SweaveInput"
populatePage[[4]] <- function() {
  asst$setPageTitle(pages[[4]], "Install CRAN package")
  #
  get_desc <- function(pkgname) {
    tpl <- "http://cran.r-project.org/web/packages/%s/DESCRIPTION"
    x <- readLines(sprintf(tpl, pkgname))
    f <- tempfile(); cat(paste(x, collapse="\n"), file=f)
    read.dcf(f)
  }
  pkg_desc <- get_desc(CRAN_package)
  #
  l <- gtkLabel()
  l$setMarkup(paste(
    sprintf("Install package: <b>%s</b>", pkg_desc[1, 'Package']),
    "\n",
    sprintf("%s", pkg_desc[1, 'Description']),
    sep="\n"))
  
  pages[[4]]$packStart(l)
  #
  tbl <- gtkTable()
  pages[[4]]$packStart(tbl, expand=FALSE)
  pages[[4]]$packStart(gtkLabel(), expand=TRUE)
  
  #
  combo <- gtkComboBoxNewText()
  pkg_types <- c("source", "mac.binary", "mac.binary.leopard",
                 "win.binary", "win64.binary")
  sapply(pkg_types, combo$appendText)
  combo$setActive(which(getOption("pkgType") == pkg_types) - 1)
  gSignalConnect(combo, "changed", function(w, ...) {
    install_options[['type']] <<- pkg_types[1 + w$getActive()]
  })
  tbl$attachDefaults(gtkLabel("Package type:"), 0, 1, 0, 1)
  tbl$attachDefaults(combo, 1, 2, 0, 1)

  #
  cb <- gtkCheckButton()
  cb$setActive(TRUE)
  gSignalConnect(cb, "toggled", function(w) {
    install_options[['dependencies']] <<- w$getActive()
  })
  tbl$attachDefaults(gtkLabel("Install dependencies"), 0, 1, 1, 2)
  tbl$attachDefaults(cb, 1, 2, 1, 2)

  #
  fc <- gtkFileChooserButton("Select a directory...", 
                             "select-folder")
  fc$setFilename(.libPaths()[1])
  gSignalConnect(fc, "selection-changed", function(w) {
    dir <- w$getFilename()
    install_options[['lib']] <<- dir
  })
  tbl$attachDefaults(gtkLabel("Where"), 0, 1, 2, 3)
  tbl$attachDefaults(fc, 1, 2, 2, 3)

  asst$setPageComplete(pages[[4]], TRUE)
}


###################################################
### chunk number 157: 
###################################################
#line 3040 "SweaveInput"
populatePage[[5]] <- function() {
  asst$setPageTitle(pages[[5]], "Done")
  install_options$pkgs <- CRAN_package
  out <- try(do.call("install.packages", install_options), 
             silent=TRUE)

  l <- gtkLabel(); pages[[5]]$packStart(l)
  if(!inherits(out, "try-error")) {
    l$setMarkup(sprintf("Package %s installed successfully", 
                        CRAN_package))
  } else {
    l$setMarkup(paste(sprintf("Package %s failed to install", 
                              CRAN_package),
                      paste(out, collapse="\n"),
                      sep="\n"))
  }

  asst$setPageComplete(pages[[5]], FALSE)
}


###################################################
### chunk number 158: showAssistant
###################################################
#line 3064 "SweaveInput"
populatePage[[1]]()
asst$show()


###################################################
### chunk number 159: gtk-cairo-device
###################################################
#line 3088 "SweaveInput"
library(cairoDevice)
device <- gtkDrawingArea()
asCairoDevice(device)
win <- gtkWindow(show=FALSE)
win$add(device)
win$showAll()
plot(mpg ~ hp, data = mtcars)


###################################################
### chunk number 160: gtk-cairo-print-operation
###################################################
#line 3118 "SweaveInput"
printOp <- gtkPrintOperation()


###################################################
### chunk number 161: gtk-cairo-draw-page
###################################################
#line 3131 "SweaveInput"
gSignalConnect(printOp, "draw-page", function(x, context, page_nr) {
  asCairoDevice(context)
  plot(mpg ~ wt, data = mtcars)
})


###################################################
### chunk number 162: gtk-cairo-run-dialog
###################################################
#line 3140 "SweaveInput"
printOp$run(action = "print-dialog", parent = NULL)


###################################################
### chunk number 163: 
###################################################
#line 3167 "SweaveInput"
TARGET.TYPE.TEXT   <- 80                 
TARGET.TYPE.PIXMAP <- 81                  
widgetTargetTypes <- 
  list(text = gtkTargetEntry("text/plain", 0, 
         TARGET.TYPE.TEXT),
       pixmap = gtkTargetEntry("image/x-pixmap", 0, 
         TARGET.TYPE.PIXMAP))


###################################################
### chunk number 164: 
###################################################
#line 3184 "SweaveInput"
w <- gtkWindow(); w['title'] <- "Drag Source"
dragSourceWidget <-  gtkButton("Text to drag")
w$add(dragSourceWidget)

gtkDragSourceSet(dragSourceWidget,
       start.button.mask=c("button1-mask", "button3-mask"),
       targets=widgetTargetTypes[["text"]],
       actions="copy")


###################################################
### chunk number 165: 
###################################################
#line 3205 "SweaveInput"
gSignalConnect(dragSourceWidget, "drag-data-get", 
               function(widget, context, sel, tType, eTime) {
                 sel$setText(widget$getLabel()) 
               })


###################################################
### chunk number 166: 
###################################################
#line 3220 "SweaveInput"
w <- gtkWindow(); w['title'] <- "Drop Target"
dropTargetWidget <- gtkButton("Drop here")
w$add(dropTargetWidget)

gtkDragDestSet(dropTargetWidget,
               flags="all", 
               targets=widgetTargetTypes[["text"]],
               actions="copy")


###################################################
### chunk number 167: 
###################################################
#line 3246 "SweaveInput"
gSignalConnect(dropTargetWidget, "drag-data-received", 
       function(widget, context, x, y, sel, tType, eTime) {
         dropdata <- sel$getText()
         widget$setLabel(rawToChar(dropdata))
       })


###################################################
### chunk number 168: 
###################################################
#line 3268 "SweaveInput"
library(RGtk2)


###################################################
### chunk number 169: 
###################################################
#line 3349 "SweaveInput"
data(Cars93, package="MASS")             # mix of classes
model <- rGtkDataFrame(Cars93)
model[1, 4] <- 12
model[1, 4]                              # get value


###################################################
### chunk number 170: 
###################################################
#line 3370 "SweaveInput"
model$setFrame(Cars93[1:5, 1:5])


###################################################
### chunk number 171: rgtk2-mvc-treeview-construc
###################################################
#line 3395 "SweaveInput"
view <- gtkTreeView(model)


###################################################
### chunk number 172: rgtk2-mvc-insert-column-hardway
###################################################
#line 3407 "SweaveInput"
vc <- gtkTreeViewColumn()
vc$setTitle("Manufacturer")
cr <- gtkCellRendererText()
vc$packStart(cr)
vc$addAttribute(cr, "text", 0)
view$insertColumn(vc, 0)


###################################################
### chunk number 173: rgtk2-mvc-insert-column-easyway
###################################################
#line 3436 "SweaveInput"
view$insertColumnWithAttributes(position = -1, 
     title = "Model", cell = gtkCellRendererText(), text = 1)


###################################################
### chunk number 174: rgtk2-mvc-insert-all-columns
###################################################
#line 3452 "SweaveInput"
view <- gtkTreeView(model)
mapply(view$insertColumnWithAttributes,  -1, colnames(model), 
       list(gtkCellRendererText()), 
       text = seq_len(ncol(model)) - 1)


###################################################
### chunk number 175: rgtk2-mvc-path-constructor-list
###################################################
#line 3525 "SweaveInput"
secondRow <- gtkTreePathNewFromIndices(2)


###################################################
### chunk number 176: rgtk2-mvc-path-constructor-tree
###################################################
#line 3530 "SweaveInput"
abcPath <- gtkTreePathNewFromIndices(c(1, 3, 2))
abcPath <- gtkTreePathNewFromString("1:3:2")


###################################################
### chunk number 177: rgtk2-mvc-iter-traverse
###################################################
#line 3551 "SweaveInput"
iter <- model$getIterFirst()
manufacturer <- character()
while(iter$retval) {
  manufacturer <- c(manufacturer, model$get(iter$iter, 0)[[1]])
  iter$retval <- model$iterNext(iter$iter)
}


###################################################
### chunk number 178: rgtk2-mvc-iter-apply
###################################################
#line 3580 "SweaveInput"
nrows <- model$iterNChildren(NULL)
manufacturer <- sapply(seq(nrows), function(i) {
  iter <- model$iterNthChild(NULL, i)
  model$get(iter$iter, 0)[[1]]
})


###################################################
### chunk number 179: 
###################################################
#line 3633 "SweaveInput"
model <- rGtkDataFrame(mtcars)
view <- gtkTreeView(model)
selection <- view$getSelection()
selection$setMode("single")


###################################################
### chunk number 180: 
###################################################
#line 3645 "SweaveInput"
vc <- gtkTreeViewColumn()
view$insertColumnWithAttributes(0, "title", gtkCellRendererText(), text = 0)
## pack in GUI
sw <- gtkScrolledWindow()
sw$add(view)
##
w <- gtkWindow(show=FALSE)
w['title'] <- "Multiple selection example"
w$add(sw)
w$show()
## some selection
selection$selectPath(gtkTreePathNewFromIndices(3)) # set 
# 


###################################################
### chunk number 181: 
###################################################
#line 3663 "SweaveInput"
curSel <- selection$getSelected()
with(curSel, model$getValue(iter, 0)$value)


###################################################
### chunk number 182: 
###################################################
#line 3676 "SweaveInput"
gSignalConnect(selection, "changed", function(selection) {
  curSel <- selection$getSelectedRows()
  if(length(curSel$retval)) {
    rows <- sapply(curSel$retval, gtkTreePathGetIndices) + 1L
    curSel$model[rows, 1]
  }
})


###################################################
### chunk number 183:  eval=FALSE
###################################################
## #line 3695 "SweaveInput"
## sapply(view$getColumns(), function(i) i == column)


###################################################
### chunk number 184: rgtk2-mvc-sorting-clickable
###################################################
#line 3711 "SweaveInput"
vc <- view$getColumn(0)
vc$setSortColumnId(0)


###################################################
### chunk number 185: rgtk2-mvc-sorting-sortable
###################################################
#line 3720 "SweaveInput"
model$setSortColumnId(0, "ascending")


###################################################
### chunk number 186: basicSort
###################################################
#line 3731 "SweaveInput"
store <- rGtkDataFrame(mtcars)
sorted <- gtkTreeModelSortNewWithModel(store)
view <- gtkTreeView(sorted)
view$insertColumnWithAttributes(0, "Click to sort", 
                                gtkCellRendererText(), text=0)
view$getColumn(0)$setSortColumnId(0)


###################################################
### chunk number 187: sort-example
###################################################
#line 3746 "SweaveInput"
f <- function(model, iter1, iter2, user.data) {
  column <- user.data
  val1 <- model$getValue(iter1, column)$value
  val2 <- model$getValue(iter2, column)$value
  as.integer(val1 - val2)
}
sorted$setSortFunc(sort.column.id=0, sort.func=f)


###################################################
### chunk number 188: notShown
###################################################
#line 3756 "SweaveInput"
## basic GUI
sw <- gtkScrolledWindow()
sw$add(view)
w <- gtkWindow(show=FALSE)
w['title'] <- "Example of sortable tree view"
w$add(sw)
w$show()


###################################################
### chunk number 189: 
###################################################
#line 3779 "SweaveInput"
df <- data.frame(col=letters[1:3], vis=c(TRUE, TRUE, FALSE))
store <- rGtkDataFrame(df)
filtered <- store$filter()
filtered$setVisibleColumn(1)            # 0-based
view <- gtkTreeView(filtered)


###################################################
### chunk number 190: notShown
###################################################
#line 3799 "SweaveInput"
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
### chunk number 191: 
###################################################
#line 3821 "SweaveInput"
library(RGtk2)


###################################################
### chunk number 192: 
###################################################
#line 3836 "SweaveInput"
df <- data.frame(state.name)
df$visible <- rep(TRUE, nrow(df))
store <- rGtkDataFrame(df)


###################################################
### chunk number 193: 
###################################################
#line 3844 "SweaveInput"
filteredStore <- store$filter()
filteredStore$setVisibleColumn(ncol(df)-1)      # offset
view <- gtkTreeView(filteredStore)


###################################################
### chunk number 194: 
###################################################
#line 3851 "SweaveInput"
view$insertColumnWithAttributes(0, "Col", 
                 gtkCellRendererText(), text = 0)


###################################################
### chunk number 195: 
###################################################
#line 3861 "SweaveInput"
e <- gtkEntry()
gSignalConnect(e, "changed", function(w, data) {
  pattern <- w$getText()
  df <- data$getModel()
  values <- df[, "state.name"]
  df[, "visible"] <- grepl(pattern, values)
}, data=filteredStore)


###################################################
### chunk number 196: 
###################################################
#line 3874 "SweaveInput"
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
### chunk number 197: gtk-mvc-cell-explicit
###################################################
#line 3921 "SweaveInput"
renderer <- gtkCellRendererText()
renderer['cell-background'] <- "gray"


###################################################
### chunk number 198: cr-right-aligned
###################################################
#line 3948 "SweaveInput"
cr <- gtkCellRendererText()
cr['xalign'] <- 1                    # default 0.5 = centered
cr['family'] <- "Helvetica"  


###################################################
### chunk number 199: 
###################################################
#line 3975 "SweaveInput"
cr <- gtkCellRendererText()


###################################################
### chunk number 200: editedSignal
###################################################
#line 3978 "SweaveInput"
cr['editable'] <- TRUE
ID <- gSignalConnect(cr, "edited", 
f=function(cr, path, newtext, user.data) {
  i <- as.numeric(path) + 1
  j <- user.data$column
  model <- user.data$model
  model[i, j] <- newtext
}, data=list(model=store, column=1))


###################################################
### chunk number 201: editableTableForCollectingOptions
###################################################
#line 4002 "SweaveInput"
## GUI for configuring options -- in a table
library(RGtk2)


###################################################
### chunk number 202: 
###################################################
#line 4015 "SweaveInput"
opts <- c("main","sub","xlab","ylab", "line","outer")
df <- data.frame(option=opts,
           value=c("","","","","0","FALSE"),
           class=c(rep("character", 4), "integer", "logical"),
           edit_color=rep("gray95", 6),
           dirty = rep(FALSE, 6),
           stringsAsFactors=FALSE)


###################################################
### chunk number 203: model
###################################################
#line 4032 "SweaveInput"
m <- rGtkDataFrame(df)
v <- gtkTreeView(m)


###################################################
### chunk number 204: firstColumn
###################################################
#line 4038 "SweaveInput"
cr <- gtkCellRendererText()
cr['background'] <- 'gray80'
v$insertColumnWithAttributes(position=-1,
                             title="Option",
                             cell=cr,
                             text=1 - 1)


###################################################
### chunk number 205: secondColumn
###################################################
#line 4051 "SweaveInput"
cr <- gtkCellRendererText()
cr['editable'] <- TRUE
v$insertColumnWithAttributes(position = -1,
                             title = "Value",
                             cell = cr,
                             text = 2 - 1,
                             background = 4 - 1
                             )


###################################################
### chunk number 206: editConnect
###################################################
#line 4066 "SweaveInput"
gSignalConnect(cr, "edited", function(cr, path, new.text, 
                                      user.data) {
  m <- user.data$model
  i <- as.numeric(path) + 1; j <- user.data$column
  m[i,j] <- as(as(new.text, m[i, 'class']), "character")   
  m[i, 'dirty'] <- TRUE                     # mark dirty
  m[i, 'edit_color'] <- 'gray70'            # change color
}, data=list(model=m, column=2))


###################################################
### chunk number 207: 
###################################################
#line 4078 "SweaveInput"
w <- gtkWindow(show=FALSE)
w['title'] <- "Option editor"
w$setSizeRequest(300,500)
sw <- gtkScrolledWindow()
w$add(sw)
sw$add(v)
w$show()


###################################################
### chunk number 208: 
###################################################
#line 4102 "SweaveInput"
require(helpr, quietly=TRUE)
package <- "graphics"; topic <- "title"
rd <- helpr:::parse_help(helpr:::pkg_topic(package, topic), 
                         package = package)
descs <- rd$params$args
names(descs) <- sapply(descs, function(i) i$param)


###################################################
### chunk number 209: 
###################################################
#line 4120 "SweaveInput"
v["has-tooltip"] <- TRUE
gSignalConnect(v, "query-tooltip", 
       function(w, x, y, key_mode, tooltip, user.data) {
         out <- w$getTooltipContext(x, y, key_mode)
         if(out$retval) {
           m <- w$getModel()
           i <- as.numeric(out$path$toString()) + 1
           val <- m[i, "option"]
           txt <- descs[[val]]$desc
           txt <- gsub("code>","b>", txt)  # no code in PANGO
           tooltip$setMarkup(txt)
           TRUE
         } else {
           FALSE                           # no tooltip
         }
       })


###################################################
### chunk number 210: 
###################################################
#line 4164 "SweaveInput"
cr <- gtkCellRendererCombo()
store <- rGtkDataFrame(state.name)
cr['model'] <- store
cr['text-column'] <- 0
cr['editable'] <- TRUE                  # needed


###################################################
### chunk number 211: VariableSelectionExample
###################################################
#line 4202 "SweaveInput"
## Example showing implementation of variable selection widget where two tables show possible selections
## and selection. Similar to SPSS widget
## Illustrates filtered models, icons in view column
library(RGtk2)


###################################################
### chunk number 212: 
###################################################
#line 4224 "SweaveInput"
df <- get(data(Cars93, package="MASS"))


###################################################
### chunk number 213: 
###################################################
#line 4231 "SweaveInput"
#library(ProgGUIinR)                     # for make_icon
source("../ProgGUIInR/R/misc.R")     # for make_icon


###################################################
### chunk number 214: make_icon
###################################################
#line 4236 "SweaveInput"
make_icon_pixmap <- function(x, ...) {
  require(grid); require(cairoDevice)
  pixmap <- gdkPixmap(drawable=NULL, width=16, height=16, 
  depth=24)
  asCairoDevice(pixmap)
  grid.newpage()
  grid.draw(make_icon(x))
  dev.off()
  gdkPixbufGetFromDrawable(NULL, pixmap, NULL, 0,0,0,0,-1,-1)
}


###################################################
### chunk number 215: model
###################################################
#line 4253 "SweaveInput"
mdf <- data.frame(Variables = I(sort(names(df))),
                  icon = I(sapply(df, make_icon_pixmap)),
                  selected = rep(FALSE, ncol(df)))
model <- rGtkDataFrame(mdf)


###################################################
### chunk number 216: filterModels
###################################################
#line 4263 "SweaveInput"
selectedFilter <- model$filter()
selectedFilter$setVisibleColumn(2)
unselectedFilter <- model$filter()
unselectedFilter$setVisibleFunc(function(model, iter) {
  !model$get(iter, 2)[[1]]
})


###################################################
### chunk number 217: views
###################################################
#line 4278 "SweaveInput"
unselectedView <- gtkTreeView(unselectedFilter)
selectedView <- gtkTreeView(selectedFilter)
unselectedView$getSelection()$setMode('multiple')
selectedView$getSelection()$setMode('multiple')


###################################################
### chunk number 218: viewColumns
###################################################
#line 4287 "SweaveInput"
make_view_column <- function() {
  vc <- gtkTreeViewColumn()
  vc$setTitle("Variable")
  cr <- gtkCellRendererPixbuf()
  vc$packStart(cr)
  vc$addAttribute(cr, "pixbuf", 1)
  cr <- gtkCellRendererText()
  vc$packStart(cr)
  vc$addAttribute(cr, "text", 0)
  vc
}
unselectedView$insertColumn(make_view_column(), 0)
selectedView$insertColumn(make_view_column(), 0)


###################################################
### chunk number 219: extendAPI
###################################################
#line 4306 "SweaveInput"
## add to the gtkTreeView API for convenience
gtkTreeViewSelectedIndices <- function(object) {
  paths <- object$getSelection()$getSelectedRows()$retval
  out <- sapply(paths, function(i) {
    model <- object$getModel()          # Filtered!
    model$convertPathToChildPath(i)$toString()
  })
  if(length(out) == 0)
    integer(0)
  else
    as.numeric(out) + 1                             # 1-based
}
#
gtkTreeViewHasSelection <-
  function(obj) length(obj$selectedIndices()) > 0


###################################################
### chunk number 220: buttons
###################################################
#line 4327 "SweaveInput"
selectButton <- gtkButton(">")
unselectButton <- gtkButton("<")
toggleSelectionOnClick <- function(button, view) {
  gSignalConnect(button, "clicked", function (x) {
    ind <- view$selectedIndices()
    model[ind, "selected"] <- !model[ind, "selected"]
  })
}
toggleSelectionOnClick(selectButton, unselectedView)
toggleSelectionOnClick(unselectButton, selectedView)


###################################################
### chunk number 221: sensitiveButtons
###################################################
#line 4342 "SweaveInput"
selectButton['sensitive'] <- FALSE
unselectButton['sensitive'] <- FALSE
trackSelection <- function(button, view)
  gSignalConnect(view$getSelection(), "changed", 
    function(x) button['sensitive'] <- view$hasSelection())
trackSelection(selectButton, unselectedView)
trackSelection(unselectButton, selectedView)


###################################################
### chunk number 222: guiLayout
###################################################
#line 4355 "SweaveInput"
w <- gtkWindow(show=FALSE)
w$setDefaultSize(600, 400)
g <- gtkHBox()
w$add(g)

selectedScroll <- gtkScrolledWindow()
selectedScroll$add(selectedView)
selectedScroll$setPolicy("automatic", "automatic")

unselectedScroll <- gtkScrolledWindow()
unselectedScroll$add(unselectedView)
unselectedScroll$setPolicy("automatic", "automatic")

buttonBox <- gtkVBox()
centeredBox <- gtkVBox()
buttonBox$packStart(centeredBox, expand = TRUE, fill = FALSE)
centeredBox$setSpacing(12)
centeredBox$packStart(selectButton, expand = FALSE)
centeredBox$packStart(unselectButton, expand = FALSE)

g$packStart(unselectedScroll, expand=TRUE)
g$packStart(buttonBox, expand=FALSE)
g$packStart(selectedScroll, expand=TRUE)


###################################################
### chunk number 223: packButtons
###################################################
#line 4382 "SweaveInput"
w$show()


###################################################
### chunk number 224: cellRendererToggle
###################################################
#line 4406 "SweaveInput"
cr <- gtkCellRendererToggle()
cr['activatable'] <- TRUE             # cell can be activated
cr['active'] <- TRUE
gSignalConnect(cr, "toggled", function(w, path) {
  model$active[as.numeric(path) + 1] <- w['active']
})


###################################################
### chunk number 225: 
###################################################
#line 4429 "SweaveInput"
## example showing how to add a toggle button on left of data display
library(RGtk2)


###################################################
### chunk number 226: FixACRANforSweave
###################################################
#line 4436 "SweaveInput"
repos <- getOption("repos")
repos["CRAN"] <- "http://streaming.stat.iastate.edu/CRAN"
options(repos = repos)


###################################################
### chunk number 227: getUpgradablePackages
###################################################
#line 4441 "SweaveInput"
d <- old.packages()[,c("Package", "Installed", "ReposVer")]
d <- as.data.frame(d)


###################################################
### chunk number 228: 
###################################################
#line 4449 "SweaveInput"
doUpdate <- function(d)  install.packages(d$Package)


###################################################
### chunk number 229: 
###################################################
#line 4456 "SweaveInput"
n <- ncol(d)
nms <- colnames(d)
d$.toggle <- rep(FALSE, nrow(d))
store <- rGtkDataFrame(d)


###################################################
### chunk number 230: 
###################################################
#line 4465 "SweaveInput"
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
### chunk number 231: 
###################################################
#line 4481 "SweaveInput"
mapply(view$insertColumnWithAttributes, -1, nms, 
       list(gtkCellRendererText()), text = 1:n-1)


###################################################
### chunk number 232: 
###################################################
#line 4487 "SweaveInput"
view$setModel(store)


###################################################
### chunk number 233: 
###################################################
#line 4496 "SweaveInput"
b <- gtkButton("Update packages")
gSignalConnect(b, "clicked", function(w, data) {
  view <- data
  model <- view$getModel()
  n <- dim(model)[2]
  vals <- model[model[, n], -n, drop=FALSE]
  doUpdate(vals)
}, data=view)


###################################################
### chunk number 234: 
###################################################
#line 4510 "SweaveInput"
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
### chunk number 235: comboEditor
###################################################
#line 4538 "SweaveInput"
cr <- gtkCellRendererProgress()
cr["value"] <- 50


###################################################
### chunk number 236: 
###################################################
#line 4576 "SweaveInput"
func <- function(viewCol, cellRend, model, iter, data) {
  curVal <- model$getValue(iter, 0)$value
  fVal <- sprintf("%.3f", curVal)
  cellRend['text'] <- fVal
  cellRend['xalign'] <- 1
}


###################################################
### chunk number 237: 
###################################################
#line 4587 "SweaveInput"
view <- gtkTreeView(rGtkDataFrame(data.frame(rnorm(100))))
cr <- gtkCellRendererText()
view$insertColumnWithAttributes(0, "numbers", cr, text = 0)
vc <- view$getColumn(0)
vc$setCellDataFunc(cr, func)


###################################################
### chunk number 238: 
###################################################
#line 4645 "SweaveInput"
tstore <- gtkTreeStore("gchararray")
by(Cars93, Cars93$Manufacturer, function(df) {
  piter <- tstore$append()              # parent
  tstore$setValue(piter$iter, column = 0, value = 
                  df$Manufacturer[1])
  sapply(df$Model, function(model) {
    sibiter <- tstore$append(parent = piter$iter) # child
    if (is.null(sibiter$retval)) 
      tstore$setValue(sibiter$iter, column = 0, value = model)
  })
})


###################################################
### chunk number 239: 
###################################################
#line 4659 "SweaveInput"
iter <- tstore$getIterFromString("0:0")
tstore$getValue(iter$iter, column = 0)$value


###################################################
### chunk number 240: rgtk2-mvc-tree-traverse
###################################################
#line 4689 "SweaveInput"
iter <- tstore$getIterFirst()
models <- NULL
while(iter$retval) {
  child <- tstore$iterChildren(iter$iter)
  while(child$retval) {
    models <- c(models, tstore$get(child$iter, 0)[[1]])
    child$retval <- tstore$iterNext(child$iter)
  }
  iter$retval <- tstore$iterNext(iter$iter)
}


###################################################
### chunk number 241: notShown
###################################################
#line 4755 "SweaveInput"
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
### chunk number 242: 
###################################################
#line 4775 "SweaveInput"
store <- rGtkDataFrame(Cars93[,"Model", drop=FALSE])


###################################################
### chunk number 243: makeView
###################################################
#line 4780 "SweaveInput"
view <- gtkTreeView()
view$insertColumnWithAttributes(0, "Make", 
           gtkCellRendererText(), text = 0)


###################################################
### chunk number 244: makeGUI
###################################################
#line 4786 "SweaveInput"
w <- gtkWindow(show=FALSE)
w['title'] <- "Example of changing models"
sw <- gtkScrolledWindow()
sw$add(view)
w$add(sw)
w$show()


###################################################
### chunk number 245: 
###################################################
#line 4796 "SweaveInput"
view$setModel(store)               # the rectangular store
view$setModel(tstore)              # or the tree store


###################################################
### chunk number 246: 
###################################################
#line 4812 "SweaveInput"
## tree example
## a variable browser
require(RGtk2)


###################################################
### chunk number 247: SetUpStore
###################################################
#line 4820 "SweaveInput"
store <- gtkTreeStore(rep("gchararray", 2))
sstore <- gtkTreeModelSort(store)


###################################################
### chunk number 248: 
###################################################
#line 4826 "SweaveInput"
iter <- store$append(parent=NULL)$iter
store$setValue(iter, column=0, "GlobalEnv")
store$setValue(iter, column=1, "environment")
iter <- store$append(parent=iter)


###################################################
### chunk number 249: 
###################################################
#line 4837 "SweaveInput"
view <- gtkTreeView(sstore)
view$getSelection()$setMode("multiple")


###################################################
### chunk number 250: 
###################################################
#line 4846 "SweaveInput"
gSignalConnect(view, signal = "row-expanded",
               f = function(view, iter, tpath, user.data) {
                 sortedModel <- view$getModel()
                 iter <- pathToIter(sortedModel, tpath)
                 path <- iterToRPath(sortedModel, iter)
                 children <- getChildren(path)
                 addChildren(store, children, parentIter=iter)
                 ## remove errant offspring, cf. addChildren
                 ci <- store$iterChildren(iter)
                 if(ci$retval) store$remove(ci$iter)
               })


###################################################
### chunk number 251: trePathToIter
###################################################
#line 4866 "SweaveInput"
pathToIter <- function(sstore, tpath) {
  store <- sstore$getModel()
  uspath <- sstore$convertPathToChildPath(tpath)
  store$getIter(uspath)$iter
}


###################################################
### chunk number 252: IterToPath
###################################################
#line 4877 "SweaveInput"
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
### chunk number 253: getChildren
###################################################
#line 4895 "SweaveInput"
getChildren <- function(path=character(0)) {
  hasChildren <- function(obj) 
    (is.list(obj) || is.environment(obj)) && 
  !is.null(names(as.list(obj)))
  
  getType <- function(obj) head(class(obj), n=1)

  obj <- 
    if (!length(path)) {
      .GlobalEnv
    } else {
      x <- get(path[1], envir=.GlobalEnv)
      if(length(path) > 1)
        get(path[1], envir=.GlobalEnv)[[path[-1]]]
      else
        x
    }

  children <- as.list(obj)
  
  d <- data.frame(children = names(children),
                  class = sapply(children, getType),
                  offspring = sapply(children, hasChildren))
  
  ## filter out Gtk ones
  d[!grepl("^Gtk", d$class), ]
}


###################################################
### chunk number 254: addChildren
###################################################
#line 4930 "SweaveInput"
addChildren <- function(store, children, parentIter = NULL) {
  if(nrow(children) == 0) 
    return(NULL)
  for(i in 1:nrow(children)) {
    iter <- store$append(parent=parentIter)$iter
    sapply(1:(ncol(children) - 1), function(j)              
           store$setValue(iter, column = j-1, children[i, j]))
    ## Add a branch if there are children
    if(children[i, "offspring"])
      store$append(parent=iter)
  }
}


###################################################
### chunk number 255: 
###################################################
#line 4949 "SweaveInput"
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
### chunk number 256: DoubleClickHandler
###################################################
#line 4968 "SweaveInput"
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
### chunk number 257: addRenderer
###################################################
#line 4990 "SweaveInput"
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
### chunk number 258: exampleGUI
###################################################
#line 5006 "SweaveInput"
## We now place the tree view widget into a basic GUI.
sw <- gtkScrolledWindow()
sw$setPolicy("automatic","automatic")
sw$add(view)

w <- gtkWindow()
w$setTitle("Tree view")
w$add(sw)


###################################################
### chunk number 259: 
###################################################
#line 5069 "SweaveInput"
## a combobox that learns as you go.
## no tooltip per item, but here we add as detail
library(RGtk2)


###################################################
### chunk number 260: 
###################################################
#line 5083 "SweaveInput"
m <- rGtkDataFrame(data.frame(
             fname=character(0), visits=character(0), 
             novisits=integer(0), stringsAsFactors=FALSE))
cb <- gtkComboBoxEntryNewWithModel(m, text.column=0)


###################################################
### chunk number 261: ConfigureCellRenderers
###################################################
#line 5096 "SweaveInput"
cr <- gtkCellRendererText()
cb$packStart(cr)
cb$addAttribute(cr, "text", 1)
cr['foreground'] <- "gray50"
cr['ellipsize'] <- "end"
cr['style'] <- "italic"
cr['alignment'] <- "right"


###################################################
### chunk number 262: helperFunction2
###################################################
#line 5128 "SweaveInput"
callHelpFunction <- function(cb, value) {
  model <- cb$getModel()
  ind <- match(value,model[,1, drop=TRUE])
  n <- model[ind, "novisits"] <- model[ind, "novisits"] + 1
  model[ind, "visits"] <- 
    sprintf(ngettext(n, "%s visit", "%s visits"), n)
  ## select for easier editing
  cb$getChild()$selectRegion(start=0,end=-1)
  help(value)
}
gSignalConnect(cb, "changed", f=function(w, ...) {
  if(cb$getActive() >= 0) {
    val <- w$getActiveText()
    callHelpFunction(w, val)
  }
})


###################################################
### chunk number 263: 
###################################################
#line 5150 "SweaveInput"
gSignalConnect(cb$getChild(), "activate", 
               f = function(cb, entry, ...) {
  val <- entry$getText()
  if(!any(val == cb$getModel()[,1, drop=TRUE])) {
    model <- cb$getModel()
    model$appendRows(data.frame(fname=val, visits="", novisits=0,
                                stringsAsFactors = FALSE))
  }
  callHelpFunction(cb, val)
}, data=cb, user.data.first=TRUE)


###################################################
### chunk number 264: Layout
###################################################
#line 5164 "SweaveInput"
w <- gtkWindow(show=FALSE)
w['border-width'] <- 15
g <- gtkHBox(); w$add(g)
g$packStart(gtkLabel("Help on:"))
g$packStart(cb, expand=TRUE, fill=TRUE)
#
w$show()


###################################################
### chunk number 265: 
###################################################
#line 5238 "SweaveInput"
require(RGtk2)


###################################################
### chunk number 266: AppendWords
###################################################
#line 5244 "SweaveInput"
entry <- gtkEntry()
completion <- gtkEntryCompletion()
entry$setCompletion(completion)


###################################################
### chunk number 267: SetCompletion
###################################################
#line 5254 "SweaveInput"
store <- rGtkDataFrame(state.name)
completion$setModel(store)
completion$setTextColumn(0)
completion['inline-completion'] <- TRUE
completion['popup-single-match'] <- FALSE


###################################################
### chunk number 268: SetMatchFunc
###################################################
#line 5264 "SweaveInput"
matchAnywhere <- function(comp, str, iter, user.data) {
  model <- comp$getModel()
  rowVal <- model$getValue(iter, 0)$value # column 0 in model
  
  str <- comp$getEntry()$getText()      # case sensitive
  grepl(str, rowVal)
}
completion$setMatchFunc(matchAnywhere)


###################################################
### chunk number 269: notShown
###################################################
#line 5278 "SweaveInput"
## Our basic GUI is basic:
w <- gtkWindow(show=FALSE)
w$setTitle("Test of entry with completion")
w$add(entry)
w$showAll()


###################################################
### chunk number 270: gtk-mvc-entry-buffer eval=FALSE
###################################################
## #line 5304 "SweaveInput"
## buffer <- gtkEntryBuffer()        
## entry1 <- gtkEntry(buffer = buffer)
## entry2 <- gtkEntry(buffer = buffer)
## entry1$setText("echo")
## entry2$getText()


###################################################
### chunk number 271: 
###################################################
#line 5336 "SweaveInput"
w <- gtkWindow()
w['border-width'] <- 15
#
tv <- gtkTextView()
sw <- gtkScrolledWindow()
sw$setPolicy("automatic", "automatic")
#
w$add(sw)


###################################################
### chunk number 272: setText
###################################################
#line 5349 "SweaveInput"
buffer <- tv$getBuffer()
buffer$setText("Lorem ipsum dolor sit amet ...")


###################################################
### chunk number 273: bufferGetText
###################################################
#line 5357 "SweaveInput"
start <- buffer$getStartIter()$iter    
end <- buffer$getEndIter()$iter
buffer$getText(start, end)


###################################################
### chunk number 274: gtk-mvc-text-noneditable
###################################################
#line 5378 "SweaveInput"
tv['editable'] <- FALSE
tv['cursor-visible'] <- FALSE


###################################################
### chunk number 275: gtk-mvc-buffer-iter-bounds
###################################################
#line 5458 "SweaveInput"
bounds <- buffer$getBounds()
bounds


###################################################
### chunk number 276: gtk-mvc-buffer-iter-atLineOffset
###################################################
#line 5481 "SweaveInput"
iter <- buffer$getIterAtLineOffset(0, 6)
iter$iter$getChar()


###################################################
### chunk number 277: gtk-mvc-buffer-iter-getChar
###################################################
#line 5497 "SweaveInput"
bounds$start$getChar()


###################################################
### chunk number 278: gtk-mvc-buffer-iter-getText
###################################################
#line 5504 "SweaveInput"
bounds$start$getText(bounds$end)


###################################################
### chunk number 279: gtk-mvc-buffer-iter-insert
###################################################
#line 5510 "SweaveInput"
buffer$insert(bounds$start, "prefix")


###################################################
### chunk number 280: 
###################################################
#line 5536 "SweaveInput"
## setup example, not shown
w <- gtkWindow()
tv <- gtkTextView()
w$add(tv)


###################################################
### chunk number 281: FindWordAtMouseClick
###################################################
#line 5546 "SweaveInput"
ID <- gSignalConnect(tv, "button-press-event", 
                     f=function(w, e, ...) {
  siter <- w$getIterAtLocation(e$getX(), e$getY())$iter
  niter <- siter$copy()                 # need copy
  siter$backwardWordStart()
  niter$forwardWordEnd()
  val <- siter$getText(niter)
  print(val)                            # replace
  return(FALSE)                         # call next handler
})


###################################################
### chunk number 282: gtk-mvc-text-mark-insert
###################################################
#line 5572 "SweaveInput"
insert <- buffer$getMark("insert")


###################################################
### chunk number 283: gtk-mvc-text-mark-getIter
###################################################
#line 5577 "SweaveInput"
insertIter <- buffer$getIterAtMark(insert)$iter
bounds$start$getText(insertIter)


###################################################
### chunk number 284: gtk-mvc-text-mark-gravity
###################################################
#line 5587 "SweaveInput"
insertIter$getOffset()
buffer$insert(insertIter, "insertion")
buffer$getIterAtMark(insert)$iter$getOffset()


###################################################
### chunk number 285: gtk-mvc-text-mark-construct
###################################################
#line 5595 "SweaveInput"
mark <- buffer$createMark(mark.name = "start", 
                          where = buffer$getStartIter()$iter, 
                          left.gravity = TRUE)


###################################################
### chunk number 286: gtk-mvc-text-tags-create
###################################################
#line 5613 "SweaveInput"
tag.b <- buffer$createTag(tag.name="bold", 
                          weight=PangoWeight["bold"])
tag.em <- buffer$createTag(tag.name="em", 
                           style=PangoStyle["italic"])
tag.large <- buffer$createTag(tag.name="large", 
                              font="Serif normal 18")


###################################################
### chunk number 287: gtk-mvc-text-tags-apply
###################################################
#line 5623 "SweaveInput"
iter <- buffer$getBounds()
buffer$applyTag(tag.b, iter$start, iter$end)  # updates iters
buffer$applyTagByName("em", iter$start, iter$end)


###################################################
### chunk number 288: gtk-mvc-text-selectRange
###################################################
#line 5636 "SweaveInput"
siter <- buffer$getStartIter()$iter
eiter <- siter$copy(); eiter$forwardWordEnd()
buffer$selectRange(siter, eiter)


###################################################
### chunk number 289: gtk-mvc-text-clipboard-get
###################################################
#line 5647 "SweaveInput"
cb <- gtkClipboardGet()


###################################################
### chunk number 290: gtk-mvc-text-clipboard-copy-paste
###################################################
#line 5653 "SweaveInput"
buffer$copyClipboard(cb)
buffer$pasteClipboard(cb, override.location = buffer$getEndIter()$iter, 
                      default.editable = TRUE)


###################################################
### chunk number 291: gtk-mvc-text-anchor
###################################################
#line 5680 "SweaveInput"
anchor <- buffer$createChildAnchor(buffer$getEndIter()$iter)


###################################################
### chunk number 292: gtk-mvc-text-addChild
###################################################
#line 5686 "SweaveInput"
b <- gtkButton("click me")
tv$addChildAtAnchor(b, anchor)


###################################################
### chunk number 293: 
###################################################
#line 5704 "SweaveInput"
## make a *basic* terminal in RGtk2
library(RGtk2)


###################################################
### chunk number 294: TextViewWidget
###################################################
#line 5711 "SweaveInput"
tv <- gtkTextView()
tb <- tv$getBuffer()
font <- pangoFontDescriptionFromString("Monospace")
tv$modifyFont(font)                     # widget wide


###################################################
### chunk number 295: 
###################################################
#line 5720 "SweaveInput"
tb$createTag(tag.name="cmdInput")
tb$createTag(tag.name="cmdOutput", 
             weight=PangoWeight["bold"])
tb$createTag(tag.name="cmdError", 
             weight=PangoStyle["italic"], foreground="red")
tb$createTag(tag.name="uneditable", editable=FALSE)


###################################################
### chunk number 296: 
###################################################
#line 5731 "SweaveInput"
startCmd <- tb$createMark("startCmd", tb$getStartIter()$iter, 
                          left.gravity=TRUE)
bufferEnd <- tb$createMark("bufferEnd", tb$getEndIter()$iter)


###################################################
### chunk number 297: 
###################################################
#line 5739 "SweaveInput"
scrollViewport <- function(view, ...) {
  iter <- view$getBuffer()$getEndIter()$iter
  view$scrollToMark(bufferEnd, within.margin=0)
  return(FALSE)
}


###################################################
### chunk number 298: 
###################################################
#line 5750 "SweaveInput"
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
### chunk number 299: addOutput
###################################################
#line 5769 "SweaveInput"
addOutput <- function(obj, output, tagName="cmdOutput") {
  endIter <- obj$getEndIter()
  if(length(output) > 0) 
    sapply(output, function(i)  {
      obj$insertWithTagsByName(endIter$iter, i, tagName)
      obj$insert(endIter$iter, "\n", len=-1)
    })
}


###################################################
### chunk number 300: 
###################################################
#line 5786 "SweaveInput"
findCMD <- function(obj) {
  endIter <- obj$getEndIter()
  startIter <- obj$getIterAtMark(startCmd)
  cmd <- obj$getText(startIter$iter, endIter$iter, TRUE)
  regex <- paste("\n[", getOption("continue"), "] ", sep = "")
  cmd <- unlist(strsplit(cmd, regex))
  cmd
}


###################################################
### chunk number 301: 
###################################################
#line 5802 "SweaveInput"
evalCMD <- function(tv, cmd) {
  tb <- tv$getBuffer()
  cmd <- paste(cmd, sep="\n")
  out <- try(parse(text=cmd), silent=TRUE)
  if(inherits(out, "try-error")) {
    if(length(grep("end", out))) {      # unexpected end 
      ## continue
      addPrompt(tb, "continue", setMark=FALSE)
    } else {
      ## error
      addOutput(tb, out, tagName = "cmdError")
    }
    scrollViewport(tv)
    return()
  }
  
  e <- parse(text = cmd)
  out <- capture.output(vis <- 
                 withVisible(try(eval(e, .GlobalEnv), TRUE)))

  addOutput(tb, out) 
  if (inherits(vis$value, "try-error"))
    addOutput(tb, vis$value, "cmdError")
  else if (vis$visible)
    addOutput(tb, capture.output(print(vis$value)))
  
  addPrompt(tb, "prompt", setMark=TRUE)
  scrollViewport(tv)  
}


###################################################
### chunk number 302: connectBinding
###################################################
#line 5836 "SweaveInput"
gSignalConnect(tv, "key-release-event", f=function(w, e) {
  obj <- w$getBuffer()                  # w is textview
  keyval <- e$getKeyval()
  if(keyval == GDK_Return) {
    cmd <- findCMD(obj)                 # poss. character(0)
    if(length(cmd) && nchar(cmd) > 0)
      evalCMD(w, cmd)
  }
})


###################################################
### chunk number 303: makeGUI
###################################################
#line 5860 "SweaveInput"
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
### chunk number 304: 
###################################################
#line 5876 "SweaveInput"
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
### chunk number 305: 
###################################################
#line 5965 "SweaveInput"
require(RGtk2)


###################################################
### chunk number 306: rgtk2-menus-actions-constructor
###################################################
#line 5990 "SweaveInput"
a <- gtkAction(name="ok", label="_Ok", 
               tooltip="An OK button", stock.id="gtk-ok")


###################################################
### chunk number 307: rgtk2-menus-actions-activate
###################################################
#line 6001 "SweaveInput"
gSignalConnect(a, "activate", f = function(w, data) {
  print(a$getName())                    # or some useful thing
})


###################################################
### chunk number 308: ConnectAction
###################################################
#line 6013 "SweaveInput"
b <- gtkButton()
b$setRelatedAction(a)


###################################################
### chunk number 309: rgtk2-menus-action-group
###################################################
#line 6029 "SweaveInput"
group <- gtkActionGroup()
group$addActionWithAccel(a, "<control>O")


###################################################
### chunk number 310: rgtk2-menus-toggle-action
###################################################
#line 6046 "SweaveInput"
fullScreen <- gtkToggleAction("fullscreen", "Full screen", 
                              "Toggle full screen")
gSignalConnect(fullScreen, "toggled", function(action) {
  if(fullScreen['active'])
    window$fullscreen()
  else
    window$unfullscreen()
})


###################################################
### chunk number 311: showGUI
###################################################
#line 6060 "SweaveInput"
window <- gtkWindow(show=FALSE)
window['title'] <- "Action with button example"
window$add(b)
window$showAll()


###################################################
### chunk number 312: rgtk2-menus-menubar
###################################################
#line 6084 "SweaveInput"
menubar <- gtkMenuBar()


###################################################
### chunk number 313: rgtk2-menus-menu
###################################################
#line 6095 "SweaveInput"
fileMenu <- gtkMenu()


###################################################
### chunk number 314: rgtk2-menus-menuitem
###################################################
#line 6101 "SweaveInput"
fileItem <- gtkMenuItemNewWithMnemonic(label="_File")
fileItem$setSubmenu(fileMenu)


###################################################
### chunk number 315: rgtk2-menus-append
###################################################
#line 6109 "SweaveInput"
menubar$append(fileItem)


###################################################
### chunk number 316: rgtk2-menus-open
###################################################
#line 6122 "SweaveInput"
open <- gtkMenuItemNewWithMnemonic("_Open")


###################################################
### chunk number 317: rgtk2-menus-open-activate
###################################################
#line 6128 "SweaveInput"
gSignalConnect(open, "activate", function(item) {
  f <- file.choose()
  file.show(f)
})


###################################################
### chunk number 318: rgtk2-menus-append-item
###################################################
#line 6136 "SweaveInput"
fileMenu$append(open)


###################################################
### chunk number 319: rgtk2-menus-save-action
###################################################
#line 6143 "SweaveInput"
saveAction <- 
  gtkAction("save", "Save", "Save object", "gtk-save")


###################################################
### chunk number 320: rgtk2-menus-save-item
###################################################
#line 6150 "SweaveInput"
save <- saveAction$createMenuItem()
fileMenu$append(save)


###################################################
### chunk number 321: rgtk2-menus-separator
###################################################
#line 6159 "SweaveInput"
fileMenu$append(gtkSeparatorMenuItem())


###################################################
### chunk number 322: rgtk2-menus-toggle-item
###################################################
#line 6165 "SweaveInput"
autoSaveAction <- gtkToggleAction("autosave", "Autosave", 
                                  "Enable autosave")
autoSave <- autoSaveAction$createMenuItem()
fileMenu$append(autoSave)


###################################################
### chunk number 323: rgtk2-menus-window
###################################################
#line 6173 "SweaveInput"
mainWindow <- gtkWindow()
vbox <- gtkVBox()
mainWindow$add(vbox)
vbox$packStart(menubar, FALSE, FALSE)


###################################################
### chunk number 324: "menubar-ex"
###################################################
#line 6186 "SweaveInput"
popup <- gtkMenu()                       # top level
popup$append(gtkMenuItem("cut"))
popup$append(gtkMenuItem("copy"))
popup$append(gtkSeparatorMenuItem())
popup$append(gtkMenuItem("paste"))


###################################################
### chunk number 325: rgtk2-menus-popup-button
###################################################
#line 6196 "SweaveInput"
b <- gtkButton("Click me with right mouse button")
w <- gtkWindow(); w$setTitle("Popup menu example")
w$add(b)


###################################################
### chunk number 326: 
###################################################
#line 6204 "SweaveInput"
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
### chunk number 327: 
###################################################
#line 6225 "SweaveInput"
IDs <- sapply(popup$getChildren(), function(i) {
  if(!inherits(i, "GtkSeparatorMenuItem")) # skip these
    gSignalConnect(i, "activate",
                   f = function(w, data) print("replace me"))
})


###################################################
### chunk number 328: rgtk2-menus-toolbar-construct
###################################################
#line 6246 "SweaveInput"
toolbar <- gtkToolbar()


###################################################
### chunk number 329: rgtk2-menus-toolbar-open-item
###################################################
#line 6255 "SweaveInput"
openButton <- gtkToolButton(stock.id = "gtk-open") 


###################################################
### chunk number 330: rgtk2-menus-toolbar-add
###################################################
#line 6264 "SweaveInput"
toolbar$add(openButton)


###################################################
### chunk number 331: rgtk2-menus-toolbar-save-item
###################################################
#line 6275 "SweaveInput"
saveButton <- saveAction$createToolItem()
toolbar$add(saveButton)


###################################################
### chunk number 332: rgtk2-menus-toolbar-separator
###################################################
#line 6284 "SweaveInput"
toolbar$add(gtkSeparatorToolItem())


###################################################
### chunk number 333: rgtk2-menus-toolbar-toggle
###################################################
#line 6289 "SweaveInput"
fullScreenButton <- fullScreen$createToolItem()
toolbar$add(fullScreenButton)


###################################################
### chunk number 334: rgtk2-menus-toolbar-style
###################################################
#line 6305 "SweaveInput"
toolbar$setStyle("icon")


###################################################
### chunk number 335: rgtk2-menus-toolbar-is-important
###################################################
#line 6314 "SweaveInput"
fullScreen["is-important"] <- TRUE


###################################################
### chunk number 336: rgtk2-menus-toolbar-expand eval=FALSE
###################################################
## #line 6323 "SweaveInput"
## expander <- gtkSeparatorToolItem()
## expander["draw"] <- FALSE
## toolbar$add(expander)
## toolbar$childSet(expander, expand = TRUE)


###################################################
### chunk number 337: rgtk2-menus-toolbar-help
###################################################
#line 6334 "SweaveInput"
helpAction <- gtkAction("help", "Help", "Get help", "gtk-help")
toolbar$add(helpAction$createToolItem())


###################################################
### chunk number 338: rgtk2-menus-toolbar-place
###################################################
#line 6341 "SweaveInput"
vbox$packStart(toolbar, FALSE, FALSE)


###################################################
### chunk number 339: rgtk2-mennus-toolbar-color-button
###################################################
#line 6359 "SweaveInput"
gdkColor <- gdkColorParse(palette()[1])$color
colorButton <- gtkColorButton(gdkColor)


###################################################
### chunk number 340: rgtk2-menus-toolbar-color-menu
###################################################
#line 6369 "SweaveInput"
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
  colorMenu$append(item)


###################################################
### chunk number 341: rgtk2-menus-toolbar-color-cb
###################################################
#line 6389 "SweaveInput"
colorMenuItemActivated <- function(item) {
  color <- gdkColorParse(item$getLabel())$color
  colorButton$setColor(color)
}
sapply(colorItems, gSignalConnect, "activate", 
       colorMenuItemActivated)


###################################################
### chunk number 342: rgtk2-menus-toolbar-menu
###################################################
#line 6400 "SweaveInput"
menuButton <- gtkMenuToolButton(colorButton, "Color")
menuButton$setMenu(colorMenu)
toolbar$add(menuButton)


###################################################
### chunk number 343: rgtk2-menus-tool-item-group eval=FALSE
###################################################
## #line 6425 "SweaveInput"
## fileGroup <- gtkToolItemGroup("File")
## fileGroup$add(gtkToolButton(stock.id = "gtk-open"))
## fileGroup$add(saveAction$createToolItem())
## helpGroup <- gtkToolItemGroup("Help")
## helpGroup$add(helpAction$createToolItem())


###################################################
### chunk number 344: rgtk2-menus-tool-palette eval=FALSE
###################################################
## #line 6435 "SweaveInput"
## palette <- gtkToolPalette()
## palette$add(fileGroup)
## palette$add(helpGroup)


###################################################
### chunk number 345: rgtk2-menus-tool-palette-collapse eval=FALSE
###################################################
## #line 6442 "SweaveInput"
## helpGroup$setCollapsed(TRUE)


###################################################
### chunk number 346: 
###################################################
#line 6473 "SweaveInput"
ib <- gtkInfoBar(show=FALSE)
ib$setNoShowAll(TRUE)


###################################################
### chunk number 347: 
###################################################
#line 6484 "SweaveInput"
l <- gtkLabel("Warning, Warning ....")
ib$setMessageType("warning")            
ib$getContentArea()$add(l)


###################################################
### chunk number 348: 
###################################################
#line 6491 "SweaveInput"
ib$addButton(button.text="gtk-ok",
             response.id=GtkResponseType['ok'])


###################################################
### chunk number 349: 
###################################################
#line 6500 "SweaveInput"
gSignalConnect(ib, "response", function(w, resp.id) w$hide())


###################################################
### chunk number 350: addToWinodw
###################################################
#line 6505 "SweaveInput"
vbox$packStart(ib, expand = FALSE)
ib$show()


###################################################
### chunk number 351: not-shown
###################################################
#line 6539 "SweaveInput"
## sample RGtk2 menu
library(RGtk2)


###################################################
### chunk number 352: 
###################################################
#line 6545 "SweaveInput"
uimanager = gtkUIManager()


###################################################
### chunk number 353: 
###################################################
#line 6552 "SweaveInput"
someAction <- function(action,...) 
  statusbar$push(statusbar$getContextId("message"), 
                 action$getName())


###################################################
### chunk number 354: 
###################################################
#line 6559 "SweaveInput"
Quit <- function(...) win$destroy()


###################################################
### chunk number 355: Define-first-action-group
###################################################
#line 6574 "SweaveInput"
firstActionGroup <- gtkActionGroup("firstActionGroup")
firstActionEntries <- list(
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
### chunk number 356: "Insert action group"
###################################################
#line 6600 "SweaveInput"
firstActionGroup$addActions(firstActionEntries)
uimanager$insertActionGroup(firstActionGroup, 0) # 0-based


###################################################
### chunk number 357: How-to-set-sensitivity
###################################################
#line 6609 "SweaveInput"
redo <- firstActionGroup$getAction("Redo")
redo['sensitive'] <- FALSE


###################################################
### chunk number 358: 
###################################################
#line 6616 "SweaveInput"
helpActionGroup <- gtkActionGroup("helpActionGroup")
helpActionEntries <- list(
  help = list("Help", "", "_Help", "", "", NULL),
  about = list("About", "gtk-about", "_About", "", "", 
    someAction)
)
helpActionGroup$addActions(helpActionEntries)


###################################################
### chunk number 359: "a toggle action"
###################################################
#line 6627 "SweaveInput"
toggleActions <- list(
  tooltips = list("UseTooltips", NULL, "Use _Tooltips", "<control>T", 
    "Enable tooltips", someAction, TRUE)
)
helpActionGroup$addToggleActions(toggleActions)


###################################################
### chunk number 360: "insert help action group"
###################################################
#line 6640 "SweaveInput"
uimanager$insertActionGroup(helpActionGroup, 1)


###################################################
### chunk number 361: "Load UI from file"
###################################################
#line 6693 "SweaveInput"
id <- uimanager$addUiFromFile("ex-menus.xml")


###################################################
### chunk number 362: "Retrieve menubar and toolbar from the uimanager"
###################################################
#line 6704 "SweaveInput"
menubar <- uimanager$getWidget("/menubar")
toolbar <- uimanager$getWidget("/toolbar")


###################################################
### chunk number 363: "define statusbar"
###################################################
#line 6709 "SweaveInput"
statusbar <- gtkStatusbar()


###################################################
### chunk number 364: Define-window-add-accelerator-group
###################################################
#line 6717 "SweaveInput"
win <- gtkWindow(show=TRUE)
win$setTitle("Window example")
accelgroup <- uimanager$getAccelGroup()
win$addAccelGroup(accelgroup)


###################################################
### chunk number 365: setup-box
###################################################
#line 6725 "SweaveInput"
box <- gtkVBox()
win$add(box)

box$packStart(menubar, expand=FALSE, fill=FALSE, 0)
box$packStart(toolbar, expand=FALSE, fill= FALSE, 0)
contentArea <- gtkVBox()
box$packStart(contentArea, expand=TRUE, fill=TRUE, 0)
contentArea$packStart(gtkLabel("Content Area"))
box$packStart(statusbar, expand=FALSE, fill=FALSE, 0)


###################################################
### chunk number 366: 
###################################################
#line 6832 "SweaveInput"
options(prompt="> ")
options(continue="+ ")
options(width=80)


