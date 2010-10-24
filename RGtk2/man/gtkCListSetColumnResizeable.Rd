\alias{gtkCListSetColumnResizeable}
\name{gtkCListSetColumnResizeable}
\title{gtkCListSetColumnResizeable}
\description{
Lets you specify whether a specified column should be resizeable
by the user.  Note that turning on resizeability for the column will
automatically shut off auto-resizing, but turning off resizeability
will NOT turn on auto-resizing.  This must be done manually via a
call to \code{\link{gtkCListSetColumnAutoResize}}.
\strong{WARNING: \code{gtk_clist_set_column_resizeable} is deprecated and should not be used in newly-written code.}
}
\usage{gtkCListSetColumnResizeable(object, column, resizeable)}
\arguments{
\item{\verb{object}}{The \code{\link{GtkCList}} to affect.}
\item{\verb{column}}{The column on which to set resizeability.}
\item{\verb{resizeable}}{\code{TRUE} or \code{FALSE}.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
