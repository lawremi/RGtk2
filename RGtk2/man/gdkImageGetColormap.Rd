\alias{gdkImageGetColormap}
\name{gdkImageGetColormap}
\title{gdkImageGetColormap}
\description{Retrieves the colormap for a given image, if it exists.  An image
will have a colormap if the drawable from which it was created has
a colormap, or if a colormap was set explicitely with
\code{\link{gdkImageSetColormap}}.}
\usage{gdkImageGetColormap(object)}
\arguments{\item{\verb{object}}{a \code{\link{GdkImage}}}}
\value{[\code{\link{GdkColormap}}] colormap for the image}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
