\alias{gtkWidgetChildFocus}
\name{gtkWidgetChildFocus}
\title{gtkWidgetChildFocus}
\description{This function is used by custom widget implementations; if you're
writing an app, you'd use \code{\link{gtkWidgetGrabFocus}} to move the focus
to a particular widget, and \code{\link{gtkContainerSetFocusChain}} to
change the focus tab order. So you may want to investigate those
functions instead.}
\usage{gtkWidgetChildFocus(object, direction)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkWidget}}}
\item{\verb{direction}}{direction of focus movement}
}
\details{\code{\link{gtkWidgetChildFocus}} is called by containers as the user moves
around the window using keyboard shortcuts. \code{direction} indicates
what kind of motion is taking place (up, down, left, right, tab
forward, tab backward). \code{\link{gtkWidgetChildFocus}} emits the
\verb{"focus"} signal; widgets override the default handler
for this signal in order to implement appropriate focus behavior.
  
The default ::focus handler for a widget should return \code{TRUE} if
moving in \code{direction} left the focus on a focusable location inside
that widget, and \code{FALSE} if moving in \code{direction} moved the focus
outside the widget. If returning \code{TRUE}, widgets normally
call \code{\link{gtkWidgetGrabFocus}} to place the focus accordingly;
if returning \code{FALSE}, they don't modify the current focus location.
  
This function replaces \code{gtkContainerFocus()} from GTK+ 1.2.  
It was necessary to check that the child was visible, sensitive, 
and focusable before calling \code{gtkContainerFocus()}. 
\code{\link{gtkWidgetChildFocus}} returns \code{FALSE} if the widget is not 
currently in a focusable state, so there's no need for those checks.}
\value{[logical] \code{TRUE} if focus ended up inside \code{widget}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
