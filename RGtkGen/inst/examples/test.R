version <- "2.12"

Sys.setenv(PYTHONPATH=paste(Sys.getenv("PYTHONPATH"), 
  "/home/larman/research/gui/RGtk2/RGtkGen/inst/pygtk",sep=":"))
library(RSPython)
library(rpart)

setwd("/home/larman/research/gui/RGtk2/RGtkGen/R")
source_files <- c("pyGen.R", "genClass.R", "genCode.S", "genCons.S",
                  "genDoc.S")
sapply(source_files, source)

path <- "/home/larman/research/gui/RGtk2/RGtkGen/inst/data"
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
src_dir <- "/home/larman/research/src"
subs <- c("atk-1.22.0/docs", "pango-1.20.0/docs",
    file.path("gtk+-2.12.8/docs/reference", c("gdk", "gtk", "gdk-pixbuf")), 
	"cairo-1.5.12/doc/public", "libglade-2.6.2/doc")
doc_dirs <- file.path(src_dir, subs, "xml")
doc_files <- sapply(doc_dirs, dir, pattern = "xml", full.names = T)

#defs <- getDefs(files[1])
#doc_file <- doc_files[[1]][11]
#genDoc(doc_file, defs, file.path(path, "docgen"))
#doc_files[[4]] <- doc_files[[4]][-(1:(which(sapply(doc_files[[4]], basename) == "gtktreemodelfilter.xml")-1))]
#source("genDoc.S")
#genDocs(doc_files[4:length(doc_files)], allDefs, file.path(path, "docgen"), libraryDescriptions, verbose = T)
genDocs(doc_files, allDefs, file.path(path, "docgen"), libraryDescriptions, verbose = F)

# exporting/importing routines for each API
deps <- list(atk = "gobject", cairo = "gobject", pango = "cairo", 
  gdk = "pango", gtk = c("gdk", "atk"), libglade = "gtk")
sapply(c("atk", "cairo", "pango", "gdk", "gtk", "libglade"), function(api) {
  genExports(api, file.path(path, "gen"), file.path(defspath, "exports"), 
    file.path("RGtk2", deps[[api]]))
})
