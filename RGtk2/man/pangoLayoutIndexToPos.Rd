\alias{pangoLayoutIndexToPos}
\name{pangoLayoutIndexToPos}
\title{pangoLayoutIndexToPos}
\description{Converts from an index within a \code{\link{PangoLayout}} to the onscreen position
corresponding to the grapheme at that index, which is represented
as rectangle.  Note that \code{pos->x} is always the leading
edge of the grapheme and \code{pos->x + pos->width} the trailing
edge of the grapheme. If the directionality of the grapheme is right-to-left,
then \code{pos->width} will be negative.}
\usage{pangoLayoutIndexToPos(object, index, pos)}
\arguments{
\item{\verb{object}}{[\code{\link{PangoLayout}}]  a \code{\link{PangoLayout}}}
\item{\verb{index}}{[integer]  byte index within \code{layout}}
\item{\verb{pos}}{[\code{\link{PangoRectangle}}]  rectangle in which to store the position of the grapheme}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
