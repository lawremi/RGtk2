\alias{gdkPixbufGetOption}
\name{gdkPixbufGetOption}
\title{gdkPixbufGetOption}
\description{Looks up \code{key} in the list of options that may have been attached to the
\code{pixbuf} when it was loaded, or that may have been attached by another
function using \code{\link{gdkPixbufSetOption}}.}
\usage{gdkPixbufGetOption(object, key)}
\arguments{
\item{\verb{object}}{a \code{\link{GdkPixbuf}}}
\item{\verb{key}}{a string.}
}
\details{For instance, the ANI loader provides "Title" and "Artist" options. 
The ICO, XBM, and XPM loaders provide "x_hot" and "y_hot" hot-spot 
options for cursor definitions. The PNG loader provides the tEXt ancillary
chunk key/value pairs as options. Since 2.12, the TIFF and JPEG loaders
return an "orientation" option string that corresponds to the embedded 
TIFF/Exif orientation tag (if present).}
\value{[character] the value associated with \code{key}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
