\alias{gdkPixbufAnimationGetStaticImage}
\name{gdkPixbufAnimationGetStaticImage}
\title{gdkPixbufAnimationGetStaticImage}
\description{If an animation is really just a plain image (has only one frame),
this function returns that image. If the animation is an animation,
this function returns a reasonable thing to display as a static
unanimated image, which might be the first frame, or something more
sophisticated. If an animation hasn't loaded any frames yet, this
function will return \code{NULL}.}
\usage{gdkPixbufAnimationGetStaticImage(object)}
\arguments{\item{\verb{object}}{a \code{\link{GdkPixbufAnimation}}}}
\value{[\code{\link{GdkPixbuf}}] unanimated image representing the animation}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
