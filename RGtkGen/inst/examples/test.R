Sys.putenv(PYTHONPATH=paste(Sys.getenv("PYTHONPATH"),"/home/larman/research/RGtkGen/inst/pygtk",sep=":"))
library(RSPython)
source("pyGen.R")
source("genCode.S")
path <- "/home/larman/research/RGtkGen/inst/data"
version <- "2.8.0"
defspath <- file.path(path, version)
libs <- c("atk.defs", "pango.defs", "gdk.defs", "gtk.defs")
libs <- c(libs, "cairo.defs") # for 2.8
#extralibs <- c("gtkmozembed.defs", "libglade.defs")
#extrapath <- file.path(path, "extra")
files <- file.path(defspath, libs)
#files <- c(files, file.path(extrapath, extralibs))
#defs<-getDefs(file.path(defspath, "gtk.defs"))
generateCodeFiles(files,dir=file.path(path, "gen"), allDefs=NULL)
