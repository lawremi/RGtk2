\alias{atk-AtkState}
\alias{AtkStateType}
\name{atk-AtkState}
\title{AtkState}
\description{An AtkState describes a component's particular state.}
\section{Methods and Functions}{
\code{\link{atkStateTypeRegister}(name)}\cr
\code{\link{atkStateTypeGetName}(type)}\cr
\code{\link{atkStateTypeForName}(name)}\cr
}
\section{Detailed Description}{An AtkState describes a component's particular state. The actual state of
an component is described by its AtkStateSet, which is a set of AtkStates.}
\section{Enums and Flags}{\describe{\item{\verb{AtkStateType}}{
The possible types of states of an object  

\describe{
\item{\verb{invalid}}{ Indicates an invalid state - probably an error condition.}
\item{\verb{active}}{ Indicates a window is currently the active window, or is an active subelement within a container or table}
\item{\verb{armed}}{ Indicates that the object is 'armed', i.e. will be activated by if a pointer button-release event occurs within its bounds.  Buttons often enter this state when a pointer click occurs within their bounds, as a precursor to activation.}
\item{\verb{busy}}{  Indicates the current object is busy, i.e. onscreen representation is in the process of changing, or the object is temporarily unavailable for interaction due to activity already in progress.  This state may be used by implementors of Document to indicate that content loading is underway.  It also may indicate other 'pending' conditions; clients may wish to interrogate this object when the ATK_STATE_BUSY flag is removed.}
\item{\verb{checked}}{ Indicates this object is currently checked, for instance a checkbox is 'non-empty'.}
\item{\verb{defunct}}{ Indicates that this object no longer has a valid backing widget (for instance, if its peer object has been destroyed)}
\item{\verb{editable}}{ Indicates the user can change the contents of this object}
\item{\verb{enabled}}{ 	Indicates that this object is enabled, i.e. that it currently reflects some application state. Objects that are "greyed out" may lack this state, and may lack the STATE_SENSITIVE if direct user interaction cannot cause them to acquire STATE_ENABLED. See also: ATK_STATE_SENSITIVE}
\item{\verb{expandable}}{ Indicates this object allows progressive disclosure of its children}
\item{\verb{expanded}}{ Indicates this object its expanded - see ATK_STATE_EXPANDABLE above}
\item{\verb{focusable}}{ Indicates this object can accept keyboard focus, which means all events resulting from typing on the keyboard will normally be passed to it when it has focus}
\item{\verb{focused}}{ Indicates this object currently has the keyboard focus}
\item{\verb{horizontal}}{ Indicates the orientation of this object is horizontal; used, for instance, by objects of ATK_ROLE_SCROLL_BAR.  For objects where vertical/horizontal orientation is especially meaningful.}
\item{\verb{iconified}}{ Indicates this object is minimized and is represented only by an icon}
\item{\verb{modal}}{ Indicates something must be done with this object before the user can interact with an object in a different window}
\item{\verb{multi-line}}{ Indicates this (text) object can contain multiple lines of text}
\item{\verb{multiselectable}}{ Indicates this object allows more than one of its children to be selected at the same time, or in the case of text objects, that the object supports non-contiguous text selections.}
\item{\verb{opaque}}{ Indicates this object paints every pixel within its rectangular region.}
\item{\verb{pressed}}{ Indicates this object is currently pressed; c.f. ATK_STATE_ARMED}
\item{\verb{resizable}}{ Indicates the size of this object is not fixed}
\item{\verb{selectable}}{ Indicates this object is the child of an object that allows its children to be selected and that this child is one of those children that can be selected}
\item{\verb{selected}}{ Indicates this object is the child of an object that allows its children to be selected and that this child is one of those children that has been selected}
\item{\verb{sensitive}}{ Indicates this object is sensitive, e.g. to user interaction. 
STATE_SENSITIVE usually accompanies STATE_ENABLED for user-actionable controls,
but may be found in the absence of STATE_ENABLED if the current visible state of the 
control is "disconnected" from the application state.  In such cases, direct user interaction
can often result in the object gaining STATE_SENSITIVE, for instance if a user makes 
an explicit selection using an object whose current state is ambiguous or undefined.
\code{see} STATE_ENABLED, STATE_INDETERMINATE.}
\item{\verb{showing}}{ Indicates this object, the object's parent, the object's parent's parent, and so on, 
are all 'shown' to the end-user, i.e. subject to "exposure" if blocking or obscuring objects do not interpose
between this object and the top of the window stack.}
\item{\verb{single-line}}{ Indicates this (text) object can contain only a single line of text}
\item{\verb{stale}}{ Indicates that the information returned for this object may no longer be
synchronized with the application state.  This is implied if the object has STATE_TRANSIENT,
and can also occur towards the end of the object peer's lifecycle. It can also be used to indicate that 
the index associated with this object has changed since the user accessed the object (in lieu of
"index-in-parent-changed" events).}
\item{\verb{transient}}{ Indicates this object is transient, i.e. a snapshot which may not emit events when its
state changes.  Data from objects with ATK_STATE_TRANSIENT should not be cached, since there may be no
notification given when the cached data becomes obsolete.}
\item{\verb{vertical}}{ Indicates the orientation of this object is vertical}
\item{\verb{visible}}{ Indicates this object is visible, e.g. has been explicitly marked for exposure to the user.}
\item{\verb{manages-descendants}}{ Indicates that "active-descendant-changed" event
is sent when children become 'active' (i.e. are selected or navigated to onscreen).
Used to prevent need to enumerate all children in very large containers, like tables.
The presence of STATE_MANAGES_DESCENDANTS is an indication to the client.
that the children should not, and need not, be enumerated by the client.
Objects implementing this state are expected to provide relevant state
notifications to listening clients, for instance notifications of visibility
changes and activation of their contained child objects, without the client 
having previously requested references to those children.}
\item{\verb{indeterminate}}{ Indicates that a check box is in a state other than checked or not checked.
This usually means that the boolean value reflected or 
controlled by the object does not apply consistently to the entire current context.
For example, a checkbox for the "Bold" attribute of text may have STATE_INDETERMINATE
if the currently selected text contains a mixture of weight attributes.  
In many cases interacting with a STATE_INDETERMINATE object will cause 
the context's corresponding boolean attribute to be homogenized, whereupon the object
will lose STATE_INDETERMINATE and a corresponding state-changed event will be fired.}
\item{\verb{truncated}}{ Indicates that an object is truncated, e.g. a text value in a speradsheet cell.}
\item{\verb{required}}{ Indicates that explicit user interaction with an object is required by the user interface, e.g. a required field in a "web-form" interface.}
\item{\verb{animated}}{ Indicates that the object has encountered an error condition due to failure of input validation. For instance, a form control may acquire this state in response to invalid or malformed user input.}
\item{\verb{visited}}{  Indicates that the object in question implements some form of ¨typeahead¨ or 
pre-selection behavior whereby entering the first character of one or more sub-elements
causes those elements to scroll into view or become selected.  Subsequent character input
may narrow the selection further as long as one or more sub-elements match the string.
This state is normally only useful and encountered on objects that implement Selection.
In some cases the typeahead behavior may result in full or partial ¨completion¨ of 
the data in the input field, in which case these input events may trigger text-changed
events from the AtkText interface.  This state supplants \code{ATK.ROLE.AUTOCOMPLETE}.}
\item{\verb{default}}{Indicates that the object in question supports text selection. It should only be exposed on objects which implement the Text interface, in order to distinguish this state from \code{ATK.STATE.SELECTABLE}, which infers that the object in question is a selectable child of an object which implements Selection. While similar, text selection and subelement selection are distinct operations.}
\item{\verb{last-defined}}{ Indicates that the object is the "default" active component, i.e. the object which is activated by an end-user press of the "Enter" or "Return" key.  Typically a "close" or "submit" button.}
}

}}}
\references{\url{https://developer-old.gnome.org/atk/1.32/atk-AtkState.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
