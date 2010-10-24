\alias{gdkPixbufFormatSetDisabled}
\name{gdkPixbufFormatSetDisabled}
\title{gdkPixbufFormatSetDisabled}
\description{Disables or enables an image format. If a format is disabled, 
gdk-pixbuf won't use the image loader for this format to load 
images. Applications can use this to avoid using image loaders 
with an inappropriate license, see \code{\link{gdkPixbufFormatGetLicense}}.}
\usage{gdkPixbufFormatSetDisabled(object, disabled)}
\arguments{
\item{\verb{object}}{a \code{\link{GdkPixbufFormat}}}
\item{\verb{disabled}}{\code{TRUE} to disable the format \code{format}}
}
\details{Since 2.6}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
