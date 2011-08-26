\alias{gtkIconInfoGetEmbeddedRect}
\name{gtkIconInfoGetEmbeddedRect}
\title{gtkIconInfoGetEmbeddedRect}
\description{Gets the coordinates of a rectangle within the icon
that can be used for display of information such
as a preview of the contents of a text file.
See \code{\link{gtkIconInfoSetRawCoordinates}} for further
information about the coordinate system.}
\usage{gtkIconInfoGetEmbeddedRect(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkIconInfo}}}}
\details{Since 2.4}
\value{
A list containing the following elements:
\item{retval}{[logical] \code{TRUE} if the icon has an embedded rectangle}
\item{\verb{rectangle}}{\code{\link{GdkRectangle}} in which to store embedded
rectangle coordinates; coordinates are only stored
when this function returns \code{TRUE}.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
