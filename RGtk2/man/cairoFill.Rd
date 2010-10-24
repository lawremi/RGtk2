\alias{cairoFill}
\name{cairoFill}
\title{cairoFill}
\description{A drawing operator that fills the current path according to the
current fill rule, (each sub-path is implicitly closed before being
filled). After \code{\link{cairoFill}}, the current path will be cleared from
the cairo context. See \code{\link{cairoSetFillRule}} and
\code{\link{cairoFillPreserve}}.}
\usage{cairoFill(cr)}
\arguments{\item{\verb{cr}}{[\code{\link{Cairo}}]  a cairo context}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
