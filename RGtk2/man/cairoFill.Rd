\alias{cairoFill}
\name{cairoFill}
\title{cairoFill}
\description{A drawing operator that fills the current path according to the
current fill rule, (each sub-path is implicitly closed before being
filled). After cairo_fill, the current path will be cleared from
the cairo context. See \code{\link{cairoSetFillRule}} and
\code{\link{cairoFillPreserve}}.}
\usage{cairoFill(cr)}
\arguments{\item{\code{cr}}{[\code{\link{Cairo}}]  a cairo context}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
