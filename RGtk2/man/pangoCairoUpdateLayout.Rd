\alias{pangoCairoUpdateLayout}
\name{pangoCairoUpdateLayout}
\title{pangoCairoUpdateLayout}
\description{Updates the private \verb{\link{PangoContext}} of a \verb{\link{PangoLayout}} created with
\code{\link{pangoCairoCreateLayout}} to match the current transformation
and target surface of a Cairo context.}
\usage{pangoCairoUpdateLayout(cr, layout)}
\arguments{
\item{\verb{cr}}{[\verb{\link{Cairo}}]  a Cairo context}
\item{\verb{layout}}{[\verb{\link{PangoLayout}}]  a \verb{\link{PangoLayout}}, from \code{\link{pangoCairoCreateLayout}}}
}
\details{  Since  1.10}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
