\alias{gdkImageNew}
\name{gdkImageNew}
\title{gdkImageNew}
\description{Creates a new \code{\link{GdkImage}}.}
\usage{gdkImageNew(type, visual, width, height)}
\arguments{
\item{\verb{type}}{the type of the \code{\link{GdkImage}}, one of \code{GDK_IMAGE_NORMAL}, \code{GDK_IMAGE_SHARED}
and \code{GDK_IMAGE_FASTEST}. \code{GDK_IMAGE_FASTEST} is probably the best choice, since
it will try creating a \code{GDK_IMAGE_SHARED} image first and if that fails it will
then use \code{GDK_IMAGE_NORMAL}.}
\item{\verb{visual}}{the \code{\link{GdkVisual}} to use for the image.}
\item{\verb{width}}{the width of the image in pixels.}
\item{\verb{height}}{the height of the image in pixels.}
}
\value{[\code{\link{GdkImage}}] a new \code{\link{GdkImage}}, or \code{NULL} if the image could not be created.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
