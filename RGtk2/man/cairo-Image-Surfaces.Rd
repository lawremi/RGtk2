\alias{cairo-Image-Surfaces}
\alias{CairoFormat}
\name{cairo-Image-Surfaces}
\title{Image Surfaces}
\description{Rendering to memory buffers}
\section{Methods and Functions}{
\code{\link{cairoImageSurfaceCreate}(format, width, height)}\cr
\code{\link{cairoImageSurfaceCreateForData}(data, format, width, height, stride)}\cr
\code{\link{cairoImageSurfaceGetData}(surface)}\cr
\code{\link{cairoImageSurfaceGetFormat}(surface)}\cr
\code{\link{cairoImageSurfaceGetWidth}(surface)}\cr
\code{\link{cairoImageSurfaceGetHeight}(surface)}\cr
\code{\link{cairoImageSurfaceGetStride}(surface)}\cr
}
\section{Detailed Description}{    Image surfaces provide the ability to render to memory buffers
    either allocated by cairo or by the calling code.  The supported
    image formats are those defined in \code{\link{CairoFormat}}.
  }
\section{Enums and Flags}{\describe{\item{\code{CairoFormat}}{
\code{\link{CairoFormat}} is used to identify the memory format of
image data.
  
New entries may be added in future versions.  

\describe{
\item{\code{argb32}}{ each pixel is a 32-bit quantity, with
  alpha in the upper 8 bits, then red, then green, then blue.
  The 32-bit quantities are stored native-endian. Pre-multiplied
  alpha is used. (That is, 50% transparent red is 0x80800000,
  not 0x80ff0000.)}
\item{\code{rgb24}}{ each pixel is a 32-bit quantity, with
  the upper 8 bits unused. Red, Green, and Blue are stored
  in the remaining 24 bits in that order.}
\item{\code{a8}}{ each pixel is a 8-bit quantity holding
  an alpha value.}
\item{\code{a1}}{ each pixel is a 1-bit quantity holding
  an alpha value. Pixels are packed together into 32-bit
  quantities. The ordering of the bits matches the
  endianess of the platform. On a big-endian machine, the
  first pixel is in the uppermost bit, on a little-endian
  machine the first pixel is in the least-significant bit.}
\item{\code{rgb16-565}}{ This format value is deprecated. It has
  never been properly implemented in cairo and should not be used
  by applications. For example, any attempt to create an image
  surface with a format of CAIRO\_FORMAT\_RGB16\_565 will fail. This
  format value was added as part of fixing cairo's xlib backend to
  work with X servers advertising a 16-bit, 565 visual. But as it
  turned out, adding this format to \code{\link{CairoFormat}} was not
  necessary, and was a mistake, (cairo's xlib backend can work fine
  with 16-bit visuals in the same way it works with BGR visuals
  without any BGR formats in \code{\link{CairoFormat}}). (Since 1.2)}
}

}}}
\references{\url{http://www.cairographics.org/manual/cairo-Image-Surfaces.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
