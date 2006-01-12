\alias{gdk-pixbuf-util}
\name{gdk-pixbuf-util}
\title{Utilities}
\description{Utility and miscellaneous convenience functions.}
\usage{
\link{gdkPixbufAddAlpha}(object, substitute.color, r, g, b)
\link{gdkPixbufCopyArea}(object, src.x, src.y, width, height, dest.pixbuf, dest.x, dest.y)
\link{gdkPixbufSaturateAndPixelate}(object, dest, saturation, pixelate)
\link{gdkPixbufFill}(object, pixel)
}
\details{    These functions provide miscellaneous utilities for manipulating
    pixbufs.  The pixel data in pixbufs may of course be manipulated
    directly by applications, but several common operations can be
    performed by these functions instead.
  }
\references{\url{http://developer.gnome.org/doc/API/2.0/gdk-pixbuf/gdk-pixbuf-util.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\seealso{\code{\link{GdkPixbuf}}}
\keyword{internal}
