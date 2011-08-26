\alias{gdkPixbufAnimationGetIter}
\name{gdkPixbufAnimationGetIter}
\title{gdkPixbufAnimationGetIter}
\description{Get an iterator for displaying an animation. The iterator provides
the frames that should be displayed at a given time.}
\usage{gdkPixbufAnimationGetIter(object, start.time)}
\arguments{
\item{\verb{object}}{a \code{\link{GdkPixbufAnimation}}}
\item{\verb{start.time}}{time when the animation starts playing}
}
\details{\code{start.time} would normally come from \code{gGetCurrentTime()}, and
marks the beginning of animation playback. After creating an
iterator, you should immediately display the pixbuf returned by
\code{\link{gdkPixbufAnimationIterGetPixbuf}}. Then, you should install a
timeout (with \code{\link{gTimeoutAdd}}) or by some other mechanism ensure
that you'll update the image after
\code{\link{gdkPixbufAnimationIterGetDelayTime}} milliseconds. Each time
the image is updated, you should reinstall the timeout with the new,
possibly-changed delay time.
  
As a shortcut, if \code{start.time} is \code{NULL}, the result of
\code{gGetCurrentTime()} will be used automatically.
  
To update the image (i.e. possibly change the result of
\code{\link{gdkPixbufAnimationIterGetPixbuf}} to a new frame of the animation),
call \code{\link{gdkPixbufAnimationIterAdvance}}.
  
If you're using \code{\link{GdkPixbufLoader}}, in addition to updating the image
after the delay time, you should also update it whenever you
receive the area_updated signal and
\code{\link{gdkPixbufAnimationIterOnCurrentlyLoadingFrame}} returns
\code{TRUE}. In this case, the frame currently being fed into the loader
has received new data, so needs to be refreshed. The delay time for
a frame may also be modified after an area_updated signal, for
example if the delay time for a frame is encoded in the data after
the frame itself. So your timeout should be reinstalled after any
area_updated signal.
  
A delay time of -1 is possible, indicating "infinite."}
\value{[\code{\link{GdkPixbufAnimationIter}}] an iterator to move over the animation}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
