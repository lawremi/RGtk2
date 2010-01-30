\alias{gdkPixbufGetFromImage}
\name{gdkPixbufGetFromImage}
\title{gdkPixbufGetFromImage}
\description{Same as \code{\link{gdkPixbufGetFromDrawable}} but gets the pixbuf from
an image.}
\usage{gdkPixbufGetFromImage(src, cmap, src.x, src.y, dest.x, dest.y, width, height)}
\arguments{
\item{\verb{src}}{[\verb{\link{GdkImage}}]  Source \verb{\link{GdkImage}}.}
\item{\verb{cmap}}{[\verb{\link{GdkColormap}}]  A colormap, or \code{NULL} to use the one for \code{src}}
\item{\verb{src.x}}{[integer]  Source X coordinate within drawable.}
\item{\verb{src.y}}{[integer]  Source Y coordinate within drawable.}
\item{\verb{dest.x}}{[integer]  Destination X coordinate in pixbuf, or 0 if \code{dest} is NULL.}
\item{\verb{dest.y}}{[integer]  Destination Y coordinate in pixbuf, or 0 if \code{dest} is NULL.}
\item{\verb{width}}{[integer]  Width in pixels of region to get.}
\item{\verb{height}}{[integer]  Height in pixels of region to get.}
}
\value{
A list containing the following elements:
\item{retval}{[\verb{\link{GdkPixbuf}}] \code{dest}, newly-created pixbuf if \code{dest} was \code{NULL}, \code{NULL} on error}
\item{\verb{dest}}{[\verb{\link{GdkPixbuf}}]  Destination pixbuf, or \code{NULL} if a new pixbuf should be created.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
