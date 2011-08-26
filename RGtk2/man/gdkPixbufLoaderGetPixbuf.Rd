\alias{gdkPixbufLoaderGetPixbuf}
\name{gdkPixbufLoaderGetPixbuf}
\title{gdkPixbufLoaderGetPixbuf}
\description{Queries the \code{\link{GdkPixbuf}} that a pixbuf loader is currently creating.
In general it only makes sense to call this function after the
"area-prepared" signal has been emitted by the loader; this means
that enough data has been read to know the size of the image that
will be allocated.  If the loader has not received enough data via
\code{\link{gdkPixbufLoaderWrite}}, then this function returns \code{NULL}.  The
returned pixbuf will be the same in all future calls to the loader,  Additionally, if the loader is an animation, it will
return the "static image" of the animation
(see \code{\link{gdkPixbufAnimationGetStaticImage}}).}
\usage{gdkPixbufLoaderGetPixbuf(object)}
\arguments{\item{\verb{object}}{A pixbuf loader.}}
\value{[\code{\link{GdkPixbuf}}] The \code{\link{GdkPixbuf}} that the loader is creating, or \code{NULL} if not
enough data has been read to determine how to create the image buffer.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
