\alias{cairoFontOptionsSetHintStyle}
\name{cairoFontOptionsSetHintStyle}
\title{cairoFontOptionsSetHintStyle}
\description{Sets the hint style for font outlines for the font options object.
This controls whether to fit font outlines to the pixel grid,
and if so, whether to optimize for fidelity or contrast.
See the documentation for \code{\link{cairo_hint_style_t}} for full details.}
\usage{cairoFontOptionsSetHintStyle(options, hint.style)}
\arguments{
\item{\code{options}}{[\code{\link{cairo_font_options_t}}]  a \code{\link{cairo_font_options_t}}}
\item{\code{hint.style}}{[\code{\link{cairo_hint_style_t}}]  the new hint style}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
