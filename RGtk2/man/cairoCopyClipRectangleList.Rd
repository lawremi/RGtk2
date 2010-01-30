\alias{cairoCopyClipRectangleList}
\name{cairoCopyClipRectangleList}
\title{cairoCopyClipRectangleList}
\description{Gets the current clip region as a list of rectangles in user coordinates.
Never returns \code{NULL}.}
\usage{cairoCopyClipRectangleList(cr)}
\arguments{\item{\verb{cr}}{[\verb{\link{Cairo}}]  a cairo context}}
\details{The status in the list may be \code{CAIRO_STATUS_CLIP_NOT_REPRESENTABLE} to
indicate that the clip region cannot be represented as a list of
user-space rectangles. The status may have other values to indicate
other errors.  

  Since  1.4}
\value{[\verb{\link{CairoRectangleList}}]  the current clip region as a list of rectangles in user coordinates.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
