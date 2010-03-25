## Example of selection widgets for choosing from a moderate number
## of items
x <- state.name

w <- gwindow("Choose a state", visible=FALSE)
g <- ggroup(cont = w, horizontal = FALSE)

f <- gframe("gtable", cont = g)
f <- ggroup(cont = g, expand=TRUE)
tb <- gtable(data.frame(x, stringsAsFactors=FALSE), cont = f)
size(tb) <- c(width=200)

f <- gframe("gcombobox", cont = g)
gcombobox(x, cont = f)

f <- gframe("gedit + typeahead", cont = g)
e <- gedit("", cont = f)
e[] <- x

visible(w) <- TRUE
