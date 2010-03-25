###################################################
### chunk number 1: 
###################################################
## An GUI to explore the baseball data set in the plyr package
## usees several gWidgets controls.
library(plyr)
library(gWidgets)
library(hash)
#  stop("Only works with RGtk2 as the toolkit")
options("guiToolkit"="RGtk2")


###################################################
### chunk number 2: 
###################################################
data(baseball, package="plyr")
calc <- function(df) 
  transform(df,
            cyear = year - min(year),
            cpercent = (year - min(year))/(max(year) - min(year)))
b <- ddply(baseball, .(id), calc)
b <- subset(b, ab >= 25) 


###################################################
### chunk number 3: 
###################################################
require(hash); dat <- hash()
transferData <- function() {
  out <- try(sapply(e, svalue, drop=TRUE), silent=TRUE)
  if(inherits(out,"try-error"))
    return(FALSE)
  dat[[names(out)]] <- out              # hash keys
  dat$id <- e$id[]                      # not svalue
  return(TRUE)                          # works!
}


###################################################
### chunk number 4: 
###################################################
## Function to plot values given through dat
## not shown
curdf <- b ## data frame being plotted. Updated in plotIt()
plotIt <- function() {
  x <- dat$x; y <- dat$y
  xlim = range(b[,x], na.rm=TRUE)
  ylim = range(b[,y], na.rm=TRUE)

  if(dat$doYear) 
    b <- subset(b, subset= year == as.integer(dat$year))
  if(dat$doCareerYear) 
    b <- subset(b, subset= cyear == as.integer(dat$cyear))
  if(nchar(dat$lg) > 0)
    b <- subset(b, subset= lg == dat$lg)
  if(nchar(dat$team) > 0)
    b <- subset(b, subset= team %in% dat$team)

  logString <- ""
  if(dat$xlog) logString <- paste(logString,"x", sep="")
  if(dat$ylog) logString <- paste(logString,"y", sep="")
  curdf <<- b[,c("id",x,y)]                           # for locator

  l <- list(x = b[,x],
            y = b[,y],
            log = logString,
            xlab=x, ylab=y,
            xlim=xlim, ylim=ylim)
  l$col="gray80"
  l$pch=16

  if(dat$doYear) l$main <- dat$year
  if(dat$doCareerYear) l$sub <- paste("Career year:", dat$cyear, sep=" ")

  do.call("plot",l)

  ids <- as.vector(dat$id)
  if(!is.na(ids[1])) {
    b <- subset(b, subset= id==ids)
    points(b[,x], b[,y], cex=2, pch=16, col="red")
  }
 return(TRUE)
}


###################################################
### chunk number 5: 
###################################################
e <- new.env()
nVars <- names(b)[-c(1:5,23:24)]    # numeric variables


###################################################
### chunk number 6: 
###################################################
w <- gwindow("Baseball browser", visible=FALSE)
g <- ggroup(cont = w, horizontal=TRUE)
lp <- ggroup(cont = g, horizontal=FALSE)
cp <- ggroup(cont = g, horizontal=FALSE, expand=TRUE)
rp <- ggroup(cont = g, horizontal=FALSE, spacing=10)


###################################################
### chunk number 7: 
###################################################
f <- gframe("About:", cont = lp)
l <- glabel(paste("A GUI to browse relationships",
             "in the baseball data set",
             "from the plyr package.",
             sep="\n" ),
       cont = f)
g1 <- ggroup(cont = lp)
l <- glabel("y=", cont = g1)
e$y <- gcombobox(nVars, selected=4, cont = g1)
e$ylog <- gcheckbox("log", checked=FALSE, cont = g1)


###################################################
### chunk number 8: 
###################################################
gg <- ggraphics(cont = cp)
tbl <- glayout(cont = cp)
tbl[1,1] <- "x="
tbl[1,2, expand=TRUE] <- (e$x <- gcombobox(nVars, selected=2, 
           cont = tbl))
tbl[1,3] <- (e$xlog <- gcheckbox("log", checked=FALSE, 
                                 cont = tbl))
##
tbl[2,1] <- (e$doCareerYear <- gcheckbox("by career year", 
                                         checked=TRUE, cont = tbl))
tbl[2,2:3, expand=TRUE] <- (e$cyear <- 
             gslider(min(b$cyear), max(b$cyear), by=1, cont = tbl))
enabled(e$cyear) <- TRUE
##
tbl[3,1] <- (e$doYear <- gcheckbox("by year", 
                                   checked=FALSE, cont = tbl))
tbl[3,2:3, expand=TRUE] <- (e$year <- 
             gslider(min(b$year), max(b$year), by=1, cont = tbl))
enabled(e$year) <- FALSE


###################################################
### chunk number 9: 
###################################################
rpWidth <- 200
f <- gframe("Restrict to Team:", cont = rp)
teams <- data.frame(team=c("",sort(unique(b$team))), 
                    stringsAsFactors=FALSE)
e$team <- gtable(teams, cont=f, multiple=TRUE, width=rpWidth)
size(e$team) <- c(200,200)
svalue(e$team, index=TRUE) <- 1

f <- gframe("Restrict to League:", cont = rp)
leagues <- names(table(b$lg))[-1]       # drop ""
e$lg <- gcombobox(c("", leagues), cont = f)

f <- gframe("Highlight Players", horizontal=FALSE, cont = rp)
searchPlayer <- gedit("", cont = f)
listPlayers <- gtable(data.frame("PlayerID"=unique(b$id), 
                                 stringsAsFactors=FALSE),
                      filter.FUN="manual", cont = f)
e$id <- gtable(data.frame("Selected Player"=character(0), 
                          stringsAsFactors=FALSE), cont =f)


###################################################
### chunk number 10: 
###################################################
addHandlerChanged(e$doYear, handler = function(h,...) {
  val <- ifelse(svalue(e$doYear), TRUE, FALSE)
  enabled(e$year) <- val
})
addHandlerChanged(e$doCareerYear, handler = function(h,...) {
  val <- ifelse(svalue(e$doCareerYear), TRUE, FALSE)
  enabled(e$cyear) <- val
})


###################################################
### chunk number 11: 
###################################################
sapply(list(e$x, e$xlog, e$y, e$ylog, e$year, e$cyear,
            e$doYear, e$doCareerYear, e$lg), function(i)
       addHandlerChanged(i, handler = function(h,...) 
                         transferData() && plotIt()))


###################################################
### chunk number 12: 
###################################################
sapply(list(e$team, e$id), function(i)
       addHandlerClicked(i, handler = function(h,...) 
                         transferData() && plotIt()))


###################################################
### chunk number 13: 
###################################################
addHandlerKeystroke(searchPlayer, handler=function(h,...) {
  cur <- svalue(h$obj)
  ind <- grep(cur, unique(b$id))
  tmp <- rep(FALSE, length(unique(b$id)))
  if(length(ind) > 0) {
    tmp[ind] <- TRUE
    visible(listPlayers) <- tmp
  } else if(length(grep("^\\s$", cur))) {
    visible(listPlayers) <- !tmp
  } else {
    visible(listPlayers) <- tmp
  }
})
addHandlerChanged(listPlayers,handler=function(h,...) {
  val <- svalue(h$obj)
  e$id[] <- sort(c(val,e$id[]))
})
addHandlerChanged(e$id, handler = function(h,...) {
  val <- svalue(h$obj)
  cur <- e$id[]
  e$id[] <- setdiff(cur,val)
})


###################################################
### chunk number 14: 
###################################################
distance <- function(x,y)  {
  ds <- apply(y,1,function(i) sum( (x-i)^2))
  ds[is.na(ds)] <- max(ds, na.rm=TRUE)
  ds
}
addHandlerClicked(gg, function(h,...) {
  x <- c(h$x, h$y)
  ds <- distance(x, curdf[,2:3])
  ind <- which(ds == min(ds))
  ids <- curdf[ind,1]
  points(y[ind,1], y[ind,2], cex=2, pch=16, col="blue")
  text(y[ind,1], y[ind,2], label=ids, adj=c(-.25,0))
})


###################################################
### chunk number 15: 
###################################################
visible(w) <- TRUE
QT <- transferData() && plotIt()


