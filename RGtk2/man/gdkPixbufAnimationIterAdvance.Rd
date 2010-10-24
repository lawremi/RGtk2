\alias{gdkPixbufAnimationIterAdvance}
\name{gdkPixbufAnimationIterAdvance}
\title{gdkPixbufAnimationIterAdvance}
\description{Possibly advances an animation to a new frame. Chooses the frame based
on the start time passed to \code{\link{gdkPixbufAnimationGetIter}}.}
\usage{gdkPixbufAnimationIterAdvance(object, current.time)}
\arguments{
\item{\verb{object}}{a \code{\link{GdkPixbufAnimationIter}}}
\item{\verb{current.time}}{current time}
}
\details{\code{current.time} would normally come from \code{gGetCurrentTime()}, and
must be greater than or equal to the time passed to
\code{\link{gdkPixbufAnimationGetIter}}, and must increase or remain
unchanged each time \code{\link{gdkPixbufAnimationIterGetPixbuf}} is
called. That is, you can't go backward in time; animations only
play forward.
  
As a shortcut, pass \code{NULL} for the current time and \code{gGetCurrentTime()}
will be invoked on your behalf. So you only need to explicitly pass
\code{current.time} if you're doing something odd like playing the animation
at double speed.
  
If this function returns \code{FALSE}, there's no need to update the animation
display, assuming the display had been rendered prior to advancing;
if \code{TRUE}, you need to call \code{gdkAnimationIterGetPixbuf()} and update the
display with the new pixbuf.}
\value{[logical] \code{TRUE} if the image may need updating}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
