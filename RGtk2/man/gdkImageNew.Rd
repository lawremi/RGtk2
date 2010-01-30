\alias{gdkImageNew}
\name{gdkImageNew}
\title{gdkImageNew}
\description{Creates a new \verb{\link{GdkImage}}.}
\usage{gdkImageNew(type, visual, width, height)}
\arguments{
\item{\verb{type}}{[\code{\link{GdkImageType}}] the type of the \verb{\link{GdkImage}}, one of \code{GDK_IMAGE_NORMAL}, \code{GDK_IMAGE_SHARED}
and \code{GDK_IMAGE_FASTEST}. \code{GDK_IMAGE_FASTEST} is probably the best choice, since
it will try creating a \code{GDK_IMAGE_SHARED} image first and if that fails it will
then use \code{GDK_IMAGE_NORMAL}.}
\item{\verb{visual}}{[\verb{\link{GdkVisual}}] the \verb{\link{GdkVisual}} to use for the image.}
\item{\verb{width}}{[integer] the width of the image in pixels.}
\item{\verb{height}}{[integer] the height of the image in pixels.}
}
\value{[\verb{\link{GdkImage}}] a new \verb{\link{GdkImage}}, or \code{NULL} if the image could not be created.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
