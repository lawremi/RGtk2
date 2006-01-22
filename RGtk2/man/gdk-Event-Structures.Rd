\alias{gdk-Event-Structures}
\alias{GdkEventAny}
\alias{GdkEventKey}
\alias{GdkEventButton}
\alias{GdkEventScroll}
\alias{GdkEventMotion}
\alias{GdkEventExpose}
\alias{GdkEventVisibility}
\alias{GdkEventCrossing}
\alias{GdkEventFocus}
\alias{GdkEventConfigure}
\alias{GdkEventProperty}
\alias{GdkEventSelection}
\alias{GdkEventDND}
\alias{GdkEventProximity}
\alias{GdkEventClient}
\alias{GdkEventNoExpose}
\alias{GdkEventWindowState}
\alias{GdkEventSetting}
\alias{GdkEventOwnerChange}
\alias{GdkEventGrabBroken}
\alias{GdkScrollDirection}
\alias{GdkVisibilityState}
\alias{GdkCrossingMode}
\alias{GdkNotifyType}
\alias{GdkPropertyState}
\alias{GdkWindowState}
\alias{GdkSettingAction}
\alias{GdkOwnerChange}
\name{gdk-Event-Structures}
\title{Event Structures}
\description{Data structures specific to each type of event}
\section{Detailed Description}{The event structs contain data specific to each type of event in GDK.
  \emph{  
A common mistake is to forget to set the event mask of a widget so that the
required events are received. See \code{\link{gtkWidgetSetEvents}}.
  }}
\section{Structures}{\describe{
\item{\code{GdkEventAny}}{
Contains the fields which are common to all event structs.
Any event pointer can safely be cast to a pointer to a \code{\link{GdkEventAny}} to access
these fields.

\describe{
\item{\code{type}}{[\code{\link{GdkEventType}}] the type of the event.}
\item{\code{window}}{[\code{\link{GdkWindow}}] the window which received the event.}
\item{\code{sendEvent}}{[integer] \code{TRUE} if the event was sent explicitly (e.g. using 
\code{xsendevent}).}
}

}
\item{\code{GdkEventKey}}{
Describes a key press or key release event.

\describe{
\item{\code{type}}{[\code{\link{GdkEventType}}] the type of the event (\code{GDK_KEY_PRESS} or \code{GDK_KEY_RELEASE}).}
\item{\code{window}}{[\code{\link{GdkWindow}}] the window which received the event.}
\item{\code{sendEvent}}{[integer] \code{TRUE} if the event was sent explicitly (e.g. using 
\code{xsendevent}).}
\item{\code{time}}{[numeric] the time of the event in milliseconds.}
\item{\code{state}}{[numeric] a bit-mask representing the state of the modifier keys (e.g. Control,
Shift and Alt) and the pointer buttons. See \code{\link{GdkModifierType}}.}
\item{\code{keyval}}{[numeric] the key that was pressed or released. See the 
\file{<gdk/gdkkeysyms.h>}
header file for a complete list of GDK key codes.}
\item{\code{length}}{[integer] the length of \code{string}.}
\item{\code{string}}{[character] a string containing the an approximation of the text that
would result from this keypress. The only correct way to handle text
input of text is using input methods (see \code{\link{GtkIMContext}}), so this
field is deprecated and should never be used.
(\code{\link{gdkUnicodeToKeyval}} provides a non-deprecated way of getting
an approximate translation for a key.) The string is encoded in the encoding
of the current locale (Note: this for backwards compatibility:
strings in GTK+ and GDK are typically in UTF-8.) and NUL-terminated.
In some cases, the translation of the key code will be a single
NUL byte, in which case looking at \code{length} is necessary to distinguish
it from the an empty translation.}
\item{\code{hardwareKeycode}}{[integer] the raw code of the key that was pressed or released.}
\item{\code{group}}{[integer] the keyboard group.}
}

}
\item{\code{GdkEventButton}}{
Used for button press and button release events. The
\code{type} field will be one of \code{GDK_BUTTON_PRESS},
\code{GDK_2BUTTON_PRESS}, \code{GDK_3BUTTON_PRESS}, and \code{GDK_BUTTON_RELEASE}.
  
Double and triple-clicks result in a sequence of events being received.
For double-clicks the order of events will be:
\enumerate{
\item \code{GDK_BUTTON_PRESS}
\item \code{GDK_BUTTON_RELEASE}
\item \code{GDK_BUTTON_PRESS}
\item \code{GDK_2BUTTON_PRESS}
\item \code{GDK_BUTTON_RELEASE}
}
Note that the first click is received just like a normal
button press, while the second click results in a \code{GDK_2BUTTON_PRESS} being
received just after the \code{GDK_BUTTON_PRESS}.
  
Triple-clicks are very similar to double-clicks, except that \code{GDK_3BUTTON_PRESS}
is inserted after the third click. The order of the events is:
\enumerate{
\item \code{GDK_BUTTON_PRESS}
\item \code{GDK_BUTTON_RELEASE}
\item \code{GDK_BUTTON_PRESS}
\item \code{GDK_2BUTTON_PRESS}
\item \code{GDK_BUTTON_RELEASE}
\item \code{GDK_BUTTON_PRESS}
\item \code{GDK_3BUTTON_PRESS}
\item \code{GDK_BUTTON_RELEASE}
}
  
For a double click to occur, the second button press must occur within 1/4 of
a second of the first. For a triple click to occur, the third button press
must also occur within 1/2 second of the first button press.

\describe{
\item{\code{type}}{[\code{\link{GdkEventType}}] the type of the event (\code{GDK_BUTTON_PRESS}, \code{GDK_2BUTTON_PRESS},
\code{GDK_3BUTTON_PRESS} or \code{GDK_BUTTON_RELEASE}).}
\item{\code{window}}{[\code{\link{GdkWindow}}] the window which received the event.}
\item{\code{sendEvent}}{[integer] \code{TRUE} if the event was sent explicitly (e.g. using 
\code{xsendevent}).}
\item{\code{time}}{[numeric] the time of the event in milliseconds.}
\item{\code{x}}{[numeric] the x coordinate of the pointer relative to the window.}
\item{\code{y}}{[numeric] the y coordinate of the pointer relative to the window.}
\item{\code{axes}}{[numeric] \code{x}, \code{y} translated to the axes of \code{device}, or \code{NULL} if \code{device} is 
  the mouse.}
\item{\code{state}}{[numeric] a bit-mask representing the state of the modifier keys (e.g. Control,
Shift and Alt) and the pointer buttons. See \code{\link{GdkModifierType}}.}
\item{\code{button}}{[numeric] the button which was pressed or released, numbered from 1 to 5.
Normally button 1 is the left mouse button, 2 is the middle button,
and 3 is the right button. On 2-button mice, the middle button can often
be simulated by pressing both mouse buttons together.}
\item{\code{device}}{[\code{\link{GdkDevice}}] the device where the event originated.}
\item{\code{xRoot}}{[numeric] the x coordinate of the pointer relative to the root of the screen.}
\item{\code{yRoot}}{[numeric] the y coordinate of the pointer relative to the root of the screen.}
}

}
\item{\code{GdkEventScroll}}{
Generated from button presses for the buttons 4 to 7. Wheel mice are 
usually configured to generate button press events for buttons 4 and 5
when the wheel is turned.

\describe{
\item{\code{type}}{[\code{\link{GdkEventType}}] the type of the event (\code{GDK_SCROLL}).}
\item{\code{window}}{[\code{\link{GdkWindow}}] the window which received the event.}
\item{\code{sendEvent}}{[integer] \code{TRUE} if the event was sent explicitly (e.g. using 
\code{xsendevent}).}
\item{\code{time}}{[numeric] the time of the event in milliseconds.}
\item{\code{x}}{[numeric] the x coordinate of the pointer relative to the window.}
\item{\code{y}}{[numeric] the y coordinate of the pointer relative to the window.}
\item{\code{state}}{[numeric] a bit-mask representing the state of the modifier keys (e.g. Control,
Shift and Alt) and the pointer buttons. See \code{\link{GdkModifierType}}.}
\item{\code{direction}}{[\code{\link{GdkScrollDirection}}] the direction to scroll to (one of \code{GDK_SCROLL_UP}, 
  \code{GDK_SCROLL_DOWN}, \code{GDK_SCROLL_LEFT} and \code{GDK_SCROLL_RIGHT}).}
\item{\code{device}}{[\code{\link{GdkDevice}}] the device where the event originated.}
\item{\code{xRoot}}{[numeric] the x coordinate of the pointer relative to the root of the screen.}
\item{\code{yRoot}}{[numeric] the y coordinate of the pointer relative to the root of the screen.}
}

}
\item{\code{GdkEventMotion}}{
Generated when the pointer moves.

\describe{
\item{\code{type}}{[\code{\link{GdkEventType}}] the type of the event.}
\item{\code{window}}{[\code{\link{GdkWindow}}] the window which received the event.}
\item{\code{sendEvent}}{[integer] \code{TRUE} if the event was sent explicitly (e.g. using 
\code{xsendevent}).}
\item{\code{time}}{[numeric] the time of the event in milliseconds.}
\item{\code{x}}{[numeric] the x coordinate of the pointer relative to the window.}
\item{\code{y}}{[numeric] the y coordinate of the pointer relative to the window.}
\item{\code{axes}}{[numeric] \code{x}, \code{y} translated to the axes of \code{device}, or \code{NULL} if \code{device} is 
  the mouse.}
\item{\code{state}}{[numeric] a bit-mask representing the state of the modifier keys (e.g. Control,
  Shift and Alt) and the pointer buttons. See \code{\link{GdkModifierType}}.}
\item{\code{isHint}}{[integer] set to 1 if this event is just a hint, see the \code{GDK_POINTER_MOTION_HINT_MASK}
  value of \code{\link{GdkEventMask}}.}
\item{\code{device}}{[\code{\link{GdkDevice}}] the device where the event originated.}
\item{\code{xRoot}}{[numeric] the x coordinate of the pointer relative to the root of the screen.}
\item{\code{yRoot}}{[numeric] the y coordinate of the pointer relative to the root of the screen.}
}

}
\item{\code{GdkEventExpose}}{
Generated when all or part of a window becomes visible and needs to be
redrawn.

\describe{
\item{\code{type}}{[\code{\link{GdkEventType}}] the type of the event (\code{GDK_EXPOSE}).}
\item{\code{window}}{[\code{\link{GdkWindow}}] the window which received the event.}
\item{\code{sendEvent}}{[integer] \code{TRUE} if the event was sent explicitly (e.g. using 
\code{xsendevent}).}
\item{\code{area}}{[\code{\link{GdkRectangle}}] bounding box of \code{region}.}
\item{\code{region}}{[\code{\link{GdkRegion}}] the region that needs to be redrawn.}
\item{\code{count}}{[integer] the number of contiguous \code{GDK_EXPOSE} events following this one.
The only use for this is "exposure compression", i.e. handling all contiguous
\code{GDK_EXPOSE} events in one go, though GDK performs some exposure compression
so this is not normally needed.}
}

}
\item{\code{GdkEventVisibility}}{
Generated when the window visibility status has changed.

\describe{
\item{\code{type}}{[\code{\link{GdkEventType}}] the type of the event (\code{GDK_VISIBILITY_NOTIFY}).}
\item{\code{window}}{[\code{\link{GdkWindow}}] the window which received the event.}
\item{\code{sendEvent}}{[integer] \code{TRUE} if the event was sent explicitly (e.g. using 
\code{xsendevent}).}
\item{\code{state}}{[\code{\link{GdkVisibilityState}}] the new visibility state (\code{GDK_VISIBILITY_FULLY_OBSCURED},
\code{GDK_VISIBILITY_PARTIAL} or \code{GDK_VISIBILITY_UNOBSCURED}).}
}

}
\item{\code{GdkEventCrossing}}{
Generated when the pointer enters or leaves a window.

\describe{
\item{\code{type}}{[\code{\link{GdkEventType}}] the type of the event (\code{GDK_ENTER_NOTIFY} or \code{GDK_LEAVE_NOTIFY}).}
\item{\code{window}}{[\code{\link{GdkWindow}}] the window which received the event.}
\item{\code{sendEvent}}{[integer] \code{TRUE} if the event was sent explicitly (e.g. using 
\code{xsendevent}).}
\item{\code{context}}{[\code{\link{GdkDragContext}}] the window that was entered or left.}
\item{\code{time}}{[numeric] the time of the event in milliseconds.}
\item{\code{xRoot}}{[integer] the x coordinate of the pointer relative to the window.}
\item{\code{yRoot}}{[integer] the y coordinate of the pointer relative to the window.}
}

}
\item{\code{GdkEventFocus}}{
Describes a change of keyboard focus.

\describe{
\item{\code{type}}{[\code{\link{GdkEventType}}] the type of the event (\code{GDK_FOCUS_CHANGE}).}
\item{\code{window}}{[\code{\link{GdkWindow}}] the window which received the event.}
\item{\code{sendEvent}}{[integer] \code{TRUE} if the event was sent explicitly (e.g. using \code{xsendevent}).}
\item{\code{in}}{[integer] \code{TRUE} if the window has gained the keyboard focus, \code{FALSE} if it has lost
the focus.}
}

}
\item{\code{GdkEventConfigure}}{
Generated when a window size or position has changed.

\describe{
\item{\code{type}}{[\code{\link{GdkEventType}}] the type of the event (\code{GDK_CONFIGURE}).}
\item{\code{window}}{[\code{\link{GdkWindow}}] the window which received the event.}
\item{\code{sendEvent}}{[integer] \code{TRUE} if the event was sent explicitly (e.g. using \code{xsendevent}).}
\item{\code{x}}{[integer] the new x coordinate of the window, relative to its parent.}
\item{\code{y}}{[integer] the new y coordinate of the window, relative to its parent.}
\item{\code{width}}{[integer] the new width of the window.}
\item{\code{height}}{[integer] the new height of the window.}
}

}
\item{\code{GdkEventProperty}}{
Describes a property change on a window.

\describe{
\item{\code{type}}{[\code{\link{GdkEventType}}] the type of the event (\code{GDK_PROPERTY_NOTIFY}).}
\item{\code{window}}{[\code{\link{GdkWindow}}] the window which received the event.}
\item{\code{sendEvent}}{[integer] \code{TRUE} if the event was sent explicitly (e.g. using \code{xsendevent}).}
\item{\code{atom}}{[\code{\link{GdkAtom}}] the property that was changed.}
\item{\code{time}}{[numeric] the time of the event in milliseconds.}
\item{\code{state}}{[numeric] whether the property was changed (\code{GDK_PROPERTY_NEW_VALUE}) or
deleted (\code{GDK_PROPERTY_DELETE}).}
}

}
\item{\code{GdkEventSelection}}{
Generated when a selection is requested or ownership of a selection 
is taken over by another client application. 

\describe{
\item{\code{type}}{[\code{\link{GdkEventType}}] the type of the event (\code{GDK_SELECTION_CLEAR}, \code{GDK_SELECTION_NOTIFY} or 
\code{GDK_SELECTION_REQUEST}).}
\item{\code{window}}{[\code{\link{GdkWindow}}] the window which received the event.}
\item{\code{sendEvent}}{[integer] \code{TRUE} if the event was sent explicitly (e.g. using \code{xsendevent}).}
\item{\code{selection}}{[\code{\link{GdkAtom}}] the selection.}
\item{\code{target}}{[\code{\link{GdkAtom}}] the target to which the selection should be converted.}
\item{\code{property}}{[\code{\link{GdkAtom}}] the property in which to place the result of the conversion.}
\item{\code{time}}{[numeric] the time of the event in milliseconds.}
\item{\code{requestor}}{[\code{\link{GdkNativeWindow}}] the native window on which to place \code{property}.}
}

}
\item{\code{GdkEventDND}}{
Generated during DND operations. 

\describe{
\item{\code{type}}{[\code{\link{GdkEventType}}] the type of the event (\code{GDK_DRAG_ENTER}, \code{GDK_DRAG_LEAVE},
  \code{GDK_DRAG_MOTION}, \code{GDK_DRAG_STATUS}, \code{GDK_DROP_START} or \code{GDK_DROP_FINISHED}).}
\item{\code{window}}{[\code{\link{GdkWindow}}] the window which received the event.}
\item{\code{sendEvent}}{[integer] \code{TRUE} if the event was sent explicitly (e.g. using \code{xsendevent}).}
\item{\code{context}}{[\code{\link{GdkDragContext}}] the \code{\link{GdkDragContext}} for the current DND operation.}
\item{\code{time}}{[numeric] the time of the event in milliseconds.}
\item{\code{xRoot}}{[integer] the x coordinate of the pointer relative to the root of the screen,
  only set for \code{GDK_DRAG_MOTION} and \code{GDK_DROP_START}.}
\item{\code{yRoot}}{[integer] the y coordinate of the pointer relative to the root of the screen,
  only set for \code{GDK_DRAG_MOTION} and \code{GDK_DROP_START}.}
}

}
\item{\code{GdkEventProximity}}{
Proximity events are generated when using GDK's wrapper for the
XInput extension. The XInput extension is an add-on for standard X
that allows you to use nonstandard devices such as graphics tablets.
A proximity event indicates that the stylus has moved in or out of
contact with the tablet, or perhaps that the user's finger has moved
in or out of contact with a touch screen.

\describe{
\item{\code{type}}{[\code{\link{GdkEventType}}] the type of the event (\code{GDK_PROXIMITY_IN} or \code{GDK_PROXIMITY_OUT}).}
\item{\code{window}}{[\code{\link{GdkWindow}}] the window which received the event.}
\item{\code{sendEvent}}{[integer] \code{TRUE} if the event was sent explicitly (e.g. using \code{xsendevent}).}
\item{\code{time}}{[numeric] the time of the event in milliseconds.}
\item{\code{device}}{[\code{\link{GdkDevice}}] the device where the event originated.}
}

}
\item{\code{GdkEventClient}}{
An event sent by another client application.

\describe{
\item{\code{type}}{[\code{\link{GdkEventType}}] the type of the event (\code{GDK_CLIENT_EVENT}).}
\item{\code{window}}{[\code{\link{GdkWindow}}] the window which received the event.}
\item{\code{sendEvent}}{[integer] \code{TRUE} if the event was sent explicitly (e.g. using \code{xsendevent}).}
\item{\code{messageType}}{[\code{\link{GdkAtom}}] the type of the message, which can be defined by the
application.}
}

}
\item{\code{GdkEventNoExpose}}{
Generated when the area of a \code{\link{GdkDrawable}} being copied, with \code{\link{gdkDrawDrawable}}
or \code{gdkWindowCopyArea()}, was completely available.
  
FIXME: add more here.

\describe{
\item{\code{type}}{[\code{\link{GdkEventType}}] the type of the event (\code{GDK_NO_EXPOSE}).}
\item{\code{window}}{[\code{\link{GdkWindow}}] the window which received the event.}
\item{\code{sendEvent}}{[integer] \code{TRUE} if the event was sent explicitly (e.g. using \code{xsendevent}).}
}

}
\item{\code{GdkEventWindowState}}{
Generated when the state of a toplevel window changes.

\describe{
\item{\code{type}}{[\code{\link{GdkEventType}}] the type of the event (\code{GDK_WINDOW_STATE}).}
\item{\code{window}}{[\code{\link{GdkWindow}}] the window which received the event.}
\item{\code{sendEvent}}{[integer] \code{TRUE} if the event was sent explicitly (e.g. using \code{xsendevent}).}
\item{\code{changedMask}}{[\code{\link{GdkWindowState}}] mask specifying what flags have changed.}
\item{\code{newWindowState}}{[\code{\link{GdkWindowState}}] the new window state, a combination of \code{\link{GdkWindowState}} bits.}
}

}
\item{\code{GdkEventSetting}}{
Generated when a setting is modified.

\describe{
\item{\code{type}}{[\code{\link{GdkEventType}}] the type of the event (\code{GDK_SETTING}).}
\item{\code{window}}{[\code{\link{GdkWindow}}] the window which received the event.}
\item{\code{sendEvent}}{[integer] \code{TRUE} if the event was sent explicitly (e.g. using \code{xsendevent}).}
\item{\code{action}}{[\code{\link{GdkSettingAction}}] what happened to the setting (\code{GDK_SETTING_ACTION_NEW},
  \code{GDK_SETTING_ACTION_CHANGED} or \code{GDK_SETTING_ACTION_DELETED}).}
\item{\code{name}}{[char] the name of the setting.}
}

}
\item{\code{GdkEventOwnerChange}}{
Generated when the owner of a selection changes. On X11, this information is
only available if the X server supports the XFIXES extension.
  Since 2.6

\describe{
\item{\code{type}}{[\code{\link{GdkEventType}}] the type of the event (\code{GDK_OWNER_CHANGE}).}
\item{\code{window}}{[\code{\link{GdkWindow}}] the window which received the event}
\item{\code{sendEvent}}{[integer] \code{TRUE} if the event was sent explicitly (e.g. using \code{xsendevent}).}
\item{\code{owner}}{[\code{\link{GdkNativeWindow}}] the new owner of the selection}
\item{\code{reason}}{[\code{\link{GdkOwnerChange}}] the reason for the ownership change as a \code{\link{GdkOwnerChange}} value}
\item{\code{selection}}{[\code{\link{GdkAtom}}] the atom identifying the selection}
\item{\code{time}}{[numeric] the timestamp of the event}
\item{\code{selectionTime}}{[numeric] the time at which the selection ownership was taken over}
}

}
\item{\code{GdkEventGrabBroken}}{
Generated when a pointer or keyboard grab is broken. On X11, this happens
when the grab window becomes unviewable (i.e. it or one of its ancestors 
is unmapped), or if the same application grabs the pointer or keyboard
again. Note that implicit grabs (which are initiated by button presses)
can also cause \code{\link{GdkEventGrabBroken}} events.
  Since 2.8

\describe{
\item{\code{type}}{[\code{\link{GdkEventType}}] the type of the event (\code{GDK_GRAB_BROKEN})}
\item{\code{window}}{[\code{\link{GdkWindow}}] the window which received the event, i.e. the window
 that previously owned the grab}
\item{\code{sendEvent}}{[integer] \code{TRUE} if the event was sent explicitly (e.g. using \code{xsendevent}).}
\item{\code{keyboard}}{[logical] \code{TRUE} if a keyboard grab was broken, \code{FALSE} if a pointer 
  grab was broken}
\item{\code{implicit}}{[logical] \code{TRUE} if the broken grab was implicit}
\item{\code{grabWindow}}{[\code{\link{GdkWindow}}] If this event is caused by another grab in the same 
  application, \code{grab.window} contains the new grab window. Otherwise
  \code{grab.window} id \code{NULL}.}
}

}
}}
\section{Enums and Flags}{\describe{
\item{\code{enum GdkScrollDirection}}{
Specifies the direction for \code{\link{GdkEventScroll}}. 

\describe{
\item{\code{GDK_SCROLL_UP (up)}}{the window is scrolled up.}
\item{\code{GDK_SCROLL_DOWN (down)}}{the window is scrolled down.}
\item{\code{GDK_SCROLL_LEFT (left)}}{the window is scrolled to the left.}
\item{\code{GDK_SCROLL_RIGHT (right)}}{the window is scrolled to the right.}
}

}
\item{\code{enum GdkVisibilityState}}{
Specifies the visiblity status of a window for a \code{\link{GdkEventVisibility}}.

\describe{
\item{\code{GDK_VISIBILITY_UNOBSCURED (unobscured)}}{the window is completely visible.}
\item{\code{GDK_VISIBILITY_PARTIAL (partial)}}{the window is partially visible.}
\item{\code{GDK_VISIBILITY_FULLY_OBSCURED (fully-obscured)}}{the window is not visible at all.}
}

}
\item{\code{enum GdkCrossingMode}}{
Specifies the crossing mode for \code{\link{GdkEventCrossing}}.

\describe{
\item{\code{GDK_CROSSING_NORMAL (normal)}}{crossing because of pointer motion.}
\item{\code{GDK_CROSSING_GRAB (grab)}}{crossing because a grab is activated.}
\item{\code{GDK_CROSSING_UNGRAB (ungrab)}}{crossing because a grab is deactivated.}
}

}
\item{\code{enum GdkNotifyType}}{
Specifies the kind of crossing for \code{\link{GdkEventCrossing}}.
  
See the X11 protocol specification of \code{LeaveNotify} for
full details of crossing event generation.

\describe{
\item{\code{GDK_NOTIFY_ANCESTOR (ancestor)}}{the window is entered from an ancestor or 
   left towards an ancestor.}
\item{\code{GDK_NOTIFY_VIRTUAL (virtual)}}{the pointer moves between an ancestor and an 
    inferior of the window.}
\item{\code{GDK_NOTIFY_INFERIOR (inferior)}}{the window is entered from an inferior or 
   left towards an inferior.}
\item{\code{GDK_NOTIFY_NONLINEAR (nonlinear)}}{ the window is entered from or left towards 
   a window which is neither an ancestor nor an inferior.}
\item{\code{GDK_NOTIFY_NONLINEAR_VIRTUAL (nonlinear-virtual)}}{the pointer moves between two windows 
   which are not ancestors of each other and the window is part of
   the ancestor chain between one of these windows and their least
   common ancestor.}
\item{\code{GDK_NOTIFY_UNKNOWN (unknown)}}{an unknown type of enter/leave event occurred.}
}

}
\item{\code{enum GdkPropertyState}}{
Specifies the type of a property change for a \code{\link{GdkEventProperty}}.

\describe{
\item{\code{GDK_PROPERTY_NEW_VALUE (new-value)}}{the property value was changed.}
\item{\code{GDK_PROPERTY_DELETE (delete)}}{the property was deleted.}
}

}
\item{\code{enum GdkWindowState}}{
Specifies the state of a toplevel window.

\describe{
\item{\code{GDK_WINDOW_STATE_WITHDRAWN (withdrawn)}}{the window is not shown.}
\item{\code{GDK_WINDOW_STATE_ICONIFIED (iconified)}}{the window is minimized.}
\item{\code{GDK_WINDOW_STATE_MAXIMIZED (maximized)}}{the window is maximized.}
\item{\code{GDK_WINDOW_STATE_STICKY (sticky)}}{the window is sticky.}
\item{\code{GDK_WINDOW_STATE_FULLSCREEN (fullscreen)}}{the window is maximized without decorations.}
\item{\code{GDK_WINDOW_STATE_ABOVE (above)}}{the window is kept above other windows.}
\item{\code{GDK_WINDOW_STATE_BELOW (below)}}{the window is kept below other windows.}
}

}
\item{\code{enum GdkSettingAction}}{
Specifies the kind of modification applied to a setting in a \code{\link{GdkEventSetting}}.

\describe{
\item{\code{GDK_SETTING_ACTION_NEW (new)}}{a setting was added.}
\item{\code{GDK_SETTING_ACTION_CHANGED (changed)}}{a setting was changed.}
\item{\code{GDK_SETTING_ACTION_DELETED (deleted)}}{a setting was deleted.}
}

}
\item{\code{enum GdkOwnerChange}}{
Specifies why a selection ownership was changed.

\describe{
\item{\code{GDK_OWNER_CHANGE_NEW_OWNER (new-owner)}}{some other app claimed the ownership}
\item{\code{GDK_OWNER_CHANGE_DESTROY (destroy)}}{the window was destroyed}
\item{\code{GDK_OWNER_CHANGE_CLOSE (close)}}{the client was closed}
}

}
}}
\references{\url{http://developer.gnome.org/doc/API/2.0/gdk/gdk-Event-Structures.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
