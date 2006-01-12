\alias{gtkInputRemove}
\name{gtkInputRemove}
\title{gtkInputRemove}
\description{
Removes the function with the given id.
\strong{WARNING: \code{gtk_input_remove} is deprecated and should not be used in newly-written code. Use \code{\link{gSourceRemove}} instead.}
}
\usage{gtkInputRemove(input.handler.id)}
\arguments{\item{\code{input.handler.id}}{[numeric] Identifies the function to remove.}}
\note{
This function is deprecated. You should use \code{GDK_PRIORITY_REDRAW} instead.
This function is deprecated. You should use \code{G_PRIORITY_HIGH} instead.
This function is deprecated. You should use \code{G_PRIORITY_DEFAULT_IDLE} instead.
This function is deprecated. You should use \code{G_PRIORITY_LOW} instead.
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
