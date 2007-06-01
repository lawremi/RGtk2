\alias{cairo-cairo-surface-t}
\alias{CairoSurface}
\alias{cairoSurface}
\alias{CairoContent}
\alias{CairoSurfaceType}
\name{cairo-cairo-surface-t}
\title{cairo\_surface\_t}
\description{Base class for surfaces}
\section{Methods and Functions}{
\code{\link{cairoSurfaceCreateSimilar}(other, content, width, height)}\cr
\code{\link{cairoSurfaceReference}(surface)}\cr
\code{\link{cairoSurfaceDestroy}(surface)}\cr
\code{\link{cairoSurfaceStatus}(surface)}\cr
\code{\link{cairoSurfaceFinish}(surface)}\cr
\code{\link{cairoSurfaceFlush}(surface)}\cr
\code{\link{cairoSurfaceGetFontOptions}(surface)}\cr
\code{\link{cairoSurfaceGetContent}(surface)}\cr
\code{\link{cairoSurfaceMarkDirty}(surface)}\cr
\code{\link{cairoSurfaceMarkDirtyRectangle}(surface, x, y, width, height)}\cr
\code{\link{cairoSurfaceSetDeviceOffset}(surface, x.offset, y.offset)}\cr
\code{\link{cairoSurfaceGetDeviceOffset}(surface)}\cr
\code{\link{cairoSurfaceSetFallbackResolution}(surface, x.pixels.per.inch, y.pixels.per.inch)}\cr
\code{\link{cairoSurfaceGetType}(surface)}\cr
\code{\link{cairoSurfaceSetUserData}(surface, key, user.data)}\cr
\code{\link{cairoSurfaceGetUserData}(surface, key)}\cr
\code{cairoSurface(width, height, format, other, content, data, stride, filename, con)}
}
\section{Structures}{\describe{\item{\code{CairoSurface}}{
A \code{\link{CairoSurface}} represents an image, either as the destination
of a drawing operation or as source when drawing onto another
surface.  To draw to a \code{\link{CairoSurface}}, create a cairo context
with the surface as the target, using \code{\link{cairoCreate}}.
  
There are different subtypes of \code{\link{CairoSurface}} for
different drawing backends; for example, \code{\link{cairoImageSurfaceCreate}}
creates a bitmap image in memory.
The type of a surface can be queried with \code{\link{cairoSurfaceGetType}}.
  
Memory management of \code{\link{CairoSurface}} is done with
\code{\link{cairoSurfaceReference}} and \code{\link{cairoSurfaceDestroy}}.  

}}}
\section{Convenient Construction}{\code{cairoSurface} is the result of collapsing the constructors of \code{cairo_surface_t} (\code{\link{cairoSurfaceCreateSimilar}}, \code{\link{cairoImageSurfaceCreate}}, \code{\link{cairoImageSurfaceCreateForData}}, \code{\link{cairoImageSurfaceCreateFromPng}}, \code{\link{cairoImageSurfaceCreateFromPngStream}}) and accepts a subset of its arguments matching the required arguments of one of its delegate constructors.}
\section{Enums and Flags}{\describe{
\item{\code{CairoContent}}{
\code{\link{CairoContent}} is used to describe the content that a surface will
contain, whether color information, alpha information (translucence
vs. opacity), or both.
  
Note: The large values here are designed to keep cairo\_content\_t
values distinct from cairo\_format\_t values so that the
implementation can detect the error if users confuse the two types.  

\describe{
\item{\code{color}}{ The surface will hold color content only.}
\item{\code{alpha}}{ The surface will hold alpha content only.}
\item{\code{color-alpha}}{ The surface will hold color and alpha content.}
}

}
\item{\code{CairoSurfaceType}}{
\code{\link{CairoSurfaceType}} is used to describe the type of a given
surface. The surface types are also known as "backends" or "surface
backends" within cairo.
  
The type of a surface is determined by the function used to create
it, which will generally be of the form cairo\_\emph{type}\_surface\_create,
(though see cairo\_surface\_create\_similar as well).
  
The surface type can be queried with \code{\link{cairoSurfaceGetType}}
  
The various cairo\_surface functions can be used with surfaces of
any type, but some backends also provide type-specific functions
that must only be called with a surface of the appropriate
type. These functions have names that begin with
cairo\_\emph{type}\_surface such as \code{\link{cairoImageSurfaceGetWidth}}.
  
The behavior of calling a type-specific function with a surface of
the wrong type is undefined.
  
New entries may be added in future versions.  

  Since  1.2

\describe{
\item{\code{image}}{ The surface is of type image}
\item{\code{pdf}}{ The surface is of type pdf}
\item{\code{ps}}{ The surface is of type ps}
\item{\code{xlib}}{ The surface is of type xlib}
\item{\code{xcb}}{ The surface is of type xcb}
\item{\code{glitz}}{ The surface is of type glitz}
\item{\code{quartz}}{ The surface is of type quartz}
\item{\code{win32}}{ The surface is of type win32}
\item{\code{beos}}{ The surface is of type beos}
\item{\code{directfb}}{ The surface is of type directfb}
\item{\code{svg}}{ The surface is of type svg}
}

}
}}
\references{\url{http://www.cairographics.org/manual/cairo-cairo-surface-t.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
