###################################################
### chunk number 1: 
###################################################
library(gWidgets)


###################################################
### chunk number 2: 
###################################################
options(repos="http://streaming.stat.iastate.edu/CRAN")
d <- available.packages()       # pick a cran site


###################################################
### chunk number 3: 
###################################################
w <- gwindow("test of filter")
g <- ggroup(cont = w, horizontal = FALSE)
ed <- gedit("", cont = g)
tbl <- gtable(d, cont = g, filter.FUN = "manual", expand=TRUE)


###################################################
### chunk number 4: 
###################################################
## modify for different kind of filtering
ourMatch <- function(curVal, vals) {
  ## return indices of matches
  ind <- grep(curVal, vals)
  return(ind)
}


###################################################
### chunk number 5: 
###################################################
id <- addHandlerKeystroke(ed, handler = function(h, ...) {
  vals <- tbl[,1, drop=TRUE]
  curVal <- svalue(h$obj)
  ind <-ourMatch(curVal, as.character(vals))
  vis <- rep(FALSE, dim(tbl)[1])
  if(length(ind) > 0) 
    vis[ind] <- TRUE
  visible(tbl) <- vis
})


