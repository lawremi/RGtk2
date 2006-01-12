\alias{cairoFontOptionsCreate}
\name{cairoFontOptionsCreate}
\title{cairoFontOptionsCreate}
\description{Allocates a new font options object with all options initialized
 to default values.}
\usage{cairoFontOptionsCreate()}
\value{[\code{\link{cairo_font_options_t}}]  a newly allocated \code{\link{cairo_font_options_t}}. This function always returns a
  valid pointer; if memory cannot be allocated, then a special
  error object is returned where all operations on the object do nothing.
  You can check for this with \code{\link{cairoFontOptionsStatus}}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
