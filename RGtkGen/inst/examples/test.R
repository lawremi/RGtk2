version <- "2.10"

Sys.putenv(PYTHONPATH=paste(Sys.getenv("PYTHONPATH"),"/home/larman/research/RGtk2/RGtkGen/inst/pygtk",sep=":"))
library(RSPython)
library(rpart)
source("pyGen.R")
source("genCode.S")
source("genCons.S")
path <- "/home/larman/research/RGtk2/RGtkGen/inst/data"
defspath <- file.path(path, "defs")
libs <- c("atk.defs", "cairo.defs", "pango.defs", "gdk.defs", "gtk.defs")
extralibs <- c("libglade.defs")
extrapath <- file.path(defspath, "extra")
files <- file.path(defspath, version, libs)
files <- c(files, file.path(extrapath, extralibs))

library(RGtk2)

#defs<-getDefs(file.path(defspath, version, "gtk.defs"))
#allDefs <- generateCodeFiles(files,dir=file.path(path, "gen"), allDefs=NULL)[[1]]

allDefs <- NULL
for (f in files) allDefs <- mergeDefs(getDefs(f), allDefs)

# generating the documentation
source("genDoc.S")
src_dir <- "/home/larman/research/src"
subs <- c("atk-1.10.1/docs", "pango-1.10.1/docs",
    file.path("gtk+-2.8.8/docs/reference", c("gdk", "gtk", "gdk-pixbuf")), 
	"cairo-1.0.2/doc/public", "libglade-2.5.1/doc")
doc_dirs <- file.path(src_dir, subs, "xml")
doc_files <- sapply(doc_dirs, dir, pattern = "xml", full.names = T)

#defs <- getDefs(files[1])
#doc_file <- doc_files[[1]][11]
#genDoc(doc_file, defs, file.path(path, "docgen"))
#doc_files[[4]] <- doc_files[[4]][-(1:which(sapply(doc_files[[4]], basename) == "gtkcheckmenuitem.xml"))]
#source("genDoc.S")
genDocs(doc_files, allDefs, file.path(path, "docgen"), libraryDescriptions, verbose = T)

