\alias{cairoSetFontOptions}
\name{cairoSetFontOptions}
\title{cairoSetFontOptions}
\description{Sets a set of custom font rendering options for the \code{\link{cairo_t}}.
Rendering options are derived by merging these options with the
options derived from underlying surface; if the value in \code{options}
has a default value (like \code{CAIRO_ANTIALIAS_DEFAULT}), then the value
from the surface is used.}
\usage{cairoSetFontOptions(cr, options)}
\arguments{
\item{\code{cr}}{[\code{\link{cairo_t}}]  a \code{\link{cairo_t}}}
\item{\code{options}}{[\code{\link{cairo_font_options_t}}]  font options to use}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
