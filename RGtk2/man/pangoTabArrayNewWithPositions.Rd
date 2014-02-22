\alias{pangoTabArrayNewWithPositions}
\name{pangoTabArrayNewWithPositions}
\title{pangoTabArrayNewWithPositions}
\description{This is a convenience function that creates a \code{\link{PangoTabArray}}
and allows you to specify the alignment and position of each
tab stop. You \emph{must} provide an alignment
and position for \code{size} tab stops.}
\usage{pangoTabArrayNewWithPositions(size, positions.in.pixels, ...)}
\arguments{
\item{\verb{size}}{[integer]  number of tab stops in the list}
\item{\verb{positions.in.pixels}}{[logical]  whether positions are in pixel units}
\item{\verb{...}}{ additional alignment/position pairs}
}
\value{[\code{\link{PangoTabArray}}]  the newly allocated \code{\link{PangoTabArray}},}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
