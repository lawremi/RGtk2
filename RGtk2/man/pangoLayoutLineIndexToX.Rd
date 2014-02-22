\alias{pangoLayoutLineIndexToX}
\name{pangoLayoutLineIndexToX}
\title{pangoLayoutLineIndexToX}
\description{Converts an index within a line to a X position.}
\usage{pangoLayoutLineIndexToX(object, index, trailing)}
\arguments{
\item{\verb{object}}{[\code{\link{PangoLayoutLine}}]      a \code{\link{PangoLayoutLine}}}
\item{\verb{index}}{[integer]    byte offset of a grapheme within the layout}
\item{\verb{trailing}}{[logical]  an integer indicating the edge of the grapheme to retrieve
           the position of. If > 0, the trailing edge of the grapheme,
           if 0, the leading of the grapheme.}
}
\value{
A list containing the following elements:
\item{\verb{x.pos}}{[integer]  location to store the x_offset (in Pango unit)}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
