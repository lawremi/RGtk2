\alias{gdkTestSimulateButton}
\name{gdkTestSimulateButton}
\title{gdkTestSimulateButton}
\description{This function is intended to be used in Gtk+ test programs.
It will warp the mouse pointer to the given (\code{x},\code{y}) corrdinates
within \code{window} and simulate a button press or release event.
Because the mouse pointer needs to be warped to the target
location, use of this function outside of test programs that
run in their own virtual windowing system (e.g. Xvfb) is not
recommended.
Also, \code{gtkTestSimulateButton()} is a fairly low level function,
for most testing purposes, \code{\link{gtkTestWidgetClick}} is the right
function to call which will generate a button press event followed
by its accompanying button release event.}
\usage{gdkTestSimulateButton(window, x, y, button, modifiers, button.pressrelease)}
\arguments{
\item{\verb{window}}{Gdk window to simulate a button event for.}
\item{\verb{x}}{x coordinate within \code{window} for the button event.}
\item{\verb{y}}{y coordinate within \code{window} for the button event.}
\item{\verb{button}}{Number of the pointer button for the event, usually 1, 2 or 3.}
\item{\verb{modifiers}}{Keyboard modifiers the event is setup with.}
\item{\verb{button.pressrelease}}{either \code{GDK_BUTTON_PRESS} or \code{GDK_BUTTON_RELEASE}}
}
\details{Since 2.14}
\value{[logical] wether all actions neccessary for a button event simulation were carried out successfully.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
