\alias{gdkPixbufLoaderGetAnimation}
\name{gdkPixbufLoaderGetAnimation}
\title{gdkPixbufLoaderGetAnimation}
\description{Queries the \code{\link{GdkPixbufAnimation}} that a pixbuf loader is currently creating.
In general it only makes sense to call this function after the "area-prepared"
signal has been emitted by the loader. If the loader doesn't have enough
bytes yet (hasn't emitted the "area-prepared" signal) this function will 
return \code{NULL}.}
\usage{gdkPixbufLoaderGetAnimation(object)}
\arguments{\item{\verb{object}}{A pixbuf loader}}
\value{[\code{\link{GdkPixbufAnimation}}] The \code{\link{GdkPixbufAnimation}} that the loader is loading, or \code{NULL} if
not enough data has been read to determine the information.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
