\alias{pangoRendererGetMatrix}
\name{pangoRendererGetMatrix}
\title{pangoRendererGetMatrix}
\description{Gets the transformation matrix that will be applied when
rendering. See \code{\link{pangoRendererSetMatrix}}.}
\usage{pangoRendererGetMatrix(object)}
\arguments{\item{\verb{object}}{[\code{\link{PangoRenderer}}]  a \code{\link{PangoRenderer}}}}
\details{  Since 1.8}
\value{[\code{\link{PangoMatrix}}]  the matrix, or \code{NULL} if no matrix has been set
 (which is the same as the identity matrix).}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
