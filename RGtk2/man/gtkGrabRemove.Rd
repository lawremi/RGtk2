\alias{gtkGrabRemove}
\name{gtkGrabRemove}
\title{gtkGrabRemove}
\description{Removes the grab from the given widget. You have to pair calls to \code{\link{gtkGrabAdd}}
and \code{\link{gtkGrabRemove}}.}
\usage{gtkGrabRemove(object)}
\arguments{\item{\verb{object}}{The widget which gives up the grab.}}
\details{If \code{widget} does not have the grab, this function does nothing.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
