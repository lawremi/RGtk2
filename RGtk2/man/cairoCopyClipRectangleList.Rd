\alias{cairoCopyClipRectangleList}
\name{cairoCopyClipRectangleList}
\title{cairoCopyClipRectangleList}
\description{Gets the current clip region as a list of rectangles in user coordinates.
Never returns \code{NULL}.}
\usage{cairoCopyClipRectangleList(cr)}
\arguments{\item{\code{cr}}{[\code{\link{Cairo}}]  a cairo context}}
\details{The status in the list may be CAIRO\_STATUS\_CLIP\_NOT\_REPRESENTABLE to
indicate that the clip region cannot be represented as a list of
user-space rectangles. The status may have other values to indicate
other errors.
  
The caller must always call cairo\_rectangle\_list\_destroy on the result of
this function.  

  Since  1.4}
\value{[\code{\link{CairoRectangleList}}]  the current clip region as a list of rectangles in user coordinates.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
