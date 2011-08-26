\alias{gdkRgbGetColormap}
\name{gdkRgbGetColormap}
\title{gdkRgbGetColormap}
\description{Get the preferred colormap for rendering image data.  Not a
very useful function; historically, GDK could only render RGB image
data to one colormap and visual, but in the current version it can
render to any colormap and visual. So there's no need to call this
function.}
\usage{gdkRgbGetColormap()}
\value{[\code{\link{GdkColormap}}] the preferred colormap. \emph{[  \acronym{transfer none}  ]}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
