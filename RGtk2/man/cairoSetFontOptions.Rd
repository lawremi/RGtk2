\alias{cairoSetFontOptions}
\name{cairoSetFontOptions}
\title{cairoSetFontOptions}
\description{Sets a set of custom font rendering options for the \verb{\link{Cairo}}.
Rendering options are derived by merging these options with the
options derived from underlying surface; if the value in \code{options}
has a default value (like \code{CAIRO_ANTIALIAS_DEFAULT}), then the value
from the surface is used.}
\usage{cairoSetFontOptions(cr, options)}
\arguments{
\item{\verb{cr}}{[\verb{\link{Cairo}}]  a \verb{\link{Cairo}}}
\item{\verb{options}}{[\verb{\link{CairoFontOptions}}]  font options to use}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
