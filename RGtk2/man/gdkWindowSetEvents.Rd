\alias{gdkWindowSetEvents}
\name{gdkWindowSetEvents}
\title{gdkWindowSetEvents}
\description{The event mask for a window determines which events will be reported
for that window. For example, an event mask including \verb{GDK_BUTTON_PRESS_MASK}
means the window should report button press events. The event mask
is the bitwise OR of values from the \code{\link{GdkEventMask}} enumeration.}
\usage{gdkWindowSetEvents(object, event.mask)}
\arguments{
\item{\verb{object}}{a \code{\link{GdkWindow}}}
\item{\verb{event.mask}}{event mask for \code{window}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
