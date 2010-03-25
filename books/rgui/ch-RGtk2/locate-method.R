locateMethod <- function(obj,method, where=.GlobalEnv) {
  classes <- c(attr(obj, "interfaces"), class(obj))
  sym <- paste(tolower(substring(classes, 1, 1)),
               substring(classes, 2), toupper(substring(method, 1, 1)),
               substring(method, 2), 
               sep = "")
  which <- sapply(sym, exists, where)
  if (!any(which)) 
    stop(paste("No such method", method, "for classes", paste(class(obj), 
                                                            collapse = ", ")))
  return(sym[which][1])
}
