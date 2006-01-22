\alias{gdk-pixbuf-animation}
\alias{GdkPixbufAnimation}
\alias{GdkPixbufAnimationIter}
\alias{GdkPixbufSimpleAnim}
\alias{gdkPixbufAnimation}
\alias{gdkPixbufSimpleAnim}
\name{gdk-pixbuf-animation}
\title{Animations}
\description{Animated images.}
\usage{
gdkPixbufAnimation(filename)
gdkPixbufSimpleAnim(width, height, rate)
}
\section{Methods and Functions}{
\link{gdkPixbufAnimationNewFromFile}(filename)
\link{gdkPixbufAnimationGetWidth}(object)
\link{gdkPixbufAnimationGetHeight}(object)
\link{gdkPixbufAnimationGetIter}(object, start.time)
\link{gdkPixbufAnimationIsStaticImage}(object)
\link{gdkPixbufAnimationGetStaticImage}(object)
\link{gdkPixbufAnimationIterAdvance}(object, current.time)
\link{gdkPixbufAnimationIterGetDelayTime}(object)
\link{gdkPixbufAnimationIterOnCurrentlyLoadingFrame}(object)
\link{gdkPixbufAnimationIterGetPixbuf}(object)
\link{gdkPixbufSimpleAnimNew}(width, height, rate)
\link{gdkPixbufSimpleAnimAddFrame}(object, pixbuf)
}
\section{Hierarchy}{\preformatted{
  \link{GObject}
   +----GdkPixbufAnimation
  \link{GObject}
   +----GdkPixbufAnimationIter
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
\item{\code{GdkPixbufAnimation}}{\emph{undocumented
}}
\item{\code{GdkPixbufAnimationIter}}{\emph{undocumented
}}
\item{\code{GdkPixbufSimpleAnim}}{\emph{undocumented
}}
}}
\section{Convenient Construction}{
\code{gdkPixbufAnimation} is the equivalent of \code{\link{gdkPixbufAnimationNewFromFile}}.
\code{gdkPixbufSimpleAnim} is the equivalent of \code{\link{gdkPixbufSimpleAnimNew}}.
}
\references{\url{http://developer.gnome.org/doc/API/2.0/gdk-pixbuf/gdk-pixbuf-animation.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\seealso{\code{\link{GdkPixbufLoader}}}
\keyword{internal}
