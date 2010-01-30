\alias{pangoCairoContextGetFontOptions}
\name{pangoCairoContextGetFontOptions}
\title{pangoCairoContextGetFontOptions}
\description{Retrieves any font rendering options previously set with
\code{pangoCairoFontMapSetFontOptions()}. This functions not report options
that are derived from the target surface by \code{\link{pangoCairoUpdateContext}}}
\usage{pangoCairoContextGetFontOptions(context)}
\arguments{\item{\verb{context}}{[\verb{\link{PangoContext}}]  a \verb{\link{PangoContext}}, from \code{\link{pangoCairoFontMapCreateContext}}}}
\details{  Since  1.10}
\value{[\verb{\link{CairoFontOptions}}]  the font options previously set on the context, or \code{NULL}
  if no options have been set.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
