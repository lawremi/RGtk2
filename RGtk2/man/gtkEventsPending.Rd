\alias{gtkEventsPending}
\name{gtkEventsPending}
\title{gtkEventsPending}
\description{Checks if any events are pending. This can be used to update the GUI 
and invoke timeouts etc. while doing some time intensive computation.}
\usage{gtkEventsPending()}
\value{[logical] \code{TRUE} if any events are pending, \code{FALSE} otherwise.}
\note{
This function is deprecated. You should use \code{GDK_PRIORITY_REDRAW} instead.
This function is deprecated. You should use \code{G_PRIORITY_HIGH} instead.
This function is deprecated. You should use \code{G_PRIORITY_DEFAULT_IDLE} instead.
This function is deprecated. You should use \code{G_PRIORITY_LOW} instead.
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
