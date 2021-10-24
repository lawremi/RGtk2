\alias{AtkObject}
\alias{AtkImplementor}
\alias{AtkFunction}
\alias{AtkPropertyChangeHandler}
\alias{AtkRole}
\alias{AtkLayer}
\name{AtkObject}
\title{AtkObject}
\description{The base object class for the Accessibility Toolkit API.}
\section{Methods and Functions}{
\code{\link{atkRoleRegister}(name)}\cr
\code{\link{atkImplementorRefAccessible}(object)}\cr
\code{\link{atkObjectGetName}(object)}\cr
\code{\link{atkObjectGetDescription}(object)}\cr
\code{\link{atkObjectGetParent}(object)}\cr
\code{\link{atkObjectGetNAccessibleChildren}(object)}\cr
\code{\link{atkObjectRefAccessibleChild}(object, i)}\cr
\code{\link{atkObjectRefRelationSet}(object)}\cr
\code{\link{atkObjectGetLayer}(object)}\cr
\code{\link{atkObjectGetMdiZorder}(object)}\cr
\code{\link{atkObjectGetRole}(object)}\cr
\code{\link{atkObjectRefStateSet}(object)}\cr
\code{\link{atkObjectGetIndexInParent}(object)}\cr
\code{\link{atkObjectSetName}(object, name)}\cr
\code{\link{atkObjectSetDescription}(object, description)}\cr
\code{\link{atkObjectSetParent}(object, parent)}\cr
\code{\link{atkObjectSetRole}(object, role)}\cr
\code{\link{atkObjectConnectPropertyChangeHandler}(object, handler)}\cr
\code{\link{atkObjectRemovePropertyChangeHandler}(object, handler.id)}\cr
\code{\link{atkObjectNotifyStateChange}(object, state, value)}\cr
\code{\link{atkObjectInitialize}(object, data)}\cr
\code{\link{atkObjectAddRelationship}(object, relationship, target)}\cr
\code{\link{atkObjectRemoveRelationship}(object, relationship, target)}\cr
\code{\link{atkObjectGetAttributes}(object)}\cr
\code{\link{atkRoleGetName}(role)}\cr
\code{\link{atkRoleGetLocalizedName}(role)}\cr
\code{\link{atkRoleForName}(name)}\cr

}
\section{Hierarchy}{\preformatted{GObject
   +----AtkObject
         +----AtkGObjectAccessible
         +----AtkNoOpObject}}
\section{Detailed Description}{This class is the primary class for accessibility support via
the Accessibility ToolKit (ATK).  Objects which are instances
of \code{\link{AtkObject}} (or instances of AtkObject-derived types) are
queried for properties which relate basic (and generic) properties of a
UI component such as name and description.  Instances of \code{\link{AtkObject}}
may also be queried as to whether they implement other ATK interfaces
(e.g. \code{\link{AtkAction}}, \code{\link{AtkComponent}}, etc.), as appropriate to the role
which a given UI component plays in a user interface.
  All UI components in an application which provide useful
information or services to the user must provide corresponding
\code{\link{AtkObject}} instances on request (in GTK+, for instance, usually
on a call to #\code{\link{gtkWidgetGetAccessible}}), either via ATK support
built into the toolkit for the widget class or ancestor class, or in
the case of custom widgets, if the inherited \code{\link{AtkObject}} implementation
is insufficient, via instances of a new \code{\link{AtkObject}} subclass.}
\section{Structures}{\describe{
\item{\verb{AtkObject}}{
The AtkObject structure should not be accessed directly.

}
\item{\verb{AtkImplementor}}{
The AtkImplementor interface is implemented by objects for which AtkObject peers may be obtained via calls to iface->(ref_accessible)(implementor);

}
}}
\section{Enums and Flags}{\describe{
\item{\verb{AtkRole}}{
Describes the role of an object
  
These are the built-in enumerated roles that UI components can have in
ATK.  Other roles may be added at runtime, so an AtkRole >=
ATK_ROLE_LAST_DEFINED is not necessarily an error.  

\describe{
\item{\verb{invalid}}{ Invalid role}
\item{\verb{accel-label}}{ A label which represents an accelerator}
\item{\verb{alert}}{ An object which is an alert to the user. Assistive Technologies typically respond to ATK_ROLE_ALERT by reading the entire onscreen contents of containers advertising this role.  Should be used for warning dialogs, etc.}
\item{\verb{animation}}{ An object which is an animated image}
\item{\verb{arrow}}{ An arrow in one of the four cardinal directions}
\item{\verb{calendar}}{  An object that displays a calendar and allows the user to select a date}
\item{\verb{canvas}}{ An object that can be drawn into and is used to trap events}
\item{\verb{check-box}}{ A choice that can be checked or unchecked and provides a separate indicator for the current state}
\item{\verb{check-menu-item}}{ A menu item with a check box}
\item{\verb{color-chooser}}{ A specialized dialog that lets the user choose a color}
\item{\verb{column-header}}{ The header for a column of data}
\item{\verb{combo-box}}{ A list of choices the user can select from}
\item{\verb{date-editor}}{ An object whose purpose is to allow a user to edit a date}
\item{\verb{desktop-icon}}{ An inconifed internal frame within a DESKTOP_PANE}
\item{\verb{desktop-frame}}{ A pane that supports internal frames and iconified versions of those internal frames}
\item{\verb{dial}}{ An object whose purpose is to allow a user to set a value}
\item{\verb{dialog}}{ A top level window with title bar and a border}
\item{\verb{directory-pane}}{ A pane that allows the user to navigate through and select the contents of a directory}
\item{\verb{drawing-area}}{ An object used for drawing custom user interface elements}
\item{\verb{file-chooser}}{ A specialized dialog that lets the user choose a file}
\item{\verb{filler}}{ A object that fills up space in a user interface}
\item{\verb{font-chooser}}{ A specialized dialog that lets the user choose a font}
\item{\verb{frame}}{ A top level window with a title bar, border, menubar, etc.}
\item{\verb{glass-pane}}{ A pane that is guaranteed to be painted on top of all panes beneath it}
\item{\verb{html-container}}{ A document container for HTML, whose children represent the document content}
\item{\verb{icon}}{ A small fixed size picture, typically used to decorate components}
\item{\verb{image}}{ An object whose primary purpose is to display an image}
\item{\verb{internal-frame}}{ A frame-like object that is clipped by a desktop pane}
\item{\verb{label}}{ An object used to present an icon or short string in an interface}
\item{\verb{layered-pane}}{ A specialized pane that allows its children to be drawn in layers, providing a form of stacking order}
\item{\verb{list}}{ An object that presents a list of objects to the user and allows the user to select one or more of them }
\item{\verb{list-item}}{ An object that represents an element of a list }
\item{\verb{menu}}{ An object usually found inside a menu bar that contains a list of actions the user can choose from}
\item{\verb{menu-bar}}{ An object usually drawn at the top of the primary dialog box of an application that contains a list of menus the user can choose from }
\item{\verb{menu-item}}{ An object usually contained in a menu that presents an action the user can choose}
\item{\verb{option-pane}}{ A specialized pane whose primary use is inside a DIALOG}
\item{\verb{page-tab}}{ An object that is a child of a page tab list}
\item{\verb{page-tab-list}}{ An object that presents a series of panels (or page tabs), one at a time, through some mechanism provided by the object }
\item{\verb{panel}}{ A generic container that is often used to group objects}
\item{\verb{password-text}}{ A text object uses for passwords, or other places where the text content is not shown visibly to the user}
\item{\verb{popup-menu}}{ A temporary window that is usually used to offer the user a list of choices, and then hides when the user selects one of those choices}
\item{\verb{progress-bar}}{ An object used to indicate how much of a task has been completed}
\item{\verb{push-button}}{ An object the user can manipulate to tell the application to do something}
\item{\verb{radio-button}}{ A specialized check box that will cause other radio buttons in the same group to become unchecked when this one is checked}
\item{\verb{radio-menu-item}}{ A check menu item which belongs to a group. At each instant exactly one of the radio menu items from a group is selected}
\item{\verb{root-pane}}{ A specialized pane that has a glass pane and a layered pane as its children}
\item{\verb{row-header}}{ The header for a row of data}
\item{\verb{scroll-bar}}{ An object usually used to allow a user to incrementally view a large amount of data.}
\item{\verb{scroll-pane}}{ An object that allows a user to incrementally view a large amount of information}
\item{\verb{separator}}{ An object usually contained in a menu to provide a visible and logical separation of the contents in a menu}
\item{\verb{slider}}{ An object that allows the user to select from a bounded range}
\item{\verb{split-pane}}{ A specialized panel that presents two other panels at the same time}
\item{\verb{spin-button}}{ An object used to get an integer or floating point number from the user}
\item{\verb{statusbar}}{ An object which reports messages of minor importance to the user}
\item{\verb{table}}{ An object used to represent information in terms of rows and columns}
\item{\verb{table-cell}}{ A cell in a table}
\item{\verb{table-column-header}}{ The header for a column of a table}
\item{\verb{table-row-header}}{ The header for a row of a table}
\item{\verb{tear-off-menu-item}}{ A menu item used to tear off and reattach its menu}
\item{\verb{terminal}}{ An object that represents an accessible terminal.  \code{Since}: ATK-0.6}
\item{\verb{text}}{ An object that presents text to the user}
\item{\verb{toggle-button}}{ A specialized push button that can be checked or unchecked, but does not provide a separate indicator for the current state}
\item{\verb{tool-bar}}{ A bar or palette usually composed of push buttons or toggle buttons}
\item{\verb{tool-tip}}{ An object that provides information about another object}
\item{\verb{tree}}{ An object used to represent hierarchical information to the user}
\item{\verb{tree-table}}{ An object capable of expanding and collapsing rows as well as showing multiple columns of data.   \code{Since}: ATK-0.7}
\item{\verb{unknown}}{ The object contains some Accessible information, but its role is not known}
\item{\verb{viewport}}{ An object usually used in a scroll pane}
\item{\verb{window}}{ A top level window with no title or border.}
\item{\verb{header}}{ An object that serves as a document header. \code{Since}: ATK-1.1.1}
\item{\verb{footer}}{ An object that serves as a document footer.  \code{Since}: ATK-1.1.1}
\item{\verb{paragraph}}{ An object which is contains a paragraph of text content.   \code{Since}: ATK-1.1.1}
\item{\verb{ruler}}{ An object which describes margins and tab stops, etc. for text objects which it controls (should have CONTROLLER_FOR relation to such).   \code{Since}: ATK-1.1.1}
\item{\verb{application}}{ The object is an application object, which may contain \code{ATK.ROLE.FRAME} objects or other types of accessibles.  The root accessible of any application's ATK hierarchy should have ATK_ROLE_APPLICATION.   \code{Since}: ATK-1.1.4}
\item{\verb{autocomplete}}{ The object is a dialog or list containing items for insertion into an entry widget, for instance a list of words for completion of a text entry.   \code{Since}: ATK-1.3}
\item{\verb{editbar}}{ The object is an editable text object in a toolbar.  \code{Since}: ATK-1.5}
\item{\verb{embedded}}{ The object is an embedded container within a document or panel.  This role is a grouping "hint" indicating that the contained objects share a context.  \code{Since}: ATK-1.7.2}
\item{\verb{form}}{ The object is a component whose textual content may be entered or modified by the user, provided \code{ATK.STATE.EDITABLE} is present.   \code{Since}: ATK-1.11}
\item{\verb{last-defined}}{ The object is a graphical depiction of quantitative data. It may contain multiple subelements whose attributes and/or description may be queried to obtain both the quantitative data and information about how the data is being presented. The LABELLED_BY relation is particularly important in interpreting objects of this type, as is the accessible-description property.  \code{Since}: ATK-1.11}
}

}
\item{\verb{AtkLayer}}{
Describes the layer of a component
  
These enumerated "layer values" are used when determining which UI
rendering layer a component is drawn into, which can help in making
determinations of when components occlude one another.  

\describe{
\item{\verb{invalid}}{ The object does not have a layer}
\item{\verb{background}}{ This layer is reserved for the desktop background}
\item{\verb{canvas}}{ This layer is used for Canvas components}
\item{\verb{widget}}{ This layer is normally used for components}
\item{\verb{mdi}}{ This layer is used for layered components}
\item{\verb{popup}}{ This layer is used for popup components, such as menus}
\item{\verb{overlay}}{ This layer is reserved for future use.}
\item{\verb{window}}{ This layer is used for toplevel windows.}
}

}
}}
\section{User Functions}{\describe{
\item{\code{AtkFunction(data)}}{
An AtkFunction is a function definition used for padding which has been added
to class and interface structures to allow for expansion in the future.

\describe{\item{\code{data}}{[R object] a gpointer to parameter data.}}

\emph{Returns:} [logical] Nothing useful, this is only a dummy prototype.

}
\item{\code{AtkPropertyChangeHandler(Param1, Param2)}}{
An AtkPropertyChangeHandler is a function which is executed when an AtkObject's property changes value. It is specified in a call to
\code{\link{atkObjectConnectPropertyChangeHandler}}.

\describe{
\item{\code{Param1}}{[\code{\link{AtkObject}}]  an \code{\link{AtkObject}}}
\item{\code{Param2}}{[AtkPropertyValues]  an \verb{AtkPropertyValues}}
}


}
}}
\section{Signals}{\describe{
\item{\code{active-descendant-changed(atkobject, arg1, user.data)}}{
The "active-descendant-changed" signal is emitted by an object which has
the state ATK_STATE_MANAGES_DESCENDANTS when the focus object in the
object changes. For instance, a table will emit the signal when the cell
in the table which has focus changes.

\describe{
\item{\code{atkobject}}{[\code{\link{AtkObject}}] the object which received the signal.}
\item{\code{arg1}}{[R object] the newly focused object.}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}


}
\item{\code{children-changed(atkobject, arg1, arg2, user.data)}}{
The signal "children-changed" is emitted when a child is added or
removed form an object. It supports two details: "add" and "remove"

\describe{
\item{\code{atkobject}}{[\code{\link{AtkObject}}] the object which received the signal.}
\item{\code{arg1}}{[numeric] The index of the added or removed child}
\item{\code{arg2}}{[R object] A gpointer to the child AtkObject which was added or removed}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}


}
\item{\code{focus-event(atkobject, arg1, user.data)}}{
The signal "focus-event" is emitted when an object gains or loses focus.

\describe{
\item{\code{atkobject}}{[\code{\link{AtkObject}}] the object which received the signal.}
\item{\code{arg1}}{[logical] A boolean value which indicates whether the object gained or lost focus.}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}


}
\item{\code{property-change(atkobject, arg1, user.data)}}{
The signal "property-change" is emitted when an object's property
value changes. The detail identifies the name of the property whose
value has changed.

\describe{
\item{\code{atkobject}}{[\code{\link{AtkObject}}] the object which received the signal.}
\item{\code{arg1}}{[R object] The new value of the property which changed.}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}


}
\item{\code{state-change(atkobject, arg1, arg2, user.data)}}{
The "state-change" signal is emitted  when an object's state changes.
The detail value identifies the state type which has changed.

\describe{
\item{\code{atkobject}}{[\code{\link{AtkObject}}] the object which received the signal.}
\item{\code{arg1}}{[character] The name of the state which has changed}
\item{\code{arg2}}{[logical] A boolean which indicates whether the state has been set or unset.}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}


}
\item{\code{visible-data-changed(atkobject, user.data)}}{
The "visible-data-changed" signal is emitted when the visual appearance of
the object changed.

\describe{
\item{\code{atkobject}}{[\code{\link{AtkObject}}] the object which received the signal.}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}


}
}}
\section{Properties}{\describe{
\item{\verb{accessible-component-layer} [integer : Read]}{

The accessible layer of this object.  Allowed values: >= 0  Default value: 0

}
\item{\verb{accessible-component-mdi-zorder} [integer : Read]}{

The accessible MDI value of this object.  Default value: -2147483648

}
\item{\verb{accessible-description} [character : *                : Read / Write]}{

Description of an object, formatted for assistive technology access.  Default value: NULL

}
\item{\verb{accessible-hypertext-nlinks} [integer : Read]}{

The number of links which the current AtkHypertext has.  Allowed values: >= 0  Default value: 0

}
\item{\verb{accessible-name} [character : *                : Read / Write]}{

Object instance's name formatted for assistive technology access.  Default value: NULL

}
\item{\verb{accessible-parent} [\code{\link{AtkObject}} : *            : Read / Write]}{

Is used to notify that the parent has changed.

}
\item{\verb{accessible-role} [integer : Read / Write]}{

The accessible role of this object.  Allowed values: >= 0  Default value: 0

}
\item{\verb{accessible-table-caption} [character : *                : Read / Write]}{

Is used to notify that the table caption has changed; this property should not be used. accessible-table-caption-object should be used instead.  Default value: NULL

}
\item{\verb{accessible-table-caption-object} [\code{\link{AtkObject}} : *            : Read / Write]}{

Is used to notify that the table caption has changed.

}
\item{\verb{accessible-table-column-description} [character : *                : Read / Write]}{

Is used to notify that the table column description has changed.  Default value: NULL

}
\item{\verb{accessible-table-column-header} [\code{\link{AtkObject}} : *            : Read / Write]}{

Is used to notify that the table column header has changed.

}
\item{\verb{accessible-table-row-description} [character : *                : Read / Write]}{

Is used to notify that the table row description has changed.  Default value: NULL

}
\item{\verb{accessible-table-row-header} [\code{\link{AtkObject}} : *            : Read / Write]}{

Is used to notify that the table row header has changed.

}
\item{\verb{accessible-table-summary} [\code{\link{AtkObject}} : *            : Read / Write]}{

Is used to notify that the table summary has changed.

}
\item{\verb{accessible-value} [numeric : Read / Write]}{

Is used to notify that the value has changed.  Allowed values: >= 0  Default value: 0

}
}}
\references{\url{https://developer-old.gnome.org/atk/1.32/AtkObject.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\seealso{
\code{\link{AtkObjectFactory}}
\code{\link{AtkRegistry}}
\code{\link{GtkAccessible}}
}
\keyword{internal}
