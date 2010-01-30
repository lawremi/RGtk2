\alias{gdkDrawableGetImage}
\name{gdkDrawableGetImage}
\title{gdkDrawableGetImage}
\description{A \verb{\link{GdkImage}} stores client-side image data (pixels). In contrast,
\verb{\link{GdkPixmap}} and \verb{\link{GdkWindow}} are server-side
objects. \code{\link{gdkDrawableGetImage}} obtains the pixels from a
server-side drawable as a client-side \verb{\link{GdkImage}}.  The format of a
\verb{\link{GdkImage}} depends on the \verb{\link{GdkVisual}} of the current display, which
makes manipulating \verb{\link{GdkImage}} extremely difficult; therefore, in
most cases you should use \code{\link{gdkPixbufGetFromDrawable}} instead of
this lower-level function. A \verb{\link{GdkPixbuf}} contains image data in a
canonicalized RGB format, rather than a display-dependent format.
Of course, there's a convenience vs. speed tradeoff here, so you'll
want to think about what makes sense for your application.}
\usage{gdkDrawableGetImage(object, x, y, width, height)}
\arguments{
\item{\verb{object}}{[\verb{\link{GdkDrawable}}]  a \verb{\link{GdkDrawable}}}
\item{\verb{x}}{[integer]  x coordinate on \code{drawable}}
\item{\verb{y}}{[integer]  y coordinate on \code{drawable}}
\item{\verb{width}}{[integer]  width of region to get}
\item{\verb{height}}{[integer]  height or region to get}
}
\details{\code{x}, \code{y}, \code{width}, and \code{height} define the region of \code{drawable} to
obtain as an image.
  
You would usually copy image data to the client side if you intend
to examine the values of individual pixels, for example to darken
an image or add a red tint. It would be prohibitively slow to
make a round-trip request to the windowing system for each pixel,
so instead you get all of them at once, modify them, then copy
them all back at once.
  
If the X server or other windowing system backend is on the local
machine, this function may use shared memory to avoid copying
the image data.
  
If the source drawable is a \verb{\link{GdkWindow}} and partially offscreen
or obscured, then the obscured portions of the returned image
will contain undefined data.  }
\value{[\verb{\link{GdkImage}}]  a \verb{\link{GdkImage}} containing the contents of \code{drawable}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
