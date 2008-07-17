\alias{pangoCairoContextSetFontOptions}
\name{pangoCairoContextSetFontOptions}
\title{pangoCairoContextSetFontOptions}
\description{Sets the font options used when rendering text with this context.
These options override any options that \code{\link{pangoCairoUpdateContext}}
derives from the target surface.}
\usage{pangoCairoContextSetFontOptions(context, options)}
\arguments{
\item{\code{context}}{[\code{\link{PangoContext}}]  a \code{\link{PangoContext}}, from \code{\link{pangoCairoFontMapCreateContext}}}
\item{\code{options}}{[\code{\link{CairoFontOptions}}]  a \code{\link{CairoFontOptions}}, or \code{NULL} to unset any previously set
          options. A copy is made.}
}
\details{  Since  1.10}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
