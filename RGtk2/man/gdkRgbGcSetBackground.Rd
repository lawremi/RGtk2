\alias{gdkRgbGcSetBackground}
\name{gdkRgbGcSetBackground}
\title{gdkRgbGcSetBackground}
\description{
Sets the background color in \code{gc} to the specified color (or the
closest approximation, in the case of limited visuals).
\strong{WARNING: \code{gdk_rgb_gc_set_background} is deprecated and should not be used in newly-written code.}
}
\usage{gdkRgbGcSetBackground(gc, rgb)}
\arguments{
\item{\verb{gc}}{The \code{\link{GdkGC}} to modify.}
\item{\verb{rgb}}{The color, represented as a 0xRRGGBB integer value.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
