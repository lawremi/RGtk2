\alias{gdkPixbufFlip}
\name{gdkPixbufFlip}
\title{gdkPixbufFlip}
\description{Flips a pixbuf horizontally or vertically and returns the
result in a new pixbuf.}
\usage{gdkPixbufFlip(object, horizontal)}
\arguments{
\item{\verb{object}}{a \code{\link{GdkPixbuf}}}
\item{\verb{horizontal}}{\code{TRUE} to flip horizontally, \code{FALSE} to flip vertically}
}
\details{Since 2.6}
\value{[\code{\link{GdkPixbuf}}] the new \code{\link{GdkPixbuf}}, or \code{NULL} if not enough memory could be
allocated for it.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
