\alias{cairoInFill}
\name{cairoInFill}
\title{cairoInFill}
\description{Tests whether the given point is inside the area that would be
affected by a \code{\link{cairoFill}} operation given the current path and
filling parameters. Surface dimensions and clipping are not taken
into account.}
\usage{cairoInFill(cr, x, y)}
\arguments{
\item{\verb{cr}}{[\code{\link{Cairo}}]  a cairo context}
\item{\verb{x}}{[numeric]  X coordinate of the point to test}
\item{\verb{y}}{[numeric]  Y coordinate of the point to test}
}
\details{See \code{\link{cairoFill}}, \code{\link{cairoSetFillRule}} and \code{\link{cairoFillPreserve}}.  }
\value{[logical]  A non-zero value if the point is inside, or zero if
outside.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
