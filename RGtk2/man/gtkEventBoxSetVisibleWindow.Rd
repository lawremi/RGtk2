\alias{gtkEventBoxSetVisibleWindow}
\name{gtkEventBoxSetVisibleWindow}
\title{gtkEventBoxSetVisibleWindow}
\description{Set whether the event box uses a visible or invisible child
window. The default is to use visible windows.}
\usage{gtkEventBoxSetVisibleWindow(object, visible.window)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkEventBox}}}
\item{\verb{visible.window}}{boolean value}
}
\details{In an invisible window event box, the window that the
event box creates is a \code{GDK_INPUT_ONLY} window, which 
means that it is invisible and only serves to receive
events.
  
A visible window event box creates a visible (\code{GDK_INPUT_OUTPUT})
window that acts as the parent window for all the widgets  
contained in the event box.
  
You should generally make your event box invisible if
you just want to trap events. Creating a visible window
may cause artifacts that are visible to the user, especially
if the user is using a theme with gradients or pixmaps.
  
The main reason to create a non input-only event box is if
you want to set the background to a different color or
draw on it.
  \strong{PLEASE NOTE:} There is one unexpected issue for an invisible event box that has its
window below the child. (See \code{\link{gtkEventBoxSetAboveChild}}.)
Since the input-only window is not an ancestor window of any windows
that descendent widgets of the event box create, events on these 
windows aren't propagated up by the windowing system, but only by GTK+.
The practical effect of this is if an event isn't in the event
mask for the descendant window (see \code{\link{gtkWidgetAddEvents}}),  
it won't be received by the event box. 
  
This problem doesn't occur for visible event boxes, because in
that case, the event box window is actually the ancestor of the
descendant windows, not just at the same place on the screen.  Since 2.4}
\note{There is one unexpected issue for an invisible event box that has its
window below the child. (See \code{\link{gtkEventBoxSetAboveChild}}.)
Since the input-only window is not an ancestor window of any windows
that descendent widgets of the event box create, events on these 
windows aren't propagated up by the windowing system, but only by GTK+.
The practical effect of this is if an event isn't in the event
mask for the descendant window (see \code{\link{gtkWidgetAddEvents}}),  
it won't be received by the event box. 
  
This problem doesn't occur for visible event boxes, because in
that case, the event box window is actually the ancestor of the
descendant windows, not just at the same place on the screen.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
