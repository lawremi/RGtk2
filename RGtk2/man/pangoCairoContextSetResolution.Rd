\alias{pangoCairoContextSetResolution}
\name{pangoCairoContextSetResolution}
\title{pangoCairoContextSetResolution}
\description{Sets the resolution for the context. This is a scale factor between
points specified in a \code{\link{PangoFontDescription}} and Cairo units. The
default value is 96, meaning that a 10 point font will be 13
units high. (10 * 96. / 72. = 13.3).}
\usage{pangoCairoContextSetResolution(context, dpi)}
\arguments{
\item{\verb{context}}{[\code{\link{PangoContext}}]  a \code{\link{PangoContext}}, from a pangocairo font map}
\item{\verb{dpi}}{[numeric]  the resolution in "dots per inch". (Physical inches aren't actually
  involved; the terminology is conventional.) A 0 or negative value
  means to use the resolution from the font map.}
}
\details{  Since 1.10}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
