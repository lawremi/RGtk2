\alias{gdkColorBlack}
\name{gdkColorBlack}
\title{gdkColorBlack}
\description{
Returns the black color for a given colormap. The resulting
value has already been allocated.
\strong{WARNING: \code{gdk_color_black} is deprecated and should not be used in newly-written code.}
}
\usage{gdkColorBlack(object)}
\arguments{\item{\verb{object}}{a \code{\link{GdkColormap}}.}}
\value{
A list containing the following elements:
\item{retval}{[integer] \code{TRUE} if the allocation succeeded.}
\item{\verb{color}}{the location to store the color.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
