## move the keys around

## size of view
.dimView <- function(view) {
  dim(view$getData("model"))
}

## get current position

     
downCell <- function(view, i, j, start.editing=FALSE) {
  if(i < .dimView(view)[1]) 
     view$setCursor(gtkTreePathNewFromString(i), view$getColumn(j-1), start.editing)
  ## else???
}
upCell <- function(view, i, j, start.editing=FALSE) {
  if(i > 1)
    view$setCursor(i-1, j, start.editing)
}
overCell <- function(view, i, j, start.editing=FALSE) {
  if(j < .dimView(view)[2])
    view$setCursor(i, j+1, start.editing)
  #  else ??
}
backCell <- function(view, i, j, start.editing=FALSE) {
  if(j > 1)
    view$setCursor(i, j-1, start.editing)
}

## add key bindings
addKeyBindings <- function(view) {
  gSignalConnect(view, "key-release-event", function(widget, event, user.data) {
    ## add keybindings here
    

    
    return(FALSE)
  })
}
               
