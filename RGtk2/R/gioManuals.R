
## use sprintf() to handle var args
gSimpleAsyncResultNewError <-
  function(source.object, callback, user.data, domain, code, format, ...)
{
  checkPtrType(source.object, "GObject")
  callback <- as.function(callback)
  
  domain <- as.GQuark(domain)
  code <- as.integer(code)
  format <- sprintf(format, ...)

  w <- .RGtkCall("S_g_simple_async_result_new_error", source.object, callback,
                 user.data, domain, code, format, PACKAGE = "RGtk2")

  return(w)
}
gSimpleAsyncResultSetError <-
  function(object, domain, code, format, ...)
{
  checkPtrType(object, "GSimpleAsyncResult")
  domain <- as.GQuark(domain)
  code <- as.integer(code)
  format <- sprintf(format, ...)

  w <- .RGtkCall("S_g_simple_async_result_set_error", object, domain, code,
                 format, PACKAGE = "RGtk2")

  return(invisible(w))
}
gSimpleAsyncReportErrorInIdle <-
  function(object, callback, user.data, domain, code, format, ...)
{
  checkPtrType(object, "GObject")
  callback <- as.function(callback)
  
  domain <- as.GQuark(domain)
  code <- as.integer(code)
  format <- sprintf(format, ...)

  w <- .RGtkCall("S_g_simple_async_report_error_in_idle", object, callback,
                 user.data, domain, code, format, PACKAGE = "RGtk2")

  return(w)
}

## varargs, property settings
gAsyncInitableNewAsync <-
  function(object.type, io.priority, cancellable, callback, user.data, ...)
{
  object.type <- as.GType(object.type)
  io.priority <- as.integer(io.priority)
  checkPtrType(cancellable, "GCancellable")
  callback <- as.function(callback)
  
  props <- list(...)
  if (is.null(names(props)))
    stop("Property values in '...' must be named")

  w <- .RGtkCall("S_g_async_initable_new_async", object.type, io.priority,
                 cancellable, callback, user.data, props, PACKAGE = "RGtk2")

  return(w)
}
