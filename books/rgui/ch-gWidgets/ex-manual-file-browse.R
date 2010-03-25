cur <- "."
m <- file.info(dir(path=cur))

w <- gwindow("file seletion")
g <- ggroup(horizontal=FALSE, cont = w)

dirLabel <- glabel(cur, cont = g)
  
  
