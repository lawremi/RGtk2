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
   warning("Failed to load RGtk2 dynamic library:", dll)
   .install_system_dependencies()
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
 if(!(gtkInit(args))) {
   message("R session is headless; GTK+ not initialized.")
   if (length(grep("darwin", R.version$platform)))
     message("Please try running R inside an X11 terminal.")
 }
}

.install_system_dependencies <- function()
{
  windows_config <- list(
    source = F,
    gtk_url = "http://downloads.sourceforge.net/gladewin32/gtk-2.10.11-win32-1.exe",
    installer = function(path) {
      shell(path)
    }
  )
  
  darwin_config <- list(
    source = F,
    gtk_url = "http://r.research.att.com/gtk2-runtime.dmg", 
    installer = function(path) {
      system(paste("hdiutil attach ", path, sep=""))
      system("open '/Volumes/GTK+ 2.10.11 run-time/gtk2-runtime.pkg'")
      system("hdiutil detach '/Volumes/GTK+ 2.10.11 run-time'")
    }
  )
  
  unix_config <- NULL
  
  gtk_web <- "http://www.gtk.org"
  
  install_system_dep <- function(dep_name, dep_url, dep_web, installer)
  {
    if (!interactive()) {
      cat("Please install ", dep_name, " from ", dep_url)
      return()
    }
    choice <- menu(paste(c("Install", "Do not install"), dep_name), T, 
      paste("Need", dep_name, "?"))
    if (choice == 1) {
      path <- file.path(tempdir(), basename(dep_url))
      if (download.file(dep_url, path, mode="wb") > 0)
        stop("Failed to download ", dep_name)
      installer(path)
    }
    print(paste("Learn more about", dep_name, "at", dep_web))
  }
  
  install_all <- function() {
    if (.Platform$OS.type == "windows")
      config <- windows_config
    else if (length(grep("darwin", R.version$platform))) 
      config <- darwin_config
    else config <- unix_config
    
    if (is.null(config))
      stop("Sorry this platform is not yet supported by the automatic GTK+ installer.",
        "Please install GTK+ manually, if necessary. See: ", gtk_web)
    
    install_system_dep("GTK+", config$gtk_url, gtk_web, config$installer)
  }
  
  install_all()
  
  print("PLEASE RESTART R BEFORE TRYING TO LOAD THE PACKAGE AGAIN")
}
