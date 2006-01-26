\alias{pangoCairoLayoutPath}
\name{pangoCairoLayoutPath}
\title{pangoCairoLayoutPath}
\description{Adds the text in a \code{\link{PangoLayoutLine}} to the current path in the
specified cairo context.  The top-left corner of the \code{\link{PangoLayout}}
will be at the current point of the cairo context.}
\usage{pangoCairoLayoutPath(cr, layout)}
\arguments{
\item{\code{cr}}{[\code{\link{Cairo}}]  a Cairo context}
\item{\code{layout}}{[\code{\link{PangoLayout}}]  a Pango layout}
}
\details{  Since  1.10}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
