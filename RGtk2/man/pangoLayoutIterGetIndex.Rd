\alias{pangoLayoutIterGetIndex}
\name{pangoLayoutIterGetIndex}
\title{pangoLayoutIterGetIndex}
\description{Gets the current byte index. Note that iterating forward by char
moves in visual order, not logical order, so indexes may not be
sequential. Also, the index may be equal to the length of the text
in the layout, if on the \code{NULL} run (see \code{\link{pangoLayoutIterGetRun}}).}
\usage{pangoLayoutIterGetIndex(object)}
\arguments{\item{\verb{object}}{[\code{\link{PangoLayoutIter}}]  a \code{\link{PangoLayoutIter}}}}
\value{[integer]  current byte index.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
