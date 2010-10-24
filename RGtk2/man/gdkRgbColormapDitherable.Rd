\alias{gdkRgbColormapDitherable}
\name{gdkRgbColormapDitherable}
\title{gdkRgbColormapDitherable}
\description{Determines whether the visual associated with \code{cmap} is ditherable. This
function may be useful for presenting a user interface choice to the user
about which dither mode is desired; if the display is not ditherable, it may
make sense to gray out or hide the corresponding UI widget.}
\usage{gdkRgbColormapDitherable(colormap)}
\arguments{\item{\verb{colormap}}{a \code{\link{GdkColormap}}}}
\value{[logical] \code{TRUE} if the visual associated with \code{cmap} is ditherable.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
