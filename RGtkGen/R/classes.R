# code to generate extensions of GObject classes that implement virtuals with R

genCClass <- function(name = "GObject", defs)
{
  s_name <- paste("S", name, sep="")
  type_code <- defs$typecodes[[name]]
  fun_name <- collapseClassName(name)
  get_type_name <- paste(fun_name, "get_type", sep="_")
  s_field <- paste("*((SEXP *)(o + ", invoke("sizeof", name), "))", sep="")
  class_type <- paste(name, "Class", sep="")
  
  hierarchy <- getClassHierarchy(name, defs$objects)
  virtual_classes <- sapply(defs$virtuals, function(virtual) virtual$ofobject)
  inherited <- virtual_classes %in% hierarchy
  inherited_virtuals <- defs$virtuals[inherited]
  wrapper_names <- paste("virtual", names(inherited_virtuals), sep="_")
  collapsed_classes <- sapply(virtual_classes[inherited], collapseClassName)
  actual_names <- sapply(names(collapsed_classes), function(virtual_name)
    sub(paste("^", collapsed_classes[virtual_name], "_", sep=""), "", virtual_name))
  
  mine <- virtual_classes[inherited] == name
  virtual_wrappers <- static(sapply(1:length(inherited_virtuals[mine]), function(virtual_index)
    genUserFunctionCode(inherited_virtuals[mine][[virtual_index]], defs, 
      wrapper_names[mine][virtual_index], actual_names[mine][virtual_index], virtual_index)$code))
  
  # finalizer
  finalizer <- c(
  static(declareFunction("void", paste(fun_name, "_finalize", sep=""), refType("GObject"), "o")),
  "{",
    statement(cassign(decl(refType("GObjectClass"), "p"), invoke("g_type_class_peek", type_code))),
    ind(invoke("if", field("p", "finalize")),
      statement(invoke(field("p", "finalize"), "o"))),
    statement(invoke("R_ReleaseObject", s_field)),
  "}")
  
  virtual_assigns <- cassign(field(cast(refType(paste(virtual_classes[inherited], 
    "Class", sep="")), "c"), actual_names), nameToC(wrapper_names))
  virtual_assigns <- c(virtual_assigns, 
    cassign(field(cast(refType("GObjectClass"), "c"), "finalize"), 
      nameToC(paste(fun_name, "_finalize", sep=""))))
    
  class_init_name <- paste(nameToC(fun_name), "_class_init", sep="")
  class_init <- c(
    static(declareFunction("void", class_init_name, refType(class_type), "c", prefix=F)),
    "{",
      statement(virtual_assigns),
    "}")
  
  # get_type function
  get_type <- c(
  declareFunction("GType", get_type_name, "void", NULL),
  "{",
    statement(cassign(static(decl("GType", "type")), 0)),
    "",
    ind("if (type == 0) {",
      statement(cassign(static(const(decl("GTypeInfo", "info"))), paste("{", paste("\n", c(ind(
        invoke("sizeof", class_type),
        cast("GBaseInitFunc", "NULL"), 
        cast("GBaseFinalizerFunc", "NULL"),
        cast("GClassInitFunc", class_init_name),
        cast("GClassFinalizeFunc", "NULL"),
        "NULL",
        paste(invoke("sizeof", name), "+", invoke("sizeof", "SEXP")),
        "0",
        cast("GInstanceInitFunc", "NULL"),
        "NULL",
      depth=3), ind("}", depth=2)), sep ="", collapse=",")))), "",
      statement(cassign("type", invokev("g_register_type_static", 
        type_code, lit(s_name), refName("info"), cast("GTypeFlags", 0)))),
    "}"),
    "",
    statement(returnValue("type")),
  "}")
  
  # constructor
  constructor <- c(
  declareFunction(refType("GObject"), paste(fun_name, "_new", sep=""), "SEXP", "class"),
  "{",
    statement(cassign(decl(refType("GObject"), "o"), invoke("g_object_new", 
      invokev(nameToC(get_type_name))))), 
    "",
    statement(invoke("R_PreserveObject", nameToSArg("class"))),
    statement(cassign(s_field, nameToSArg("class"))), "",
    statement(returnValue("o")),
  "}")
  
  paste(c(virtual_wrappers, finalizer, class_init, get_type, constructor), collapse = "\n")
}

genRVirtuals <- function(defs)
{
  virtual_classes <- sapply(defs$virtuals, function(virtual) virtual$ofobject)
  virtual_vectors <- sapply(unique(virtual_classes), function(virtual_class)
    named(virtual_class, invoke("c", lit(names(defs$virtuals)[virtual_classes == virtual_class]))))
  rassign(".virtuals", invoke("list", paste("\n", ind(virtual_vectors), sep=""))) 
}

