\alias{gdkPixbufLoaderSetSize}
\name{gdkPixbufLoaderSetSize}
\title{gdkPixbufLoaderSetSize}
\description{Causes the image to be scaled while it is loaded. The desired
image size can be determined relative to the original size of
the image by calling \code{\link{gdkPixbufLoaderSetSize}} from a
signal handler for the ::size-prepared signal.}
\usage{gdkPixbufLoaderSetSize(object, width, height)}
\arguments{
\item{\verb{object}}{A pixbuf loader.}
\item{\verb{width}}{The desired width of the image being loaded.}
\item{\verb{height}}{The desired height of the image being loaded.}
}
\details{Attempts to set the desired image size  are ignored after the 
emission of the ::size-prepared signal.
  Since 2.2}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
