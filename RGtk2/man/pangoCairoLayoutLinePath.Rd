\alias{pangoCairoLayoutLinePath}
\name{pangoCairoLayoutLinePath}
\title{pangoCairoLayoutLinePath}
\description{Adds the text in \code{\link{PangoLayoutLine}} to the current path in the
specified cairo context.  The origin of the glyphs (the left edge
of the line) will be at the current point of the cairo context.}
\usage{pangoCairoLayoutLinePath(cr, line)}
\arguments{
\item{\verb{cr}}{[\code{\link{Cairo}}]  a Cairo context}
\item{\verb{line}}{[\code{\link{PangoLayoutLine}}]  a \code{\link{PangoLayoutLine}}}
}
\details{  Since 1.10}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
