\alias{gtkContainerSetResizeMode}
\name{gtkContainerSetResizeMode}
\title{gtkContainerSetResizeMode}
\description{Sets the resize mode for the container.}
\usage{gtkContainerSetResizeMode(object, resize.mode)}
\arguments{
\item{\code{object}}{[\code{\link{GtkContainer}}]  a \code{\link{GtkContainer}}.}
\item{\code{resize.mode}}{[\code{\link{GtkResizeMode}}]  the new resize mode.}
}
\details{The resize mode of a container determines whether a resize request 
will be passed to the container's parent, queued for later execution
or executed immediately.  }
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
