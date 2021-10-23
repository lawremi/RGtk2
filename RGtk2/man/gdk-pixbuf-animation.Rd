\alias{gdk-pixbuf-animation}
\alias{GdkPixbufAnimation}
\alias{GdkPixbufAnimationIter}
\alias{GdkPixbufSimpleAnim}
\alias{gdkPixbufAnimation}
\alias{gdkPixbufSimpleAnim}
\name{gdk-pixbuf-animation}
\title{Animations}
\description{Animated images.}
\section{Methods and Functions}{
\code{\link{gdkPixbufAnimationGetWidth}(object)}\cr
\code{\link{gdkPixbufAnimationGetHeight}(object)}\cr
\code{\link{gdkPixbufAnimationGetIter}(object, start.time)}\cr
\code{\link{gdkPixbufAnimationIsStaticImage}(object)}\cr
\code{\link{gdkPixbufAnimationGetStaticImage}(object)}\cr
\code{\link{gdkPixbufAnimationIterAdvance}(object, current.time)}\cr
\code{\link{gdkPixbufAnimationIterGetDelayTime}(object)}\cr
\code{\link{gdkPixbufAnimationIterOnCurrentlyLoadingFrame}(object)}\cr
\code{\link{gdkPixbufAnimationIterGetPixbuf}(object)}\cr
\code{\link{gdkPixbufSimpleAnimNew}(width, height, rate)}\cr
\code{\link{gdkPixbufSimpleAnimAddFrame}(object, pixbuf)}\cr
\code{\link{gdkPixbufSimpleAnimSetLoop}(object, loop)}\cr
\code{\link{gdkPixbufSimpleAnimGetLoop}(object)}\cr
\code{gdkPixbufAnimation(filename, .errwarn = TRUE)}\cr\code{gdkPixbufSimpleAnim(width, height, rate)}
}
\section{Hierarchy}{\preformatted{
GObject
   +----GdkPixbufAnimation
         +----GdkPixbufSimpleAnim
GObject
   +----GdkPixbufAnimationIter
GObject
   +----GdkPixbufAnimation
         +----GdkPixbufSimpleAnim
}}
\section{Detailed Description}{    The \command{gdk-pixbuf} library provides a simple mechanism to load and represent
    animations. An animation is conceptually a series of frames to be displayed
    over time. Each frame is the same size. The animation may not be represented
    as a series of frames internally; for example, it may be stored as a
    sprite and instructions for moving the sprite around a background. To display
    an animation you don't need to understand its representation, however; you just
    ask \command{gdk-pixbuf} what should be displayed at a given point in time.
  }
\section{Structures}{\describe{
\item{\verb{GdkPixbufAnimation}}{
An opaque struct representing an animation.

}
\item{\verb{GdkPixbufAnimationIter}}{
An opaque struct representing an iterator which points to a
certain position in an animation.

}
\item{\verb{GdkPixbufSimpleAnim}}{
An opaque struct representing a simple animation.

}
}}
\section{Convenient Construction}{
\code{gdkPixbufAnimation} is the equivalent of \code{\link{gdkPixbufAnimationNewFromFile}}.
\code{gdkPixbufSimpleAnim} is the equivalent of \code{\link{gdkPixbufSimpleAnimNew}}.
}
\section{Properties}{\describe{\item{\verb{loop} [logical : Read / Write]}{

Whether the animation should loop when it reaches the end.
  Default value: FALSE  Since 2.18

}}}
\references{\url{https://developer-old.gnome.org/gdk-pixbuf/stable/gdk-pixbuf-Animations.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\seealso{\code{\link{GdkPixbufLoader}}}
\keyword{internal}
