\alias{gdkDrawableCopyToImage}
\name{gdkDrawableCopyToImage}
\title{gdkDrawableCopyToImage}
\description{Copies a portion of \code{drawable} into the client side image structure
\code{image}. If \code{image} is \code{NULL}, creates a new image of size \code{width} x \code{height}
and copies into that. See \code{\link{gdkDrawableGetImage}} for further details.}
\usage{gdkDrawableCopyToImage(object, image = NULL, src.x, src.y, dest.x, 
    dest.y, width, height)}
\arguments{
\item{\verb{object}}{a \code{\link{GdkDrawable}}}
\item{\verb{image}}{a \code{\link{GdkDrawable}}, or \code{NULL} if a new \code{image} should be created. \emph{[  \acronym{allow-none}  ]}}
\item{\verb{src.x}}{x coordinate on \code{drawable}}
\item{\verb{src.y}}{y coordinate on \code{drawable}}
\item{\verb{dest.x}}{x coordinate within \code{image}. Must be 0 if \code{image} is \code{NULL}}
\item{\verb{dest.y}}{y coordinate within \code{image}. Must be 0 if \code{image} is \code{NULL}}
\item{\verb{width}}{width of region to get}
\item{\verb{height}}{height or region to get}
}
\details{Since 2.4}
\value{[\code{\link{GdkImage}}] \code{image}, or a new a \code{\link{GdkImage}} containing the contents
of \code{drawable}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
