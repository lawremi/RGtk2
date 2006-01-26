\alias{cairoFillPreserve}
\name{cairoFillPreserve}
\title{cairoFillPreserve}
\description{A drawing operator that fills the current path according to the
current fill rule, (each sub-path is implicitly closed before being
filled). Unlike \code{\link{cairoFill}}, cairo_fill_preserve preserves the
path within the cairo context.}
\usage{cairoFillPreserve(cr)}
\arguments{\item{\code{cr}}{[\code{\link{Cairo}}]  a cairo context}}
\details{See \code{\link{cairoSetFillRule}} and \code{\link{cairoFill}}.  }
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
