\alias{gtkIconInfoSetRawCoordinates}
\name{gtkIconInfoSetRawCoordinates}
\title{gtkIconInfoSetRawCoordinates}
\description{Sets whether the coordinates returned by \code{\link{gtkIconInfoGetEmbeddedRect}}
and \code{\link{gtkIconInfoGetAttachPoints}} should be returned in their
original form as specified in the icon theme, instead of scaled
appropriately for the pixbuf returned by \code{\link{gtkIconInfoLoadIcon}}.}
\usage{gtkIconInfoSetRawCoordinates(object, raw.coordinates)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkIconInfo}}}
\item{\verb{raw.coordinates}}{whether the coordinates of embedded rectangles
and attached points should be returned in their original
(unscaled) form.}
}
\details{Raw coordinates are somewhat strange; they are specified to be with
respect to the unscaled pixmap for PNG and XPM icons, but for SVG
icons, they are in a 1000x1000 coordinate space that is scaled
to the final size of the icon.  You can determine if the icon is an SVG
icon by using \code{\link{gtkIconInfoGetFilename}}, and seeing if it is non-\code{NULL}
and ends in '.svg'.
  
This function is provided primarily to allow compatibility wrappers
for older API's, and is not expected to be useful for applications.
  Since 2.4}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
