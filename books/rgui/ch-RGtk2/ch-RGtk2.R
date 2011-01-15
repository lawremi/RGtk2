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
### chunk number 3: intro-constructor-gtkWindow
###################################################
#line 164 "SweaveInput"
window <- gtkWindow("toplevel", show = FALSE)


###################################################
### chunk number 4: intro-constructor-classes
###################################################
#line 188 "SweaveInput"
class(window)


###################################################
### chunk number 5: intro-constructor-interfaces
###################################################
#line 201 "SweaveInput"
interface(window)


###################################################
### chunk number 6: intro-methods-button
###################################################
#line 237 "SweaveInput"
button <- gtkButton("Hello World")
window$add(button)
window$setDefaultSize(200, 200)


###################################################
### chunk number 7: gtkButtonAddApi
###################################################
#line 249 "SweaveInput"
gtkButtonSayHello <- function(obj, target) 
  obj$setLabel(paste("Hello", target))
button$sayHello("World")
button$getLabel()


###################################################
### chunk number 8: showProperties
###################################################
#line 281 "SweaveInput"
head(names(button), n=8)                     # or b$getPropInfo()


###################################################
### chunk number 9: intro-props-get-set
###################################################
#line 296 "SweaveInput"
image <- gdkPixbuf(filename = imagefile("rgtk-logo.gif"))[[1]]
window$set(icon = image, title = "Hello World 1.0")


###################################################
### chunk number 10: 
###################################################
#line 305 "SweaveInput"
window$setTitle("Hello World 1.0")
window$getTitle()


###################################################
### chunk number 11: intro-props-visible
###################################################
#line 313 "SweaveInput"
window["visible"]


###################################################
### chunk number 12: intro-props-show
###################################################
#line 318 "SweaveInput"
window["visible"] <- TRUE 
window$show() # same effect


###################################################
### chunk number 13: 
###################################################
#line 338 "SweaveInput"
names(gTypeGetSignals("GtkButton"))


###################################################
### chunk number 14: 
###################################################
#line 350 "SweaveInput"
args(gSignalConnect)


###################################################
### chunk number 15: intro-signals-hello-world
###################################################
#line 364 "SweaveInput"
gSignalConnect(button, "clicked", 
               function(widget) print("Hello world!"))


###################################################
### chunk number 16: 
###################################################
#line 393 "SweaveInput"
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
#line 404 "SweaveInput"
b$setData("x", 2)                        # fix non-interactivity


###################################################
### chunk number 18: 
###################################################
#line 408 "SweaveInput"
cat(x, b$getData("x"), "\n") # 1 and 2


###################################################
### chunk number 19: 
###################################################
#line 421 "SweaveInput"
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
## #line 454 "SweaveInput"
## window <- gtkWindow("toplevel", show = FALSE)


###################################################
### chunk number 21: intro-enum-GtkWindowType
###################################################
#line 469 "SweaveInput"
GtkWindowType


###################################################
### chunk number 22: intro-enum-GtkWidgetFlags
###################################################
#line 483 "SweaveInput"
GtkWidgetFlags


###################################################
### chunk number 23: intro-enum-gtkWidgetFlags
###################################################
#line 489 "SweaveInput"
window$flags()


###################################################
### chunk number 24: intro-enum-toplevel
###################################################
#line 500 "SweaveInput"
(window$flags() & GtkWidgetFlags["toplevel"]) > 0


###################################################
### chunk number 25: 
###################################################
#line 517 "SweaveInput"
while(gtkEventsPending()) 
  gtkMainIteration()


###################################################
### chunk number 26: 
###################################################
#line 547 "SweaveInput"
library(RGtk2)


###################################################
### chunk number 27: 
###################################################
#line 586 "SweaveInput"
w <- gtkWindow(show=FALSE)              # use default type
w$setTitle("Window title")              # set window title
w['title']                              # or w$getTitle()
w$setDefaultSize(250,300)               # 250 wide, 300 high
w$show()                                # show window


###################################################
### chunk number 28: basic-window-label
###################################################
#line 615 "SweaveInput"
w <- gtkWindow(show=FALSE); w$setTitle("Hello world")
l <- gtkLabel("Hello world")
w$add(l)


###################################################
### chunk number 29: 
###################################################
#line 650 "SweaveInput"
## create a window and a dialog window
w <- gtkWindow(show=FALSE); w$setTitle("Top level window")
d <- gtkWindow(show=FALSE); d$setTitle("dialog window")
d$setTransientFor(w)
d$setPosition("center-on-parent")
d$setDestroyWithParent(TRUE)
w$show()
d$show()


###################################################
### chunk number 30: 
###################################################
#line 694 "SweaveInput"
w <- gtkWindow(show=FALSE); w$setTitle("Hello world")
l <- gtkLabel("Hello world")
w$add(l)


###################################################
### chunk number 31: 
###################################################
#line 700 "SweaveInput"
w$getChild()['label']                   # return label property of child


###################################################
### chunk number 32:  eval=FALSE
###################################################
## #line 715 "SweaveInput"
## ## leave out?
## l$getParent()


###################################################
### chunk number 33: 
###################################################
#line 723 "SweaveInput"
g <- gtkHBox()
for(i in 1:3) g$packStart(gtkButton(i))


###################################################
### chunk number 34: remove-child-widget-3
###################################################
#line 727 "SweaveInput"
b <- g[[3]]
g$remove(b)                             # removed
g$packStart(b, expand=TRUE, fill=TRUE)


###################################################
### chunk number 35: layout-window-show-first
###################################################
#line 752 "SweaveInput"
w <- gtkWindow(show=FALSE); w$setTitle("Hello world")
l <- gtkLabel("Hello world")
w$add(l)


###################################################
### chunk number 36: layout-window-show-first-alloc
###################################################
#line 768 "SweaveInput"
l$getAllocation()


###################################################
### chunk number 37: layout-window-show-later
###################################################
#line 774 "SweaveInput"
w <- gtkWindow(show=FALSE); w$setTitle("Hello world")
l <- gtkLabel("Hello world")
w$add(l)
w$show()
l$getAllocation()


###################################################
### chunk number 38: basic-box-homo
###################################################
#line 845 "SweaveInput"
box <- gtkHBox(TRUE, 5)


###################################################
### chunk number 39: basic-box-homo-nofill
###################################################
#line 861 "SweaveInput"
button_a <- gtkButton("Button A")
button_b <- gtkButton("Button B")
box$packStart(button_a, fill = FALSE)
box$packStart(button_b, fill = FALSE)


###################################################
### chunk number 40: basic-box-hetero
###################################################
#line 889 "SweaveInput"
box <- gtkHBox(FALSE, 5)


###################################################
### chunk number 41: 
###################################################
#line 917 "SweaveInput"
## re create buttons
button_a <- gtkButton("Button A")
button_b <- gtkButton("Button B")


###################################################
### chunk number 42: basic-box-expand
###################################################
#line 923 "SweaveInput"
box$packStart(button_a, expand = TRUE, fill = FALSE)
box$packStart(button_b, expand = FALSE, fill = FALSE)


###################################################
### chunk number 43: 
###################################################
#line 964 "SweaveInput"
b3 <- g[[3]]
g$reorderChild(b3, 2 - 1)               # second is 2 - 1


###################################################
### chunk number 44: basic-layout-align-window
###################################################
#line 975 "SweaveInput"
w <- gtkWindow(show=FALSE); w$setTitle("Hello world")
l <- gtkLabel("Hello world")
w$add(l)


###################################################
### chunk number 45: basic-layout-align-left
###################################################
#line 998 "SweaveInput"
l["xalign"] <- 0


###################################################
### chunk number 46: basic-layout-align-GtkAlignment
###################################################
#line 1009 "SweaveInput"
w <- gtkWindow(); w$setTitle("Hello world")
a <- gtkAlignment()
a$set(xalign = 0, yalign = 0.5, xscale = 0, yscale = 1)
w$add(a)
l <- gtkLabel("Hello world")
a$add(l)


###################################################
### chunk number 47: 
###################################################
#line 1039 "SweaveInput"
w <- gtkWindow(); w['title'] <- "Parent window"
#
dlg <- gtkMessageDialog(parent=w, 
                        flags="destroy-with-parent",
                        type="question", 
                        buttons="ok",
                        "My message")
dlg['secondary-text'] <- "A secondary message"


###################################################
### chunk number 48: 
###################################################
#line 1067 "SweaveInput"
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
### chunk number 49: 
###################################################
#line 1098 "SweaveInput"
dlg <- gtkDialogNewWithButtons(title="Enter a value", 
                               parent=NULL, flags=0,
                               "gtk-ok", GtkResponseType["ok"],
                               "gtk-cancel", GtkResponseType["cancel"],
                               show=FALSE)


###################################################
### chunk number 50: OurDialogsLayout
###################################################
#line 1115 "SweaveInput"
hb <- gtkHBox()
hb['spacing'] <- 10
#
hb$packStart(gtkLabel("Enter a value:"))
entry <- gtkEntry()
hb$packStart(entry)


###################################################
### chunk number 51: addToContentArea
###################################################
#line 1127 "SweaveInput"
vb <- dlg$getContentArea()
vb$packStart(hb)


###################################################
### chunk number 52: connectResponse
###################################################
#line 1140 "SweaveInput"
ID <- gSignalConnect(dlg, "response", 
                     f=function(dlg, resp, user.data) {
                       if(resp == GtkResponseType["ok"])
                         print(entry$getText()) # Replace this
                       dlg$Destroy()
                     })
dlg$showAll()
dlg$setModal(TRUE)


###################################################
### chunk number 53: openFileDialog
###################################################
#line 1166 "SweaveInput"
dlg <- gtkFileChooserDialog(title="Open a file", 
                     parent=NULL, action="open",
                     "gtk-ok", GtkResponseType["ok"],
                     "gtk-cancel", GtkResponseType["cancel"],
                     show=FALSE)


###################################################
### chunk number 54: 
###################################################
#line 1181 "SweaveInput"
gSignalConnect(dlg, "response", f=function(dlg, resp, data) {
  if(resp == GtkResponseType["ok"]) {
    filename <- dlg$getFilename()
    print(filename)
  }
  dlg$destroy()
})


###################################################
### chunk number 55: 
###################################################
#line 1198 "SweaveInput"
fileFilter <- gtkFileFilter()
fileFilter$setName("R files")
fileFilter$addPattern("*.R")
fileFilter$addPattern("*.Rdata")
dlg$addFilter(fileFilter)


###################################################
### chunk number 56: 
###################################################
#line 1348 "SweaveInput"
gtkNotebookInsertPageWithCloseButton <- 
  function(object, child, label.text="", position=-1) {
    label <- gtkHBox()
    label$packStart(gtkLabel(label.text))
    icon <- gtkImage(pixbuf = 
                     object$renderIcon("gtk-close", "button"))
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
### chunk number 57: 
###################################################
#line 1371 "SweaveInput"
w <- gtkWindow()
nb <- gtkNotebook(); w$add(nb)
nb$setScrollable(TRUE)
nb$insertPageWithCloseButton(gtkButton("hello"), 
                             label.text="page 1")
nb$insertPageWithCloseButton(gtkButton("world"), 
                             label.text="page 2")


###################################################
### chunk number 58: ScrolledWindowExample
###################################################
#line 1427 "SweaveInput"
library(RGtk2)


###################################################
### chunk number 59: 
###################################################
#line 1431 "SweaveInput"
g <- gtkVBox(spacing=0)
sapply(state.name, function(i) {
  l <- gtkLabel(i)
  l['xalign'] <- 0; l['xpad'] <- 10
  g$packStart(l, expand=TRUE, fill=TRUE)
})


###################################################
### chunk number 60: 
###################################################
#line 1442 "SweaveInput"
sw <- gtkScrolledWindow()
sw$setPolicy("never","automatic")
sw$addWithViewport(g)          # just "Add" for text, tree, ...


###################################################
### chunk number 61: 
###################################################
#line 1448 "SweaveInput"
w <- gtkWindow(show=FALSE)
w$setTitle("Scrolled window example")
w$setSizeRequest(-1, 300)
w$add(sw)
w$show()


###################################################
### chunk number 62: ButtonConstructors
###################################################
#line 1543 "SweaveInput"
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
### chunk number 63: CallbackExampleForButton
###################################################
#line 1603 "SweaveInput"
w <- gtkWindow(); b <- gtkButton("click me");
w$add(b)

ID <- gSignalConnect(b,"button-press-event",   # just mouse click
                     f = function(w,e,data) {
                       print(e$getButton())    # which button
                       return(FALSE)           # propagate
                     })
ID <- gSignalConnect(b,"clicked",              # click or keyboard
                     f = function(w,...) {
                       print("clicked")
                     })


###################################################
### chunk number 64: MacOSXstyleButton
###################################################
#line 1652 "SweaveInput"
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
### chunk number 65: StockButtons
###################################################
#line 1674 "SweaveInput"
cancel <- gtkButton(stock.id="gtk-cancel")
ok <- gtkButton(stock.id="gtk-ok")
delete <- gtkButton(stock.id="gtk-delete")


###################################################
### chunk number 66: macButtonPack
###################################################
#line 1689 "SweaveInput"
g$packEnd(ok, padding=0)
g$packEnd(cancel, padding=12)
g$packEnd(delete, padding=12)
g$packEnd(gtkLabel(""), expand=TRUE, fill=TRUE)


###################################################
### chunk number 67: 
###################################################
#line 1698 "SweaveInput"
ok$grabFocus()
QT <- gSignalConnect(ok, "clicked", function(...) print("ok"))


###################################################
### chunk number 68: 
###################################################
#line 1703 "SweaveInput"
## not shown
w$showAll()


###################################################
### chunk number 69: gtkHButtonBoxExample
###################################################
#line 1707 "SweaveInput"
## not shown
## Had we only wanted to use a button box
w <- gtkWindow()
bb <- gtkHButtonBox()
w$add(bb)

bb$add(gtkButton(stock.id="gtk-delete"))
bb$add(gtkButton(stock.id="gtk-cancel"))
bb$add(gtkButton(stock.id="gtk-ok"))


###################################################
### chunk number 70: LabelFormatting
###################################################
#line 1753 "SweaveInput"
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
### chunk number 71: 
###################################################
#line 1896 "SweaveInput"
ib <- gtkInfoBar(show=FALSE)
ib$setNoShowAll(TRUE)


###################################################
### chunk number 72: 
###################################################
#line 1903 "SweaveInput"
l <- gtkLabel("Warning, Warning ....")
ib$setMessageType("warning")            
ib$getContentArea()$add(l)


###################################################
### chunk number 73: 
###################################################
#line 1909 "SweaveInput"
ib$addButton(button.text="gtk-ok",
             response.id=GtkResponseType['ok']) # not just "ok"


###################################################
### chunk number 74: 
###################################################
#line 1915 "SweaveInput"
gSignalConnect(ib, "response", function(w, ...) w$hide())


###################################################
### chunk number 75: addToWinodw
###################################################
#line 1920 "SweaveInput"
w <- gtkWindow(); w['title'] <- "Info bar example"
g <- gtkVBox()
w$add(g)
g$packStart(ib, expand=FALSE)
#
contentArea <- gtkHBox()
g$packStart(contentArea, expand=TRUE)
l <- gtkLabel("Lorem ipsum so dolor ...")
contentArea$packStart(l)
#
ib$show()                               # show


###################################################
### chunk number 76: 
###################################################
#line 1945 "SweaveInput"
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
### chunk number 77: 
###################################################
#line 1994 "SweaveInput"
library(RGtk2)


###################################################
### chunk number 78: 
###################################################
#line 2005 "SweaveInput"
w <- gtkWindow(show=FALSE); w$setTitle("Graphic window");
w$setSizeRequest(400,400)
g <- gtkHBox(); w$add(g)
w$showAll()


###################################################
### chunk number 79: 
###################################################
#line 2018 "SweaveInput"
theSize <- g$getAllocation()$allocation
width <- theSize$width; height <- theSize$height


###################################################
### chunk number 80: 
###################################################
#line 2026 "SweaveInput"
require(cairoDevice)
pixmap <- gdkPixmap(drawable = NULL, width = width, height = height,
                    depth = 24)
asCairoDevice(pixmap)
hist(rnorm(100))


###################################################
### chunk number 81:  eval=FALSE
###################################################
## #line 2036 "SweaveInput"
## image <- gtkImage(pixmap = pixmap)
## g$packStart(image, expand=TRUE, fill = TRUE)


###################################################
### chunk number 82: notShown
###################################################
#line 2043 "SweaveInput"
## Work this into an example ###
makeIconRGtk2 <- function(w, giffile) {
  if(checkPtrType(w, "GtkWindow")) {
    img <- gdkPixbufNewFromFile(giffile)
    if(!is.null(img$retval))
      w$setIcon(img$retval)
  }
}


###################################################
### chunk number 83: gtkStockListIds
###################################################
#line 2069 "SweaveInput"
head(unlist(gtkStockListIds()), n=4)   


###################################################
### chunk number 84: notShown
###################################################
#line 2104 "SweaveInput"
## This shows an alert panel construction -- a means to place a message box at the top of a container.
## The main point is to illustrate the use of the hide and show methods of the GtkWidgetClass and to 
## show how labels and images can be added to an event box to allow for both coloring and for events.
require(RGtk2)


###################################################
### chunk number 85: 
###################################################
#line 2129 "SweaveInput"
initialize <- 
  function(message="", icon="gtk-dialog-warning", panel.color="goldenrod") {
    "Initialize widgets"
    widget <<- gtkEventBox(show=FALSE)
    widget$ModifyBg(state="normal", color=panel.color)
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
    xbutton$add(gtkImageNewFromStock("gtk-close", size="menu"))
    g$packEnd(xbutton, expand=FALSE, fill=FALSE)
    ##
    callback <- function(...) {hide(); FALSE}
    sapply(list(xbutton, widget), function(i) 
           gSignalConnect(i, "button-press-event", f= callback))
    ##
    message <<- message                 # set message
    ##
    .self
  }


###################################################
### chunk number 86: AlertPanelClass
###################################################
#line 2164 "SweaveInput"
setRefClass("AlertPanel",
            fields = list(
              widget="ANY",              # main event box
              image="ANY", label="ANY",
              icon="character", message="character"
              ),
            methods=list(
              initialize=initialize,
              set_message=function(msg) {
                "Set message, show box"
                message <<- msg
                show()
              },
              show=function() {
                "Show message"
                label$setText(message)
                widget$show()
              },
              hide=function() {
                "hide message"
                widget$hide()
              }))


###################################################
### chunk number 87: 
###################################################
#line 2191 "SweaveInput"
w <- gtkWindow()
g <- gtkVBox(); w$add(g)
#
ap <- getRefClass("AlertPanel")$new()
g$packStart(ap$widget, expand=FALSE)
#
g$packStart(gtkLabel("fill space"), expand=TRUE, fill=TRUE)
ap$set_message("New Message")


###################################################
### chunk number 88: InsertDeleteText
###################################################
#line 2238 "SweaveInput"
e <- gtkEntry()
e$setText("Where did that guy go?")
add.pos <- regexpr("guy", e['text']) - 1 # before "guy"
ret <- e$insertText("@$#%! ", position = add.pos)
e$getText()                             # or e['text']
e$deleteText(start = add.pos, end= ret$position)
e$getText()


###################################################
### chunk number 89: RadioGroupExample
###################################################
#line 2326 "SweaveInput"
vals <- c("two.sided", "less", "greater")
radiogp <- list()                                 # list for group
radiogp[[vals[1]]] <- gtkRadioButton(label=vals[1]) # group = NULL
for(i in vals[-1]) 
  radiogp[[i]] <- gtkRadioButton(radiogp, label=i)  # group is a list


###################################################
### chunk number 90: 
###################################################
#line 2334 "SweaveInput"
w <- gtkWindow(); w$setTitle("Radio group example")
g <- gtkVBox(FALSE, 5); w$add(g)
sapply(radiogp, gtkBoxPackStart, object = g)


###################################################
### chunk number 91: 
###################################################
#line 2340 "SweaveInput"
g[[3]]$setActive(TRUE)           
sapply(radiogp, `[`, "active") 


###################################################
### chunk number 92: 
###################################################
#line 2345 "SweaveInput"
sapply(radiogp, gSignalConnect, "toggled",     # connect each
       f = function(w, data) {
         if(w$getActive()) # set before callback
           cat("clicked", w$getLabel(),"\n")
       })


###################################################
### chunk number 93: 
###################################################
#line 2373 "SweaveInput"
radiogp <- gtkRadioButton(label=vals[1])
sapply(vals[-1], gtkRadioButtonNewWithLabelFromWidget, group = radiogp)
w <- gtkWindow(); 
w['title'] <- "Radio group example"
g <- gtkVBox(); w$add(g)
sapply(rev(radiogp$getGroup()), gtkBoxPackStart, object = g)


###################################################
### chunk number 94: ComboBoxExample
###################################################
#line 2424 "SweaveInput"
## An example of two comboboxes where 1 updates the other
require(RGtk2)
data(mtcars); library(MASS); data(Cars93) # need some data frames


###################################################
### chunk number 95: 
###################################################
#line 2432 "SweaveInput"
#require(ProgGUIinR)                     # for avail_dfs, find_vars
source("~/GUI/ProgGUIInR/R/misc.R")


###################################################
### chunk number 96: Widgets
###################################################
#line 2438 "SweaveInput"
w <- gtkWindow(show=FALSE)
w$setTitle("gtkComboBox example")

df_combo <- gtkComboBoxNewText()
var_combo <- gtkComboBoxNewText()


###################################################
### chunk number 97: Layout
###################################################
#line 2450 "SweaveInput"
g <- gtkVBox(); w$add(g)
#
g1 <- gtkHBox(); g$packStart(g1)
g1$packStart(gtkLabel("Data frames:"))
g1$PackStart(df_combo)
#
g2 <- gtkHBox(); g$packStart(g2)
g2$packStart(gtkLabel("Variable:"))
g2$PackStart(var_combo)
g2$hide()


###################################################
### chunk number 98: configureComboBoxes
###################################################
#line 2467 "SweaveInput"
sapply(avail_dfs(), gtkComboBoxAppendText, object=df_combo)
df_combo$setActive(-1)
#
gSignalConnect(df_combo, "changed", function(w, ...) {
  var_combo$getModel()$clear()          # how to clear, or removeText.
  sapply(find_vars(w$getActiveText()), gtkComboBoxAppendText, object=var_combo)
  g2$show()
})


###################################################
### chunk number 99: 
###################################################
#line 2479 "SweaveInput"
## show window
w$show()


###################################################
### chunk number 100: 
###################################################
#line 2491 "SweaveInput"
## layout a basic dialog -- center align
library(RGtk2)


###################################################
### chunk number 101: 
###################################################
#line 2505 "SweaveInput"
w <- gtkWindow(show=FALSE)
w['border-width'] <- 14
w$setTitle("example of gtkTable and attaching")
tbl <- gtkTable(rows=4, columns=2, homogeneous=FALSE)
w$add(tbl)


###################################################
### chunk number 102: 
###################################################
#line 2514 "SweaveInput"
l1 <- gtkLabel("Sample size")
w1 <- gtkComboBoxNewText()
sapply(c(5, 10, 15, 30), gtkComboBoxAppendText, object=w1)
#
l2 <- gtkLabel("Show diagnostic ")
w2 <- gtkVBox()
rb <- list()
rb[["t"]] <- gtkRadioButton(label="t-statistic")
for(i in c("mean","median")) rb[[i]] <- gtkRadioButton(rb, label=i)
sapply(rb, gtkBoxPackStart, object=w2)
#
w3 <- gtkButton("Run simulation")


###################################################
### chunk number 103: 
###################################################
#line 2536 "SweaveInput"
tbl$attach(l1, left.attach=0,1, top.attach=0,1, yoptions="fill")
l1["xalign"] <- 1; l1["xpad"] <- 5
tbl$attach(w1, left.attach=1,2, top.attach=0,1, xoptions="fill", yoptions="fill")


###################################################
### chunk number 104: 
###################################################
#line 2545 "SweaveInput"
tbl$attach(l2, left.attach=0,1, top.attach=1,2, yoptions="fill")
l2["xalign"] <- 1; l2['yalign'] <- 0; l2["xpad"] <- 4
tbl$attach(w2, left.attach=1,2, top.attach=1,2, xoptions=c("expand", "fill"))


###################################################
### chunk number 105: 
###################################################
#line 2552 "SweaveInput"
tbl$attach(gtkHSeparator(),left.attach=0,2, top.attach=2,3, ypadding=10, yoptions="fill")
tbl$attach(w3, left.attach=1,2, top.attach=3,4, xoptions="fill", yoptions="fill")


###################################################
### chunk number 106: 
###################################################
#line 2557 "SweaveInput"
w$show()                             


###################################################
### chunk number 107: SliderAndHistogram
###################################################
#line 2625 "SweaveInput"
library(lattice)
x <- rnorm(100)                         # the data
drawHistogram <- function(val) print(histogram(x, nint = val))
#
w <- gtkWindow(); w$setTitle("Histogram bin selection")
#
slider <- gtkHScale(min = 1, max = 100, step = 1)
slider$setValue(10)                     # initial value
slider['value-pos'] <- "bottom"
w$add(slider)
#
gSignalConnect(slider, "value-changed",
               f = function(w, ...) {
                 val <- w$getValue()
                 drawHistogram(val)
               })
#
drawHistogram(slider$getValue())        # initial graphic


###################################################
### chunk number 108: 
###################################################
#line 2674 "SweaveInput"
## make a range widget combining both a slider and spinbutton to choose a number
library(RGtk2)


###################################################
### chunk number 109: 
###################################################
#line 2681 "SweaveInput"
from <- 0; to <- 100; by <- 1


###################################################
### chunk number 110: 
###################################################
#line 2689 "SweaveInput"
slider <- gtkHScale(min=from, max=to, step=by)
slider['draw-value'] <- FALSE
adjustment <- slider$getAdjustment()
spinbutton <- gtkSpinButton(adjustment = adjustment)


###################################################
### chunk number 111: 
###################################################
#line 2699 "SweaveInput"
g <- gtkHBox()
g$packStart(slider, expand=TRUE, fill=TRUE, padding=5)
g$packStart(spinbutton, expand=FALSE, padding=5)


###################################################
### chunk number 112: 
###################################################
#line 2706 "SweaveInput"
w <- gtkWindow(show=FALSE)
w['title'] <- "Example of a range widget"
w$setSizeRequest(width=200, height=-1)
w$add(g)
w$show()


###################################################
### chunk number 113: 
###################################################
#line 2769 "SweaveInput"
TARGET.TYPE.TEXT   <- 80                 
TARGET.TYPE.PIXMAP <- 81                  


###################################################
### chunk number 114: 
###################################################
#line 2774 "SweaveInput"
widgetTargetTypes <- list(
## target -- string representing the drag type. MIME type used.
## flag delimiting drag scope. 0 -- no limit
## info -- application assigned value to identify
text = gtkTargetEntry("text/plain", 0, TARGET.TYPE.TEXT),
pixmap = gtkTargetEntry("image/x-pixmap", 0, TARGET.TYPE.PIXMAP)
)


###################################################
### chunk number 115: 
###################################################
#line 2803 "SweaveInput"
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
### chunk number 116: 
###################################################
#line 2837 "SweaveInput"
w <- gtkWindow(); w['title'] <- "Drop Target"
dropTargetWidget <- gtkButton("Drop here")
w$add(dropTargetWidget)

gtkDragDestSet(dropTargetWidget,
               flags="all", 
               targets=widgetTargetTypes[["text"]],
               actions="copy"
               )


###################################################
### chunk number 117: 
###################################################
#line 2858 "SweaveInput"
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
### chunk number 118: 
###################################################
#line 2884 "SweaveInput"
library(RGtk2)


###################################################
### chunk number 119: 
###################################################
#line 2965 "SweaveInput"
data(Cars93, package="MASS")            # mix of classes
model <- rGtkDataFrame(Cars93)
model[1, 4] <- 12
model[1, 4]                              # get value


###################################################
### chunk number 120: 
###################################################
#line 2987 "SweaveInput"
model$setFrame(Cars93[1:5, 1:5])


###################################################
### chunk number 121: rgtk2-mvc-treeview-construc
###################################################
#line 3012 "SweaveInput"
view <- gtkTreeView(model)


###################################################
### chunk number 122: rgtk2-mvc-insert-column-hardway
###################################################
#line 3024 "SweaveInput"
vc <- gtkTreeViewColumn()
vc$setTitle("Manufacturer")
cr <- gtkCellRendererText()
vc$packStart(cr)
vc$addAttribute(cr, "text", 0)
view$insertColumn(vc, 0)


###################################################
### chunk number 123: rgtk2-mvc-insert-column-easyway
###################################################
#line 3053 "SweaveInput"
view$insertColumnWithAttributes(position = -1, 
     title = "Model", cell = gtkCellRendererText(), text = 1)


###################################################
### chunk number 124: rgtk2-mvc-insert-all-columns
###################################################
#line 3069 "SweaveInput"
view <- gtkTreeView(model)
mapply(view$insertColumnWithAttributes,  -1, colnames(model), 
       list(gtkCellRendererText()), 
       text = seq_len(ncol(model)) - 1)


###################################################
### chunk number 125: rgtk2-mvc-path-constructor-list
###################################################
#line 3142 "SweaveInput"
secondRow <- gtkTreePathNewFromIndices(2)


###################################################
### chunk number 126: rgtk2-mvc-path-constructor-tree
###################################################
#line 3146 "SweaveInput"
abcPath <- gtkTreePathNewFromIndices(c(1, 3, 2))
abcPath <- gtkTreePathNewFromString("1:3:2")


###################################################
### chunk number 127: rgtk2-mvc-iter-traverse eval=FALSE
###################################################
## #line 3166 "SweaveInput"
## ### JV HAD issues with thi
## iter <- model$getIterFirst()
## manufacturer <- character()
## while(iter$retval) {
##   manufacturer <- c(manufacturer, model$get(iter$iter, 0)[[1]])
##   model$iterNext(iter$iter)
## }


###################################################
### chunk number 128: rgtk2-mvc-iter-apply
###################################################
#line 3196 "SweaveInput"
nrows <- model$iterNChildren(NULL)
manufacturer <- sapply(seq(nrows), function(i) {
  iter <- model$iterNthChild(NULL, i)
  model$get(iter$iter, 0)[[1]]
})


###################################################
### chunk number 129: 
###################################################
#line 3255 "SweaveInput"
model <- rGtkDataFrame(mtcars)
view <- gtkTreeView(model)
selection <- view$getSelection()
selection$setMode("single")


###################################################
### chunk number 130: 
###################################################
#line 3262 "SweaveInput"
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
## some selection
selection$selectPath(gtkTreePathNewFromIndices(3)) # set 
# 


###################################################
### chunk number 131: 
###################################################
#line 3283 "SweaveInput"
curSel <- selection$getSelected()    # retrieve selection
with(curSel, model$getValue(iter, 0)$value) # model, iter


###################################################
### chunk number 132: 
###################################################
#line 3294 "SweaveInput"
selection$setMode("multiple")


###################################################
### chunk number 133: notShown
###################################################
#line 3298 "SweaveInput"
selection$selectPath(gtkTreePathNewFromIndices(1)) # set for example
selection$selectPath(gtkTreePathNewFromIndices(2)) # set for example
selection$selectPath(gtkTreePathNewFromIndices(3)) # set for example


###################################################
### chunk number 134: 
###################################################
#line 3306 "SweaveInput"
curSel <- selection$getSelectedRows()
if(length(curSel$retval)) {
  rows <- sapply(curSel$retval, gtkTreePathGetIndices) + 1L
  curSel$model[rows, 1]
}


###################################################
### chunk number 135:  eval=FALSE
###################################################
## #line 3328 "SweaveInput"
## sapply(view$getColumns(), function(i) i == column)


###################################################
### chunk number 136: rgtk2-mvc-sorting-clickable
###################################################
#line 3344 "SweaveInput"
vc <- view$getColumn(0)
vc$setSortColumnId(0)


###################################################
### chunk number 137: rgtk2-mvc-sorting-sortable
###################################################
#line 3353 "SweaveInput"
model$setSortColumnId(0, "ascending")


###################################################
### chunk number 138: basicSort
###################################################
#line 3364 "SweaveInput"
store <- rGtkDataFrame(mtcars)
sorted <- gtkTreeModelSortNewWithModel(store)
view <- gtkTreeView(sorted)
view$insertColumnWithAttributes(0, "Click to sort", gtkCellRendererText(), 
                                text = 0)
view$getColumn(0)$setSortColumnId(0)


###################################################
### chunk number 139: sort-example
###################################################
#line 3379 "SweaveInput"
f <- function(model, iter1, iter2, user.data) {
  column <- user.data
  val1 <- model$getValue(iter1, column)$value
  val2 <- model$getValue(iter2, column)$value
  as.integer(val1 - val2)
}
sorted$setSortFunc(sort.column.id=0, sort.func=f, user.data=0)


###################################################
### chunk number 140: notShown
###################################################
#line 3389 "SweaveInput"
## basic GUI
sw <- gtkScrolledWindow()
sw$add(view)
w <- gtkWindow(show=FALSE)
w['title'] <- "Example of sortable tree view"
w$add(sw)
w$show()


###################################################
### chunk number 141: 
###################################################
#line 3411 "SweaveInput"
df <- data.frame(col=letters[1:3], vis=c(TRUE, TRUE, FALSE))
store <- rGtkDataFrame(df)
filtered <- store$filter()
filtered$setVisibleColumn(1)            # 0-based
view <- gtkTreeView(filtered)


###################################################
### chunk number 142: notShown
###################################################
#line 3428 "SweaveInput"
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
### chunk number 143: 
###################################################
#line 3450 "SweaveInput"
library(RGtk2)


###################################################
### chunk number 144: 
###################################################
#line 3465 "SweaveInput"
df <- data.frame(state.name)
df$visible <- rep(TRUE, nrow(df))
store <- rGtkDataFrame(df)


###################################################
### chunk number 145: 
###################################################
#line 3473 "SweaveInput"
filteredStore <- store$filter()
filteredStore$setVisibleColumn(ncol(df)-1)      # offset
view <- gtkTreeView(filteredStore)


###################################################
### chunk number 146: 
###################################################
#line 3480 "SweaveInput"
view$insertColumnWithAttributes(0, "Col", 
                 gtkCellRendererText(), text = 0)


###################################################
### chunk number 147: 
###################################################
#line 3490 "SweaveInput"
e <- gtkEntry()
gSignalConnect(e, "changed", function(w, data) {
  pattern <- w$getText()
  df <- data$getModel()
  values <- df[, "state.name"]
  df[, "visible"] <- grepl(pattern, values)
}, data=filteredStore)


###################################################
### chunk number 148: 
###################################################
#line 3503 "SweaveInput"
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
### chunk number 149: cr-right-aligned
###################################################
#line 3575 "SweaveInput"
cr <- gtkCellRendererText()
cr['xalign'] <- 1                       # default 0.5 = centered
cr['family'] <- "Helvetica"  


###################################################
### chunk number 150: 
###################################################
#line 3607 "SweaveInput"
cr <- gtkCellRendererCombo()
store <- rGtkDataFrame(state.name)
cr['model'] <- store
cr['text-column'] <- 0
cr['editable'] <- TRUE                  # needed


###################################################
### chunk number 151: VariableSelectionExample
###################################################
#line 3644 "SweaveInput"
## Example showing implementation of variable selection widget where two tables show possible selections
## and selection. Similar to SPSS widget
## Illustrates filtered models, icons in view column
library(RGtk2)
library(MASS)


###################################################
### chunk number 152: 
###################################################
#line 3658 "SweaveInput"
df <- Cars93


###################################################
### chunk number 153: make_icon
###################################################
#line 3666 "SweaveInput"
#require(ProgGUIinR)                     # for make_icon
source("~/GUI/ProgGUIInR/R/misc.R")     # for make_icon
make_icon_pixmap <- function(x, ...) {
  require(grid)
  require(cairoDevice)
  pixmap <- gdkPixmap(drawable=NULL, width=16, height=16, depth=24)
  asCairoDevice(pixmap)
  grid.newpage()
  grid.draw(make_icon(x))
  dev.off()
  gdkPixbufGetFromDrawable(NULL, pixmap, NULL, 0,0,0,0,-1,-1)
}


###################################################
### chunk number 154: models
###################################################
#line 3686 "SweaveInput"
mdf <- data.frame(Variables=sort(names(df)),
                  visible = rep(TRUE, ncol(df)),
                  stringsAsFactors=FALSE
                 )
mdf$pixmap <- sapply(names(df), function(i) make_icon_pixmap(df[,i, drop=TRUE]))
#
models <- list()
models[[1]] <- rGtkDataFrame(mdf)
mdf$visible <- !mdf$visible
models[[2]] <- rGtkDataFrame(mdf)


###################################################
### chunk number 155: filterModels
###################################################
#line 3701 "SweaveInput"
filterModels <- sapply(models, function(i)
                       gtkTreeModelFilterNew(i))
sapply(filterModels, function(i) i$setVisibleColumn(1)) 


###################################################
### chunk number 156: guiLayout
###################################################
#line 3710 "SweaveInput"
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
### chunk number 157: configureView
###################################################
#line 3734 "SweaveInput"
sapply(1:2, function(i) views[[i]]$setModel(filterModels[[i]]))
sapply(1:2, function(i)
       views[[i]]$getSelection()$setMode('multiple'))


###################################################
### chunk number 158: viewColumns
###################################################
#line 3743 "SweaveInput"
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
### chunk number 159: extendAPI
###################################################
#line 3762 "SweaveInput"
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
gtkTreeViewHasSelection <- function(obj) length(obj$selectedIndices()) > 0


###################################################
### chunk number 160: buttons
###################################################
#line 3783 "SweaveInput"
## do buttons
buttons <- lapply(c(">", "<"), gtkButton)
#
move <- function(i, ...) {
  ind <- views[[i]]$selectedIndices()
  models[[3-i]][ind,2] <- TRUE
  models[[i]][ind,2] <- FALSE
}
sapply(1:2, function(i) 
  gSignalConnect(buttons[[i]], "clicked", move, data=i, user.data.first=TRUE))


###################################################
### chunk number 161: sensitiveButtons
###################################################
#line 3798 "SweaveInput"
sapply(buttons, gtkWidgetSetSensitive, FALSE) 
sapply(1:2, function(i) 
       gSignalConnect(views[[i]]$getSelection(), "changed", function(...) 
                      buttons[[i]]['sensitive'] <- views[[i]]$hasSelection()))


###################################################
### chunk number 162: packButtons
###################################################
#line 3807 "SweaveInput"
buttonBox$packStart(gtkVBox(), expand=TRUE) # align in center
sapply(buttons, gtkBoxPackStart, object=buttonBox, expand=FALSE, padding=6)
buttonBox$packStart(gtkVBox(), expand=TRUE)
#
w$show()


###################################################
### chunk number 163: cellRendererToggle
###################################################
#line 3835 "SweaveInput"
cr <- gtkCellRendererToggle()
cr['activatable'] <- TRUE               # cell can be activated
cr['active'] <- TRUE
gSignalConnect(cr, "toggled", function(w, path) {
  model$active[as.numeric(path) + 1] <- w['active']
})


###################################################
### chunk number 164: 
###################################################
#line 3858 "SweaveInput"
## example showing how to add a toggle button on left of data display
library(RGtk2)


###################################################
### chunk number 165: FixACRANforSweave
###################################################
#line 3865 "SweaveInput"
repos <- getOption("repos")
repos["CRAN"] <- "http://streaming.stat.iastate.edu/CRAN"
options(repos = repos)


###################################################
### chunk number 166: getUpgradablePackages
###################################################
#line 3870 "SweaveInput"
d <- old.packages()[,c("Package", "Installed", "ReposVer")]
d <- as.data.frame(d)


###################################################
### chunk number 167: 
###################################################
#line 3878 "SweaveInput"
doUpdate <- function(d)  install.packages(d$Package)


###################################################
### chunk number 168: 
###################################################
#line 3885 "SweaveInput"
n <- ncol(d)
nms <- colnames(d)
d$.toggle <- rep(FALSE, nrow(d))
store <- rGtkDataFrame(d)


###################################################
### chunk number 169: 
###################################################
#line 3894 "SweaveInput"
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
### chunk number 170: 
###################################################
#line 3911 "SweaveInput"
mapply(view$insertColumnWithAttributes, -1, nms, 
       list(gtkCellRendererText()), text = 1:n-1)


###################################################
### chunk number 171: 
###################################################
#line 3917 "SweaveInput"
view$setModel(store)


###################################################
### chunk number 172: 
###################################################
#line 3926 "SweaveInput"
b <- gtkButton("Update packages")
gSignalConnect(b, "clicked", function(w, data) {
  view <- data
  model <- view$getModel()
  n <- dim(model)[2]
  vals <- model[model[, n], -n, drop=FALSE]
  doUpdate(vals)
}, data=view)


###################################################
### chunk number 173: 
###################################################
#line 3940 "SweaveInput"
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
### chunk number 174: comboEditor
###################################################
#line 3971 "SweaveInput"
cr <- gtkCellRendererProgress()
cr["value"] <- 50                       # fixed 50%
cr['orientation'] <- "right-to-left"


###################################################
### chunk number 175: 
###################################################
#line 4009 "SweaveInput"
func <- function(viewCol, cellRend, model, iter, data) {
  curVal <- model$getValue(iter, 0)$value
  fVal <- sprintf("%.3f", curVal)
  cellRend['text'] <- fVal
  cellRend['xalign'] <- 1
}


###################################################
### chunk number 176: 
###################################################
#line 4020 "SweaveInput"
view <- gtkTreeView(rGtkDataFrame(data.frame(rnorm(100))))
cr <- gtkCellRendererText()
view$insertColumnWithAttributes(0, "numbers", cr, text = 0)
vc <- view$getColumn(0)
vc$setCellDataFunc(cr, func)


###################################################
### chunk number 177: 
###################################################
#line 4066 "SweaveInput"
cr <- gtkCellRendererText()


###################################################
### chunk number 178: editedSignal
###################################################
#line 4069 "SweaveInput"
cr['editable'] <- TRUE
ID <- gSignalConnect(cr, "edited", 
f=function(cr, path, newtext, user.data) {
  curRow <- as.numeric(path) + 1
  curCol <- user.data$column
  model <- user.data$model
  model[curRow, curCol] <- newtext
}, data=list(model=store, column=1))


###################################################
### chunk number 179: 
###################################################
#line 4125 "SweaveInput"
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
### chunk number 180: 
###################################################
#line 4138 "SweaveInput"
iter <- tstore$getIterFromString("0:0")
tstore$getValue(iter$iter, column = 0)$value


###################################################
### chunk number 181: rgtk2-mvc-tree-traverse eval=FALSE
###################################################
## #line 4170 "SweaveInput"
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
### chunk number 182: notShown
###################################################
#line 4235 "SweaveInput"
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
### chunk number 183: 
###################################################
#line 4256 "SweaveInput"
store <- rGtkDataFrame(Cars93[,"Model", drop=FALSE])


###################################################
### chunk number 184: makeView
###################################################
#line 4261 "SweaveInput"
view <- gtkTreeView()
view$insertColumnWithAttributes(0, "Make", 
           gtkCellRendererText(), text = 0)


###################################################
### chunk number 185: makeGUI
###################################################
#line 4267 "SweaveInput"
w <- gtkWindow(show=FALSE)
w['title'] <- "Example of changing models"
sw <- gtkScrolledWindow()
sw$add(view)
w$add(sw)
w$show()


###################################################
### chunk number 186: 
###################################################
#line 4277 "SweaveInput"
view$setModel(store)               # the rectangular store
view$setModel(tstore)              # or the tree store


###################################################
### chunk number 187: 
###################################################
#line 4291 "SweaveInput"
## tree example
## a variable browser
require(RGtk2)


###################################################
### chunk number 188: SetUpStore
###################################################
#line 4300 "SweaveInput"
store <- gtkTreeStore(rep("gchararray", 2))
sstore <- gtkTreeModelSort(store)


###################################################
### chunk number 189: 
###################################################
#line 4306 "SweaveInput"
iter <- store$append(parent=NULL)$iter
store$setValue(iter, column=0, "GlobalEnv")
store$setValue(iter, column=1, "environment")
iter <- store$append(parent=iter)


###################################################
### chunk number 190: 
###################################################
#line 4317 "SweaveInput"
view <- gtkTreeView(sstore)
view$getSelection()$setMode("multiple")


###################################################
### chunk number 191: 
###################################################
#line 4326 "SweaveInput"
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
### chunk number 192: trePathToIter
###################################################
#line 4346 "SweaveInput"
pathToIter <- function(sstore, tpath) {
  store <- sstore$getModel()
  uspath <- sstore$convertPathToChildPath(tpath)
  store$getIter(uspath)$iter
}


###################################################
### chunk number 193: IterToPath
###################################################
#line 4358 "SweaveInput"
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
### chunk number 194: getChildren
###################################################
#line 4376 "SweaveInput"
getChildren <- function(path=character(0)) {
  hasChildren <- function(obj) 
    (is.list(obj) || is.environment(obj)) && !is.null(names(as.list(obj)))
  
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
### chunk number 195: addChildren
###################################################
#line 4410 "SweaveInput"
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
### chunk number 196: 
###################################################
#line 4429 "SweaveInput"
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
### chunk number 197: DoubleClickHandler
###################################################
#line 4448 "SweaveInput"
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
### chunk number 198: addRenderer
###################################################
#line 4470 "SweaveInput"
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
### chunk number 199: exampleGUI
###################################################
#line 4486 "SweaveInput"
## We now place the tree view widget into a basic GUI.
sw <- gtkScrolledWindow()
sw$setPolicy("automatic","automatic")
sw$add(view)

w <- gtkWindow()
w$setTitle("Tree view")
w$add(sw)


###################################################
### chunk number 200: 
###################################################
#line 4553 "SweaveInput"
## a combobox that learns as you go.
## no tooltip per item, but here we add as detail
library(RGtk2)


###################################################
### chunk number 201: 
###################################################
#line 4566 "SweaveInput"
m <- rGtkDataFrame(data.frame(fname="", visits="", novisits=0,
                              stringsAsFactors=FALSE))
cb <- gtkComboBoxEntryNewWithModel(m, text.column=0)


###################################################
### chunk number 202: ConfigureCellRenderers
###################################################
#line 4578 "SweaveInput"
cr <- gtkCellRendererText()
cb$packStart(cr)
cb$addAttribute(cr, "text", 1)
cr['foreground'] <- "gray50"
cr['ellipsize'] <- "end"
cr['style'] <- "italic"
cr['alignment'] <- "right"


###################################################
### chunk number 203: Layout
###################################################
#line 4590 "SweaveInput"
w <- gtkWindow(show=FALSE)
w['border-width'] <- 15
g <- gtkHBox(); w$add(g)
g$packStart(gtkLabel("Help on:"))
g$packStart(cb, expand=TRUE, fill=TRUE)
#
w$show()


###################################################
### chunk number 204: helperFunctions
###################################################
#line 4626 "SweaveInput"
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
### chunk number 205: helperFunction2
###################################################
#line 4642 "SweaveInput"
callHelpFunction <- function(cb, value) {
  model <- cb$getModel()
  ind <- match(value,model[,1, drop=TRUE])
  n <- model[ind, "novisits"] <- model[ind, "novisits"] + 1
  model[ind, "visits"] <- sprintf(ngettext(n, "%s visit", "%s visits"), n)
  ## select for easier editing
  cb$getChild()$selectRegion(start=0,end=-1)
  help(value)
}


###################################################
### chunk number 206: 
###################################################
#line 4657 "SweaveInput"
gSignalConnect(cb, "changed", f=function(w, ...) {
  if(cb$getActive() >= 0) {
    val <- w$getActiveText()
    callHelpFunction(w, val)
  }
})


###################################################
### chunk number 207: 
###################################################
#line 4669 "SweaveInput"
gSignalConnect(cb$getChild(), "activate", f = function(cb, entry, ...) {
  val <- entry$getText()
  if(!any(val == cb$getModel()[,1, drop=TRUE])) {
    addValue(cb, val)                   # a new one
  }
  callHelpFunction(cb, val)
}, data=cb, user.data.first=TRUE)


###################################################
### chunk number 208: 
###################################################
#line 4738 "SweaveInput"
require(RGtk2)


###################################################
### chunk number 209: AppendWords
###################################################
#line 4744 "SweaveInput"
entry <- gtkEntry()
completion <- gtkEntryCompletion()
entry$setCompletion(completion)


###################################################
### chunk number 210: SetCompletion
###################################################
#line 4754 "SweaveInput"
store <- rGtkDataFrame(state.name)
completion$setModel(store)
completion$setTextColumn(0)
completion['inline-completion'] <- TRUE
completion['popup-single-match'] <- FALSE


###################################################
### chunk number 211: SetMatchFunc
###################################################
#line 4766 "SweaveInput"
matchAnywhere <- function(comp, str, iter, user.data) {
  model <- comp$getModel()
  rowVal <- model$getValue(iter, 0)$value   # column 0 in model
  
  str <- comp$getEntry()$getText()      # case sensitive
  grepl(str, rowVal)
}
completion$setMatchFunc(matchAnywhere)


###################################################
### chunk number 212: notShown
###################################################
#line 4777 "SweaveInput"
## Our basic GUI is basic:
w <- gtkWindow(show=FALSE)
w$setTitle("Test of entry with completion")
w$add(entry)
w$showAll()


###################################################
### chunk number 213: 
###################################################
#line 4811 "SweaveInput"
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
### chunk number 214: setText
###################################################
#line 4825 "SweaveInput"
buffer <- tv$getBuffer()
buffer$setText("Lorem ipsum dolor sit amet ...")


###################################################
### chunk number 215: bufferGetText
###################################################
#line 4833 "SweaveInput"
start <- buffer$getStartIter()$iter    
end <- buffer$getEndIter()$iter
buffer$getText(start, end)


###################################################
### chunk number 216: 
###################################################
#line 4974 "SweaveInput"
## setup example, not shown
w <- gtkWindow()
tv <- gtkTextView()
w$add(tv)


###################################################
### chunk number 217: FindWordAtMouseClick
###################################################
#line 4981 "SweaveInput"
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
### chunk number 218: 
###################################################
#line 5035 "SweaveInput"
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
### chunk number 219: 
###################################################
#line 5084 "SweaveInput"
## make a *basic* terminal in RGtk2
library(RGtk2)


###################################################
### chunk number 220: TextViewWidget
###################################################
#line 5091 "SweaveInput"
tv <- gtkTextView()
tb <- tv$getBuffer()
font <- pangoFontDescriptionFromString("Monospace")
tv$modifyFont(font)                     # widget wide


###################################################
### chunk number 221: 
###################################################
#line 5100 "SweaveInput"
tb$createTag(tag.name="cmdInput")
tb$createTag(tag.name="cmdOutput", 
             weight=PangoWeight["bold"])
tb$createTag(tag.name="cmdError", 
             weight=PangoStyle["italic"], foreground="red")
tb$createTag(tag.name="uneditable", editable=FALSE)


###################################################
### chunk number 222: 
###################################################
#line 5112 "SweaveInput"
startCmd <- gtkTextMark("startCmd", left.gravity=TRUE)
tb$addMark(startCmd, tb$getStartIter()$iter)
bufferEnd <- tb$CreateMark("bufferEnd", tb$getEndIter()$iter)



###################################################
### chunk number 223: 
###################################################
#line 5121 "SweaveInput"
scrollViewport <- function(view, ...) {
  iter <- view$getBuffer()$getEndIter()$iter
  view$scrollToMark(bufferEnd, within.margin=0)
  return(FALSE)
}


###################################################
### chunk number 224: 
###################################################
#line 5132 "SweaveInput"
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
### chunk number 225: addOutput
###################################################
#line 5153 "SweaveInput"
addOutput <- function(obj, output, tagName="cmdOutput") {
  endIter <- obj$getEndIter()
  if(length(output) > 0) 
    sapply(output, function(i)  {
      obj$insertWithTagsByName(endIter$iter, i, tagName)
      obj$insert(endIter$iter, "\n", len=-1)
    })
}


###################################################
### chunk number 226: 
###################################################
#line 5167 "SweaveInput"
findCMD <- function(obj) {
  endIter <- obj$getEndIter()
  startIter <- obj$getIterAtMark(startCmd)
  cmd <- obj$getText(startIter$iter, endIter$iter, TRUE)
  regex <- paste("\n[", getOption("continue"), "] ", sep = "")
  cmd <- unlist(strsplit(cmd, regex))
  cmd
}


###################################################
### chunk number 227: 
###################################################
#line 5181 "SweaveInput"
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
  out <- capture.output(vis <- withVisible(try(eval(e, .GlobalEnv), TRUE)))

  addOutput(tb, out) 
  if (inherits(vis$value, "try-error"))
    addOutput(tb, vis$value, "cmdError")
  else if (vis$visible)
    addOutput(tb, capture.output(print(vis$value)))
  
  addPrompt(tb, "prompt", setMark=TRUE)
  scrollViewport(tv)  
}


###################################################
### chunk number 228: connectBinding
###################################################
#line 5216 "SweaveInput"
gSignalConnect(tv, "key-release-event", f=function(w, e, data) {
  obj <- w$getBuffer()                  # w is textview
  keyval <- e$getKeyval()
  if(keyval == GDK_Return) {
    cmd <- findCMD(obj)                 # character(0) if nothing
    if(length(cmd) && nchar(cmd) > 0)
      evalCMD(w, cmd)
  }
})


###################################################
### chunk number 229: makeGUI
###################################################
#line 5239 "SweaveInput"
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
### chunk number 230: 
###################################################
#line 5255 "SweaveInput"
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
### chunk number 231: NotShown
###################################################
#line 5351 "SweaveInput"
## Not shown, but this shows how to add a button to a text view widget
b <- gtkButton("click me")              # child
end <- tb$getEndIter()$iter             # get  an iter
anchor <- tb$createChildAnchor(end)     # make anchor
tv$addChildAtAnchor(b, anchor)          # set widget at anchor


###################################################
### chunk number 232: 
###################################################
#line 5417 "SweaveInput"
require(RGtk2)


###################################################
### chunk number 233: rgtk2-menus-actions-constructor
###################################################
#line 5438 "SweaveInput"
a <- gtkAction(name="ok", label="_Ok", 
               tooltip="An OK button", stock.id="gtk-ok")


###################################################
### chunk number 234: rgtk2-menus-actions-activate
###################################################
#line 5449 "SweaveInput"
gSignalConnect(a, "activate", f = function(w, data) {
  print(a$getName())                    # or some useful thing
})


###################################################
### chunk number 235: ConnectAction
###################################################
#line 5462 "SweaveInput"
b <- gtkButton()
b$setRelatedAction(a)


###################################################
### chunk number 236: rgtk2-menus-action-appearance eval=FALSE
###################################################
## #line 5473 "SweaveInput"
## b["use-action-appearance"] <- TRUE


###################################################
### chunk number 237: rgtk2-menus-action-group
###################################################
#line 5482 "SweaveInput"
group <- gtkActionGroup()
group$addActionWithAccel(a, "<control>O")


###################################################
### chunk number 238: rgtk2-menus-toggle-action
###################################################
#line 5499 "SweaveInput"
fullScreen <- gtkToggleAction("fullscreen", "Full screen", "Toggle full screen")
gSignalConnect(fullScreen, "toggled", function(action) {
  if(fullScreen['active'])
    window$fullscreen()
  else
    window$unfullscreen()
})


###################################################
### chunk number 239: showGUI
###################################################
#line 5512 "SweaveInput"
window <- gtkWindow(show=FALSE)
window['title'] <- "Action with button example"
window$add(b)
window$showAll()


###################################################
### chunk number 240: rgtk2-menus-menubar
###################################################
#line 5537 "SweaveInput"
menubar <- gtkMenuBar()


###################################################
### chunk number 241: rgtk2-menus-menu
###################################################
#line 5548 "SweaveInput"
fileMenu <- gtkMenu()


###################################################
### chunk number 242: rgtk2-menus-menuitem
###################################################
#line 5554 "SweaveInput"
fileItem <- gtkMenuItemNewWithMnemonic(label="_File")
fileItem$setSubmenu(fileMenu)


###################################################
### chunk number 243: rgtk2-menus-append
###################################################
#line 5562 "SweaveInput"
menubar$append(fileItem)


###################################################
### chunk number 244: rgtk2-menus-open
###################################################
#line 5575 "SweaveInput"
open <- gtkMenuItemNewWithMnemonic("_Open")


###################################################
### chunk number 245: rgtk2-menus-open-activate
###################################################
#line 5581 "SweaveInput"
gSignalConnect(open, "activate", function(item) {
  f <- file.choose()
  file.show(f)
})


###################################################
### chunk number 246: rgtk2-menus-append-item
###################################################
#line 5589 "SweaveInput"
fileMenu$append(open)


###################################################
### chunk number 247: rgtk2-menus-save-action
###################################################
#line 5596 "SweaveInput"
saveAction <- gtkAction("save", "Save", "Save object", "gtk-save")


###################################################
### chunk number 248: rgtk2-menus-save-item
###################################################
#line 5602 "SweaveInput"
save <- saveAction$createMenuItem()
## unnecessary?
##save["use-action-appearance"] <- TRUE
fileMenu$append(save)


###################################################
### chunk number 249: rgtk2-menus-separator
###################################################
#line 5613 "SweaveInput"
fileMenu$append(gtkSeparatorMenuItem())


###################################################
### chunk number 250: rgtk2-menus-toggle-item
###################################################
#line 5619 "SweaveInput"
autoSaveAction <- gtkToggleAction("autosave", "Autosave", 
                                  "Enable autosave")
autoSave <- autoSaveAction$createMenuItem()
fileMenu$append(autoSave)


###################################################
### chunk number 251: rgtk2-menus-window
###################################################
#line 5627 "SweaveInput"
mainWindow <- gtkWindow()
vbox <- gtkVBox()
mainWindow$add(vbox)
vbox$packStart(menubar, FALSE, FALSE)


###################################################
### chunk number 252: "menubar-ex"
###################################################
#line 5640 "SweaveInput"
popup <- gtkMenu()                       # top level
popup$append(gtkMenuItem("cut"))
popup$append(gtkMenuItem("copy"))
popup$append(gtkSeparatorMenuItem())
popup$append(gtkMenuItem("paste"))


###################################################
### chunk number 253: rgtk2-menus-popup-button
###################################################
#line 5650 "SweaveInput"
b <- gtkButton("Click me with right mouse button")
w <- gtkWindow(); w$setTitle("Popup menu example")
w$add(b)


###################################################
### chunk number 254: 
###################################################
#line 5662 "SweaveInput"
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
### chunk number 255: 
###################################################
#line 5679 "SweaveInput"
IDs <- sapply(popup$getChildren(), function(i) {
  if(!inherits(i, "GtkSeparatorMenuItem")) # skip these
    gSignalConnect(i, "activate",
                   f = function(w, data) print("replace me"))
})


###################################################
### chunk number 256: rgtk2-menus-toolbar-construct
###################################################
#line 5698 "SweaveInput"
toolbar <- gtkToolbar()


###################################################
### chunk number 257: rgtk2-menus-toolbar-open-item
###################################################
#line 5707 "SweaveInput"
openButton <- gtkToolButton(stock.id = "gtk-open") 


###################################################
### chunk number 258: rgtk2-menus-toolbar-add
###################################################
#line 5716 "SweaveInput"
toolbar$add(openButton)


###################################################
### chunk number 259: rgtk2-menus-toolbar-save-item
###################################################
#line 5727 "SweaveInput"
saveButton <- saveAction$createToolItem()
toolbar$add(saveButton)


###################################################
### chunk number 260: rgtk2-menus-toolbar-separator
###################################################
#line 5736 "SweaveInput"
toolbar$add(gtkSeparatorToolItem())


###################################################
### chunk number 261: rgtk2-menus-toolbar-toggle
###################################################
#line 5741 "SweaveInput"
fullScreenButton <- fullScreen$createToolItem()
toolbar$add(fullScreenButton)


###################################################
### chunk number 262: rgtk2-menus-toolbar-style
###################################################
#line 5757 "SweaveInput"
toolbar$setStyle("icon")


###################################################
### chunk number 263: rgtk2-menus-toolbar-is-important
###################################################
#line 5766 "SweaveInput"
fullScreen["is-important"] <- TRUE


###################################################
### chunk number 264: rgtk2-menus-toolbar-expand
###################################################
#line 5775 "SweaveInput"
expander <- gtkSeparatorToolItem()
expander["draw"] <- FALSE
toolbar$add(expander)
### JV XXX This causes my R to crash
#toolbar$childSetProperty(expander, "expand", TRUE)


###################################################
### chunk number 265: rgtk2-menus-toolbar-help
###################################################
#line 5787 "SweaveInput"
helpAction <- gtkAction("help", "Help", "Get help", "gtk-help")
toolbar$add(helpAction$createToolItem())


###################################################
### chunk number 266: rgtk2-menus-toolbar-place
###################################################
#line 5794 "SweaveInput"
vbox$packStart(toolbar, FALSE, FALSE)


###################################################
### chunk number 267: rgtk2-mennus-toolbar-color-button
###################################################
#line 5812 "SweaveInput"
## JV: moved )
##gdkColor <- gdkColorParse(palette()[1]$color)
gdkColor <- gdkColorParse(palette()[1])$color
colorButton <- gtkColorButton(gdkColor)


###################################################
### chunk number 268: rgtk2-menus-toolbar-color-menu
###################################################
#line 5824 "SweaveInput"
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
### chunk number 269: rgtk2-menus-toolbar-color-cb
###################################################
#line 5846 "SweaveInput"
colorMenuItemActivated <- function(item) {
  color <- gdkColorParse(item$getLabel())$color
  colorButton$setColor(color)
}
sapply(colorItems, gSignalConnect, "activate", colorMenuItemActivated)


###################################################
### chunk number 270: rgtk2-menus-toolbar-menu
###################################################
#line 5856 "SweaveInput"
menuButton <- gtkMenuToolButton(colorButton, "Color")
menuButton$setMenu(colorMenu)
toolbar$add(menuButton)


###################################################
### chunk number 271: rgtk2-menus-tool-item-group eval=FALSE
###################################################
## #line 5879 "SweaveInput"
## fileGroup <- gtkToolItemGroup("File")
## fileGroup$add(gtkToolButton(stock.id = "gtk-open"))
## fileGroup$add(saveAction$createToolItem())
## helpGroup <- gtkToolItemGroup("Help")
## helpGroup$add(helpAction$createToolItem())


###################################################
### chunk number 272: rgtk2-menus-tool-palette eval=FALSE
###################################################
## #line 5889 "SweaveInput"
## palette <- gtkToolPalette()
## palette$add(fileGroup)
## palette$add(helpGroup)


###################################################
### chunk number 273: rgtk2-menus-tool-palette-collapse eval=FALSE
###################################################
## #line 5896 "SweaveInput"
## helpGroup$setCollapsed(TRUE)


###################################################
### chunk number 274: not-shown
###################################################
#line 5929 "SweaveInput"
## sample RGtk2 menu
library(RGtk2)


###################################################
### chunk number 275: 
###################################################
#line 5935 "SweaveInput"
uimanager = gtkUIManager()


###################################################
### chunk number 276: 
###################################################
#line 5943 "SweaveInput"
someAction <- function(action,...) 
  statusbar$push(statusbar$getContextId("message"), action$getName())
Quit <- function(...) win$destroy()


###################################################
### chunk number 277: Define-first-action-group
###################################################
#line 5959 "SweaveInput"
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
### chunk number 278: "Insert action group"
###################################################
#line 5985 "SweaveInput"
firstActionGroup$addActions(firstActionEntries)
uimanager$insertActionGroup(firstActionGroup, 0) # 0-based


###################################################
### chunk number 279: 
###################################################
#line 5992 "SweaveInput"
helpActionGroup <- gtkActionGroup("helpActionGroup")
helpActionEntries <- list(
  help = list("Help", "", "_Help", "", "", NULL),
  about = list("About", "gtk-about", "_About", "", "", someAction)
)
helpActionGroup$addActions(helpActionEntries)


###################################################
### chunk number 280: "a toggle action"
###################################################
#line 6009 "SweaveInput"
toggleActions <- list(
        ## name, label, tooltip, stock.id              
        tooltips = gtkToggleAction("UseTooltips", "Use tooltips", 
          "Use tooltips to show additional information", NULL)
)
gSignalConnect(toggleActions[[1]], "toggled", function(...) print("toggled"))
helpActionGroup$addAction(toggleActions$tooltips)


###################################################
### chunk number 281: "insert help action group"
###################################################
#line 6023 "SweaveInput"
uimanager$insertActionGroup(helpActionGroup, 1)


###################################################
### chunk number 282: "Load UI from file"
###################################################
#line 6078 "SweaveInput"
id <- uimanager$addUiFromFile("ex-menus.xml")


###################################################
### chunk number 283: "Retrieve menubar and toolbar from the uimanager"
###################################################
#line 6089 "SweaveInput"
menubar <- uimanager$getWidget("/menubar")
toolbar <- uimanager$getWidget("/toolbar")


###################################################
### chunk number 284: "define statusbar"
###################################################
#line 6094 "SweaveInput"
statusbar <- gtkStatusbar()


###################################################
### chunk number 285: Define-window-add-accelerator-group
###################################################
#line 6102 "SweaveInput"
win <- gtkWindow(show=TRUE)
win$setTitle("Window example")
accelgroup <- uimanager$getAccelGroup()
win$addAccelGroup(accelgroup)


###################################################
### chunk number 286: setup-box
###################################################
#line 6110 "SweaveInput"
box <- gtkVBox()
win$add(box)

box$packStart(menubar, expand=FALSE, fill=FALSE,0)
box$packStart(toolbar, expand=FALSE, fill= FALSE,0)
contentArea <- gtkVBox()
box$packStart(contentArea, expand=TRUE, fill=TRUE,0)
contentArea$packStart(gtkLabel("Content Area"))
box$packStart(statusbar, expand=FALSE, fill=FALSE, 0)


###################################################
### chunk number 287: How-to-set-sensitivity
###################################################
#line 6125 "SweaveInput"
redo <- firstActionGroup$getAction("Redo")
redo['sensitive'] <- FALSE


###################################################
### chunk number 288: 
###################################################
#line 6224 "SweaveInput"
options(prompt="> ")
options(continue="+ ")
options(width=80)


