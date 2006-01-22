\alias{cairo-cairo-surface-t}
\alias{cairo_surface_t}
\alias{cairo_content_t}
\name{cairo-cairo-surface-t}
\title{cairo_surface_t}
\description{Base class for surfaces}
\section{Methods and Functions}{
\link{cairoSurfaceCreateSimilar}(other, content, width, height)
\link{cairoSurfaceDestroy}(surface)
\link{cairoSurfaceFinish}(surface)
\link{cairoSurfaceFlush}(surface)
\link{cairoSurfaceGetFontOptions}(surface)
\link{cairoSurfaceSetUserData}(surface, key, user.data, destroy)
\link{cairoSurfaceGetUserData}(surface, key)
\link{cairoSurfaceMarkDirty}(surface)
\link{cairoSurfaceMarkDirtyRectangle}(surface, x, y, width, height)
\link{cairoSurfaceReference}(surface)
\link{cairoSurfaceSetDeviceOffset}(surface, x.offset, y.offset)
\link{cairoSurfaceStatus}(surface)
}
\section{Structures}{\describe{\item{\code{cairo_surface_t}}{
A \code{\link{cairo_surface_t}} represents an image, either as the destination
of a drawing operation or as source when drawing onto another
surface. There are different subtypes of cairo_surface_t for
different drawing backends; for example, \code{\link{cairoImageSurfaceCreate}}
creates a bitmap image in memory.
  
Memory management of \code{\link{cairo_surface_t}} is done with
\code{\link{cairoSurfaceReference}} and \code{\link{cairoSurfaceDestroy}}.  

}}}
\section{Enums and Flags}{\describe{\item{\code{enum cairo_content_t}}{
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
\references{\url{http://developer.gnome.org/doc/API/2.0/cairo/cairo-cairo-surface-t.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
