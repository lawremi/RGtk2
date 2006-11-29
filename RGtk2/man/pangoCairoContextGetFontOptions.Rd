\alias{pangoCairoContextGetFontOptions}
\name{pangoCairoContextGetFontOptions}
\title{pangoCairoContextGetFontOptions}
\description{Retrieves any font rendering options previously set with
\code{pangoCairoFontMapSetFontOptions()}. This functions not report options
that are derived from the target surface by \code{\link{pangoCairoUpdateContext}}}
\usage{pangoCairoContextGetFontOptions(context)}
\arguments{\item{\code{context}}{[\code{\link{PangoContext}}]  a \code{\link{PangoContext}}, from \code{\link{pangoCairoFontMapCreateContext}}}}
\value{[\code{\link{CairoFontOptions}}]  the font options previously set on the context, or \code{NULL}
  if no options have been set.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
