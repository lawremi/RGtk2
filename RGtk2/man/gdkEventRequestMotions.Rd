\alias{gdkEventRequestMotions}
\name{gdkEventRequestMotions}
\title{gdkEventRequestMotions}
\description{Request more motion notifies if \code{event} is a motion notify hint event.
This function should be used instead of \code{\link{gdkWindowGetPointer}} to
request further motion notifies, because it also works for extension
events where motion notifies are provided for devices other than the
core pointer. Coordinate extraction, processing and requesting more
motion events from a \code{GDK_MOTION_NOTIFY} event usually works like this:}
\usage{gdkEventRequestMotions(event)}
\arguments{\item{\verb{event}}{a valid \code{\link{GdkEvent}}}}
\details{\preformatted{
# motion event handler
{
  x <- motion_event$x
  y <- motion_event$y
  # handle (x,y) motion here
  motion_event$request_motions() # handles is_hint events
}
}  Since 2.12}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
