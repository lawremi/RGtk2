\alias{cairoFontOptionsCopy}
\name{cairoFontOptionsCopy}
\title{cairoFontOptionsCopy}
\description{Allocates a new font options object copying the option values from
 \code{original}.}
\usage{cairoFontOptionsCopy(original)}
\arguments{\item{\code{original}}{[\code{\link{cairo_font_options_t}}]  a \code{\link{cairo_font_options_t}}}}
\value{[\code{\link{cairo_font_options_t}}]  a newly allocated \code{\link{cairo_font_options_t}}. This function always returns a
  valid pointer; if memory cannot be allocated, then a special
  error object is returned where all operations on the object do nothing.
  You can check for this with \code{\link{cairoFontOptionsStatus}}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
