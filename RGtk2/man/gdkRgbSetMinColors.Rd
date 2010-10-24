\alias{gdkRgbSetMinColors}
\name{gdkRgbSetMinColors}
\title{gdkRgbSetMinColors}
\description{Sets the minimum number of colors for the color cube. Generally,
GdkRGB tries to allocate the largest color cube it can. If it can't
allocate a color cube at least as large as \code{min.colors}, it installs a
private colormap.}
\usage{gdkRgbSetMinColors(min.colors)}
\arguments{\item{\verb{min.colors}}{The minimum number of colors accepted.}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
