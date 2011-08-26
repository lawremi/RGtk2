\alias{gdkPixbufApplyEmbeddedOrientation}
\name{gdkPixbufApplyEmbeddedOrientation}
\title{gdkPixbufApplyEmbeddedOrientation}
\description{Takes an existing pixbuf and checks for the presence of an
associated "orientation" option, which may be provided by the 
jpeg loader (which reads the exif orientation tag) or the 
tiff loader (which reads the tiff orientation tag, and
compensates it for the partial transforms performed by 
libtiff). If an orientation option/tag is present, the
appropriate transform will be performed so that the pixbuf
is oriented correctly.}
\usage{gdkPixbufApplyEmbeddedOrientation(object)}
\arguments{\item{\verb{object}}{A \code{\link{GdkPixbuf}}.}}
\details{Since 2.12}
\value{[\code{\link{GdkPixbuf}}] A newly-created pixbuf, or a reference to the
input pixbuf (with an increased reference count).}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
