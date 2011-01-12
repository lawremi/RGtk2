###################################################
### chunk number 1: 
###################################################
#line 2 "ex-RGtk2-alert-panel.Rnw"
require(RGtk2)


###################################################
### chunk number 2: 
###################################################
#line 26 "ex-RGtk2-alert-panel.Rnw"
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
### chunk number 3: 
###################################################
#line 52 "ex-RGtk2-alert-panel.Rnw"
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
### chunk number 4: 
###################################################
#line 93 "ex-RGtk2-alert-panel.Rnw"
showAlertPanel <- function(obj) {
  obj$label$setText(obj$message)
  obj$evb$show()
}


###################################################
### chunk number 5: 
###################################################
#line 102 "ex-RGtk2-alert-panel.Rnw"
hideAlertPanel <- function(obj) obj$evb$hide()


###################################################
### chunk number 6: 
###################################################
#line 107 "ex-RGtk2-alert-panel.Rnw"
w <- gtkWindow()
g <- gtkVBox(); w$add(g)

ap <- newAlertPanel()
g$packStart(getAlertPanelBlock(ap), expand=FALSE)
g$packStart(gtkLabel("fill space"), expand=TRUE, fill=TRUE)
ap$message <- "New Message"             # add message
showAlertPanel(ap)


