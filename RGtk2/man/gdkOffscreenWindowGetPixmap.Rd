\alias{gdkOffscreenWindowGetPixmap}
\name{gdkOffscreenWindowGetPixmap}
\title{gdkOffscreenWindowGetPixmap}
\description{Gets the offscreen pixmap that an offscreen window renders into.
If you need to keep this around over window resizes, you need to
add a reference to it.}
\usage{gdkOffscreenWindowGetPixmap(window)}
\arguments{\item{\verb{window}}{a \code{\link{GdkWindow}}}}
\details{Since 2.18}
\value{[\code{\link{GdkPixmap}}] The offscreen pixmap, or \code{NULL} if not offscreen}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
