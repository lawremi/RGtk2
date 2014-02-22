\alias{pangoTabArrayNew}
\name{pangoTabArrayNew}
\title{pangoTabArrayNew}
\description{Creates a list of \code{initial.size} tab stops. Tab stops are specified in
pixel units if \code{positions.in.pixels} is \code{TRUE}, otherwise in Pango
units. All stops are initially at position 0.}
\usage{pangoTabArrayNew(initial.size, positions.in.pixels)}
\arguments{
\item{\verb{initial.size}}{[integer]  Initial number of tab stops to allocate, can be 0}
\item{\verb{positions.in.pixels}}{[logical]  whether positions are in pixel units}
}
\value{[\code{\link{PangoTabArray}}]  the newly allocated \code{\link{PangoTabArray}},}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
