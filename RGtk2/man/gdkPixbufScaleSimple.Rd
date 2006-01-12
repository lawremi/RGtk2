\alias{gdkPixbufScaleSimple}
\name{gdkPixbufScaleSimple}
\title{gdkPixbufScaleSimple}
\description{Create a new \code{\link{GdkPixbuf}} containing a copy of \code{src} scaled to
\code{dest.width} x \code{dest.height}. Leaves \code{src} unaffected.  \code{interp.type}
should be \code{GDK_INTERP_NEAREST} if you want maximum speed (but when
scaling down \code{GDK_INTERP_NEAREST} is usually unusably ugly).  The
default \code{interp.type} should be \code{GDK_INTERP_BILINEAR} which offers
reasonable quality and speed.}
\usage{gdkPixbufScaleSimple(object, dest.width, dest.height, interp.type)}
\arguments{
\item{\code{object}}{[\code{\link{GdkPixbuf}}]  a \code{\link{GdkPixbuf}}}
\item{\code{dest.width}}{[integer]  the width of destination image}
\item{\code{dest.height}}{[integer]  the height of destination image}
\item{\code{interp.type}}{[\code{\link{GdkInterpType}}]  the interpolation type for the transformation.}
}
\details{You can scale a sub-portion of \code{src} by creating a sub-pixbuf
pointing into \code{src}; see \code{\link{gdkPixbufNewSubpixbuf}}.
  
For more complicated scaling/compositing see \code{\link{gdkPixbufScale}}
and \code{\link{gdkPixbufComposite}}.  }
\value{[\code{\link{GdkPixbuf}}]  the new \code{\link{GdkPixbuf}}, or \code{NULL} if not enough memory could be
allocated for it.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
