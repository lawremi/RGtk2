\alias{gdkPixbufNewSubpixbuf}
\name{gdkPixbufNewSubpixbuf}
\title{gdkPixbufNewSubpixbuf}
\description{Creates a new pixbuf which represents a sub-region of
\code{src.pixbuf}. The new pixbuf shares its pixels with the
original pixbuf, so writing to one affects both.
The new pixbuf holds a reference to \code{src.pixbuf}, so
\code{src.pixbuf} will not be finalized until the new pixbuf
is finalized.}
\usage{gdkPixbufNewSubpixbuf(object, src.x, src.y, width, height)}
\arguments{
\item{\code{object}}{[\code{\link{GdkPixbuf}}]  a \code{\link{GdkPixbuf}}}
\item{\code{src.x}}{[integer]  X coord in \code{src.pixbuf}}
\item{\code{src.y}}{[integer]  Y coord in \code{src.pixbuf}}
\item{\code{width}}{[integer]  width of region in \code{src.pixbuf}}
\item{\code{height}}{[integer]  height of region in \code{src.pixbuf}}
}
\value{[\code{\link{GdkPixbuf}}]  a new pixbuf }
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
