\alias{gdkRgbCmapNew}
\name{gdkRgbCmapNew}
\title{gdkRgbCmapNew}
\description{Creates a new \code{\link{GdkRgbCmap}} structure. The cmap maps color indexes to
RGB colors. If \code{n.colors} is less than 256, then images containing
color values greater than or equal to \code{n.colors} will produce undefined
results, including possibly segfaults.}
\usage{gdkRgbCmapNew(colors)}
\arguments{\item{\verb{colors}}{The colors, represented as 0xRRGGBB integer values.}}
\value{[\code{\link{GdkRgbCmap}}] The newly created \code{\link{GdkRgbCmap}}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
