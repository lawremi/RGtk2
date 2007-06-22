.gtkArgs <-
function()
{
 c("R")
}

.onLoad <-
function(libname, pkgname)
{
 options(depwarn = TRUE, gdkFlush = TRUE)
 
 dll <- try(library.dynam("RGtk2", pkgname, libname))
 if (is.character(dll)) {
   error_msg <- paste("Failed to load RGtk2 dynamic library:", dll)
   if (.Platform$OS.type == "windows")
     error_msg <- paste(error_msg, 
      "Please install the latest GTK+ runtime from http://gladewin32.sf.net/ and restart R")
   stop(error_msg)
 }
   

 if(is.function(.gtkArgs))
  args <- .gtkArgs()
 else
  args <- as.character(.gtkArgs)

 #if ("REventLoop" %in% rownames(installed.packages())) {
 #    library(REventLoop)
 #    eventLoop(REventLoop("R_Gtk2EventLoop"))
 #    runEventLoop()
 #} else 
 if(!(gtkInit(args)))
   print("Note: R session is headless; GTK+ not initialized")
}
