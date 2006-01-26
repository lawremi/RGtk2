\alias{cairo-cairo-surface-t}
\alias{CairoSurface}
\alias{cairoSurface}
\alias{CairoContent}
\name{cairo-cairo-surface-t}
\title{cairo_surface_t}
\description{Base class for surfaces}
\section{Methods and Functions}{
\code{\link{cairoSurfaceCreateSimilar}(other, content, width, height)}\cr
\code{\link{cairoSurfaceDestroy}(surface)}\cr
\code{\link{cairoSurfaceFinish}(surface)}\cr
\code{\link{cairoSurfaceFlush}(surface)}\cr
\code{\link{cairoSurfaceGetFontOptions}(surface)}\cr
\code{\link{cairoSurfaceSetUserData}(surface, key, user.data)}\cr
\code{\link{cairoSurfaceGetUserData}(surface, key)}\cr
\code{\link{cairoSurfaceMarkDirty}(surface)}\cr
\code{\link{cairoSurfaceMarkDirtyRectangle}(surface, x, y, width, height)}\cr
\code{\link{cairoSurfaceReference}(surface)}\cr
\code{\link{cairoSurfaceSetDeviceOffset}(surface, x.offset, y.offset)}\cr
\code{\link{cairoSurfaceStatus}(surface)}\cr
\code{cairoSurface(width, height, format, other, content, data, stride, filename, con)}
}
\section{Structures}{\describe{\item{\code{CairoSurface}}{
A \code{\link{CairoSurface}} represents an image, either as the destination
of a drawing operation or as source when drawing onto another
surface. There are different subtypes of cairo_surface_t for
different drawing backends; for example, \code{\link{cairoImageSurfaceCreate}}
creates a bitmap image in memory.
  
Memory management of \code{\link{CairoSurface}} is done with
\code{\link{cairoSurfaceReference}} and \code{\link{cairoSurfaceDestroy}}.  

}}}
\section{Convenient Construction}{\code{cairoSurface} is the result of collapsing the constructors of \code{cairo_surface_t} (\code{\link{cairoSurfaceCreateSimilar}}, \code{\link{cairoImageSurfaceCreate}}, \code{\link{cairoImageSurfaceCreateForData}}, \code{\link{cairoImageSurfaceCreateFromPng}}, \code{\link{cairoImageSurfaceCreateFromPngStream}}) and accepts a subset of its arguments matching the required arguments of one of its delegate constructors.}
\section{Enums and Flags}{\describe{\item{\code{CairoContent}}{
\code{cairo.content.t} is used to describe the content that a surface will
contain, whether color information, alpha information (translucence
vs. opacity), or both.
  
Note: The large values here are designed to keep cairo_content_t
values distinct from cairo_format_t values so that the
implementation can detect the error if users confuse the two types.  

\describe{
\item{\code{CAIRO_CONTENT_COLOR (color)}}{ The surface will hold color content only.}
\item{\code{CAIRO_CONTENT_ALPHA (alpha)}}{ The surface will hold alpha content only.}
\item{\code{CAIRO_CONTENT_COLOR_ALPHA (color-alpha)}}{ The surface will hold color and alpha content.}
}

}}}
\references{\url{http://www.cairographics.org/manual/cairo-cairo-surface-t.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
