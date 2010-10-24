\alias{cairoFillPreserve}
\name{cairoFillPreserve}
\title{cairoFillPreserve}
\description{A drawing operator that fills the current path according to the
current fill rule, (each sub-path is implicitly closed before being
filled). Unlike \code{\link{cairoFill}}, \code{\link{cairoFillPreserve}} preserves the
path within the cairo context.}
\usage{cairoFillPreserve(cr)}
\arguments{\item{\verb{cr}}{[\code{\link{Cairo}}]  a cairo context}}
\details{See \code{\link{cairoSetFillRule}} and \code{\link{cairoFill}}.  }
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
