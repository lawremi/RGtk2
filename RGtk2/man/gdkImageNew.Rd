\alias{gdkImageNew}
\name{gdkImageNew}
\title{gdkImageNew}
\description{Creates a new \code{\link{GdkImage}}.}
\usage{gdkImageNew(type, visual, width, height)}
\arguments{
\item{\code{type}}{[\code{\link{GdkImageType}}] the type of the \code{\link{GdkImage}}, one of \code{GDK_IMAGE_NORMAL}, \code{GDK_IMAGE_SHARED}
and \code{GDK_IMAGE_FASTEST}. \code{GDK_IMAGE_FASTEST} is probably the best choice, since
it will try creating a \code{GDK_IMAGE_SHARED} image first and if that fails it will
then use \code{GDK_IMAGE_NORMAL}.}
\item{\code{visual}}{[\code{\link{GdkVisual}}] the \code{\link{GdkVisual}} to use for the image.}
\item{\code{width}}{[integer] the width of the image in pixels.}
\item{\code{height}}{[integer] the height of the image in pixels.}
}
\value{[\code{\link{GdkImage}}] a new \code{\link{GdkImage}}, or \code{NULL} if the image could not be created.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
