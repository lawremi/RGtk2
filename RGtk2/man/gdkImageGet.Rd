\alias{gdkImageGet}
\name{gdkImageGet}
\title{gdkImageGet}
\description{
This is a deprecated wrapper for \code{\link{gdkDrawableGetImage}};
\code{\link{gdkDrawableGetImage}} should be used instead. Or even better: in
most cases \code{\link{gdkPixbufGetFromDrawable}} is the most convenient
choice.
\strong{WARNING: \code{gdk_image_get} is deprecated and should not be used in newly-written code.  
This is a deprecated wrapper for \code{\link{gdkDrawableGetImage}};
\code{\link{gdkDrawableGetImage}} should be used instead. Or even better: in
most cases \code{\link{gdkPixbufGetFromDrawable}} is the most convenient
choice.  }
}
\usage{gdkImageGet(object, x, y, width, height)}
\arguments{
\item{\code{object}}{[\code{\link{GdkDrawable}}]  a \code{\link{GdkDrawable}}}
\item{\code{x}}{[integer]  x coordinate in \code{window}}
\item{\code{y}}{[integer]  y coordinate in \code{window}}
\item{\code{width}}{[integer]  width of area in \code{window}}
\item{\code{height}}{[integer]  height of area in \code{window}}
}
\value{[\code{\link{GdkImage}}]  a new \code{\link{GdkImage}} or \code{NULL}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
