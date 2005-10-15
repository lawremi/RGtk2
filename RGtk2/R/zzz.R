.gtkArgs <-
function()
{
 c("R")
}

.First.lib <-
function(libname, pkgname)
{
 library.dynam("RGtk2", pkgname, libname)

 if(is.function(.gtkArgs))
  args <- .gtkArgs()
 else
  args <- as.character(.gtkArgs)

 if ("REventLoop" %in% rownames(installed.packages())) {
     library(REventLoop)
     eventLoop(REventLoop("R_Gtk2EventLoop"))
     runEventLoop()
 } else 
 gtkInit(args)
}
