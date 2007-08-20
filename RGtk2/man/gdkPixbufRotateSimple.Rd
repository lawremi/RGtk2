\alias{gdkPixbufRotateSimple}
\name{gdkPixbufRotateSimple}
\title{gdkPixbufRotateSimple}
\description{Rotates a pixbuf by a multiple of 90 degrees, and returns the
result in a new pixbuf.}
\usage{gdkPixbufRotateSimple(object, angle)}
\arguments{
\item{\code{object}}{[\code{\link{GdkPixbuf}}]  a \code{\link{GdkPixbuf}}}
\item{\code{angle}}{[\code{\link{GdkPixbufRotation}}]  the angle to rotate by}
}
\details{  Since  2.6}
\value{[\code{\link{GdkPixbuf}}]  the new \code{\link{GdkPixbuf}}, or \code{NULL} if not enough memory could be
allocated for it.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
