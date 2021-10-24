\alias{AtkUtil}
\alias{AtkKeyEventStruct}
\alias{AtkEventListener}
\alias{AtkEventListenerInit}
\alias{AtkKeySnoopFunc}
\alias{AtkCoordType}
\alias{AtkKeyEventType}
\name{AtkUtil}
\title{AtkUtil}
\description{A set of ATK utility functions for event and toolkit support.}
\section{Methods and Functions}{
\code{\link{atkAddFocusTracker}(focus.tracker)}\cr
\code{\link{atkRemoveFocusTracker}(tracker.id)}\cr
\code{\link{atkFocusTrackerInit}(add.function)}\cr
\code{\link{atkFocusTrackerNotify}(object)}\cr
\code{\link{atkAddGlobalEventListener}(listener, event.type)}\cr
\code{\link{atkRemoveGlobalEventListener}(listener.id)}\cr
\code{\link{atkAddKeyEventListener}(listener, data)}\cr
\code{\link{atkRemoveKeyEventListener}(listener.id)}\cr
\code{\link{atkGetRoot}()}\cr
\code{\link{atkGetFocusObject}()}\cr
\code{\link{atkGetToolkitName}()}\cr
\code{\link{atkGetToolkitVersion}()}\cr

}
\section{Hierarchy}{\preformatted{GObject
   +----AtkUtil}}
\section{Detailed Description}{A set of ATK utility functions which are used to support event registration of
various types, and obtaining the 'root' accessible of a process and
information about the current ATK implementation and toolkit version.}
\section{Structures}{\describe{
\item{\verb{AtkUtil}}{
The AtkUtil struct does not contain any fields.

}
\item{\verb{AtkKeyEventStruct}}{
Encapsulates information about a key event.  
\strong{\verb{AtkKeyEventStruct} is a \link{transparent-type}.}

\describe{
\item{\verb{type}}{[integer]  An AtkKeyEventType, generally one of ATK_KEY_EVENT_PRESS or ATK_KEY_EVENT_RELEASE}
\item{\verb{state}}{[numeric]  A bitmask representing the state of the modifier keys immediately after the event takes place.   
The meaning of the bits is currently defined to match the bitmask used by GDK in
GdkEventType.state, see 
https://developer-old.gnome.org/gdk2/stable/gdk2-Event-Structures.html\code{\link{GdkEventKey}}}
\item{\verb{keyval}}{[numeric]  A guint representing a keysym value corresponding to those used by GDK and X11: see
/usr/X11/include/keysymdef.h.}
\item{\verb{length}}{[integer]  The length of member \verb{string}.}
\item{\verb{string}}{[character]  A string containing one of the following: either a string approximating the text that would 
result from this keypress, if the key is a control or graphic character, or a symbolic name for this keypress.
Alphanumeric and printable keys will have the symbolic key name in this string member, for instance "A". "0", 
"semicolon", "aacute".  Keypad keys have the prefix "KP".}
\item{\verb{keycode}}{[integer]  The raw hardware code that generated the key event.  This field is raraly useful.}
\item{\verb{timestamp}}{[numeric]  A timestamp in milliseconds indicating when the event occurred.  
These timestamps are relative to a starting point which should be considered arbitrary, 
and only used to compare the dispatch times of events to one another.}
}

}
}}
\section{Enums and Flags}{\describe{
\item{\verb{AtkCoordType}}{
Specifies how xy coordinates are to be interpreted. Used by functions such
as \code{\link{atkComponentGetPosition}} and \code{\link{atkTextGetCharacterExtents}}  

\describe{
\item{\verb{screen}}{ specifies xy coordinates relative to the screen}
\item{\verb{window}}{ specifies xy coordinates relative to the widget's 
top-level window}
}

}
\item{\verb{AtkKeyEventType}}{
Specifies the type of a keyboard evemt.  

\describe{
\item{\verb{press}}{ specifies a key press event}
\item{\verb{release}}{ specifies a key release event}
\item{\verb{last-defined}}{ Not a valid value; specifies end of enumeration}
}

}
}}
\section{User Functions}{\describe{
\item{\code{AtkEventListener(obj)}}{
A function which is called when an object emits a matching event,
as used in \code{\link{atkAddFocusTracker}}.
Currently the only events for which object-specific handlers are
supported are events of type "focus:".  Most clients of ATK will prefer to 
attach signal handlers for the various ATK signals instead.
  \code{see}: atk_add_focus_tracker.  

\describe{\item{\code{obj}}{[\code{\link{AtkObject}}]  An \code{\link{AtkObject}} instance for whom the callback will be called when
the specified event (e.g. 'focus:') takes place.}}


}
\item{\code{AtkEventListenerInit()}}{
An \verb{AtkEventListenerInit} function is a special function that is
called in order to initialize the per-object event registration system
used by \verb{AtkEventListener}, if any preparation is required.  
  \code{see}: atk_focus_tracker_init.  




}
\item{\code{AtkKeySnoopFunc(event, func.data)}}{
An \code{\link{AtkKeySnoopFunc}} is a type of callback which is called whenever a key event occurs, 
if registered via atk_add_key_event_listener.  It allows for pre-emptive 
interception of key events via the return code as described below.  

\describe{
\item{\code{event}}{[\code{\link{AtkKeyEventStruct}}]  an AtkKeyEventStruct containing information about the key event for which
notification is being given.}
\item{\code{func.data}}{[R object]  a block of data which will be passed to the event listener, on notification.}
}

\emph{Returns:} [integer]  TRUE (nonzero) if the event emission should be stopped and the event 
discarded without being passed to the normal GUI recipient; FALSE (zero) if the 
event dispatch to the client application should proceed as normal.
\code{see}: atk_add_key_event_listener.

}
}}
\references{\url{https://developer-old.gnome.org/atk/1.32/AtkUtil.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
