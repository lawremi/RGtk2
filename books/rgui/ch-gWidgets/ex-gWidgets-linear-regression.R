###################################################
### chunk number 1: 
###################################################
## see http://www.omegahat.org/RGtk/examples/contrib/ScreenShots/regression.jpg
library(gWidgets)


###################################################
### chunk number 2: 
###################################################
m <- data.frame(x=c(87,97,99,100,110,110,114,117,121,127),
                y=c(82,90,99,105,108,107,119,111,125,122))


###################################################
### chunk number 3: 
###################################################
w <- gwindow("Regression demo")
g <- ggroup(cont=w, expand=TRUE)

lg <- ggroup(horizontal=FALSE, cont=g, expand=TRUE)
d <- gdf(m, cont=lg, expand=TRUE)


###################################################
### chunk number 4: 
###################################################
showLeastSquares <- gcheckbox("Show least squares",selected=TRUE,cont=lg)
showResistant <- gcheckbox("Show resistant fit",selected=TRUE,cont=lg)
leastSquaresOutput <- gedit("", cont=lg)


###################################################
### chunk number 5: 
###################################################
rg <- ggroup(horizontal=FALSE, cont=g, expand=TRUE)
ggraphics(cont=rg, expand=TRUE)
glabel("Smoothness of lowess goes from 0 to 1", cont=rg)
sl <- gslider(from=0, to=1, by=0.1, cont=rg)
robustOutput <- gedit("", cont=lg)


###################################################
### chunk number 6: 
###################################################
plotGraphic <- function(...) {
  df <- d[,]
  f <- y ~ x
  res <- lm(f, data=df)
  plot(f, data=df)
  if(svalue(showLeastSquares)) {
    abline(res)
    svalue(leastSquaresOutput) <-
      paste("Least squres: y = ",coef(res)[1],
            ifelse(coef(res)[2] >0,"+","-"),
            abs(coef(res)[2]),"x")
  } else {
    svalue(leastSquaresOutput) <- ""
  }
  if(svalue(showResistant)) lines(lowess(df[,1],df[,2],svalue(sl)),col=4)

}


###################################################
### chunk number 7: 
###################################################
QT <- sapply(list(d,showLeastSquares, showResistant,sl),function(i)
       addHandlerChanged(i,handler=plotGraphic))


