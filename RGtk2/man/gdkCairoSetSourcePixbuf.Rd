\alias{gdkCairoSetSourcePixbuf}
\name{gdkCairoSetSourcePixbuf}
\title{gdkCairoSetSourcePixbuf}
\description{Sets the given pixbuf as the source pattern for the Cairo context.
The pattern has an extend mode of \code{CAIRO_EXTEND_NONE} and is aligned
so that the origin of \code{pixbuf} is \code{pixbuf.x}, \code{pixbuf.y}}
\usage{gdkCairoSetSourcePixbuf(cr, pixbuf, pixbuf.x, pixbuf.y)}
\arguments{
\item{\verb{cr}}{[\verb{\link{Cairo}}]  a \verb{Cairo} context}
\item{\verb{pixbuf}}{[\verb{\link{GdkPixbuf}}]  a \verb{\link{GdkPixbuf}}}
\item{\verb{pixbuf.x}}{[numeric]  X coordinate of location to place upper left corner of \code{pixbuf}}
\item{\verb{pixbuf.y}}{[numeric]  Y coordinate of location to place upper left corner of \code{pixbuf}}
}
\details{  Since  2.8}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
