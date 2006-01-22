\alias{gtkCListSetColumnResizeable}
\name{gtkCListSetColumnResizeable}
\title{gtkCListSetColumnResizeable}
\description{
Lets you specify whether a specified column should be resizeable
by the user.  Note that turning on resizeability for the column will
automatically shut off auto-resizing, but turning off resizeability
will NOT turn on auto-resizing.  This must be done manually via a
call to \code{\link{gtkCListSetColumnAutoResize}}.
\strong{WARNING: \code{gtk_clist_set_column_resizeable} is deprecated and should not be used in newly-written code.  
Lets you specify whether a specified column should be resizeable
by the user.  Note that turning on resizeability for the column will
automatically shut off auto-resizing, but turning off resizeability
will NOT turn on auto-resizing.  This must be done manually via a
call to \code{\link{gtkCListSetColumnAutoResize}}.}
}
\usage{gtkCListSetColumnResizeable(object, column, resizeable)}
\arguments{
\item{\code{object}}{[\code{\link{GtkCList}}] The \code{\link{GtkCList}} to affect.}
\item{\code{column}}{[integer] The column on which to set resizeability.}
\item{\code{resizeable}}{[logical] \code{TRUE} or \code{FALSE}.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
