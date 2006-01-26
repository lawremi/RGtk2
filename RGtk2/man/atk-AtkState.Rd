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
\section{Enums and Flags}{\describe{\item{\code{AtkStateType}}{
The possible types of states of an object  

\describe{
\item{\code{ATK_STATE_INVALID (invalid)}}{ Indicates an invalid state}
\item{\code{ATK_STATE_ACTIVE (active)}}{ Indicates a window is currently the active window}
\item{\code{ATK_STATE_ARMED (armed)}}{ Indicates that the object is armed}
\item{\code{ATK_STATE_BUSY (busy)}}{ Indicates the current object is busy}
\item{\code{ATK_STATE_CHECKED (checked)}}{ Indicates this object is currently checked}
\item{\code{ATK_STATE_DEFUNCT (defunct)}}{ Indicates the user interface object corresponding to this object no longer exists}
\item{\code{ATK_STATE_EDITABLE (editable)}}{ Indicates the user can change the contents of this object}
\item{\code{ATK_STATE_ENABLED (enabled)}}{ Indicates that this object is enabled. An inconsistent GtkToggleButton is an example of an object which is sensitive but not enabled.}
\item{\code{ATK_STATE_EXPANDABLE (expandable)}}{ Indicates this object allows progressive disclosure of its children}
\item{\code{ATK_STATE_EXPANDED (expanded)}}{ Indicates this object its expanded}
\item{\code{ATK_STATE_FOCUSABLE (focusable)}}{ Indicates this object can accept keyboard focus, which means all events resulting from typing on the keyboard will normally be passed to it when it has focus}
\item{\code{ATK_STATE_FOCUSED (focused)}}{ Indicates this object currently has the keyboard focus}
\item{\code{ATK_STATE_HORIZONTAL (horizontal)}}{ Indicates the orientation of this object is horizontal}
\item{\code{ATK_STATE_ICONIFIED (iconified)}}{ Indicates this object is minimized and is represented only by an icon}
\item{\code{ATK_STATE_MODAL (modal)}}{ Indicates something must be done with this object before the user can interact with an object in a different window}
\item{\code{ATK_STATE_MULTI_LINE (multi-line)}}{ Indicates this (text) object can contain multiple lines of text}
\item{\code{ATK_STATE_MULTISELECTABLE (multiselectable)}}{ Indicates this object allows more than one of its children to be selected at the same time}
\item{\code{ATK_STATE_OPAQUE (opaque)}}{ Indicates this object paints every pixel within its rectangular region}
\item{\code{ATK_STATE_PRESSED (pressed)}}{ Indicates this object is currently pressed}
\item{\code{ATK_STATE_RESIZABLE (resizable)}}{ Indicates the size of this object is not fixed}
\item{\code{ATK_STATE_SELECTABLE (selectable)}}{ Indicates this object is the child of an object that allows its children to be selected and that this child is one of those children that can be selected}
\item{\code{ATK_STATE_SELECTED (selected)}}{ Indicates this object is the child of an object that allows its children to be selected and that this child is one of those children that has been selected}
\item{\code{ATK_STATE_SENSITIVE (sensitive)}}{ Indicates this object is sensitive}
\item{\code{ATK_STATE_SHOWING (showing)}}{ Indicates this object, the object's parent, the object's parent's parent, and so on, are all visible}
\item{\code{ATK_STATE_SINGLE_LINE (single-line)}}{ Indicates this (text) object can contain only a single line of text}
\item{\code{ATK_STATE_STALE (stale)}}{ Indicates that the index associated with this object has changed since the user accessed the object.}
\item{\code{ATK_STATE_TRANSIENT (transient)}}{ Indicates this object is transient}
\item{\code{ATK_STATE_VERTICAL (vertical)}}{ Indicates the orientation of this object is vertical}
\item{\code{ATK_STATE_VISIBLE (visible)}}{ Indicates this object is visible}
\item{\code{ATK_STATE_MANAGES_DESCENDANTS (manages-descendants)}}{ Indicates that "active-descendant-changed" event
is sent when children become 'active' (i.e. are selected or navigated to onscreen).
Used to prevent need to enumerate all children in very large containers, like tables.}
\item{\code{ATK_STATE_INDETERMINATE (indeterminate)}}{ Indicates that a check box is in a state other than checked or not checked.}
\item{\code{ATK_STATE_TRUNCATED (truncated)}}{ Indicates that an object is truncated, e.g. a text value in a speradsheet cell.}
\item{\code{ATK_STATE_REQUIRED (required)}}{ Indicates that explicit user interaction with an object is required by the user interface, e.g. a required field in a "web-form" interface.}
\item{\code{ATK_STATE_LAST_DEFINED (last-defined)}}{ Not a valid state, used for finding end of enumeration}
}

}}}
\references{\url{http://developer.gnome.org/doc/API/2.0/atk/atk-AtkState.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
