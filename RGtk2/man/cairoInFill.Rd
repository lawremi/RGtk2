\alias{cairoInFill}
\name{cairoInFill}
\title{cairoInFill}
\description{Tests whether the given point is inside the area that would be
filled by doing a \code{\link{cairoFill}} operation on \code{cr} given the current
path and filling parameters.}
\usage{cairoInFill(cr, x, y)}
\arguments{
\item{\code{cr}}{[\code{\link{Cairo}}]  a cairo context}
\item{\code{x}}{[numeric]  X coordinate of the point to test}
\item{\code{y}}{[numeric]  Y coordinate of the point to test}
}
\details{See \code{\link{cairoFill}}, \code{\link{cairoSetFillRule}} and \code{\link{cairoFillPreserve}}.  }
\value{[logical]  A non-zero value if the point is inside, or zero if
outside.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
