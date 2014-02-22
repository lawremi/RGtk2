\alias{pangoContextGetMatrix}
\name{pangoContextGetMatrix}
\title{pangoContextGetMatrix}
\description{Gets the transformation matrix that will be applied when
rendering with this context. See \code{\link{pangoContextSetMatrix}}.}
\usage{pangoContextGetMatrix(object)}
\arguments{\item{\verb{object}}{[\code{\link{PangoContext}}]  a \code{\link{PangoContext}}}}
\details{  Since 1.6}
\value{[\code{\link{PangoMatrix}}]  the matrix, or \code{NULL} if no matrix has been set
 (which is the same as the identity matrix).}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
