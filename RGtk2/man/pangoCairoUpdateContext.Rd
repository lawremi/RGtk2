\alias{pangoCairoUpdateContext}
\name{pangoCairoUpdateContext}
\title{pangoCairoUpdateContext}
\description{Updates a \verb{\link{PangoContext}} previously created for use with Cairo to
match the current transformation and target surface of a Cairo
context. If any layouts have been created for the context,
it's necessary to call \code{\link{pangoLayoutContextChanged}} on those
layouts.}
\usage{pangoCairoUpdateContext(cr, context)}
\arguments{
\item{\verb{cr}}{[\verb{\link{Cairo}}]  a Cairo context}
\item{\verb{context}}{[\verb{\link{PangoContext}}]  a \verb{\link{PangoContext}}, from \code{\link{pangoCairoFontMapCreateContext}}}
}
\details{  Since  1.10}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
