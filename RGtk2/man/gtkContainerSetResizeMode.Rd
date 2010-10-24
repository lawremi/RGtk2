\alias{gtkContainerSetResizeMode}
\name{gtkContainerSetResizeMode}
\title{gtkContainerSetResizeMode}
\description{Sets the resize mode for the container.}
\usage{gtkContainerSetResizeMode(object, resize.mode)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkContainer}}}
\item{\verb{resize.mode}}{the new resize mode}
}
\details{The resize mode of a container determines whether a resize request 
will be passed to the container's parent, queued for later execution
or executed immediately.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
