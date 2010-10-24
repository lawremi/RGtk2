\alias{gdkPixbufAnimationIterOnCurrentlyLoadingFrame}
\name{gdkPixbufAnimationIterOnCurrentlyLoadingFrame}
\title{gdkPixbufAnimationIterOnCurrentlyLoadingFrame}
\description{Used to determine how to respond to the area_updated signal on
\code{\link{GdkPixbufLoader}} when loading an animation. area_updated is emitted
for an area of the frame currently streaming in to the loader. So if
you're on the currently loading frame, you need to redraw the screen for
the updated area.}
\usage{gdkPixbufAnimationIterOnCurrentlyLoadingFrame(object)}
\arguments{\item{\verb{object}}{a \code{\link{GdkPixbufAnimationIter}}}}
\value{[logical] \code{TRUE} if the frame we're on is partially loaded, or the last frame}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
