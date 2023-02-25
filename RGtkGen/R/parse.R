###################################
# GIR Parsing
###################################

## For now we parse into same old lists. May want to formalize to S4.

## girepository/girnode.h is the closest thing to a schema

### Issues:

## 1) missing 'since' information: could merge multiple repositories,
## but the versions are not fully specified.

## 2) nested namespaces: not supported by GIR, but in anticipation,
## namespaces should be nested lists, with entries named by GIR
## name. Then we just recurse, while keeping a bread trail, so that we can
## resolve local symbols.

### Notes:

## See https://github.com/gtk-rs/gir-files for a good example of how
## to automatically download and transform GIR files from the various
## repositories. In particular, we could use the command line XML
## editing tool 'xmlstarlet' to reproducibly patch the GIR, so that we
## could, for example, add default values.

## Since it seems unlikely that the GIR will ever be perfect, or even
## capable of representing all the information we need (like default
## values), it may be best to support an overlay that gets merged into
## the information from the GIR. The Vala project does this with their
## ".metadata" files, see:
## https://wiki.gnome.org/Projects/Vala/Manual/GIR%20metadata%20format
## and
## https://github.com/GNOME/vala/blob/main/vapi/metadata/

## We could do that using XSLT, modifying and extending the GIR XML
## and then parsing that extended format into our API definitions.

parseGIR <- function(filename, db = list(),
                     includePaths =
                         system.file("data", "gir", package = "RGtkGen"))
{
  parseNamespace <- function(nsnode) {
    
    ## strategy is to use XPath to get vectors of attributes and then to
    ## combine them by flattening and resplitting by name
    buildEntry <- function(...) {
      attrs <- c(...)
      flat_attrs <- as.list(unlist(attrs, FALSE, FALSE))
      names(flat_attrs) <- rep(names(attrs), each = length(attrs$id))
      entries <- split(flat_attrs, seq_along(attrs$id))
      names(entries) <- attrs$id
      entries
    }

    ## yes, this loops over the nodes. it seems that XPath is not
    ## designed for this vectorized querying strategy.
    optattr <- function(nodes, attr, default) {
      sapply(nodes, xmlGetAttr, attr, default)
    }
    
    xpquery <- function(query, prefix = NULL) {
      if (!is.null(prefix)) {
        query <- paste(prefix, "/", query, sep = "")
        if (!length(grep("^[^/[]*:", prefix)))
          query <- paste(".//core:", query, sep = "")
      }
      query <- paste(query, collapse="|")
      nodes <- suppressWarnings(getNodeSet(nsnode, query, xns))
      if (is.null(nodes))
        list()
      else unlist(nodes, use.names=FALSE)
    }
    
    parseEntry <- function(prefix) {
      list(id = xpquery(c("@name", "@glib:name"), prefix))
    }
    parseType <- function(prefix) {
### NOTE: no guarantee that this macro actually exists, just convention
      getter <- xpquery("@glib:get-type", prefix)
      macro <- toupper(sub("^([^_]*)_(.*)_get_type$", "\\1_TYPE_\\2", getter))
      c(parseEntry(prefix), name = list(xpquery("@c:type", prefix)),
        typecode = list(macro))
    }
    parseTypeLiteral <- function(prefix) {
      ## handle G[S]Lists element types
### NOTE: same could happen for HashTable, but who exposes that?
      name <- xpquery(c("core:type/@c:type", "core:array/@c:type"), prefix)
      lists <- grep("^G[S]List*$", name)
      lnodes <- xpquery("type[contains(@c:type, \"SList\")]", prefix)
      name[lists] <- sapply(seq_along(lnodes), function(i) {
        subtype <- getNodeSet(lnodes[[i]], "type/@c:type", xns)
        lname <- name[lists][i]
        if (length(subtype)) {
          subtype <- gsub("*", "", subtype, fixed = TRUE)
          lname <- sub("\\*$", paste("[", subtype, "]", sep = ""), lname)
        }
        lname
      })
      nodes <- xpquery(c("core:type", "core:array"), prefix)
      ## denote arrays
      arrays <- sapply(nodes, xmlName) == "array"
      name[arrays] <- sub("\\*$", "[]", name[arrays])
      name
    }
    
    parseFields <- function(prefix, exclude = NULL) {
      types <- parseTypeLiteral(paste(prefix, "/core:field", sep = ""))
      names(types) <- xpquery("core:field/@name", prefix)
      excluded <- rep(FALSE, length(types))
      if (length(exclude))
        excluded <- seq_along(types) %in% grep(exclude, names(types))
      types <- types[!excluded]
      ## could not figure out a way to avoid looping here
      classes <- xpquery(".", prefix)
      counts <- sapply(classes, getNodeSet, "count(core:field)", xns)
      inds <- seq_along(counts)
      split(types, factor(rep(inds, counts), inds)[!excluded])
    }
    parseEnum <- function(prefix = "enumeration") {
### NOTE: we only support enums/flags with GTypes
      prefix <- paste(prefix, "[@glib:get-type]", sep = "")
      local_names <- xpquery("core:member/@name", prefix)
      c_names <- xpquery("core:member/@c:identifier", prefix)
      vals <- as.integer(xpquery("core:member/@value", prefix))
      names(vals) <- local_names
      names(c_names) <- local_names
      enums <- xpquery(".", prefix)
      counts <- sapply(enums, getNodeSet, "count(core:member)", xns)
      inds <- seq_along(counts)
      indf <- factor(rep(inds, counts), inds)
      buildEntry(c(parseType(prefix), names=list(split(c_names, indf)),
                   values = list(split(vals, indf))))
    }
    parseObject <- function() {
      buildEntry(parseType("class"),
                 list(parent = xpquery("@parent", "class"),
### NOTE: girscanner does not hide 'priv' and 'parent' fields, but Vala does
                      fields = parseFields("class", "priv|parent")))
    }
    parseInterface <- function() {
      buildEntry(parseType("interface"))
    }
    parseStruct <- function(prefix) {
      buildEntry(parseType(prefix), fields = list(parseFields(prefix)))
    }
    parseBoxed <- function() buildEntry(parseType("glib:boxed"))

### FIXME: no default values, the GIR people are working on it
    parseParameter <- function(prefix) {
### TODO: consider ownership here
      calls <- xpquery(".", prefix)
      ## parameters must have names (not '...')
      counts <- sapply(calls, getNodeSet,
                       "count(core:parameters/core:parameter[@name])", xns)
      prefix <- paste(prefix, "core:parameters/core:parameter[@name]", sep="/")
      params <- xpquery(".", prefix)
      allow_none <- optattr(params, "allow_none", FALSE)
      optional <- optattr(params, "optional", FALSE)
      entries <- buildEntry(parseEntry(prefix),
                            list(name = xpquery("@name", prefix),
                                 access = optattr(params, "direction", "in"),
                                 type = parseTypeLiteral(prefix),
                                 nullok = allow_none | optional))
      inds <- seq_along(counts)
      split(entries, factor(rep(inds, counts), inds))
    }
    
    parseCall <- function(prefix) {
### TODO: consider 'container' ownership
      ownership <- xpquery("core:return-value/@transfer-ownership", prefix)
      varargs <- xpquery("/varargs/../../../@name", prefix)
      entry <- parseEntry(prefix)
      calls <- xpquery(".", prefix)
      c(entry,
        list(name = xpquery("@c:identifier", prefix),
             return = xpquery("core:return-value/core:type/@c:type", prefix),

             owns = ownership == "full", parameters = parseParameter(prefix),
             varargs = entry$id %in% varargs,
             deprecated = optattr(calls, "deprecated", NULL)))
    }
    
    parseMethod <- function() {
      counts <- sapply(xpquery("..", "method"), getNodeSet,
                       "count(core:method)", xns)  
      objects <- xpquery("../@c:type", "method")
      buildEntry(parseCall("method"), list(ofobject = rep(objects, counts)))
    }
    parseFunction <- function() {
      buildEntry(parseCall("function"))
    }
    parseConstructor <- function() {
      call <- parseCall("constructor")
      constructorof <- xpquery("core:return-value/core:type/@name",
                               "constructor")
      buildEntry(call, list(constructorof = constructorof))
    }
    parseCallback <- function() {
      call <- parseCall("callback")
      call$name <- xpquery("@c:type", "callback")
      buildEntry(call)
    }
    parseVirtualMethod <- function() {
      entry <- buildEntry(parseCall("function"),
                          list(ofobject = xpquery("core:@invoker",
                                 "virtual-method")))
      entry$vname <- sub(paste0(collapseClassName(entry$ofobject), "_"), "",
                         entry$name)
      entry
    }

    ns <- list()
    
    ## remember namespace name and version
    ns$name <- xpquery("./@name")
    ns$version <- xpquery("./@version")
     
    ## GObject classes    
    ns$objects <- parseObject()

    ## GObject interfaces
    ns$interfaces <- parseInterface()

    ## Enumerations
    ns$enums <- parseEnum()

    ## Flags
    ns$flags <- parseEnum("bitfield")

    ## GBoxed derivatives
    ## apparently there are 3 types of boxed types: structs, union and other
### NOTE: we no longer have copy/free funcs: need to use generic ones
    ns$boxes <- c(parseBoxed(),
                  parseStruct("record[@glib:type-name]"),
                  parseStruct("union[@glib:type-name]"))
    
    ## Pointers
    pointerpred <- "not(@glib:type-name) and not(contains(@name, \"Class\")) and not(contains(@name, \"Private\")) and not(contains(@name, \"Iface\"))"
    ns$pointers <- c(parseStruct(paste("record[", pointerpred, "]", sep = "")),
                     parseStruct(paste("union[", pointerpred, "]", sep = "")))
    
    ## Functions, methods and constructors - should these be separated?

    ns$functions <- c(parseFunction(), parseMethod(), parseConstructor())

    ## Virtuals
    defs$virtuals <- parseVirtualMethod()
    
    ## User defined functions
    ns$userfunctions <- parseCallback()

### TODO: handle constants and error domains
    
    ## define mapping between type name and code, could be done at
    ## run-time but this is more efficient
    typecodes <- sapply(c(defs$objects, defs$interfaces, defs$boxes, defs$enums,
                          defs$flags, defs$pointers), `[[`, "typecode")
    typecodes <- c(CPrimitiveToGType, typecodes)
    typecodes[["GObject"]] <- "G_TYPE_OBJECT" # not included in defs
    typecodes[["GObjectClass"]] <- "G_TYPE_OBJECT"
    typecodes[["GValue"]] <- "G_TYPE_VALUE"
    typecodes[transparentTypes] <- "R_GTK_TYPE_SEXP"
    ns$typecodes <- typecodes
    
    ns
  }

  filepath <- find_file_in_paths(filename, includePaths)
  if (is.na(filepath)) {
      stop("file '", filename, "' not found") 
  }
  
  ## parse XML
  doc <- xmlParse(filepath)
  xns <- matchNamespaces(doc,
                         c(core = "http://www.gtk.org/introspection/core/1.0",
                           c = "http://www.gtk.org/introspection/c/1.0",
                           glib = "http://www.gtk.org/introspection/glib/1.0"))

  repo <- getNodeSet(doc, "/core:repository", xns)[[1]]
  
  ## load dependencies
  includes <- getNodeSet(repo, "./core:include/@name", xns)
  versions <- getNodeSet(repo, "./core:include/@version", xns)
  preparsed <- includes %in% names(db)
  preversions <- lapply(db[includes[preparsed]], `[[`, version)
### NOTE: for simplicity, we force versions to be exactly equal
  for (i in seq_along(versions))
    if (compareVersion(versions[i], preversions[i]) != 0)
      stop("namespace version conflict for ", includes[i], ": ", preversions[i],
           " already loaded but ", versions[i], " required")
  for (name in paste(includes[!preparsed], "-", versions, ".gir", sep = "")) {
    included_path <- find_file_in_paths(name, includePaths)
    if (is.na(included_path))
        stop("could not find included GIR file: ", name)
    db <- parseGIR(included_path, db)
  }
  
### NOTE: currently, only one namespace per file, because the file
### has to be named according to the namespace, for resolution of
### include elements. Should probably support sub namespaces.
  ns <- parseNamespace(getNodeSet(repo, "./core:namespace", xns))
  db[[ns$name]] <- ns ## add as a primary namespace
  db
}

find_file_in_paths <- function(name, paths) {
    paths <- c(name, file.path(paths, name))
    existing <- file.exists(paths)
    paths[which(existing)[1L]]
}
