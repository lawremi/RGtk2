# how is the definition structured?
  # list(
  #   GtkWidget = list(method1 = function() {...},
  #                    method2 = function() {...},
  #                    ...
  #               ),
  #   GtkContainer = list(...),
  #   ...
  # )
  #
  
gClass <- function(name, parent = "GtkWidget", class_def)
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
  
  class_list <- as.list(class_def)
  known_types <- names(class_list) %in% names(.virtuals)
  if (any(!known_types))
    warning("The types ", paste(names(class_list)[!known_types], collapse=","), 
      " are not recognized")
  types <- class_list[known_types]
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
  
  missing_classes <- !(full_hierarchy %in% names(classes))
  types[full_hierarchy[missing_classes]] <- list()
  
  sapply(names(types), function(type_name)
      types[[type_name]] <<- types[[type_name]][.virtuals[[type_name]]])
  
  # create new type that extends specified class and implements specified interfaces
  
  class_init_func <- function(class_name) paste("S", class_name, "class_init", sep="_")
  class_init_sym <- getNativeSymbolInfo(class_init_func(parent))
  interface_init_syms <- getNativeSymbolInfo(class_init_func(interface_names))
  
  .RGtkCall("S_gobject_class_new", name, parent, interface_names, 
    class_init_sym, interface_init_syms, as.environment(types))
}
