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
\item{\code{invalid}}{ Indicates an invalid state}
\item{\code{active}}{ Indicates a window is currently the active window}
\item{\code{armed}}{ Indicates that the object is armed.}
\item{\code{busy}}{ Indicates the current object is busy.  This state may be used by implementors of Document to indicate that content loading is in process.}
\item{\code{checked}}{ Indicates this object is currently checked}
\item{\code{defunct}}{ Indicates the user interface object corresponding to this object no longer exists}
\item{\code{editable}}{ Indicates the user can change the contents of this object}
\item{\code{enabled}}{ Indicates that this object is enabled. An inconsistent GtkToggleButton is an example of an object which is sensitive but not enabled.}
\item{\code{expandable}}{ Indicates this object allows progressive disclosure of its children}
\item{\code{expanded}}{ Indicates this object its expanded}
\item{\code{focusable}}{ Indicates this object can accept keyboard focus, which means all events resulting from typing on the keyboard will normally be passed to it when it has focus}
\item{\code{focused}}{ Indicates this object currently has the keyboard focus}
\item{\code{horizontal}}{ Indicates the orientation of this object is horizontal}
\item{\code{iconified}}{ Indicates this object is minimized and is represented only by an icon}
\item{\code{modal}}{ Indicates something must be done with this object before the user can interact with an object in a different window}
\item{\code{multi-line}}{ Indicates this (text) object can contain multiple lines of text}
\item{\code{multiselectable}}{ Indicates this object allows more than one of its children to be selected at the same time}
\item{\code{opaque}}{ Indicates this object paints every pixel within its rectangular region.}
\item{\code{pressed}}{ Indicates this object is currently pressed}
\item{\code{resizable}}{ Indicates the size of this object is not fixed}
\item{\code{selectable}}{ Indicates this object is the child of an object that allows its children to be selected and that this child is one of those children that can be selected}
\item{\code{selected}}{ Indicates this object is the child of an object that allows its children to be selected and that this child is one of those children that has been selected}
\item{\code{sensitive}}{ Indicates this object is sensitive}
\item{\code{showing}}{ Indicates this object, the object's parent, the object's parent's parent, and so on, are all visible}
\item{\code{single-line}}{ Indicates this (text) object can contain only a single line of text}
\item{\code{stale}}{ Indicates that the index associated with this object has changed since the user accessed the object.}
\item{\code{transient}}{ Indicates this object is transient}
\item{\code{vertical}}{ Indicates the orientation of this object is vertical}
\item{\code{visible}}{ Indicates this object is visible}
\item{\code{manages-descendants}}{ Indicates that "active-descendant-changed" event
is sent when children become 'active' (i.e. are selected or navigated to onscreen).
Used to prevent need to enumerate all children in very large containers, like tables.}
\item{\code{indeterminate}}{ Indicates that a check box is in a state other than checked or not checked.}
\item{\code{truncated}}{ Indicates that an object is truncated, e.g. a text value in a speradsheet cell.}
\item{\code{required}}{ Indicates that explicit user interaction with an object is required by the user interface, e.g. a required field in a "web-form" interface.}
\item{\code{animated}}{ Indicates that the object has encountered an error condition due to failure of input validation. For instance, a form control may acquire this state in response to invalid or malformed user input.}
\item{\code{visited}}{ Indicates that the object may exhibit "typeahead" behavior in response to user keystrokes, e.g. one keystroke may result in the insertion of several characters into an entry, or result in the auto-selection of an item in a list.  This state supplants \code{ATK.ROLE.AUTOCOMPLETE}.}
\item{\code{default}}{Indicates that the object in question supports text selection. It should only be exposed on objects which implement the Text interface, in order to distinguish this state from \code{ATK.STATE.SELECTABLE}, which infers that the object in question is a selectable child of an object which implements Selection. While similar, text selection and subelement selection are distinct operations.}
\item{\code{last-defined}}{ Indicates that the object is the "default" active component, i.e. the object which is activated by an end-user press of the "Enter" or "Return" key.  Typically a "close" or "submit" button.}
}

}}}
\references{\url{http://developer.gnome.org/doc/API/2.0/atk/atk-AtkState.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
