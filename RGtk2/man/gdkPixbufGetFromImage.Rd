\alias{gdkPixbufGetFromImage}
\name{gdkPixbufGetFromImage}
\title{gdkPixbufGetFromImage}
\description{Same as \code{\link{gdkPixbufGetFromDrawable}} but gets the pixbuf from
an image.}
\usage{gdkPixbufGetFromImage(src, cmap, src.x, src.y, dest.x, dest.y, 
    width, height)}
\arguments{
\item{\verb{src}}{Source \code{\link{GdkImage}}.}
\item{\verb{cmap}}{A colormap, or \code{NULL} to use the one for \code{src}. \emph{[  \acronym{allow-none}  ]}}
\item{\verb{src.x}}{Source X coordinate within drawable.}
\item{\verb{src.y}}{Source Y coordinate within drawable.}
\item{\verb{dest.x}}{Destination X coordinate in pixbuf, or 0 if \code{dest} is NULL.}
\item{\verb{dest.y}}{Destination Y coordinate in pixbuf, or 0 if \code{dest} is NULL.}
\item{\verb{width}}{Width in pixels of region to get.}
\item{\verb{height}}{Height in pixels of region to get.}
}
\value{
A list containing the following elements:
\item{retval}{[\code{\link{GdkPixbuf}}] \code{dest}, newly-created pixbuf if \code{dest} was \code{NULL}, \code{NULL} on error}
\item{\verb{dest}}{Destination pixbuf, or \code{NULL} if a new pixbuf should be created. \emph{[  \acronym{allow-none}  ]}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
