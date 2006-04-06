\alias{gdk-Events}
\alias{GdkEventFunc}
\alias{GdkEventType}
\alias{GdkEventMask}
\name{gdk-Events}
\title{Events}
\description{Functions for handling events from the window system}
\section{Methods and Functions}{
\code{\link{gdkEventsPending}()}\cr
\code{\link{gdkEventPeek}()}\cr
\code{\link{gdkEventGet}()}\cr
\code{\link{gdkEventGetGraphicsExpose}(window)}\cr
\code{\link{gdkEventPut}(object)}\cr
\code{\link{gdkEventNew}(type)}\cr
\code{\link{gdkEventCopy}(object)}\cr
\code{\link{gdkEventGetTime}(object)}\cr
\code{\link{gdkEventGetState}(object, state)}\cr
\code{\link{gdkEventGetAxis}(object, axis.use)}\cr
\code{\link{gdkEventGetCoords}(object)}\cr
\code{\link{gdkEventGetRootCoords}(object)}\cr
\code{\link{gdkEventHandlerSet}(func, data)}\cr
\code{\link{gdkAddClientMessageFilter}(message.type, func, data)}\cr
\code{\link{gdkGetShowEvents}()}\cr
\code{\link{gdkSetShowEvents}(show.events)}\cr
\code{\link{gdkEventSetScreen}(object, screen)}\cr
\code{\link{gdkEventGetScreen}(object)}\cr
\code{\link{gdkSettingGet}(name)}\cr
}
\section{Detailed Description}{This section describes functions dealing with events from the window system.
  
In GTK+ applications the events are handled automatically in
\code{\link{gtkMainDoEvent}} and passed on to the appropriate widgets, so these
functions are rarely needed. Though some of the fields in the
Event Structures are useful.}
\section{Enums and Flags}{\describe{
\item{\code{GdkEventType}}{
Specifies the type of the event.
  
Do not confuse these events with the signals that GTK+ widgets emit.
Although many of these events result in corresponding signals being emitted,
the events are often transformed or filtered along the way.

\describe{
\item{\code{nothing}}{a special code to indicate a null event.}
\item{\code{delete}}{the window manager has requested that the toplevel window be
hidden or destroyed, usually when the user clicks on a special icon in the
title bar.}
\item{\code{destroy}}{the window has been destroyed.}
\item{\code{expose}}{all or part of the window has become visible and needs to be
redrawn.}
\item{\code{motion-notify}}{the pointer (usually a mouse) has moved.}
\item{\code{button-press}}{a mouse button has been pressed.}
\item{\code{2button-press}}{a mouse button has been double-clicked (clicked twice
within a short period of time). Note that each click also generates a
\code{GDK_BUTTON_PRESS} event.}
\item{\code{3button-press}}{a mouse button has been clicked 3 times in a short period
of time. Note that each click also generates a \code{GDK_BUTTON_PRESS} event.}
\item{\code{button-release}}{a mouse button has been released.}
\item{\code{key-press}}{a key has been pressed.}
\item{\code{key-release}}{a key has been released.}
\item{\code{enter-notify}}{the pointer has entered the window.}
\item{\code{leave-notify}}{the pointer has left the window.}
\item{\code{focus-change}}{the keyboard focus has entered or left the window.}
\item{\code{configure}}{the size, position or stacking order of the window has changed.
Note that GTK+ discards these events for \code{GDK_WINDOW_CHILD} windows.}
\item{\code{map}}{the window has been mapped.}
\item{\code{unmap}}{the window has been unmapped.}
\item{\code{property-notify}}{a property on the window has been changed or deleted.}
\item{\code{selection-clear}}{the application has lost ownership of a selection.}
\item{\code{selection-request}}{another application has requested a selection.}
\item{\code{selection-notify}}{a selection has been received.}
\item{\code{proximity-in}}{an input device has moved into contact with a sensing
surface (e.g. a touchscreen or graphics tablet).}
\item{\code{proximity-out}}{an input device has moved out of contact with a sensing
surface.}
\item{\code{drag-enter}}{the mouse has entered the window while a drag is in progress.}
\item{\code{drag-leave}}{the mouse has left the window while a drag is in progress.}
\item{\code{drag-motion}}{the mouse has moved in the window while a drag is in
progress.}
\item{\code{drag-status}}{the status of the drag operation initiated by the window
has changed.}
\item{\code{drop-start}}{a drop operation onto the window has started.}
\item{\code{drop-finished}}{the drop operation initiated by the window has completed.}
\item{\code{client-event}}{a message has been received from another application.}
\item{\code{visibility-notify}}{the window visibility status has changed.}
\item{\code{no-expose}}{indicates that the source region was completely available
when parts of a drawable were copied. This is not very useful.}
\item{\code{scroll}}{the scroll wheel was turned}
\item{\code{window-state}}{the state of a window has changed. See \code{\link{GdkWindowState}}
for the possible window states}
\item{\code{setting}}{a setting has been modified.}
}

}
\item{\code{GdkEventMask}}{
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
\item{\code{exposure-mask}}{receive expose events}
\item{\code{pointer-motion-mask}}{receive all pointer motion events}
\item{\code{pointer-motion-hint-mask}}{see the explanation above}
\item{\code{button-motion-mask}}{receive pointer motion events while any button is pressed}
\item{\code{button1-motion-mask}}{receive pointer motion events while 1 button is pressed}
\item{\code{button2-motion-mask}}{receive pointer motion events while 2 button is pressed}
\item{\code{button3-motion-mask}}{receive pointer motion events while 3 button is pressed}
\item{\code{button-press-mask}}{receive button press events}
\item{\code{button-release-mask}}{receive button release events}
\item{\code{key-press-mask}}{receive key press events}
\item{\code{key-release-mask}}{receive key release events}
\item{\code{enter-notify-mask}}{receive window enter events}
\item{\code{leave-notify-mask}}{receive window leave events}
\item{\code{focus-change-mask}}{receive focus change events}
\item{\code{structure-mask}}{receive events about window configuration change}
\item{\code{property-change-mask}}{receive property change events}
\item{\code{visibility-notify-mask}}{receive visibility change events}
\item{\code{proximity-in-mask}}{receive proximity in events}
\item{\code{proximity-out-mask}}{receive proximity out events}
\item{\code{substructure-mask}}{receive events about window configuration changes of 
  child windows}
\item{\code{scroll-mask}}{receive scroll events}
\item{\code{all-events-mask}}{the combination of all the above event masks.}
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
