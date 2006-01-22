\alias{gdk-Events}
\alias{GdkEventFunc}
\alias{GdkEventType}
\alias{GdkEventMask}
\name{gdk-Events}
\title{Events}
\description{Functions for handling events from the window system}
\section{Methods and Functions}{
\link{gdkEventsPending}()
\link{gdkEventPeek}()
\link{gdkEventGet}()
\link{gdkEventGetGraphicsExpose}(window)
\link{gdkEventPut}(object)
\link{gdkEventNew}(type)
\link{gdkEventCopy}(object)
\link{gdkEventGetTime}(object)
\link{gdkEventGetState}(object, state)
\link{gdkEventGetAxis}(object, axis.use)
\link{gdkEventGetCoords}(object)
\link{gdkEventGetRootCoords}(object)
\link{gdkEventHandlerSet}(func, data)
\link{gdkAddClientMessageFilter}(message.type, func, data)
\link{gdkGetShowEvents}()
\link{gdkSetShowEvents}(show.events)
\link{gdkEventSetScreen}(object, screen)
\link{gdkEventGetScreen}(object)
\link{gdkSettingGet}(name)
}
\section{Detailed Description}{This section describes functions dealing with events from the window system.
  
In GTK+ applications the events are handled automatically in
\code{\link{gtkMainDoEvent}} and passed on to the appropriate widgets, so these
functions are rarely needed. Though some of the fields in the
Event Structures are useful.}
\section{Enums and Flags}{\describe{
\item{\code{enum GdkEventType}}{
Specifies the type of the event.
  
Do not confuse these events with the signals that GTK+ widgets emit.
Although many of these events result in corresponding signals being emitted,
the events are often transformed or filtered along the way.

\describe{
\item{\code{GDK_NOTHING (nothing)}}{a special code to indicate a null event.}
\item{\code{GDK_DELETE (delete)}}{the window manager has requested that the toplevel window be
hidden or destroyed, usually when the user clicks on a special icon in the
title bar.}
\item{\code{GDK_DESTROY (destroy)}}{the window has been destroyed.}
\item{\code{GDK_EXPOSE (expose)}}{all or part of the window has become visible and needs to be
redrawn.}
\item{\code{GDK_MOTION_NOTIFY (motion-notify)}}{the pointer (usually a mouse) has moved.}
\item{\code{GDK_BUTTON_PRESS (button-press)}}{a mouse button has been pressed.}
\item{\code{GDK_2BUTTON_PRESS (2button-press)}}{a mouse button has been double-clicked (clicked twice
within a short period of time). Note that each click also generates a
\code{GDK_BUTTON_PRESS} event.}
\item{\code{GDK_3BUTTON_PRESS (3button-press)}}{a mouse button has been clicked 3 times in a short period
of time. Note that each click also generates a \code{GDK_BUTTON_PRESS} event.}
\item{\code{GDK_BUTTON_RELEASE (button-release)}}{a mouse button has been released.}
\item{\code{GDK_KEY_PRESS (key-press)}}{a key has been pressed.}
\item{\code{GDK_KEY_RELEASE (key-release)}}{a key has been released.}
\item{\code{GDK_ENTER_NOTIFY (enter-notify)}}{the pointer has entered the window.}
\item{\code{GDK_LEAVE_NOTIFY (leave-notify)}}{the pointer has left the window.}
\item{\code{GDK_FOCUS_CHANGE (focus-change)}}{the keyboard focus has entered or left the window.}
\item{\code{GDK_CONFIGURE (configure)}}{the size, position or stacking order of the window has changed.
Note that GTK+ discards these events for \code{GDK_WINDOW_CHILD} windows.}
\item{\code{GDK_MAP (map)}}{the window has been mapped.}
\item{\code{GDK_UNMAP (unmap)}}{the window has been unmapped.}
\item{\code{GDK_PROPERTY_NOTIFY (property-notify)}}{a property on the window has been changed or deleted.}
\item{\code{GDK_SELECTION_CLEAR (selection-clear)}}{the application has lost ownership of a selection.}
\item{\code{GDK_SELECTION_REQUEST (selection-request)}}{another application has requested a selection.}
\item{\code{GDK_SELECTION_NOTIFY (selection-notify)}}{a selection has been received.}
\item{\code{GDK_PROXIMITY_IN (proximity-in)}}{an input device has moved into contact with a sensing
surface (e.g. a touchscreen or graphics tablet).}
\item{\code{GDK_PROXIMITY_OUT (proximity-out)}}{an input device has moved out of contact with a sensing
surface.}
\item{\code{GDK_DRAG_ENTER (drag-enter)}}{the mouse has entered the window while a drag is in progress.}
\item{\code{GDK_DRAG_LEAVE (drag-leave)}}{the mouse has left the window while a drag is in progress.}
\item{\code{GDK_DRAG_MOTION (drag-motion)}}{the mouse has moved in the window while a drag is in
progress.}
\item{\code{GDK_DRAG_STATUS (drag-status)}}{the status of the drag operation initiated by the window
has changed.}
\item{\code{GDK_DROP_START (drop-start)}}{a drop operation onto the window has started.}
\item{\code{GDK_DROP_FINISHED (drop-finished)}}{the drop operation initiated by the window has completed.}
\item{\code{GDK_CLIENT_EVENT (client-event)}}{a message has been received from another application.}
\item{\code{GDK_VISIBILITY_NOTIFY (visibility-notify)}}{the window visibility status has changed.}
\item{\code{GDK_NO_EXPOSE (no-expose)}}{indicates that the source region was completely available
when parts of a drawable were copied. This is not very useful.}
\item{\code{GDK_SCROLL (scroll)}}{the scroll wheel was turned}
\item{\code{GDK_WINDOW_STATE (window-state)}}{the state of a window has changed. See \code{\link{GdkWindowState}}
for the possible window states}
\item{\code{GDK_SETTING (setting)}}{a setting has been modified.}
}

}
\item{\code{enum GdkEventMask}}{
A set of bit-flags to indicate which events a window is to receive.
Most of these masks map onto one or more of the \code{\link{GdkEventType}} event types
above.
  
\code{GDK_POINTER_MOTION_HINT_MASK} is a special mask which is used to reduce the
number of \code{GDK_MOTION_NOTIFY} events received. Normally a \code{GDK_MOTION_NOTIFY}
event is received each time the mouse moves. However, if the application
spends a lot of time processing the event (updating the display, for example),
it can easily lag behind the position of the mouse. When using the
\code{GDK_POINTER_MOTION_HINT_MASK} the server will only send a single 
\code{GDK_MOTION_NOTIFY} event (which is marked as a hint) until the application 
asks for more, by calling \code{\link{gdkWindowGetPointer}}.

\describe{
\item{\code{GDK_EXPOSURE_MASK (exposure-mask)}}{receive expose events}
\item{\code{GDK_POINTER_MOTION_MASK (pointer-motion-mask)}}{receive all pointer motion events}
\item{\code{GDK_POINTER_MOTION_HINT_MASK (pointer-motion-hint-mask)}}{see the explanation above}
\item{\code{GDK_BUTTON_MOTION_MASK (button-motion-mask)}}{receive pointer motion events while any button is pressed}
\item{\code{GDK_BUTTON1_MOTION_MASK (button1-motion-mask)}}{receive pointer motion events while 1 button is pressed}
\item{\code{GDK_BUTTON2_MOTION_MASK (button2-motion-mask)}}{receive pointer motion events while 2 button is pressed}
\item{\code{GDK_BUTTON3_MOTION_MASK (button3-motion-mask)}}{receive pointer motion events while 3 button is pressed}
\item{\code{GDK_BUTTON_PRESS_MASK (button-press-mask)}}{receive button press events}
\item{\code{GDK_BUTTON_RELEASE_MASK (button-release-mask)}}{receive button release events}
\item{\code{GDK_KEY_PRESS_MASK (key-press-mask)}}{receive key press events}
\item{\code{GDK_KEY_RELEASE_MASK (key-release-mask)}}{receive key release events}
\item{\code{GDK_ENTER_NOTIFY_MASK (enter-notify-mask)}}{receive window enter events}
\item{\code{GDK_LEAVE_NOTIFY_MASK (leave-notify-mask)}}{receive window leave events}
\item{\code{GDK_FOCUS_CHANGE_MASK (focus-change-mask)}}{receive focus change events}
\item{\code{GDK_STRUCTURE_MASK (structure-mask)}}{receive events about window configuration change}
\item{\code{GDK_PROPERTY_CHANGE_MASK (property-change-mask)}}{receive property change events}
\item{\code{GDK_VISIBILITY_NOTIFY_MASK (visibility-notify-mask)}}{receive visibility change events}
\item{\code{GDK_PROXIMITY_IN_MASK (proximity-in-mask)}}{receive proximity in events}
\item{\code{GDK_PROXIMITY_OUT_MASK (proximity-out-mask)}}{receive proximity out events}
\item{\code{GDK_SUBSTRUCTURE_MASK (substructure-mask)}}{receive events about window configuration changes of 
  child windows}
\item{\code{GDK_SCROLL_MASK (scroll-mask)}}{receive scroll events}
\item{\code{GDK_ALL_EVENTS_MASK (all-events-mask)}}{the combination of all the above event masks.}
}

}
}}
\section{User Functions}{\describe{\item{\code{GdkEventFunc(event, data)}}{
Specifies the type of function passed to \code{\link{gdkEventHandlerSet}} to handle
all GDK events.

\describe{
\item{\code{event}}{[\code{\link{GdkEvent}}] the \code{\link{GdkEvent}} to process.}
\item{\code{data}}{[R object] user data set when the event handler was installed with
\code{\link{gdkEventHandlerSet}}.}
}

}}}
\references{\url{http://developer.gnome.org/doc/API/2.0/gdk/gdk-Events.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
