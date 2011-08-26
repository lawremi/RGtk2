\alias{gdkPixbufScaleSimple}
\name{gdkPixbufScaleSimple}
\title{gdkPixbufScaleSimple}
\description{Create a new \code{\link{GdkPixbuf}} containing a copy of \code{src} scaled to
\code{dest.width} x \code{dest.height}. Leaves \code{src} unaffected.  \code{interp.type}
should be \verb{GDK_INTERP_NEAREST} if you want maximum speed (but when
scaling down \verb{GDK_INTERP_NEAREST} is usually unusably ugly).  The
default \code{interp.type} should be \verb{GDK_INTERP_BILINEAR} which offers
reasonable quality and speed.}
\usage{gdkPixbufScaleSimple(object, dest.width, dest.height, interp.type)}
\arguments{
\item{\verb{object}}{a \code{\link{GdkPixbuf}}}
\item{\verb{dest.width}}{the width of destination image}
\item{\verb{dest.height}}{the height of destination image}
\item{\verb{interp.type}}{the interpolation type for the transformation.}
}
\details{You can scale a sub-portion of \code{src} by creating a sub-pixbuf
pointing into \code{src}; see \code{\link{gdkPixbufNewSubpixbuf}}.
  
For more complicated scaling/compositing see \code{\link{gdkPixbufScale}}
and \code{\link{gdkPixbufComposite}}.}
\value{[\code{\link{GdkPixbuf}}] the new \code{\link{GdkPixbuf}}, or \code{NULL} if not enough memory could be
allocated for it.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
