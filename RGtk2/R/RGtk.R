.gtkInitCheck <- local({
  initialized <- NULL
  function(args="R")
  {
    if (is.null(initialized))
      initialized <<- .C("R_gtkInit", length(args), x=args, PACKAGE = "RGtk2")[[1]]
    initialized
  }
})
gtkInit <- .gtkInitCheck
