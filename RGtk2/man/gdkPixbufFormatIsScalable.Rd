\alias{gdkPixbufFormatIsScalable}
\name{gdkPixbufFormatIsScalable}
\title{gdkPixbufFormatIsScalable}
\description{Returns whether this image format is scalable. If a file is in a 
scalable format, it is preferable to load it at the desired size, 
rather than loading it at the default size and scaling the 
resulting pixbuf to the desired size.}
\usage{gdkPixbufFormatIsScalable(object)}
\arguments{\item{\verb{object}}{a \code{\link{GdkPixbufFormat}}}}
\details{Since 2.6}
\value{[logical] whether this image format is scalable.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
