###################################################
### chunk number 1: 
###################################################
## A calculator layout with gWidgets
library(gWidgets)


###################################################
### chunk number 2: 
###################################################
buttons <- rbind(c(7:9,"(",")"),
                 c(4:6,"*","/"),
                 c(1:3,"+","-"))
bList <- list()
w <- gwindow("glayout for a calculator")
g <- ggroup(cont = w, expand=TRUE, horizonta=FALSE)
tbl <- glayout(cont=g, spacing = 2)
                                        
tbl[1,1:5, anchor=c(-1,0)] <- 
  (eqnArea <- gedit("", cont = tbl))
tbl[2,1:5, anchor=c(1,0)] <- 
  (outputLabel <- glabel("", cont = tbl))
for(i in 3:5) {
  for(j in 1:5) {
    val <- buttons[i-2,j]
    tbl[i,j] <- (bList[[val]] <- gbutton(val, cont=tbl))
  }
}
tbl[6,2] <- (bList[["0"]] <- gbutton("0", cont=tbl))
tbl[6,3] <- (bList[["."]] <- gbutton(".", cont=tbl))
tbl[6,4:5] <- (eqButton <- gbutton("=", cont=tbl))

outputArea <- gtext("", cont = g)


###################################################
### chunk number 3: 
###################################################
addButton <- function(h,...) {
  curExpr <- svalue(eqnArea)
  newChar <- svalue(h$obj)              # the button's value
  svalue(eqnArea) <- paste(curExpr, newChar, sep="")
  svalue(outputLabel) <- ""             # clear label if not
}
out <- sapply(bList, function(i) 
              addHandlerChanged(i,handler=addButton))



###################################################
### chunk number 4: 
###################################################
addHandlerClicked(eqButton, handler = function(h,...) {
  curExpr <- svalue(eqnArea)
  out <- try(capture.output(eval(parse(text=curExpr))))
  if(inherits(out,"try-error")) {
    gmessage("There is an error")
    return()
  }
  svalue(outputArea) <- out
  svalue(eqnArea) <- ""            # restart
})
                  


