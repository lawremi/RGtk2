###################################################
### chunk number 1: 
###################################################
library(RGtk2)


###################################################
### chunk number 2: 
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
### chunk number 3: 
###################################################
require(ggplot2)
require(Cairo)
iconNames <- c("GeomBar","GeomHistogram")   # 2 of many ggplot functions
icon.size <- 16
iconDir <- tempdir()
fileNames <- sapply(iconNames, function(name) {
  nm <- paste(iconDir, "/", name, ".png", sep="", collapse="")
  Cairo(file=nm, width=icon.size, height=icon.size, type="png")
  val <- try(get(name))
  grid.newpage()
  try(grid.draw(val$icon()), silent=TRUE)
  dev.off()
  nm
})


###################################################
### chunk number 4: addToStockIcons
###################################################
addToStockIcons <- function(iconNames, fileNames, stock.prefix="new") {
  iconfactory <- gtkIconFactoryNew()
  
  for(i in seq_along(iconNames)) {
    
    iconsource = gtkIconSourceNew()
    iconsource$setFilename(fileNames[i])
    
    iconset = gtkIconSetNew()
    iconset$addSource(iconsource)
    
    stockName = paste(stock.prefix, "-", iconNames[i], sep="")
    iconfactory$add(stockName, iconset)
    
    items = list(test=list(stockName, iconNames[i],"","",""))
    gtkStockAdd(items)
  }
  iconfactory$AddDefault()
  invisible(TRUE)
}


###################################################
### chunk number 5: 
###################################################
addToStockIcons(iconNames, fileNames)
nms <- gtkStockListIds()
unlist(nms[grep("^new", nms)])

