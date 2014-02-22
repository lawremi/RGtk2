\alias{gdkPixbufCopyArea}
\name{gdkPixbufCopyArea}
\title{gdkPixbufCopyArea}
\description{Copies a rectangular area from \code{src.pixbuf} to \code{dest.pixbuf}.  Conversion of
pixbuf formats is done automatically.}
\usage{gdkPixbufCopyArea(object, src.x, src.y, width, height, dest.pixbuf, 
    dest.x, dest.y)}
\arguments{
\item{\verb{object}}{Source pixbuf.}
\item{\verb{src.x}}{Source X coordinate within \code{src.pixbuf}.}
\item{\verb{src.y}}{Source Y coordinate within \code{src.pixbuf}.}
\item{\verb{width}}{Width of the area to copy.}
\item{\verb{height}}{Height of the area to copy.}
\item{\verb{dest.pixbuf}}{Destination pixbuf.}
\item{\verb{dest.x}}{X coordinate within \code{dest.pixbuf}.}
\item{\verb{dest.y}}{Y coordinate within \code{dest.pixbuf}.}
}
\details{If the source rectangle overlaps the destination rectangle on the
same pixbuf, it will be overwritten during the copy operation.
Therefore, you can not use this function to scroll a pixbuf.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
