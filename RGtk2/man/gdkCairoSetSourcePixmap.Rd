\alias{gdkCairoSetSourcePixmap}
\name{gdkCairoSetSourcePixmap}
\title{gdkCairoSetSourcePixmap}
\description{Sets the given pixmap as the source pattern for the Cairo context.
The pattern has an extend mode of \code{CAIRO_EXTEND_NONE} and is aligned
so that the origin of \code{pixmap} is \code{pixmap.x}, \code{pixmap.y}}
\usage{gdkCairoSetSourcePixmap(cr, pixmap, pixmap.x, pixmap.y)}
\arguments{
\item{\code{cr}}{[\code{\link{Cairo}}]  a \code{Cairo} context}
\item{\code{pixmap}}{[\code{\link{GdkPixmap}}]  a \code{\link{GdkPixmap}}}
\item{\code{pixmap.x}}{[numeric]  X coordinate of location to place upper left corner of \code{pixmap}}
\item{\code{pixmap.y}}{[numeric]  Y coordinate of location to place upper left corner of \code{pixmap}}
}
\details{  Since  2.10}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
