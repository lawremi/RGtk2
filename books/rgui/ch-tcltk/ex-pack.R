## examples of packing

packEx <- function(argL1=c(), argL2=c()) {

  w <- tktoplevel(background="black")
  f <- ttkframe(w); tkpack(f, expand=TRUE, fill="both")
  tkconfigure(f, padding=c(20,20))
  l1 <- tkcanvas(f,  background="red", width=30, height=30)
  l2 <- tkcanvas(f,  background="blue", width=30, height=30)

  arg1 <- list(l1); for(i in names(argL1)) arg1[[i]] <- argL1[i]
  arg2 <- list(l2); for(i in names(argL2)) arg2[[i]] <- argL2[i]
  
  do.call("tkpack",arg1)
  do.call("tkpack",arg2)

}


packEx()
