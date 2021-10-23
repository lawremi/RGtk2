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
  \strong{PLEASE NOTE:} A common mistake is to forget to set the event mask of a widget so that the
required events are received. See \code{\link{gtkWidgetSetEvents}}.}
\section{Structures}{\describe{
\item{\verb{GdkEventAny}}{
Contains the fields which are common to all event structs.
Any event pointer can safely be cast to a pointer to a \code{\link{GdkEventAny}} to access
these fields.

\describe{
\item{\verb{type}}{[\code{\link{GdkEventType}}] the type of the event.}
\item{\verb{window}}{[\code{\link{GdkWindow}}] the window which received the event.}
\item{\verb{sendEvent}}{[raw] \code{TRUE} if the event was sent explicitly (e.g. using
\code{xsendevent}).}
}

}
\item{\verb{GdkEventKey}}{
Describes a key press or key release event.

\describe{
\item{\verb{type}}{[\code{\link{GdkEventType}}] the type of the event (\code{GDK_KEY_PRESS} or \code{GDK_KEY_RELEASE}).}
\item{\verb{window}}{[\code{\link{GdkWindow}}] the window which received the event.}
\item{\verb{sendEvent}}{[raw] \code{TRUE} if the event was sent explicitly (e.g. using
\code{xsendevent}).}
\item{\verb{time}}{[numeric] the time of the event in milliseconds.}
\item{\verb{state}}{[numeric] a bit-mask representing the state of the modifier keys (e.g. Control,
Shift and Alt) and the pointer buttons. See \code{\link{GdkModifierType}}.}
\item{\verb{keyval}}{[numeric] the key that was pressed or released. See the
\file{<gdk/gdkkeysyms.h>}
header file for a complete list of GDK key codes.}
\item{\verb{length}}{[integer] the length of \code{string}.}
\item{\verb{string}}{[character] a string containing the an approximation of the text that
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
\item{\verb{hardwareKeycode}}{[integer] the raw code of the key that was pressed or released.}
\item{\verb{group}}{[raw] the keyboard group.}
}

}
\item{\verb{GdkEventButton}}{
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
\item{\verb{type}}{[\code{\link{GdkEventType}}] the type of the event (\code{GDK_BUTTON_PRESS}, \code{GDK_2BUTTON_PRESS},
\code{GDK_3BUTTON_PRESS} or \code{GDK_BUTTON_RELEASE}).}
\item{\verb{window}}{[\code{\link{GdkWindow}}] the window which received the event.}
\item{\verb{sendEvent}}{[raw] \code{TRUE} if the event was sent explicitly (e.g. using
\code{xsendevent}).}
\item{\verb{time}}{[numeric] the time of the event in milliseconds.}
\item{\verb{x}}{[numeric] the x coordinate of the pointer relative to the window.}
\item{\verb{y}}{[numeric] the y coordinate of the pointer relative to the window.}
\item{\verb{axes}}{[numeric] \code{x}, \code{y} translated to the axes of \code{device}, or \code{NULL} if \code{device} is
the mouse.}
\item{\verb{state}}{[numeric] a bit-mask representing the state of the modifier keys (e.g. Control,
Shift and Alt) and the pointer buttons. See \code{\link{GdkModifierType}}.}
\item{\verb{button}}{[numeric] the button which was pressed or released, numbered from 1 to 5.
Normally button 1 is the left mouse button, 2 is the middle button,
and 3 is the right button. On 2-button mice, the middle button can often
be simulated by pressing both mouse buttons together.}
\item{\verb{device}}{[\code{\link{GdkDevice}}] the device where the event originated.}
\item{\verb{xRoot}}{[numeric] the x coordinate of the pointer relative to the root of the screen.}
\item{\verb{yRoot}}{[numeric] the y coordinate of the pointer relative to the root of the screen.}
}

}
\item{\verb{GdkEventScroll}}{
Generated from button presses for the buttons 4 to 7. Wheel mice are
usually configured to generate button press events for buttons 4 and 5
when the wheel is turned.

\describe{
\item{\verb{type}}{[\code{\link{GdkEventType}}] the type of the event (\code{GDK_SCROLL}).}
\item{\verb{window}}{[\code{\link{GdkWindow}}] the window which received the event.}
\item{\verb{sendEvent}}{[raw] \code{TRUE} if the event was sent explicitly (e.g. using
\code{xsendevent}).}
\item{\verb{time}}{[numeric] the time of the event in milliseconds.}
\item{\verb{x}}{[numeric] the x coordinate of the pointer relative to the window.}
\item{\verb{y}}{[numeric] the y coordinate of the pointer relative to the window.}
\item{\verb{state}}{[numeric] a bit-mask representing the state of the modifier keys (e.g. Control,
Shift and Alt) and the pointer buttons. See \code{\link{GdkModifierType}}.}
\item{\verb{direction}}{[\code{\link{GdkScrollDirection}}] the direction to scroll to (one of \code{GDK_SCROLL_UP},
\code{GDK_SCROLL_DOWN}, \code{GDK_SCROLL_LEFT} and \code{GDK_SCROLL_RIGHT}).}
\item{\verb{device}}{[\code{\link{GdkDevice}}] the device where the event originated.}
\item{\verb{xRoot}}{[numeric] the x coordinate of the pointer relative to the root of the screen.}
\item{\verb{yRoot}}{[numeric] the y coordinate of the pointer relative to the root of the screen.}
}

}
\item{\verb{GdkEventMotion}}{
Generated when the pointer moves.

\describe{
\item{\verb{type}}{[\code{\link{GdkEventType}}] the type of the event.}
\item{\verb{window}}{[\code{\link{GdkWindow}}] the window which received the event.}
\item{\verb{sendEvent}}{[raw] \code{TRUE} if the event was sent explicitly (e.g. using
\code{xsendevent}).}
\item{\verb{time}}{[numeric] the time of the event in milliseconds.}
\item{\verb{x}}{[numeric] the x coordinate of the pointer relative to the window.}
\item{\verb{y}}{[numeric] the y coordinate of the pointer relative to the window.}
\item{\verb{axes}}{[numeric] \code{x}, \code{y} translated to the axes of \code{device}, or \code{NULL} if \code{device} is
the mouse.}
\item{\verb{state}}{[numeric] a bit-mask representing the state of the modifier keys (e.g. Control,
Shift and Alt) and the pointer buttons. See \code{\link{GdkModifierType}}.}
\item{\verb{isHint}}{[integer] set to 1 if this event is just a hint, see the \code{GDK_POINTER_MOTION_HINT_MASK}
value of \code{\link{GdkEventMask}}.}
\item{\verb{device}}{[\code{\link{GdkDevice}}] the device where the event originated.}
\item{\verb{xRoot}}{[numeric] the x coordinate of the pointer relative to the root of the screen.}
\item{\verb{yRoot}}{[numeric] the y coordinate of the pointer relative to the root of the screen.}
}

}
\item{\verb{GdkEventExpose}}{
Generated when all or part of a window becomes visible and needs to be
redrawn.

\describe{
\item{\verb{type}}{[\code{\link{GdkEventType}}] the type of the event (\code{GDK_EXPOSE} or \code{GDK_DAMAGE}).}
\item{\verb{window}}{[\code{\link{GdkWindow}}] the window which received the event.}
\item{\verb{sendEvent}}{[raw] \code{TRUE} if the event was sent explicitly (e.g. using
\code{xsendevent}).}
\item{\verb{area}}{[\code{\link{GdkRectangle}}] bounding box of \code{region}.}
\item{\verb{region}}{[\code{\link{GdkRegion}}] the region that needs to be redrawn.}
\item{\verb{count}}{[integer] the number of contiguous \code{GDK_EXPOSE} events following this one.
The only use for this is "exposure compression", i.e. handling all contiguous
\code{GDK_EXPOSE} events in one go, though GDK performs some exposure compression
so this is not normally needed.}
}

}
\item{\verb{GdkEventVisibility}}{
Generated when the window visibility status has changed.

\describe{
\item{\verb{type}}{[\code{\link{GdkEventType}}] the type of the event (\code{GDK_VISIBILITY_NOTIFY}).}
\item{\verb{window}}{[\code{\link{GdkWindow}}] the window which received the event.}
\item{\verb{sendEvent}}{[raw] \code{TRUE} if the event was sent explicitly (e.g. using
\code{xsendevent}).}
\item{\verb{state}}{[\code{\link{GdkVisibilityState}}] the new visibility state (\code{GDK_VISIBILITY_FULLY_OBSCURED},
\code{GDK_VISIBILITY_PARTIAL} or \code{GDK_VISIBILITY_UNOBSCURED}).}
}

}
\item{\verb{GdkEventCrossing}}{
Generated when the pointer enters or leaves a window.

\describe{
\item{\verb{type}}{[\code{\link{GdkEventType}}] the type of the event (\code{GDK_ENTER_NOTIFY} or \code{GDK_LEAVE_NOTIFY}).}
\item{\verb{window}}{[\code{\link{GdkWindow}}] the window which received the event.}
\item{\verb{sendEvent}}{[raw] \code{TRUE} if the event was sent explicitly (e.g. using
\code{xsendevent}).}
\item{\verb{context}}{[\code{\link{GdkDragContext}}] the window that was entered or left.}
\item{\verb{time}}{[numeric] the time of the event in milliseconds.}
\item{\verb{xRoot}}{[integer] the x coordinate of the pointer relative to the window.}
\item{\verb{yRoot}}{[integer] the y coordinate of the pointer relative to the window.}
}

}
\item{\verb{GdkEventFocus}}{
Describes a change of keyboard focus.

\describe{
\item{\verb{type}}{[\code{\link{GdkEventType}}] the type of the event (\code{GDK_FOCUS_CHANGE}).}
\item{\verb{window}}{[\code{\link{GdkWindow}}] the window which received the event.}
\item{\verb{sendEvent}}{[raw] \code{TRUE} if the event was sent explicitly (e.g. using \code{xsendevent}).}
\item{\verb{in}}{[integer] \code{TRUE} if the window has gained the keyboard focus, \code{FALSE} if it has lost
the focus.}
}

}
\item{\verb{GdkEventConfigure}}{
Generated when a window size or position has changed.

\describe{
\item{\verb{type}}{[\code{\link{GdkEventType}}] the type of the event (\code{GDK_CONFIGURE}).}
\item{\verb{window}}{[\code{\link{GdkWindow}}] the window which received the event.}
\item{\verb{sendEvent}}{[raw] \code{TRUE} if the event was sent explicitly (e.g. using \code{xsendevent}).}
\item{\verb{x}}{[integer] the new x coordinate of the window, relative to its parent.}
\item{\verb{y}}{[integer] the new y coordinate of the window, relative to its parent.}
\item{\verb{width}}{[integer] the new width of the window.}
\item{\verb{height}}{[integer] the new height of the window.}
}

}
\item{\verb{GdkEventProperty}}{
Describes a property change on a window.

\describe{
\item{\verb{type}}{[\code{\link{GdkEventType}}] the type of the event (\code{GDK_PROPERTY_NOTIFY}).}
\item{\verb{window}}{[\code{\link{GdkWindow}}] the window which received the event.}
\item{\verb{sendEvent}}{[raw] \code{TRUE} if the event was sent explicitly (e.g. using \code{xsendevent}).}
\item{\verb{atom}}{[\code{\link{GdkAtom}}] the property that was changed.}
\item{\verb{time}}{[numeric] the time of the event in milliseconds.}
\item{\verb{state}}{[numeric] whether the property was changed (\code{GDK_PROPERTY_NEW_VALUE}) or
deleted (\code{GDK_PROPERTY_DELETE}).}
}

}
\item{\verb{GdkEventSelection}}{
Generated when a selection is requested or ownership of a selection
is taken over by another client application.

\describe{
\item{\verb{type}}{[\code{\link{GdkEventType}}] the type of the event (\code{GDK_SELECTION_CLEAR}, \code{GDK_SELECTION_NOTIFY} or
\code{GDK_SELECTION_REQUEST}).}
\item{\verb{window}}{[\code{\link{GdkWindow}}] the window which received the event.}
\item{\verb{sendEvent}}{[raw] \code{TRUE} if the event was sent explicitly (e.g. using \code{xsendevent}).}
\item{\verb{selection}}{[\code{\link{GdkAtom}}] the selection.}
\item{\verb{target}}{[\code{\link{GdkAtom}}] the target to which the selection should be converted.}
\item{\verb{property}}{[\code{\link{GdkAtom}}] the property in which to place the result of the conversion.}
\item{\verb{time}}{[numeric] the time of the event in milliseconds.}
\item{\verb{requestor}}{[\code{\link{GdkNativeWindow}}] the native window on which to place \code{property}.}
}

}
\item{\verb{GdkEventDND}}{
Generated during DND operations.

\describe{
\item{\verb{type}}{[\code{\link{GdkEventType}}] the type of the event (\code{GDK_DRAG_ENTER}, \code{GDK_DRAG_LEAVE},
\code{GDK_DRAG_MOTION}, \code{GDK_DRAG_STATUS}, \code{GDK_DROP_START} or \code{GDK_DROP_FINISHED}).}
\item{\verb{window}}{[\code{\link{GdkWindow}}] the window which received the event.}
\item{\verb{sendEvent}}{[raw] \code{TRUE} if the event was sent explicitly (e.g. using \code{xsendevent}).}
\item{\verb{context}}{[\code{\link{GdkDragContext}}] the \code{\link{GdkDragContext}} for the current DND operation.}
\item{\verb{time}}{[numeric] the time of the event in milliseconds.}
\item{\verb{xRoot}}{[integer] the x coordinate of the pointer relative to the root of the screen,
only set for \code{GDK_DRAG_MOTION} and \code{GDK_DROP_START}.}
\item{\verb{yRoot}}{[integer] the y coordinate of the pointer relative to the root of the screen,
only set for \code{GDK_DRAG_MOTION} and \code{GDK_DROP_START}.}
}

}
\item{\verb{GdkEventProximity}}{
Proximity events are generated when using GDK's wrapper for the
XInput extension. The XInput extension is an add-on for standard X
that allows you to use nonstandard devices such as graphics tablets.
A proximity event indicates that the stylus has moved in or out of
contact with the tablet, or perhaps that the user's finger has moved
in or out of contact with a touch screen.

\describe{
\item{\verb{type}}{[\code{\link{GdkEventType}}] the type of the event (\code{GDK_PROXIMITY_IN} or \code{GDK_PROXIMITY_OUT}).}
\item{\verb{window}}{[\code{\link{GdkWindow}}] the window which received the event.}
\item{\verb{sendEvent}}{[raw] \code{TRUE} if the event was sent explicitly (e.g. using \code{xsendevent}).}
\item{\verb{time}}{[numeric] the time of the event in milliseconds.}
\item{\verb{device}}{[\code{\link{GdkDevice}}] the device where the event originated.}
}

}
\item{\verb{GdkEventClient}}{
An event sent by another client application.

\describe{
\item{\verb{type}}{[\code{\link{GdkEventType}}] the type of the event (\code{GDK_CLIENT_EVENT}).}
\item{\verb{window}}{[\code{\link{GdkWindow}}] the window which received the event.}
\item{\verb{sendEvent}}{[raw] \code{TRUE} if the event was sent explicitly (e.g. using \code{xsendevent}).}
\item{\verb{messageType}}{[\code{\link{GdkAtom}}] the type of the message, which can be defined by the
application.}
}

}
\item{\verb{GdkEventNoExpose}}{
Generated when the area of a \code{\link{GdkDrawable}} being copied, with \code{\link{gdkDrawDrawable}}
or \code{gdkWindowCopyArea()}, was completely available.
  
FIXME: add more here.

\describe{
\item{\verb{type}}{[\code{\link{GdkEventType}}] the type of the event (\code{GDK_NO_EXPOSE}).}
\item{\verb{window}}{[\code{\link{GdkWindow}}] the window which received the event.}
\item{\verb{sendEvent}}{[raw] \code{TRUE} if the event was sent explicitly (e.g. using \code{xsendevent}).}
}

}
\item{\verb{GdkEventWindowState}}{
Generated when the state of a toplevel window changes.

\describe{
\item{\verb{type}}{[\code{\link{GdkEventType}}] the type of the event (\code{GDK_WINDOW_STATE}).}
\item{\verb{window}}{[\code{\link{GdkWindow}}] the window which received the event.}
\item{\verb{sendEvent}}{[raw] \code{TRUE} if the event was sent explicitly (e.g. using \code{xsendevent}).}
\item{\verb{changedMask}}{[\code{\link{GdkWindowState}}] mask specifying what flags have changed.}
\item{\verb{newWindowState}}{[\code{\link{GdkWindowState}}] the new window state, a combination of \code{\link{GdkWindowState}} bits.}
}

}
\item{\verb{GdkEventSetting}}{
Generated when a setting is modified.

\describe{
\item{\verb{type}}{[\code{\link{GdkEventType}}] the type of the event (\code{GDK_SETTING}).}
\item{\verb{window}}{[\code{\link{GdkWindow}}] the window which received the event.}
\item{\verb{sendEvent}}{[raw] \code{TRUE} if the event was sent explicitly (e.g. using \code{xsendevent}).}
\item{\verb{action}}{[\code{\link{GdkSettingAction}}] what happened to the setting (\code{GDK_SETTING_ACTION_NEW},
\code{GDK_SETTING_ACTION_CHANGED} or \code{GDK_SETTING_ACTION_DELETED}).}
\item{\verb{name}}{[char] the name of the setting.}
}

}
\item{\verb{GdkEventOwnerChange}}{
Generated when the owner of a selection changes. On X11, this information is
only available if the X server supports the XFIXES extension.
  Since 2.6

\describe{
\item{\verb{type}}{[\code{\link{GdkEventType}}] the type of the event (\code{GDK_OWNER_CHANGE}).}
\item{\verb{window}}{[\code{\link{GdkWindow}}] the window which received the event}
\item{\verb{sendEvent}}{[raw] \code{TRUE} if the event was sent explicitly (e.g. using \code{xsendevent}).}
\item{\verb{owner}}{[\code{\link{GdkNativeWindow}}] the new owner of the selection}
\item{\verb{reason}}{[\code{\link{GdkOwnerChange}}] the reason for the ownership change as a \code{\link{GdkOwnerChange}} value}
\item{\verb{selection}}{[\code{\link{GdkAtom}}] the atom identifying the selection}
\item{\verb{time}}{[numeric] the timestamp of the event}
\item{\verb{selectionTime}}{[numeric] the time at which the selection ownership was taken over}
}

}
\item{\verb{GdkEventGrabBroken}}{
Generated when a pointer or keyboard grab is broken. On X11, this happens
when the grab window becomes unviewable (i.e. it or one of its ancestors
is unmapped), or if the same application grabs the pointer or keyboard
again. Note that implicit grabs (which are initiated by button presses)
can also cause \code{\link{GdkEventGrabBroken}} events.
  Since 2.8

\describe{
\item{\verb{type}}{[\code{\link{GdkEventType}}] the type of the event (\code{GDK_GRAB_BROKEN})}
\item{\verb{window}}{[\code{\link{GdkWindow}}] the window which received the event, i.e. the window
that previously owned the grab}
\item{\verb{sendEvent}}{[raw] \code{TRUE} if the event was sent explicitly (e.g. using \code{xsendevent}).}
\item{\verb{keyboard}}{[logical] \code{TRUE} if a keyboard grab was broken, \code{FALSE} if a pointer
grab was broken}
\item{\verb{implicit}}{[logical] \code{TRUE} if the broken grab was implicit}
\item{\verb{grabWindow}}{[\code{\link{GdkWindow}}] If this event is caused by another grab in the same
application, \code{grab.window} contains the new grab window. Otherwise
\code{grab.window} is \code{NULL}.}
}

}
}}
\section{Enums and Flags}{\describe{
\item{\verb{GdkScrollDirection}}{
Specifies the direction for \code{\link{GdkEventScroll}}.

\describe{
\item{\verb{up}}{the window is scrolled up.}
\item{\verb{down}}{the window is scrolled down.}
\item{\verb{left}}{the window is scrolled to the left.}
\item{\verb{right}}{the window is scrolled to the right.}
}

}
\item{\verb{GdkVisibilityState}}{
Specifies the visiblity status of a window for a \code{\link{GdkEventVisibility}}.

\describe{
\item{\verb{unobscured}}{the window is completely visible.}
\item{\verb{partial}}{the window is partially visible.}
\item{\verb{fully-obscured}}{the window is not visible at all.}
}

}
\item{\verb{GdkCrossingMode}}{
Specifies the crossing mode for \code{\link{GdkEventCrossing}}.

\describe{
\item{\verb{normal}}{crossing because of pointer motion.}
\item{\verb{grab}}{crossing because a grab is activated.}
\item{\verb{ungrab}}{crossing because a grab is deactivated.}
}

}
\item{\verb{GdkNotifyType}}{
Specifies the kind of crossing for \code{\link{GdkEventCrossing}}.
  
See the X11 protocol specification of \verb{LeaveNotify} for
full details of crossing event generation.

\describe{
\item{\verb{ancestor}}{the window is entered from an ancestor or 
   left towards an ancestor.}
\item{\verb{virtual}}{the pointer moves between an ancestor and an 
    inferior of the window.}
\item{\verb{inferior}}{the window is entered from an inferior or 
   left towards an inferior.}
\item{\verb{nonlinear}}{ the window is entered from or left towards 
   a window which is neither an ancestor nor an inferior.}
\item{\verb{nonlinear-virtual}}{the pointer moves between two windows 
   which are not ancestors of each other and the window is part of
   the ancestor chain between one of these windows and their least
   common ancestor.}
\item{\verb{unknown}}{an unknown type of enter/leave event occurred.}
}

}
\item{\verb{GdkPropertyState}}{
Specifies the type of a property change for a \code{\link{GdkEventProperty}}.

\describe{
\item{\verb{new-value}}{the property value was changed.}
\item{\verb{delete}}{the property was deleted.}
}

}
\item{\verb{GdkWindowState}}{
Specifies the state of a toplevel window.

\describe{
\item{\verb{withdrawn}}{the window is not shown.}
\item{\verb{iconified}}{the window is minimized.}
\item{\verb{maximized}}{the window is maximized.}
\item{\verb{sticky}}{the window is sticky.}
\item{\verb{fullscreen}}{the window is maximized without decorations.}
\item{\verb{above}}{the window is kept above other windows.}
\item{\verb{below}}{the window is kept below other windows.}
}

}
\item{\verb{GdkSettingAction}}{
Specifies the kind of modification applied to a setting in a \code{\link{GdkEventSetting}}.

\describe{
\item{\verb{new}}{a setting was added.}
\item{\verb{changed}}{a setting was changed.}
\item{\verb{deleted}}{a setting was deleted.}
}

}
\item{\verb{GdkOwnerChange}}{
Specifies why a selection ownership was changed.

\describe{
\item{\verb{new-owner}}{some other app claimed the ownership}
\item{\verb{destroy}}{the window was destroyed}
\item{\verb{close}}{the client was closed}
}

}
}}
\references{\url{https://developer-old.gnome.org/gdk2/stable/gdk2-Event-Structures.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
