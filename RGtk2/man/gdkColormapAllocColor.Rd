\alias{gdkColormapAllocColor}
\name{gdkColormapAllocColor}
\title{gdkColormapAllocColor}
\description{Allocates a single color from a colormap.}
\usage{gdkColormapAllocColor(object, color, writeable, best.match)}
\arguments{
\item{\verb{object}}{a \code{\link{GdkColormap}}.}
\item{\verb{color}}{the color to allocate. On return the
\code{pixel} field will be
filled in if allocation succeeds.}
\item{\verb{writeable}}{If \code{TRUE}, the color is allocated writeable
(their values can later be changed using \code{\link{gdkColorChange}}).
Writeable colors cannot be shared between applications.}
\item{\verb{best.match}}{If \code{TRUE}, GDK will attempt to do matching against
existing colors if the color cannot be allocated as requested.}
}
\value{[logical] \code{TRUE} if the allocation succeeded.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
