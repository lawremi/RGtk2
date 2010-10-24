rgtkgen <- dirname(dirname(getwd()))
version <- "2.20"

Sys.setenv(PYTHONPATH=paste(Sys.getenv("PYTHONPATH"), 
             file.path(rgtkgen, "inst", "pygtk"), sep = ":"))
library(RSPython)
library(rpart)

setwd(file.path(rgtkgen, "R"))
source_files <- c("pyGen.R", "genClass.R", "genCode.S", "genCons.S",
                  "genDoc.S")
sapply(source_files, source)

path <- file.path(rgtkgen, "inst", "data")
defspath <- file.path(path, "defs")
libs <- c("atk.defs", "cairo.defs", "pango.defs", "gio.defs", "gdk.defs",
          "gtk.defs")
extralibs <- c("libglade.defs")
extrapath <- file.path(defspath, "extra")
files <- file.path(defspath, version, libs)
files <- c(files, file.path(extrapath, extralibs))

library(RGtk2)

##defs<-getDefs(file.path(defspath, version, "gio.defs"))
allDefs <- generateCodeFiles(files,dir=file.path(path, "gen"), allDefs=NULL)[[1]]

allDefs <- NULL
for (f in files) allDefs <- mergeDefs(getDefs(f), allDefs)

# generating the documentation
src_dir <- "/home/larman/research/src"
subs <- c("atk-1.30.0/docs", "pango/docs",
          "glib/docs/reference/gio",
          file.path("gtk+/docs/reference",
                    c("gdk", "gtk", "gdk-pixbuf")), 
          "cairo-1.8.10/doc/public", "libglade-2.6.4/doc")
doc_dirs <- file.path(src_dir, subs, "xml")
doc_files <- sapply(doc_dirs, dir, pattern = "xml", full.names = T)

basenames <- lapply(doc_files, basename)
startWithFile <- function(f) {
  lib <- which(sapply(basenames, `%in%`, x = f))
  if (!length(lib))
    stop("'", f, "' not found")
  docs <- tail(doc_files, -lib + 1L)
  docs[[1]] <- tail(docs[[1]], -match(f, basenames[[lib]]) + 1L)
  genDocs(docs, allDefs, file.path(path, "docgen"), libraryDescriptions,
          verbose = TRUE)
}
startWithFile("gtkclipboard.xml")

genDocs(doc_files, allDefs, file.path(path, "docgen"), libraryDescriptions,
        verbose = TRUE)

## Eventually generate constructors and regen the docs

allDefs <- generateCodeFiles(files,dir=file.path(path, "gen"),
                             constructors = TRUE, allDefs=NULL)[[1]]


## exporting/importing routines for each API
deps <- list(gio = "gobject", atk = "gobject", cairo = "gobject",
             pango = "cairo", gdk = c("pango", "gio"), gtk = c("gdk", "atk"),
             libglade = "gtk")
sapply(names(deps), function(api) {
  genExports(api, file.path(path, "gen"), file.path(defspath, "exports"), 
    file.path("RGtk2", deps[[api]]))
})


## Testing GIO:
## A few tutorials: http://sjohannes.wordpress.com/?s=gio
## pygobject examples: http://git.gnome.org/browse/pygobject/tree/examples/gio
## http://svn.gnome.org/viewvc/gtkmm-documentation/trunk/examples/book/giomm/
## http://git.gnome.org/browse/gvfs/tree/programs
## most up to date: http://git.gnome.org/browse/glib/tree/gio/tests
