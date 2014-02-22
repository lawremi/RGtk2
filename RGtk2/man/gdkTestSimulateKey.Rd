\alias{gdkTestSimulateKey}
\name{gdkTestSimulateKey}
\title{gdkTestSimulateKey}
\description{This function is intended to be used in Gtk+ test programs.
If (\code{x},\code{y}) are > (-1,-1), it will warp the mouse pointer to
the given (\code{x},\code{y}) corrdinates within \code{window} and simulate a
key press or release event.
When the mouse pointer is warped to the target location, use
of this function outside of test programs that run in their
own virtual windowing system (e.g. Xvfb) is not recommended.
If (\code{x},\code{y}) are passed as (-1,-1), the mouse pointer will not
be warped and \code{window} origin will be used as mouse pointer
location for the event.
Also, \code{gtkTestSimulateKey()} is a fairly low level function,
for most testing purposes, \code{\link{gtkTestWidgetSendKey}} is the
right function to call which will generate a key press event
followed by its accompanying key release event.}
\usage{gdkTestSimulateKey(window, x, y, keyval, modifiers, key.pressrelease)}
\arguments{
\item{\verb{window}}{Gdk window to simulate a key event for.}
\item{\verb{x}}{x coordinate within \code{window} for the key event.}
\item{\verb{y}}{y coordinate within \code{window} for the key event.}
\item{\verb{keyval}}{A Gdk keyboard value.}
\item{\verb{modifiers}}{Keyboard modifiers the event is setup with.}
\item{\verb{key.pressrelease}}{either \code{GDK_KEY_PRESS} or \code{GDK_KEY_RELEASE}}
}
\details{Since 2.14}
\value{[logical] wether all actions neccessary for a key event simulation were carried out successfully.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
