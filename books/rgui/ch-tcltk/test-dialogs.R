
library(gWidgetstcltk)
options(guiToolkit = "tcltk")

f <- function(h,...) print("stub")
w <- gbasicdialog(title="This is not wide enough", handler = f)
size(w) # 1x1 (I think this is the minimum size)
size(w) <- c(600, 100) # this works but apparently has no effect
ml <- vector("list", 26)
names(ml) <- LETTERS
gm <- gmenu(ml, cont = w, expand = TRUE)
visible(w, set = TRUE)
