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
\item{\verb{object}}{[\verb{\link{GdkPixbuf}}]  a \verb{\link{GdkPixbuf}}}
\item{\verb{src.x}}{[integer]  X coord in \code{src.pixbuf}}
\item{\verb{src.y}}{[integer]  Y coord in \code{src.pixbuf}}
\item{\verb{width}}{[integer]  width of region in \code{src.pixbuf}}
\item{\verb{height}}{[integer]  height of region in \code{src.pixbuf}}
}
\value{[\verb{\link{GdkPixbuf}}]  a new pixbuf }
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
