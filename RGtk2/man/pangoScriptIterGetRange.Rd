\alias{pangoScriptIterGetRange}
\name{pangoScriptIterGetRange}
\title{pangoScriptIterGetRange}
\description{Gets information about the range to which \code{iter} currently points.
The range is the set of locations p where *start <= p < *end.
(That is, it doesn't include the character stored at *end)}
\usage{pangoScriptIterGetRange(object)}
\arguments{\item{\verb{object}}{[\code{\link{PangoScriptIter}}]  a \code{\link{PangoScriptIter}}}}
\details{  Since 1.4}
\value{
A list containing the following elements:
\item{\verb{start}}{[char]  location to store start position of the range, or \code{NULL}}
\item{\verb{end}}{[char]  location to store end position of the range, or \code{NULL}}
\item{\verb{script}}{[\code{\link{PangoScript}}]  location to store script for range, or \code{NULL}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
