\alias{gtkContainerSetReallocateRedraws}
\name{gtkContainerSetReallocateRedraws}
\title{gtkContainerSetReallocateRedraws}
\description{Sets the \code{reallocate.redraws} flag of the container to the given value.}
\usage{gtkContainerSetReallocateRedraws(object, needs.redraws)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkContainer}}}
\item{\verb{needs.redraws}}{the new value for the container's \code{reallocate.redraws} flag}
}
\details{Containers requesting reallocation redraws get automatically
redrawn if any of their children changed allocation.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
