###################################################
### chunk number 1: 
###################################################
#line 14 "ch-RGtk2.Rnw"
options(prompt=" ")
options(continue=" ")
options(width=60)

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
#line 48 "ch-RGtk2.Rnw"
require(RGtk2)


###################################################
### chunk number 3: gtk-overview-initial-example
###################################################
#line 118 "ch-RGtk2.Rnw"
button <- gtkButton("Click Me")
button['image'] <- gtkImage(stock = "gtk-apply", 
                            size = "button")
gSignalConnect(button, "clicked", function(x) {
  message("Hello World!")
})
##
window <- gtkWindow(show = FALSE)
window$add(button)
window$showAll()


###################################################
### chunk number 4: gtk-intro-classes-ancestors
###################################################
#line 157 "ch-RGtk2.Rnw"
gTypeGetAncestors("GtkWidget")


###################################################
### chunk number 5: gtk-intro-class-interfaces
###################################################
#line 176 "ch-RGtk2.Rnw"
gTypeGetInterfaces("GtkWidget")


###################################################
### chunk number 6: intro-constructor-gtkWindow
###################################################
#line 207 "ch-RGtk2.Rnw"
window <- gtkWindow("toplevel", show = FALSE)


###################################################
### chunk number 7: gtk-overview-construct-image
###################################################
#line 230 "ch-RGtk2.Rnw"
gtkImage(stock = "gtk-apply", size = "button")


###################################################
### chunk number 8: gtk-overview-construct-image-args eval=FALSE
###################################################
## #line 237 "ch-RGtk2.Rnw"
## args(gtkImage)


###################################################
### chunk number 9: gtk-overview-objects-value
###################################################
#line 251 "ch-RGtk2.Rnw"
a <- -1
abs(a)
a


###################################################
### chunk number 10: gtk-overview-objects-ref
###################################################
#line 259 "ch-RGtk2.Rnw"
gtkButtonSetLabel(button, "New text")
gtkButtonGetLabel(button)


###################################################
### chunk number 11: intro-constructor-classes eval=FALSE
###################################################
## #line 271 "ch-RGtk2.Rnw"
## class(window)


###################################################
### chunk number 12: intro-constructor-interfaces
###################################################
#line 289 "ch-RGtk2.Rnw"
interface(window)


###################################################
### chunk number 13: intro-methods-button
###################################################
#line 327 "ch-RGtk2.Rnw"
button <- gtkButton("Hello World")
window$add(button)
window$setDefaultSize(200, 200)


###################################################
### chunk number 14: gtkButtonAddApi
###################################################
#line 339 "ch-RGtk2.Rnw"
gtkButtonSayHello <- function(obj, target) 
  obj$setLabel(paste("Hello", target))
button$sayHello("World")
button$getLabel()


###################################################
### chunk number 15: showProperties
###################################################
#line 372 "ch-RGtk2.Rnw"
head(names(button), n=8)                 # or b$getPropInfo()


###################################################
### chunk number 16: intro-props-get-set
###################################################
#line 387 "ch-RGtk2.Rnw"
image <- gdkPixbuf(filename = imagefile("rgtk-logo.gif"))
window$set(icon = image[[1]], title = "Hello World 1.0")


###################################################
### chunk number 17: 
###################################################
#line 396 "ch-RGtk2.Rnw"
window$setTitle("Hello World 1.0")
window$getTitle()


###################################################
### chunk number 18: intro-props-visible
###################################################
#line 405 "ch-RGtk2.Rnw"
window["visible"]


###################################################
### chunk number 19: intro-props-show
###################################################
#line 410 "ch-RGtk2.Rnw"
window["visible"] <- TRUE 
window$show() # same effect


###################################################
### chunk number 20: 
###################################################
#line 430 "ch-RGtk2.Rnw"
names(gTypeGetSignals("GtkButton"))


###################################################
### chunk number 21:  eval=FALSE
###################################################
## #line 441 "ch-RGtk2.Rnw"
## args(gSignalConnect)


###################################################
### chunk number 22: intro-signals-hello-world
###################################################
#line 459 "ch-RGtk2.Rnw"
gSignalConnect(button, "clicked", 
               function(widget) print("Hello world!"))


###################################################
### chunk number 23: 
###################################################
#line 488 "ch-RGtk2.Rnw"
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
#line 500 "ch-RGtk2.Rnw"
b$setData("x", 2)                        # fix non-interactivity


###################################################
### chunk number 25: 
###################################################
#line 504 "ch-RGtk2.Rnw"
cat(x, b$getData("x"), "\n") # 1 and 2


###################################################
### chunk number 26: 
###################################################
#line 516 "ch-RGtk2.Rnw"
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
## #line 550 "ch-RGtk2.Rnw"
## window <- gtkWindow("toplevel", show = FALSE)


###################################################
### chunk number 28: intro-enum-GtkWindowType
###################################################
#line 565 "ch-RGtk2.Rnw"
GtkWindowType


###################################################
### chunk number 29: intro-enum-GtkWidgetFlags
###################################################
#line 579 "ch-RGtk2.Rnw"
GtkWidgetFlags


###################################################
### chunk number 30: intro-enum-gtkWidgetFlags
###################################################
#line 588 "ch-RGtk2.Rnw"
window$flags()


###################################################
### chunk number 31: intro-enum-toplevel
###################################################
#line 603 "ch-RGtk2.Rnw"
(window$flags() & GtkWidgetFlags["toplevel"]) > 0


###################################################
### chunk number 32: 
###################################################
#line 618 "ch-RGtk2.Rnw"
while(gtkEventsPending()) 
  gtkMainIteration()


###################################################
### chunk number 33:  eval=FALSE
###################################################
## #line 652 "ch-RGtk2.Rnw"
## g <- gtkBuildableNew()
## g$addFromFile("buildable.xml")


###################################################
### chunk number 34:  eval=FALSE
###################################################
## #line 661 "ch-RGtk2.Rnw"
## d <- g$getObject("dialog1")
## d$showAll()


###################################################
### chunk number 35:  eval=FALSE
###################################################
## #line 675 "ch-RGtk2.Rnw"
## ok_button_clicked <- function(w, userData) {
##   print("hello world")
## }
## g$connectSignals()


###################################################
### chunk number 36: 
###################################################
#line 711 "ch-RGtk2.Rnw"
library(RGtk2)


###################################################
### chunk number 37: 
###################################################
#line 749 "ch-RGtk2.Rnw"
w <- gtkWindow(show=FALSE)              # use default type
w$setTitle("Window title")              # set window title
w['title']                              # or  use getTitle
w$setDefaultSize(250,300)               # 250 wide, 300 high
w$show()                                # show window


###################################################
### chunk number 38: basic-window-label
###################################################
#line 776 "ch-RGtk2.Rnw"
w <- gtkWindow(show=FALSE); w$setTitle("Hello world")
l <- gtkLabel("Hello world")
w$add(l)


###################################################
### chunk number 39: gtk-container-window-delete
###################################################
#line 796 "ch-RGtk2.Rnw"
gSignalConnect(w, "delete-event", function(event) {
  gtkMessageDialog(parent=w, flags=0, type="question", 
                   buttons=c("yes", "no"),
                   "Are you sure you want to quit?")
  dlg$run() != GtkResponseType["yes"]
})


###################################################
### chunk number 40: gtk-container-window-destroy
###################################################
#line 814 "ch-RGtk2.Rnw"
w$destroy()


###################################################
### chunk number 41: 
###################################################
#line 829 "ch-RGtk2.Rnw"
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
#line 864 "ch-RGtk2.Rnw"
w <- gtkWindow(show=FALSE); w$setTitle("Hello world")
l <- gtkLabel("Hello world")
w$add(l)


###################################################
### chunk number 43: 
###################################################
#line 875 "ch-RGtk2.Rnw"
w$getChild()['label']


###################################################
### chunk number 44: gtk-container-brackets
###################################################
#line 883 "ch-RGtk2.Rnw"
w[[1]]['label']


###################################################
### chunk number 45:  eval=FALSE
###################################################
## #line 889 "ch-RGtk2.Rnw"
## ## leave out?
## l$getParent()


###################################################
### chunk number 46: remove-child-widget-3
###################################################
#line 897 "ch-RGtk2.Rnw"
w$remove(l)
w$add(l)


###################################################
### chunk number 47: layout-window-show-first
###################################################
#line 924 "ch-RGtk2.Rnw"
w <- gtkWindow(); w$setTitle("Hello world")
l <- gtkLabel("Hello world")
w$add(l)


###################################################
### chunk number 48: layout-window-show-first-alloc
###################################################
#line 940 "ch-RGtk2.Rnw"
l$getAllocation()$allocation


###################################################
### chunk number 49: 
###################################################
#line 944 "ch-RGtk2.Rnw"
sapply(l$getAllocation()$allocation, function(i) i)


###################################################
### chunk number 50: layout-window-show-later
###################################################
#line 950 "ch-RGtk2.Rnw"
w <- gtkWindow(show=FALSE); w$setTitle("Hello world")
l <- gtkLabel("Hello world")
w$add(l)
w$show()
l$getAllocation()$allocation


###################################################
### chunk number 51: 
###################################################
#line 957 "ch-RGtk2.Rnw"
sapply(l$getAllocation()$allocation, function(i) i)


###################################################
### chunk number 52: basic-box-homo
###################################################
#line 1033 "ch-RGtk2.Rnw"
box <- gtkHBox(TRUE, 5)


###################################################
### chunk number 53: basic-box-homo-nofill
###################################################
#line 1048 "ch-RGtk2.Rnw"
button_a <- gtkButton("Button A")
button_b <- gtkButton("Button B")
box$packStart(button_a, fill = FALSE)
box$packStart(button_b, fill = FALSE)


###################################################
### chunk number 54: basic-box-hetero
###################################################
#line 1075 "ch-RGtk2.Rnw"
box <- gtkHBox(FALSE, 5)


###################################################
### chunk number 55: 
###################################################
#line 1103 "ch-RGtk2.Rnw"
## re create buttons
button_a <- gtkButton("Button A")
button_b <- gtkButton("Button B")


###################################################
### chunk number 56: basic-box-expand
###################################################
#line 1109 "ch-RGtk2.Rnw"
box$packStart(button_a, expand = TRUE, fill = FALSE)
box$packStart(button_b, expand = FALSE, fill = FALSE)


###################################################
### chunk number 57: 
###################################################
#line 1152 "ch-RGtk2.Rnw"
g <- gtkHBox()
sapply(1:3, function(i) g$packStart(gtkLabel(i)))


###################################################
### chunk number 58: 
###################################################
#line 1156 "ch-RGtk2.Rnw"
b3 <- g[[3]]
g$reorderChild(b3, 2 - 1)               # second is 2 - 1


###################################################
### chunk number 59: basic-layout-align-window
###################################################
#line 1166 "ch-RGtk2.Rnw"
w <- gtkWindow(); w$setTitle("Hello world")
l <- gtkLabel("Hello world")
w$add(l)


###################################################
### chunk number 60: basic-layout-align-left
###################################################
#line 1189 "ch-RGtk2.Rnw"
l["xalign"] <- 0


###################################################
### chunk number 61: basic-layout-align-GtkAlignment
###################################################
#line 1200 "ch-RGtk2.Rnw"
w <- gtkWindow(); w$setTitle("Hello world")
a <- gtkAlignment()
a$set(xalign = 0, yalign = 0.5, xscale = 0, yscale = 1)
w$add(a)
l <- gtkLabel("Hello world")
a$add(l)


###################################################
### chunk number 62: 
###################################################
#line 1232 "ch-RGtk2.Rnw"
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
#line 1260 "ch-RGtk2.Rnw"
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
#line 1287 "ch-RGtk2.Rnw"
dlg <- gtkDialogNewWithButtons(title="Enter a value", 
                       parent=NULL, flags=0,
                       "gtk-ok", GtkResponseType["ok"],
                       "gtk-cancel", GtkResponseType["cancel"],
                       show=FALSE)


###################################################
### chunk number 65: OurDialogsLayout
###################################################
#line 1306 "ch-RGtk2.Rnw"
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
#line 1325 "ch-RGtk2.Rnw"
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
#line 1351 "ch-RGtk2.Rnw"
dlg <- gtkFileChooserDialog(title="Open a file", 
                     parent=NULL, action="open",
                     "gtk-ok", GtkResponseType["ok"],
                     "gtk-cancel", GtkResponseType["cancel"],
                     show=FALSE)


###################################################
### chunk number 68: 
###################################################
#line 1366 "ch-RGtk2.Rnw"
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
#line 1383 "ch-RGtk2.Rnw"
fileFilter <- gtkFileFilter()
fileFilter$setName("R files")
fileFilter$addPattern("*.R")
fileFilter$addPattern("*.Rdata")
dlg$addFilter(fileFilter)


###################################################
### chunk number 70: gtk-container-frame
###################################################
#line 1440 "ch-RGtk2.Rnw"
frame <- gtkFrame("Options")
vbox <- gtkVBox()
vbox$packStart(gtkCheckButton("Option 1"), FALSE)
vbox$packStart(gtkCheckButton("Option 2"), FALSE)
frame$add(vbox)


###################################################
### chunk number 71: gtk-container-expander
###################################################
#line 1461 "ch-RGtk2.Rnw"
expander <- gtkExpander("Advanced")
expander$add(frame)


###################################################
### chunk number 72: qt-layout-notebook
###################################################
#line 1484 "ch-RGtk2.Rnw"
nb <- gtkNotebook()
nb$appendPage(gtkLabel("Page 1"), gtkLabel("Tab 1"))
nb$appendPage(gtkLabel("Page 2"), gtkLabel("Tab 2"))


###################################################
### chunk number 73: qt-layout-notebook-pos
###################################################
#line 1500 "ch-RGtk2.Rnw"
nb['tab-pos'] <- "bottom"


###################################################
### chunk number 74: qt-layout-notebook-current
###################################################
#line 1509 "ch-RGtk2.Rnw"
nb['page'] <- 1
nb['page']


###################################################
### chunk number 75: 
###################################################
#line 1553 "ch-RGtk2.Rnw"
gtkNotebookInsertPageWithCloseButton <- 
  function(object, child, label.text="", position=-1) {
    icon <- gtkImage(pixbuf = 
      object$renderIcon("gtk-close", "button", size="menu"))
    closeButton <- gtkButton()
    closeButton$setImage(icon)
    closeButton$setRelief("none")
    ##
    label <- gtkHBox()
    label$packStart(gtkLabel(label.text))
    label$packEnd(closeButton)
    ##
    gSignalConnect(closeButton, "clicked", function(b) {
      index <- nb$pageNum(child)
      nb$removePage(index)
    })
    object$insertPage(child, label, position)
  }


###################################################
### chunk number 76: 
###################################################
#line 1576 "ch-RGtk2.Rnw"
w <- gtkWindow()
nb <- gtkNotebook(); w$add(nb)
nb$insertPageWithCloseButton(gtkButton("hello"), 
                             label.text="page 1")
nb$insertPageWithCloseButton(gtkButton("world"), 
                             label.text="page 2")


###################################################
### chunk number 77: gtk-container-scrolled-device
###################################################
#line 1605 "ch-RGtk2.Rnw"
library(cairoDevice)
device <- gtkDrawingArea()
device$setSizeRequest(600, 400)
asCairoDevice(device)


###################################################
### chunk number 78: gtk-container-scrolled-construct
###################################################
#line 1613 "ch-RGtk2.Rnw"
scrolled <- gtkScrolledWindow()
scrolled$addWithViewport(device)


###################################################
### chunk number 79: gtk-container-scrolled-zoom
###################################################
#line 1629 "ch-RGtk2.Rnw"
zoomPlot <- function(x = 2.0) {
  allocation <- device$getAllocation()$allocation
  device$setSizeRequest(allocation$width * x, 
                        allocation$height * x)
  updateAdjustment <- function(adj) {
    adj$setValue(x * adj$getValue() + 
                 (x - 1) * adj$getPageSize() / 2)
  }
  updateAdjustment(scrolled$getHadjustment())
  updateAdjustment(scrolled$getVadjustment())
}


###################################################
### chunk number 80: gtk-container-scrolled-key-press
###################################################
#line 1654 "ch-RGtk2.Rnw"
gSignalConnect(scrolled, "key-press-event", function(x, ev) {
  key <- ev[["keyval"]]
  if (key == GDK_plus)
    zoomPlot(2.0)
  else if (key == GDK_minus)
    zoomPlot(0.5)
  TRUE
})


###################################################
### chunk number 81: gtk-container-scrolled-window
###################################################
#line 1667 "ch-RGtk2.Rnw"
win <- gtkWindow(show = FALSE)
win$add(scrolled)
win$showAll()


###################################################
### chunk number 82: gtk-container-scrolled-plot
###################################################
#line 1674 "ch-RGtk2.Rnw"
plot(mpg ~ hp, data = mtcars)


###################################################
### chunk number 83: gtk-container-paned-construct
###################################################
#line 1702 "ch-RGtk2.Rnw"
paned <- gtkHPaned()


###################################################
### chunk number 84: gtk-container-paned-add
###################################################
#line 1710 "ch-RGtk2.Rnw"
paned$add1(gtkLabel("Left (1)"))
paned$add2(gtkLabel("Right (2)"))


###################################################
### chunk number 85: gtk-container-paned-pack
###################################################
#line 1723 "ch-RGtk2.Rnw"
paned$pack1(gtkLabel("Left (1)"), resize = TRUE, shrink = TRUE)
paned$pack2(gtkLabel("Right (2)"), resize = TRUE, shrink = TRUE)


###################################################
### chunk number 86: 
###################################################
#line 1753 "ch-RGtk2.Rnw"
## layout a basic dialog -- center align
library(RGtk2)


###################################################
### chunk number 87: gtk-container-table-construct
###################################################
#line 1766 "ch-RGtk2.Rnw"
tbl <- gtkTable(rows=3, columns=2, homogeneous=FALSE)


###################################################
### chunk number 88: 
###################################################
#line 1775 "ch-RGtk2.Rnw"
sizeLabel <- gtkLabel("Sample size:")
sizeCombo <- gtkComboBoxNewText()
sapply(c(5, 10, 15, 30), sizeCombo$appendText)
##
diagLabel <- gtkLabel("Diagnostic:")
diagRadios <- gtkVBox()
rb <- list()
rb$t <- gtkRadioButton(label="t-statistic")
rb$mean <- gtkRadioButton(rb, label="mean")
rb$median <- gtkRadioButton(rb, label="median")
sapply(rb, diagRadios$packStart)
##
submitBox <- gtkVBox()
submitBox$packEnd(gtkButton("Run simulation"), expand = FALSE)


###################################################
### chunk number 89: gtk-container-layout-align
###################################################
#line 1794 "ch-RGtk2.Rnw"
sizeLabel['xalign'] <- 1
diagLabel['xalign'] <- 1; diagLabel['yalign'] <- 0
diagAlign <- gtkAlignment(xalign = 0)
diagAlign$add(diagRadios)


###################################################
### chunk number 90: 
###################################################
#line 1827 "ch-RGtk2.Rnw"
tbl$attach(sizeLabel, left.attach=0,1, top.attach=0,1, 
           xoptions = c("expand", "fill"), yoptions="")
tbl$attach(sizeCombo, left.attach=1,2, top.attach=0,1, 
           xoptions="fill", yoptions="")
##
tbl$attach(diagLabel, left.attach=0,1, top.attach=1,2, 
           xoptions = c("expand", "fill"), 
           yoptions=c("expand", "fill"))
##
tbl$attach(diagAlign, left.attach=1,2, top.attach=1,2, 
           xoptions=c("expand", "fill"), yoptions = "")
##
tbl$attach(submitBox, left.attach=1,2, top.attach=2,3, 
           xoptions="", yoptions=c("expand", "fill"))


###################################################
### chunk number 91: gtk-container-table-spacing
###################################################
#line 1852 "ch-RGtk2.Rnw"
tbl$setColSpacing(0, 5)


###################################################
### chunk number 92: 
###################################################
#line 1857 "ch-RGtk2.Rnw"
w <- gtkWindow(show=FALSE)
w['border-width'] <- 14
w$setTitle("GtkTable Example")
w$add(tbl)


###################################################
### chunk number 93: 
###################################################
#line 1864 "ch-RGtk2.Rnw"
w$show()                             


###################################################
### chunk number 94: ButtonConstructors
###################################################
#line 1883 "ch-RGtk2.Rnw"
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
#line 1940 "ch-RGtk2.Rnw"
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
#line 1960 "ch-RGtk2.Rnw"
b$setSensitive(FALSE)


###################################################
### chunk number 97: MacOSXstyleButton
###################################################
#line 1992 "ch-RGtk2.Rnw"
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
#line 2014 "ch-RGtk2.Rnw"
cancel <- gtkButton(stock.id="gtk-cancel")
ok <- gtkButton(stock.id="gtk-ok")
delete <- gtkButton(stock.id="gtk-delete")


###################################################
### chunk number 99: macButtonPack
###################################################
#line 2022 "ch-RGtk2.Rnw"
hbox$packEnd(ok, padding=0)
hbox$packEnd(cancel, padding=12)
hbox$packEnd(delete, padding=12)
hbox$packEnd(gtkLabel(""), expand=TRUE, fill=TRUE) # a spring


###################################################
### chunk number 100: 
###################################################
#line 2038 "ch-RGtk2.Rnw"
ok$grabFocus()


###################################################
### chunk number 101: 
###################################################
#line 2042 "ch-RGtk2.Rnw"
## not shown
w$showAll()


###################################################
### chunk number 102: gtkHButtonBoxExample
###################################################
#line 2046 "ch-RGtk2.Rnw"
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
#line 2092 "ch-RGtk2.Rnw"
w <- gtkWindow(show=FALSE); w$setTitle("Label formatting")
w$setSizeRequest(250,300)               # narrow
g <- gtkVBox(spacing=2); g$setBorderWidth(5); w$add(g)


###################################################
### chunk number 104: LabelFormatting
###################################################
#line 2097 "ch-RGtk2.Rnw"
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
#line 2184 "ch-RGtk2.Rnw"
library(RGtk2)


###################################################
### chunk number 106: 
###################################################
#line 2195 "ch-RGtk2.Rnw"
w <- gtkWindow(show=FALSE); w$setTitle("Graphic window");
w$setSizeRequest(400,400)
hbox <- gtkHBox(); w$add(hbox)
w$showAll()


###################################################
### chunk number 107: 
###################################################
#line 2207 "ch-RGtk2.Rnw"
theSize <- hbox$getAllocation()$allocation
width <- theSize$width; height <- theSize$height


###################################################
### chunk number 108: 
###################################################
#line 2215 "ch-RGtk2.Rnw"
require(cairoDevice)
pixmap <- gdkPixmap(drawable = NULL, 
                    width = width, height = height, depth = 24)
asCairoDevice(pixmap)
hist(rnorm(100))


###################################################
### chunk number 109: 
###################################################
#line 2225 "ch-RGtk2.Rnw"
image <- gtkImage(pixmap = pixmap)
hbox$packStart(image, expand=TRUE, fill = TRUE)


###################################################
### chunk number 110: notShown
###################################################
#line 2232 "ch-RGtk2.Rnw"
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
#line 2264 "ch-RGtk2.Rnw"
head(unlist(gtkStockListIds()), n=3)   


###################################################
### chunk number 112: gtk-widget-entry
###################################################
#line 2320 "ch-RGtk2.Rnw"
e <- gtkEntry()


###################################################
### chunk number 113: gtk-widget-entry-activate
###################################################
#line 2330 "ch-RGtk2.Rnw"
gSignalConnect(e, "activate", function() {
  message("Text entered: ", e$getText())
})


###################################################
### chunk number 114: gtk-widget-entry-validate
###################################################
#line 2406 "ch-RGtk2.Rnw"
validatedEntry <- gtkEntry()
gSignalConnect(validatedEntry, "changed", function(entry) {
  text <- entry$getText()
  if (nzchar(gsub("[a-zA-Z]", "", text))) {
    entry$setIconFromStock("primary", "gtk-no")
    validatedEntry$setIconTooltipText("primary", 
                                 "Only letters are allowed")
  } else { 
    entry$setIconFromStock("primary", "gtk-yes")
    validatedEntry$setIconTooltipText("primary", NULL)
  }
})
validatedEntry$setIconFromStock("primary", "gtk-yes")


###################################################
### chunk number 115: 
###################################################
#line 2421 "ch-RGtk2.Rnw"
w <- gtkWindow(show=FALSE)
w$add(validatedEntry)
w$showAll()


###################################################
### chunk number 116: gtk-widget-check-button
###################################################
#line 2442 "ch-RGtk2.Rnw"
cb <- gtkCheckButton("Option")


###################################################
### chunk number 117: gtk-widget-check-button-active
###################################################
#line 2448 "ch-RGtk2.Rnw"
cb['active']
cb['active'] <- TRUE


###################################################
### chunk number 118: gtk-widget-check-button-toggle
###################################################
#line 2456 "ch-RGtk2.Rnw"
gSignalConnect(cb, "toggled", function(x) {
  message("Button is ", ifelse(x$active, "active","inactive") )
})


###################################################
### chunk number 119: RadioGroupExample
###################################################
#line 2484 "ch-RGtk2.Rnw"
labels <- c("two.sided", "less", "greater")
radiogp <- list()                           # list for group
radiogp[[labels[1]]] <- gtkRadioButton(label=labels[1]) 
for(label in labels[-1]) 
  radiogp[[label]] <- gtkRadioButton(radiogp, label=label)


###################################################
### chunk number 120: 
###################################################
#line 2499 "ch-RGtk2.Rnw"
w <- gtkWindow(); w$setTitle("Radio group example")
g <- gtkVBox(FALSE, 5); w$add(g)
sapply(radiogp, gtkBoxPackStart, object = g)


###################################################
### chunk number 121: 
###################################################
#line 2506 "ch-RGtk2.Rnw"
g[[3]]$setActive(TRUE)           
sapply(radiogp, `[`, "active") 


###################################################
### chunk number 122: 
###################################################
#line 2513 "ch-RGtk2.Rnw"
sapply(radiogp, gSignalConnect, "toggled",     # connect each
       f = function(w, data) {
         if(w['active']) # set before callback
           message("clicked", w$getLabel(),"\n")
       })


###################################################
### chunk number 123: 
###################################################
#line 2527 "ch-RGtk2.Rnw"
radiogp <- gtkRadioButton(label=labels[1])
btns <- sapply(labels[-1], gtkRadioButtonNewWithLabelFromWidget, 
               group = radiogp)
w <- gtkWindow()
w['title'] <- "Radio group example"
g <- gtkVBox(); w$add(g)
sapply(rev(radiogp$getGroup()), gtkBoxPackStart, object = g)


###################################################
### chunk number 124: gtk-widget-combo
###################################################
#line 2557 "ch-RGtk2.Rnw"
combo <- gtkComboBoxNewText()
sapply(c("two.sided", "less", "greater"), combo$appendText)


###################################################
### chunk number 125: gtk-widget-combo-active
###################################################
#line 2566 "ch-RGtk2.Rnw"
combo['active']


###################################################
### chunk number 126: gtk-widget-combo-changed
###################################################
#line 2575 "ch-RGtk2.Rnw"
gSignalConnect(combo, "changed",
               f = function(w, ...) {
                 if(w$getActive() < 0) 
                   message("No value selected")
                 else
                   message("Value is", w$getActiveText())
               })


###################################################
### chunk number 127: ComboBoxExample
###################################################
#line 2592 "ch-RGtk2.Rnw"
## An example of two comboboxes where 1 updates the other
require(RGtk2)
data(mtcars); library(MASS); data(Cars93) # need some data frames


###################################################
### chunk number 128: 
###################################################
#line 2602 "ch-RGtk2.Rnw"
library(ProgGUIinR)                     # for avail_dfs, find_vars
#source("~/GUI/ProgGUIInR/R/misc.R")


###################################################
### chunk number 129: Widgets
###################################################
#line 2608 "ch-RGtk2.Rnw"
w <- gtkWindow(show=FALSE)
w$setTitle("gtkComboBox example")

df_combo <- gtkComboBoxNewText()
var_combo <- gtkComboBoxNewText()


###################################################
### chunk number 130: Layout
###################################################
#line 2619 "ch-RGtk2.Rnw"
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
### chunk number 131: configureComboBoxes
###################################################
#line 2635 "ch-RGtk2.Rnw"
sapply(avail_dfs(), df_combo$appendText)
df_combo$setActive(-1)
#
gSignalConnect(df_combo, "changed", function(w, ...) {
  var_combo$getModel()$clear()
  sapply(find_vars(w$getActiveText()),  var_combo$appendText)
  g2$show()
})


###################################################
### chunk number 132: 
###################################################
#line 2647 "ch-RGtk2.Rnw"
## show window
w$show()


###################################################
### chunk number 133: 
###################################################
#line 2730 "ch-RGtk2.Rnw"
## make a range widget combining both a slider and spinbutton to choose a number
library(RGtk2)


###################################################
### chunk number 134: 
###################################################
#line 2737 "ch-RGtk2.Rnw"
from <- 0; to <- 100; by <- 1


###################################################
### chunk number 135: 
###################################################
#line 2745 "ch-RGtk2.Rnw"
slider <- gtkHScale(min=from, max=to, step=by)
slider['draw-value'] <- FALSE
adjustment <- slider$getAdjustment()
spinbutton <- gtkSpinButton(adjustment = adjustment)


###################################################
### chunk number 136: 
###################################################
#line 2755 "ch-RGtk2.Rnw"
g <- gtkHBox()
g$packStart(slider, expand=TRUE, fill=TRUE, padding=5)
g$packStart(spinbutton, expand=FALSE, padding=5)


###################################################
### chunk number 137: 
###################################################
#line 2762 "ch-RGtk2.Rnw"
w <- gtkWindow(show=FALSE)
w['title'] <- "Example of a range widget"
w$setSizeRequest(width=200, height=-1)
w$add(g)
w$show()


###################################################
### chunk number 138: 
###################################################
#line 2870 "ch-RGtk2.Rnw"
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
### chunk number 139: gtk-widget-progress-pulse
###################################################
#line 2885 "ch-RGtk2.Rnw"
pb$pulse()


###################################################
### chunk number 140: gtk-widget-spinner eval=FALSE
###################################################
## #line 2895 "ch-RGtk2.Rnw"
## spinner <- gtkSpinner()
## spinner$start()
## spinner$stop()


###################################################
### chunk number 141: installPackagesWizard
###################################################
#line 2935 "ch-RGtk2.Rnw"
## gtk Assistant example
require(RGtk2)


###################################################
### chunk number 142: defineAssistant
###################################################
#line 2958 "ch-RGtk2.Rnw"
asst <- gtkAssistant(show=FALSE)
asst$setSizeRequest(500, 500)
gSignalConnect(asst, "cancel", function(asst) asst$destroy())


###################################################
### chunk number 143: makePages
###################################################
#line 2966 "ch-RGtk2.Rnw"
pages <- lapply(1:5, gtkVBox, spacing=5, homogeneous=FALSE)
page_types <- c("intro", rep("confirm",3), "summary")
sapply(pages, gtkAssistantAppendPage, object=asst)
sapply(pages, gtkAssistantSetPageType, object=asst, 
       type=page_types)


###################################################
### chunk number 144: sideLogo
###################################################
#line 2975 "ch-RGtk2.Rnw"
image <- gdkPixbuf(filename = imagefile("rgtk-logo.gif"))[[1]]
sapply(pages, gtkAssistantSetPageSideImage, object=asst, 
       pixbuf=image)


###################################################
### chunk number 145: 
###################################################
#line 2984 "ch-RGtk2.Rnw"
populatePage <- list()                
gSignalConnect(asst, "prepare", function(a, w, data) {
  page_no <- which(sapply(pages, identical, w))
  if(!length(w$getChildren()))
    populatePage[[page_no]]()
})


###################################################
### chunk number 146: 
###################################################
#line 2998 "ch-RGtk2.Rnw"
asst$setForwardPageFunc(function(i, data) {
  ifelse(i == 0 && have_CRAN(), 2L, as.integer(i + 1)) 
}, data=NULL)


###################################################
### chunk number 147: 
###################################################
#line 3005 "ch-RGtk2.Rnw"
CRAN_package <- NA
install_options <- list() #type, dependencies, lib


###################################################
### chunk number 148: HelperFunctions
###################################################
#line 3010 "ch-RGtk2.Rnw"
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
### chunk number 149: page1
###################################################
#line 3041 "ch-RGtk2.Rnw"
populatePage[[1]] <- function() {
  asst$setPageTitle(pages[[1]], "Install a CRAN package")
  pages[[1]]$packStart(l <- gtkLabel())
  pages[[1]]$packStart(gtkLabel(), expand=TRUE) # a spring
  
  l$setMarkup(paste(
       "<span font='x-large'>Install a CRAN package</span>",
       "This wizard will help install a package from",
       "<b>CRAN</b>. If you have not already specified a",
       "CRAN repository, you will be prompted to do so.",
       sep="\n"))
  asst$setPageComplete(pages[[1]], TRUE)
}


###################################################
### chunk number 150: CRANMirror
###################################################
#line 3058 "ch-RGtk2.Rnw"
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
### chunk number 151: SelectPacakge
###################################################
#line 3089 "ch-RGtk2.Rnw"
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
  view$getSelection()$unselectAll()     # no selection
  gSignalConnect(view$getSelection(), "changed", function(view, ...) {
    CRAN_package <<- view$getSelectedValue(1)
    asst$setPageComplete(pages[[3]], TRUE)
  }, data=view, user.data.first=TRUE) 
  #
  sw <- gtkScrolledWindow(); sw$add(view)
  sw$setPolicy("automatic", "automatic")
  #
  pages[[3]]$packStart(gtkLabel("Select a package to install"), expand=FALSE)
  pages[[3]]$packStart(sw, expand=TRUE, fill=TRUE)
}


###################################################
### chunk number 152: 
###################################################
#line 3121 "ch-RGtk2.Rnw"
populatePage[[4]] <- function() {
  asst$setPageTitle(pages[[4]], "Install a CRAN package")
  ##
  get_desc <- function(pkgname) {
    o <- "http://cran.r-project.org/web/packages/%s/DESCRIPTION"
    x <- readLines(sprintf(o, pkgname))
    f <- tempfile(); cat(paste(x, collapse="\n"), file=f)
    read.dcf(f)
  }
  desc <- get_desc(CRAN_package)
  #
  l <- gtkLabel()
  l$setLineWrap(TRUE)
  l$setWidthChars(40)
  l$setMarkup(paste(
    sprintf("Install package: <b>%s</b>", desc[1,'Package']),
    "\n",
    sprintf("%s", gsub("\\n", " ", desc[1,'Description'])),
    sep="\n"))
  
  pages[[4]]$packStart(l)
  ##
  tbl <- gtkTable()
  pages[[4]]$packStart(tbl, expand=FALSE)
  pages[[4]]$packStart(gtkLabel(), expand=TRUE)
  
  ##
  combo <- gtkComboBoxNewText()
  pkg_types <- c("source", "mac.binary", "mac.binary.leopard",
                 "win.binary", "win64.binary")
  sapply(pkg_types, combo$appendText)
  combo$setActive(which(getOption("pkgType") == pkg_types) - 1)
  gSignalConnect(combo, "changed", function(w, ...) {
    cur <- 1L + w$getActive()
    install_options[['type']] <<- pkg_types[cur]
  })
  tbl$attachDefaults(gtkLabel("Package type:"), 0, 1, 0, 1)
  tbl$attachDefaults(combo, 1, 2, 0, 1)

  ##
  cb <- gtkCheckButton()
  cb$setActive(TRUE)
  gSignalConnect(cb, "toggled", function(w) {
    install_options[['dependencies']] <<- w$getActive()
  })
  tbl$attachDefaults(gtkLabel("Install dependencies"),
                     0, 1, 1, 2)
  tbl$attachDefaults(cb, 1, 2, 1, 2)

  ##
  fc <- gtkFileChooserButton("Select a directory...", 
                             "select-folder")
  fc$setFilename(.libPaths()[1])
  gSignalConnect(fc, "selection-changed", function(w) {
    dir <- w$getFilename()
    install_options[['lib']] <<- dir
  })
  tbl$attachDefaults(gtkLabel("Where"), 0, 1, 2, 3)
  tbl$attachDefaults(fc, 1, 2, 2, 3)
  ## align labels to right and set spacing
  sapply(tbl$getChildren(), function(i) {
    widget <- i$getWidget()
    if(is(widget, "GtkLabel"))  widget['xalign'] <- 1
  })
  tbl$setColSpacing(0L, 5L)
  ##
  asst$setPageComplete(pages[[4]], TRUE)
}


###################################################
### chunk number 153: 
###################################################
#line 3197 "ch-RGtk2.Rnw"
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
### chunk number 154: showAssistant
###################################################
#line 3221 "ch-RGtk2.Rnw"
populatePage[[1]]()
asst$show()


###################################################
### chunk number 155: gtk-cairo-device
###################################################
#line 3245 "ch-RGtk2.Rnw"
library(cairoDevice)
device <- gtkDrawingArea()
asCairoDevice(device)
##
win <- gtkWindow(show=FALSE)
win$add(device)
win$showAll()
plot(mpg ~ hp, data = mtcars)


###################################################
### chunk number 156: gtk-cairo-print-operation
###################################################
#line 3276 "ch-RGtk2.Rnw"
printOp <- gtkPrintOperation()


###################################################
### chunk number 157: gtk-cairo-draw-page
###################################################
#line 3289 "ch-RGtk2.Rnw"
gSignalConnect(printOp, "draw-page", 
               function(x, context, page_nr) {
                 asCairoDevice(context)
                 plot(mpg ~ wt, data = mtcars)
               })


###################################################
### chunk number 158: gtk-cairo-run-dialog
###################################################
#line 3299 "ch-RGtk2.Rnw"
printOp$run(action = "print-dialog", parent = NULL)


###################################################
### chunk number 159: 
###################################################
#line 3311 "ch-RGtk2.Rnw"
## manipulate for RGtk2
#
# Original license for manipulate package
#
# Copyright (C) 2009-11 by RStudio, Inc.
#
# This program is licensed to you under the terms of version 3 of the
# GNU Affero General Public License. This program is distributed WITHOUT
# ANY EXPRESS OR IMPLIED WARRANTY, INCLUDING THOSE OF NON-INFRINGEMENT,
# MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE. Please refer to the
# AGPL (http://www.gnu.org/licenses/agpl-3.0.txt) for more details.
#
#

## THe main point of AGPL:
##   The GNU Affero General Public License is designed specifically to
## ensure that, in such cases, the modified source code becomes available
## to the community.  It requires the operator of a network server to
## provide the source code of the modified version running there to the
## users of that server.  Therefore, public use of a modified version, on
## a publicly accessible server, gives the public access to the source
## code of the modified version.
## This is satisfied by the ProgGUIinR package, which will contain this entire example.

require(RGtk2)
require(cairoDevice)


###################################################
### chunk number 160: resolveVariableArguments
###################################################
#line 3361 "ch-RGtk2.Rnw"
## Not shown
resolveVariableArguments <- function(args) {
  # if the first argument is an unnamed list then just use this list
  if ( (length(args) == 1L) &&
       is.list(args[[1L]])  &&
       (is.null(names(args)) || (names(args)[[1L]] == "")) )  {
    return (args[[1L]])
  } else {
    return (args)
  }
}


###################################################
### chunk number 161: manipulate_example eval=FALSE
###################################################
## #line 3382 "ch-RGtk2.Rnw"
## manipulate(## expression
##            plot(cars, xlim = c(x.min, x.max), type = type, 
##                 axes = axes, ann = label),
##            ## controls
##            x.min = slider(0,15),
##            x.max = slider(15,30, initial = 25),
##            type = picker("p", "l", "b", "c", "o", "h", "s"),
##            axes = checkbox(TRUE, label="Draw Axes"),
##            label = checkbox(FALSE, label="Draw Labels")
##            )


###################################################
### chunk number 162: ManipulateClass
###################################################
#line 3405 "ch-RGtk2.Rnw"
Manipulate <- setRefClass("Manipulate",
                          fields=list(
                            .code="ANY",
                            .controls="list"
                            ))


###################################################
### chunk number 163: manipulate_validate_controls
###################################################
#line 3415 "ch-RGtk2.Rnw"
Manipulate$methods(validate_controls=function() {
  "Validate that controls are specified properly"
  ## validate that all controls have unique names
  controlNames <- names(.controls)
  duplicatedIndex <- anyDuplicated(controlNames)
  if (duplicatedIndex > 0)
    stop(paste("duplicated control name:", controlNames[[duplicatedIndex]]))
  
  ## iterate over the names and controls, adding the default values to the env
  for (name in names(.controls)) {
    ## check the name
    if (name == "")
      stop("all controls passed to manipulate must be named")
    ## confirm that this is in fact a control
    if(!is(.controls[[name]], "ManipulateControls"))
      stop(paste("argument", name, "is not a control"))
    ## default label is control name
    if(length(.controls[[name]]$label) == 0) 
      .controls[[name]]$label <<- name
  }
})


###################################################
### chunk number 164: Manipulate_change_handler
###################################################
#line 3445 "ch-RGtk2.Rnw"
Manipulate$methods(
           get_values=function() {
             "Get widget values as list"
             sapply(.controls, function(i) i$get_value(), 
                    simplify=FALSE)
           },
           change_handler=function(...) {
             "Evaluate code with current values"
             values <- get_values()
             result <- withVisible(eval(.code, envir=values))
             if (result$visible) {
               eval(print(result$value))
             }
           })


###################################################
### chunk number 165: Manipulate_execute
###################################################
#line 3468 "ch-RGtk2.Rnw"
Manipulate$methods(  
           execute=function() {
             "Make the GUI"
             w <- gtkWindow(show=FALSE)
             w$setTitle("ManipulateR")
             ## Set up graphic device
             paned <- gtkHPaned()
             w$add(paned)
             device <- gtkDrawingArea()
             device$setSizeRequest(480, 480)
             asCairoDevice(device)
             paned$add(device)
             ## Controls frame
             f <- gtkFrame("Controls")
             control_table <- gtkTableNew()
             control_table$setHomogeneous(FALSE)
             control_table['column-spacing'] <- 10
             ## insert horizontal strut
             control_table$attach(strut <- gtkHBox(), 1,2,0,1,
                           xoptions="", yoptions="shrink")
             strut$setSizeRequest(75, -1)
             f$add(control_table)
             paned$add(f)
             ## add each control
             sapply(.controls, function(i) {
               i$make_gui(cont=control_table, 
                          handler=.self$change_handler)
             })
             w$show()
             change_handler()                    # initial
           })


###################################################
### chunk number 166: Manipulate_Initialize
###################################################
#line 3516 "ch-RGtk2.Rnw"
Manipulate$methods(  
           initialize=function(code, ...) {
             controls <- resolveVariableArguments(list(...))
             initFields(.code=code,
                        .controls=controls)
             validate_controls()
             .self
           })


###################################################
### chunk number 167: manipulate_constructor
###################################################
#line 3529 "ch-RGtk2.Rnw"
manipulate <- function(`_expr`,...) {
  obj <- Manipulate$new(substitute(`_expr`),...)
  obj$execute()
  }


###################################################
### chunk number 168: ManipulateControls
###################################################
#line 3545 "ch-RGtk2.Rnw"
ManipulateControls <- setRefClass("ManipulateControls",
                        fields=list(
                          l="list",
                          widget = "ANY",
                          label="character",
                          initial="ANY"
                          ))


###################################################
### chunk number 169: MC_Interface
###################################################
#line 3558 "ch-RGtk2.Rnw"
ManipulateControls$methods(
            validate_inputs = function(...) {
              "Validate input code"
            },
            get_value=function(...) {
              "Get value of widget"
            })


###################################################
### chunk number 170: MC_make_gui
###################################################
#line 3571 "ch-RGtk2.Rnw"
ManipulateControls$methods(make_gui=function(cont) {
            "Create widget, then add to table"
            ## cont a GtkTable instance
            nrows <- cont['n-rows']
            label_widget <- gtkLabel(label)
            label_widget['xalign'] <- 1
            cont$attach(label_widget, 0, 1, nrows, nrows+1,
                        xoptions="shrink", yoptions="shrink"
                        )
            cont$attach(widget, 1, 2, nrows, nrows+1,
                        xoptions=c("expand", "fill"),
                        yoptions="")
          })


###################################################
### chunk number 171: Slider_constructor
###################################################
#line 3591 "ch-RGtk2.Rnw"
slider <- function(min, max, initial=min, label=NULL, 
                   step=-1, ticks=TRUE) {
  Slider$new(min, max, initial=initial, label=label, 
             step=step, ticks=ticks)
}


###################################################
### chunk number 172: Slider
###################################################
#line 3600 "ch-RGtk2.Rnw"
Slider <- setRefClass("Slider",
                      contains="ManipulateControls")


###################################################
### chunk number 173: Slider_validate
###################################################
#line 3606 "ch-RGtk2.Rnw"
Slider$methods(validate_inputs = function(min, max, initial, step, ticks, label) {
                            ## validate inputs
                          if (!is.numeric(initial) || !is.numeric(min) || !is.numeric(max))
                            stop("min, max, amd initial must all be numeric values")
                          else if (initial < min)
                            stop(paste("slider initial value", initial, "is less than the specified minimum"))
                          else if (initial > max)
                            stop(paste("slider initial value", initial, "is greater than the specified maximum"))
                          else if (min > max)
                            stop(paste("slider maximum is greater than minimum"))
                          else if ( !is.null(step) ) {
                            if ( !is.numeric(step) )
                              stop("step is not a numeric value")
                            if ( step > (max - min) )
                              stop("step is greater than range")
                          } else if ( !is.logical(ticks) )
                            stop("ticks is not a logical value")
                        })


###################################################
### chunk number 174: Slider_initialize
###################################################
#line 3630 "ch-RGtk2.Rnw"
Slider$methods(
       initialize=function(min, max, initial=min, label=NULL, 
         step=-1, ticks=TRUE) {
           validate_inputs(min, max, initial, step, ticks)
           ## create slider and return it
           slider <- list(type = 0,
                          min = min,
                          max = max,
                          step = step,
                          ticks = ticks)
           initFields(l=slider, label=label, initial=initial)
           .self
         })


###################################################
### chunk number 175: Slider_make_gui
###################################################
#line 3652 "ch-RGtk2.Rnw"
Slider$methods(
       make_gui=function(cont, handler, ...) {
         widget <<- gtkHScale(min=l$min, max=l$max, step=l$step)
         widget$setValue(initial)
         gSignalConnect(widget, "value-changed", handler)
         callSuper(cont)
       },
       get_value=function() {
         as.numeric(widget$getValue())
       })


###################################################
### chunk number 176: Picker
###################################################
#line 3665 "ch-RGtk2.Rnw"
## Not shown -- too long
Picker <- setRefClass("Picker",
                      contains="ManipulateControls",
                      methods=list(
                        initialize=function(..., initial=NULL, label=NULL) {
                          
                          ## get values
                          values <- resolveVariableArguments(list(...))
                          
                          ## get value names
                          valueNames <- names(values)
                          if (is.null(valueNames))
                            valueNames <- character(length(values))
                          
                          ## default missing names to choice values
                          missingNames <- valueNames == ""
                          valueNames[missingNames] <- paste(values)[missingNames]
                          names(values) <- valueNames
                          validate_inputs(values, valueNames, initial,label)
                          
                          if(is.null(initial)) 
                            initial <<- valueNames[1]
                          else
                            initial <<- initial
                          ## create picker
                          picker <- list(type = 1,
                                         choices = valueNames,
                                         values = values
                                         )
                          initFields(l=picker, label=label)
                          .self
                        },
                        make_gui=function(cont, handler, ...) {
                          widget <<- gtkComboBoxNewText()
                          sapply(l$choices, widget$appendText) # visible ones
                          ## initialize
                          ind <- match(initial, l$choices)
                          if(is.na(ind)) ind <- 1
                          widget$setActive(ind - 1L)
                          ## add signal
                          gSignalConnect(widget, "changed", handler)
                          callSuper(cont)
                        },
                        get_value=function() {
                          ind <- widget$getActive()
                          l$values[[ind + 1L]]
                        },
                        validate_inputs=function(values, valueNames, initial,label) {
                          if ( length(values) < 1 ) {
                            stop("picker choices must contain at least one value")
                          } else if ( length(valueNames) != length(unique(valueNames)) ) {
                            stop("picker choices must have unique names (duplicate detected)")
                          } else if ( !is.null(initial) ) {
                            if (length(initial) != 1)
                              stop("initial must be a single object")
                            else if ( !(as.character(initial) %in% valueNames) )
                              stop("initial doesn't match one of the supplied choices") 
                          }
                        }
                        
                        ))
picker <- function(..., initial = NULL, label = NULL) 
  Picker$new(..., initial=initial, label=label)


###################################################
### chunk number 177: Checkbox
###################################################
#line 3731 "ch-RGtk2.Rnw"
Checkbox <- setRefClass("Checkbox", contains="ManipulateControls")
Checkbox$methods(
                 validate_inputs=function(initial, label) {
                   if ( !is.logical(initial) )
                     stop("initial must be a logical")
                 })


###################################################
### chunk number 178: 
###################################################
#line 3745 "ch-RGtk2.Rnw"
Checkbox$methods(
         initialize=function(initial=FALSE, label=NULL) {
           validate_inputs(initial, label)
           checkbox <- list(type = 2)
           initFields(l=checkbox, label=label, initial=initial)
           .self
         },
         make_gui=function(cont, handler, ...) {
           widget <<- gtkCheckButton() # no label
           widget$setActive(initial)
           gSignalConnect(widget, "toggled", handler)
           callSuper(cont)
         },
         get_value=function() widget['active']
         )


###################################################
### chunk number 179: Checkbox_constructor
###################################################
#line 3766 "ch-RGtk2.Rnw"
checkbox <- function(initial = FALSE, label = NULL) Checkbox$new(initial, label)                            


###################################################
### chunk number 180: 
###################################################
#line 3771 "ch-RGtk2.Rnw"
#line 3382 "ch-RGtk2.Rnw"
manipulate(## expression
           plot(cars, xlim = c(x.min, x.max), type = type, 
                axes = axes, ann = label),
           ## controls
           x.min = slider(0,15),
           x.max = slider(15,30, initial = 25),
           type = picker("p", "l", "b", "c", "o", "h", "s"),
           axes = checkbox(TRUE, label="Draw Axes"),
           label = checkbox(FALSE, label="Draw Labels")
           )
#line 3772 "ch-RGtk2.Rnw"


###################################################
### chunk number 181: 
###################################################
#line 3796 "ch-RGtk2.Rnw"
TARGET.TYPE.TEXT   <- 80                # our enumeration
TARGET.TYPE.PIXMAP <- 81                  
widgetTargetTypes <- 
  list(text = gtkTargetEntry("text/plain", 0, 
         TARGET.TYPE.TEXT),
       pixmap = gtkTargetEntry("image/x-pixmap", 0, 
         TARGET.TYPE.PIXMAP))


###################################################
### chunk number 182: 
###################################################
#line 3813 "ch-RGtk2.Rnw"
w <- gtkWindow(); w['title'] <- "Drag Source"
dragSourceWidget <-  gtkButton("Text to drag")
w$add(dragSourceWidget)

gtkDragSourceSet(dragSourceWidget,
       start.button.mask=c("button1-mask", "button3-mask"),
       targets=widgetTargetTypes[["text"]],
       actions="copy")


###################################################
### chunk number 183: 
###################################################
#line 3834 "ch-RGtk2.Rnw"
gSignalConnect(dragSourceWidget, "drag-data-get", 
               function(widget, context, sel, tType, eTime) {
                 sel$setText(widget$getLabel()) 
               })


###################################################
### chunk number 184: 
###################################################
#line 3849 "ch-RGtk2.Rnw"
w <- gtkWindow(); w['title'] <- "Drop Target"
dropTargetWidget <- gtkButton("Drop here")
w$add(dropTargetWidget)

gtkDragDestSet(dropTargetWidget,
               flags="all", 
               targets=widgetTargetTypes[["text"]],
               actions="copy")


###################################################
### chunk number 185: 
###################################################
#line 3875 "ch-RGtk2.Rnw"
gSignalConnect(dropTargetWidget, "drag-data-received", 
       function(widget, context, x, y, sel, tType, eTime) {
         dropdata <- sel$getText()
         widget$setLabel(rawToChar(dropdata))
       })


###################################################
### chunk number 186: 
###################################################
#line 3897 "ch-RGtk2.Rnw"
library(RGtk2)


###################################################
### chunk number 187: 
###################################################
#line 3980 "ch-RGtk2.Rnw"
data(Cars93, package="MASS")             # mix of classes
model <- rGtkDataFrame(Cars93)
model[1, 4] <- 12
model[1, 4]                              # get value


###################################################
### chunk number 188: 
###################################################
#line 4001 "ch-RGtk2.Rnw"
model$setFrame(Cars93[1:5, 1:5])


###################################################
### chunk number 189: rgtk2-mvc-treeview-construc
###################################################
#line 4026 "ch-RGtk2.Rnw"
view <- gtkTreeView(model)


###################################################
### chunk number 190: rgtk2-mvc-insert-column-hardway
###################################################
#line 4038 "ch-RGtk2.Rnw"
vc <- gtkTreeViewColumn()
vc$setTitle("Manufacturer")
cr <- gtkCellRendererText()
vc$packStart(cr)
vc$addAttribute(cr, "text", 0)
view$insertColumn(vc, 0)


###################################################
### chunk number 191: rgtk2-mvc-insert-column-easyway
###################################################
#line 4066 "ch-RGtk2.Rnw"
view$insertColumnWithAttributes(position = -1, 
                                title = "Model", 
                                cell = gtkCellRendererText(), 
                                text = 2 - 1) # second column


###################################################
### chunk number 192: rgtk2-mvc-insert-all-columns
###################################################
#line 4084 "ch-RGtk2.Rnw"
view <- gtkTreeView(model)
mapply(view$insertColumnWithAttributes,  
       position=-1, 
       title=colnames(model), 
       cell=list(gtkCellRendererText()), 
       text = seq_len(ncol(model)) - 1
       )


###################################################
### chunk number 193: scrollView
###################################################
#line 4102 "ch-RGtk2.Rnw"
w <- gtkWindow()
w$setTitle("Tabular view of data frame")
sw <- gtkScrolledWindow()
w$add(sw)
sw$add(view)


###################################################
### chunk number 194: rgtk2-mvc-path-constructor-list
###################################################
#line 4176 "ch-RGtk2.Rnw"
secondRow <- gtkTreePathNewFromIndices(2)


###################################################
### chunk number 195: rgtk2-mvc-path-constructor-tree
###################################################
#line 4181 "ch-RGtk2.Rnw"
abcPath <- gtkTreePathNewFromIndices(c(1, 3, 2))
abcPath <- gtkTreePathNewFromString("1:3:2")


###################################################
### chunk number 196: rgtk2-mvc-iter-traverse
###################################################
#line 4210 "ch-RGtk2.Rnw"
iter <- model$getIterFirst()
manufacturer <- character()
while(iter$retval) {
  manufacturer <- c(manufacturer, model$get(iter$iter, 0)[[1]])
  iter$retval <- model$iterNext(iter$iter)
}


###################################################
### chunk number 197: rgtk2-mvc-iter-apply
###################################################
#line 4239 "ch-RGtk2.Rnw"
nrows <- model$iterNChildren(NULL)
manufacturer <- sapply(seq(nrows), function(i) {
  iter <- model$iterNthChild(NULL, i)
  model$get(iter$iter, 0)[[1]]
})


###################################################
### chunk number 198: 
###################################################
#line 4293 "ch-RGtk2.Rnw"
model <- rGtkDataFrame(mtcars)
view <- gtkTreeView(model)
selection <- view$getSelection()
selection$setMode("single")


###################################################
### chunk number 199: 
###################################################
#line 4305 "ch-RGtk2.Rnw"
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
### chunk number 200: 
###################################################
#line 4323 "ch-RGtk2.Rnw"
curSel <- selection$getSelected()
with(curSel, model$getValue(iter, 0)$value)


###################################################
### chunk number 201: 
###################################################
#line 4336 "ch-RGtk2.Rnw"
gSignalConnect(selection, "changed", function(selection) {
  curSel <- selection$getSelectedRows()
  if(length(curSel$retval)) {
    rows <- sapply(curSel$retval, gtkTreePathGetIndices) + 1L
    curSel$model[rows, 1]
  }
})


###################################################
### chunk number 202:  eval=FALSE
###################################################
## #line 4355 "ch-RGtk2.Rnw"
## sapply(view$getColumns(), function(i) i == column)


###################################################
### chunk number 203: rgtk2-mvc-sorting-clickable
###################################################
#line 4371 "ch-RGtk2.Rnw"
vc <- view$getColumn(0)
vc$setSortColumnId(0)


###################################################
### chunk number 204: rgtk2-mvc-sorting-sortable
###################################################
#line 4380 "ch-RGtk2.Rnw"
model$setSortColumnId(0, "ascending")


###################################################
### chunk number 205: 
###################################################
#line 4391 "ch-RGtk2.Rnw"
require(MASS)


###################################################
### chunk number 206: basicSort
###################################################
#line 4394 "ch-RGtk2.Rnw"
store <- rGtkDataFrame(Cars93)
sorted <- gtkTreeModelSortNewWithModel(store)
view <- gtkTreeView(sorted)
mapply(view$insertColumnWithAttributes,
       position=-1,
       title=colnames(store),
       cell=list(gtkCellRendererText()),
       text=seq_len(ncol(store)) - 1)
sapply(seq_len(ncol(store)), function(i)
       view$getColumn(i-1)$setSortColumnId(i-1))


###################################################
### chunk number 207: sort-example
###################################################
#line 4422 "ch-RGtk2.Rnw"
f <- function(model, iter1, iter2, user.data) {
  types <- c("Compact", "Small", "Sporty", "Midsize", 
             "Large", "Van")
  column <- user.data
  val1 <- model$getValue(iter1, column)$value
  val2 <- model$getValue(iter2, column)$value
  as.integer(match(val1, types) - match(val2, types))
}
sorted$setSortFunc(sort.column.id=3-1, sort.func=f, 
                   user.data=3 - 1)


###################################################
### chunk number 208: notShown
###################################################
#line 4435 "ch-RGtk2.Rnw"
## basic GUI
sw <- gtkScrolledWindow()
sw$add(view)
w <- gtkWindow(show=FALSE)
w['title'] <- "Example of sortable tree view"
w$add(sw)
w$show()


###################################################
### chunk number 209: 
###################################################
#line 4458 "ch-RGtk2.Rnw"
df <- Cars93
model <- rGtkDataFrame(cbind(df, .visible=rep(TRUE, nrow(df))))
filtered <- model$filter()
filtered$setVisibleColumn(length(df))            # 0-based
view <- gtkTreeView(filtered)
## Adjust filter
model[,".visible"] <- df$MPG.highway >= 30


###################################################
### chunk number 210: notShown
###################################################
#line 4480 "ch-RGtk2.Rnw"
mapply(view$insertColumnWithAttributes,  
       position=-1, 
       title=colnames(df), 
       cell=list(gtkCellRendererText()), 
       text = seq_len(length(df)) - 1
       )    
##
sw <- gtkScrolledWindow()
sw$add(view)
w <- gtkWindow(show=FALSE)
w$add(sw)
w$show()


###################################################
### chunk number 211: 
###################################################
#line 4503 "ch-RGtk2.Rnw"
library(RGtk2)


###################################################
### chunk number 212: 
###################################################
#line 4518 "ch-RGtk2.Rnw"
df <- data.frame(state.name)
df$visible <- rep(TRUE, nrow(df))
store <- rGtkDataFrame(df)


###################################################
### chunk number 213: 
###################################################
#line 4526 "ch-RGtk2.Rnw"
filteredStore <- store$filter()
filteredStore$setVisibleColumn(ncol(df)-1)      # offset
view <- gtkTreeView(filteredStore)


###################################################
### chunk number 214: 
###################################################
#line 4533 "ch-RGtk2.Rnw"
view$insertColumnWithAttributes(0, "Col", 
                 gtkCellRendererText(), text = 0)


###################################################
### chunk number 215: 
###################################################
#line 4543 "ch-RGtk2.Rnw"
e <- gtkEntry()
gSignalConnect(e, "changed", function(w, data) {
  pattern <- w$getText()
  df <- data$getModel()
  values <- df[, "state.name"]
  df[, "visible"] <- grepl(pattern, values)
}, data=filteredStore)


###################################################
### chunk number 216: 
###################################################
#line 4556 "ch-RGtk2.Rnw"
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
### chunk number 217: gtk-mvc-cell-explicit
###################################################
#line 4603 "ch-RGtk2.Rnw"
renderer <- gtkCellRendererText()
renderer['cell-background'] <- "gray"


###################################################
### chunk number 218: cr-right-aligned
###################################################
#line 4630 "ch-RGtk2.Rnw"
cr <- gtkCellRendererText()
cr['xalign'] <- 1                    # default 0.5 = centered
cr['family'] <- "Helvetica"  


###################################################
### chunk number 219: 
###################################################
#line 4657 "ch-RGtk2.Rnw"
cr <- gtkCellRendererText()


###################################################
### chunk number 220: editedSignal
###################################################
#line 4660 "ch-RGtk2.Rnw"
cr['editable'] <- TRUE
ID <- gSignalConnect(cr, "edited", 
f=function(cr, path, newtext, user.data) {
  i <- as.numeric(path) + 1
  j <- user.data$column
  model <- user.data$model
  model[i, j] <- newtext
}, data=list(model=store, column=1))


###################################################
### chunk number 221: editableTableForCollectingOptions
###################################################
#line 4684 "ch-RGtk2.Rnw"
## GUI for configuring options -- in a table
library(RGtk2)


###################################################
### chunk number 222: 
###################################################
#line 4704 "ch-RGtk2.Rnw"
opts <- c("main","sub","xlab","ylab", "line","outer")
df <- data.frame(option=opts,
           value=c("","","","","0","FALSE"),
           class=c(rep("character", 4), "integer", "logical"),
           edit_color=rep("gray95", 6),
           dirty = rep(FALSE, 6),
           stringsAsFactors=FALSE)


###################################################
### chunk number 223: model
###################################################
#line 4721 "ch-RGtk2.Rnw"
m <- rGtkDataFrame(df)
v <- gtkTreeView(m)
##
cr <- gtkCellRendererText()
cr['background'] <- 'gray80'
v$insertColumnWithAttributes(position=-1,
                             title="Option",
                             cell=cr,
                             text=1 - 1)


###################################################
### chunk number 224: secondColumn
###################################################
#line 4738 "ch-RGtk2.Rnw"
cr <- gtkCellRendererText()
cr['editable'] <- TRUE
v$insertColumnWithAttributes(position = -1,
                             title = "Value",
                             cell = cr,
                             text = 2 - 1,
                             background = 4 - 1
                             )


###################################################
### chunk number 225: editConnect
###################################################
#line 4753 "ch-RGtk2.Rnw"
gSignalConnect(cr, "edited", function(cr, path, new.text, 
                                      user.data) {
  m <- user.data$model
  i <- as.numeric(path) + 1; j <- user.data$column
  m[i,j] <- as(as(new.text, m[i, 'class']), "character")   
  m[i, 'dirty'] <- TRUE                     # mark dirty
  m[i, 'edit_color'] <- 'gray70'            # change color
}, data=list(model=m, column=2))


###################################################
### chunk number 226: 
###################################################
#line 4765 "ch-RGtk2.Rnw"
w <- gtkWindow(show=FALSE)
w['title'] <- "Option editor"
w$setSizeRequest(300,500)
sw <- gtkScrolledWindow()
w$add(sw)
sw$add(v)
w$show()


###################################################
### chunk number 227: 
###################################################
#line 4794 "ch-RGtk2.Rnw"
require(helpr, quietly=TRUE)
package <- "graphics"; topic <- "title"
rd <- helpr:::parse_help(helpr:::pkg_topic(package, topic), 
                         package = package)
descs <- rd$params$args
names(descs) <- sapply(descs, function(i) i$param)


###################################################
### chunk number 228: 
###################################################
#line 4809 "ch-RGtk2.Rnw"
v["has-tooltip"] <- TRUE
gSignalConnect(v, "query-tooltip", 
       function(w, x, y, key_mode, tooltip, user.data) {
         out <- w$getTooltipContext(x, y, key_mode)
         if(out$retval) {
           m <- w$getModel()
           i <- as.numeric(out$path$toString()) + 1
           val <- m[i, "option"]
           txt <- descs[[val]]$desc
           txt <- gsub("code>","b>", txt)  # no code in Pango
           tooltip$setMarkup(txt)
           TRUE
         } else {
           FALSE                           # no tooltip
         }
       })


###################################################
### chunk number 229: 
###################################################
#line 4853 "ch-RGtk2.Rnw"
cr <- gtkCellRendererCombo()
store <- rGtkDataFrame(state.name)
cr['model'] <- store
cr['text-column'] <- 0
cr['editable'] <- TRUE                  # needed


###################################################
### chunk number 230: VariableSelectionExample
###################################################
#line 4895 "ch-RGtk2.Rnw"
## Example showing implementation of variable selection widget where two tables show possible selections
## and selection. Similar to SPSS widget
## Illustrates filtered models, icons in view column
library(RGtk2)


###################################################
### chunk number 231: 
###################################################
#line 4918 "ch-RGtk2.Rnw"
df <- get(data(Cars93, package="MASS"))


###################################################
### chunk number 232: 
###################################################
#line 4935 "ch-RGtk2.Rnw"
library(ProgGUIinR)                     # for make_icon
#source("../ProgGUIInR/R/misc.R")     # for make_icon


###################################################
### chunk number 233: make_icon
###################################################
#line 4940 "ch-RGtk2.Rnw"
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
### chunk number 234: model
###################################################
#line 4957 "ch-RGtk2.Rnw"
mdf <- data.frame(Variables = I(sort(names(df))),
                  icon = I(sapply(df, make_icon_pixmap)),
                  selected = rep(FALSE, ncol(df)))
model <- rGtkDataFrame(mdf)


###################################################
### chunk number 235: filterModels
###################################################
#line 4967 "ch-RGtk2.Rnw"
selectedFilter <- model$filter()
selectedFilter$setVisibleColumn(2)
unselectedFilter <- model$filter()
unselectedFilter$setVisibleFunc(function(model, iter) {
  !model$get(iter, 2)[[1]]
})


###################################################
### chunk number 236: views
###################################################
#line 4982 "ch-RGtk2.Rnw"
views <- list()
views$unselectedView <- gtkTreeView(unselectedFilter)
views$selectedView <- gtkTreeView(selectedFilter)
##
sapply(views, function(i) i$getSelection()$setMode('multiple'))


###################################################
### chunk number 237: viewColumns
###################################################
#line 4992 "ch-RGtk2.Rnw"
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
sapply(views, function(i) i$insertColumn(make_view_column(), 0))


###################################################
### chunk number 238: extendAPI
###################################################
#line 5010 "ch-RGtk2.Rnw"
## add to the gtkTreeView API for convenience
gtkTreeViewSelectedIndices <- function(object) {
  model <- object$getModel()          # Filtered!
  paths <- object$getSelection()$getSelectedRows()$retval
  out <- sapply(paths, function(i) {
    model$convertPathToChildPath(i)$toString()
  })
  if(length(out) == 0)
    integer(0)
  else
    as.numeric(out) + 1                             # 1-based
}
## does object have selection?
gtkTreeViewHasSelection <-
  function(obj) length(obj$selectedIndices()) > 0


###################################################
### chunk number 239: buttons
###################################################
#line 5031 "ch-RGtk2.Rnw"
buttons <- list()
buttons$unselectButton <- gtkButton("<")
buttons$selectButton <- gtkButton(">")
toggleSelectionOnClick <- function(button, view) {
  gSignalConnect(button, "clicked", function (x) {
    print("clicked")
    ind <- view$selectedIndices()
    model[ind, "selected"] <- !model[ind, "selected"]
  })
}
mapply(toggleSelectionOnClick, 
       button=buttons,
       view=rev(views))


###################################################
### chunk number 240: sensitiveButtons
###################################################
#line 5049 "ch-RGtk2.Rnw"
sapply(buttons, gtkWidgetSetSensitive, FALSE)
trackSelection <- function(button, view)
  gSignalConnect(view$getSelection(), "changed", 
    function(x) button['sensitive'] <- view$hasSelection())
mapply(trackSelection, buttons, rev(views))


###################################################
### chunk number 241: guiLayout
###################################################
#line 5060 "ch-RGtk2.Rnw"
w <- gtkWindow(show=FALSE)
w$setTitle("Select variables example")
w$setDefaultSize(600, 400)
g <- gtkHBox()
w$add(g)
## scrollwindows
scrolls <- list()
scrolls$unselectedScroll <- gtkScrolledWindow()
scrolls$selectedScroll <- gtkScrolledWindow()
mapply(gtkContainerAdd, object=scrolls, widget=views)
mapply(gtkScrolledWindowSetPolicy, scrolls, 
       "automatic", "automatic")
## buttons
buttonBox <- gtkVBox()
centeredBox <- gtkVBox()
buttonBox$packStart(centeredBox, expand = TRUE, fill = FALSE)
centeredBox$setSpacing(12)
sapply(buttons, centeredBox$packStart, expand=FALSE)
##
g$packStart(scrolls$unselectedScroll, expand=TRUE)
g$packStart(buttonBox, expand=FALSE)
g$packStart(scrolls$selectedScroll, expand=TRUE)


###################################################
### chunk number 242: packButtons
###################################################
#line 5086 "ch-RGtk2.Rnw"
w$show()


###################################################
### chunk number 243: cellRendererToggle
###################################################
#line 5110 "ch-RGtk2.Rnw"
cr <- gtkCellRendererToggle()
cr['activatable'] <- TRUE             # cell can be activated
cr['active'] <- TRUE
gSignalConnect(cr, "toggled", function(w, path) {
  model$active[as.numeric(path) + 1] <- w['active']
})


###################################################
### chunk number 244: 
###################################################
#line 5136 "ch-RGtk2.Rnw"
## example showing how to add a toggle button on left of data display
library(RGtk2)


###################################################
### chunk number 245: FixACRANforSweave
###################################################
#line 5144 "ch-RGtk2.Rnw"
repos <- getOption("repos")
repos["CRAN"] <- "http://streaming.stat.iastate.edu/CRAN"
options(repos = repos)


###################################################
### chunk number 246: getUpgradablePackages
###################################################
#line 5149 "ch-RGtk2.Rnw"
d <- old.packages()[,c("Package", "Installed", "ReposVer")]
d <- as.data.frame(d)


###################################################
### chunk number 247: 
###################################################
#line 5157 "ch-RGtk2.Rnw"
doUpdate <- function(d)  install.packages(d$Package)


###################################################
### chunk number 248: 
###################################################
#line 5170 "ch-RGtk2.Rnw"
n <- ncol(d)
nms <- colnames(d)
d$.toggle <- rep(FALSE, nrow(d))
store <- rGtkDataFrame(d)


###################################################
### chunk number 249: 
###################################################
#line 5179 "ch-RGtk2.Rnw"
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
### chunk number 250: 
###################################################
#line 5195 "ch-RGtk2.Rnw"
mapply(view$insertColumnWithAttributes, -1, nms, 
       list(gtkCellRendererText()), text = 1:n-1)


###################################################
### chunk number 251: 
###################################################
#line 5201 "ch-RGtk2.Rnw"
view$setModel(store)


###################################################
### chunk number 252: 
###################################################
#line 5210 "ch-RGtk2.Rnw"
b <- gtkButton("Update packages")
gSignalConnect(b, "clicked", function(w, data) {
  view <- data
  model <- view$getModel()
  n <- dim(model)[2]
  vals <- model[model[, n], -n, drop=FALSE]
  doUpdate(vals)
}, data=view)


###################################################
### chunk number 253: 
###################################################
#line 5224 "ch-RGtk2.Rnw"
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
### chunk number 254: comboEditor
###################################################
#line 5252 "ch-RGtk2.Rnw"
cr <- gtkCellRendererProgress()
cr["value"] <- 50


###################################################
### chunk number 255: 
###################################################
#line 5290 "ch-RGtk2.Rnw"
func <- function(viewCol, cellRend, model, iter, data) {
  curVal <- model$getValue(iter, 0)$value
  fVal <- sprintf("%.3f", curVal)
  cellRend['text'] <- fVal
  cellRend['xalign'] <- 1
}


###################################################
### chunk number 256: 
###################################################
#line 5301 "ch-RGtk2.Rnw"
view <- gtkTreeView(rGtkDataFrame(data.frame(rnorm(100))))
cr <- gtkCellRendererText()
view$insertColumnWithAttributes(0, "numbers", cr, text = 0)
vc <- view$getColumn(0)
vc$setCellDataFunc(cr, func)


###################################################
### chunk number 257: 
###################################################
#line 5360 "ch-RGtk2.Rnw"
tstore <- gtkTreeStore("gchararray")
by(Cars93, Cars93$Manufacturer, function(df) {
  piter <- tstore$append()              # parent
  tstore$setValue(piter$iter, column = 0, value = 
                  df$Manufacturer[1])
  sapply(df$Model, function(car_model) {
    sibiter <- tstore$append(parent = piter$iter) # child
    if (is.null(sibiter$retval)) 
      tstore$setValue(sibiter$iter, column=0, value=car_model)
  })
})


###################################################
### chunk number 258: 
###################################################
#line 5374 "ch-RGtk2.Rnw"
iter <- tstore$getIterFromString("0:0")
tstore$getValue(iter$iter, column = 0)$value


###################################################
### chunk number 259: rgtk2-mvc-tree-traverse
###################################################
#line 5405 "ch-RGtk2.Rnw"
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
### chunk number 260: notShown
###################################################
#line 5472 "ch-RGtk2.Rnw"
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
### chunk number 261: 
###################################################
#line 5492 "ch-RGtk2.Rnw"
store <- rGtkDataFrame(Cars93[,"Model", drop=FALSE])


###################################################
### chunk number 262: makeView
###################################################
#line 5497 "ch-RGtk2.Rnw"
view <- gtkTreeView()
view$insertColumnWithAttributes(0, "Make", 
           gtkCellRendererText(), text = 0)


###################################################
### chunk number 263: makeGUI
###################################################
#line 5503 "ch-RGtk2.Rnw"
w <- gtkWindow(show=FALSE)
w['title'] <- "Example of changing models"
sw <- gtkScrolledWindow()
sw$add(view)
w$add(sw)
w$show()


###################################################
### chunk number 264: 
###################################################
#line 5513 "ch-RGtk2.Rnw"
view$setModel(store)               # the rectangular store
view$setModel(tstore)              # or the tree store


###################################################
### chunk number 265: 
###################################################
#line 5576 "ch-RGtk2.Rnw"
## a combobox that learns as you go.
## no tooltip per item, but here we add as detail
library(RGtk2)


###################################################
### chunk number 266: 
###################################################
#line 5590 "ch-RGtk2.Rnw"
m <- rGtkDataFrame(data.frame(
             fname=character(0), visits=character(0), 
             novisits=integer(0), stringsAsFactors=FALSE))
cb <- gtkComboBoxEntryNewWithModel(m, text.column=0)


###################################################
### chunk number 267: ConfigureCellRenderers
###################################################
#line 5603 "ch-RGtk2.Rnw"
cr <- gtkCellRendererText()
cb$packStart(cr)
cb$addAttribute(cr, "text", 1)
cr['foreground'] <- "gray50"
cr['ellipsize'] <- "end"
cr['style'] <- "italic"
cr['alignment'] <- "right"


###################################################
### chunk number 268: helperFunction2
###################################################
#line 5635 "ch-RGtk2.Rnw"
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
### chunk number 269: 
###################################################
#line 5657 "ch-RGtk2.Rnw"
gSignalConnect(cb$getChild(), "activate", 
               f = function(cb, entry, ...) {
  val <- entry$getText()
  if(!any(val == cb$getModel()[,1, drop=TRUE])) {
    model <- cb$getModel()
    tmp <- data.frame(fname=val, visits="", novisits=0,
                      stringsAsFactors = FALSE)
    model$appendRows(tmp)
  }
  callHelpFunction(cb, val)
}, data=cb, user.data.first=TRUE)


###################################################
### chunk number 270: Layout
###################################################
#line 5672 "ch-RGtk2.Rnw"
w <- gtkWindow(show=FALSE)
w['border-width'] <- 15
g <- gtkHBox(); w$add(g)
g$packStart(gtkLabel("Help on:"))
g$packStart(cb, expand=TRUE, fill=TRUE)
#
w$show()


###################################################
### chunk number 271: 
###################################################
#line 5746 "ch-RGtk2.Rnw"
require(RGtk2)


###################################################
### chunk number 272: AppendWords
###################################################
#line 5752 "ch-RGtk2.Rnw"
entry <- gtkEntry()
completion <- gtkEntryCompletion()
entry$setCompletion(completion)


###################################################
### chunk number 273: SetCompletion
###################################################
#line 5762 "ch-RGtk2.Rnw"
store <- rGtkDataFrame(state.name)
completion$setModel(store)
completion$setTextColumn(0)
completion['inline-completion'] <- TRUE
completion['popup-single-match'] <- FALSE


###################################################
### chunk number 274: SetMatchFunc
###################################################
#line 5772 "ch-RGtk2.Rnw"
matchAnywhere <- function(comp, str, iter, user.data) {
  model <- comp$getModel()
  rowVal <- model$getValue(iter, 0)$value # column 0 in model
  
  str <- comp$getEntry()$getText()      # case sensitive
  grepl(str, rowVal)
}
completion$setMatchFunc(matchAnywhere)


###################################################
### chunk number 275: notShown
###################################################
#line 5786 "ch-RGtk2.Rnw"
## Our basic GUI is basic:
w <- gtkWindow(show=FALSE)
w$setTitle("Test of entry with completion")
w$add(entry)
w$showAll()


###################################################
### chunk number 276: gtk-mvc-entry-buffer eval=FALSE
###################################################
## #line 5812 "ch-RGtk2.Rnw"
## buffer <- gtkEntryBuffer()        
## entry1 <- gtkEntry(buffer = buffer)
## entry2 <- gtkEntry(buffer = buffer)
## entry1$setText("echo")
## entry2$getText()


###################################################
### chunk number 277: 
###################################################
#line 5844 "ch-RGtk2.Rnw"
tv <- gtkTextView()
sw <- gtkScrolledWindow()
sw$add(tv)
sw$setPolicy("automatic", "automatic")
##
w <- gtkWindow()
w['border-width'] <- 15
w$add(sw)


###################################################
### chunk number 278: setText
###################################################
#line 5857 "ch-RGtk2.Rnw"
buffer <- tv$getBuffer()
buffer$setText("Lorem ipsum dolor sit amet ...")


###################################################
### chunk number 279: bufferGetText
###################################################
#line 5865 "ch-RGtk2.Rnw"
start <- buffer$getStartIter()$iter    
end <- buffer$getEndIter()$iter
buffer$getText(start, end)


###################################################
### chunk number 280: gtk-mvc-text-noneditable
###################################################
#line 5887 "ch-RGtk2.Rnw"
tv['editable'] <- FALSE
tv['cursor-visible'] <- FALSE


###################################################
### chunk number 281: gtk-mvc-buffer-iter-bounds
###################################################
#line 5966 "ch-RGtk2.Rnw"
bounds <- buffer$getBounds()
bounds


###################################################
### chunk number 282: gtk-mvc-buffer-iter-atLineOffset
###################################################
#line 5989 "ch-RGtk2.Rnw"
iter <- buffer$getIterAtLineOffset(0, 6)
iter$iter$getChar()                     # unicode, not text


###################################################
### chunk number 283: gtk-mvc-buffer-iter-getChar
###################################################
#line 6005 "ch-RGtk2.Rnw"
bounds$start$getChar()                  # unicode


###################################################
### chunk number 284: gtk-mvc-buffer-iter-getText
###################################################
#line 6012 "ch-RGtk2.Rnw"
bounds$start$getText(bounds$end)


###################################################
### chunk number 285: gtk-mvc-buffer-iter-insert
###################################################
#line 6018 "ch-RGtk2.Rnw"
buffer$insert(bounds$start, "prefix")


###################################################
### chunk number 286: 
###################################################
#line 6045 "ch-RGtk2.Rnw"
## setup example, not shown
w <- gtkWindow()
tv <- gtkTextView()
w$add(tv)


###################################################
### chunk number 287: FindWordAtMouseClick
###################################################
#line 6057 "ch-RGtk2.Rnw"
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
### chunk number 288: gtk-mvc-text-mark-insert
###################################################
#line 6083 "ch-RGtk2.Rnw"
insert <- buffer$getMark("insert")


###################################################
### chunk number 289: gtk-mvc-text-mark-getIter
###################################################
#line 6088 "ch-RGtk2.Rnw"
insertIter <- buffer$getIterAtMark(insert)$iter
bounds$start$getText(insertIter)


###################################################
### chunk number 290: gtk-mvc-text-mark-gravity
###################################################
#line 6098 "ch-RGtk2.Rnw"
insertIter$getOffset()
buffer$insert(insertIter, "at insertion point")
buffer$getIterAtMark(insert)$iter$getOffset()


###################################################
### chunk number 291: gtk-mvc-text-mark-construct
###################################################
#line 6106 "ch-RGtk2.Rnw"
mark <- buffer$createMark(mark.name = "start", 
                          where = buffer$getStartIter()$iter, 
                          left.gravity = TRUE)


###################################################
### chunk number 292: gtk-mvc-text-tags-create
###################################################
#line 6124 "ch-RGtk2.Rnw"
tag.b <- buffer$createTag(tag.name="bold", 
                          weight=PangoWeight["bold"])
tag.em <- buffer$createTag(tag.name="em", 
                           style=PangoStyle["italic"])
tag.large <- buffer$createTag(tag.name="large", 
                              font="Serif normal 18")


###################################################
### chunk number 293: gtk-mvc-text-tags-apply
###################################################
#line 6134 "ch-RGtk2.Rnw"
iter <- buffer$getBounds()
buffer$applyTag(tag.b, iter$start, iter$end)  # updates iters
buffer$applyTagByName("em", iter$start, iter$end)


###################################################
### chunk number 294: gtk-mvc-text-selectRange
###################################################
#line 6148 "ch-RGtk2.Rnw"
siter <- buffer$getStartIter()$iter
eiter <- siter$copy(); eiter$forwardWordEnd()
buffer$selectRange(siter, eiter)


###################################################
### chunk number 295: gtk-mvc-text-clipboard-get
###################################################
#line 6159 "ch-RGtk2.Rnw"
cb <- gtkClipboardGet()


###################################################
### chunk number 296: gtk-mvc-text-clipboard-copy-paste
###################################################
#line 6165 "ch-RGtk2.Rnw"
buffer$copyClipboard(cb)
buffer$pasteClipboard(cb, 
            override.location = buffer$getEndIter()$iter, 
            default.editable = TRUE)


###################################################
### chunk number 297: gtk-mvc-text-anchor
###################################################
#line 6193 "ch-RGtk2.Rnw"
anchor <- buffer$createChildAnchor(buffer$getEndIter()$iter)


###################################################
### chunk number 298: gtk-mvc-text-addChild
###################################################
#line 6199 "ch-RGtk2.Rnw"
b <- gtkButton("click me")
tv$addChildAtAnchor(b, anchor)


###################################################
### chunk number 299: 
###################################################
#line 6217 "ch-RGtk2.Rnw"
## make a *basic* terminal in RGtk2
library(RGtk2)


###################################################
### chunk number 300: TextViewWidget
###################################################
#line 6224 "ch-RGtk2.Rnw"
tv <- gtkTextView()
tb <- tv$getBuffer()
font <- pangoFontDescriptionFromString("Monospace")
tv$modifyFont(font)                     # widget wide


###################################################
### chunk number 301: 
###################################################
#line 6234 "ch-RGtk2.Rnw"
tb$createTag(tag.name="cmdInput")
tb$createTag(tag.name="cmdOutput", 
             weight=PangoWeight["bold"])
tb$createTag(tag.name="cmdError", 
             weight=PangoStyle["italic"], foreground="red")
tb$createTag(tag.name="uneditable", editable=FALSE)


###################################################
### chunk number 302: 
###################################################
#line 6245 "ch-RGtk2.Rnw"
startCmd <- tb$createMark("startCmd", tb$getStartIter()$iter, 
                          left.gravity=TRUE)
bufferEnd <- tb$createMark("bufferEnd", tb$getEndIter()$iter)


###################################################
### chunk number 303: 
###################################################
#line 6255 "ch-RGtk2.Rnw"
addPrompt <- function(obj, prompt=c("prompt", "continue"),
                      setMark=TRUE) {
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
### chunk number 304: addOutput
###################################################
#line 6273 "ch-RGtk2.Rnw"
addOutput <- function(obj, output, tagName="cmdOutput") {
  endIter <- obj$getEndIter()
  if(length(output) > 0)  
    sapply(output, function(i)  {
      obj$insertWithTagsByName(endIter$iter, i, tagName)
      obj$insert(endIter$iter, "\n", len=-1)
    })
}


###################################################
### chunk number 305: 
###################################################
#line 6290 "ch-RGtk2.Rnw"
findCMD <- function(obj) {
  endIter <- obj$getEndIter()
  startIter <- obj$getIterAtMark(startCmd)
  cmd <- obj$getText(startIter$iter, endIter$iter, TRUE)
  regex <- paste("\n[", getOption("continue"), "] ", sep = "")
  cmd <- unlist(strsplit(cmd, regex))
  cmd
}


###################################################
### chunk number 306: evalCmd
###################################################
#line 6307 "ch-RGtk2.Rnw"
require(evaluate)
evalCMD <- function(tv, cmd) {
  tb <- tv$getBuffer()
  out <- try(evaluate:::evaluate(cmd, .GlobalEnv), silent=TRUE)
  
  if(inherits(out, "try-error")) {
    ## parse error
    addOutput(tb, out, "cmdError")
  } else if(inherits(out[[2]], "error")) {
    if(grepl("end", out[[2]])) {        # a hack here
      addPrompt(tb, "continue", setMark=FALSE)
      return()
    } else {
      addOutput(tb, out[[2]]$message, "cmdError")
    }
  } else {
    addOutput(tb, out[[2]], "cmdOutput")
  }
  addPrompt(tb, "prompt", setMark=TRUE)
}


###################################################
### chunk number 307: connectBinding
###################################################
#line 6333 "ch-RGtk2.Rnw"
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
### chunk number 308: 
###################################################
#line 6352 "ch-RGtk2.Rnw"
scrollViewport <- function(view, ...) {
  iter <- view$getBuffer()$getEndIter()$iter
  view$scrollToMark(bufferEnd, within.margin=0)
  return(FALSE)
}
gSignalConnect(tb, "changed", scrollViewport, data=tv, 
               after = TRUE, user.data.first = TRUE)


###################################################
### chunk number 309: makeGUI
###################################################
#line 6362 "ch-RGtk2.Rnw"
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
### chunk number 310: 
###################################################
#line 6378 "ch-RGtk2.Rnw"
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
### chunk number 311: 
###################################################
#line 6467 "ch-RGtk2.Rnw"
require(RGtk2)


###################################################
### chunk number 312: rgtk2-menus-actions-constructor
###################################################
#line 6493 "ch-RGtk2.Rnw"
a <- gtkAction(name="ok", label="_Ok", 
               tooltip="An OK button", stock.id="gtk-ok")


###################################################
### chunk number 313: rgtk2-menus-actions-activate
###################################################
#line 6504 "ch-RGtk2.Rnw"
gSignalConnect(a, "activate", f = function(w, data) {
  print(a$getName())                    # or some useful thing
})


###################################################
### chunk number 314: ConnectAction
###################################################
#line 6525 "ch-RGtk2.Rnw"
b <- gtkButton()
b$setRelatedAction(a)


###################################################
### chunk number 315: rgtk2-menus-action-group
###################################################
#line 6541 "ch-RGtk2.Rnw"
group <- gtkActionGroup()
group$addActionWithAccel(a, "<control>O")


###################################################
### chunk number 316: rgtk2-menus-toggle-action
###################################################
#line 6558 "ch-RGtk2.Rnw"
fullScreen <- gtkToggleAction("fullscreen", "Full screen", 
                              "Toggle full screen",
                              stock.id="gtk-fullscreen")
gSignalConnect(fullScreen, "toggled", function(action) {
  if(fullScreen['active'])
    window$fullscreen()
  else
    window$unfullscreen()
})


###################################################
### chunk number 317: showGUI
###################################################
#line 6573 "ch-RGtk2.Rnw"
window <- gtkWindow(show=FALSE)
window['title'] <- "Action with button example"
window$add(b)
window$showAll()


###################################################
### chunk number 318: rgtk2-menus-menubar
###################################################
#line 6598 "ch-RGtk2.Rnw"
menubar <- gtkMenuBar()


###################################################
### chunk number 319: rgtk2-menus-menu
###################################################
#line 6610 "ch-RGtk2.Rnw"
fileMenu <- gtkMenu()


###################################################
### chunk number 320: rgtk2-menus-menuitem
###################################################
#line 6616 "ch-RGtk2.Rnw"
fileItem <- gtkMenuItemNewWithMnemonic(label="_File")
fileItem$setSubmenu(fileMenu)


###################################################
### chunk number 321: rgtk2-menus-append
###################################################
#line 6624 "ch-RGtk2.Rnw"
menubar$append(fileItem)


###################################################
### chunk number 322: rgtk2-menus-open
###################################################
#line 6637 "ch-RGtk2.Rnw"
open <- gtkMenuItemNewWithMnemonic("_Open")


###################################################
### chunk number 323: rgtk2-menus-open-activate
###################################################
#line 6643 "ch-RGtk2.Rnw"
gSignalConnect(open, "activate", function(item) {
  f <- file.choose()
  file.show(f)
})


###################################################
### chunk number 324: rgtk2-menus-append-item
###################################################
#line 6651 "ch-RGtk2.Rnw"
fileMenu$append(open)


###################################################
### chunk number 325: rgtk2-menus-save-action
###################################################
#line 6658 "ch-RGtk2.Rnw"
saveAction <- 
  gtkAction("save", "Save", "Save object", "gtk-save")


###################################################
### chunk number 326: rgtk2-menus-save-item
###################################################
#line 6665 "ch-RGtk2.Rnw"
save <- saveAction$createMenuItem()
fileMenu$append(save)


###################################################
### chunk number 327: rgtk2-menus-separator
###################################################
#line 6674 "ch-RGtk2.Rnw"
fileMenu$append(gtkSeparatorMenuItem())


###################################################
### chunk number 328: rgtk2-menus-toggle-item
###################################################
#line 6680 "ch-RGtk2.Rnw"
autoSaveAction <- gtkToggleAction("autosave", "Autosave", 
                                  "Enable autosave")
autoSave <- autoSaveAction$createMenuItem()
fileMenu$append(autoSave)


###################################################
### chunk number 329: rgtk2-menus-window
###################################################
#line 6688 "ch-RGtk2.Rnw"
mainWindow <- gtkWindow()
vbox <- gtkVBox()
mainWindow$add(vbox)
vbox$packStart(menubar, FALSE, FALSE)


###################################################
### chunk number 330: "menubar-ex"
###################################################
#line 6701 "ch-RGtk2.Rnw"
popup <- gtkMenu()                       # top level
popup$append(gtkMenuItem("cut"))
popup$append(gtkMenuItem("copy"))
popup$append(gtkSeparatorMenuItem())
popup$append(gtkMenuItem("paste"))


###################################################
### chunk number 331: rgtk2-menus-popup-button
###################################################
#line 6711 "ch-RGtk2.Rnw"
b <- gtkButton("Click me with right mouse button")
w <- gtkWindow(); w$setTitle("Popup menu example")
w$add(b)


###################################################
### chunk number 332: 
###################################################
#line 6719 "ch-RGtk2.Rnw"
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
### chunk number 333: 
###################################################
#line 6740 "ch-RGtk2.Rnw"
IDs <- sapply(popup$getChildren(), function(i) {
  if(!inherits(i, "GtkSeparatorMenuItem")) # skip these
    gSignalConnect(i, "activate",
                   f = function(w, data) print("replace me"))
})


###################################################
### chunk number 334: rgtk2-menus-toolbar-construct
###################################################
#line 6761 "ch-RGtk2.Rnw"
toolbar <- gtkToolbar()


###################################################
### chunk number 335: rgtk2-menus-toolbar-open-item
###################################################
#line 6770 "ch-RGtk2.Rnw"
openButton <- gtkToolButton(stock.id = "gtk-open") 


###################################################
### chunk number 336: rgtk2-menus-toolbar-add
###################################################
#line 6779 "ch-RGtk2.Rnw"
toolbar$add(openButton)


###################################################
### chunk number 337: rgtk2-menus-toolbar-save-item
###################################################
#line 6790 "ch-RGtk2.Rnw"
saveButton <- saveAction$createToolItem()
toolbar$add(saveButton)


###################################################
### chunk number 338: rgtk2-menus-toolbar-separator
###################################################
#line 6799 "ch-RGtk2.Rnw"
toolbar$add(gtkSeparatorToolItem())


###################################################
### chunk number 339: rgtk2-menus-toolbar-toggle
###################################################
#line 6804 "ch-RGtk2.Rnw"
fullScreenButton <- fullScreen$createToolItem()
toolbar$add(fullScreenButton)


###################################################
### chunk number 340: rgtk2-menus-toolbar-style eval=FALSE
###################################################
## #line 6820 "ch-RGtk2.Rnw"
## toolbar$setStyle("icon")


###################################################
### chunk number 341: rgtk2-menus-toolbar-is-important
###################################################
#line 6829 "ch-RGtk2.Rnw"
fullScreen["is-important"] <- TRUE


###################################################
### chunk number 342: rgtk2-menus-toolbar-expand eval=FALSE
###################################################
## #line 6838 "ch-RGtk2.Rnw"
## expander <- gtkSeparatorToolItem()
## expander["draw"] <- FALSE
## toolbar$add(expander)
## toolbar$childSet(expander, expand = TRUE)


###################################################
### chunk number 343: rgtk2-menus-toolbar-help
###################################################
#line 6849 "ch-RGtk2.Rnw"
helpAction <- gtkAction("help", "Help", "Get help", "gtk-help")
toolbar$add(helpAction$createToolItem())


###################################################
### chunk number 344: rgtk2-menus-toolbar-place
###################################################
#line 6856 "ch-RGtk2.Rnw"
vbox$packStart(toolbar, FALSE, FALSE)


###################################################
### chunk number 345: rgtk2-mennus-toolbar-color-button
###################################################
#line 6874 "ch-RGtk2.Rnw"
gdkColor <- gdkColorParse(palette()[1])$color
colorButton <- gtkColorButton(gdkColor)


###################################################
### chunk number 346: rgtk2-menus-toolbar-color-menu
###################################################
#line 6884 "ch-RGtk2.Rnw"
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
### chunk number 347: rgtk2-menus-toolbar-color-cb
###################################################
#line 6904 "ch-RGtk2.Rnw"
colorMenuItemActivated <- function(item) {
  color <- gdkColorParse(item$getLabel())$color
  colorButton$setColor(color)
}
sapply(colorItems, gSignalConnect, "activate", 
       colorMenuItemActivated)


###################################################
### chunk number 348: rgtk2-menus-toolbar-menu
###################################################
#line 6915 "ch-RGtk2.Rnw"
menuButton <- gtkMenuToolButton(colorButton, "Color")
menuButton$setMenu(colorMenu)
toolbar$add(menuButton)


###################################################
### chunk number 349: rgtk2-menus-tool-item-group eval=FALSE
###################################################
## #line 6940 "ch-RGtk2.Rnw"
## fileGroup <- gtkToolItemGroup("File")
## fileGroup$add(gtkToolButton(stock.id = "gtk-open"))
## fileGroup$add(saveAction$createToolItem())
## helpGroup <- gtkToolItemGroup("Help")
## helpGroup$add(helpAction$createToolItem())


###################################################
### chunk number 350: rgtk2-menus-tool-palette eval=FALSE
###################################################
## #line 6950 "ch-RGtk2.Rnw"
## palette <- gtkToolPalette()
## palette$add(fileGroup)
## palette$add(helpGroup)


###################################################
### chunk number 351: rgtk2-menus-tool-palette-collapse eval=FALSE
###################################################
## #line 6957 "ch-RGtk2.Rnw"
## helpGroup$setCollapsed(TRUE)


###################################################
### chunk number 352: 
###################################################
#line 6988 "ch-RGtk2.Rnw"
ib <- gtkInfoBar(show=FALSE)
ib$setNoShowAll(TRUE)


###################################################
### chunk number 353: 
###################################################
#line 6999 "ch-RGtk2.Rnw"
l <- gtkLabel("Warning, Warning ....")
ib$setMessageType("warning")            
ib$getContentArea()$add(l)


###################################################
### chunk number 354: 
###################################################
#line 7006 "ch-RGtk2.Rnw"
ib$addButton(button.text="gtk-ok",
             response.id=GtkResponseType['ok'])


###################################################
### chunk number 355: 
###################################################
#line 7015 "ch-RGtk2.Rnw"
gSignalConnect(ib, "response", function(w, resp.id) w$hide())


###################################################
### chunk number 356: addToWinodw
###################################################
#line 7020 "ch-RGtk2.Rnw"
vbox$packStart(ib, expand = FALSE)
ib$show()


###################################################
### chunk number 357: helperFUnction
###################################################
#line 7064 "ch-RGtk2.Rnw"
require(RGtk2)

##' helper function to bypass lack of cached value in method call
##'
##' @param meth method name
##' @param obj method of object's class
##' @return the method
call_meth <- function(meth, obj) {
  if(exists(meth, obj, inherits=FALSE))
    get(meth, obj)
  else
    methods:::envRefInferField(obj, meth, getClass(class(obj)), obj)
}


###################################################
### chunk number 358: 
###################################################
#line 7081 "ch-RGtk2.Rnw"
## Stub UI Manager instance for use with examples
uimanager <- gtkUIManager()


###################################################
### chunk number 359: ui-xml
###################################################
#line 7091 "ch-RGtk2.Rnw"
ui.xml <- readLines(out <- textConnection('
<ui>
  <menubar name="menubar">
    <menu name="FileMenu" action="File">
      <menuitem action="Save"/>
      <menuitem action="SaveAs" />
      <menu name="Export" action="Export">
        <menuitem action="ExportToCSV" />
        <menuitem action="ExportToSaveFile" />
      </menu>
      <separator />
      <menuitem name="FileQuit" action="CloseWindow" />
    </menu>
    <menu action="Edit">
      <menuitem name="EditUndo" action="Undo" />
      <menuitem name="EditRedo" action="Redo" />
      <menuitem action="ChangeColumnName" />
    </menu>
    <menu action="Tools">
      <menuitem action="Filter" />
      <menuitem action="Sort" />
    </menu>
  </menubar>
  <toolbar name="toolbar">
    <toolitem action="Save"/>
    <toolitem action="SaveAs"/>
    <separator />
    <toolitem action="CloseWindow"/>
  </toolbar>
</ui>'), warn=FALSE)
close(out)


###################################################
### chunk number 360: loadUIFromString
###################################################
#line 7132 "ch-RGtk2.Rnw"
id <- uimanager$addUiFromString(ui.xml)


###################################################
### chunk number 361: 
###################################################
#line 7140 "ch-RGtk2.Rnw"
fun <- function(...) {}


###################################################
### chunk number 362: 
###################################################
#line 7145 "ch-RGtk2.Rnw"
fileL <- list(## name, ID, label, accelerator, tooltip, callback
           list("File",NULL,"_File",NULL,NULL,NULL),
           list("Save", "gtk-save", "Save", "<ctrl>S", 
                "Save data to variable", fun),
           list("SaveAs", "gtk-save", "Save as...", NULL, 
                "Save data to variable", fun),
           list("Export", NULL, "Export", NULL, NULL, NULL),
           list("ExportToCSV", "gtk-export", "Export to CSV", 
                NULL, "Save data to CSV file", fun),
           list("ExportToSaveFile", "gtk-export", 
                "Export to save file", NULL, 
                "Save data to save() file", fun),
           list("CloseWindow", "gtk-close", "Close window", 
                "<ctrl>W", "Close current window", fun)
           )


###################################################
### chunk number 363: addActionGroup
###################################################
#line 7169 "ch-RGtk2.Rnw"
ag <- gtkActionGroup("FileGroup")
ag$addActions(fileL)


###################################################
### chunk number 364: 
###################################################
#line 7175 "ch-RGtk2.Rnw"
uimanager$insertActionGroup(ag, 0)


###################################################
### chunk number 365: GUILayout eval=FALSE
###################################################
## #line 7188 "ch-RGtk2.Rnw"
## w <- gtkWindow(show=FALSE)
## ##
## vbox <- gtkVBox()
## w$add(vbox)
## ##
## menubar <- uimanager$getWidget("/menubar")
## vbox$packStart(menubar, FALSE)
## toolbar <- uimanager$getWidget("/toolbar")
## vbox$packStart(toolbar, FALSE)
## ## ...


###################################################
### chunk number 366:  eval=FALSE
###################################################
## #line 7215 "ch-RGtk2.Rnw"
## w$addAccelGroup(uimanager$getAccelGroup())


###################################################
### chunk number 367: 
###################################################
#line 7237 "ch-RGtk2.Rnw"
Command <- setRefClass("Command",
                       fields=list(
                         receiver="ANY",
                         meth="character",
                         params="list",
                         old_params="list"
                         ))


###################################################
### chunk number 368: 
###################################################
#line 7252 "ch-RGtk2.Rnw"
Command$methods(
                initialize=function(receiver, meth, ...) {
                  l <- list(...)
                  initFields(receiver=receiver, meth=meth, 
                             params=l, old_params=l)
                  callSuper()
                },
                execute=function(args) {
                  do.call(call_meth(meth, receiver), args)
                })


###################################################
### chunk number 369: 
###################################################
#line 7269 "ch-RGtk2.Rnw"
Command$methods(
                do=function() {
                  out <- execute(params)
                  old_params$value <<- out
                },
                undo=function() execute(old_params)
                )



###################################################
### chunk number 370: illustrateCommand
###################################################
#line 7286 "ch-RGtk2.Rnw"
x <- 1
set_x <- function(value) {
  old <- x
  x <<- value
  old
}
cmd <- Command$new(.GlobalEnv, "set_x", value=2)
cmd$do(); x


###################################################
### chunk number 371: 
###################################################
#line 7296 "ch-RGtk2.Rnw"
cmd$undo();


###################################################
### chunk number 372: 
###################################################
#line 7299 "ch-RGtk2.Rnw"
x


###################################################
### chunk number 373: typicalAction eval=FALSE
###################################################
## #line 7310 "ch-RGtk2.Rnw"
## cmd <- Command$new(df_model, "set_col_name", j=j, value=value)
## command_stack$add(cmd)


###################################################
### chunk number 374: col_name_methods eval=FALSE
###################################################
## #line 7327 "ch-RGtk2.Rnw"
## DfModel$methods(
##                 get_col_name=function(j) varnames[j,1],
##                 get_col_names=function() varnames[ ,1],
##                 set_col_name=function(j, value) {
##                   "Set name, return old"
##                   old <- get_col_name(j)
##                   varnames[j,1] <<- value
##                   old
##                 })


###################################################
### chunk number 375: ensure_type
###################################################
#line 7347 "ch-RGtk2.Rnw"
##' S3 generic to ensure we don't change data type when assigning into column
##'
##' @param x column values
##' @param value new value
##' @return coerced new value
ensure_type <- function(x, value) UseMethod("ensure_type")
ensure_type.default <- function(x, value) value
ensure_type.character <- function(x, value) as.character(value)
ensure_type.factor <- function(x, value) {x[length(x) + 1] <- value; tail(x, n=1)}
ensure_type.numeric <- function(x, value) as.numeric(value)
ensure_type.integer <- function(x, value) as.integer(value)
ensure_type.logical <- function(x, value) as.logical(value)


###################################################
### chunk number 376: DfModel
###################################################
#line 7362 "ch-RGtk2.Rnw"
## Define a model to hold the model for an editable data frame
sapply(c("RGtkDataFrame"), setOldClass)
DfModel <- setRefClass("DfModel",
                       fields=list(
                         store="RGtkDataFrame",
                         filtered="ANY",
                         name="character",
                         varnames="RGtkDataFrame",
                         casenames="RGtkDataFrame"
                         ))

## Initialize along with a column for filtering
DfModel$methods(
                initialize=function(df, nm, ...) {
                  store <<- rGtkDataFrame(cbind(df, `_visible`=rep(TRUE, nrow(df))))
                  varnames <<- rGtkDataFrame(data.frame(names(df), stringsAsFactors=FALSE))
                  casenames <<- rGtkDataFrame(data.frame(rownames(df), stringsAsFactors=FALSE))
                  if(missing(nm))
                    name <<- deparse(substitute(df))
                  else
                    name <<- nm
                  filtered <<- store$filter()
                  filtered$setVisibleColumn(length(df))
                  callSuper()
                })

## Methods to work with the underlying data frame (Get, save, ...)
DfModel$methods(
                get_dataframe=function() {
                  df <- store[,seq_len(ncol(store)-1)]
                  dimnames(df) <- list(casenames[,1], varnames[,1])
                  df
                },
                save=function(nm) {
                  "Save to global workspace"
                  if(!missing(nm))
                    name <<- nm
                  assign(name, get_dataframe(), envir=.GlobalEnv)
                  
                },
                export_to_csv=function(f)  {
                  "Export to csv file"
                  write.csv(get_dataframe(), file=f)
                },
                export_to_save=function(f) {
                  "Export using save()"
                  assign(name, get_dataframe())
                  save(list=name, file=f)
                },
                no_rows=function() dim(store)[1],
                no_cols=function() dim(store)[2] - 1L
                )
## Methods to get and set a cell value. 
DfModel$methods(
                get_cell=function(i,j) {
                  "Return cell value"
                  store[i,j]
                },
                set_cell=function(i, j, value) {
                  "Set cell, return old_value"
                  old <- get_cell(i,j)
                  store[i,j] <<- ensure_type(store[1,j], value)
                  old
                })
## Methods for column names. Similar one for rownames could be implemented, but we
## don't show these in our view. So leave to the reader/
DfModel$methods(
                get_col_name=function(j) varnames[j,1],
                get_col_names=function() varnames[,1],
                set_col_name=function(j, value) {
                  "Set name, return old"
                  old <- get_col_name(j)
                  varnames[j,1] <<- value
                  old
                })
## Code for filtering the display.
DfModel$methods(
                get_filter=function() {
                  "Return logical indicating filter"
                  store[,ncol(store)]
                },
                set_filter=function(value) {
                  "Filter by value. Return old filter value"
                  if(!is.logical(value)) stop("Filter requires a logical variable")
                  ind <- rep(value, length.out=no_rows())
                  old <- get_filter()
                  store[,ncol(store)] <<- value
                  old
                })

## In RGtk2, one can't both sort and filter by proxy. Since R makes sorting easy, 
## we let Gtk handle the filtering and implement sorting below. The "old" value 
## returned by this is what is needed to reverse a sort.
DfModel$methods(
                reorder=function(value) {
                  "Reorder data frame. Return order(value)"
                  perm <- as.integer(value)
                  if(length(perm) != nrow(store)) stop("reorder requires a permutation")
                  if(length(perm) != length(unique(perm))) stop("value has repeated values")
                  if(min(perm) != 1 || max(perm) != nrow(store)) stop("value is not permutation of row indices")

                  store[,] <<- store[perm,]
                  order(perm)  # will revers a[ind][order(ind)] is involution
                })


###################################################
### chunk number 377: CommandStack
###################################################
#line 7469 "ch-RGtk2.Rnw"
## Command Stack
## A list with ptr. delegates call of do or undo to appropriate command
CommandStack <- setRefClass("CommandStack",
                            fields=list(
                              l="list",
                              ptr="integer"
                              ))
## initialize method just sets the list and pointer to a default.
CommandStack$methods(
                     initialize=function() {
                       initFields(l=list(), ptr=0)
                       callSuper()
                     })
## do method finds the right command then delegates to the commands do method
## undo is similar
## The can_do and can_undo commands are used to check if the command stack allows for
## these operations
CommandStack$methods(
                     do=function() {
                       if(!can_do()) return()
                       cmd <- l[[ptr]]
                       ptr <<- ptr + 1
                       cmd$do()
                     },
                     undo=function() {
                       if(!can_undo()) return()
                       cmd <- l[[ptr-1]]
                       ptr <<- ptr - 1
                       cmd$undo()
                     },
                     can_do=function() ptr > 0 && ptr <= length(l),
                     can_undo=function() ptr > 1
                     )
## Methods to add to and clear the command stack
CommandStack$methods(
                     add=function(cmd, call=TRUE) {
                       if(ptr <= 1) {
                         l <<- list(cmd)
                         ptr <<- 1
                       } else {
                         l <<- l[1:(ptr-1)]
                         l[[length(l) + 1]] <<- cmd
                       }
                       if(call)
                         do()
                     },
                     clear=function(cmd) {
                       l <<- list(); ptr <<- 0
                     })


###################################################
### chunk number 378: addCellRenderer
###################################################
#line 7521 "ch-RGtk2.Rnw"
## We create our cellrenderers using an S3 generic to dispatch based on the class of the column. This
## works out well, as the view is column based as well. The editable commands have 
## to find a row, a column and a value before make a command to add to the command stack.
## The row comes from the path, but must be "unfiltered" to point to the original data store. 
## The column is passed into the function by the caller.


##' Create an appropriate cell renderer
##'
##' @param x vector to display in column
##' @param nm name of vector for title
##' @param obj a DfModel instance
##' @param view GtkTreeView instance we add the cellrenderer to
##' @param command_stack a CommandStack instance needed for the callback
##' @return NULL
add_cellrenderer_by_class <- function(x, nm, obj, view, j, command_stack) UseMethod("add_cellrenderer_by_class")
add_cellrenderer_by_class.default <- function(x, nm, obj, view, j, command_stack) {
  cr <- gtkCellRendererText()
  cr['editable'] <- TRUE
  gSignalConnect(cr, "edited", f=function(cr, path, newtext) {
    i <- as.numeric(path) + 1
    i <- which(obj$get_filter())[i]     # in regular    
    value <- newtext
    cmd <- Command$new(obj, "set_cell", i=i, j=j, value=value)
    command_stack$add(cmd)
  })
  view$insertColumnWithAttributes(position=-1, 
                                  title=nm,
                                  cell=cr,
                                  text=j-1)
}

add_cellrenderer_by_class.logical <- function(x, nm, obj, view, j, command_stack) {
  cr <- gtkCellRendererToggle()
  cr['activatable'] <- TRUE
  gSignalConnect(cr, "toggled", function(w, path) {
    i <- as.numeric(path) + 1           # in filtered
    i <- which(obj$get_filter())[i]     # in regular
    value <- !obj$get_cell(i,j)
    cmd <- Command$new(obj, "set_cell", i=i, j=j, value=value)
    command_stack$add(cmd)
  })
  view$insertColumnWithAttributes(position=-1, 
                                  title=nm,
                                  cell=cr,
                                  active=j-1)
}

add_cellrenderer_by_class.factor <- function(x, nm, obj, view, j, command_stack) {
  cr <- gtkCellRendererCombo()
  cr_store <- rGtkDataFrame(sort(levels(x)))
  cr['model'] <- cr_store
  cr['text-column'] <- 0
  cr['has-entry'] <- FALSE
  cr['editable'] <- TRUE
  gSignalConnect(cr, "changed", function(w, path, iter, user.data) {
    i <- as.numeric(path) + 1
    i <- which(obj$get_filter())[i]     # in regular    
    value <- cr_store$getValue(iter, 0)$value
    cmd <- Command$new(obj, "set_cell", i=i, j=j, value=value)
    command_stack$add(cmd)
  })
  view$insertColumnWithAttributes(position=-1, 
                                  title=nm,
                                  cell=cr,
                                  text=j-1L)
}


###################################################
### chunk number 379: EditDataFrame
###################################################
#line 7591 "ch-RGtk2.Rnw"
## Main reference class to edit a data frame within a GUI
## The view relies on a DataFrameModel and CommandStack instance, each of which is 
## defined within the initialize method.
EditDataFrame <- setRefClass("EditDataFrame",
                             fields=list(
                               df_model="ANY",
                               command_stack="ANY",
                               actions="list",
                               ## layout
                               mainwindow="ANY",
                               statusbar="ANY",
                               uimanager="ANY", 
                               view="ANY"
                               ))
## The initialize method makes several different calls. Here we initialize the actions into action group.
EditDataFrame$methods(
                      initialize_actions=function(box) {
                        ## our callback. Calls an appropriately named method of this class.
                        fun=function(action) {
                          meth <- action$getName()
                          out <- try(do.call(call_meth(meth, .self), list()), silent=TRUE)
                        }

                        ## Define action groups in a list
                        fileL <- list(## name, ID, label, accelerator, tooltip, callback
                                      list("File",NULL,"_File",NULL,NULL,NULL),
                                      list("Save", "gtk-save", "Save", "<ctrl>S", "Save data to variable", fun),
                                      list("SaveAs", "gtk-save", "Save as...", NULL, "Save data to variable", fun),
                                      list("Export", NULL, "Export", NULL, NULL, NULL),
                                      list("ExportToCSV", "gtk-export", "Export to CSV", NULL, "Save data to CSV file", fun),
                                      list("ExportToSaveFile", "gtk-export", "Export to save() file", NULL, "Save data to save() file", fun),
                                      list("CloseWindow", "gtk-close", "Close window", "<ctrl>W", "Close current window", fun)
                                      )

                        editL <- list(## name, ID, label, accelerator, tooltip, callback
                                      list("Edit", NULL, "_Edit", NULL, NULL, NULL),
                                      list("Undo", "gtk-undo", "Undo", "<ctrl>Z",  "Undo last command", fun),
                                      list("Redo", "gtk-redo", "Redo", "<ctrl>U", "Redo undo command", fun),
                                      list("ChangeColumnName", "gtk-change", "Change column name",
                                                          NULL, "Change a column name", fun)
                                      )
                        
                        toolL <- list(
                                      list("Tools", NULL, "_Tools", NULL, NULL, NULL),
                                      list("Filter", "gtk-filter", "Filter", NULL, "Filter data frame", fun),
                                      list("Sort", "gtk-sort", "Sort", NULL, "Sort data frame by column name", fun)                                      )
                        l <- list(fileL, editL, toolL)

                        ## create UI manager, insert action groups
                        uimanager <<- gtkUIManager()
                        for(i in seq_along(l)) {
                          ag <- gtkActionGroup(sprintf("Group%s",i))
                          ag$addActions(l[[i]])
                          uimanager$insertActionGroup(ag, i-1)
                        }
                      })

## Here we initialize the UI 
EditDataFrame$methods(
                      initialize_ui=function() {
                        ## define xml specifying menubars and toolbars
                        ui.xml <- readLines(out <- textConnection('
<ui>
  <menubar name="menubar">
    <menu name="FileMenu" action="File">
      <menuitem action="Save"/>
      <menuitem action="SaveAs" />
      <menu name="Export" action="Export">
        <menuitem action="ExportToCSV" />
        <menuitem action="ExportToSaveFile" />
      </menu>
      <separator />
      <menuitem name="FileQuit" action="CloseWindow" />
    </menu>
    <menu action="Edit">
      <menuitem name="EditUndo" action="Undo" />
      <menuitem name="EditRedo" action="Redo" />
      <menuitem action="ChangeColumnName" />
    </menu>
    <menu action="Tools">
      <menuitem action="Filter" />
      <menuitem action="Sort" />
    </menu>
  </menubar>
  <toolbar name="toolbar">
    <toolitem action="Save"/>
    <toolitem action="SaveAs"/>
    <separator />
    <toolitem action="CloseWindow"/>
  </toolbar>
</ui>'), warn=FALSE)
                        close(out)
                        ## specify the UI using XML specification
                        id <- uimanager$addUiFromString(paste(ui.xml, collapse="\n")) 
                      })

## Here we layout the GUI
EditDataFrame$methods(
                      make_gui=function() {
                        df <- df_model$get_dataframe()
                        nms <- names(df)
                        view <<- gtkTreeView(df_model$filtered)
                        sapply(seq_len(length(df)), function(j) {
                          add_cellrenderer_by_class(df[[j]], nms[j], df_model, view, j, command_stack)
                        })
                        ##
                        ## place into GUI
                        mainwindow <<- w <- gtkWindow(show=FALSE)
                        #
                        vbox <- gtkVBox()
                        w$add(vbox)
                        #
                        menubar <- uimanager$getWidget("/menubar")
                        vbox$packStart(menubar, FALSE)
                        toolbar <- uimanager$getWidget("/toolbar")
                        vbox$packStart(toolbar, FALSE)
                        w$addAccelGroup(uimanager$getAccelGroup())
                        ##
                        sw <- gtkScrolledWindow()
                        sw$add(view)
                        vbox$PackStart(sw, TRUE, TRUE)
                        ##
                        statusbar <<- gtkStatusbar()
                        statusbar$getChildren()[[1]]$setSizeRequest(-1, 25)
                        vbox$PackStart(statusbar, FALSE)
                        w$show()
                      })

## This method call updates the GUI: sets the redo/undo buttons and the status bar.
EditDataFrame$methods(
                      update_UI=function(event="") {
                        ## update actions
                        ## Could save undo/redo actions as we look them up inefficiently below
                        undo <- redo <- NULL
                        for(i in uimanager$getActionGroups()) {
                          tmp <- i$getAction("Redo")
                          if(!is.null(tmp)) redo <- tmp
                          tmp <- i$getAction("Undo")
                          if(!is.null(tmp)) undo <- tmp
                        }
                        undo$setSensitive(command_stack$can_undo())
                        redo$setSensitive(command_stack$can_do())

                        ## update status bar
                        tpl <- "Editing %s. Showing %s lines of %s."
                        statusbar$push(statusbar$getContextId("message"),
                                       sprintf(tpl, df_model$name,
                                               sum(df_model$get_filter()),
                                               df_model$no_rows()))
                        
                      })
## This sets up a callback when parts of the DataFrameModel change. Here is how
## we synchronize column names and why we used a RGtkDataFrame class to hold them in the definition
## of the DataFrameModel class
EditDataFrame$methods(
                      synchronize_view=function() {
                        gSignalConnect(df_model$store, "row-changed", function(model, path, iter) {
                          update_UI()
                        })
                        gSignalConnect(df_model$varnames, "row-changed", function(model, path, iter) {
                          j <- as.numeric(path$toString()) + 1
                          value <- df_model$varnames[j,1]
                          col <- view$getColumn(j-1)
                          col['title'] <- value
                          update_UI()
                        })
                      })
## Finally an initialization method
EditDataFrame$methods(
                      initialize=function(df) {
                        if(!is.data.frame(df))
                          stop("Requires a data frame")
                        initFields(df_model=DfModel$new(df),
                                   command_stack=CommandStack$new())

                        initialize_actions()
                        initialize_ui()
                        make_gui()
                        synchronize_view()
                        update_UI()
                        callSuper()
                      })


###################################################
### chunk number 380: Actions
###################################################
#line 7776 "ch-RGtk2.Rnw"
## Actions are defined here
## Basically we delegate down to data frame model
## We are lazy about some dialogs, so use the gWidgets package
require(gWidgets); options(guiToolkits="RGtk2")
EditDataFrame$methods(
                      Save=function() {
                        df_model$save()
                        command_stack$clear()
                      })

EditDataFrame$methods(
                      Undo=function() {command_stack$undo()},
                      Redo=function() {command_stack$do()}
                      )

EditDataFrame$methods(
                      SaveAs=function() {
                        current_vars <- ls(envir=.GlobalEnv)
                        dlg <- gbasicdialog("Select a variable name...", parent=mainwindow, handler=function(h,...) {
                          var <- svalue(e)
                          if(nchar(var)) {
                            if(exists(var, .GlobalEnv)) {
                              if(!gconfirm(c("Variable exists", "Really overwrite?"), parent=dlg))
                                return()
                            }
                            df_model$save(var)
                            update_UI()
                            command_stack$clear()
                          }
                        })
                        g <- ggroup(cont=dlg, horizontal=FALSE)
                        glabel("Variable name to save as:", cont=g)
                        e <- gedit("", cont=g)
                        e[] <- current_vars
                        visible(dlg, set=TRUE)
                      })

EditDataFrame$methods(
                      ExportToCSV=function() {
                        f <- gfile("Select a filename", type="save")
                        if(!is.na(f))
                          df_model$export_to_csv(f)
                      })

EditDataFrame$methods(
                      ExportToSaveFile=function() {
                        f <- gfile("Select a filename", type="save")
                        if(!is.na(f))
                          df_model$export_to_save(f)
                      })

EditDataFrame$methods(
                      CloseWindow=function() {
                        if(command_stack$can_undo() || command_stack$can_do()) {
                          if(!gconfirm(c("Really quit", "There are pending changes"),
                                       parent=mainwindow))
                            return()
                        }
                        mainwindow$destroy()
                      })

EditDataFrame$methods(
                      ChangeColumnName=function() {
                        j <- NA; value <- character(0)
                        ## get column and new names
                        dlg <- gbasicdialog("Rename a column", parent=mainwindow)
                        g <- ggroup(horizontal=FALSE, cont=dlg)
                        varnames <- df_model$get_col_names()
                        tbl <- gtable(data.frame(Variables=varnames), cont=g, expand=TRUE)
                        size(tbl) <- c(300, 250)
                        l <- glabel("Select a variable", cont=g)
                        e <- gedit("", cont=g); enabled(e) <- FALSE
                        addHandlerClicked(tbl, handler=function(h,...) {
                          val <- svalue(h$obj)
                          assign("j", match(val, varnames), inherits=TRUE)
                          if(!is.na(j)) {
                            svalue(l) <- sprintf("Change %s to:", val)
                            enabled(e) <- TRUE
                          } else {
                            svalue(l) <- "Select a variable"
                            svalue(e) <- ""
                            enabled(e) <- FALSE
                          }
                        })
                        addHandlerKeystroke(e, handler=function(h,...) {
                          assign("value", svalue(h$obj), inherits=TRUE)
                        })
                        ret <- visible(dlg, set=TRUE)
                        if(ret && !is.na(j)) {
                          cmd <- Command$new(df_model, "set_col_name", j=j, value=value)
                          command_stack$add(cmd)
                        }
                      })
                      
EditDataFrame$methods(
                      Filter=function() {
                        ind <- NULL
                        dlg <- gbasicdialog("Enter an expression", parent=mainwindow, handler=function(h,...) {
                          val <- svalue(e)
                          df <- df_model$get_dataframe()
                          out <- try(eval(parse(text=val), df), silent=FALSE)
                          if(!inherits(out, "try-error"))
                            assign("ind", out, inherits=TRUE)
                        })
                        g <- ggroup(cont=dlg, horizontal=FALSE)
                        glabel("Enter an expression to filter by:", cont=g)
                        e <- gedit("", cont=g)
                        ret <- visible(dlg, set=TRUE)
                        if(ret && is.logical(ind)) {
                          cmd <- Command$new(df_model, "set_filter", value=ind)
                          command_stack$add(cmd)
                        }
                      })

EditDataFrame$methods(
                      Sort=function() {
                        perm <- integer(0)
                        df <- df_model$get_dataframe()
                        varnames <- df_model$get_col_names()
                        dlg <- gbasicdialog("Sort by:", parent=mainwindow, handler=function(h,...) {
                          var <- svalue(tbl, index=TRUE)
                          if(length(var) == 0) return()
                          x <- df[,var]
                          assign("perm", order(x, decreasing=svalue(decreasing)), inherits=TRUE)
                        })
                        g <- ggroup(horizontal=FALSE, cont=dlg)
                        tbl <- gtable(data.frame(Variables=varnames), cont=g)
                        size(tbl) <- c(300, 250)
                        decreasing <- gcheckbox("Decreasing?", checked=FALSE, cont=g)
                        ret <- visible(dlg, set=TRUE)
                        ##
                        if(ret && length(perm)) {
                          cmd <- Command$new(df_model, "reorder",  value=perm)
                          command_stack$add(cmd)
                        }
                      })


###################################################
### chunk number 381: testItOut
###################################################
#line 7915 "ch-RGtk2.Rnw"
## Test it out....
require(MASS)
df <- Cars93[sample(1:93, 20),c(1, 5, 26)]; df$American <- df$Origin == "USA"
a = EditDataFrame$new(df)


###################################################
### chunk number 382: oldWay
###################################################
#line 7922 "ch-RGtk2.Rnw"
## Old way to add actions, menubar, For comparison
## not called by the initialize method
EditDataFrame$methods(
                      initialize_actions_old=function() {
                           ## actions. Must have a matching method
                        al <- list()
                        al$save <- gtkAction("Save", "Save", "Save data to variable", "gtk-save")
                        al$saveas <- gtkAction("SaveAs", "Save as...", "Save data to variable", "gtk-save")
                        al$exportAsCSV <- gtkAction("ExportToCSV", "Export to CSV", "Save data to CSV file", "gtk-export")
                        al$exportAsSaveFile <- gtkAction("ExportToSaveFile", "Export to save() file", "Save data to save() file", "gtk-export")
                        al$close <- gtkAction("CloseWindow", "Close window", "Close current window", "gtk-close")
                        ## Edit menu
                        al$undo <- gtkAction("Undo", "Undo", "Undo last command", "gtk-undo")
                        al$redo <- gtkAction("Redo", "Redo", "Redo undo command", "gtk-redo")
                        al$change_column_name <- gtkAction("ChangeColumnName", "Change column name",
                                                          "Change a column name", "gtk-change")
                        ## Tools
                        al$filter <- gtkAction("Filter", "Filter", "Filter data frame", "gtk-filter")
                        al$sort <- gtkAction("Sort", "Sort", "Sort data frame by column name", "gtk-sort")
                        
                        ## stub handler
                        sapply(al, gSignalConnect, "activate", function(action) {
                          meth <- action$getName()
                          out <- try(do.call(get(meth, .self), list()), silent=TRUE)
                          print(out)
                        })
                        
                        actions <<- al
                      },
                      make_menu=function(box) {
                        mb <- gtkMenuBar()

                        fileMenu <- gtkMenu()
                        fileItem <- gtkMenuItem("File")
                        fileItem$setSubmenu(fileMenu)
                        sapply(c("save","saveas", "exportAsCSV","exportAsSaveFile","close"),
                               function(act)
                               fileMenu$append(actions[[act]]$createMenuItem()))

                        editMenu <- gtkMenu()
                        editItem <- gtkMenuItem("Edit")
                        editItem$setSubmenu(editMenu)
                        sapply(c("undo","redo", "change_column_name"),
                               function(act)
                               editMenu$append(actions[[act]]$createMenuItem()))

                        toolsMenu <- gtkMenu()
                        toolsItem <- gtkMenuItem("Tools")
                        toolsItem$setSubmenu(toolsMenu)
                        sapply(c("filter", "sort"),
                               function(act)
                               toolsMenu$append(actions[[act]]$createMenuItem()))

                        sapply(list(fileItem, editItem, toolsItem), mb$append)
                        box$packStart(mb, FALSE)

                      }
)


###################################################
### chunk number 383: gtk-class-def
###################################################
#line 8044 "ch-RGtk2.Rnw"
tform_scale_type <- 
  gClass("RTransformedHScale", "GtkHScale",
         .props = list(
           gParamSpec(type = "R", name = "expr", nick = "e", 
                      blurb = "Transformation of scale value",                 
                      default.value = expression(x))
           ),
         GtkScale = list(
           format_value = function(self, x) 
             as.character(self$transformValue(x))
           ),
         .public = list(
           getExpr = function(self) self["expr"],
           getTransformedValue = function(self) 
             self$transformValue(self$value)
           ),
         .private = list(
           transformValue = function(self, x) 
             eval(self$expr, list(x = x))
          )
         )


###################################################
### chunk number 384: gtk-class-madata
###################################################
#line 8133 "ch-RGtk2.Rnw"
n <- 5000
backbone <- rnorm(n)
ma_data <- cbind(backbone + c(rnorm(3 * (n / 4), sd = 0.1), 
                              rt(n/4, 80)), 
                 backbone + c(rnorm(3 * (n / 4), , 0.1), 
                              rt(n / 4, 80)))
ma_data <- apply(ma_data, 2, function(col) col - min(col))


###################################################
### chunk number 385: gtk-class-instance
###################################################
#line 8142 "ch-RGtk2.Rnw"
adj <- gtkAdjustment(0.5, 0.15, 1.00, 0.05, 0.5, 0)
s <- gObject(tform_scale_type, adjustment = adj, 
             expr = expression(x^3))
gSignalConnect(s, "value_changed", function(scale) {
  plot(ma_data, col = rgb(0, 0, 0, scale$getTransformedValue()),
       xlab = "Replicate 1", ylab = "Replicate 2", 
       main = "Expression levels of WT at time 0", pch = 19)
})


###################################################
### chunk number 386: gtk-class-window
###################################################
#line 8163 "ch-RGtk2.Rnw"
win <- gtkWindow(show = FALSE)
da <- gtkDrawingArea()
vbox <- gtkVBox()
vbox$packStart(da)
vbox$packStart(s, FALSE)
win$add(vbox)
win$setDefaultSize(400, 400)
#
require(cairoDevice)
asCairoDevice(da)
#
win$showAll()
par(pty = "s")
s$setValue(0.7)


###################################################
### chunk number 387: 
###################################################
#line 8271 "ch-RGtk2.Rnw"
options(prompt="> ")
options(continue="+ ")
options(width=80)


