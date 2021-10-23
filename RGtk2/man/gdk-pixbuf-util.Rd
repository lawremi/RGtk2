\alias{gdk-pixbuf-util}
\name{gdk-pixbuf-util}
\title{Utilities}
\description{Utility and miscellaneous convenience functions.}
\section{Methods and Functions}{
\code{\link{gdkPixbufAddAlpha}(object, substitute.color, r, g, b)}\cr
\code{\link{gdkPixbufCopyArea}(object, src.x, src.y, width, height, dest.pixbuf, dest.x, dest.y)}\cr
\code{\link{gdkPixbufSaturateAndPixelate}(object, dest, saturation, pixelate)}\cr
\code{\link{gdkPixbufApplyEmbeddedOrientation}(object)}\cr
\code{\link{gdkPixbufFill}(object, pixel)}\cr
}
\section{Detailed Description}{    These functions provide miscellaneous utilities for manipulating
    pixbufs.  The pixel data in pixbufs may of course be manipulated
    directly by applications, but several common operations can be
    performed by these functions instead.
  }
\references{\url{https://developer-old.gnome.org/gdk-pixbuf/stable/gdk-pixbuf-Utilities.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\seealso{\code{\link{GdkPixbuf}}}
\keyword{internal}
