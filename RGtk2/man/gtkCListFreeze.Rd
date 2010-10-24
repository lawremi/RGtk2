\alias{gtkCListFreeze}
\name{gtkCListFreeze}
\title{gtkCListFreeze}
\description{
Causes the \code{\link{GtkCList}} to stop updating its visuals until a matching call to
\code{\link{gtkCListThaw}} is made.  This function is useful if a lot of changes
will be made to the widget that may cause a lot of visual updating to
occur.  Note that calls to \code{\link{gtkCListFreeze}} can be nested.
\strong{WARNING: \code{gtk_clist_freeze} is deprecated and should not be used in newly-written code.}
}
\usage{gtkCListFreeze(object)}
\arguments{\item{\verb{object}}{The \code{\link{GtkCList}} to freeze.}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
