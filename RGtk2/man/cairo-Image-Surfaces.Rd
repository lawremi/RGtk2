\alias{cairo-Image-Surfaces}
\alias{cairo_format_t}
\name{cairo-Image-Surfaces}
\title{Image Surfaces}
\description{Rendering to memory buffers}
\section{Methods and Functions}{
\link{cairoImageSurfaceCreate}(format, width, height)
\link{cairoImageSurfaceCreateForData}(data, format, width, height, stride)
\link{cairoImageSurfaceGetWidth}(surface)
\link{cairoImageSurfaceGetHeight}(surface)
}
\section{Detailed Description}{    Image surfaces provide the ability to render to memory buffers
    either allocated by cairo or by the calling code.  The supported
    image formats are those defined in \code{\link{cairo_format_t}}.
  }
\section{Enums and Flags}{\describe{\item{\code{enum cairo_format_t}}{
\code{\link{cairo_format_t}} is used to identify the memory format of
image data.  

\describe{
\item{\code{CAIRO_FORMAT_ARGB32 (argb32)}}{ each pixel is a 32-bit quantity, with
  alpha in the upper 8 bits, then red, then green, then blue.
  The 32-bit quantities are stored native-endian. Pre-multiplied
  alpha is used. (That is, 50% transparent red is 0x80800000,
  not 0x80ff0000.)}
\item{\code{CAIRO_FORMAT_RGB24 (rgb24)}}{ each pixel is a 32-bit quantity, with
  the upper 8 bits unused. Red, Green, and Blue are stored
  in the remaining 24 bits in that order.}
\item{\code{CAIRO_FORMAT_A8 (a8)}}{ each pixel is a 8-bit quantity holding
  an alpha value.}
\item{\code{CAIRO_FORMAT_A1 (a1)}}{ each pixel is a 1-bit quantity holding
  an alpha value. Pixels are packed together into 32-bit
  quantities. The ordering of the bits matches the
  endianess of the platform. On a big-endian machine, the
  first pixel is in the uppermost bit, on a little-endian
  machine the first pixel is in the least-significant bit.}
}

}}}
\references{\url{http://developer.gnome.org/doc/API/2.0/cairo/cairo-Image-Surfaces.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
