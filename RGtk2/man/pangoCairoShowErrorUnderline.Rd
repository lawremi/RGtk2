\alias{pangoCairoShowErrorUnderline}
\name{pangoCairoShowErrorUnderline}
\title{pangoCairoShowErrorUnderline}
\description{Draw a squiggly line in the specified cairo context that approximately
covers the given rectangle in the style of an underline used to indicate a
spelling error.  (The width of the underline is rounded to an integer
number of up/down segments and the resulting rectangle is centered in the
original rectangle)}
\usage{pangoCairoShowErrorUnderline(cr, x, y, width, height)}
\arguments{
\item{\verb{cr}}{[\code{\link{Cairo}}]  a Cairo context}
\item{\verb{x}}{[numeric]  The X coordinate of one corner of the rectangle}
\item{\verb{y}}{[numeric]  The Y coordinate of one corner of the rectangle}
\item{\verb{width}}{[numeric]  Non-negative width of the rectangle}
\item{\verb{height}}{[numeric]  Non-negative height of the rectangle}
}
\details{  Since 1.14}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
