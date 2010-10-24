\alias{cairoRectangle}
\name{cairoRectangle}
\title{cairoRectangle}
\description{Adds a closed sub-path rectangle of the given size to the current
path at position (\code{x}, \code{y}) in user-space coordinates.}
\usage{cairoRectangle(cr, x, y, width, height)}
\arguments{
\item{\verb{cr}}{[\code{\link{Cairo}}]  a cairo context}
\item{\verb{x}}{[numeric]  the X coordinate of the top left corner of the rectangle}
\item{\verb{y}}{[numeric]  the Y coordinate to the top left corner of the rectangle}
\item{\verb{width}}{[numeric]  the width of the rectangle}
\item{\verb{height}}{[numeric]  the height of the rectangle}
}
\details{This function is logically equivalent to:
\preformatted{
cr$moveTo(x, y)
cr$relLineTo(width, 0)
cr$relLineTo(0, height)
cr$relLineTo(-width, 0)
cr$closePath()
}  }
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
