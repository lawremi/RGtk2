\alias{gdkPixbufLoaderGetFormat}
\name{gdkPixbufLoaderGetFormat}
\title{gdkPixbufLoaderGetFormat}
\description{Obtains the available information about the format of the 
currently loading image file.}
\usage{gdkPixbufLoaderGetFormat(object)}
\arguments{\item{\verb{object}}{A pixbuf loader.}}
\details{Since 2.2}
\value{[\code{\link{GdkPixbufFormat}}] A \code{\link{GdkPixbufFormat}} or \code{NULL}. The return value is owned
by GdkPixbuf and should not be freed.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
