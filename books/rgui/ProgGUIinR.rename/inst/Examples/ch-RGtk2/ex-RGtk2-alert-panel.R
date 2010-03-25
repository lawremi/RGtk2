###################################################
### chunk number 1: 
###################################################
require(RGtk2)


###################################################
### chunk number 2: 
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
### chunk number 3: 
###################################################
getAlertPanelBlock <- function(obj) {

  obj$evb <- gtkEventBox(show=FALSE)
  obj$evb$ModifyBg(state="normal",color=obj$panel.color)

  g <- gtkHBox(homogeneous=FALSE, spacing=5)
  obj$evb$add(g)

  obj$image <- gtkImageNewFromStock(obj$icon, size="button",show=TRUE)
  obj$image['yalign'] <- .5
  g$packStart(obj$image, expand=FALSE)

  obj$label <- gtkLabel(obj$message)
  obj$label['xalign'] <- 0; obj$label['yalign'] <- .5
  obj$label$setLineWrap(TRUE)
  obj$label$setWidthChars(obj$wrap)
  g$packStart(obj$label, expand=TRUE, fill= TRUE)

  xbutton <- gtkEventBox()
  xbutton$modifyBg(state="normal",color=obj$panel.color) # same color
  xbutton$add(gtkImageNewFromStock("gtk-close",size="menu"))
  xbuttonCallback <- function(data,widget,...) {
    hideAlertPanel(data)
    return(FALSE)
  }
  ID <- gSignalConnect(xbutton,"button-press-event",
                 f = xbuttonCallback,
                 data=obj, user.data.first=TRUE)
  g$packEnd(xbutton, expand=FALSE, fill=FALSE)

  ## also close when event box is clicked
  obj$motionID <-
    gSignalConnect(obj$evb,signal="button-press-event",
                   f = xbuttonCallback,
                   data=obj, user.data.first=TRUE)
  return(obj$evb)
}



###################################################
### chunk number 4: 
###################################################
showAlertPanel <- function(obj) {
  obj$label$setText(obj$message)
  obj$evb$show()
}


###################################################
### chunk number 5: 
###################################################
hideAlertPanel <- function(obj) obj$evb$hide()


###################################################
### chunk number 6: 
###################################################
w <- gtkWindow()
g <- gtkVBox(); w$add(g)

ap <- newAlertPanel()
g$packStart(getAlertPanelBlock(ap), expand=FALSE)
g$packStart(gtkLabel("fill space"), expand=TRUE, fill=TRUE)
ap$message <- "New Message"             # add message
showAlertPanel(ap)


