\alias{gdk-Application-launching}
\alias{GdkAppLaunchContext}
\alias{gdkAppLaunchContext}
\name{gdk-Application-launching}
\title{Application launching}
\description{Startup notification for applications}
\section{Methods and Functions}{
\code{\link{gdkAppLaunchContextNew}()}\cr
\code{\link{gdkAppLaunchContextSetDisplay}(object, display)}\cr
\code{\link{gdkAppLaunchContextSetScreen}(object, screen)}\cr
\code{\link{gdkAppLaunchContextSetDesktop}(object, desktop)}\cr
\code{\link{gdkAppLaunchContextSetTimestamp}(object, timestamp)}\cr
\code{\link{gdkAppLaunchContextSetIcon}(object, icon = NULL)}\cr
\code{\link{gdkAppLaunchContextSetIconName}(object, icon.name = NULL)}\cr
\code{gdkAppLaunchContext()}
}
\section{Detailed Description}{GdkAppLaunchContext is an implementation of \code{\link{GAppLaunchContext}} that
handles launching an application in a graphical context. It provides
startup notification and allows to launch applications on a specific
screen or workspace.
  
 \emph{Launching an application}
\preformatted{
context <- gdkAppLaunchContext()
context$setScreen(my_screen)
context$setTimestamp(event$time)
gAppInfoLaunchDefaultForUri("http://www.gtk.org", context)
}}
\section{Structures}{\describe{\item{\verb{GdkAppLaunchContext}}{
An opaque structure representing an application launch context.

}}}
\section{Convenient Construction}{\code{gdkAppLaunchContext} is the equivalent of \code{\link{gdkAppLaunchContextNew}}.}
\references{\url{https://developer-old.gnome.org/gdk2/stable/gdk2-Application-launching.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
