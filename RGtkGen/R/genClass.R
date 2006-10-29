# code to generate extensions of GObject classes that implement virtuals with R

stripVirtual <- function(name, class_name)
  sub(paste("^", class_name, "_", sep=""), "", name)
  
genCClass <- function(name = "GtkWidget", defs, interface = F)
{
  fun_name <- collapseClassName(name)
  class_type <- paste(name, ifelse(interface, "Iface", "Class"), sep="")
  
  symbol <- statement(static(cassign(decl("SEXP", classSymbol(name)), 
    invoke("install", lit(nameToC(name))))), depth=0)
    
  hierarchy <- getClassHierarchy(name, defs$objects)
  virtual_classes <- sapply(defs$virtuals, function(virtual) virtual$ofobject)
  virtuals <- defs$virtuals[virtual_classes == name]
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
        cast(refType(paste(parent, "Class", sep="")), "c"), "s")
  }
    
  class_init_name <- paste(nameToC(fun_name), "_class_init", sep="")
  declaration <- declareFunction("void", 
    class_init_name, c(refType(class_type), "SEXP"), c("c", "e"), prefix=F)
  class_init <- c(
    declaration,
    "{",
      statement(cassign(decl("SEXP", "s"), invokev("findVar", classSymbol(name), "e"))),
      "",
      statement(cassign(invokev("G_STRUCT_MEMBER", "SEXP", "c", invoke("sizeof", class_type)), "e")),
      "",
      if (length(parent_class_init))
        c(statement(parent_class_init),
        ""),
      if (length(virtual_assigns))
        statement(virtual_assigns),
    "}")
  
  list(decl = statement(declaration, depth=0), 
    code = paste(c(symbol, virtual_wrappers, class_init), collapse = "\n"))
}

genRVirtuals <- function(virtual_names, defs)
{
  virtuals <- defs$virtuals[virtual_names]
  virtual_classes <- sapply(virtuals, function(virtual) virtual$ofobject)
  #print(virtual_classes)
  virtual_vectors <- sapply(unique(virtual_classes), function(virtual_class)
    named(virtual_class, invoke("c", lit(stripVirtual(virtual_names[virtual_classes == virtual_class], 
    collapseClassName(virtual_class))))))
  rassign(".virtuals", invokev("c", ".virtuals", invoke("list", paste("\n", ind(virtual_vectors), sep="")))) 
}

