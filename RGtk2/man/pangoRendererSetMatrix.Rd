\alias{pangoRendererSetMatrix}
\name{pangoRendererSetMatrix}
\title{pangoRendererSetMatrix}
\description{Sets the transformation matrix that will be applied when rendering.}
\usage{pangoRendererSetMatrix(object, matrix)}
\arguments{
\item{\verb{object}}{a \code{\link{PangoRenderer}}}
\item{\verb{matrix}}{a \code{\link{PangoMatrix}}, or \code{NULL} to unset any existing matrix.
 (No matrix set is the same as setting the identity matrix.)}
}
\details{Since 1.8}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
