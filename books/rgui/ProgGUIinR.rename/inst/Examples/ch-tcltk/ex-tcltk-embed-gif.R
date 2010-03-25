##http://code.activestate.com/recipes/117247/
  
f <- convertGif <- function(img) {
  tcl("package", "require","base64")
  as.character(.Tcl(paste("base64::encode [read [open ", img, "]]", sep="")))
}
