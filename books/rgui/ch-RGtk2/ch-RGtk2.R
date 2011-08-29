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
gSignalConnect(button, "clicked", function(button) {
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
#line 329 "ch-RGtk2.Rnw"
button <- gtkButton("Hello World")
window$add(button)
window$setDefaultSize(200, 200)


###################################################
### chunk number 14: gtkButtonAddApi
###################################################
#line 341 "ch-RGtk2.Rnw"
gtkButtonSayHello <- function(obj, target) 
  obj$setLabel(paste("Hello", target))
button$sayHello("World")
button$getLabel()


###################################################
### chunk number 15: showProperties
###################################################
#line 375 "ch-RGtk2.Rnw"
head(names(button), n = 8)                 # or b$getPropInfo()


###################################################
### chunk number 16: intro-props-get-set
###################################################
#line 390 "ch-RGtk2.Rnw"
image <- gdkPixbuf(filename = imagefile("rgtk-logo.gif"))
window$set(icon = image[[1]], title = "Hello World 1.0")


###################################################
### chunk number 17: 
###################################################
#line 399 "ch-RGtk2.Rnw"
window$setTitle("Hello World 1.0")
window$getTitle()


###################################################
### chunk number 18: intro-props-visible
###################################################
#line 408 "ch-RGtk2.Rnw"
window["visible"]


###################################################
### chunk number 19: intro-props-show
###################################################
#line 413 "ch-RGtk2.Rnw"
window["visible"] <- TRUE 
window$show() # same effect


###################################################
### chunk number 20: 
###################################################
#line 433 "ch-RGtk2.Rnw"
names(gTypeGetSignals("GtkButton"))


###################################################
### chunk number 21:  eval=FALSE
###################################################
## #line 444 "ch-RGtk2.Rnw"
## args(gSignalConnect)


###################################################
### chunk number 22: intro-signals-hello-world
###################################################
#line 462 "ch-RGtk2.Rnw"
gSignalConnect(button, "clicked", 
               function(button) message("Hello world!"))


###################################################
### chunk number 23: 
###################################################
#line 491 "ch-RGtk2.Rnw"
window <- gtkWindow(); window['title'] <- "test signals"
x <- 1; 
button <- gtkButton("click me"); window$add(button)
gSignalConnect(button, signal = "clicked", 
               f = function(button) {
                 button$setData("x", 2)
                 x <- 2
                 return(TRUE)
               })


###################################################
### chunk number 24: 
###################################################
#line 503 "ch-RGtk2.Rnw"
button$setData("x", 2)                        # fix non-interactivity


###################################################
### chunk number 25: 
###################################################
#line 507 "ch-RGtk2.Rnw"
cat(x, button$getData("x"), "\n") # 1 and 2


###################################################
### chunk number 26: 
###################################################
#line 519 "ch-RGtk2.Rnw"
button <- gtkButton("click")
window <- gtkWindow()
window$add(button)
gSignalConnect(button, "button-press-event", 
               function(button, event, data) {
                 message("hi"); return(FALSE)
               })
gSignalConnect(button, "button-press-event", 
               function(button, event, data) {
                 message("and"); return(TRUE)
               })
gSignalConnect(button, "button-press-event", 
               function(button, event, data) {
                 message("bye"); return(TRUE)
               })


###################################################
### chunk number 27: intro-enum-window eval=FALSE
###################################################
## #line 553 "ch-RGtk2.Rnw"
## window <- gtkWindow("toplevel", show = FALSE)


###################################################
### chunk number 28: intro-enum-GtkWindowType
###################################################
#line 568 "ch-RGtk2.Rnw"
GtkWindowType


###################################################
### chunk number 29: intro-enum-GtkWidgetFlags
###################################################
#line 582 "ch-RGtk2.Rnw"
GtkWidgetFlags


###################################################
### chunk number 30: intro-enum-gtkWidgetFlags
###################################################
#line 591 "ch-RGtk2.Rnw"
window$flags()


###################################################
### chunk number 31: intro-enum-toplevel
###################################################
#line 606 "ch-RGtk2.Rnw"
(window$flags() & GtkWidgetFlags["toplevel"]) > 0


###################################################
### chunk number 32: 
###################################################
#line 621 "ch-RGtk2.Rnw"
while(gtkEventsPending()) 
  gtkMainIteration()


###################################################
### chunk number 33: 
###################################################
#line 654 "ch-RGtk2.Rnw"
builder <- gtkBuilder()
builder$addFromFile("buildable.xml")


###################################################
### chunk number 34: 
###################################################
#line 663 "ch-RGtk2.Rnw"
dialog1 <- builder$getObject("dialog1")
dialog1$showAll()


###################################################
### chunk number 35: 
###################################################
#line 677 "ch-RGtk2.Rnw"
ok_button_clicked <- function(button, userData) {
  message("hello world")
}
builder$connectSignals()


###################################################
### chunk number 36: 
###################################################
#line 713 "ch-RGtk2.Rnw"
library(RGtk2)


###################################################
### chunk number 37: 
###################################################
#line 751 "ch-RGtk2.Rnw"
window <- gtkWindow(show=FALSE)          # use default type
window$setTitle("Window title")          # set window title
window['title']                          # or  use getTitle
window$setDefaultSize(250,300)           # 250 wide, 300 high
window$show()                            # show window


###################################################
### chunk number 38: basic-window-label
###################################################
#line 778 "ch-RGtk2.Rnw"
window <- gtkWindow(show = FALSE); window$setTitle("Hello world")
label <- gtkLabel("Hello world")
window$add(label)


###################################################
### chunk number 39: gtk-container-window-delete
###################################################
#line 798 "ch-RGtk2.Rnw"
gSignalConnect(window, "delete-event", function(event) {
  dialog <- gtkMessageDialog(parent = window, flags = 0, 
                             type = "question", 
                             buttons = c("yes", "no"),
                             "Are you sure you want to quit?")
  dialog$run() != GtkResponseType["yes"]
})


###################################################
### chunk number 40: gtk-container-window-destroy
###################################################
#line 817 "ch-RGtk2.Rnw"
window$destroy()


###################################################
### chunk number 41: 
###################################################
#line 832 "ch-RGtk2.Rnw"
## create a window and a dialog window
window <- gtkWindow(show = FALSE)
window$setTitle("Top level window")
##
dialog <- gtkWindow(show = FALSE)
dialog$setTitle("dialog window")
dialog$setTransientFor(window)
dialog$setPosition("center-on-parent")
dialog$setDestroyWithParent(TRUE)
window$show()
dialog$show()


###################################################
### chunk number 42: 
###################################################
#line 870 "ch-RGtk2.Rnw"
window <- gtkWindow(show=FALSE)
window$setTitle("Hello world")
label <- gtkLabel("Hello world")
window$add(label)


###################################################
### chunk number 43: 
###################################################
#line 882 "ch-RGtk2.Rnw"
window$getChild()['label']


###################################################
### chunk number 44: gtk-container-brackets
###################################################
#line 890 "ch-RGtk2.Rnw"
window[[1]]['label']


###################################################
### chunk number 45:  eval=FALSE
###################################################
## #line 896 "ch-RGtk2.Rnw"
## ## leave out?
## l$getParent()


###################################################
### chunk number 46: remove-child-widget-3
###################################################
#line 904 "ch-RGtk2.Rnw"
window$remove(label)
window$add(label)


###################################################
### chunk number 47: layout-window-show-first
###################################################
#line 931 "ch-RGtk2.Rnw"
window <- gtkWindow(); window$setTitle("Hello world")
label <- gtkLabel("Hello world")
window$add(label)


###################################################
### chunk number 48: layout-window-show-first-alloc
###################################################
#line 947 "ch-RGtk2.Rnw"
label$getAllocation()$allocation


###################################################
### chunk number 49: layout-window-show-later
###################################################
#line 959 "ch-RGtk2.Rnw"
window <- gtkWindow(show = FALSE); window$setTitle("Hello world")
label <- gtkLabel("Hello world")
window$add(label)
window$show()
label$getAllocation()$allocation


###################################################
### chunk number 50: 
###################################################
#line 966 "ch-RGtk2.Rnw"
sapply(label$getAllocation()$allocation, function(i) i)


###################################################
### chunk number 51: basic-box-homo
###################################################
#line 1042 "ch-RGtk2.Rnw"
box <- gtkHBox(TRUE, 5)


###################################################
### chunk number 52: basic-box-homo-nofill
###################################################
#line 1057 "ch-RGtk2.Rnw"
button_a <- gtkButton("Button A")
button_b <- gtkButton("Button B")
box$packStart(button_a, fill = FALSE)
box$packStart(button_b, fill = FALSE)


###################################################
### chunk number 53: basic-box-hetero
###################################################
#line 1084 "ch-RGtk2.Rnw"
box <- gtkHBox(FALSE, 5)


###################################################
### chunk number 54: 
###################################################
#line 1112 "ch-RGtk2.Rnw"
## re create buttons
button_a <- gtkButton("Button A")
button_b <- gtkButton("Button B")


###################################################
### chunk number 55: basic-box-expand
###################################################
#line 1118 "ch-RGtk2.Rnw"
box$packStart(button_a, expand = TRUE, fill = FALSE)
box$packStart(button_b, expand = FALSE, fill = FALSE)


###################################################
### chunk number 56: 
###################################################
#line 1161 "ch-RGtk2.Rnw"
hbox <- gtkHBox()
sapply(1:3, function(i) hbox$packStart(gtkLabel(i)))


###################################################
### chunk number 57: 
###################################################
#line 1165 "ch-RGtk2.Rnw"
b3 <- hbox[[3]]
hbox$reorderChild(b3, 2 - 1)               # second is 2 - 1


###################################################
### chunk number 58: basic-layout-align-window
###################################################
#line 1175 "ch-RGtk2.Rnw"
window <- gtkWindow(); window$setTitle("Hello world")
label <- gtkLabel("Hello world")
window$add(label)


###################################################
### chunk number 59: basic-layout-align-left
###################################################
#line 1198 "ch-RGtk2.Rnw"
label["xalign"] <- 0


###################################################
### chunk number 60: basic-layout-align-GtkAlignment
###################################################
#line 1209 "ch-RGtk2.Rnw"
window <- gtkWindow(); window$setTitle("Hello world")
alignment <- gtkAlignment()
alignment$set(xalign = 0, yalign = 0.5, xscale = 0, yscale = 1)
window$add(alignment)
label <- gtkLabel("Hello world")
alignment$add(label)


###################################################
### chunk number 61: 
###################################################
#line 1241 "ch-RGtk2.Rnw"
window <- gtkWindow(); window['title'] <- "Parent window"
#
dialog <- gtkMessageDialog(parent=window, 
                           flags="destroy-with-parent",
                           type="question", 
                           buttons="ok",
                           "My message")
dialog['secondary-text'] <- "A secondary message"


###################################################
### chunk number 62: 
###################################################
#line 1269 "ch-RGtk2.Rnw"
response <- dialog$run()
if(response == GtkResponseType["cancel"] || # for other buttons
   response == GtkResponseType["close"] ||
   response == GtkResponseType["delete-event"]) {
  ## pass
} else if(response == GtkResponseType["ok"]) {
  message("Ok")
}
dialog$destroy()


###################################################
### chunk number 63: 
###################################################
#line 1298 "ch-RGtk2.Rnw"
dialog <- gtkDialogNewWithButtons(title = "Enter a value", 
                       parent = NULL, flags = 0,
                       "gtk-ok", GtkResponseType["ok"],
                       "gtk-cancel", GtkResponseType["cancel"],
                       show = FALSE)


###################################################
### chunk number 64: OurDialogsLayout
###################################################
#line 1317 "ch-RGtk2.Rnw"
hbox <- gtkHBox()
hbox['spacing'] <- 10
#
hbox$packStart(gtkLabel("Enter a value:"))
entry <- gtkEntry()
hbox$packStart(entry)
#
vbox <- dialog$getContentArea()
vbox$packStart(hbox)


###################################################
### chunk number 65: connectResponse
###################################################
#line 1336 "ch-RGtk2.Rnw"
gSignalConnect(dialog, "response", 
               f=function(dialog, response, user.data) {
                 if(response == GtkResponseType["ok"])
                   print(entry$getText()) # Replace this
                 dialog$Destroy()
               })
dialog$showAll()
dialog$setModal(TRUE)


###################################################
### chunk number 66: openFileDialog
###################################################
#line 1362 "ch-RGtk2.Rnw"
dialog <- gtkFileChooserDialog(title = "Open a file", 
                     parent = NULL, action = "open",
                     "gtk-ok", GtkResponseType["ok"],
                     "gtk-cancel", GtkResponseType["cancel"],
                     show = FALSE)


###################################################
### chunk number 67: 
###################################################
#line 1377 "ch-RGtk2.Rnw"
gSignalConnect(dialog, "response", 
               f = function(dialog, response, data) {
                 if(response == GtkResponseType["ok"]) {
                   filename <- dialog$getFilename()
                   print(filename)
                 }
                 dialog$destroy()
               })


###################################################
### chunk number 68: 
###################################################
#line 1395 "ch-RGtk2.Rnw"
fileFilter <- gtkFileFilter()
fileFilter$setName("R files")
fileFilter$addPattern("*.R")
fileFilter$addPattern("*.Rdata")
dialog$addFilter(fileFilter)


###################################################
### chunk number 69: gtk-container-frame
###################################################
#line 1452 "ch-RGtk2.Rnw"
frame <- gtkFrame("Options")
vbox <- gtkVBox()
vbox$packStart(gtkCheckButton("Option 1"), FALSE)
vbox$packStart(gtkCheckButton("Option 2"), FALSE)
frame$add(vbox)


###################################################
### chunk number 70: gtk-container-expander
###################################################
#line 1473 "ch-RGtk2.Rnw"
expander <- gtkExpander("Advanced")
expander$add(frame)


###################################################
### chunk number 71: qt-layout-notebook
###################################################
#line 1496 "ch-RGtk2.Rnw"
notebook <- gtkNotebook()
notebook$appendPage(gtkLabel("Page 1"), gtkLabel("Tab 1"))
notebook$appendPage(gtkLabel("Page 2"), gtkLabel("Tab 2"))


###################################################
### chunk number 72: qt-layout-notebook-pos
###################################################
#line 1512 "ch-RGtk2.Rnw"
notebook['tab-pos'] <- "bottom"


###################################################
### chunk number 73: qt-layout-notebook-current
###################################################
#line 1521 "ch-RGtk2.Rnw"
notebook['page'] <- 1
notebook['page']


###################################################
### chunk number 74: 
###################################################
#line 1565 "ch-RGtk2.Rnw"
gtkNotebookInsertPageWithCloseButton <- 
  function(object, child, label.text="", position=-1) {
    icon <- gtkImage(pixbuf = 
      object$renderIcon("gtk-close", "button", size = "menu"))
    closeButton <- gtkButton()
    closeButton$setImage(icon)
    closeButton$setRelief("none")
    ##
    label <- gtkHBox()
    label$packStart(gtkLabel(label.text))
    label$packEnd(closeButton)
    ##
    gSignalConnect(closeButton, "clicked", function(button) {
      index <- notebook$pageNum(child)
      notebook$removePage(index)
    })
    object$insertPage(child, label, position)
  }


###################################################
### chunk number 75: 
###################################################
#line 1588 "ch-RGtk2.Rnw"
window <- gtkWindow()
notebook <- gtkNotebook(); window$add(notebook)
notebook$insertPageWithCloseButton(gtkButton("hello"), 
                                   label.text = "page 1")
notebook$insertPageWithCloseButton(gtkButton("world"), 
                                   label.text = "page 2")


###################################################
### chunk number 76: gtk-container-scrolled-device
###################################################
#line 1617 "ch-RGtk2.Rnw"
library(cairoDevice)
device <- gtkDrawingArea()
device$setSizeRequest(600, 400)
asCairoDevice(device)


###################################################
### chunk number 77: gtk-container-scrolled-construct
###################################################
#line 1625 "ch-RGtk2.Rnw"
scrolled <- gtkScrolledWindow()
scrolled$addWithViewport(device)


###################################################
### chunk number 78: gtk-container-scrolled-zoom
###################################################
#line 1641 "ch-RGtk2.Rnw"
zoomPlot <- function(x = 2.0) {
  allocation <- device$getAllocation()$allocation
  device$setSizeRequest(allocation$width * x, 
                        allocation$height * x)
  updateAdjustment <- function(adjustment) {
    adjustment$setValue(x * adjustment$getValue() + 
                        (x - 1) * adjustment$getPageSize() / 2)
  }
  updateAdjustment(scrolled$getHadjustment())
  updateAdjustment(scrolled$getVadjustment())
}


###################################################
### chunk number 79: gtk-container-scrolled-key-press
###################################################
#line 1666 "ch-RGtk2.Rnw"
gSignalConnect(scrolled, "key-press-event", 
               function(scrolled, event) {
                 key <- event[["keyval"]]
                 if (key == GDK_plus)
                   zoomPlot(2.0)
                 else if (key == GDK_minus)
                   zoomPlot(0.5)
                 TRUE
               })


###################################################
### chunk number 80: gtk-container-scrolled-window
###################################################
#line 1680 "ch-RGtk2.Rnw"
win <- gtkWindow(show = FALSE)
win$add(scrolled)
win$showAll()


###################################################
### chunk number 81: gtk-container-scrolled-plot
###################################################
#line 1687 "ch-RGtk2.Rnw"
plot(mpg ~ hp, data = mtcars)


###################################################
### chunk number 82: gtk-container-paned-construct
###################################################
#line 1715 "ch-RGtk2.Rnw"
paned <- gtkHPaned()


###################################################
### chunk number 83: gtk-container-paned-add
###################################################
#line 1723 "ch-RGtk2.Rnw"
paned$add1(gtkLabel("Left (1)"))
paned$add2(gtkLabel("Right (2)"))


###################################################
### chunk number 84: gtk-container-paned-pack
###################################################
#line 1736 "ch-RGtk2.Rnw"
paned$pack1(gtkLabel("Left (1)"), resize = TRUE, shrink = TRUE)
paned$pack2(gtkLabel("Right (2)"), resize = TRUE, shrink = TRUE)


###################################################
### chunk number 85: 
###################################################
#line 1766 "ch-RGtk2.Rnw"
## layout a basic dialog -- center align
library(RGtk2)


###################################################
### chunk number 86: gtk-container-table-construct
###################################################
#line 1779 "ch-RGtk2.Rnw"
table <- gtkTable(rows = 3, columns = 2, homogeneous = FALSE)


###################################################
### chunk number 87: 
###################################################
#line 1788 "ch-RGtk2.Rnw"
size_label <- gtkLabel("Sample size:")
size_combo <- gtkComboBoxNewText()
sapply(c(5, 10, 15, 30), size_combo$appendText)
##
diag_label <- gtkLabel("Diagnostic:")
diag_radio <- gtkVBox()
radiogp <- list()
radiogp$t <- gtkRadioButton(label = "t-statistic")
radiogp$mean <- gtkRadioButton(radiogp, label = "mean")
radiogp$median <- gtkRadioButton(radiogp, label = "median")
sapply(radiogp, diag_radio$packStart)
##
submit_vbox <- gtkVBox()
submit_vbox$packEnd(gtkButton("Run simulation"), expand = FALSE)


###################################################
### chunk number 88: gtk-container-layout-align
###################################################
#line 1807 "ch-RGtk2.Rnw"
size_label['xalign'] <- 1
diag_label['xalign'] <- 1; diag_label['yalign'] <- 0
diag_align <- gtkAlignment(xalign = 0)
diag_align$add(diag_radio)


###################################################
### chunk number 89: 
###################################################
#line 1840 "ch-RGtk2.Rnw"
table$attach(size_label, left.attach = 0,1, top.attach = 0,1, 
             xoptions = c("expand", "fill"), yoptions = "")
table$attach(size_combo, left.attach = 1,2, top.attach = 0,1, 
             xoptions = "fill", yoptions = "")
##
table$attach(diag_label, left.attach = 0,1, top.attach = 1,2, 
             xoptions = c("expand", "fill"), 
             yoptions = c("expand", "fill"))
##
table$attach(diag_align, left.attach = 1,2, top.attach = 1,2, 
             xoptions = c("expand", "fill"), yoptions = "")
##
table$attach(submit_vbox, left.attach = 1,2, top.attach = 2,3, 
             xoptions = "", yoptions = c("expand", "fill"))


###################################################
### chunk number 90: gtk-container-table-spacing
###################################################
#line 1865 "ch-RGtk2.Rnw"
table$setColSpacing(0, 5)


###################################################
### chunk number 91: 
###################################################
#line 1870 "ch-RGtk2.Rnw"
window <- gtkWindow(show=FALSE)
window['border-width'] <- 14
window$setTitle("GtkTable Example")
window$add(table)


###################################################
### chunk number 92: 
###################################################
#line 1877 "ch-RGtk2.Rnw"
window$show()


###################################################
### chunk number 93: ButtonConstructors
###################################################
#line 1896 "ch-RGtk2.Rnw"
window <- gtkWindow(show = FALSE)
window$setTitle("Various buttons")
window$setDefaultSize(400, 25)
hbox <- gtkHBox(homogeneous = FALSE, spacing = 5)
window$add(hbox)
button <- gtkButtonNew() 
button$setLabel("long way")
hbox$packStart(button)
hbox$packStart(gtkButton(label = "label only") )
hbox$packStart(gtkButton(stock.id = "hboxtk-ok") )
hbox$packStart(gtkButtonNewWithMnemonic("_Mnemonic") )
window$show()


###################################################
### chunk number 94: CallbackExampleForButton
###################################################
#line 1953 "ch-RGtk2.Rnw"
window <- gtkWindow(); button <- gtkButton("click me");
window$add(button)

gSignalConnect(button, "button-press-event", # just mouse
               f = function(widget, event, data) {
                 print(event$getButton())    # which button
                 return(FALSE)               # propagate
               })
gSignalConnect(button, "clicked",            # keyboard too
               f = function(widget, ...) {
                 print("clicked")
               })


###################################################
### chunk number 95: gtk-widget-button-sensitive
###################################################
#line 1973 "ch-RGtk2.Rnw"
button$setSensitive(FALSE)


###################################################
### chunk number 96: MacOSXstyleButton
###################################################
#line 2005 "ch-RGtk2.Rnw"
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
### chunk number 97: StockButtons
###################################################
#line 2027 "ch-RGtk2.Rnw"
cancel <- gtkButton(stock.id="gtk-cancel")
ok <- gtkButton(stock.id="gtk-ok")
delete <- gtkButton(stock.id="gtk-delete")


###################################################
### chunk number 98: macButtonPack
###################################################
#line 2035 "ch-RGtk2.Rnw"
hbox$packEnd(ok, padding = 0)
hbox$packEnd(cancel, padding = 12)
hbox$packEnd(delete, padding = 12)
hbox$packEnd(gtkLabel(""), expand = TRUE, fill = TRUE) # a spring


###################################################
### chunk number 99: 
###################################################
#line 2051 "ch-RGtk2.Rnw"
ok$grabFocus()


###################################################
### chunk number 100: 
###################################################
#line 2055 "ch-RGtk2.Rnw"
## not shown
w$showAll()


###################################################
### chunk number 101: gtkHButtonBoxExample
###################################################
#line 2059 "ch-RGtk2.Rnw"
## not shown
## Had we only wanted to use a button box
w <- gtkWindow()
bb <- gtkHButtonBox()
w$add(bb)

bb$add(gtkButton(stock.id="gtk-delete"))
bb$add(gtkButton(stock.id="gtk-cancel"))
bb$add(gtkButton(stock.id="gtk-ok"))


###################################################
### chunk number 102: gtk-widget-label-window
###################################################
#line 2105 "ch-RGtk2.Rnw"
window <- gtkWindow(show=FALSE); window$setTitle("Label formatting")
window$setSizeRequest(250,300)               # narrow
vbox <- gtkVBox(spacing=2); vbox$setBorderWidth(5); window$add(g)


###################################################
### chunk number 103: LabelFormatting
###################################################
#line 2110 "ch-RGtk2.Rnw"
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
rightJustified <- gtkLabel("right justify")
rightJustified$setJustify("right")
rightJustified['xalign'] <- 1

## PANGO markup
pangoLabel <- gtkLabel()
tmpl <- "<span foreground='blue' size='x-small'>%s</span>"
pangoLabel$setMarkup(sprintf(tmpl, string))
#
sapply(list(basicLabel, ellipsized, rightJustified, pangoLabel), 
       vbox$packStart, expand = TRUE, fill = TRUE)
window$showAll()


###################################################
### chunk number 104: 
###################################################
#line 2197 "ch-RGtk2.Rnw"
library(RGtk2)


###################################################
### chunk number 105: 
###################################################
#line 2208 "ch-RGtk2.Rnw"
window <- gtkWindow(show = FALSE)
window$setTitle("Graphic window")
window$setSizeRequest(400,400)
hbox <- gtkHBox(); window$add(hbox)
window$showAll()


###################################################
### chunk number 106: 
###################################################
#line 2221 "ch-RGtk2.Rnw"
theSize <- hbox$getAllocation()$allocation
width <- theSize$width; height <- theSize$height


###################################################
### chunk number 107: 
###################################################
#line 2229 "ch-RGtk2.Rnw"
require(cairoDevice)
pixmap <- gdkPixmap(drawable = NULL, 
                    width = width, height = height, depth = 24)
asCairoDevice(pixmap)
hist(rnorm(100))


###################################################
### chunk number 108: 
###################################################
#line 2239 "ch-RGtk2.Rnw"
image <- gtkImage(pixmap = pixmap)
hbox$packStart(image, expand = TRUE, fill = TRUE)


###################################################
### chunk number 109: notShown
###################################################
#line 2246 "ch-RGtk2.Rnw"
## Work this into an example ###
makeIconRGtk2 <- function(widget, giffile) {
  if(checkPtrType(w, "GtkWindow")) {
    img <- gdkPixbufNewFromFile(giffile)
    if(!is.null(img$retval))
      widget$setIcon(img$retval)
  }
}


###################################################
### chunk number 110: gtkStockListIds
###################################################
#line 2278 "ch-RGtk2.Rnw"
head(unlist(gtkStockListIds()), n=3)   


###################################################
### chunk number 111: gtk-widget-entry
###################################################
#line 2334 "ch-RGtk2.Rnw"
entry <- gtkEntry()


###################################################
### chunk number 112: gtk-widget-entry-activate
###################################################
#line 2344 "ch-RGtk2.Rnw"
gSignalConnect(entry, "activate", function() {
  message("Text entered: ", entry$getText())
})


###################################################
### chunk number 113: gtk-widget-entry-validate
###################################################
#line 2421 "ch-RGtk2.Rnw"
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
### chunk number 114: 
###################################################
#line 2436 "ch-RGtk2.Rnw"
w <- gtkWindow(show=FALSE)
w$add(validatedEntry)
w$showAll()


###################################################
### chunk number 115: gtk-widget-check-button
###################################################
#line 2457 "ch-RGtk2.Rnw"
checkButton <- gtkCheckButton("Option")


###################################################
### chunk number 116: gtk-widget-check-button-active
###################################################
#line 2463 "ch-RGtk2.Rnw"
checkButton['active']
checkButton['active'] <- TRUE


###################################################
### chunk number 117: gtk-widget-check-button-toggle
###################################################
#line 2471 "ch-RGtk2.Rnw"
gSignalConnect(checkButton, "toggled", function(button) {
  state <- ifelse(button$active, "active","inactive")
  message("Button is ", state)
})


###################################################
### chunk number 118: RadioGroupExample
###################################################
#line 2500 "ch-RGtk2.Rnw"
labels <- c("two.sided", "less", "greater")
radiogp <- list()                           # list for group
radiogp[[labels[1]]] <- gtkRadioButton(label=labels[1]) 
for(label in labels[-1]) 
  radiogp[[label]] <- gtkRadioButton(radiogp, label=label)


###################################################
### chunk number 119: 
###################################################
#line 2515 "ch-RGtk2.Rnw"
window <- gtkWindow(); window$setTitle("Radio group example")
vbox <- gtkVBox(FALSE, 5); window$add(vbox)
sapply(radiogp, gtkBoxPackStart, object = vbox)


###################################################
### chunk number 120: 
###################################################
#line 2522 "ch-RGtk2.Rnw"
vbox[[3]]$setActive(TRUE)           
sapply(radiogp, `[`, "active") 


###################################################
### chunk number 121: 
###################################################
#line 2529 "ch-RGtk2.Rnw"
sapply(radiogp, gSignalConnect, "toggled",     # connect each
       f = function(button, data) {
         if(button['active']) # set before callback
           message("clicked", button$getLabel(),"\n")
       })


###################################################
### chunk number 122: 
###################################################
#line 2543 "ch-RGtk2.Rnw"
radiogp <- gtkRadioButton(label=labels[1])
btns <- sapply(labels[-1], gtkRadioButtonNewWithLabelFromWidget, 
               group = radiogp)
window <- gtkWindow()
window['title'] <- "Radio group example"
vbox <- gtkVBox(); window$add(vbox)
sapply(rev(radiogp$getGroup()), gtkBoxPackStart, object = vbox)


###################################################
### chunk number 123: gtk-widget-combo
###################################################
#line 2573 "ch-RGtk2.Rnw"
combo <- gtkComboBoxNewText()
sapply(c("two.sided", "less", "greater"), combo$appendText)


###################################################
### chunk number 124: gtk-widget-combo-active
###################################################
#line 2582 "ch-RGtk2.Rnw"
combo['active']


###################################################
### chunk number 125: gtk-widget-combo-changed
###################################################
#line 2591 "ch-RGtk2.Rnw"
gSignalConnect(combo, "changed",
               f = function(button, ...) {
                 if(button$getActive() < 0) 
                   message("No value selected")
                 else
                   message("Value is", button$getActiveText())
               })


###################################################
### chunk number 126: ComboBoxExample
###################################################
#line 2608 "ch-RGtk2.Rnw"
## An example of two comboboxes where 1 updates the other
require(RGtk2)
data(mtcars); library(MASS); data(Cars93) # need some data frames


###################################################
### chunk number 127: 
###################################################
#line 2618 "ch-RGtk2.Rnw"
library(ProgGUIinR)                     # for avail_dfs, find_vars
#source("~/GUI/ProgGUIInR/R/misc.R")


###################################################
### chunk number 128: Widgets
###################################################
#line 2624 "ch-RGtk2.Rnw"
window <- gtkWindow(show = FALSE)
window$setTitle("gtkComboBox example")

df_combo <- gtkComboBoxNewText()
var_combo <- gtkComboBoxNewText()


###################################################
### chunk number 129: Layout
###################################################
#line 2635 "ch-RGtk2.Rnw"
vbox <- gtkVBox(); window$add(vbox)
#
vbox1 <- gtkHBox(); vbox$packStart(vbox1)
vbox1$packStart(gtkLabel("Data frames:"))
vbox1$packStart(df_combo)
#
vbox2 <- gtkHBox(); vbox$packStart(vbox2)
vbox2$packStart(gtkLabel("Variable:"))
vbox2$packStart(var_combo)
vbox2$hide()


###################################################
### chunk number 130: configureComboBoxes
###################################################
#line 2651 "ch-RGtk2.Rnw"
sapply(avail_dfs(), df_combo$appendText)
df_combo$setActive(-1)
#
gSignalConnect(df_combo, "changed", function(df_combo, ...) {
  var_combo$getModel()$clear()
  sapply(find_vars(df_combo$getActiveText()),  
         var_combo$appendText)
  vbox2$show()
})


###################################################
### chunk number 131: 
###################################################
#line 2664 "ch-RGtk2.Rnw"
## show window
window$show()


###################################################
### chunk number 132: 
###################################################
#line 2747 "ch-RGtk2.Rnw"
## make a range widget combining both a slider and spinbutton to choose a number
library(RGtk2)


###################################################
### chunk number 133: 
###################################################
#line 2754 "ch-RGtk2.Rnw"
from <- 0; to <- 100; by <- 1


###################################################
### chunk number 134: 
###################################################
#line 2762 "ch-RGtk2.Rnw"
slider <- gtkHScale(min = from, max = to, step = by)
slider['draw-value'] <- FALSE
adjustment <- slider$getAdjustment()
spinbutton <- gtkSpinButton(adjustment = adjustment)


###################################################
### chunk number 135: 
###################################################
#line 2772 "ch-RGtk2.Rnw"
hbox <- gtkHBox()
hbox$packStart(slider, expand = TRUE, fill = TRUE, padding = 5)
hbox$packStart(spinbutton, expand = FALSE, padding = 5)


###################################################
### chunk number 136: 
###################################################
#line 2779 "ch-RGtk2.Rnw"
w <- gtkWindow(show=FALSE)
w['title'] <- "Example of a range widget"
w$setSizeRequest(width=200, height=-1)
w$add(hbox)
w$show()


###################################################
### chunk number 137: 
###################################################
#line 2887 "ch-RGtk2.Rnw"
window <- gtkWindow(); window$setTitle("Progress bar example")
progressBar <- gtkProgressBar()
window$add(progressBar)
#
progressBar$setText("Please be patient...")
for(i in 1:100) {
  progressBar$setFraction(i/100)
  Sys.sleep(0.05) ## replace with a step in the process
}
progressBar$setText("All done.")


###################################################
### chunk number 138: gtk-widget-progress-pulse
###################################################
#line 2901 "ch-RGtk2.Rnw"
progressBar$pulse()


###################################################
### chunk number 139: gtk-widget-spinner eval=FALSE
###################################################
## #line 2911 "ch-RGtk2.Rnw"
## spinner <- gtkSpinner()
## spinner$start()
## spinner$stop()


###################################################
### chunk number 140: installPackagesWizard
###################################################
#line 2951 "ch-RGtk2.Rnw"
## gtk Assistant example
require(RGtk2)


###################################################
### chunk number 141: defineAssistant
###################################################
#line 2974 "ch-RGtk2.Rnw"
assistant <- gtkAssistant(show=FALSE)
assistant$setSizeRequest(500, 500)
gSignalConnect(assistant, "cancel", 
               function(assistant) assistant$destroy())


###################################################
### chunk number 142: makePages
###################################################
#line 2983 "ch-RGtk2.Rnw"
pages <- lapply(1:5, gtkVBox, spacing = 5, homogeneous = FALSE)
page_types <- c("intro", rep("confirm", 3), "summary")
sapply(pages, gtkAssistantAppendPage, object = assistant)
sapply(pages, gtkAssistantSetPageType, object = assistant, 
       type=page_types)


###################################################
### chunk number 143: sideLogo1
###################################################
#line 2992 "ch-RGtk2.Rnw"
image <- gdkPixbuf(filename = imagefile("rgtk-logo.gif"))[[1]]
sapply(pages, gtkAssistantSetPageSideImage, object = assistant, 
       pixbuf = image)


###################################################
### chunk number 144: 
###################################################
#line 3002 "ch-RGtk2.Rnw"
populatePage <- list()                
gSignalConnect(assistant, "prepare", 
       function(assistant, page, data) {
         page_no <- which(sapply(pages, identical, page))
         if(!length(page$getChildren()))
           populatePage[[page_no]]()
       })


###################################################
### chunk number 145: 
###################################################
#line 3018 "ch-RGtk2.Rnw"
assistant$setForwardPageFunc(function(page_index, data) {
  if(page_index == 0 && have_CRAN()) 
    2L 
  else 
    as.integer(page_index + 1)
}, data=NULL)


###################################################
### chunk number 146: 
###################################################
#line 3028 "ch-RGtk2.Rnw"
CRAN_package <- NA
install_options <- list() #type, dependencies, lib


###################################################
### chunk number 147: HelperFunctions
###################################################
#line 3033 "ch-RGtk2.Rnw"
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
### chunk number 148: page1
###################################################
#line 3063 "ch-RGtk2.Rnw"
populatePage[[1]] <- function() {
  assistant$setPageTitle(pages[[1]], "Install a CRAN package")
  pages[[1]]$packStart(label <- gtkLabel())
  pages[[1]]$packStart(gtkLabel(), expand=TRUE) # a spring
  
  label$setMarkup(paste(
       "<span font='x-large'>Install a CRAN package</span>",
       "This wizard will help install a package from",
       "<b>CRAN</b>. If you have not already specified a",
       "CRAN repository, you will be prompted to do so.",
       sep="\n"))
  assistant$setPageComplete(pages[[1]], TRUE)
}


###################################################
### chunk number 149: CRANMirror
###################################################
#line 3080 "ch-RGtk2.Rnw"
## Not shown
populatePage[[2]] <- function() {
  assistant$setPageTitle(pages[[2]], "Select a CRAN mirror")

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
    assistant$setPageComplete(pages[[2]], TRUE)
  }, data=view, user.data.first=TRUE)
  
  
  sw <- gtkScrolledWindow(); sw$add(view)
  sw$setPolicy("automatic", "automatic")
  
  pages[[2]]$packStart(gtkLabel("Select a CRAN mirror"), expand=FALSE)
  pages[[2]]$packStart(sw, expand=TRUE, fill=TRUE)

}


###################################################
### chunk number 150: SelectPacakge
###################################################
#line 3111 "ch-RGtk2.Rnw"
## Not shown
populatePage[[3]] <- function() {
  assistant$setPageTitle(pages[[3]], "Select a CRAN package")
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
    assistant$setPageComplete(pages[[3]], TRUE)
  }, data=view, user.data.first=TRUE) 
  #
  sw <- gtkScrolledWindow(); sw$add(view)
  sw$setPolicy("automatic", "automatic")
  #
  pages[[3]]$packStart(gtkLabel("Select a package to install"), expand=FALSE)
  pages[[3]]$packStart(sw, expand=TRUE, fill=TRUE)
}


###################################################
### chunk number 151: 
###################################################
#line 3143 "ch-RGtk2.Rnw"
populatePage[[4]] <- function() {
  assistant$setPageTitle(pages[[4]], "Install a CRAN package")
  ##
  get_desc <- function(pkgname) {
    o <- "http://cran.r-project.org/web/packages/%s/DESCRIPTION"
    x <- readLines(sprintf(o, pkgname))
    f <- tempfile(); cat(paste(x, collapse="\n"), file=f)
    read.dcf(f)
  }
  desc <- get_desc(CRAN_package)
  #
  label <- gtkLabel()
  label$setLineWrap(TRUE)
  label$setWidthChars(40)
  label$setMarkup(paste(
    sprintf("Install package: <b>%s</b>", desc[1,'Package']),
    "\n",
    sprintf("%s", gsub("\\n", " ", desc[1,'Description'])),
    sep="\n"))
  
  pages[[4]]$packStart(label)
  ##
  table <- gtkTable()
  pages[[4]]$packStart(table, expand=FALSE)
  pages[[4]]$packStart(gtkLabel(), expand=TRUE)
  
  ##
  combo <- gtkComboBoxNewText()
  pkg_types <- c("source", "mac.binary", "mac.binary.leopard",
                 "win.binary", "win64.binary")
  sapply(pkg_types, combo$appendText)
  combo$setActive(which(getOption("pkgType") == pkg_types) - 1)
  gSignalConnect(combo, "changed", function(combo, ...) {
    cur <- 1L + combo$getActive()
    install_options[['type']] <<- pkg_types[cur]
  })
  table$attachDefaults(gtkLabel("Package type:"), 0, 1, 0, 1)
  table$attachDefaults(combo, 1, 2, 0, 1)

  ##
  checkButton <- gtkCheckButton()
  checkButton$setActive(TRUE)
  gSignalConnect(checkButton, "toggled", function(checkButton) {
    install_options[['dependencies']] <<- checkButton$getActive()
  })
  table$attachDefaults(gtkLabel("Install dependencies"),
                       0, 1, 1, 2)
  table$attachDefaults(cb, 1, 2, 1, 2)

  ##
  fileChooser <- gtkFileChooserButton("Select a directory...", 
                                      "select-folder")
  fileChooser$setFilename(.libPaths()[1])
  gSignalConnect(fileChooser, "selection-changed", 
                 function(fileChooser) {
                   dir <- fileChooser$getFilename()
                   install_options[['lib']] <<- dir
                 })
  table$attachDefaults(gtkLabel("Where"), 0, 1, 2, 3)
  table$attachDefaults(fc, 1, 2, 2, 3)
  ## align labels to right and set spacing
  sapply(table$getChildren(), function(child) {
    widget <- child$getWidget()
    if(is(widget, "GtkLabel"))  widget['xalign'] <- 1
  })
  table$setColSpacing(0L, 5L)
  ##
  assistant$setPageComplete(pages[[4]], TRUE)
}


###################################################
### chunk number 152: 
###################################################
#line 3220 "ch-RGtk2.Rnw"
populatePage[[5]] <- function() {
  assistant$setPageTitle(pages[[5]], "Done")
  install_options$pkgs <- CRAN_package
  out <- try(do.call("install.packages", install_options), 
             silent=TRUE)

  label <- gtkLabel(); pages[[5]]$packStart(label)
  if(!inherits(out, "try-error")) {
    label$setMarkup(sprintf("Package %s installed successfully", 
                            CRAN_package))
  } else {
    label$setMarkup(paste(sprintf("Package %s failed to install", 
                                  CRAN_package),
                          paste(out, collapse="\n"),
                          sep="\n"))
  }

  assistant$setPageComplete(pages[[5]], FALSE)
}


###################################################
### chunk number 153: showAssistant
###################################################
#line 3244 "ch-RGtk2.Rnw"
populatePage[[1]]()
assistant$show()


###################################################
### chunk number 154: gtk-cairo-device
###################################################
#line 3268 "ch-RGtk2.Rnw"
library(cairoDevice)
device <- gtkDrawingArea()
asCairoDevice(device)
##
window <- gtkWindow(show=FALSE)
window$add(device)
window$showAll()
plot(mpg ~ hp, data = mtcars)


###################################################
### chunk number 155: gtk-cairo-print-operation
###################################################
#line 3299 "ch-RGtk2.Rnw"
print_op <- gtkPrintOperation()


###################################################
### chunk number 156: gtk-cairo-draw-page
###################################################
#line 3312 "ch-RGtk2.Rnw"
gSignalConnect(print_op, "draw-page", 
               function(print_op, context, page_nr) {
                 asCairoDevice(context)
                 plot(mpg ~ wt, data = mtcars)
               })


###################################################
### chunk number 157: gtk-cairo-run-dialog
###################################################
#line 3322 "ch-RGtk2.Rnw"
print_op$run(action = "print-dialog", parent = NULL)


###################################################
### chunk number 158: 
###################################################
#line 3334 "ch-RGtk2.Rnw"
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
### chunk number 159: resolveVariableArguments
###################################################
#line 3384 "ch-RGtk2.Rnw"
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
### chunk number 160: manipulate_example eval=FALSE
###################################################
## #line 3405 "ch-RGtk2.Rnw"
## manipulate(## expression
##            plot(cars, xlim = c(x.min, x.max), type = type, 
##                 axes = axes, ann = label),
##            ## controls
##            x.min = slider(0, 15),
##            x.max = slider(15, 30, initial = 25),
##            type = picker("p", "l", "b", "c", "o", "h", "s"),
##            axes = checkbox(TRUE, label = "Draw Axes"),
##            label = checkbox(FALSE, label = "Draw Labels")
##            )


###################################################
### chunk number 161: ManipulateClass
###################################################
#line 3428 "ch-RGtk2.Rnw"
Manipulate <- setRefClass("Manipulate",
                          fields=list(
                            .code="ANY",
                            .controls="list"
                            ))


###################################################
### chunk number 162: manipulate_validate_controls
###################################################
#line 3438 "ch-RGtk2.Rnw"
Manipulate$methods(validate_controls = function() {
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
### chunk number 163: Manipulate_change_handler
###################################################
#line 3468 "ch-RGtk2.Rnw"
Manipulate$methods(
           get_values = function() {
             "Get widget values as list"
             sapply(.controls, 
                    function(control) control$get_value(), 
                    simplify=FALSE)
           },
           change_handler = function(...) {
             "Evaluate code with current values"
             values <- get_values()
             result <- withVisible(eval(.code, envir = values))
             if (result$visible) {
               eval(print(result$value))
             }
           })


###################################################
### chunk number 164: Manipulate_execute
###################################################
#line 3492 "ch-RGtk2.Rnw"
Manipulate$methods(  
           execute=function() {
             "Make the GUI"
             window <- gtkWindow(show=FALSE)
             window$setTitle("ManipulateR")
             ## Set up graphic device
             hpaned <- gtkHPaned()
             window$add(hpaned)
             device <- gtkDrawingArea()
             device$setSizeRequest(480, 480)
             asCairoDevice(device)
             hpaned$add(device)
             ## Controls frame
             frame <- gtkFrame("Controls")
             control_table <- gtkTableNew()
             control_table$setHomogeneous(FALSE)
             control_table['column-spacing'] <- 10
             ## insert horizontal strut
             control_table$attach(strut <- gtkHBox(), 1,2,0,1,
                           xoptions="", yoptions="shrink")
             strut$setSizeRequest(75, -1)
             frame$add(control_table)
             hpaned$add(frame)
             ## add each control
             sapply(.controls, function(control) {
               control$make_gui(cont=control_table, 
                                handler=.self$change_handler)
             })
             window$show()
             change_handler()                    # initial
           })


###################################################
### chunk number 165: Manipulate_Initialize
###################################################
#line 3540 "ch-RGtk2.Rnw"
Manipulate$methods(  
           initialize = function(code, ...) {
             controls <- resolveVariableArguments(list(...))
             initFields(.code = code,
                        .controls = controls)
             validate_controls()
             callSuper()
           })


###################################################
### chunk number 166: manipulate_constructor
###################################################
#line 3553 "ch-RGtk2.Rnw"
manipulate <- function(`_expr`,...) {
  manip <- Manipulate$new(substitute(`_expr`),...)
  manip$execute()
}


###################################################
### chunk number 167: ManipulateControls
###################################################
#line 3569 "ch-RGtk2.Rnw"
ManipulateControls <- setRefClass("ManipulateControls",
                        fields=list(
                          l="list",
                          widget = "ANY",
                          label="character",
                          initial="ANY"
                          ))


###################################################
### chunk number 168: MC_Interface
###################################################
#line 3582 "ch-RGtk2.Rnw"
ManipulateControls$methods(
            validate_inputs = function(...) {
              "Validate input code"
            },
            get_value = function(...) {
              "Get value of widget"
            })


###################################################
### chunk number 169: MC_make_gui
###################################################
#line 3595 "ch-RGtk2.Rnw"
ManipulateControls$methods(make_gui = function(cont) {
            "Create widget, then add to table"
            ## cont a GtkTable instance
            nrows <- cont['n-rows']
            label_widget <- gtkLabel(label)
            label_widget['xalign'] <- 1
            cont$attach(label_widget, 0, 1, nrows, nrows + 1,
                        xoptions = "shrink", yoptions = "shrink"
                        )
            cont$attach(widget, 1, 2, nrows, nrows + 1,
                        xoptions = c("expand", "fill"),
                        yoptions = "")
          })


###################################################
### chunk number 170: Slider_constructor
###################################################
#line 3615 "ch-RGtk2.Rnw"
slider <- function(min, max, initial = min, label = NULL, 
                   step = -1, ticks = TRUE) {
  Slider$new(min, max, initial = initial, label = label, 
             step = step, ticks = ticks)
}


###################################################
### chunk number 171: Slider
###################################################
#line 3624 "ch-RGtk2.Rnw"
Slider <- setRefClass("Slider",
                      contains = "ManipulateControls")


###################################################
### chunk number 172: Slider_validate
###################################################
#line 3630 "ch-RGtk2.Rnw"
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
### chunk number 173: Slider_initialize
###################################################
#line 3654 "ch-RGtk2.Rnw"
Slider$methods(
       initialize = function(min, max, initial = min, 
         label = NULL, step = -1, ticks = TRUE, ...) {
           validate_inputs(min, max, initial, step, ticks)
           ## create slider and return it
           slider <- list(type = 0,
                          min = min,
                          max = max,
                          step = step,
                          ticks = ticks)
           initFields(l = slider, label = label, 
                      initial = initial)
           .self
         })


###################################################
### chunk number 174: Slider_make_gui
###################################################
#line 3677 "ch-RGtk2.Rnw"
Slider$methods(
       make_gui = function(cont, handler, ...) {
         widget <<- gtkHScale(min = l$min, max = l$max, 
                              step = l$step)
         widget$setValue(initial)
         gSignalConnect(widget, "value-changed", handler)
         callSuper(cont)
       },
       get_value = function() {
         as.numeric(widget$getValue())
       })


###################################################
### chunk number 175: Picker
###################################################
#line 3691 "ch-RGtk2.Rnw"
## Not shown -- too long
Picker <- setRefClass("Picker",
                      contains="ManipulateControls",
                      methods=list(
                        initialize=function(..., initial = NULL, label = NULL) {
                          
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
### chunk number 176: Checkbox
###################################################
#line 3757 "ch-RGtk2.Rnw"
Checkbox <- setRefClass("Checkbox", contains="ManipulateControls")
Checkbox$methods(validate_inputs=function(initial, label) {
                   if ( !is.logical(initial) )
                     stop("initial must be a logical")
                 })


###################################################
### chunk number 177: 
###################################################
#line 3770 "ch-RGtk2.Rnw"
Checkbox$methods(
         initialize = function(initial = FALSE, label = NULL) {
           validate_inputs(initial, label)
           checkbox <- list(type = 2)
           initFields(l = checkbox, label = label, 
                      initial = initial)
           .self
         },
         make_gui = function(cont, handler, ...) {
           widget <<- gtkCheckButton() # no label
           widget$setActive(initial)
           gSignalConnect(widget, "toggled", handler)
           callSuper(cont)
         },
         get_value = function() widget['active']
         )


###################################################
### chunk number 178: Checkbox_constructor
###################################################
#line 3792 "ch-RGtk2.Rnw"
checkbox <- function(initial = FALSE, label = NULL) Checkbox$new(initial, label)                            


###################################################
### chunk number 179: 
###################################################
#line 3797 "ch-RGtk2.Rnw"
#line 3405 "ch-RGtk2.Rnw"
manipulate(## expression
           plot(cars, xlim = c(x.min, x.max), type = type, 
                axes = axes, ann = label),
           ## controls
           x.min = slider(0, 15),
           x.max = slider(15, 30, initial = 25),
           type = picker("p", "l", "b", "c", "o", "h", "s"),
           axes = checkbox(TRUE, label = "Draw Axes"),
           label = checkbox(FALSE, label = "Draw Labels")
           )
#line 3798 "ch-RGtk2.Rnw"


###################################################
### chunk number 180: 
###################################################
#line 3822 "ch-RGtk2.Rnw"
TARGET.TYPE.TEXT   <- 80                # our enumeration
TARGET.TYPE.PIXMAP <- 81                  
widgetTargetTypes <- 
  list(text = gtkTargetEntry("text/plain", 0, 
         TARGET.TYPE.TEXT),
       pixmap = gtkTargetEntry("image/x-pixmap", 0, 
         TARGET.TYPE.PIXMAP))


###################################################
### chunk number 181: 
###################################################
#line 3839 "ch-RGtk2.Rnw"
window <- gtkWindow(); window['title'] <- "Drag Source"
dragSourceWidget <-  gtkButton("Text to drag")
window$add(dragSourceWidget)

gtkDragSourceSet(dragSourceWidget,
       start.button.mask=c("button1-mask", "button3-mask"),
       targets=widgetTargetTypes[["text"]],
       actions="copy")


###################################################
### chunk number 182: 
###################################################
#line 3860 "ch-RGtk2.Rnw"
gSignalConnect(dragSourceWidget, "drag-data-get", 
               function(widget, context, sel, tType, eTime) {
                 sel$setText(widget$getLabel()) 
               })


###################################################
### chunk number 183: 
###################################################
#line 3875 "ch-RGtk2.Rnw"
window <- gtkWindow(); window['title'] <- "Drop Target"
dropTargetWidget <- gtkButton("Drop here")
window$add(dropTargetWidget)

gtkDragDestSet(dropTargetWidget,
               flags="all", 
               targets=widgetTargetTypes[["text"]],
               actions="copy")


###################################################
### chunk number 184: 
###################################################
#line 3901 "ch-RGtk2.Rnw"
gSignalConnect(dropTargetWidget, "drag-data-received", 
       function(widget, context, x, y, sel, tType, eTime) {
         dropdata <- sel$getText()
         widget$setLabel(rawToChar(dropdata))
       })


###################################################
### chunk number 185: 
###################################################
#line 3923 "ch-RGtk2.Rnw"
library(RGtk2)


###################################################
### chunk number 186: 
###################################################
#line 4005 "ch-RGtk2.Rnw"
data(Cars93, package="MASS")             # mix of classes
model <- rGtkDataFrame(Cars93)
model[1, 4] <- 12
model[1, 4]                              # get value


###################################################
### chunk number 187: 
###################################################
#line 4026 "ch-RGtk2.Rnw"
model$setFrame(Cars93[1:5, 1:5])


###################################################
### chunk number 188: rgtk2-mvc-treeview-construc
###################################################
#line 4051 "ch-RGtk2.Rnw"
view <- gtkTreeView(model)


###################################################
### chunk number 189: rgtk2-mvc-insert-column-hardway
###################################################
#line 4063 "ch-RGtk2.Rnw"
column <- gtkTreeViewColumn()
column$setTitle("Manufacturer")
cell_renderer <- gtkCellRendererText()
column$packStart(cell_renderer)
column$addAttribute(cell_renderer, "text", 0)
view$insertColumn(column, 0)


###################################################
### chunk number 190: rgtk2-mvc-insert-column-easyway
###################################################
#line 4091 "ch-RGtk2.Rnw"
view$insertColumnWithAttributes(position = -1, 
                                title = "Model", 
                                cell = gtkCellRendererText(), 
                                text = 2 - 1) # second column


###################################################
### chunk number 191: rgtk2-mvc-insert-all-columns
###################################################
#line 4109 "ch-RGtk2.Rnw"
view <- gtkTreeView(model)
mapply(view$insertColumnWithAttributes,  
       position = -1, 
       title = colnames(model), 
       cell = list(gtkCellRendererText()), 
       text = seq_len(ncol(model)) - 1
       )


###################################################
### chunk number 192: scrollView
###################################################
#line 4127 "ch-RGtk2.Rnw"
window <- gtkWindow()
window$setTitle("Tabular view of data frame")
scrolled_window <- gtkScrolledWindow()
window$add(scrolled_window)
scrolled_window$add(view)


###################################################
### chunk number 193: rgtk2-mvc-path-constructor-list
###################################################
#line 4201 "ch-RGtk2.Rnw"
second_row <- gtkTreePathNewFromIndices(2)


###################################################
### chunk number 194: rgtk2-mvc-path-constructor-tree
###################################################
#line 4206 "ch-RGtk2.Rnw"
abc_path <- gtkTreePathNewFromIndices(c(1, 3, 2))
abc_path <- gtkTreePathNewFromString("1:3:2")


###################################################
### chunk number 195: rgtk2-mvc-iter-traverse
###################################################
#line 4235 "ch-RGtk2.Rnw"
iter <- model$getIterFirst()
manufacturer <- character()
while(iter$retval) {
  manufacturer <- c(manufacturer, model$get(iter$iter, 0)[[1]])
  iter$retval <- model$iterNext(iter$iter)
}


###################################################
### chunk number 196: rgtk2-mvc-iter-apply
###################################################
#line 4264 "ch-RGtk2.Rnw"
nrows <- model$iterNChildren(NULL)
manufacturer <- sapply(seq(nrows) - 1L, function(i) {
  iter <- model$iterNthChild(NULL, i)
  model$get(iter$iter, 0)[[1]]
})


###################################################
### chunk number 197: 
###################################################
#line 4320 "ch-RGtk2.Rnw"
model <- rGtkDataFrame(mtcars)
view <- gtkTreeView(model)
selection <- view$getSelection()
selection$setMode("single")


###################################################
### chunk number 198: 
###################################################
#line 4332 "ch-RGtk2.Rnw"
column <- gtkTreeViewColumn()
view$insertColumnWithAttributes(0, "title", gtkCellRendererText(), text = 0)
## pack in GUI
scrolled_window <- gtkScrolledWindow()
scrolled_window$add(view)
##
window <- gtkWindow(show=FALSE)
window['title'] <- "Multiple selection example"
window$add(scrolled_window)
window$show()
## some selection
selection$selectPath(gtkTreePathNewFromIndices(3)) # set 
# 


###################################################
### chunk number 199: 
###################################################
#line 4350 "ch-RGtk2.Rnw"
selected <- selection$getSelected()
with(selected, model$getValue(iter, 0)$value)


###################################################
### chunk number 200: 
###################################################
#line 4363 "ch-RGtk2.Rnw"
gSignalConnect(selection, "changed", function(selection) {
  selected_rows <- selection$getSelectedRows()
  if(length(selected_rows$retval)) {
    rows <- sapply(selected_rows$retval, 
                   gtkTreePathGetIndices) + 1L
    selected_rows$model[rows, 1]
  }
})


###################################################
### chunk number 201:  eval=FALSE
###################################################
## #line 4383 "ch-RGtk2.Rnw"
## sapply(view$getColumns(), function(i) i == column)


###################################################
### chunk number 202: rgtk2-mvc-sorting-clickable
###################################################
#line 4399 "ch-RGtk2.Rnw"
column <- view$getColumn(0)
column$setSortColumnId(0)


###################################################
### chunk number 203: rgtk2-mvc-sorting-sortable
###################################################
#line 4408 "ch-RGtk2.Rnw"
model$setSortColumnId(0, "ascending")


###################################################
### chunk number 204: 
###################################################
#line 4419 "ch-RGtk2.Rnw"
require(MASS)


###################################################
### chunk number 205: basicSort
###################################################
#line 4422 "ch-RGtk2.Rnw"
model <- rGtkDataFrame(Cars93)
sorted_model <- gtkTreeModelSortNewWithModel(model)
view <- gtkTreeView(sorted_model)
mapply(view$insertColumnWithAttributes,
       position = -1,
       title = colnames(model),
       cell = list(gtkCellRendererText()),
       text = seq_len(ncol(model)) - 1)
sapply(seq_len(ncol(model)), function(i)
       view$getColumn(i - 1)$setSortColumnId(i - 1))


###################################################
### chunk number 206: sort-example
###################################################
#line 4450 "ch-RGtk2.Rnw"
f <- function(model, iter1, iter2, user.data) {
  types <- c("Compact", "Small", "Sporty", "Midsize", 
             "Large", "Van")
  column <- user.data
  val1 <- model$getValue(iter1, column)$value
  val2 <- model$getValue(iter2, column)$value
  as.integer(match(val1, types) - match(val2, types))
}
sorted_model$setSortFunc(sort.column.id = 3 - 1, sort.func = f, 
                         user.data = 3 - 1)


###################################################
### chunk number 207: notShown
###################################################
#line 4463 "ch-RGtk2.Rnw"
## basic GUI
sw <- gtkScrolledWindow()
sw$add(view)
w <- gtkWindow(show=FALSE)
w['title'] <- "Example of sortable tree view"
w$add(sw)
w$show()


###################################################
### chunk number 208: 
###################################################
#line 4486 "ch-RGtk2.Rnw"
df <- Cars93
model <- rGtkDataFrame(cbind(df, .visible=rep(TRUE, nrow(df))))
filtered_model <- model$filter()
filtered_model$setVisibleColumn(length(df))          # 0-based
view <- gtkTreeView(filtered_model)
## Adjust filter
model[,".visible"] <- df$MPG.highway >= 30


###################################################
### chunk number 209: notShown
###################################################
#line 4508 "ch-RGtk2.Rnw"
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
### chunk number 210: 
###################################################
#line 4531 "ch-RGtk2.Rnw"
library(RGtk2)


###################################################
### chunk number 211: 
###################################################
#line 4546 "ch-RGtk2.Rnw"
DF <- data.frame(state.name)
DF$visible <- rep(TRUE, nrow(DF))
model <- rGtkDataFrame(DF)


###################################################
### chunk number 212: 
###################################################
#line 4554 "ch-RGtk2.Rnw"
filtered_model <- model$filter()
filtered_model$setVisibleColumn(ncol(DF) - 1)      # offset
view <- gtkTreeView(filtered_model)


###################################################
### chunk number 213: 
###################################################
#line 4561 "ch-RGtk2.Rnw"
view$insertColumnWithAttributes(0, "Col", 
                 gtkCellRendererText(), text = 0)


###################################################
### chunk number 214: 
###################################################
#line 4571 "ch-RGtk2.Rnw"
entry <- gtkEntry()
gSignalConnect(entry, "changed", function(entry, user.data) {
  pattern <- entry$getText()
  DF <- user.data$getModel()
  values <- DF[, "state.name"]
  DF[, "visible"] <- grepl(pattern, values)
}, data=filtered_model)


###################################################
### chunk number 215: 
###################################################
#line 4584 "ch-RGtk2.Rnw"
## not shown, but this places widgets into a simple GUI
window <- gtkWindow(show=FALSE)
window['title'] <- "A filtered data model"
window$setSizeRequest(width=300, height=400)

box <- gtkVBox()
window$add(box)
box$packStart(entry, expand=FALSE)

## add scroll window
sw <- gtkScrolledWindow()
sw$setPolicy("automatic", "automatic")
sw$add(view)
box$packStart(sw, expand=TRUE, fill=TRUE)

window$show()


###################################################
### chunk number 216: gtk-mvc-cell-explicit
###################################################
#line 4631 "ch-RGtk2.Rnw"
cell_renderer <- gtkCellRendererText()
cell_renderer['cell-background'] <- "gray"


###################################################
### chunk number 217: cr-right-aligned
###################################################
#line 4657 "ch-RGtk2.Rnw"
cell_renderer <- gtkCellRendererText()
cell_renderer['xalign'] <- 1          # default 0.5 = centered
cell_renderer['family'] <- "Helvetica"  


###################################################
### chunk number 218: 
###################################################
#line 4685 "ch-RGtk2.Rnw"
cell_renderer <- gtkCellRendererText()
store <- model


###################################################
### chunk number 219: editedSignal
###################################################
#line 4689 "ch-RGtk2.Rnw"
cell_renderer['editable'] <- TRUE
gSignalConnect(cell_renderer, "edited", 
       f=function(cell_renderer, path, newtext, user.data) {
         i <- as.numeric(path) + 1
         j <- user.data$column
         model <- user.data$model
         model[i, j] <- newtext
       }, data=list(model=store, column=1))


###################################################
### chunk number 220: editableTableForCollectingOptions
###################################################
#line 4710 "ch-RGtk2.Rnw"
## GUI for configuring options -- in a table
library(RGtk2)


###################################################
### chunk number 221: 
###################################################
#line 4730 "ch-RGtk2.Rnw"
opts <- c("main", "sub", "xlab", "ylab", "line", "outer")
DF <- data.frame(option = opts,
           value = c("", "", "", "", "0", "FALSE"),
           class = c(rep("character", 4), "integer", "logical"),
           edit_color = rep("gray95", 6),
           dirty = rep(FALSE, 6),
           stringsAsFactors = FALSE)


###################################################
### chunk number 222: model
###################################################
#line 4747 "ch-RGtk2.Rnw"
model <- rGtkDataFrame(DF)
view <- gtkTreeView(model)
##
cell_renderer <- gtkCellRendererText()
cell_renderer['background'] <- 'gray80'
view$insertColumnWithAttributes(position = -1,
                                title = "Option",
                                cell = cell_renderer,
                                text = 1 - 1)


###################################################
### chunk number 223: secondColumn
###################################################
#line 4764 "ch-RGtk2.Rnw"
cell_renderer <- gtkCellRendererText()
cell_renderer['editable'] <- TRUE
view$insertColumnWithAttributes(position = -1,
                                title = "Value",
                                cell = cell_renderer,
                                text = 2 - 1,
                                background = 4 - 1
                                )


###################################################
### chunk number 224: editConnect
###################################################
#line 4779 "ch-RGtk2.Rnw"
gSignalConnect(cell_renderer, "edited", 
    function(cell_renderer, path, new.text, user.data) {
      model <- user.data$model
      i <- as.numeric(path) + 1; j <- user.data$column
      model[i,j] <- as(as(new.text, m[i, 'class']), "character")   
      model[i, 'dirty'] <- TRUE                   # mark dirty
      model[i, 'edit_color'] <- 'gray70'          # change color
    }, data=list(model=model, column=2))


###################################################
### chunk number 225: 
###################################################
#line 4791 "ch-RGtk2.Rnw"
window <- gtkWindow(show=FALSE)
window['title'] <- "Option editor"
window$setSizeRequest(300,500)
scrolled_window <- gtkScrolledWindow()
window$add(scrolled_window)
scrolled_window$add(view)
window$show()


###################################################
### chunk number 226: 
###################################################
#line 4820 "ch-RGtk2.Rnw"
require(helpr, quietly=TRUE)
package <- "graphics"; topic <- "title"
rd <- helpr:::parse_help(helpr:::pkg_topic(package, topic), 
                         package = package)
descs <- rd$params$args
names(descs) <- sapply(descs, function(i) i$param)


###################################################
### chunk number 227: 
###################################################
#line 4835 "ch-RGtk2.Rnw"
view["has-tooltip"] <- TRUE
gSignalConnect(view, "query-tooltip", 
       function(view, x, y, key_mode, tooltip, user.data) {
         out <- view$getTooltipContext(x, y, key_mode)
         if(out$retval) {
           model <- w$getModel()
           i <- as.numeric(out$path$toString()) + 1
           val <- model[i, "option"]
           txt <- descs[[val]]$desc
           txt <- gsub("code>","b>", txt)  # no code in Pango
           tooltip$setMarkup(txt)
           TRUE
         } else {
           FALSE                           # no tooltip
         }
       })


###################################################
### chunk number 228: 
###################################################
#line 4879 "ch-RGtk2.Rnw"
cell_renderer <- gtkCellRendererCombo()
model <- rGtkDataFrame(state.name)
cell_renderer['model'] <- model
cell_renderer['text-column'] <- 0
cell_renderer['editable'] <- TRUE                  # needed


###################################################
### chunk number 229: VariableSelectionExample
###################################################
#line 4921 "ch-RGtk2.Rnw"
## Example showing implementation of variable selection widget where two tables show possible selections
## and selection. Similar to SPSS widget
## Illustrates filtered models, icons in view column
library(RGtk2)


###################################################
### chunk number 230: 
###################################################
#line 4944 "ch-RGtk2.Rnw"
DF <- get(data(Cars93, package="MASS"))


###################################################
### chunk number 231: 
###################################################
#line 4961 "ch-RGtk2.Rnw"
library(ProgGUIinR)                     # for make_icon
#source("../ProgGUIInR/R/misc.R")     # for make_icon


###################################################
### chunk number 232: make_icon
###################################################
#line 4966 "ch-RGtk2.Rnw"
make_icon_pixmap <- function(x, ...) {
  require(grid); require(cairoDevice)
  pixmap <- gdkPixmap(drawable = NULL, width = 16, height = 16, 
                      depth = 24)
  asCairoDevice(pixmap)
  grid.newpage()
  grid.draw(make_icon(x))
  dev.off()
  gdkPixbufGetFromDrawable(NULL, pixmap, NULL, 0,0, 0,0, -1,-1)
}


###################################################
### chunk number 233: model
###################################################
#line 4983 "ch-RGtk2.Rnw"
model_df <- data.frame(Variables = I(sort(names(DF))),
                       icon = I(sapply(DF, make_icon_pixmap)),
                       selected = rep(FALSE, ncol(DF)))
model <- rGtkDataFrame(model_df)


###################################################
### chunk number 234: filterModels
###################################################
#line 4993 "ch-RGtk2.Rnw"
selected_filter <- model$filter()
selected_filter$setVisibleColumn(2)
unselected_filter <- model$filter()
unselected_filter$setVisibleFunc(function(model, iter) {
  !model$get(iter, 2)[[1]]
})


###################################################
### chunk number 235: views
###################################################
#line 5008 "ch-RGtk2.Rnw"
views <- list()
views$unselected_view <- gtkTreeView(unselected_filter)
views$selected_view <- gtkTreeView(selected_filter)
##
sapply(views, function(view) {
  selection <- view$getSelection()
  selection$setMode('multiple')
})


###################################################
### chunk number 236: viewColumns
###################################################
#line 5021 "ch-RGtk2.Rnw"
make_view_column <- function() {
  column <- gtkTreeViewColumn()
  column$setTitle("Variable")
  column$packStart(cell_renderer <- gtkCellRendererPixbuf())
  column$addAttribute(cell_renderer, "pixbuf", 1L)
  column$packStart(cell_renderer <- gtkCellRendererText())
  column$addAttribute(cell_renderer, "text", 0L)
  column
}
sapply(views, function(view) 
       view$insertColumn(make_view_column(), 0))


###################################################
### chunk number 237: extendAPI
###################################################
#line 5038 "ch-RGtk2.Rnw"
## add to the gtkTreeView API for convenience
gtkTreeViewSelectedIndices <- function(object) {
  model <- object$getModel()          # Filtered!
  paths <- object$getSelection()$getSelectedRows()$retval
  path_strings <- sapply(paths, function(i) {
    model$convertPathToChildPath(i)$toString()
  })
  if(length(path_strings) == 0)
    integer(0)
  else
    as.numeric(path_strings) + 1 # 1-based
}
## does object have selection?
gtkTreeViewHasSelection <-
  function(obj) length(obj$selectedIndices()) > 0


###################################################
### chunk number 238: buttons
###################################################
#line 5059 "ch-RGtk2.Rnw"
buttons <- list()
buttons$unselect_button <- gtkButton("<")
buttons$select_button <- gtkButton(">")
toggleSelectionOnClick <- function(button, view) {
  gSignalConnect(button, "clicked", function(button) {
    message("clicked")
    ind <- view$selectedIndices()
    model[ind, "selected"] <- !model[ind, "selected"]
  })
}
sapply(1:2, function(i) toggleSelectionOnClick(buttons[[i]], 
                                               views[[3-i]]))


###################################################
### chunk number 239: sensitiveButtons
###################################################
#line 5076 "ch-RGtk2.Rnw"
sapply(buttons, gtkWidgetSetSensitive, FALSE)
trackSelection <- function(button, view) {
  gSignalConnect(view$getSelection(), "changed", 
     function(x) button['sensitive'] <- view$hasSelection())
}
sapply(1:2, function(i) trackSelection(buttons[[i]], 
                                       views[[3-i]]))


###################################################
### chunk number 240: guiLayout
###################################################
#line 5089 "ch-RGtk2.Rnw"
window <- gtkWindow(show=FALSE)
window$setTitle("Select variables example")
window$setDefaultSize(600, 400)
hbox <- gtkHBox()
window$add(hbox)
## scrollwindows
scrolls <- list()
scrolls$unselected_scroll <- gtkScrolledWindow()
scrolls$selected_scroll <- gtkScrolledWindow()
mapply(gtkContainerAdd, object = scrolls, widget = views)
mapply(gtkScrolledWindowSetPolicy, scrolls, 
       "automatic", "automatic")
## buttons
button_box <- gtkVBox()
centered_box <- gtkVBox()
button_box$packStart(centered_box, expand = TRUE, fill = FALSE)
centered_box$setSpacing(12)
sapply(buttons, centered_box$packStart, expand = FALSE)
##
hbox$packStart(scrolls$unselected_scroll, expand = TRUE)
hbox$packStart(button_box, expand = FALSE)
hbox$packStart(scrolls$selected_scroll, expand = TRUE)


###################################################
### chunk number 241: packButtons
###################################################
#line 5115 "ch-RGtk2.Rnw"
window$show()


###################################################
### chunk number 242: cellRendererToggle
###################################################
#line 5139 "ch-RGtk2.Rnw"
cell_renderer <- gtkCellRendererToggle()
cell_renderer['activatable'] <- TRUE   # cell can be activated
cell_renderer['active'] <- TRUE
gSignalConnect(cell_renderer, "toggled", function(w, path) {
  model$active[as.numeric(path) + 1] <- w['active']
})


###################################################
### chunk number 243: 
###################################################
#line 5165 "ch-RGtk2.Rnw"
## example showing how to add a toggle button on left of data display
library(RGtk2)


###################################################
### chunk number 244: FixACRANforSweave
###################################################
#line 5173 "ch-RGtk2.Rnw"
repos <- getOption("repos")
repos["CRAN"] <- "http://streaming.stat.iastate.edu/CRAN"
options(repos = repos)


###################################################
### chunk number 245: getUpgradablePackages
###################################################
#line 5178 "ch-RGtk2.Rnw"
old_packages <- 
  old.packages()[,c("Package", "Installed", "ReposVer")]
DF <- as.data.frame(old_packages)


###################################################
### chunk number 246: 
###################################################
#line 5187 "ch-RGtk2.Rnw"
doUpdate <- function(old_packages) 
  install.packages(old_packages$Package)


###################################################
### chunk number 247: 
###################################################
#line 5201 "ch-RGtk2.Rnw"
model <- rGtkDataFrame(cbind(DF, .toggle=rep(FALSE, nrow(DF))))


###################################################
### chunk number 248: 
###################################################
#line 5207 "ch-RGtk2.Rnw"
view <- gtkTreeView()
# add toggle
cell_renderer <- gtkCellRendererToggle()
view$insertColumnWithAttributes(0, "", cell_renderer, active = ncol(DF))
cell_renderer['activatable'] <- TRUE
gSignalConnect(cell_renderer, "toggled", 
               function(cell_renderer, path, user.data) {
                 view <- user.data
                 row <- as.numeric(path) + 1
                 model <- view$getModel()
                 n <- dim(model)[2]
                 model[row, n] <- !model[row, n]
               }, data=view)


###################################################
### chunk number 249: 
###################################################
#line 5224 "ch-RGtk2.Rnw"
mapply(view$insertColumnWithAttributes, -1, colnames(DF), 
       list(gtkCellRendererText()), text = seq_along(DF) -1L)


###################################################
### chunk number 250: 
###################################################
#line 5230 "ch-RGtk2.Rnw"
view$setModel(model)


###################################################
### chunk number 251: 
###################################################
#line 5239 "ch-RGtk2.Rnw"
button <- gtkButton("Update packages")
gSignalConnect(button, "clicked", function(button, data) {
  view <- data
  model <- view$getModel()
  old_packages <- 
    model[model[, ncol(model)], -ncol(model), drop = FALSE]
  doUpdate(old_packages)
}, data=view)


###################################################
### chunk number 252: 
###################################################
#line 5253 "ch-RGtk2.Rnw"
window <- gtkWindow(show = FALSE)
window$setTitle("Installed packages that need upgrading")
window$setSizeRequest(300, 300)

vbox <- gtkVBox(); window$add(vbox)
scrolled_window <- gtkScrolledWindow()
vbox$packStart(scrolled_window, expand = TRUE, fill = TRUE)

scrolled_window$add(view)
scrolled_window$setPolicy("automatic", "automatic")
vbox$packStart(button, expand = FALSE)
window$show()


###################################################
### chunk number 253: comboEditor
###################################################
#line 5281 "ch-RGtk2.Rnw"
cell_renderer <- gtkCellRendererProgress()
cell_renderer["value"] <- 50


###################################################
### chunk number 254: 
###################################################
#line 5319 "ch-RGtk2.Rnw"
func <- function(column, cell_renderer, model, iter, data) {
  val <- model$getValue(iter, 0)$value
  f_val <- sprintf("%.3f", val)
  cell_renderer['text'] <- f_val
  cell_renderer['xalign'] <- 1
}


###################################################
### chunk number 255: 
###################################################
#line 5330 "ch-RGtk2.Rnw"
view <- gtkTreeView(rGtkDataFrame(data.frame(rnorm(100))))
cell_renderer <- gtkCellRendererText()
view$insertColumnWithAttributes(0, "numbers", cell_renderer, 
                                text = 0)
column <- view$getColumn(0)
column$setCellDataFunc(cell_renderer, func)


###################################################
### chunk number 256: 
###################################################
#line 5390 "ch-RGtk2.Rnw"
model <- gtkTreeStore("gchararray")
by(Cars93, Cars93$Manufacturer, function(df) {
  parent_iter <- model$append()
  model$setValue(parent_iter$iter, column = 0, value = 
                 df$Manufacturer[1])
  sapply(df$Model, function(car_model) {
    child_iter <- model$append(parent = parent_iter$iter)
    if (is.null(child_iter$retval)) 
      model$setValue(child_iter$iter, column = 0, 
                     value = car_model)
  })
})


###################################################
### chunk number 257: 
###################################################
#line 5405 "ch-RGtk2.Rnw"
iter <- model$getIterFromString("0:0")
model$getValue(iter$iter, column = 0)$value


###################################################
### chunk number 258: rgtk2-mvc-tree-traverse
###################################################
#line 5435 "ch-RGtk2.Rnw"
iter <- model$getIterFirst()
models <- NULL
while(iter$retval) {
  child_iter <- model$iterChildren(iter$iter)
  while(child_iter$retval) {
    models <- c(models, model$get(child_iter$iter, 0)[[1]])
    child_iter$retval <- model$iterNext(child_iter$iter)
  }
  iter$retval <- model$iterNext(iter$iter)
}


###################################################
### chunk number 259: notShown
###################################################
#line 5501 "ch-RGtk2.Rnw"
## define tstore, but aslo in earlier example so not shown
data(Cars93, package="MASS")
model <- gtkTreeStore("gchararray")
Manufacturers <- Cars93$Manufacturer
Makes <- split(Cars93[,"Model"], Manufacturers)
for(i in unique(Manufacturers)) {
  piter <- model$append()              # parent
  model$setValue(piter$iter, column=0, value=i)
  for(j in Makes[[i]]) { 
    sibiter <- model$append(parent=piter$iter) # child
    if(is.null(sibiter$retval)) 
      model$setValue(sibiter$iter,column=0, value=j)
  }
}


###################################################
### chunk number 260: makeView
###################################################
#line 5519 "ch-RGtk2.Rnw"
view <- gtkTreeView()
view$insertColumnWithAttributes(0, "Make", 
           gtkCellRendererText(), text = 0)
view$setModel(model)


###################################################
### chunk number 261: makeGUI
###################################################
#line 5526 "ch-RGtk2.Rnw"
w <- gtkWindow(show=FALSE)
w['title'] <- "Example of changing models"
sw <- gtkScrolledWindow()
sw$add(view)
w$add(sw)
w$show()


###################################################
### chunk number 262: 
###################################################
#line 5538 "ch-RGtk2.Rnw"
model <- rGtkDataFrame(Cars93[,"Model", drop=FALSE])
view$setModel(model)


###################################################
### chunk number 263: 
###################################################
#line 5582 "ch-RGtk2.Rnw"
## a combobox that learns as you go.
## no tooltip per item, but here we add as detail
library(RGtk2)


###################################################
### chunk number 264: 
###################################################
#line 5595 "ch-RGtk2.Rnw"
model <- rGtkDataFrame(data.frame(filename = character(0), 
                                  visits = character(0), 
                                  nvisits = integer(0), 
                                  stringsAsFactors = FALSE))


###################################################
### chunk number 265: 
###################################################
#line 5613 "ch-RGtk2.Rnw"
combo_box <- gtkComboBoxEntryNewWithModel(model, 
                                          text.column = 0)


###################################################
### chunk number 266: ConfigureCellRenderers
###################################################
#line 5624 "ch-RGtk2.Rnw"
cell_renderer <- gtkCellRendererText()
combo_box$packStart(cell_renderer)
combo_box$addAttribute(cell_renderer, "text", 1)
cell_renderer['foreground'] <- "gray50"
cell_renderer['ellipsize'] <- "end"
cell_renderer['style'] <- "italic"
cell_renderer['alignment'] <- "right"


###################################################
### chunk number 267: helperFunction2
###################################################
#line 5656 "ch-RGtk2.Rnw"
callHelpFunction <- function(combo_box, value) {
  model <- combo_box$getModel()
  ind <- match(value, model[,1,drop=TRUE])
  nvisits <- model[ind, "nvisits"] <- model[ind, "nvisits"] + 1
  model[ind, "visits"] <- 
    sprintf(ngettext(nvisits, "%s visit", "%s visits"), nvisits)
  ## select for easier editing
  combo_box$getChild()$selectRegion(start = 0, end = -1)
  help(value)
}
gSignalConnect(combo_box, "changed", 
               f = function(combo_box, ...) {
                 if(combo_box$getActive() >= 0) {
                   value <- combo_box$getActiveText()
                   callHelpFunction(combo_box, value)
                 }
               })


###################################################
### chunk number 268: 
###################################################
#line 5679 "ch-RGtk2.Rnw"
gSignalConnect(combo_box$getChild(), "activate", 
       f = function(combo_box, entry, ...) {
         value <- entry$getText()
         if(!any(value == combo_box$getModel()[,1,drop=TRUE])) {
           model <- combo_box$getModel()
           tmp <- data.frame(filename = val, visits = "", 
                             nvisits = 0, 
                             stringsAsFactors = FALSE)
           model$appendRows(tmp)
         }
         callHelpFunction(combo_box, value)
       }, data = combo_box, user.data.first = TRUE)


###################################################
### chunk number 269: Layout
###################################################
#line 5695 "ch-RGtk2.Rnw"
window <- gtkWindow(show = FALSE)
window['border-width'] <- 15
hbox <- gtkHBox(); window$add(hbox)
hbox$packStart(gtkLabel("Help on:"))
hbox$packStart(combo_box, expand = TRUE, fill = TRUE)
#
window$show()


###################################################
### chunk number 270: 
###################################################
#line 5769 "ch-RGtk2.Rnw"
require(RGtk2)


###################################################
### chunk number 271: AppendWords
###################################################
#line 5775 "ch-RGtk2.Rnw"
entry <- gtkEntry()
completion <- gtkEntryCompletion()
entry$setCompletion(completion)


###################################################
### chunk number 272: SetCompletion
###################################################
#line 5785 "ch-RGtk2.Rnw"
model <- rGtkDataFrame(state.name)
completion$setModel(model)
completion$setTextColumn(0)
completion['inline-completion'] <- TRUE
completion['popup-single-match'] <- FALSE


###################################################
### chunk number 273: SetMatchFunc
###################################################
#line 5795 "ch-RGtk2.Rnw"
matchAnywhere <- function(completion, key, iter, user.data) {
  model <- completion$getModel()
  row_value <- model$getValue(iter, 0)$value
  key <- comp$getEntry()$getText() # for case sensitivity
  grepl(str, row_value)
}
completion$setMatchFunc(matchAnywhere)


###################################################
### chunk number 274: notShown
###################################################
#line 5808 "ch-RGtk2.Rnw"
## Our basic GUI is basic:
w <- gtkWindow(show=FALSE)
w$setTitle("Test of entry with completion")
w$add(entry)
w$showAll()


###################################################
### chunk number 275: gtk-mvc-entry-buffer
###################################################
#line 5828 "ch-RGtk2.Rnw"
buffer <- gtkEntryBuffer()        
entry1 <- gtkEntry(buffer = buffer)
entry2 <- gtkEntry(buffer = buffer)
entry1$setText("echo")
entry2$getText()


###################################################
### chunk number 276: 
###################################################
#line 5860 "ch-RGtk2.Rnw"
view <- gtkTextView()
scrolled_window <- gtkScrolledWindow()
scrolled_window$add(view)
scrolled_window$setPolicy("automatic", "automatic")
##
window <- gtkWindow()
window['border-width'] <- 15
window$add(scrolled_window)


###################################################
### chunk number 277: setText
###################################################
#line 5873 "ch-RGtk2.Rnw"
buffer <- view$getBuffer()
buffer$setText("Lorem ipsum dolor sit amet ...")


###################################################
### chunk number 278: bufferGetText
###################################################
#line 5881 "ch-RGtk2.Rnw"
start <- buffer$getStartIter()$iter    
end <- buffer$getEndIter()$iter
buffer$getText(start, end)


###################################################
### chunk number 279: gtk-mvc-text-noneditable
###################################################
#line 5903 "ch-RGtk2.Rnw"
view['editable'] <- FALSE
view['cursor-visible'] <- FALSE


###################################################
### chunk number 280: gtk-mvc-buffer-iter-bounds
###################################################
#line 5982 "ch-RGtk2.Rnw"
bounds <- buffer$getBounds()
bounds


###################################################
### chunk number 281: gtk-mvc-buffer-iter-atLineOffset
###################################################
#line 6005 "ch-RGtk2.Rnw"
iter <- buffer$getIterAtLineOffset(0, 6)
iter$iter$getChar()                     # unicode, not text


###################################################
### chunk number 282: gtk-mvc-buffer-iter-getChar
###################################################
#line 6021 "ch-RGtk2.Rnw"
bounds$start$getChar()                  # unicode


###################################################
### chunk number 283: gtk-mvc-buffer-iter-getText
###################################################
#line 6028 "ch-RGtk2.Rnw"
bounds$start$getText(bounds$end)


###################################################
### chunk number 284: gtk-mvc-buffer-iter-insert
###################################################
#line 6034 "ch-RGtk2.Rnw"
buffer$insert(bounds$start, "prefix")


###################################################
### chunk number 285: 
###################################################
#line 6061 "ch-RGtk2.Rnw"
## setup example, not shown
w <- gtkWindow()
view <- gtkTextView()
w$add(view)


###################################################
### chunk number 286: FindWordAtMouseClick
###################################################
#line 6073 "ch-RGtk2.Rnw"
gSignalConnect(view, "button-press-event", 
       f=function(view, event, ...) {
         start <- view$getIterAtLocation(event$getX(), 
                                         event$getY())$iter
         end <- start$copy()
         start$backwardWordStart()
         end$forwardWordEnd()
         val <- start$getText(end)
         print(val)
         return(FALSE) # call next handler
       })


###################################################
### chunk number 287: gtk-mvc-text-mark-insert
###################################################
#line 6098 "ch-RGtk2.Rnw"
insert <- buffer$getMark("insert")


###################################################
### chunk number 288: gtk-mvc-text-mark-getIter
###################################################
#line 6103 "ch-RGtk2.Rnw"
insert_iter <- buffer$getIterAtMark(insert)$iter
bounds$start$getText(insert_iter)


###################################################
### chunk number 289: gtk-mvc-text-mark-gravity
###################################################
#line 6115 "ch-RGtk2.Rnw"
insert_iter$getOffset()
buffer$insert(insert_iter, "at insertion point")
buffer$getIterAtMark(insert)$iter$getOffset()


###################################################
### chunk number 290: gtk-mvc-text-mark-construct
###################################################
#line 6123 "ch-RGtk2.Rnw"
mark <- buffer$createMark(mark.name = "start", 
                          where = buffer$getStartIter()$iter, 
                          left.gravity = TRUE)


###################################################
### chunk number 291: gtk-mvc-text-tags-create
###################################################
#line 6141 "ch-RGtk2.Rnw"
tag_bold <- buffer$createTag(tag.name="bold", 
                             weight=PangoWeight["bold"])
tag_emph <- buffer$createTag(tag.name="emph", 
                             style=PangoStyle["italic"])
tag_large <- buffer$createTag(tag.name="large", 
                              font="Serif normal 18")


###################################################
### chunk number 292: gtk-mvc-text-tags-apply
###################################################
#line 6151 "ch-RGtk2.Rnw"
iter <- buffer$getBounds()
buffer$applyTag(tag_bold, iter$start, iter$end) # iters update
buffer$applyTagByName("emph", iter$start, iter$end)


###################################################
### chunk number 293: gtk-mvc-text-selectRange
###################################################
#line 6165 "ch-RGtk2.Rnw"
start_iter <- buffer$getStartIter()$iter
end_iter <- start_iter$copy(); end_iter$forwardWordEnd()
buffer$selectRange(start_iter, end_iter)


###################################################
### chunk number 294: gtk-mvc-text-clipboard-get
###################################################
#line 6176 "ch-RGtk2.Rnw"
clipboard <- gtkClipboardGet()


###################################################
### chunk number 295: gtk-mvc-text-clipboard-copy-paste
###################################################
#line 6182 "ch-RGtk2.Rnw"
buffer$copyClipboard(clipboard)
buffer$pasteClipboard(clipboard, 
            override.location = buffer$getEndIter()$iter, 
            default.editable = TRUE)


###################################################
### chunk number 296: gtk-mvc-text-anchor
###################################################
#line 6210 "ch-RGtk2.Rnw"
anchor <- buffer$createChildAnchor(buffer$getEndIter()$iter)


###################################################
### chunk number 297: gtk-mvc-text-addChild
###################################################
#line 6216 "ch-RGtk2.Rnw"
button <- gtkButton("click me")
view$addChildAtAnchor(button, anchor)


###################################################
### chunk number 298: 
###################################################
#line 6234 "ch-RGtk2.Rnw"
## make a *basic* terminal in RGtk2
library(RGtk2)


###################################################
### chunk number 299: TextViewWidget
###################################################
#line 6241 "ch-RGtk2.Rnw"
view <- gtkTextView()
buffer <- view$getBuffer()
font <- pangoFontDescriptionFromString("Monospace")
view$modifyFont(font)                     # widget wide


###################################################
### chunk number 300: 
###################################################
#line 6251 "ch-RGtk2.Rnw"
buffer$createTag(tag.name = "cmdInput")
buffer$createTag(tag.name = "cmdOutput", 
                 weight = PangoWeight["bold"])
buffer$createTag(tag.name = "cmdError", 
       weight = PangoStyle["italic"], foreground = "red")
buffer$createTag(tag.name = "uneditable", editable = FALSE)


###################################################
### chunk number 301: 
###################################################
#line 6262 "ch-RGtk2.Rnw"
startCmd <- buffer$createMark("startCmd", 
                              buffer$getStartIter()$iter, 
                              left.gravity = TRUE)
bufferEnd <- buffer$createMark("bufferEnd", 
                               buffer$getEndIter()$iter)


###################################################
### chunk number 302: 
###################################################
#line 6274 "ch-RGtk2.Rnw"
addPrompt <- function(obj, prompt = c("prompt", "continue"),
                      set_mark = TRUE) 
{
  prompt <- match.arg(prompt)
  prompt <- getOption(prompt)
  
  end_iter <- obj$getEndIter()
  obj$insert(end_iter$iter, prompt)
  if(set_mark)
    obj$moveMarkByName("startCmd", end_iter$iter)
  obj$applyTagByName("uneditable", obj$getStartIter()$iter, 
                     end_iter$iter)
}
addPrompt(buffer) ## place an initial prompt


###################################################
### chunk number 303: addOutput
###################################################
#line 6293 "ch-RGtk2.Rnw"
addOutput <- function(obj, output, tag_name = "cmdOutput") {
  end_iter <- obj$getEndIter()
  if(length(output) > 0)  
    sapply(output, function(i)  {
      obj$insertWithTagsByName(end_iter$iter, i, tag_name)
      obj$insert(end_iter$iter, "\n", len=-1)
    })
}


###################################################
### chunk number 304: 
###################################################
#line 6310 "ch-RGtk2.Rnw"
findCMD <- function(obj) {
  end_iter <- obj$getEndIter()
  start_iter <- obj$getIterAtMark(startCmd)
  cmd <- obj$getText(start_iter$iter, end_iter$iter, TRUE)
  regex <- paste("\n[", getOption("continue"), "] ", sep = "")
  cmd <- unlist(strsplit(cmd, regex))
  cmd
}


###################################################
### chunk number 305: evalCmd
###################################################
#line 6327 "ch-RGtk2.Rnw"
require(evaluate)
evalCMD <- function(view, cmd) {
  buffer <- view$getBuffer()
  out <- try(evaluate:::evaluate(cmd, .GlobalEnv), 
             silent = TRUE)
  
  if(inherits(out, "try-error")) {
    ## parse error
    addOutput(buffer, out, "cmdError")
  } else if(inherits(out[[2]], "error")) {
    if(grepl("end", out[[2]])) {        # a hack here
      addPrompt(buffer, "continue", setMark = FALSE)
      return()
    } else {
      addOutput(buffer, out[[2]]$message, "cmdError")
    }
  } else {
    addOutput(buffer, out[[2]], "cmdOutput")
  }
  addPrompt(buffer, "prompt", setMark = TRUE)
}


###################################################
### chunk number 306: connectBinding
###################################################
#line 6354 "ch-RGtk2.Rnw"
gSignalConnect(view, "key-release-event", 
               f=function(view, event) {
                 buffer <- view$getBuffer()
                 keyval <- event$getKeyval()
                 if(keyval == GDK_Return) {
                   cmd <- findCMD(buffer)
                   if(length(cmd) && nchar(cmd) > 0)
                     evalCMD(view, cmd)
                 }
               })


###################################################
### chunk number 307: 
###################################################
#line 6374 "ch-RGtk2.Rnw"
scrollViewport <- function(view, ...) {
  view$scrollToMark(bufferEnd, within.margin = 0)
  return(FALSE)
}
gSignalConnect(buffer, "changed", scrollViewport, data = view, 
               after = TRUE, user.data.first = TRUE)


###################################################
### chunk number 308: makeGUI
###################################################
#line 6383 "ch-RGtk2.Rnw"
## scroll window
sw <- gtkScrolledWindow()
sw$setPolicy("automatic", "automatic")
sw$add(view)

## top-level window
w <- gtkWindow(show=FALSE)
w$setTitle("A terminal")
w$add(sw)
w$setSizeRequest(400,200)
w$showAll()


###################################################
### chunk number 309: 
###################################################
#line 6399 "ch-RGtk2.Rnw"
## History features
## This is not illustrated in text, but is added here to illustrate how this might be implemented
## The major issue with this example is we can't trap the return or arrow keys before they move 
## the cursor so any thing ends up looking jerky

## store the stack and a pointer to the current command with the text buffer
buffer$setData("history", list())
buffer$setData("ptr", 0)


## replace cmd with that in str.
replaceCMD <- function(obj, str) {
  end_iter <- obj$getEndIter()
  start_iter <- obj$getIterAtMark(startCmd)
  obj$delete(start_iter$iter, end_iter$iter)
  end_iter <- obj$getEndIter()
  obj$insertWithTagsByName(end_iter$iter, str[1], "cmdInput")
  if(length(str) > 1) {
    for(i in str[-1]) {
      obj$insert(end_iter$iter, "\n")
      obj$insertWithTagsByName(end_iter$iter, getOption("continue"), "cmdInput")
      obj$insertWithTagsByName(end_iter$iter, i, "cmdInput")
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
ID <- gSignalConnect(view, "key-release-event", f=function(w, e, data) {
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
### chunk number 310: 
###################################################
#line 6488 "ch-RGtk2.Rnw"
require(RGtk2)


###################################################
### chunk number 311: rgtk2-menus-actions-constructor
###################################################
#line 6514 "ch-RGtk2.Rnw"
action <- gtkAction(name = "ok", label = "_Ok", 
             tooltip = "An OK button", stock.id = "gtk-ok")


###################################################
### chunk number 312: rgtk2-menus-actions-activate
###################################################
#line 6525 "ch-RGtk2.Rnw"
gSignalConnect(action, "activate", 
               f = function(action, data) {
                 print(action$getName())
               })


###################################################
### chunk number 313: ConnectAction
###################################################
#line 6547 "ch-RGtk2.Rnw"
button <- gtkButton()
button$setRelatedAction(action)


###################################################
### chunk number 314: rgtk2-menus-action-group
###################################################
#line 6563 "ch-RGtk2.Rnw"
group <- gtkActionGroup()
group$addActionWithAccel(action, "<control>O")


###################################################
### chunk number 315: rgtk2-menus-toggle-action
###################################################
#line 6580 "ch-RGtk2.Rnw"
full_screen_action <- 
  gtkToggleAction("fullscreen", "Full screen", 
                  "Toggle full screen",
                  stock.id = "gtk-fullscreen")
gSignalConnect(full_screen_action, "toggled", function(action) {
  if(full_screen_action['active'])
    window$fullscreen()
  else
    window$unfullscreen()
})


###################################################
### chunk number 316: showGUI
###################################################
#line 6596 "ch-RGtk2.Rnw"
window <- gtkWindow(show=FALSE)
window['title'] <- "Action with button example"
window$add(button)
window$showAll()


###################################################
### chunk number 317: rgtk2-menus-menubar
###################################################
#line 6621 "ch-RGtk2.Rnw"
menubar <- gtkMenuBar()


###################################################
### chunk number 318: rgtk2-menus-menu
###################################################
#line 6633 "ch-RGtk2.Rnw"
file_menu <- gtkMenu()


###################################################
### chunk number 319: rgtk2-menus-menuitem
###################################################
#line 6639 "ch-RGtk2.Rnw"
file_item <- gtkMenuItemNewWithMnemonic(label = "_File")
file_item$setSubmenu(file_menu)


###################################################
### chunk number 320: rgtk2-menus-append
###################################################
#line 6647 "ch-RGtk2.Rnw"
menubar$append(file_item)


###################################################
### chunk number 321: rgtk2-menus-open
###################################################
#line 6660 "ch-RGtk2.Rnw"
open_item <- gtkMenuItemNewWithMnemonic("_Open")


###################################################
### chunk number 322: rgtk2-menus-open-activate
###################################################
#line 6666 "ch-RGtk2.Rnw"
gSignalConnect(open_item, "activate", function(item) {
  file.show(file.choose())
})


###################################################
### chunk number 323: rgtk2-menus-append-item
###################################################
#line 6673 "ch-RGtk2.Rnw"
file_menu$append(open_item)


###################################################
### chunk number 324: rgtk2-menus-save-action
###################################################
#line 6680 "ch-RGtk2.Rnw"
save_action <- 
  gtkAction("save", "Save", "Save object", "gtk-save")


###################################################
### chunk number 325: rgtk2-menus-save-item
###################################################
#line 6687 "ch-RGtk2.Rnw"
save_item <- save_action$createMenuItem()
file_menu$append(save_item)


###################################################
### chunk number 326: rgtk2-menus-separator
###################################################
#line 6696 "ch-RGtk2.Rnw"
file_menu$append(gtkSeparatorMenuItem())


###################################################
### chunk number 327: rgtk2-menus-toggle-item
###################################################
#line 6702 "ch-RGtk2.Rnw"
auto_save_action <- gtkToggleAction("autosave", "Autosave", 
                                    "Enable autosave")
auto_save_item <- auto_save_action$createMenuItem()
file_menu$append(auto_save_item)


###################################################
### chunk number 328: rgtk2-menus-window
###################################################
#line 6710 "ch-RGtk2.Rnw"
main_mindow <- gtkWindow()
vbox <- gtkVBox()
main_mindow$add(vbox)
vbox$packStart(menubar, FALSE, FALSE)


###################################################
### chunk number 329: "menubar-ex"
###################################################
#line 6723 "ch-RGtk2.Rnw"
popup <- gtkMenu()                       # top level
popup$append(gtkMenuItem("cut"))
popup$append(gtkMenuItem("copy"))
popup$append(gtkSeparatorMenuItem())
popup$append(gtkMenuItem("paste"))


###################################################
### chunk number 330: rgtk2-menus-popup-button
###################################################
#line 6733 "ch-RGtk2.Rnw"
button <- gtkButton("Click me with right mouse button")
window <- gtkWindow(); window$setTitle("Popup menu example")
window$add(button)


###################################################
### chunk number 331: 
###################################################
#line 6741 "ch-RGtk2.Rnw"
gSignalConnect(button, "button-press-event",
       f = function(button, event, menu) {
         if(event$getButton() == 3 ||
            (event$getButton() == 1 && # a mac
             event$getState() == GdkModifierType['control-mask'])) 
           gtkMenuPopup(menu, 
                        button = event$getButton(),
                        activate.time = event$getTime())
         return(FALSE)
       }, data = popup)


###################################################
### chunk number 332: 
###################################################
#line 6762 "ch-RGtk2.Rnw"
sapply(popup$getChildren(), function(child) {
  if(!inherits(child, "GtkSeparatorMenuItem")) # skip these
    gSignalConnect(child, "activate",
           f = function(child, data) message("replace me"))
})


###################################################
### chunk number 333: rgtk2-menus-toolbar-construct
###################################################
#line 6783 "ch-RGtk2.Rnw"
toolbar <- gtkToolbar()


###################################################
### chunk number 334: rgtk2-menus-toolbar-open-item
###################################################
#line 6792 "ch-RGtk2.Rnw"
open_button <- gtkToolButton(stock.id = "gtk-open") 


###################################################
### chunk number 335: rgtk2-menus-toolbar-add
###################################################
#line 6801 "ch-RGtk2.Rnw"
toolbar$add(open_button)


###################################################
### chunk number 336: rgtk2-menus-toolbar-save-item
###################################################
#line 6812 "ch-RGtk2.Rnw"
save_button <- save_action$createToolItem()
toolbar$add(save_button)


###################################################
### chunk number 337: rgtk2-menus-toolbar-separator
###################################################
#line 6821 "ch-RGtk2.Rnw"
toolbar$add(gtkSeparatorToolItem())


###################################################
### chunk number 338: rgtk2-menus-toolbar-toggle
###################################################
#line 6826 "ch-RGtk2.Rnw"
full_screen_button <- full_screen_action$createToolItem()
toolbar$add(full_screen_button)


###################################################
### chunk number 339: rgtk2-menus-toolbar-style eval=FALSE
###################################################
## #line 6842 "ch-RGtk2.Rnw"
## toolbar$setStyle("icon")


###################################################
### chunk number 340: rgtk2-menus-toolbar-is-important
###################################################
#line 6851 "ch-RGtk2.Rnw"
full_screen_action["is-important"] <- TRUE


###################################################
### chunk number 341: rgtk2-menus-toolbar-expand eval=FALSE
###################################################
## #line 6860 "ch-RGtk2.Rnw"
## expander <- gtkSeparatorToolItem()
## expander["draw"] <- FALSE
## toolbar$add(expander)
## toolbar$childSet(expander, expand = TRUE)


###################################################
### chunk number 342: rgtk2-menus-toolbar-help
###################################################
#line 6871 "ch-RGtk2.Rnw"
help_action <- gtkAction("help", "Help", "Get help", "gtk-help")
toolbar$add(help_action$createToolItem())


###################################################
### chunk number 343: rgtk2-menus-toolbar-place
###################################################
#line 6878 "ch-RGtk2.Rnw"
vbox$packStart(toolbar, FALSE, FALSE)


###################################################
### chunk number 344: rgtk2-mennus-toolbar-color-button
###################################################
#line 6896 "ch-RGtk2.Rnw"
gdk_color <- gdkColorParse(palette()[1])$color
color_button <- gtkColorButton(gdk_color)


###################################################
### chunk number 345: rgtk2-menus-toolbar-color-menu
###################################################
#line 6907 "ch-RGtk2.Rnw"
colorMenuItem <- function(color) {
  drawing_area <- gtkDrawingArea()
  drawing_area$setSizeRequest(20, 20)
  drawing_area$modifyBg("normal", color)
  image_item <- gtkImageMenuItem(color)
  image_item$setImage(drawing_area)
  image_item
}
color_items <- sapply(palette(), colorMenuItem)
color_menu <- gtkMenu()
for (item in color_items)
  color_menu$append(item)


###################################################
### chunk number 346: rgtk2-menus-toolbar-color-cb
###################################################
#line 6927 "ch-RGtk2.Rnw"
colorMenuItemActivated <- function(item) {
  color <- gdkColorParse(item$getLabel())$color
  color_button$setColor(color)
}
sapply(color_items, gSignalConnect, "activate", 
       colorMenuItemActivated)


###################################################
### chunk number 347: rgtk2-menus-toolbar-menu
###################################################
#line 6938 "ch-RGtk2.Rnw"
menu_button <- gtkMenuToolButton(color_button, "Color")
menu_button$setMenu(color_menu)
toolbar$add(menu_button)


###################################################
### chunk number 348: rgtk2-menus-tool-item-group eval=FALSE
###################################################
## #line 6963 "ch-RGtk2.Rnw"
## file_group <- gtkToolItemGroup("File")
## file_group$add(gtkToolButton(stock.id = "gtk-open"))
## file_group$add(save_action$createToolItem())
## help_group <- gtkToolItemGroup("Help")
## help_group$add(help_action$createToolItem())


###################################################
### chunk number 349: rgtk2-menus-tool-palette eval=FALSE
###################################################
## #line 6973 "ch-RGtk2.Rnw"
## palette <- gtkToolPalette()
## palette$add(file_group)
## palette$add(help_group)


###################################################
### chunk number 350: rgtk2-menus-tool-palette-collapse eval=FALSE
###################################################
## #line 6980 "ch-RGtk2.Rnw"
## help_group$setCollapsed(TRUE)


###################################################
### chunk number 351: gtk-app-status-bar
###################################################
#line 7010 "ch-RGtk2.Rnw"
statusbar <- gtkStatusbar()
io_id <- statusbar$getContextId("I/O")
statusbar$push(io_id, "Incomplete final line")
## ...
statusbar$pop(io_id)


###################################################
### chunk number 352: 
###################################################
#line 7031 "ch-RGtk2.Rnw"
info_bar <- gtkInfoBar(show=FALSE)
info_bar$setNoShowAll(TRUE)


###################################################
### chunk number 353: 
###################################################
#line 7042 "ch-RGtk2.Rnw"
label <- gtkLabel("Warning, Warning ....")
info_bar$setMessageType("warning")            
info_bar$getContentArea()$add(label)


###################################################
### chunk number 354: 
###################################################
#line 7049 "ch-RGtk2.Rnw"
info_bar$addButton(button.text = "gtk-ok",
                   response.id = GtkResponseType['ok'])


###################################################
### chunk number 355: 
###################################################
#line 7058 "ch-RGtk2.Rnw"
gSignalConnect(info_bar, "response", 
               function(info_bar, resp.id) info_bar$hide())


###################################################
### chunk number 356: addToWinodw
###################################################
#line 7064 "ch-RGtk2.Rnw"
vbox$packStart(info_bar, expand = FALSE)
info_bar$show()


###################################################
### chunk number 357: helperFUnction
###################################################
#line 7108 "ch-RGtk2.Rnw"
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
#line 7125 "ch-RGtk2.Rnw"
## Stub UI Manager instance for use with examples
uimanager <- gtkUIManager()


###################################################
### chunk number 359: ui-xml
###################################################
#line 7135 "ch-RGtk2.Rnw"
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
#line 7176 "ch-RGtk2.Rnw"
id <- uimanager$addUiFromString(ui.xml)


###################################################
### chunk number 361: 
###################################################
#line 7184 "ch-RGtk2.Rnw"
fun <- function(...) {}


###################################################
### chunk number 362: 
###################################################
#line 7189 "ch-RGtk2.Rnw"
file_list <- 
  list(## name, ID, label, accelerator, tooltip, callback
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
#line 7214 "ch-RGtk2.Rnw"
action_group <- gtkActionGroup("FileGroup")
action_group$addActions(file_list)


###################################################
### chunk number 364: 
###################################################
#line 7220 "ch-RGtk2.Rnw"
uimanager$insertActionGroup(action_group, 0)


###################################################
### chunk number 365: GUILayout eval=FALSE
###################################################
## #line 7233 "ch-RGtk2.Rnw"
## window <- gtkWindow(show = FALSE)
## ##
## vbox <- gtkVBox()
## window$add(vbox)
## ##
## menubar <- uimanager$getWidget("/menubar")
## vbox$packStart(menubar, FALSE)
## toolbar <- uimanager$getWidget("/toolbar")
## vbox$packStart(toolbar, FALSE)
## ## ...


###################################################
### chunk number 366:  eval=FALSE
###################################################
## #line 7260 "ch-RGtk2.Rnw"
## window$addAccelGroup(uimanager$getAccelGroup())


###################################################
### chunk number 367: 
###################################################
#line 7282 "ch-RGtk2.Rnw"
Command <- setRefClass("Command",
                       fields = list(
                         receiver="ANY",
                         meth="character",
                         params="list",
                         old_params="list"
                         ))


###################################################
### chunk number 368: 
###################################################
#line 7297 "ch-RGtk2.Rnw"
Command$methods(
        initialize = function(receiver, meth, ...) {
          .params <- list(...)
          initFields(receiver = receiver, meth = meth, 
                     params = .params, old_params = .params)
          callSuper()
        },
        execute = function(params) {
          do.call(call_meth(meth, receiver), params)
        })


###################################################
### chunk number 369: 
###################################################
#line 7314 "ch-RGtk2.Rnw"
Command$methods(
                do = function() {
                  out <- execute(params)
                  old_params$value <<- out
                },
                undo = function() execute(old_params)
                )



###################################################
### chunk number 370: illustrateCommand
###################################################
#line 7331 "ch-RGtk2.Rnw"
x <- 1
set_x <- function(value) {
  old <- x
  x <<- value
  old
}
cmd <- Command$new(.GlobalEnv, "set_x", value = 2)
cmd$do(); x


###################################################
### chunk number 371: 
###################################################
#line 7341 "ch-RGtk2.Rnw"
cmd$undo();


###################################################
### chunk number 372: 
###################################################
#line 7344 "ch-RGtk2.Rnw"
x


###################################################
### chunk number 373: typicalAction eval=FALSE
###################################################
## #line 7355 "ch-RGtk2.Rnw"
## cmd <- Command$new(df_model, "set_col_name", j = j, value = value)
## command_stack$add(cmd)


###################################################
### chunk number 374: col_name_methods eval=FALSE
###################################################
## #line 7372 "ch-RGtk2.Rnw"
## DfModel$methods(
##                 get_col_name = function(j) varnames[j,1],
##                 get_col_names = function() varnames[ ,1],
##                 set_col_name = function(j, value) {
##                   "Set name, return old"
##                   old_col_name <- get_col_name(j)
##                   varnames[j,1] <<- value
##                   old_col_name
##                 })


###################################################
### chunk number 375: ensure_type
###################################################
#line 7392 "ch-RGtk2.Rnw"
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
#line 7407 "ch-RGtk2.Rnw"
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
#line 7514 "ch-RGtk2.Rnw"
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
#line 7566 "ch-RGtk2.Rnw"
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
#line 7636 "ch-RGtk2.Rnw"
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
#line 7821 "ch-RGtk2.Rnw"
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
#line 7960 "ch-RGtk2.Rnw"
## Test it out....
require(MASS)
df <- Cars93[sample(1:93, 20),c(1, 5, 26)]; df$American <- df$Origin == "USA"
a = EditDataFrame$new(df)


###################################################
### chunk number 382: oldWay
###################################################
#line 7967 "ch-RGtk2.Rnw"
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
#line 8089 "ch-RGtk2.Rnw"
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
#line 8178 "ch-RGtk2.Rnw"
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
#line 8187 "ch-RGtk2.Rnw"
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
#line 8208 "ch-RGtk2.Rnw"
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
#line 8316 "ch-RGtk2.Rnw"
options(prompt="> ")
options(continue="+ ")
options(width=80)


