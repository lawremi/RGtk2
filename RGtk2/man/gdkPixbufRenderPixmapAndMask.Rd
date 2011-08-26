\alias{gdkPixbufRenderPixmapAndMask}
\name{gdkPixbufRenderPixmapAndMask}
\title{gdkPixbufRenderPixmapAndMask}
\description{Creates a pixmap and a mask bitmap which are returned in the \code{pixmap.return}
and \code{mask.return} arguments, respectively, and renders a pixbuf and its
corresponding thresholded alpha mask to them.  This is merely a convenience
function; applications that need to render pixbufs with dither offsets or to
given drawables should use \code{\link{gdkDrawPixbuf}} and \code{\link{gdkPixbufRenderThresholdAlpha}}.}
\usage{gdkPixbufRenderPixmapAndMask(object, alpha.threshold = 127)}
\arguments{
\item{\verb{object}}{A pixbuf.}
\item{\verb{alpha.threshold}}{Threshold value for opacity values.}
}
\details{The pixmap that is created is created for the colormap returned
by \code{\link{gdkRgbGetColormap}}. You normally will want to instead use
the actual colormap for a widget, and use
\code{\link{gdkPixbufRenderPixmapAndMaskForColormap}}.
  
If the pixbuf does not have an alpha channel, then *\code{mask.return} will be set
to \code{NULL}.}
\value{
A list containing the following elements:
\item{\verb{pixmap.return}}{Location to store a pointer to the created pixmap,
or \code{NULL} if the pixmap is not needed.}
\item{\verb{mask.return}}{Location to store a pointer to the created mask,
or \code{NULL} if the mask is not needed.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
