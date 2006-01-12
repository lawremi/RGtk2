\alias{gtkInputAddFull}
\name{gtkInputAddFull}
\title{gtkInputAddFull}
\description{
Registers a function to be called when a condition becomes true 
on a file descriptor.
\strong{WARNING: \code{gtk_input_add_full} is deprecated and should not be used in newly-written code. Use \code{gIoAddWatchFull()} instead.}
}
\usage{gtkInputAddFull(source, condition, fun, data = NULL)}
\arguments{
\item{\code{source}}{[integer] a file descriptor.}
\item{\code{condition}}{[\code{\link{GdkInputCondition}}] the condition.}
\item{\code{data}}{[R object] callback data passed to \code{function}.}
}
\value{[numeric] A unique id for the event source; to be used with \code{\link{gtkInputRemove}}.}
\note{
This function is deprecated. You should use \code{GDK_PRIORITY_REDRAW} instead.
This function is deprecated. You should use \code{G_PRIORITY_HIGH} instead.
This function is deprecated. You should use \code{G_PRIORITY_DEFAULT_IDLE} instead.
This function is deprecated. You should use \code{G_PRIORITY_LOW} instead.
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
