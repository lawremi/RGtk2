\alias{gdkPixbufAnimationIterGetPixbuf}
\name{gdkPixbufAnimationIterGetPixbuf}
\title{gdkPixbufAnimationIterGetPixbuf}
\description{Gets the current pixbuf which should be displayed; the pixbuf will
be the same size as the animation itself
(\code{\link{gdkPixbufAnimationGetWidth}}, \code{\link{gdkPixbufAnimationGetHeight}}). 
This pixbuf should be displayed for 
\code{\link{gdkPixbufAnimationIterGetDelayTime}} milliseconds.  The caller
of this function does not own a reference to the returned pixbuf;
the returned pixbuf will become invalid when the iterator advances
to the next frame, which may happen anytime you call
\code{\link{gdkPixbufAnimationIterAdvance}}. Copy the pixbuf to keep it
(don't just add a reference), as it may get recycled as you advance
the iterator.}
\usage{gdkPixbufAnimationIterGetPixbuf(object)}
\arguments{\item{\verb{object}}{an animation iterator}}
\value{[\code{\link{GdkPixbuf}}] the pixbuf to be displayed}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
