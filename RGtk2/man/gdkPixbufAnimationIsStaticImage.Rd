\alias{gdkPixbufAnimationIsStaticImage}
\name{gdkPixbufAnimationIsStaticImage}
\title{gdkPixbufAnimationIsStaticImage}
\description{If you load a file with \code{\link{gdkPixbufAnimationNewFromFile}} and it turns
out to be a plain, unanimated image, then this function will return
\code{TRUE}. Use \code{\link{gdkPixbufAnimationGetStaticImage}} to retrieve
the image.}
\usage{gdkPixbufAnimationIsStaticImage(object)}
\arguments{\item{\verb{object}}{a \code{\link{GdkPixbufAnimation}}}}
\value{[logical] \code{TRUE} if the "animation" was really just an image}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
