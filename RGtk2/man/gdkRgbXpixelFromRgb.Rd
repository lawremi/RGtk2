\alias{gdkRgbXpixelFromRgb}
\name{gdkRgbXpixelFromRgb}
\title{gdkRgbXpixelFromRgb}
\description{
Finds the X pixel closest in color to the \code{rgb} color specified. This
value may be used to set the \code{pixel} field of
a \code{\link{GdkColor}} struct.
\strong{WARNING: \code{gdk_rgb_xpixel_from_rgb} is deprecated and should not be used in newly-written code.}
}
\usage{gdkRgbXpixelFromRgb(rgb)}
\arguments{\item{\verb{rgb}}{The color, represented as a 0xRRGGBB integer value.}}
\value{[numeric] The X pixel value.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
