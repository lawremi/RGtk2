\alias{gdkEventGetScreen}
\name{gdkEventGetScreen}
\title{gdkEventGetScreen}
\description{Returns the screen for the event. The screen is
typically the screen for \code{event->any.window}, but
for events such as mouse events, it is the screen
where the pointer was when the event occurs -
that is, the screen which has the root window 
to which \code{event->motion.x_root} and
\code{event->motion.y_root} are relative.}
\usage{gdkEventGetScreen(object)}
\arguments{\item{\verb{object}}{a \code{\link{GdkEvent}}}}
\details{Since 2.2}
\value{[\code{\link{GdkScreen}}] the screen for the event}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
