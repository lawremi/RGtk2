\alias{gdkImageGet}
\name{gdkImageGet}
\title{gdkImageGet}
\description{
This is a deprecated wrapper for \code{\link{gdkDrawableGetImage}};
\code{\link{gdkDrawableGetImage}} should be used instead. Or even better: in
most cases \code{\link{gdkPixbufGetFromDrawable}} is the most convenient
choice.
\strong{WARNING: \code{gdk_image_get} is deprecated and should not be used in newly-written code.}
}
\usage{gdkImageGet(object, x, y, width, height)}
\arguments{
\item{\verb{object}}{[\verb{\link{GdkDrawable}}]  a \verb{\link{GdkDrawable}}}
\item{\verb{x}}{[integer]  x coordinate in \code{window}}
\item{\verb{y}}{[integer]  y coordinate in \code{window}}
\item{\verb{width}}{[integer]  width of area in \code{window}}
\item{\verb{height}}{[integer]  height of area in \code{window}}
}
\value{[\verb{\link{GdkImage}}]  a new \verb{\link{GdkImage}} or \code{NULL}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
