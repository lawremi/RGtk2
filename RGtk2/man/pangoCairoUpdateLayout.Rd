\alias{pangoCairoUpdateLayout}
\name{pangoCairoUpdateLayout}
\title{pangoCairoUpdateLayout}
\description{Updates the private \code{\link{PangoContext}} of a \code{\link{PangoLayout}} created with
\code{\link{pangoCairoCreateLayout}} to match the current transformation
and target surface of a Cairo context.}
\usage{pangoCairoUpdateLayout(cr, layout)}
\arguments{
\item{\verb{cr}}{[\code{\link{Cairo}}]  a Cairo context}
\item{\verb{layout}}{[\code{\link{PangoLayout}}]  a \code{\link{PangoLayout}}, from \code{\link{pangoCairoCreateLayout}}}
}
\details{  Since 1.10}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
