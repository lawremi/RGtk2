\alias{gdkPixbufGetFromImage}
\name{gdkPixbufGetFromImage}
\title{gdkPixbufGetFromImage}
\description{Same as \code{\link{gdkPixbufGetFromDrawable}} but gets the pixbuf from
an image.}
\usage{gdkPixbufGetFromImage(src, cmap, src.x, src.y, dest.x, dest.y, width, height)}
\arguments{
\item{\code{src}}{[\code{\link{GdkImage}}]  Source \code{\link{GdkImage}}.}
\item{\code{cmap}}{[\code{\link{GdkColormap}}]  A colormap, or \code{NULL} to use the one for \code{src}}
\item{\code{src.x}}{[integer]  Source X coordinate within drawable.}
\item{\code{src.y}}{[integer]  Source Y coordinate within drawable.}
\item{\code{dest.x}}{[integer]  Destination X coordinate in pixbuf, or 0 if \code{dest} is NULL.}
\item{\code{dest.y}}{[integer]  Destination Y coordinate in pixbuf, or 0 if \code{dest} is NULL.}
\item{\code{width}}{[integer]  Width in pixels of region to get.}
\item{\code{height}}{[integer]  Height in pixels of region to get.}
}
\value{
A list containing the following elements:
\item{retval}{[\code{\link{GdkPixbuf}}]  \code{dest}, newly-created pixbuf if \code{dest} was \code{NULL}, \code{NULL} on error}
\item{\code{dest}}{[\code{\link{GdkPixbuf}}]  Destination pixbuf, or \code{NULL} if a new pixbuf should be created.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
