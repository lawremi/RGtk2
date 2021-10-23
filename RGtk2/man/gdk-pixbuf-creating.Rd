\alias{gdk-pixbuf-creating}
\name{gdk-pixbuf-creating}
\title{Image Data in Memory}
\description{Creating a pixbuf from image data that is already in memory.}
\section{Methods and Functions}{
\code{\link{gdkPixbufNew}(colorspace, has.alpha, bits.per.sample, width, height)}\cr
\code{\link{gdkPixbufNewFromData}(data, colorspace, has.alpha, bits.per.sample, width, height, rowstride)}\cr
\code{\link{gdkPixbufNewFromXpmData}(data)}\cr
\code{\link{gdkPixbufNewSubpixbuf}(object, src.x, src.y, width, height)}\cr
\code{\link{gdkPixbufCopy}(object)}\cr
}
\section{Detailed Description}{    The most basic way to create a pixbuf is to wrap an existing pixel
    buffer with a \code{\link{GdkPixbuf}} structure.  You can use the
    \code{\link{gdkPixbufNewFromData}} function to do this You need to specify
    the destroy notification function that will be called when the
    data buffer needs to be freed; this will happen when a \code{\link{GdkPixbuf}}
    is finalized by the reference counting functions If you have a
    chunk of static data compiled into your application, you can pass
    in \code{NULL} as the destroy notification function so that the data
    will not be freed.
    
    The \code{\link{gdkPixbufNew}} function can be used as a convenience to
    create a pixbuf with an empty buffer.  This is equivalent to
    allocating a data buffer using \code{malloc()} and
    then wrapping it with \code{\link{gdkPixbufNewFromData}}.  The \code{\link{gdkPixbufNew}}
    function will compute an optimal rowstride so that rendering can be
    performed with an efficient algorithm.
    
    As a special case, you can use the \code{\link{gdkPixbufNewFromXpmData}}
    function to create a pixbuf from inline XPM image data.
    
    You can also copy an existing pixbuf with the \code{\link{gdkPixbufCopy}}
    function.  This is not the same as just doing a \code{gObjectRef()}
    on the old pixbuf; the copy function will actually duplicate the
    pixel data in memory and create a new \code{\link{GdkPixbuf}} structure for it.
  }
\references{\url{https://developer-old.gnome.org/gdk-pixbuf/stable/gdk-pixbuf-Image-Data-in-Memory.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
