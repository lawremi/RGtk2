\alias{gdkPixbufCopyArea}
\name{gdkPixbufCopyArea}
\title{gdkPixbufCopyArea}
\description{Copies a rectangular area from \code{src.pixbuf} to \code{dest.pixbuf}.  Conversion of
pixbuf formats is done automatically.}
\usage{gdkPixbufCopyArea(object, src.x, src.y, width, height, dest.pixbuf, dest.x, dest.y)}
\arguments{
\item{\code{object}}{[\code{\link{GdkPixbuf}}]  Source pixbuf.}
\item{\code{src.x}}{[integer]  Source X coordinate within \code{src.pixbuf}.}
\item{\code{src.y}}{[integer]  Source Y coordinate within \code{src.pixbuf}.}
\item{\code{width}}{[integer]  Width of the area to copy.}
\item{\code{height}}{[integer]  Height of the area to copy.}
\item{\code{dest.pixbuf}}{[\code{\link{GdkPixbuf}}]  Destination pixbuf.}
\item{\code{dest.x}}{[integer]  X coordinate within \code{dest.pixbuf}.}
\item{\code{dest.y}}{[integer]  Y coordinate within \code{dest.pixbuf}.}
}
\details{If the source rectangle overlaps the destination rectangle on the
same pixbuf, it will be overwritten during the copy operation.
Therefore, you can not use this function to scroll a pixbuf.  }
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
