\alias{cairo-surface}
\alias{CairoSurface}
\alias{cairoSurface}
\alias{CairoContent}
\alias{CairoSurfaceType}
\name{cairo-surface}
\title{cairo_surface_t}
\description{Base class for surfaces}
\section{Methods and Functions}{
\code{\link{cairoSurfaceCreateSimilar}(other, content, width, height)}\cr
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
\code{\link{cairoSurfaceGetFallbackResolution}(surface)}\cr
\code{\link{cairoSurfaceGetType}(surface)}\cr
\code{\link{cairoSurfaceSetUserData}(surface, key, user.data)}\cr
\code{\link{cairoSurfaceGetUserData}(surface, key)}\cr
\code{\link{cairoSurfaceCopyPage}(surface)}\cr
\code{\link{cairoSurfaceShowPage}(surface)}\cr
\code{\link{cairoSurfaceHasShowTextGlyphs}(surface)}\cr
\code{cairoSurface(width, height, format, other, content, data, stride, filename, con)}
}
\section{Detailed Description}{\code{\link{CairoSurface}} is the abstract type representing all different drawing
targets that cairo can render to.  The actual drawings are
performed using a cairo \dfn{context}.
  
A cairo surface is created by using \dfn{backend}-specific
constructors, typically of the form
cairo_\emph{backend}\code{surfaceCreate()}.}
\section{Structures}{\describe{\item{\verb{CairoSurface}}{
A \code{\link{CairoSurface}} represents an image, either as the destination
of a drawing operation or as source when drawing onto another
surface.  To draw to a \code{\link{CairoSurface}}, create a cairo context
with the surface as the target, using \code{\link{cairoCreate}}.
  
There are different subtypes of \code{\link{CairoSurface}} for
different drawing backends; for example, \code{\link{cairoImageSurfaceCreate}}
creates a bitmap image in memory.
The type of a surface can be queried with \code{\link{cairoSurfaceGetType}}.
  
Memory management of \code{\link{CairoSurface}} is done with
\code{cairoSurfaceReference()} and \code{\link{cairoSurfaceDestroy}}.  

}}}
\section{Convenient Construction}{\code{cairoSurface} is the result of collapsing the constructors of \code{cairo_surface_t} (\code{\link{cairoSurfaceCreateSimilar}}, \code{\link{cairoImageSurfaceCreate}}, \code{\link{cairoImageSurfaceCreateForData}}, \code{\link{cairoImageSurfaceCreateFromPng}}, \code{\link{cairoImageSurfaceCreateFromPngStream}}, \code{\link{cairoPdfSurfaceCreate}}, \code{\link{cairoPdfSurfaceCreateForStream}}, \code{\link{cairoPsSurfaceCreate}}, \code{\link{cairoPsSurfaceCreateForStream}}, \code{\link{cairoSvgSurfaceCreate}}, \code{\link{cairoSvgSurfaceCreateForStream}}) and accepts a subset of its arguments matching the required arguments of one of its delegate constructors.}
\section{Enums and Flags}{\describe{
\item{\verb{CairoContent}}{
\code{\link{CairoContent}} is used to describe the content that a surface will
contain, whether color information, alpha information (translucence
vs. opacity), or both.
  
Note: The large values here are designed to keep \code{\link{CairoContent}}
values distinct from \code{\link{CairoFormat}} values so that the
implementation can detect the error if users confuse the two types.  

\describe{
\item{\verb{color}}{ The surface will hold color content only.}
\item{\verb{alpha}}{ The surface will hold alpha content only.}
\item{\verb{color-alpha}}{ The surface will hold color and alpha content.}
}

}
\item{\verb{CairoSurfaceType}}{
\code{\link{CairoSurfaceType}} is used to describe the type of a given
surface. The surface types are also known as "backends" or "surface
backends" within cairo.
  
The type of a surface is determined by the function used to create
it, which will generally be of the form cairo_\emph{type}\code{surfaceCreate()},
(though see \code{\link{cairoSurfaceCreateSimilar}} as well).
  
The surface type can be queried with \code{\link{cairoSurfaceGetType}}
  
The various \code{\link{CairoSurface}} functions can be used with surfaces of
any type, but some backends also provide type-specific functions
that must only be called with a surface of the appropriate
type. These functions have names that begin with
cairo_\emph{type}_surface such as \code{\link{cairoImageSurfaceGetWidth}}.
  
The behavior of calling a type-specific function with a surface of
the wrong type is undefined.
  
New entries may be added in future versions.  
  Since 1.2

\describe{
\item{\verb{image}}{ The surface is of type image}
\item{\verb{pdf}}{ The surface is of type pdf}
\item{\verb{ps}}{ The surface is of type ps}
\item{\verb{xlib}}{ The surface is of type xlib}
\item{\verb{xcb}}{ The surface is of type xcb}
\item{\verb{glitz}}{ The surface is of type glitz}
\item{\verb{quartz}}{ The surface is of type quartz}
\item{\verb{win32}}{ The surface is of type win32}
\item{\verb{beos}}{ The surface is of type beos}
\item{\verb{directfb}}{ The surface is of type directfb}
\item{\verb{svg}}{ The surface is of type svg}
}

}
}}
\references{\url{https://www.cairographics.org/manual/cairo-cairo-surface-t.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
