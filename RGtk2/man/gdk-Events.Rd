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
\code{\link{gdkEventGetState}(object)}\cr
\code{\link{gdkEventGetAxis}(object, axis.use)}\cr
\code{\link{gdkEventGetCoords}(object)}\cr
\code{\link{gdkEventGetRootCoords}(object)}\cr
\code{\link{gdkEventRequestMotions}(event)}\cr
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
\item{\verb{GdkEventType}}{
Specifies the type of the event.
  
Do not confuse these events with the signals that GTK+ widgets emit.
Although many of these events result in corresponding signals being emitted,
the events are often transformed or filtered along the way.

\describe{
\item{\verb{nothing}}{a special code to indicate a null event.}
\item{\verb{delete}}{the window manager has requested that the toplevel window be
hidden or destroyed, usually when the user clicks on a special icon in the
title bar.}
\item{\verb{destroy}}{the window has been destroyed.}
\item{\verb{expose}}{all or part of the window has become visible and needs to be
redrawn.}
\item{\verb{motion-notify}}{the pointer (usually a mouse) has moved.}
\item{\verb{button-press}}{a mouse button has been pressed.}
\item{\verb{2button-press}}{a mouse button has been double-clicked (clicked twice
within a short period of time). Note that each click also generates a
\code{GDK_BUTTON_PRESS} event.}
\item{\verb{3button-press}}{a mouse button has been clicked 3 times in a short period
of time. Note that each click also generates a \code{GDK_BUTTON_PRESS} event.}
\item{\verb{button-release}}{a mouse button has been released.}
\item{\verb{key-press}}{a key has been pressed.}
\item{\verb{key-release}}{a key has been released.}
\item{\verb{enter-notify}}{the pointer has entered the window.}
\item{\verb{leave-notify}}{the pointer has left the window.}
\item{\verb{focus-change}}{the keyboard focus has entered or left the window.}
\item{\verb{configure}}{the size, position or stacking order of the window has changed.
Note that GTK+ discards these events for \code{GDK_WINDOW_CHILD} windows.}
\item{\verb{map}}{the window has been mapped.}
\item{\verb{unmap}}{the window has been unmapped.}
\item{\verb{property-notify}}{a property on the window has been changed or deleted.}
\item{\verb{selection-clear}}{the application has lost ownership of a selection.}
\item{\verb{selection-request}}{another application has requested a selection.}
\item{\verb{selection-notify}}{a selection has been received.}
\item{\verb{proximity-in}}{an input device has moved into contact with a sensing
surface (e.g. a touchscreen or graphics tablet).}
\item{\verb{proximity-out}}{an input device has moved out of contact with a sensing
surface.}
\item{\verb{drag-enter}}{the mouse has entered the window while a drag is in progress.}
\item{\verb{drag-leave}}{the mouse has left the window while a drag is in progress.}
\item{\verb{drag-motion}}{the mouse has moved in the window while a drag is in
progress.}
\item{\verb{drag-status}}{the status of the drag operation initiated by the window
has changed.}
\item{\verb{drop-start}}{a drop operation onto the window has started.}
\item{\verb{drop-finished}}{the drop operation initiated by the window has completed.}
\item{\verb{client-event}}{a message has been received from another application.}
\item{\verb{visibility-notify}}{the window visibility status has changed.}
\item{\verb{no-expose}}{indicates that the source region was completely available
when parts of a drawable were copied. This is not very useful.}
\item{\verb{scroll}}{the scroll wheel was turned}
\item{\verb{window-state}}{the state of a window has changed. See \code{\link{GdkWindowState}}
for the possible window states}
\item{\verb{setting}}{a setting has been modified.}
\item{\verb{owner-change}}{the owner of a selection has changed. This event type
  was added in 2.6}
\item{\verb{grab-broken}}{a pointer or keyboard grab was broken. This event type
  was added in 2.8.}
\item{\verb{gdk-damage}}{the content of the window has been changed. This event type
  was added in 2.14.}
}

}
\item{\verb{GdkEventMask}}{
A set of bit-flags to indicate which events a window is to receive.
Most of these masks map onto one or more of the \code{\link{GdkEventType}} event types
above.
  \code{GDK_POINTER_MOTION_HINT_MASK} is a special mask which is used to reduce the
number of \code{GDK_MOTION_NOTIFY} events received. Normally a \code{GDK_MOTION_NOTIFY}
event is received each time the mouse moves. However, if the application
spends a lot of time processing the event (updating the display, for example),
it can lag behind the position of the mouse. When using
\code{GDK_POINTER_MOTION_HINT_MASK}, fewer \code{GDK_MOTION_NOTIFY} events will be sent,
some of which are marked as a hint (the is_hint member is \code{TRUE}).
To receive more motion events after a motion hint event, the application
needs to asks for more, by calling \code{\link{gdkEventRequestMotions}}.

\describe{
\item{\verb{exposure-mask}}{receive expose events}
\item{\verb{pointer-motion-mask}}{receive all pointer motion events}
\item{\verb{pointer-motion-hint-mask}}{see the explanation above}
\item{\verb{button-motion-mask}}{receive pointer motion events while any button is pressed}
\item{\verb{button1-motion-mask}}{receive pointer motion events while 1 button is pressed}
\item{\verb{button2-motion-mask}}{receive pointer motion events while 2 button is pressed}
\item{\verb{button3-motion-mask}}{receive pointer motion events while 3 button is pressed}
\item{\verb{button-press-mask}}{receive button press events}
\item{\verb{button-release-mask}}{receive button release events}
\item{\verb{key-press-mask}}{receive key press events}
\item{\verb{key-release-mask}}{receive key release events}
\item{\verb{enter-notify-mask}}{receive window enter events}
\item{\verb{leave-notify-mask}}{receive window leave events}
\item{\verb{focus-change-mask}}{receive focus change events}
\item{\verb{structure-mask}}{receive events about window configuration change}
\item{\verb{property-change-mask}}{receive property change events}
\item{\verb{visibility-notify-mask}}{receive visibility change events}
\item{\verb{proximity-in-mask}}{receive proximity in events}
\item{\verb{proximity-out-mask}}{receive proximity out events}
\item{\verb{substructure-mask}}{receive events about window configuration changes of 
  child windows}
\item{\verb{scroll-mask}}{receive scroll events}
\item{\verb{all-events-mask}}{the combination of all the above event masks.}
}

}
}}
\section{User Functions}{\describe{\item{\code{GdkEventFunc(event, data)}}{
Specifies the type of function passed to \code{\link{gdkEventHandlerSet}} to handle
all GDK events.

\describe{
\item{\code{event}}{the \code{\link{GdkEvent}} to process.}
\item{\code{data}}{user data set when the event handler was installed with
\code{\link{gdkEventHandlerSet}}.}
}


}}}
\references{\url{https://developer-old.gnome.org/gdk2/stable/gdk2-Events.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
