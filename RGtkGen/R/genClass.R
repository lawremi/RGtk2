# code to generate extensions of GObject classes that implement virtuals with R

stripVirtual <- function(name, class_name)
  sub(paste("^", class_name, "_", sep=""), "", name)

mapClassType <- function(type_name) 
{
  if (type_name %in% names(classTypeMap))
    classTypeMap[type_name]
  else type_name
}
toClassType <- function(type_name, defs)
  paste(type_name, ifelse(isInterface(type_name, defs), "Iface", "Class"), sep="")

genCClass <- function(name = "GtkWidget", virtuals, defs, package = "RGtk2")
{
  fun_name <- collapseClassName(name)
  
  raw_class_type <- toClassType(name, defs)
  class_type <- mapClassType(raw_class_type)
  
  symbol <- statement(static(decl("SEXP", classSymbol(name))), depth=0)
    
  hierarchy <- getClassHierarchy(name, defs$objects)
  virtual_wrappers <- virtual_assigns <- NULL
  if (length(virtuals)) {
    wrapper_names <- paste("virtual", names(virtuals), sep="_")
    actual_names <- stripVirtual(names(virtuals), fun_name)
    virtual_wrappers <- static(sapply(1:length(virtuals), function(virtual_index)
      genUserFunctionCode(virtuals[[virtual_index]], defs, 
        wrapper_names[virtual_index], virtual_index)$code))
    virtual_assigns <- paste(
      invokev("if", paste(vecind("s", 1:length(virtuals)), "!= NULL_USER_OBJECT")),
        ind(cassign(field("c", actual_names), nameToC(wrapper_names)), depth=2),
    sep = "\n")
  }
  
  parent_class_init <- NULL
  if (length(hierarchy) > 1) {
    parent <- hierarchy[2]
    parent_class_init <- invokev(paste(nameToC(collapseClassName(parent)), "class_init", sep="_"),
        cast(refType(mapClassType(paste(parent, "Class", sep=""))), "c"), "e")
  }
    
  class_init_name <- paste(nameToC(fun_name), "_class_init", sep="")
  class_init_arg_types <- c(refType(class_type), "SEXP")
  class_init_arg_names <- c("c", "e")
  declaration <- declareFunction("void", class_init_name, class_init_arg_types, 
    class_init_arg_names, prefix=F)
  import_code <- importFunc(class_init_name, "none", class_init_arg_types, 
    class_init_arg_names, package)
  export_code <- exportFunc(class_init_name, class_init_arg_types, 
    class_init_arg_names, package)
  class_init <- c(
    declaration,
    "{",
      statement(decl("SEXP", "s")),
      "",
      statement(cassign(classSymbol(name), invoke("install", lit(name)))),
      statement(cassign("s", invokev("findVar", classSymbol(name), "e"))),
      statement(cassign(invokev("G_STRUCT_MEMBER", "SEXP", "c", invoke("sizeof", class_type)), "e")),
      "",
      if (length(parent_class_init))
        c(statement(parent_class_init),
        ""),
      if (length(virtual_assigns))
        statement(virtual_assigns),
    "}")
  
  class_wrappers <- unlist(sapply(virtuals, function(virtual) {
    fun_name <- paste(collapseClassName(raw_class_type), virtual$vname, sep="_")
    if (!(fun_name %in% badCFuncs))
      genCCode(virtual, defs, fun_name)$code
    else NULL
  }))
  
  list(decl = statement(declaration, depth=0), 
    code = paste(c(symbol, virtual_wrappers, class_init, class_wrappers), collapse = "\n"),
    import = import_code, export = export_code)
}

genRVirtuals <- function(virtual_names, defs)
{
  virtuals <- defs$virtuals[virtual_names]
  virtual_classes <- sapply(virtuals, function(virtual) virtual$ofobject)
  short_names <- sapply(virtuals, function(virtual) virtual$vname)
  #print(virtual_classes)
  virtual_header <- "if(!exists('.virtuals')) .virtuals <- new.env()"
  #virtual_vectors <- sapply(unique(virtual_classes), function(virtual_class)
  #  named(virtual_class, invoke("c", lit(short_names[virtual_classes == virtual_class]))))
  virtual_assigns <- sapply(unique(virtual_classes), function(virtual_class)
    invokev("assign", lit(virtual_class), 
      invoke("c", lit(short_names[virtual_classes == virtual_class])), ".virtuals"))
  #virtual_list <- rassign(".virtuals", invokev("c", ".virtuals", 
  #  invoke("list", paste("\n", ind(virtual_vectors), sep=""))))
  wrappers <- sapply(virtuals, function(virtual) {
    genRCode(virtual, defs, paste(collapseClassName(toClassType(virtual$ofobject, defs)), 
      virtual$vname, sep="_"))
  })
  #paste(c(virtual_header, virtual_list, "", wrappers), collapse="\n")
  paste(c(virtual_header, virtual_assigns, "", wrappers), collapse="\n")
}

