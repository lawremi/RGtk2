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
  known_types <- names(types) %in% names(.virtuals)
  if (any(!known_types))
    warning("The types ", paste(names(types)[!known_types], collapse=","), 
      " are not recognized")
  types <- types[known_types]
  ancestors <- lapply(names(types), gTypeGetAncestors)
  interfaces <- sapply(ancestors, function(hierarchy) 
    hierarchy[length(hierarchy)] == "GInterface")
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
      types[[type_name]] <<- types[[type_name]][.virtuals[[type_name]]])
  
  # check init function
  
  init <- class_list[[".init"]]
  if (!is.null(init))
    init <- as.function(init)
  
  # check property paramspecs
  
  props <- lapply(class_list[[".props"]], as.GParamSpec)
  
  # check signals
  
  signals <- lapply(class_list[[".signals"]], function(signal) {
    name <- as.character(signal[[1]])
    invalid_chars <- sub("^[a-zA-Z][a-zA-Z_-]*", "", name)
    if (nchar(invalid_chars))
      stop("Invalid signal name: ", name, ". Signal names must start with a letter",
        " and contain only letters, '-', or '_'")
    ret_type <- as.GType(signal[[2]])
    param_types <- sapply(signal[[3]], as.GType)
    list(name = name, ret_type = ret_type, param_types = param_types)
  })
  
  # create new type that extends specified class and implements specified interfaces
  
  class_init_func <- function(class_name) paste("S", collapseClassName(class_name), "class_init", sep="_")
  class_init_sym <- getNativeSymbolInfo(class_init_func(parent))$address
  interface_init_syms <- NULL
  if (length(interface_names))
    interface_init_syms <- sapply(getNativeSymbolInfo(class_init_func(interface_names)),
      function(symbol) symbol$address)
  
  class_env <- as.environment.list(types)
  assign(".initialize", init, class_env)
  
  # create an environment for storing properties
  prop_env <- new.env(T, emptyenv())
  assign(".props", prop_env, class_env)
  
  .RGtkCall("S_gobject_class_new", name, parent, interface_names, 
    class_init_sym, interface_init_syms, class_env, props, signals)
}
