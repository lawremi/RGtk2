\alias{gdkCairoSetSourcePixbuf}
\name{gdkCairoSetSourcePixbuf}
\title{gdkCairoSetSourcePixbuf}
\description{Sets the given pixbuf as the source pattern for the Cairo context.
The pattern has an extend mode of \code{CAIRO_EXTEND_NONE} and is aligned
so that the origin of \code{pixbuf} is \code{pixbuf.x}, \code{pixbuf.y}}
\usage{gdkCairoSetSourcePixbuf(cr, pixbuf, pixbuf.x, pixbuf.y)}
\arguments{
\item{\code{cr}}{[\code{\link{cairo_t}}]  a \code{\link{Cairo}} context}
\item{\code{pixbuf}}{[\code{\link{GdkPixbuf}}]  a \code{\link{GdkPixbuf}}}
\item{\code{pixbuf.x}}{[numeric]  X coordinate of location to place upper left corner of \code{pixbuf}}
\item{\code{pixbuf.y}}{[numeric]  Y coordinate of location to place upper left corner of \code{pixbuf}}
}
\details{  Since  2.8}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
