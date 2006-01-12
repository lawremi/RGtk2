\alias{gtkIdleRemove}
\name{gtkIdleRemove}
\title{gtkIdleRemove}
\description{
Removes the idle function with the given id.
\strong{WARNING: \code{gtk_idle_remove} is deprecated and should not be used in newly-written code. Use \code{\link{gSourceRemove}} instead.}
}
\usage{gtkIdleRemove(idle.handler.id)}
\arguments{\item{\code{idle.handler.id}}{[numeric] Identifies the idle function to remove.}}
\note{
This function is deprecated. You should use \code{GDK_PRIORITY_REDRAW} instead.
This function is deprecated. You should use \code{G_PRIORITY_HIGH} instead.
This function is deprecated. You should use \code{G_PRIORITY_DEFAULT_IDLE} instead.
This function is deprecated. You should use \code{G_PRIORITY_LOW} instead.
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
