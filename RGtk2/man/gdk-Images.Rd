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
To create a \code{\link{GdkImage}} from bitmap data use \code{gdk\Image\New\Bitmap()}.
To create an image from part of a \code{\link{GdkWindow}} use \code{\link{gdkDrawableGetImage}}.
  
The image can be manipulated with \code{\link{gdkImageGetPixel}} and
\code{\link{gdkImagePutPixel}}, or alternatively by changing the actual pixel data.
Though manipulating the pixel data requires complicated code to cope with
the different formats that may be used.
  
To draw a \code{\link{GdkImage}} in a \code{\link{GdkWindow}} or \code{\link{GdkPixmap}} use \code{\link{gdkDrawImage}}.
  
To destroy a \code{\link{GdkImage}} use \code{gdk\Image\Destroy()}.}
\section{Structures}{\describe{\item{\code{GdkImage}}{
The \code{\link{GdkImage}} struct contains information on the image and the pixel data.

\describe{
\item{\code{parent_instance}}{[\code{\link{GObject}}] the parent instance}
\item{\code{type}}{[\code{\link{GdkImageType}}] the type of the image.}
\item{\code{visual}}{[\code{\link{GdkVisual}}] the visual.}
\item{\code{byte_order}}{[\code{\link{GdkByteOrder}}] the byte order.}
\item{\code{width}}{[integer] the width of the image in pixels.}
\item{\code{height}}{[integer] the height of the image in pixels.}
\item{\code{depth}}{[integer] the depth of the image, i.e. the number of bits per pixel.}
\item{\code{bpp}}{[integer] the number of bytes per pixel.}
\item{\code{bpl}}{[integer] the number of bytes per line of the image.}
\item{\code{bits_per_pixel}}{[integer] the number of bits per pixel.}
\item{\code{mem}}{[R object] the pixel data.}
\item{\code{colormap}}{[\code{\link{GdkColormap}}] the \code{\link{GdkColormap}} associated with the image}
}

}}}
\section{Convenient Construction}{\code{gdkImage} is the equivalent of \code{\link{gdkImageNew}}.}
\section{Enums and Flags}{\describe{\item{\code{GdkImageType}}{
Specifies the type of a \code{\link{GdkImage}}.

\describe{
\item{\code{normal}}{The original X image type, which is quite slow since the
image has to be transferred from the client to the server to display it.}
\item{\code{shared}}{A faster image type, which uses shared memory to transfer
the image data between client and server. However this will only be available
if client and server are on the same machine and the shared memory extension
is supported by the server.}
\item{\code{fastest}}{Specifies that \code{GDK_IMAGE_SHARED} should be tried first,
and if that fails then \code{GDK_IMAGE_NORMAL} will be used.}
}

}}}
\references{\url{http://developer.gnome.org/doc/API/2.0/gdk/gdk-Images.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
