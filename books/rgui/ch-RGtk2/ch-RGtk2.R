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
  out <- capture.output(.Internal(args(name)))
  invisible(cat(out[-length(out)],"\n"))
}


###################################################
### chunk number 2: 
###################################################
#line 45 "SweaveInput"
require(RGtk2)


###################################################
### chunk number 3: gtk-overview-initial-example
###################################################
#line 115 "SweaveInput"
button <- gtkButton("Click Me")
button['image'] <- gtkImage(stock = "gtk-apply", size = "button")
gSignalConnect(button, "clicked", function(x) message("Hello World!"))
window <- gtkWindow(show = FALSE)
window$add(button)
window$showAll()


###################################################
### chunk number 4: intro-constructor-gtkWindow
###################################################
#line 185 "SweaveInput"
window <- gtkWindow("toplevel", show = FALSE)


###################################################
### chunk number 5: gtk-overview-construct-image
###################################################
#line 209 "SweaveInput"
gtkImage(stock = "gtk-apply", size = "button")


###################################################
### chunk number 6: gtk-overview-construct-image-args
###################################################
#line 216 "SweaveInput"
args(gtkImage)


###################################################
### chunk number 7: gtk-overview-objects-value
###################################################
#line 226 "SweaveInput"
a <- -1
abs(a)
a


###################################################
### chunk number 8: gtk-overview-objects-ref
###################################################
#line 234 "SweaveInput"
gtkButtonSetLabel(button, "New text")
gtkButtonGetLabel(button)


###################################################
### chunk number 9: intro-constructor-classes
###################################################
#line 246 "SweaveInput"
class(window)


###################################################
### chunk number 10: intro-constructor-interfaces
###################################################
#line 259 "SweaveInput"
interface(window)


###################################################
### chunk number 11: intro-methods-button
###################################################
#line 295 "SweaveInput"
button <- gtkButton("Hello World")
window$add(button)
window$setDefaultSize(200, 200)


###################################################
### chunk number 12: gtkButtonAddApi
###################################################
#line 307 "SweaveInput"
gtkButtonSayHello <- function(obj, target) 
  obj$setLabel(paste("Hello", target))
button$sayHello("World")
button$getLabel()


###################################################
### chunk number 13: showProperties
###################################################
#line 339 "SweaveInput"
head(names(button), n=8)                 # or b$getPropInfo()


###################################################
### chunk number 14: intro-props-get-set
###################################################
#line 354 "SweaveInput"
image <- gdkPixbuf(filename = imagefile("rgtk-logo.gif"))[[1]]
window$set(icon = image, title = "Hello World 1.0")


###################################################
### chunk number 15: 
###################################################
#line 363 "SweaveInput"
window$setTitle("Hello World 1.0")
window$getTitle()


###################################################
### chunk number 16: intro-props-visible
###################################################
#line 371 "SweaveInput"
window["visible"]


###################################################
### chunk number 17: intro-props-show
###################################################
#line 376 "SweaveInput"
window["visible"] <- TRUE 
window$show() # same effect


###################################################
### chunk number 18: 
###################################################
#line 396 "SweaveInput"
names(gTypeGetSignals("GtkButton"))


###################################################
### chunk number 19:  eval=FALSE
###################################################
## #line 412 "SweaveInput"
## args(gSignalConnect)


###################################################
### chunk number 20: intro-signals-hello-world
###################################################
#line 426 "SweaveInput"
gSignalConnect(button, "clicked", 
               function(widget) print("Hello world!"))


###################################################
### chunk number 21: 
###################################################
#line 455 "SweaveInput"
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
### chunk number 22: 
###################################################
#line 467 "SweaveInput"
b$setData("x", 2)                        # fix non-interactivity


###################################################
### chunk number 23: 
###################################################
#line 471 "SweaveInput"
cat(x, b$getData("x"), "\n") # 1 and 2


###################################################
### chunk number 24: 
###################################################
#line 483 "SweaveInput"
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
### chunk number 25: intro-enum-window eval=FALSE
###################################################
## #line 516 "SweaveInput"
## window <- gtkWindow("toplevel", show = FALSE)


###################################################
### chunk number 26: intro-enum-GtkWindowType
###################################################
#line 531 "SweaveInput"
GtkWindowType


###################################################
### chunk number 27: intro-enum-GtkWidgetFlags
###################################################
#line 545 "SweaveInput"
GtkWidgetFlags


###################################################
### chunk number 28: intro-enum-gtkWidgetFlags
###################################################
#line 554 "SweaveInput"
window$flags()


###################################################
### chunk number 29: intro-enum-toplevel
###################################################
#line 569 "SweaveInput"
(window$flags() & GtkWidgetFlags["toplevel"]) > 0


###################################################
### chunk number 30: 
###################################################
#line 583 "SweaveInput"
while(gtkEventsPending()) 
  gtkMainIteration()


###################################################
### chunk number 31:  eval=FALSE
###################################################
## #line 615 "SweaveInput"
## g <- gtkBuildableNew()
## g$addFromFile("buildable.xml")


###################################################
### chunk number 32:  eval=FALSE
###################################################
## #line 624 "SweaveInput"
## d <- g$getObject("dialog1")
## d$showAll()


###################################################
### chunk number 33:  eval=FALSE
###################################################
## #line 638 "SweaveInput"
## ok_button_clicked <- function(w, userData) {
##   print("hello world")
## }
## g$connectSignals()


###################################################
### chunk number 34: 
###################################################
#line 671 "SweaveInput"
library(RGtk2)


###################################################
### chunk number 35: 
###################################################
#line 704 "SweaveInput"
w <- gtkWindow(show=FALSE)              # use default type
w$setTitle("Window title")              # set window title
w['title']                              # or  use getTitle
w$setDefaultSize(250,300)               # 250 wide, 300 high
w$show()                                # show window


###################################################
### chunk number 36: basic-window-label
###################################################
#line 731 "SweaveInput"
w <- gtkWindow(show=FALSE); w$setTitle("Hello world")
l <- gtkLabel("Hello world")
w$add(l)


###################################################
### chunk number 37: gtk-container-window-delete
###################################################
#line 752 "SweaveInput"
gSignalConnect(w, "delete-event", function(event) {
  gtkMessageDialog(parent=w, flags=0, type="question", buttons=c("yes", "no"),
                   "Are you sure you want to quit?")
  dlg$run() != GtkResponseType["yes"]
})


###################################################
### chunk number 38: gtk-container-window-destroy
###################################################
#line 769 "SweaveInput"
w$destroy()


###################################################
### chunk number 39: 
###################################################
#line 784 "SweaveInput"
## create a window and a dialog window
w <- gtkWindow(show=FALSE); w$setTitle("Top level window")
d <- gtkWindow(show=FALSE); d$setTitle("dialog window")
d$setTransientFor(w)
d$setPosition("center-on-parent")
d$setDestroyWithParent(TRUE)
w$show()
d$show()


###################################################
### chunk number 40: 
###################################################
#line 819 "SweaveInput"
w <- gtkWindow(show=FALSE); w$setTitle("Hello world")
l <- gtkLabel("Hello world")
w$add(l)


###################################################
### chunk number 41: 
###################################################
#line 830 "SweaveInput"
w$getChild()['label']


###################################################
### chunk number 42: gtk-container-brackets
###################################################
#line 838 "SweaveInput"
w[[1]]['label']


###################################################
### chunk number 43:  eval=FALSE
###################################################
## #line 844 "SweaveInput"
## ## leave out?
## l$getParent()


###################################################
### chunk number 44: remove-child-widget-3
###################################################
#line 852 "SweaveInput"
w$remove(l)
w$add(l)


###################################################
### chunk number 45: layout-window-show-first
###################################################
#line 876 "SweaveInput"
w <- gtkWindow(); w$setTitle("Hello world")
l <- gtkLabel("Hello world")
w$add(l)


###################################################
### chunk number 46: layout-window-show-first-alloc
###################################################
#line 892 "SweaveInput"
l$getAllocation()$allocation


###################################################
### chunk number 47: 
###################################################
#line 896 "SweaveInput"
sapply(l$getAllocation()$allocation, function(i) i)


###################################################
### chunk number 48: layout-window-show-later
###################################################
#line 902 "SweaveInput"
w <- gtkWindow(show=FALSE); w$setTitle("Hello world")
l <- gtkLabel("Hello world")
w$add(l)
w$show()
l$getAllocation()$allocation


###################################################
### chunk number 49: 
###################################################
#line 909 "SweaveInput"
sapply(l$getAllocation()$allocation, function(i) i)


###################################################
### chunk number 50: basic-box-homo
###################################################
#line 982 "SweaveInput"
box <- gtkHBox(TRUE, 5)


###################################################
### chunk number 51: basic-box-homo-nofill
###################################################
#line 997 "SweaveInput"
button_a <- gtkButton("Button A")
button_b <- gtkButton("Button B")
box$packStart(button_a, fill = FALSE)
box$packStart(button_b, fill = FALSE)


###################################################
### chunk number 52: basic-box-hetero
###################################################
#line 1024 "SweaveInput"
box <- gtkHBox(FALSE, 5)


###################################################
### chunk number 53: 
###################################################
#line 1052 "SweaveInput"
## re create buttons
button_a <- gtkButton("Button A")
button_b <- gtkButton("Button B")


###################################################
### chunk number 54: basic-box-expand
###################################################
#line 1058 "SweaveInput"
box$packStart(button_a, expand = TRUE, fill = FALSE)
box$packStart(button_b, expand = FALSE, fill = FALSE)


###################################################
### chunk number 55: 
###################################################
#line 1098 "SweaveInput"
g <- gtkHBox()
sapply(1:3, function(i) g$packStart(gtkLabel(i)))


###################################################
### chunk number 56: 
###################################################
#line 1102 "SweaveInput"
b3 <- g[[3]]
g$reorderChild(b3, 2 - 1)               # second is 2 - 1


###################################################
### chunk number 57: basic-layout-align-window
###################################################
#line 1112 "SweaveInput"
w <- gtkWindow(); w$setTitle("Hello world")
l <- gtkLabel("Hello world")
w$add(l)


###################################################
### chunk number 58: basic-layout-align-left
###################################################
#line 1135 "SweaveInput"
l["xalign"] <- 0


###################################################
### chunk number 59: basic-layout-align-GtkAlignment
###################################################
#line 1146 "SweaveInput"
w <- gtkWindow(); w$setTitle("Hello world")
a <- gtkAlignment()
a$set(xalign = 0, yalign = 0.5, xscale = 0, yscale = 1)
w$add(a)
l <- gtkLabel("Hello world")
a$add(l)


###################################################
### chunk number 60: 
###################################################
#line 1178 "SweaveInput"
w <- gtkWindow(); w['title'] <- "Parent window"
#
dlg <- gtkMessageDialog(parent=w, 
                        flags="destroy-with-parent",
                        type="question", 
                        buttons="ok",
                        "My message")
dlg['secondary-text'] <- "A secondary message"


###################################################
### chunk number 61: 
###################################################
#line 1206 "SweaveInput"
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
### chunk number 62: 
###################################################
#line 1233 "SweaveInput"
dlg <- gtkDialogNewWithButtons(title="Enter a value", 
                       parent=NULL, flags=0,
                       "gtk-ok", GtkResponseType["ok"],
                       "gtk-cancel", GtkResponseType["cancel"],
                       show=FALSE)


###################################################
### chunk number 63: OurDialogsLayout
###################################################
#line 1252 "SweaveInput"
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
### chunk number 64: connectResponse
###################################################
#line 1271 "SweaveInput"
ID <- gSignalConnect(dlg, "response", 
                     f=function(dlg, resp, user.data) {
                       if(resp == GtkResponseType["ok"])
                         print(entry$getText()) # Replace this
                       dlg$Destroy()
                     })
dlg$showAll()
dlg$setModal(TRUE)


###################################################
### chunk number 65: openFileDialog
###################################################
#line 1297 "SweaveInput"
dlg <- gtkFileChooserDialog(title="Open a file", 
                            parent=NULL, action="open",
                            "gtk-ok", GtkResponseType["ok"],
                            "gtk-cancel", GtkResponseType["cancel"],
                            show=FALSE)


###################################################
### chunk number 66: 
###################################################
#line 1312 "SweaveInput"
gSignalConnect(dlg, "response", f=function(dlg, resp, data) {
  if(resp == GtkResponseType["ok"]) {
    filename <- dlg$getFilename()
    print(filename)
  }
  dlg$destroy()
})


###################################################
### chunk number 67: 
###################################################
#line 1329 "SweaveInput"
fileFilter <- gtkFileFilter()
fileFilter$setName("R files")
fileFilter$addPattern("*.R")
fileFilter$addPattern("*.Rdata")
dlg$addFilter(fileFilter)


###################################################
### chunk number 68: gtk-container-frame
###################################################
#line 1378 "SweaveInput"
frame <- gtkFrame("Options")
vbox <- gtkVBox()
vbox$packStart(gtkCheckButton("Option 1"), FALSE)
vbox$packStart(gtkCheckButton("Option 2"), FALSE)
frame$add(vbox)


###################################################
### chunk number 69: gtk-container-expander
###################################################
#line 1399 "SweaveInput"
expander <- gtkExpander("Advanced")
expander$add(frame)


###################################################
### chunk number 70: qt-layout-notebook
###################################################
#line 1422 "SweaveInput"
nb <- gtkNotebook()
nb$appendPage(gtkLabel("Page 1"), gtkLabel("Tab 1"))
nb$appendPage(gtkLabel("Page 2"), gtkLabel("Tab 2"))


###################################################
### chunk number 71: qt-layout-notebook-pos
###################################################
#line 1438 "SweaveInput"
nb['tab-pos'] <- "bottom"


###################################################
### chunk number 72: qt-layout-notebook-current
###################################################
#line 1447 "SweaveInput"
nb['page'] <- 1
nb['page']


###################################################
### chunk number 73: 
###################################################
#line 1485 "SweaveInput"
gtkNotebookInsertPageWithCloseButton <- 
  function(object, child, label.text="", position=-1) {
    label <- gtkHBox()
    label$packStart(gtkLabel(label.text))
    icon <- gtkImage(pixbuf = 
                     object$renderIcon("gtk-close", "button"))
    closeButton <- gtkButton()
    closeButton$setImage(icon)
    label$packEnd(closeButton)
    gSignalConnect(b, "clicked", function(b) nb$removePage(index))
    index <- object$insertPage(child, label, position)
  }


###################################################
### chunk number 74: 
###################################################
#line 1501 "SweaveInput"
w <- gtkWindow()
nb <- gtkNotebook(); w$add(nb)
nb$insertPageWithCloseButton(gtkButton("hello"), 
                             label.text="page 1")
nb$insertPageWithCloseButton(gtkButton("world"), 
                             label.text="page 2")


###################################################
### chunk number 75: ScrolledWindowExample
###################################################
#line 1556 "SweaveInput"
library(RGtk2)


###################################################
### chunk number 76: 
###################################################
#line 1560 "SweaveInput"
g <- gtkVBox(spacing=0)
sapply(state.name, function(i) {
  l <- gtkLabel(i)
  l['xalign'] <- 0; l['xpad'] <- 10
  g$packStart(l, expand=TRUE, fill=TRUE)
})


###################################################
### chunk number 77: 
###################################################
#line 1571 "SweaveInput"
sw <- gtkScrolledWindow()
sw$setPolicy("never","automatic")
sw$addWithViewport(g)          # just "Add" for text, tree, ...


###################################################
### chunk number 78: 
###################################################
#line 1577 "SweaveInput"
w <- gtkWindow(show=FALSE)
w$setTitle("Scrolled window example")
w$setSizeRequest(-1, 300)
w$add(sw)
w$show()


###################################################
### chunk number 79: 
###################################################
#line 1662 "SweaveInput"
## layout a basic dialog -- center align
library(RGtk2)


###################################################
### chunk number 80: 
###################################################
#line 1676 "SweaveInput"
w <- gtkWindow(show=FALSE)
w['border-width'] <- 14
w$setTitle("GtkTable Example")
tbl <- gtkTable(rows=3, columns=2, homogeneous=FALSE)
w$add(tbl)


###################################################
### chunk number 81: 
###################################################
#line 1685 "SweaveInput"
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
### chunk number 82: 
###################################################
#line 1704 "SweaveInput"
tbl$setColSpacing(0, 5)
tbl$attach(sizeLabel, left.attach=0,1, top.attach=0,1, 
           xoptions = c("expand", "fill"), yoptions="")
sizeLabel["xalign"] <- 1
tbl$attach(sizeCombo, left.attach=1,2, top.attach=0,1, 
           xoptions="fill", yoptions="")
#
tbl$attach(diagLabel, left.attach=0,1, top.attach=1,2, 
           xoptions = c("expand", "fill"), 
           yoptions=c("expand", "fill"))
diagLabel["xalign"] <- 1; diagLabel["yalign"] <- 0
#
radioAlign <- gtkAlignment(xalign = 0)
radioAlign$add(diagRadios)
tbl$attach(radioAlign, left.attach=1,2, top.attach=1,2, 
           xoptions=c("expand", "fill"), yoptions = "")
#
tbl$attach(submitBox, left.attach=1,2, top.attach=2,3, 
           xoptions="", yoptions=c("expand", "fill"))


###################################################
### chunk number 83: 
###################################################
#line 1734 "SweaveInput"
w$show()                             


###################################################
### chunk number 84: ButtonConstructors
###################################################
#line 1753 "SweaveInput"
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
g$packStart(gtkButtonNewWithMnemonic("_Mnemonic") ) # Alt-m
w$show()


###################################################
### chunk number 85: CallbackExampleForButton
###################################################
#line 1813 "SweaveInput"
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
### chunk number 86: MacOSXstyleButton
###################################################
#line 1864 "SweaveInput"
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
### chunk number 87: StockButtons
###################################################
#line 1886 "SweaveInput"
cancel <- gtkButton(stock.id="gtk-cancel")
ok <- gtkButton(stock.id="gtk-ok")
delete <- gtkButton(stock.id="gtk-delete")


###################################################
### chunk number 88: macButtonPack
###################################################
#line 1901 "SweaveInput"
g$packEnd(ok, padding=0)
g$packEnd(cancel, padding=12)
g$packEnd(delete, padding=12)
g$packEnd(gtkLabel(""), expand=TRUE, fill=TRUE)


###################################################
### chunk number 89: 
###################################################
#line 1910 "SweaveInput"
ok$grabFocus()
QT <- gSignalConnect(ok, "clicked", function(...) print("ok"))


###################################################
### chunk number 90: 
###################################################
#line 1915 "SweaveInput"
## not shown
w$showAll()


###################################################
### chunk number 91: gtkHButtonBoxExample
###################################################
#line 1919 "SweaveInput"
## not shown
## Had we only wanted to use a button box
w <- gtkWindow()
bb <- gtkHButtonBox()
w$add(bb)

bb$add(gtkButton(stock.id="gtk-delete"))
bb$add(gtkButton(stock.id="gtk-cancel"))
bb$add(gtkButton(stock.id="gtk-ok"))


###################################################
### chunk number 92: LabelFormatting
###################################################
#line 1965 "SweaveInput"
w <- gtkWindow(show=FALSE); w$setTitle("Label formatting")
w$setSizeRequest(250,300)               # narrow
g <- gtkVBox(spacing=2); g$setBorderWidth(5); w$add(g)
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
### chunk number 93: 
###################################################
#line 2062 "SweaveInput"
library(RGtk2)


###################################################
### chunk number 94: 
###################################################
#line 2073 "SweaveInput"
w <- gtkWindow(show=FALSE); w$setTitle("Graphic window");
w$setSizeRequest(400,400)
g <- gtkHBox(); w$add(g)
w$showAll()


###################################################
### chunk number 95: 
###################################################
#line 2086 "SweaveInput"
theSize <- g$getAllocation()$allocation
width <- theSize$width; height <- theSize$height


###################################################
### chunk number 96: 
###################################################
#line 2094 "SweaveInput"
require(cairoDevice)
pixmap <- gdkPixmap(drawable = NULL, 
                    width = width, height = height, depth = 24)
asCairoDevice(pixmap)
hist(rnorm(100))


###################################################
### chunk number 97:  eval=FALSE
###################################################
## #line 2104 "SweaveInput"
## image <- gtkImage(pixmap = pixmap)
## g$packStart(image, expand=TRUE, fill = TRUE)


###################################################
### chunk number 98: notShown
###################################################
#line 2111 "SweaveInput"
## Work this into an example ###
makeIconRGtk2 <- function(w, giffile) {
  if(checkPtrType(w, "GtkWindow")) {
    img <- gdkPixbufNewFromFile(giffile)
    if(!is.null(img$retval))
      w$setIcon(img$retval)
  }
}


###################################################
### chunk number 99: gtkStockListIds
###################################################
#line 2137 "SweaveInput"
head(unlist(gtkStockListIds()), n=3)   


###################################################
### chunk number 100: notShown
###################################################
#line 2178 "SweaveInput"
## This shows an alert panel construction -- a means to place a message box at the top of a container.
## The main point is to illustrate the use of the hide and show methods of the GtkWidgetClass and to 
## show how labels and images can be added to an event box to allow for both coloring and for events.
require(RGtk2)


###################################################
### chunk number 101: 
###################################################
#line 2204 "SweaveInput"
initialize <- 
  function(message="", icon="gtk-dialog-warning", 
           panel.color="goldenrod") {
    "Initialize widgets"
    widget <<- gtkEventBox(show=FALSE)
    widget$modifyBg(state="normal", color=panel.color)
    ##
    g <- gtkHBox(homogeneous=FALSE, spacing=5)
    widget$add(g)
    ##
    image <- gtkImageNewFromStock(icon, size="button")
    image['yalign'] <- .5
    g$packStart(image, expand=FALSE)
    ##
    label <<- gtkLabel(message)
    label['xalign'] <- 0; label['yalign'] <- .5
    label$setLineWrap(TRUE)
    g$packStart(label, expand=TRUE, fill=TRUE)
    ##
    xbutton <- gtkEventBox()
    xbutton$modifyBg(state="normal", color=panel.color) 
    xbutton$add(gtkImageNewFromStock("gtk-close", 
                                     size="menu"))
    g$packEnd(xbutton, expand=FALSE, fill=FALSE)
    ##
    callback <- function(...) {hide(); FALSE}
    sapply(list(xbutton, widget), function(i) 
          gSignalConnect(i, "button-press-event", f=callback))
    ##
    message <<- message                  # set message
    ##
    .self
  }


###################################################
### chunk number 102: AlertPanelClass
###################################################
#line 2241 "SweaveInput"
setRefClass("AlertPanel",
            fields = list(
              widget="ANY",              # main event box
              image="ANY", label="ANY",
              icon="character", message="character"
              ),
            methods=list(
              initialize=initialize,
              set_message=function(msg) {
                message <<- msg         # set and
                show()                  # show
              },
              show=function() {
                label$setText(message)
                widget$show()
              },
              hide=function() {
                widget$hide()
              }))


###################################################
### chunk number 103: 
###################################################
#line 2265 "SweaveInput"
w <- gtkWindow()
g <- gtkVBox(); w$add(g)
#
ap <- getRefClass("AlertPanel")$new()
g$packStart(ap$widget, expand=FALSE)
#
g$packStart(gtkLabel("fill space"), expand=TRUE, fill=TRUE)
ap$set_message("New Message")


###################################################
### chunk number 104: InsertDeleteText
###################################################
#line 2296 "SweaveInput"
e <- gtkEntry()
e$setText("Where did that guy go?")
add.pos <- regexpr("guy", e['text']) - 1 # before "guy"
ret <- e$insertText("@$#%! ", position = add.pos)
e$getText()                             # or e['text']
e$deleteText(start = add.pos, end= ret$position)
e$getText()


###################################################
### chunk number 105: gtk-widget-entry-activate
###################################################
#line 2315 "SweaveInput"
gSignalConnect(e, "activate", function() {
  message("Text entered: ", e$getText())
})


###################################################
### chunk number 106: gtk-widget-entry-validate
###################################################
#line 2361 "SweaveInput"
validatedEntry <- gtkEntry()
gSignalConnect(validatedEntry, "changed", function(entry) {
  text <- entry$getText()
  if (nzchar(gsub("[a-zA-Z]", "", text))) {
    entry$setIconFromStock("primary", "gtk-no")
    validatedEntry$setIconTooltipText("primary", "Only letters are allowed")
  }
  else { 
    entry$setIconFromStock("primary", "gtk-yes")
    validatedEntry$setIconTooltipText("primary", NULL)
  }
})
validatedEntry$setIconFromStock("primary", "gtk-yes")


###################################################
### chunk number 107: 
###################################################
#line 2376 "SweaveInput"
w <- gtkWindow(show=FALSE)
w$add(validatedEntry)
w$showAll()


###################################################
### chunk number 108: gtk-widget-check-button
###################################################
#line 2397 "SweaveInput"
cb <- gtkCheckButton("Option")


###################################################
### chunk number 109: gtk-widget-check-button-active
###################################################
#line 2403 "SweaveInput"
cb['active']
cb['active'] <- TRUE


###################################################
### chunk number 110: gtk-widget-check-button-toggle
###################################################
#line 2411 "SweaveInput"
gSignalConnect(cb, "toggled", function(x) {
  message("Button is ", if (x$active) "active" else "inactive")
})


###################################################
### chunk number 111: RadioGroupExample
###################################################
#line 2439 "SweaveInput"
labels <- c("two.sided", "less", "greater")
radiogp <- list()                                 # list for group
radiogp[[labels[1]]] <- gtkRadioButton(label=labels[1]) # group = NULL
for(label in labels[-1]) 
  radiogp[[label]] <- gtkRadioButton(radiogp, label=label)  # group is a list


###################################################
### chunk number 112: 
###################################################
#line 2454 "SweaveInput"
w <- gtkWindow(); w$setTitle("Radio group example")
g <- gtkVBox(FALSE, 5); w$add(g)
sapply(radiogp, gtkBoxPackStart, object = g)


###################################################
### chunk number 113: 
###################################################
#line 2461 "SweaveInput"
g[[3]]$setActive(TRUE)           
sapply(radiogp, `[`, "active") 


###################################################
### chunk number 114: 
###################################################
#line 2468 "SweaveInput"
sapply(radiogp, gSignalConnect, "toggled",     # connect each
       f = function(w, data) {
         if(w['active']) # set before callback
           message("clicked", w$getLabel(),"\n")
       })


###################################################
### chunk number 115: 
###################################################
#line 2482 "SweaveInput"
radiogp <- gtkRadioButton(label=labels[1])
btns <- sapply(labels[-1], gtkRadioButtonNewWithLabelFromWidget, 
               group = radiogp)
w <- gtkWindow()
w['title'] <- "Radio group example"
g <- gtkVBox(); w$add(g)
sapply(rev(radiogp$getGroup()), gtkBoxPackStart, object = g)


###################################################
### chunk number 116: gtk-widget-combo
###################################################
#line 2514 "SweaveInput"
combo <- gtkComboBoxNewText()
sapply(c("two.sided", "less", "greater"), combo$appendText)


###################################################
### chunk number 117: gtk-widget-combo-changed
###################################################
#line 2528 "SweaveInput"
gSignalConnect(combo, "changed",
               f = function(w, ...) {
                 i <- w$getActive() + 1 # shift index
                 if(i == 0) 
                   cat("No value selected\n")
                 else
                   cat("Value is", w$getActiveText(), "\n")
               })


###################################################
### chunk number 118: ComboBoxExample
###################################################
#line 2545 "SweaveInput"
## An example of two comboboxes where 1 updates the other
require(RGtk2)
data(mtcars); library(MASS); data(Cars93) # need some data frames


###################################################
### chunk number 119: 
###################################################
#line 2555 "SweaveInput"
#library(ProgGUIinR)                     # for avail_dfs, find_vars
source("~/GUI/ProgGUIInR/R/misc.R")


###################################################
### chunk number 120: Widgets
###################################################
#line 2561 "SweaveInput"
w <- gtkWindow(show=FALSE)
w$setTitle("gtkComboBox example")

df_combo <- gtkComboBoxNewText()
var_combo <- gtkComboBoxNewText()


###################################################
### chunk number 121: Layout
###################################################
#line 2573 "SweaveInput"
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
### chunk number 122: configureComboBoxes
###################################################
#line 2589 "SweaveInput"
sapply(avail_dfs(), df_combo$appendText)
df_combo$setActive(-1)
#
gSignalConnect(df_combo, "changed", function(w, ...) {
  var_combo$getModel()$clear()
  sapply(find_vars(w$getActiveText()),  var_combo$appendText)
  g2$show()
})


###################################################
### chunk number 123: 
###################################################
#line 2601 "SweaveInput"
## show window
w$show()


###################################################
### chunk number 124: gtk-widget-slider
###################################################
#line 2620 "SweaveInput"
slider <- gtkHScale(min = 1, max = 100, step = 1)
slider$setValue(10)
slider['value-pos'] <- "bottom"


###################################################
### chunk number 125: gtk-widget-slider-value-changed
###################################################
#line 2637 "SweaveInput"
gSignalConnect(slider, "value-changed",
               f = function(w, ...) {
                 val <- w$getValue()
                 drawHistogram(val)
               })


###################################################
### chunk number 126: SliderAndHistogram
###################################################
#line 2647 "SweaveInput"
data <- rnorm(100)

library(lattice)
drawHistogram <- function(val) print(histogram(data, nint = val))
drawHistogram(slider$getValue())        

w <- gtkWindow(); w$setTitle("Histogram bin selection")
w$add(slider)


###################################################
### chunk number 127: 
###################################################
#line 2687 "SweaveInput"
## make a range widget combining both a slider and spinbutton to choose a number
library(RGtk2)


###################################################
### chunk number 128: 
###################################################
#line 2694 "SweaveInput"
from <- 0; to <- 100; by <- 1


###################################################
### chunk number 129: 
###################################################
#line 2702 "SweaveInput"
slider <- gtkHScale(min=from, max=to, step=by)
slider['draw-value'] <- FALSE
adjustment <- slider$getAdjustment()
spinbutton <- gtkSpinButton(adjustment = adjustment)


###################################################
### chunk number 130: 
###################################################
#line 2712 "SweaveInput"
g <- gtkHBox()
g$packStart(slider, expand=TRUE, fill=TRUE, padding=5)
g$packStart(spinbutton, expand=FALSE, padding=5)


###################################################
### chunk number 131: 
###################################################
#line 2719 "SweaveInput"
w <- gtkWindow(show=FALSE)
w['title'] <- "Example of a range widget"
w$setSizeRequest(width=200, height=-1)
w$add(g)
w$show()


###################################################
### chunk number 132: 
###################################################
#line 2742 "SweaveInput"
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
### chunk number 133: gtk-widget-progress-pulse
###################################################
#line 2757 "SweaveInput"
pb$pulse()


###################################################
### chunk number 134: gtk-widget-spinner eval=FALSE
###################################################
## #line 2767 "SweaveInput"
## spinner <- gtkSpinner()
## spinner$start()
## spinner$stop()


###################################################
### chunk number 135: 
###################################################
#line 2791 "SweaveInput"
TARGET.TYPE.TEXT   <- 80                 
TARGET.TYPE.PIXMAP <- 81                  
widgetTargetTypes <- 
  list(text = gtkTargetEntry("text/plain", 0, 
         TARGET.TYPE.TEXT),
       pixmap = gtkTargetEntry("image/x-pixmap", 0, 
         TARGET.TYPE.PIXMAP))


###################################################
### chunk number 136: 
###################################################
#line 2808 "SweaveInput"
w <- gtkWindow(); w['title'] <- "Drag Source"
dragSourceWidget <-  gtkButton("Text to drag")
w$add(dragSourceWidget)

gtkDragSourceSet(dragSourceWidget,
       start.button.mask=c("button1-mask", "button3-mask"),
       targets=widgetTargetTypes[["text"]],
       actions="copy")


###################################################
### chunk number 137: 
###################################################
#line 2830 "SweaveInput"
gSignalConnect(dragSourceWidget, "drag-data-get", 
               function(widget, context, sel, tType, eTime) {
                 sel$setText(widget$getLabel()) 
               })


###################################################
### chunk number 138: 
###################################################
#line 2845 "SweaveInput"
w <- gtkWindow(); w['title'] <- "Drop Target"
dropTargetWidget <- gtkButton("Drop here")
w$add(dropTargetWidget)

gtkDragDestSet(dropTargetWidget,
               flags="all", 
               targets=widgetTargetTypes[["text"]],
               actions="copy")


###################################################
### chunk number 139: 
###################################################
#line 2871 "SweaveInput"
gSignalConnect(dropTargetWidget, "drag-data-received", 
       function(widget, context, x, y, sel, tType, eTime) {
         dropdata <- sel$getText()
         widget$setLabel(rawToChar(dropdata))
       })


###################################################
### chunk number 140: 
###################################################
#line 2896 "SweaveInput"
library(RGtk2)


###################################################
### chunk number 141: 
###################################################
#line 2977 "SweaveInput"
data(Cars93, package="MASS")            # mix of classes
model <- rGtkDataFrame(Cars93)
model[1, 4] <- 12
model[1, 4]                              # get value


###################################################
### chunk number 142: 
###################################################
#line 2999 "SweaveInput"
model$setFrame(Cars93[1:5, 1:5])


###################################################
### chunk number 143: rgtk2-mvc-treeview-construc
###################################################
#line 3024 "SweaveInput"
view <- gtkTreeView(model)


###################################################
### chunk number 144: rgtk2-mvc-insert-column-hardway
###################################################
#line 3036 "SweaveInput"
vc <- gtkTreeViewColumn()
vc$setTitle("Manufacturer")
cr <- gtkCellRendererText()
vc$packStart(cr)
vc$addAttribute(cr, "text", 0)
view$insertColumn(vc, 0)


###################################################
### chunk number 145: rgtk2-mvc-insert-column-easyway
###################################################
#line 3065 "SweaveInput"
view$insertColumnWithAttributes(position = -1, 
     title = "Model", cell = gtkCellRendererText(), text = 1)


###################################################
### chunk number 146: rgtk2-mvc-insert-all-columns
###################################################
#line 3081 "SweaveInput"
view <- gtkTreeView(model)
mapply(view$insertColumnWithAttributes,  -1, colnames(model), 
       list(gtkCellRendererText()), 
       text = seq_len(ncol(model)) - 1)


###################################################
### chunk number 147: rgtk2-mvc-path-constructor-list
###################################################
#line 3154 "SweaveInput"
secondRow <- gtkTreePathNewFromIndices(2)


###################################################
### chunk number 148: rgtk2-mvc-path-constructor-tree
###################################################
#line 3158 "SweaveInput"
abcPath <- gtkTreePathNewFromIndices(c(1, 3, 2))
abcPath <- gtkTreePathNewFromString("1:3:2")


###################################################
### chunk number 149: rgtk2-mvc-iter-traverse
###################################################
#line 3178 "SweaveInput"
iter <- model$getIterFirst()
manufacturer <- character()
while(iter$retval) {
  manufacturer <- c(manufacturer, model$get(iter$iter, 0)[[1]])
  iter$retval <- model$iterNext(iter$iter)
}


###################################################
### chunk number 150: rgtk2-mvc-iter-apply
###################################################
#line 3207 "SweaveInput"
nrows <- model$iterNChildren(NULL)
manufacturer <- sapply(seq(nrows), function(i) {
  iter <- model$iterNthChild(NULL, i)
  model$get(iter$iter, 0)[[1]]
})


###################################################
### chunk number 151: 
###################################################
#line 3266 "SweaveInput"
model <- rGtkDataFrame(mtcars)
view <- gtkTreeView(model)
selection <- view$getSelection()
selection$setMode("single")


###################################################
### chunk number 152: 
###################################################
#line 3273 "SweaveInput"
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
### chunk number 153: 
###################################################
#line 3291 "SweaveInput"
curSel <- selection$getSelected()    # retrieve selection
with(curSel, model$getValue(iter, 0)$value) # model, iter


###################################################
### chunk number 154: 
###################################################
#line 3302 "SweaveInput"
selection$setMode("multiple")


###################################################
### chunk number 155: notShown
###################################################
#line 3306 "SweaveInput"
selection$selectPath(gtkTreePathNewFromIndices(1)) # set for example
selection$selectPath(gtkTreePathNewFromIndices(2)) # set for example
selection$selectPath(gtkTreePathNewFromIndices(3)) # set for example


###################################################
### chunk number 156: 
###################################################
#line 3314 "SweaveInput"
curSel <- selection$getSelectedRows()
if(length(curSel$retval)) {
  rows <- sapply(curSel$retval, gtkTreePathGetIndices) + 1L
  curSel$model[rows, 1]
}


###################################################
### chunk number 157:  eval=FALSE
###################################################
## #line 3336 "SweaveInput"
## sapply(view$getColumns(), function(i) i == column)


###################################################
### chunk number 158: rgtk2-mvc-sorting-clickable
###################################################
#line 3352 "SweaveInput"
vc <- view$getColumn(0)
vc$setSortColumnId(0)


###################################################
### chunk number 159: rgtk2-mvc-sorting-sortable
###################################################
#line 3361 "SweaveInput"
model$setSortColumnId(0, "ascending")


###################################################
### chunk number 160: basicSort
###################################################
#line 3372 "SweaveInput"
store <- rGtkDataFrame(mtcars)
sorted <- gtkTreeModelSortNewWithModel(store)
view <- gtkTreeView(sorted)
view$insertColumnWithAttributes(0, "Click to sort", 
                                gtkCellRendererText(), text=0)
view$getColumn(0)$setSortColumnId(0)


###################################################
### chunk number 161: sort-example
###################################################
#line 3387 "SweaveInput"
f <- function(model, iter1, iter2, user.data) {
  column <- user.data
  val1 <- model$getValue(iter1, column)$value
  val2 <- model$getValue(iter2, column)$value
  as.integer(val1 - val2)
}
sorted$setSortFunc(sort.column.id=0, sort.func=f, user.data=0)


###################################################
### chunk number 162: notShown
###################################################
#line 3397 "SweaveInput"
## basic GUI
sw <- gtkScrolledWindow()
sw$add(view)
w <- gtkWindow(show=FALSE)
w['title'] <- "Example of sortable tree view"
w$add(sw)
w$show()


###################################################
### chunk number 163: 
###################################################
#line 3419 "SweaveInput"
df <- data.frame(col=letters[1:3], vis=c(TRUE, TRUE, FALSE))
store <- rGtkDataFrame(df)
filtered <- store$filter()
filtered$setVisibleColumn(1)            # 0-based
view <- gtkTreeView(filtered)


###################################################
### chunk number 164: notShown
###################################################
#line 3436 "SweaveInput"
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
### chunk number 165: 
###################################################
#line 3458 "SweaveInput"
library(RGtk2)


###################################################
### chunk number 166: 
###################################################
#line 3473 "SweaveInput"
df <- data.frame(state.name)
df$visible <- rep(TRUE, nrow(df))
store <- rGtkDataFrame(df)


###################################################
### chunk number 167: 
###################################################
#line 3481 "SweaveInput"
filteredStore <- store$filter()
filteredStore$setVisibleColumn(ncol(df)-1)      # offset
view <- gtkTreeView(filteredStore)


###################################################
### chunk number 168: 
###################################################
#line 3488 "SweaveInput"
view$insertColumnWithAttributes(0, "Col", 
                 gtkCellRendererText(), text = 0)


###################################################
### chunk number 169: 
###################################################
#line 3498 "SweaveInput"
e <- gtkEntry()
gSignalConnect(e, "changed", function(w, data) {
  pattern <- w$getText()
  df <- data$getModel()
  values <- df[, "state.name"]
  df[, "visible"] <- grepl(pattern, values)
}, data=filteredStore)


###################################################
### chunk number 170: 
###################################################
#line 3511 "SweaveInput"
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
### chunk number 171: cr-right-aligned
###################################################
#line 3583 "SweaveInput"
cr <- gtkCellRendererText()
cr['xalign'] <- 1                    # default 0.5 = centered
cr['family'] <- "Helvetica"  


###################################################
### chunk number 172: 
###################################################
#line 3615 "SweaveInput"
cr <- gtkCellRendererCombo()
store <- rGtkDataFrame(state.name)
cr['model'] <- store
cr['text-column'] <- 0
cr['editable'] <- TRUE                  # needed


###################################################
### chunk number 173: VariableSelectionExample
###################################################
#line 3652 "SweaveInput"
## Example showing implementation of variable selection widget where two tables show possible selections
## and selection. Similar to SPSS widget
## Illustrates filtered models, icons in view column
library(RGtk2)
library(MASS)


###################################################
### chunk number 174: 
###################################################
#line 3666 "SweaveInput"
df <- Cars93


###################################################
### chunk number 175: make_icon
###################################################
#line 3674 "SweaveInput"
#require(ProgGUIinR)                     # for make_icon
source("~/GUI/ProgGUIInR/R/misc.R")     # for make_icon
make_icon_pixmap <- function(x, ...) {
  require(grid)
  require(cairoDevice)
  pixmap <- gdkPixmap(drawable=NULL, width=16, height=16, 
                      depth=24)
  asCairoDevice(pixmap)
  grid.newpage()
  grid.draw(make_icon(x))
  dev.off()
  gdkPixbufGetFromDrawable(NULL, pixmap, NULL, 0,0,0,0,-1,-1)
}


###################################################
### chunk number 176: models
###################################################
#line 3695 "SweaveInput"
mdf <- data.frame(Variables=sort(names(df)),
                  visible = rep(TRUE, ncol(df)),
                  stringsAsFactors=FALSE
                 )
mdf$pixmap <- sapply(names(df), function(i) 
                     make_icon_pixmap(df[,i, drop=TRUE]))
#
models <- list()
models[[1]] <- rGtkDataFrame(mdf)
mdf$visible <- !mdf$visible
models[[2]] <- rGtkDataFrame(mdf)


###################################################
### chunk number 177: filterModels
###################################################
#line 3711 "SweaveInput"
filterModels <- sapply(models, function(i)
                       gtkTreeModelFilterNew(i))
sapply(filterModels, function(i) i$setVisibleColumn(1)) 


###################################################
### chunk number 178: guiLayout
###################################################
#line 3720 "SweaveInput"
w <- gtkWindow(show=FALSE)
g <- gtkHBox()
w$add(g)

## scrollbars
scrollbars <- sapply(1:2, function(i) gtkScrolledWindow())
sapply(1:2, function(i) {
  scrollbars[[i]]['hscrollbar-policy'] <- "automatic"
  scrollbars[[i]]['vscrollbar-policy'] <- "automatic"
})

buttonBox <- gtkVBox();
#
g$packStart(scrollbars[[1]], expand=TRUE)
g$packStart(buttonBox, expand=FALSE)
g$packStart(scrollbars[[2]], expand=TRUE)
#
views <- sapply(1:2, function(i) gtkTreeView())
sapply(1:2, function(i) scrollbars[[i]]$add(views[[i]]))


###################################################
### chunk number 179: configureView
###################################################
#line 3744 "SweaveInput"
sapply(1:2, function(i) views[[i]]$setModel(filterModels[[i]]))
sapply(1:2, function(i)
       views[[i]]$getSelection()$setMode('multiple'))


###################################################
### chunk number 180: viewColumns
###################################################
#line 3753 "SweaveInput"
make_view_column <- function() {
  vc <- gtkTreeViewColumn()
  vc$setTitle("Variable")
  cr <- gtkCellRendererPixbuf()
  vc$packStart(cr)
  vc$addAttribute(cr, "pixbuf", 2)
  cr <- gtkCellRendererText()
  vc$packStart(cr)
  vc$addAttribute(cr, "text", 0)
  vc
}
sapply(views, function(view) 
  view$insertColumn(make_view_column(), 0))


###################################################
### chunk number 181: extendAPI
###################################################
#line 3772 "SweaveInput"
## add to the gtkTreeView API for convenience
gtkTreeViewSelectedIndices <- function(object) {
  paths <- object$getSelection()$getSelectedRows()$retval
  out <- sapply(paths, function(i) {
    model <- object$getModel()          # Filtered!
    model$ConvertPathToChildPath(i)$toString()
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
### chunk number 182: buttons
###################################################
#line 3794 "SweaveInput"
## do buttons
buttons <- lapply(c(">", "<"), gtkButton)
#
move <- function(i, ...) {
  ind <- views[[i]]$selectedIndices()
  models[[3-i]][ind,2] <- TRUE
  models[[i]][ind,2] <- FALSE
}
sapply(1:2, function(i) 
  gSignalConnect(buttons[[i]], "clicked", move, data=i, 
                 user.data.first=TRUE))


###################################################
### chunk number 183: sensitiveButtons
###################################################
#line 3810 "SweaveInput"
sapply(buttons, gtkWidgetSetSensitive, FALSE) 
sapply(1:2, function(i) 
       gSignalConnect(views[[i]]$getSelection(), "changed", 
                      function(...) {
                        has <- views[[i]]$hasSelection()
                        buttons[[i]]['sensitive'] <- has
                      }))


###################################################
### chunk number 184: packButtons
###################################################
#line 3822 "SweaveInput"
buttonBox$packStart(gtkVBox(), expand=TRUE) # align in center
sapply(buttons, gtkBoxPackStart, object=buttonBox, 
       expand=FALSE, padding=6)
buttonBox$packStart(gtkVBox(), expand=TRUE)
#
w$show()


###################################################
### chunk number 185: cellRendererToggle
###################################################
#line 3851 "SweaveInput"
cr <- gtkCellRendererToggle()
cr['activatable'] <- TRUE               # cell can be activated
cr['active'] <- TRUE
gSignalConnect(cr, "toggled", function(w, path) {
  model$active[as.numeric(path) + 1] <- w['active']
})


###################################################
### chunk number 186: 
###################################################
#line 3874 "SweaveInput"
## example showing how to add a toggle button on left of data display
library(RGtk2)


###################################################
### chunk number 187: FixACRANforSweave
###################################################
#line 3881 "SweaveInput"
repos <- getOption("repos")
repos["CRAN"] <- "http://streaming.stat.iastate.edu/CRAN"
options(repos = repos)


###################################################
### chunk number 188: getUpgradablePackages
###################################################
#line 3886 "SweaveInput"
d <- old.packages()[,c("Package", "Installed", "ReposVer")]
d <- as.data.frame(d)


###################################################
### chunk number 189: 
###################################################
#line 3894 "SweaveInput"
doUpdate <- function(d)  install.packages(d$Package)


###################################################
### chunk number 190: 
###################################################
#line 3901 "SweaveInput"
n <- ncol(d)
nms <- colnames(d)
d$.toggle <- rep(FALSE, nrow(d))
store <- rGtkDataFrame(d)


###################################################
### chunk number 191: 
###################################################
#line 3910 "SweaveInput"
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
### chunk number 192: 
###################################################
#line 3927 "SweaveInput"
mapply(view$insertColumnWithAttributes, -1, nms, 
       list(gtkCellRendererText()), text = 1:n-1)


###################################################
### chunk number 193: 
###################################################
#line 3933 "SweaveInput"
view$setModel(store)


###################################################
### chunk number 194: 
###################################################
#line 3942 "SweaveInput"
b <- gtkButton("Update packages")
gSignalConnect(b, "clicked", function(w, data) {
  view <- data
  model <- view$getModel()
  n <- dim(model)[2]
  vals <- model[model[, n], -n, drop=FALSE]
  doUpdate(vals)
}, data=view)


###################################################
### chunk number 195: 
###################################################
#line 3956 "SweaveInput"
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
### chunk number 196: comboEditor
###################################################
#line 3987 "SweaveInput"
cr <- gtkCellRendererProgress()
cr["value"] <- 50                       # fixed 50%
cr['orientation'] <- "right-to-left"


###################################################
### chunk number 197: 
###################################################
#line 4025 "SweaveInput"
func <- function(viewCol, cellRend, model, iter, data) {
  curVal <- model$getValue(iter, 0)$value
  fVal <- sprintf("%.3f", curVal)
  cellRend['text'] <- fVal
  cellRend['xalign'] <- 1
}


###################################################
### chunk number 198: 
###################################################
#line 4036 "SweaveInput"
view <- gtkTreeView(rGtkDataFrame(data.frame(rnorm(100))))
cr <- gtkCellRendererText()
view$insertColumnWithAttributes(0, "numbers", cr, text = 0)
vc <- view$getColumn(0)
vc$setCellDataFunc(cr, func)


###################################################
### chunk number 199: 
###################################################
#line 4082 "SweaveInput"
cr <- gtkCellRendererText()


###################################################
### chunk number 200: editedSignal
###################################################
#line 4085 "SweaveInput"
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
#line 4112 "SweaveInput"
## GUI for configuring options -- in a table
library(RGtk2)


###################################################
### chunk number 202: 
###################################################
#line 4125 "SweaveInput"
opts <- c("main","sub","xlab","ylab", "line","outer")
df <- data.frame(option=opts,
                 value=c("","","","","0","FALSE"),
                 coerce=c(rep("as.character", 4), 
                   "as.integer", "as.logical"),
                 edit_color=rep("gray95", 6),
                 dirty = rep(FALSE, 6),
                 stringsAsFactors=FALSE)


###################################################
### chunk number 203: coercionFunctions
###################################################
#line 4143 "SweaveInput"
asNumeric <- function(x) sprintf("%.2f", as.numeric(x))
asDate <- function(x)  format(as.Date(x, "%m/%d/%y"), 
                              "%m/%d/%y")


###################################################
### chunk number 204: firstColumn
###################################################
#line 4152 "SweaveInput"
m <- rGtkDataFrame(df)
v <- gtkTreeView(m)
#
cr <- gtkCellRendererText()
cr['background'] <- 'gray80'
v$insertColumnWithAttributes(position=-1,
                             title="Option",
                             cell=cr,
                             text= 1- 1)


###################################################
### chunk number 205: secondColumn
###################################################
#line 4166 "SweaveInput"
cr <- gtkCellRendererText()
cr['editable'] <- TRUE
v$insertColumnWithAttributes(position=-1,
                             title='Value',
                             cell=cr,
                             text= 2 - 1,
                             background= 4 - 1
                             )


###################################################
### chunk number 206: editConnect
###################################################
#line 4181 "SweaveInput"
gSignalConnect(cr, "edited", function(cr, path, new.text, 
                                      user.data) {
  m <- user.data$model
  i <- as.numeric(path) + 1; j <- user.data$column
  m[i,j] <- get(m[i, 'coerce'])(new.text) # format
  m[i, 'dirty'] <- TRUE                   # mark dirty
  m[i, 'edit_color'] <- 'gray70'          # change color
},
               data=list(model=m, column=2))


###################################################
### chunk number 207: 
###################################################
#line 4194 "SweaveInput"
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
#line 4214 "SweaveInput"
require(helpr, quietly=TRUE)
package <- "graphics"; topic <- "title"
rd <- helpr:::parse_help(helpr:::pkg_topic(package, topic), 
                         package = package)
descs <- rd$params$args
names(descs) <- sapply(descs, function(i) i$param)


###################################################
### chunk number 209: 
###################################################
#line 4234 "SweaveInput"
v['has-tooltip'] <- TRUE
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
#line 4289 "SweaveInput"
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
### chunk number 211: 
###################################################
#line 4302 "SweaveInput"
iter <- tstore$getIterFromString("0:0")
tstore$getValue(iter$iter, column = 0)$value


###################################################
### chunk number 212: rgtk2-mvc-tree-traverse
###################################################
#line 4333 "SweaveInput"
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
### chunk number 213: notShown
###################################################
#line 4398 "SweaveInput"
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
### chunk number 214: 
###################################################
#line 4419 "SweaveInput"
store <- rGtkDataFrame(Cars93[,"Model", drop=FALSE])


###################################################
### chunk number 215: makeView
###################################################
#line 4424 "SweaveInput"
view <- gtkTreeView()
view$insertColumnWithAttributes(0, "Make", 
           gtkCellRendererText(), text = 0)


###################################################
### chunk number 216: makeGUI
###################################################
#line 4430 "SweaveInput"
w <- gtkWindow(show=FALSE)
w['title'] <- "Example of changing models"
sw <- gtkScrolledWindow()
sw$add(view)
w$add(sw)
w$show()


###################################################
### chunk number 217: 
###################################################
#line 4440 "SweaveInput"
view$setModel(store)               # the rectangular store
view$setModel(tstore)              # or the tree store


###################################################
### chunk number 218: 
###################################################
#line 4455 "SweaveInput"
## tree example
## a variable browser
require(RGtk2)


###################################################
### chunk number 219: SetUpStore
###################################################
#line 4464 "SweaveInput"
store <- gtkTreeStore(rep("gchararray", 2))
sstore <- gtkTreeModelSort(store)


###################################################
### chunk number 220: 
###################################################
#line 4470 "SweaveInput"
iter <- store$append(parent=NULL)$iter
store$setValue(iter, column=0, "GlobalEnv")
store$setValue(iter, column=1, "environment")
iter <- store$append(parent=iter)


###################################################
### chunk number 221: 
###################################################
#line 4481 "SweaveInput"
view <- gtkTreeView(sstore)
view$getSelection()$setMode("multiple")


###################################################
### chunk number 222: 
###################################################
#line 4490 "SweaveInput"
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
### chunk number 223: trePathToIter
###################################################
#line 4510 "SweaveInput"
pathToIter <- function(sstore, tpath) {
  store <- sstore$getModel()
  uspath <- sstore$convertPathToChildPath(tpath)
  store$getIter(uspath)$iter
}


###################################################
### chunk number 224: IterToPath
###################################################
#line 4522 "SweaveInput"
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
### chunk number 225: getChildren
###################################################
#line 4540 "SweaveInput"
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
### chunk number 226: addChildren
###################################################
#line 4575 "SweaveInput"
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
### chunk number 227: 
###################################################
#line 4594 "SweaveInput"
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
### chunk number 228: DoubleClickHandler
###################################################
#line 4613 "SweaveInput"
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
### chunk number 229: addRenderer
###################################################
#line 4635 "SweaveInput"
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
### chunk number 230: exampleGUI
###################################################
#line 4651 "SweaveInput"
## We now place the tree view widget into a basic GUI.
sw <- gtkScrolledWindow()
sw$setPolicy("automatic","automatic")
sw$add(view)

w <- gtkWindow()
w$setTitle("Tree view")
w$add(sw)


###################################################
### chunk number 231: 
###################################################
#line 4718 "SweaveInput"
## a combobox that learns as you go.
## no tooltip per item, but here we add as detail
library(RGtk2)


###################################################
### chunk number 232: 
###################################################
#line 4732 "SweaveInput"
m <- rGtkDataFrame(data.frame(fname="", visits="", novisits=0,
                              stringsAsFactors=FALSE))
cb <- gtkComboBoxEntryNewWithModel(m, text.column=0)


###################################################
### chunk number 233: ConfigureCellRenderers
###################################################
#line 4744 "SweaveInput"
cr <- gtkCellRendererText()
cb$packStart(cr)
cb$addAttribute(cr, "text", 1)
cr['foreground'] <- "gray50"
cr['ellipsize'] <- "end"
cr['style'] <- "italic"
cr['alignment'] <- "right"


###################################################
### chunk number 234: Layout
###################################################
#line 4756 "SweaveInput"
w <- gtkWindow(show=FALSE)
w['border-width'] <- 15
g <- gtkHBox(); w$add(g)
g$packStart(gtkLabel("Help on:"))
g$packStart(cb, expand=TRUE, fill=TRUE)
#
w$show()


###################################################
### chunk number 235: helperFunctions
###################################################
#line 4792 "SweaveInput"
addValue <- function(cb, value) {
  model <- cb$getModel()
  if(nrow(m) == 1 && m[1,1] == "") {
    m[1,1] <- value; m[1,2] <- ""; m[1,3] <- 0
  } else {                              # not first time
    cb$setModel(NULL)
    model$AppendRows(list(fname=value, visits="", novisits=0))
    cb$setModel(model)
  }
}


###################################################
### chunk number 236: helperFunction2
###################################################
#line 4808 "SweaveInput"
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


###################################################
### chunk number 237: 
###################################################
#line 4824 "SweaveInput"
gSignalConnect(cb, "changed", f=function(w, ...) {
  if(cb$getActive() >= 0) {
    val <- w$getActiveText()
    callHelpFunction(w, val)
  }
})


###################################################
### chunk number 238: 
###################################################
#line 4836 "SweaveInput"
gSignalConnect(cb$getChild(), "activate", 
               f = function(cb, entry, ...) {
  val <- entry$getText()
  if(!any(val == cb$getModel()[,1, drop=TRUE])) {
    addValue(cb, val)                   # a new one
  }
  callHelpFunction(cb, val)
}, data=cb, user.data.first=TRUE)


###################################################
### chunk number 239: 
###################################################
#line 4906 "SweaveInput"
require(RGtk2)


###################################################
### chunk number 240: AppendWords
###################################################
#line 4912 "SweaveInput"
entry <- gtkEntry()
completion <- gtkEntryCompletion()
entry$setCompletion(completion)


###################################################
### chunk number 241: SetCompletion
###################################################
#line 4922 "SweaveInput"
store <- rGtkDataFrame(state.name)
completion$setModel(store)
completion$setTextColumn(0)
completion['inline-completion'] <- TRUE
completion['popup-single-match'] <- FALSE


###################################################
### chunk number 242: SetMatchFunc
###################################################
#line 4934 "SweaveInput"
matchAnywhere <- function(comp, str, iter, user.data) {
  model <- comp$getModel()
  rowVal <- model$getValue(iter, 0)$value # column 0 in model
  
  str <- comp$getEntry()$getText()      # case sensitive
  grepl(str, rowVal)
}
completion$setMatchFunc(matchAnywhere)


###################################################
### chunk number 243: notShown
###################################################
#line 4945 "SweaveInput"
## Our basic GUI is basic:
w <- gtkWindow(show=FALSE)
w$setTitle("Test of entry with completion")
w$add(entry)
w$showAll()


###################################################
### chunk number 244: gtk-mvc-entry-buffer
###################################################
#line 4969 "SweaveInput"
buffer <- gtkEntryBuffer("", -1)        
entry1 <- gtkEntryNewWithBuffer(buffer = buffer)
entry2 <- gtkEntryNewWithBuffer(buffer = buffer)
entry1$setText("echo")
entry2$getText()


###################################################
### chunk number 245: 
###################################################
#line 5002 "SweaveInput"
w <- gtkWindow()
w['border-width'] <- 15
#
tv <- gtkTextView()
sw <- gtkScrolledWindow()
sw['hscrollbar-policy'] <- "automatic"
sw['vscrollbar-policy'] <- "automatic"
#
w$add(sw)


###################################################
### chunk number 246: setText
###################################################
#line 5016 "SweaveInput"
buffer <- tv$getBuffer()
buffer$setText("Lorem ipsum dolor sit amet ...")


###################################################
### chunk number 247: bufferGetText
###################################################
#line 5024 "SweaveInput"
start <- buffer$getStartIter()$iter    
end <- buffer$getEndIter()$iter
buffer$getText(start, end)


###################################################
### chunk number 248: 
###################################################
#line 5165 "SweaveInput"
## setup example, not shown
w <- gtkWindow()
tv <- gtkTextView()
w$add(tv)


###################################################
### chunk number 249: FindWordAtMouseClick
###################################################
#line 5172 "SweaveInput"
ID <- gSignalConnect(tv, "button-press-event", 
                     f=function(w, e, ...) {
  siter <- w$getIterAtLocation(e$getX(), e$getY())$iter
  niter <- siter$copy()                 # need copy
  siter$backwardWordStart()
  niter$forwardWordEnd()
  val <- w$getBuffer()$getText(siter, niter)
  print(val)                            # replace
  return(FALSE)                         # call next handler
})


###################################################
### chunk number 250: 
###################################################
#line 5227 "SweaveInput"
tv <- gtkTextView()
tb <- tv$getBuffer()
tb$setText("The quick brown fox jumped over the lazy dog.")
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
### chunk number 251: 
###################################################
#line 5276 "SweaveInput"
## make a *basic* terminal in RGtk2
library(RGtk2)


###################################################
### chunk number 252: TextViewWidget
###################################################
#line 5283 "SweaveInput"
tv <- gtkTextView()
tb <- tv$getBuffer()
font <- pangoFontDescriptionFromString("Monospace")
tv$modifyFont(font)                     # widget wide


###################################################
### chunk number 253: 
###################################################
#line 5292 "SweaveInput"
tb$createTag(tag.name="cmdInput")
tb$createTag(tag.name="cmdOutput", 
             weight=PangoWeight["bold"])
tb$createTag(tag.name="cmdError", 
             weight=PangoStyle["italic"], foreground="red")
tb$createTag(tag.name="uneditable", editable=FALSE)


###################################################
### chunk number 254: 
###################################################
#line 5304 "SweaveInput"
startCmd <- gtkTextMark("startCmd", left.gravity=TRUE)
tb$addMark(startCmd, tb$getStartIter()$iter)
bufferEnd <- tb$CreateMark("bufferEnd", tb$getEndIter()$iter)



###################################################
### chunk number 255: 
###################################################
#line 5313 "SweaveInput"
scrollViewport <- function(view, ...) {
  iter <- view$getBuffer()$getEndIter()$iter
  view$scrollToMark(bufferEnd, within.margin=0)
  return(FALSE)
}


###################################################
### chunk number 256: 
###################################################
#line 5324 "SweaveInput"
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
### chunk number 257: addOutput
###################################################
#line 5345 "SweaveInput"
addOutput <- function(obj, output, tagName="cmdOutput") {
  endIter <- obj$getEndIter()
  if(length(output) > 0) 
    sapply(output, function(i)  {
      obj$insertWithTagsByName(endIter$iter, i, tagName)
      obj$insert(endIter$iter, "\n", len=-1)
    })
}


###################################################
### chunk number 258: 
###################################################
#line 5359 "SweaveInput"
findCMD <- function(obj) {
  endIter <- obj$getEndIter()
  startIter <- obj$getIterAtMark(startCmd)
  cmd <- obj$getText(startIter$iter, endIter$iter, TRUE)
  regex <- paste("\n[", getOption("continue"), "] ", sep = "")
  cmd <- unlist(strsplit(cmd, regex))
  cmd
}


###################################################
### chunk number 259: 
###################################################
#line 5373 "SweaveInput"
evalCMD <- function(tv, cmd) {
  tb <- tv$getBuffer()
  cmd <- paste(cmd, sep="\n")
  out <- try(parse(text=cmd), silent=TRUE)
  if(inherits(out, "try-error")) {
    if(length(grep("end", out))) {      # unexpected end of input
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
### chunk number 260: connectBinding
###################################################
#line 5409 "SweaveInput"
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
### chunk number 261: makeGUI
###################################################
#line 5432 "SweaveInput"
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
### chunk number 262: 
###################################################
#line 5448 "SweaveInput"
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
### chunk number 263: NotShown
###################################################
#line 5544 "SweaveInput"
## Not shown, but this shows how to add a button to a text view widget
b <- gtkButton("click me")              # child
end <- tb$getEndIter()$iter             # get  an iter
anchor <- tb$createChildAnchor(end)     # make anchor
tv$addChildAtAnchor(b, anchor)          # set widget at anchor


###################################################
### chunk number 264: 
###################################################
#line 5610 "SweaveInput"
require(RGtk2)


###################################################
### chunk number 265: rgtk2-menus-actions-constructor
###################################################
#line 5635 "SweaveInput"
a <- gtkAction(name="ok", label="_Ok", 
               tooltip="An OK button", stock.id="gtk-ok")


###################################################
### chunk number 266: rgtk2-menus-actions-activate
###################################################
#line 5646 "SweaveInput"
gSignalConnect(a, "activate", f = function(w, data) {
  print(a$getName())                    # or some useful thing
})


###################################################
### chunk number 267: ConnectAction
###################################################
#line 5659 "SweaveInput"
b <- gtkButton()
b$setRelatedAction(a)


###################################################
### chunk number 268: rgtk2-menus-action-appearance eval=FALSE
###################################################
## #line 5670 "SweaveInput"
## b["use-action-appearance"] <- TRUE


###################################################
### chunk number 269: rgtk2-menus-action-group
###################################################
#line 5679 "SweaveInput"
group <- gtkActionGroup()
group$addActionWithAccel(a, "<control>O")


###################################################
### chunk number 270: rgtk2-menus-toggle-action
###################################################
#line 5696 "SweaveInput"
fullScreen <- gtkToggleAction("fullscreen", "Full screen", 
                              "Toggle full screen")
gSignalConnect(fullScreen, "toggled", function(action) {
  if(fullScreen['active'])
    window$fullscreen()
  else
    window$unfullscreen()
})


###################################################
### chunk number 271: showGUI
###################################################
#line 5710 "SweaveInput"
window <- gtkWindow(show=FALSE)
window['title'] <- "Action with button example"
window$add(b)
window$showAll()


###################################################
### chunk number 272: rgtk2-menus-menubar
###################################################
#line 5735 "SweaveInput"
menubar <- gtkMenuBar()


###################################################
### chunk number 273: rgtk2-menus-menu
###################################################
#line 5746 "SweaveInput"
fileMenu <- gtkMenu()


###################################################
### chunk number 274: rgtk2-menus-menuitem
###################################################
#line 5752 "SweaveInput"
fileItem <- gtkMenuItemNewWithMnemonic(label="_File")
fileItem$setSubmenu(fileMenu)


###################################################
### chunk number 275: rgtk2-menus-append
###################################################
#line 5760 "SweaveInput"
menubar$append(fileItem)


###################################################
### chunk number 276: rgtk2-menus-open
###################################################
#line 5773 "SweaveInput"
open <- gtkMenuItemNewWithMnemonic("_Open")


###################################################
### chunk number 277: rgtk2-menus-open-activate
###################################################
#line 5779 "SweaveInput"
gSignalConnect(open, "activate", function(item) {
  f <- file.choose()
  file.show(f)
})


###################################################
### chunk number 278: rgtk2-menus-append-item
###################################################
#line 5787 "SweaveInput"
fileMenu$append(open)


###################################################
### chunk number 279: rgtk2-menus-save-action
###################################################
#line 5794 "SweaveInput"
saveAction <- 
  gtkAction("save", "Save", "Save object", "gtk-save")


###################################################
### chunk number 280: rgtk2-menus-save-item
###################################################
#line 5803 "SweaveInput"
save <- saveAction$createMenuItem()
fileMenu$append(save)


###################################################
### chunk number 281: rgtk2-menus-separator
###################################################
#line 5812 "SweaveInput"
fileMenu$append(gtkSeparatorMenuItem())


###################################################
### chunk number 282: rgtk2-menus-toggle-item
###################################################
#line 5818 "SweaveInput"
autoSaveAction <- gtkToggleAction("autosave", "Autosave", 
                                  "Enable autosave")
autoSave <- autoSaveAction$createMenuItem()
fileMenu$append(autoSave)


###################################################
### chunk number 283: rgtk2-menus-window
###################################################
#line 5826 "SweaveInput"
mainWindow <- gtkWindow()
vbox <- gtkVBox()
mainWindow$add(vbox)
vbox$packStart(menubar, FALSE, FALSE)


###################################################
### chunk number 284: "menubar-ex"
###################################################
#line 5839 "SweaveInput"
popup <- gtkMenu()                       # top level
popup$append(gtkMenuItem("cut"))
popup$append(gtkMenuItem("copy"))
popup$append(gtkSeparatorMenuItem())
popup$append(gtkMenuItem("paste"))


###################################################
### chunk number 285: rgtk2-menus-popup-button
###################################################
#line 5849 "SweaveInput"
b <- gtkButton("Click me with right mouse button")
w <- gtkWindow(); w$setTitle("Popup menu example")
w$add(b)


###################################################
### chunk number 286: 
###################################################
#line 5861 "SweaveInput"
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
### chunk number 287: 
###################################################
#line 5878 "SweaveInput"
IDs <- sapply(popup$getChildren(), function(i) {
  if(!inherits(i, "GtkSeparatorMenuItem")) # skip these
    gSignalConnect(i, "activate",
                   f = function(w, data) print("replace me"))
})


###################################################
### chunk number 288: rgtk2-menus-toolbar-construct
###################################################
#line 5897 "SweaveInput"
toolbar <- gtkToolbar()


###################################################
### chunk number 289: rgtk2-menus-toolbar-open-item
###################################################
#line 5906 "SweaveInput"
openButton <- gtkToolButton(stock.id = "gtk-open") 


###################################################
### chunk number 290: rgtk2-menus-toolbar-add
###################################################
#line 5915 "SweaveInput"
toolbar$add(openButton)


###################################################
### chunk number 291: rgtk2-menus-toolbar-save-item
###################################################
#line 5926 "SweaveInput"
saveButton <- saveAction$createToolItem()
toolbar$add(saveButton)


###################################################
### chunk number 292: rgtk2-menus-toolbar-separator
###################################################
#line 5935 "SweaveInput"
toolbar$add(gtkSeparatorToolItem())


###################################################
### chunk number 293: rgtk2-menus-toolbar-toggle
###################################################
#line 5940 "SweaveInput"
fullScreenButton <- fullScreen$createToolItem()
toolbar$add(fullScreenButton)


###################################################
### chunk number 294: rgtk2-menus-toolbar-style
###################################################
#line 5956 "SweaveInput"
toolbar$setStyle("icon")


###################################################
### chunk number 295: rgtk2-menus-toolbar-is-important
###################################################
#line 5965 "SweaveInput"
fullScreen["is-important"] <- TRUE


###################################################
### chunk number 296: rgtk2-menus-toolbar-expand eval=FALSE
###################################################
## #line 5975 "SweaveInput"
## expander <- gtkSeparatorToolItem()
## expander["draw"] <- FALSE
## toolbar$add(expander)
## toolbar$childSetProperty(expander, "expand", TRUE)


###################################################
### chunk number 297: rgtk2-menus-toolbar-help
###################################################
#line 5986 "SweaveInput"
helpAction <- gtkAction("help", "Help", "Get help", "gtk-help")
toolbar$add(helpAction$createToolItem())


###################################################
### chunk number 298: rgtk2-menus-toolbar-place
###################################################
#line 5993 "SweaveInput"
vbox$packStart(toolbar, FALSE, FALSE)


###################################################
### chunk number 299: rgtk2-mennus-toolbar-color-button
###################################################
#line 6011 "SweaveInput"
gdkColor <- gdkColorParse(palette()[1])$color
colorButton <- gtkColorButton(gdkColor)


###################################################
### chunk number 300: rgtk2-menus-toolbar-color-menu
###################################################
#line 6021 "SweaveInput"
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
### chunk number 301: rgtk2-menus-toolbar-color-cb
###################################################
#line 6041 "SweaveInput"
colorMenuItemActivated <- function(item) {
  color <- gdkColorParse(item$getLabel())$color
  colorButton$setColor(color)
}
sapply(colorItems, gSignalConnect, "activate", 
       colorMenuItemActivated)


###################################################
### chunk number 302: rgtk2-menus-toolbar-menu
###################################################
#line 6052 "SweaveInput"
menuButton <- gtkMenuToolButton(colorButton, "Color")
menuButton$setMenu(colorMenu)
toolbar$add(menuButton)


###################################################
### chunk number 303: rgtk2-menus-tool-item-group eval=FALSE
###################################################
## #line 6076 "SweaveInput"
## fileGroup <- gtkToolItemGroup("File")
## fileGroup$add(gtkToolButton(stock.id = "gtk-open"))
## fileGroup$add(saveAction$createToolItem())
## helpGroup <- gtkToolItemGroup("Help")
## helpGroup$add(helpAction$createToolItem())


###################################################
### chunk number 304: rgtk2-menus-tool-palette eval=FALSE
###################################################
## #line 6086 "SweaveInput"
## palette <- gtkToolPalette()
## palette$add(fileGroup)
## palette$add(helpGroup)


###################################################
### chunk number 305: rgtk2-menus-tool-palette-collapse eval=FALSE
###################################################
## #line 6093 "SweaveInput"
## helpGroup$setCollapsed(TRUE)


###################################################
### chunk number 306: 
###################################################
#line 6124 "SweaveInput"
ib <- gtkInfoBar(show=FALSE)
ib$setNoShowAll(TRUE)


###################################################
### chunk number 307: 
###################################################
#line 6135 "SweaveInput"
l <- gtkLabel("Warning, Warning ....")
ib$setMessageType("warning")            
ib$getContentArea()$add(l)


###################################################
### chunk number 308: 
###################################################
#line 6142 "SweaveInput"
ib$addButton(button.text="gtk-ok",
             response.id=GtkResponseType['ok'])


###################################################
### chunk number 309: 
###################################################
#line 6151 "SweaveInput"
gSignalConnect(ib, "response", function(w, resp.id) w$hide())


###################################################
### chunk number 310: addToWinodw
###################################################
#line 6156 "SweaveInput"
vbox$packStart(ib, expand = FALSE)
ib$show()


###################################################
### chunk number 311: not-shown
###################################################
#line 6190 "SweaveInput"
## sample RGtk2 menu
library(RGtk2)


###################################################
### chunk number 312: 
###################################################
#line 6196 "SweaveInput"
uimanager = gtkUIManager()


###################################################
### chunk number 313: 
###################################################
#line 6204 "SweaveInput"
someAction <- function(action,...) 
  statusbar$push(statusbar$getContextId("message"), 
                 action$getName())
Quit <- function(...) win$destroy()


###################################################
### chunk number 314: Define-first-action-group
###################################################
#line 6221 "SweaveInput"
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
### chunk number 315: "Insert action group"
###################################################
#line 6247 "SweaveInput"
firstActionGroup$addActions(firstActionEntries)
uimanager$insertActionGroup(firstActionGroup, 0) # 0-based


###################################################
### chunk number 316: 
###################################################
#line 6254 "SweaveInput"
helpActionGroup <- gtkActionGroup("helpActionGroup")
helpActionEntries <- list(
  help = list("Help", "", "_Help", "", "", NULL),
  about = list("About", "gtk-about", "_About", "", "", 
    someAction)
)
helpActionGroup$addActions(helpActionEntries)


###################################################
### chunk number 317: "a toggle action"
###################################################
#line 6272 "SweaveInput"
toggleActions <- list(
     ## name, label, tooltip, stock.id              
     tooltips = gtkToggleAction("UseTooltips", "Use tooltips", 
       "Use tooltips to show additional information", NULL)
)
gSignalConnect(toggleActions[[1]], "toggled", 
               function(...) print("toggled"))
helpActionGroup$addAction(toggleActions$tooltips)


###################################################
### chunk number 318: "insert help action group"
###################################################
#line 6287 "SweaveInput"
uimanager$insertActionGroup(helpActionGroup, 1)


###################################################
### chunk number 319: "Load UI from file"
###################################################
#line 6342 "SweaveInput"
id <- uimanager$addUiFromFile("ex-menus.xml")


###################################################
### chunk number 320: "Retrieve menubar and toolbar from the uimanager"
###################################################
#line 6353 "SweaveInput"
menubar <- uimanager$getWidget("/menubar")
toolbar <- uimanager$getWidget("/toolbar")


###################################################
### chunk number 321: "define statusbar"
###################################################
#line 6358 "SweaveInput"
statusbar <- gtkStatusbar()


###################################################
### chunk number 322: Define-window-add-accelerator-group
###################################################
#line 6366 "SweaveInput"
win <- gtkWindow(show=TRUE)
win$setTitle("Window example")
accelgroup <- uimanager$getAccelGroup()
win$addAccelGroup(accelgroup)


###################################################
### chunk number 323: setup-box
###################################################
#line 6374 "SweaveInput"
box <- gtkVBox()
win$add(box)

box$packStart(menubar, expand=FALSE, fill=FALSE,0)
box$packStart(toolbar, expand=FALSE, fill= FALSE,0)
contentArea <- gtkVBox()
box$packStart(contentArea, expand=TRUE, fill=TRUE,0)
contentArea$packStart(gtkLabel("Content Area"))
box$packStart(statusbar, expand=FALSE, fill=FALSE, 0)


###################################################
### chunk number 324: How-to-set-sensitivity
###################################################
#line 6389 "SweaveInput"
redo <- firstActionGroup$getAction("Redo")
redo['sensitive'] <- FALSE


###################################################
### chunk number 325: 
###################################################
#line 6488 "SweaveInput"
options(prompt="> ")
options(continue="+ ")
options(width=80)


