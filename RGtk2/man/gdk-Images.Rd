\alias{gdk-Images}
\alias{GdkImage}
\alias{gdkImage}
\alias{GdkImageType}
\name{gdk-Images}
\title{Images}
\description{A client-side area for bit-mapped graphics}
\section{Methods and Functions}{
\code{\link{gdkImageNew}(type, visual, width, height)}\cr
\code{\link{gdkImageGet}(object, x, y, width, height)}\cr
\code{\link{gdkImageGetColormap}(object)}\cr
\code{\link{gdkImageSetColormap}(object, colormap)}\cr
\code{\link{gdkImagePutPixel}(object, x, y, pixel)}\cr
\code{\link{gdkImageGetPixel}(object, x, y)}\cr
\code{gdkImage(type, visual, width, height)}
}
\section{Detailed Description}{The \code{\link{GdkImage}} type represents an area for drawing graphics.
It has now been superceded to a large extent by the much more flexible
GdkRGB functions.
  
To create an empty \code{\link{GdkImage}} use \code{\link{gdkImageNew}}.
To create a \code{\link{GdkImage}} from bitmap data use \code{gdkImageNewBitmap()}.
To create an image from part of a \code{\link{GdkWindow}} use \code{\link{gdkDrawableGetImage}}.
  
The image can be manipulated with \code{\link{gdkImageGetPixel}} and
\code{\link{gdkImagePutPixel}}, or alternatively by changing the actual pixel data.
Though manipulating the pixel data requires complicated code to cope with
the different formats that may be used.
  
To draw a \code{\link{GdkImage}} in a \code{\link{GdkWindow}} or \code{\link{GdkPixmap}} use \code{\link{gdkDrawImage}}.
  
To destroy a \code{\link{GdkImage}} use \code{gdkImageDestroy()}.}
\section{Structures}{\describe{\item{\verb{GdkImage}}{
The \code{\link{GdkImage}} struct contains information on the image and the pixel data.

\describe{
\item{\verb{type}}{[\code{\link{GdkImageType}}] the parent instance}
\item{\verb{visual}}{[\code{\link{GdkVisual}}] the type of the image.}
\item{\verb{byteOrder}}{[\code{\link{GdkByteOrder}}] the visual.}
\item{\verb{width}}{[integer] the byte order.}
\item{\verb{height}}{[integer] the width of the image in pixels.}
\item{\verb{depth}}{[integer] the height of the image in pixels.}
\item{\verb{bpp}}{[integer] the depth of the image, i.e. the number of bits per pixel.}
\item{\verb{bpl}}{[integer] the number of bytes per pixel.}
\item{\verb{bitsPerPixel}}{[integer] the number of bytes per line of the image.}
\item{\verb{mem}}{[raw] the number of bits per pixel.}
\item{\verb{colormap}}{[\code{\link{GdkColormap}}] the pixel data.}
}

}}}
\section{Convenient Construction}{\code{gdkImage} is the equivalent of \code{\link{gdkImageNew}}.}
\section{Enums and Flags}{\describe{\item{\verb{GdkImageType}}{
Specifies the type of a \code{\link{GdkImage}}.

\describe{
\item{\verb{normal}}{The original X image type, which is quite slow since the
image has to be transferred from the client to the server to display it.}
\item{\verb{shared}}{A faster image type, which uses shared memory to transfer
the image data between client and server. However this will only be available
if client and server are on the same machine and the shared memory extension
is supported by the server.}
\item{\verb{fastest}}{Specifies that \code{GDK_IMAGE_SHARED} should be tried first,
and if that fails then \code{GDK_IMAGE_NORMAL} will be used.}
}

}}}
\references{\url{https://developer-old.gnome.org/gdk2/stable/gdk2-Images.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
