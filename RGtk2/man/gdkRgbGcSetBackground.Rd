\alias{gdkRgbGcSetBackground}
\name{gdkRgbGcSetBackground}
\title{gdkRgbGcSetBackground}
\description{
Sets the background color in \code{gc} to the specified color (or the
closest approximation, in the case of limited visuals).
\strong{WARNING: \code{gdk_rgb_gc_set_background} is deprecated and should not be used in newly-written code.  
Sets the background color in \code{gc} to the specified color (or the
closest approximation, in the case of limited visuals).}
}
\usage{gdkRgbGcSetBackground(gc, rgb)}
\arguments{
\item{\code{gc}}{[\code{\link{GdkGC}}] The \code{\link{GdkGC}} to modify.}
\item{\code{rgb}}{[numeric] The color, represented as a 0xRRGGBB integer value.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
