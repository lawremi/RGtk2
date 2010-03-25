library(RGtk2)
## example showing how to add a toggle button on left of data display

## Define our data frame
repos <- getOption("repos")
repos["CRAN"] <- "http://streaming.stat.iastate.edu/CRAN"
options(repos = repos)

avail <- available.packages()
installed <- installed.packages()
tmp <- merge(avail, installed, by="Package")
need.upgrade <- with(tmp, as.character(Version.x) != as.character(Version.y))
d <- tmp[need.upgrade, c(1, 2, 16, 6)]
names(d) <- c("Package", "Available", "Installed", "Depends")

## some function to call on the selected rows of the data frame d
doThis <- function(d) print(d)



####### This is all generic -- a function of d alone
n <- ncol(d)
nms <- names(d)

d$.toggle <- rep(FALSE, nrow(d))
store <- rGtkDataFrame(d)


## make view
view <- gtkTreeView()
## add toggle
togglevc <- gtkTreeViewColumn()
view$insertColumn(togglevc, 0)
cr <- gtkCellRendererToggle()
togglevc$packStart(cr)
#
cr['activatable'] <- TRUE
togglevc$addAttribute(cr, "active", n)
gSignalConnect(cr, "toggled", function(cr, path, user.data) {
  view <- user.data
  row <- as.numeric(path) + 1
  model <- view$getModel()
  n <- dim(model)[2]
  model[row, n] <- !model[row, n]
},
               data=view)

sapply(1:n, function(i) {
  vc <- gtkTreeViewColumn()
  vc$setTitle(nms[i])
  view$insertColumn(vc, i)

  cr <- gtkCellRendererText()
  vc$packStart(cr)
  vc$addAttribute(cr, "text", i-1)
})

## GUI
w <- gtkWindow(show=FALSE)
w$setTitle("Installed packages that need upgrading")
w$setSizeRequest(300, 300)

g <- gtkVBox(); w$add(g)
sw <- gtkScrolledWindow()
g$packStart(sw, expand=TRUE, fill=TRUE)

sw$add(view)
sw$setPolicy("automatic", "automatic")

view$setModel(store)
b <- gtkButton("click me")
gSignalConnect(b, "clicked", function(w, data) {
  view <- data
  model <- view$getModel()
  n <- dim(model)[2]
  vals <- model[model[, n], -n, drop=FALSE]
  doThis(vals)
}, data=view)
g$packStart(b, expand=FALSE)

w$show()
