\alias{pangoContextSetMatrix}
\name{pangoContextSetMatrix}
\title{pangoContextSetMatrix}
\description{Sets the transformation matrix that will be applied when rendering
with this context. Note that reported metrics are in the user space
coordinates before the application of the matrix, not device-space
coordinates after the application of the matrix. So, they don't scale
with the matrix, though they may change slightly for different
matrices, depending on how the text is fit to the pixel grid.}
\usage{pangoContextSetMatrix(object, matrix)}
\arguments{
\item{\verb{object}}{[\code{\link{PangoContext}}]  a \code{\link{PangoContext}}}
\item{\verb{matrix}}{[\code{\link{PangoMatrix}}]  a \code{\link{PangoMatrix}}, or \code{NULL} to unset any existing matrix.
 (No matrix set is the same as setting the identity matrix.)}
}
\details{  Since 1.6}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
