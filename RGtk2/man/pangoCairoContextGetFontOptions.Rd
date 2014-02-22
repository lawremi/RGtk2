\alias{pangoCairoContextGetFontOptions}
\name{pangoCairoContextGetFontOptions}
\title{pangoCairoContextGetFontOptions}
\description{Retrieves any font rendering options previously set with
\code{pangoCairoFontMapSetFontOptions()}. This function does not report options
that are derived from the target surface by \code{\link{pangoCairoUpdateContext}}}
\usage{pangoCairoContextGetFontOptions(context)}
\arguments{\item{\verb{context}}{[\code{\link{PangoContext}}]  a \code{\link{PangoContext}}, from a pangocairo font map}}
\details{  Since 1.10}
\value{[\code{\link{CairoFontOptions}}]  the font options previously set on the context, or \code{NULL}
  if no options have been set.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
