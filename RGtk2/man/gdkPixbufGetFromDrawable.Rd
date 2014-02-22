\alias{gdkPixbufGetFromDrawable}
\name{gdkPixbufGetFromDrawable}
\title{gdkPixbufGetFromDrawable}
\description{Transfers image data from a \code{\link{GdkDrawable}} and converts it to an RGB(A)
representation inside a \code{\link{GdkPixbuf}}. In other words, copies
image data from a server-side drawable to a client-side RGB(A) buffer.
This allows you to efficiently read individual pixels on the client side.}
\usage{gdkPixbufGetFromDrawable(dest = NULL, src, cmap = NULL, src.x, 
    src.y, dest.x, dest.y, width, height)}
\arguments{
\item{\verb{dest}}{Destination pixbuf, or \code{NULL} if a new pixbuf should be created. \emph{[  \acronym{allow-none}  ]}}
\item{\verb{src}}{Source drawable.}
\item{\verb{cmap}}{A colormap if \code{src} doesn't have one set.}
\item{\verb{src.x}}{Source X coordinate within drawable.}
\item{\verb{src.y}}{Source Y coordinate within drawable.}
\item{\verb{dest.x}}{Destination X coordinate in pixbuf, or 0 if \code{dest} is NULL.}
\item{\verb{dest.y}}{Destination Y coordinate in pixbuf, or 0 if \code{dest} is NULL.}
\item{\verb{width}}{Width in pixels of region to get.}
\item{\verb{height}}{Height in pixels of region to get.}
}
\details{If the drawable \code{src} has no colormap (\code{\link{gdkDrawableGetColormap}}
returns \code{NULL}), then a suitable colormap must be specified.
Typically a \code{\link{GdkWindow}} or a pixmap created by passing a \code{\link{GdkWindow}}
to \code{\link{gdkPixmapNew}} will already have a colormap associated with
it.  If the drawable has a colormap, the \code{cmap} argument will be
ignored.  If the drawable is a bitmap (1 bit per pixel pixmap),
then a colormap is not required; pixels with a value of 1 are
assumed to be white, and pixels with a value of 0 are assumed to be
black. For taking screenshots, \code{\link{gdkColormapGetSystem}} returns
the correct colormap to use.
  
If the specified destination pixbuf \code{dest} is \code{NULL}, then this
function will create an RGB pixbuf with 8 bits per channel and no
alpha, with the same size specified by the \code{width} and \code{height}
arguments.  In this case, the \code{dest.x} and \code{dest.y} arguments must be
specified as 0.  If the specified destination pixbuf is not \code{NULL}
and it contains alpha information, then the filled pixels will be
set to full opacity (alpha = 255).
  
If the specified drawable is a pixmap, then the requested source
rectangle must be completely contained within the pixmap, otherwise
the function will return \code{NULL}. For pixmaps only (not for windows)
passing -1 for width or height is allowed to mean the full width
or height of the pixmap.
  
If the specified drawable is a window, and the window is off the
screen, then there is no image data in the obscured/offscreen
regions to be placed in the pixbuf. The contents of portions of the
pixbuf corresponding to the offscreen region are undefined.
  
If the window you're obtaining data from is partially obscured by
other windows, then the contents of the pixbuf areas corresponding
to the obscured regions are undefined.
  
If the target drawable is not mapped (typically because it's
iconified/minimized or not on the current workspace), then \code{NULL}
will be returned.
  
If memory can't be allocated for the return value, \code{NULL} will be returned
instead.
  
(In short, there are several ways this function can fail, and if it fails
 it returns \code{NULL}; so check the return value.)
  
This function calls \code{\link{gdkDrawableGetImage}} internally and
converts the resulting image to a \code{\link{GdkPixbuf}}, so the
documentation for \code{\link{gdkDrawableGetImage}} may also be relevant.}
\value{[\code{\link{GdkPixbuf}}] The same pixbuf as \code{dest} if it was non-\code{NULL}, or a newly-created
pixbuf with a reference count of 1 if no destination pixbuf was specified, or \code{NULL} on error}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
