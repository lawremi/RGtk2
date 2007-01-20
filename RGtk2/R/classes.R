# how are the overrides structured?
  # list(
  #   GtkWidget = list(method1 = function() {...},
  #                    method2 = function() {...},
  #                    ...
  #               ),
  #   GtkContainer = list(...),
  #   ...
  # )
  #
  
gClass <- function(name, parent = "GObject", class_def = NULL)
{
  virtuals <- as.list(.virtuals)
  
  # make sure name is valid
  
  name <- as.character(name)
  if (!length(name) || nchar(name) < 3)
    stop("Type name must be coerceable to a string and be at least 3 characters long")
  invalid_chars <- sub("^[a-zA-Z_][a-zA-Z+-_0-9]*", "", name)
  if (nchar(invalid_chars))
    stop("The characters \"", invalid_chars, "\" are invalid. Names must start with",
    " a letter or '_' and contain only letters, numbers, or any of '+-_'")
  
  # validate parent type
  
  parent <- as.character(parent)
  full_hierarchy <- gTypeGetAncestors(parent)
  if (!length(full_hierarchy) || full_hierarchy[length(full_hierarchy)] != "GObject")
    stop("Parent type ", parent, " is not a GObject-derived type")
  
  # process class definition
  
  reserved <- c(".props", ".initialize", ".signals")
  class_list <- as.list(class_def)
  types <- class_list[!(names(class_list) %in% reserved)]
  known_types <- names(types) %in% names(virtuals)
  if (any(!known_types))
    warning("The types ", paste(names(types)[!known_types], collapse=","), 
      " are not recognized")
  types <- types[known_types]
  ancestors <- lapply(names(types), gTypeGetAncestors)
  interfaces <- as.logical(sapply(ancestors, function(hierarchy) 
    hierarchy[length(hierarchy)] == "GInterface"))
  classes <- types[!interfaces]
  interface_names <- names(types)[interfaces]
  
  # try to detect problems in class definition
  
  ancestors <- ancestors[!interfaces]
  ancestor_lengths <- sapply(ancestors, length)
  parallel_hierarchies <- duplicated(ancestor_lengths)
  if (any(parallel_hierarchies))
    stop("The following classes have parallel hierarchies: ", 
      paste(sapply(ancestor_lengths[parallel_hierarchies], function(dup) 
        paste("(", paste(classes[ancestor_lengths == dup], collapse=","), ")", sep=""),
      collapse=",")))
  
  inconsistents <- !(unlist(ancestors) %in% full_hierarchy)
  if (any(inconsistents))
    stop("Inconsistent hierarchy detected. The classes ", 
      paste(unique(unlist(ancestors)[inconsistents]), collapse=","),
      " are not present in the full hierarchy: ", paste(full_hierarchy, collapse=","))
  
  # fill in the gaps
  
  missing_classes <- which(!(full_hierarchy %in% names(classes)))
  types[full_hierarchy[missing_classes]] <- replicate(length(missing_classes), list())
  
  sapply(names(types), function(type_name)
      types[[type_name]] <<- types[[type_name]][virtuals[[type_name]]])
  
  # check init function
  
  init <- class_list[[".init"]]
  if (!is.null(init))
    init <- as.function(init)
  
  # check property paramspecs
  
  props <- lapply(class_list[[".props"]], as.GParamSpec)
  
  # check signals
  
  signal_fields <- c("name", "param_types", "ret_type", "flags")
  signals <- lapply(class_list[[".signals"]], function(signal) {
    signal <- as.struct(signal, "GSignal", signal_fields)
    name <- as.character(signal[[1]])
    invalid_chars <- sub("^[a-zA-Z][a-zA-Z_-]*", "", name)
    if (nchar(invalid_chars))
      stop("Invalid signal name: ", name, ". Signal names must start with a letter",
        " and contain only letters, '-', or '_'")
    signal[[1]] <- name
    flags <- signal[[4]]
    if (is.null(flags))
      flags <- c("run-last", "action")
    if (is.character(flags))
      flags <- sum(GSignalFlags[flags])
    signal[[4]] <- as.numeric(flags)
    if (is.null(signal[[3]]))
      signal[[3]] <- "void"
    signal[[3]] <- as.GType(signal[[3]])
    if (is.null(signal[[2]]))
      signal[[2]] <- "void"
    signal[[2]] <- lapply(signal[[2]], as.GType)
    signal
  })
  
  # create new type that extends specified class and implements specified interfaces
  
  get_class_init_funcs <- function(class_name) paste("S", sapply(class_name, .collapseClassName),
    "class_init", sep="_")
  class_init_funcs <- get_class_init_funcs(full_hierarchy)
  parent_class_init <- class_init_funcs[sapply(class_init_funcs, is.loaded)][1]
  class_init_sym <- getNativeSymbolInfo(parent_class_init)$address
  interface_init_syms <- NULL
  if (length(interface_names))
    interface_init_syms <- sapply(getNativeSymbolInfo(get_class_init_funcs(interface_names)),
      function(symbol) symbol$address)
  
  class_env <- .as.environment.list(types)
  assign(".initialize", init, class_env)
  
  .RGtkCall("S_gobject_class_new", name, parent, interface_names, 
    class_init_sym, interface_init_syms, class_env, props, signals)
}

registerVirtuals <- function(virtuals)
{
  virtuals <- as.environment(virtuals)
  sapply(ls(virtuals), function(virtual) 
    assign(virtual, get(virtual, virtuals), .virtuals))
}
unregisterVirtuals <- function(virtuals)
{
  virtuals <- as.environment(virtuals)
  eapply(virtuals, rm, .virtuals)
}

# useful for chaining up
# obj$parentClass()$doSomething(obj, ...)
gObjectParentClass <- function(obj)
{
  gTypeGetClass(class(obj)[2])
}
