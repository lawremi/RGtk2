\alias{gtk-Standard-Enumerations}
\alias{GtkAccelFlags}
\alias{GtkAnchorType}
\alias{GtkArrowType}
\alias{GtkAttachOptions}
\alias{GtkButtonBoxStyle}
\alias{GtkCornerType}
\alias{GtkCurveType}
\alias{GtkDeleteType}
\alias{GtkDirectionType}
\alias{GtkExpanderStyle}
\alias{GtkIMPreeditStyle}
\alias{GtkIMStatusStyle}
\alias{GtkJustification}
\alias{GtkMatchType}
\alias{GtkMetricType}
\alias{GtkMovementStep}
\alias{GtkOrientation}
\alias{GtkPackType}
\alias{GtkPathPriorityType}
\alias{GtkPathType}
\alias{GtkPolicyType}
\alias{GtkPositionType}
\alias{GtkPreviewType}
\alias{GtkReliefStyle}
\alias{GtkResizeMode}
\alias{GtkScrollStep}
\alias{GtkScrollType}
\alias{GtkSelectionMode}
\alias{GtkShadowType}
\alias{GtkSideType}
\alias{GtkStateType}
\alias{GtkSubmenuDirection}
\alias{GtkSubmenuPlacement}
\alias{GtkToolbarStyle}
\alias{GtkUpdateType}
\alias{GtkVisibility}
\alias{GtkWindowPosition}
\alias{GtkWindowType}
\alias{GtkSortType}
\name{gtk-Standard-Enumerations}
\title{Standard Enumerations}
\description{Public enumerated types used throughout GTK+}
\section{Enums and Flags}{\describe{
\item{\verb{GtkAccelFlags}}{
\emph{undocumented
}

\describe{
\item{\verb{visible}}{\emph{undocumented
}}
\item{\verb{locked}}{\emph{undocumented
}}
\item{\verb{mask}}{\emph{undocumented
}}
}

}
\item{\verb{GtkAnchorType}}{
\emph{undocumented
}

\describe{
\item{\verb{center}}{\emph{undocumented
}}
\item{\verb{north}}{\emph{undocumented
}}
\item{\verb{north-west}}{\emph{undocumented
}}
\item{\verb{north-east}}{\emph{undocumented
}}
\item{\verb{south}}{\emph{undocumented
}}
\item{\verb{south-west}}{\emph{undocumented
}}
\item{\verb{south-east}}{\emph{undocumented
}}
\item{\verb{west}}{\emph{undocumented
}}
\item{\verb{east}}{\emph{undocumented
}}
\item{\verb{n}}{\emph{undocumented
}}
\item{\verb{nw}}{\emph{undocumented
}}
\item{\verb{ne}}{\emph{undocumented
}}
\item{\verb{s}}{\emph{undocumented
}}
\item{\verb{sw}}{\emph{undocumented
}}
\item{\verb{se}}{\emph{undocumented
}}
\item{\verb{w}}{\emph{undocumented
}}
\item{\verb{e}}{\emph{undocumented
}}
}

}
\item{\verb{GtkArrowType}}{
Used to indicate the direction in which a \code{\link{GtkArrow}} should point.

\describe{
\item{\verb{up}}{Represents an upward pointing arrow.}
\item{\verb{down}}{Represents a downward pointing arrow.}
\item{\verb{left}}{Represents a left pointing arrow.}
\item{\verb{right}}{Represents a right pointing arrow.}
}

}
\item{\verb{GtkAttachOptions}}{
Denotes the expansion properties that a widget will have when it (or its
parent) is resized.

\describe{
\item{\verb{expand}}{the widget should expand to take up any extra space in its
container that has been allocated.}
\item{\verb{shrink}}{the widget should shrink as and when possible.}
\item{\verb{fill}}{the widget should fill the space allocated to it.}
}

}
\item{\verb{GtkButtonBoxStyle}}{
Used to dictate the style that a \code{\link{GtkButtonBox}} uses to layout the buttons it
contains. (See also: \code{\link{GtkVButtonBox}} and \code{\link{GtkHButtonBox}}).

\describe{
\item{\verb{default-style}}{Default packing.}
\item{\verb{spread}}{Buttons are evenly spread across the box.}
\item{\verb{edge}}{Buttons are placed at the edges of the box.}
\item{\verb{start}}{Buttons are grouped towards the start of the box, 
  (on the left for a HBox, or the top for a VBox).}
\item{\verb{end}}{Buttons are grouped towards the end of the box, 
  (on the right for a HBox, or the bottom for a VBox).}
}

}
\item{\verb{GtkCornerType}}{
Specifies which corner a child widget should be placed in when packed into
a \code{\link{GtkScrolledWindow}}. This is effectively the opposite of where the scroll
bars are placed.

\describe{
\item{\verb{top-left}}{Place the scrollbars on the right and bottom of the
widget (default behaviour).}
\item{\verb{bottom-left}}{Place the scrollbars on the top and right of the
widget.}
\item{\verb{top-right}}{Place the scrollbars on the left and bottom of the
widget.}
\item{\verb{bottom-right}}{Place the scrollbars on the top and left of the
widget.}
}

}
\item{\verb{GtkCurveType}}{
\strong{WARNING: \code{GtkCurveType} is deprecated and should not be used in newly-written code.}
\emph{undocumented
}

\describe{
\item{\verb{linear}}{\emph{undocumented
}}
\item{\verb{spline}}{\emph{undocumented
}}
\item{\verb{free}}{\emph{undocumented
}}
}

}
\item{\verb{GtkDeleteType}}{
\emph{undocumented
}

\describe{
\item{\verb{chars}}{\emph{undocumented
}}
\item{\verb{word-ends}}{\emph{undocumented
}}
\item{\verb{words}}{\emph{undocumented
}}
\item{\verb{display-lines}}{\emph{undocumented
}}
\item{\verb{display-line-ends}}{\emph{undocumented
}}
\item{\verb{paragraph-ends}}{\emph{undocumented
}}
\item{\verb{paragraphs}}{\emph{undocumented
}}
\item{\verb{whitespace}}{\emph{undocumented
}}
}

}
\item{\verb{GtkDirectionType}}{
\emph{undocumented
}

\describe{
\item{\verb{tab-forward}}{\emph{undocumented
}}
\item{\verb{tab-backward}}{\emph{undocumented
}}
\item{\verb{up}}{\emph{undocumented
}}
\item{\verb{down}}{\emph{undocumented
}}
\item{\verb{left}}{\emph{undocumented
}}
\item{\verb{right}}{\emph{undocumented
}}
}

}
\item{\verb{GtkExpanderStyle}}{
Used to specify the style of the expanders drawn by a \code{\link{GtkTreeView}}.

\describe{
\item{\verb{collapsed}}{The style used for a collapsed subtree.}
\item{\verb{semi-collapsed}}{Intermediate style used during animation.}
\item{\verb{semi-expanded}}{Intermediate style used during animation.}
\item{\verb{expanded}}{The style used for an expanded subtree.}
}

}
\item{\verb{GtkIMPreeditStyle}}{
\emph{undocumented
}

\describe{
\item{\verb{nothing}}{\emph{undocumented
}}
\item{\verb{callback}}{\emph{undocumented
}}
\item{\verb{none}}{\emph{undocumented
}}
}

}
\item{\verb{GtkIMStatusStyle}}{
\emph{undocumented
}

\describe{
\item{\verb{nothing}}{\emph{undocumented
}}
\item{\verb{callback}}{\emph{undocumented
}}
}

}
\item{\verb{GtkJustification}}{
Used for justifying the text inside a \code{\link{GtkLabel}} widget. (See also
\code{\link{GtkAlignment}}).

\describe{
\item{\verb{left}}{The text is placed at the left edge of the label.}
\item{\verb{right}}{The text is placed at the right edge of the label.}
\item{\verb{center}}{The text is placed in the center of the label.}
\item{\verb{fill}}{The text is placed is distributed across the label.}
}

}
\item{\verb{GtkMatchType}}{
\strong{WARNING: \code{GtkMatchType} is deprecated and should not be used in newly-written code.}
\emph{undocumented
}

\describe{
\item{\verb{all}}{\emph{undocumented
}}
\item{\verb{all-tail}}{\emph{undocumented
}}
\item{\verb{head}}{\emph{undocumented
}}
\item{\verb{tail}}{\emph{undocumented
}}
\item{\verb{exact}}{\emph{undocumented
}}
\item{\verb{last}}{\emph{undocumented
}}
}

}
\item{\verb{GtkMetricType}}{
Used to indicate which metric is used by a \code{\link{GtkRuler}}.

\describe{
\item{\verb{pixels}}{Pixels.}
\item{\verb{inches}}{Inches.}
\item{\verb{centimeters}}{Centimeters.}
}

}
\item{\verb{GtkMovementStep}}{
\emph{undocumented
}

\describe{
\item{\verb{logical-positions}}{\emph{undocumented
}}
\item{\verb{visual-positions}}{\emph{undocumented
}}
\item{\verb{words}}{\emph{undocumented
}}
\item{\verb{display-lines}}{\emph{undocumented
}}
\item{\verb{display-line-ends}}{\emph{undocumented
}}
\item{\verb{paragraphs}}{\emph{undocumented
}}
\item{\verb{paragraph-ends}}{\emph{undocumented
}}
\item{\verb{pages}}{\emph{undocumented
}}
\item{\verb{buffer-ends}}{\emph{undocumented
}}
\item{\verb{horizontal-pages}}{\emph{undocumented
}}
}

}
\item{\verb{GtkOrientation}}{
Represents the orientation of widgets which can be switched between horizontal
and vertical orientation on the fly, like \code{\link{GtkToolbar}}.

\describe{
\item{\verb{horizontal}}{The widget is in horizontal orientation.}
\item{\verb{vertical}}{The widget is in vertical orientation.}
}

}
\item{\verb{GtkPackType}}{
Represents the packing location \code{\link{GtkBox}} children. (See: \code{\link{GtkVBox}},
\code{\link{GtkHBox}}, and \code{\link{GtkButtonBox}}).

\describe{
\item{\verb{start}}{The child is packed into the start of the box}
\item{\verb{end}}{The child is packed into the end of the box}
}

}
\item{\verb{GtkPathPriorityType}}{
\emph{undocumented
}

\describe{
\item{\verb{lowest}}{\emph{undocumented
}}
\item{\verb{gtk}}{\emph{undocumented
}}
\item{\verb{application}}{\emph{undocumented
}}
\item{\verb{theme}}{\emph{undocumented
}}
\item{\verb{rc}}{\emph{undocumented
}}
\item{\verb{highest}}{\emph{undocumented
}}
}

}
\item{\verb{GtkPathType}}{
\emph{undocumented
}

\describe{
\item{\verb{widget}}{\emph{undocumented
}}
\item{\verb{widget-class}}{\emph{undocumented
}}
\item{\verb{class}}{\emph{undocumented
}}
}

}
\item{\verb{GtkPolicyType}}{
Determines when a scroll bar will be visible.

\describe{
\item{\verb{always}}{The scrollbar is always visible.}
\item{\verb{automatic}}{The scrollbar will appear and disappear as necessary. For example,
when all of a \code{\link{GtkCList}} can not be seen.}
\item{\verb{never}}{The scrollbar will never appear.}
}

}
\item{\verb{GtkPositionType}}{
Describes which edge of a widget a certain feature is positioned at, e.g. the
tabs of a \code{\link{GtkNotebook}}, the handle of a \code{\link{GtkHandleBox}} or the label of a
\code{\link{GtkScale}}.

\describe{
\item{\verb{left}}{The feature is at the left edge.}
\item{\verb{right}}{The feature is at the right edge.}
\item{\verb{top}}{The feature is at the top edge.}
\item{\verb{bottom}}{The feature is at the bottom edge.}
}

}
\item{\verb{GtkPreviewType}}{
\strong{WARNING: \code{GtkPreviewType} is deprecated and should not be used in newly-written code.}
An enumeration which describes whether a preview
contains grayscale or red-green-blue data.

\describe{
\item{\verb{color}}{the preview contains red-green-blue data.}
\item{\verb{grayscale}}{The preview contains grayscale data.}
}

}
\item{\verb{GtkReliefStyle}}{
Indicated the relief to be drawn around a \code{\link{GtkButton}}.

\describe{
\item{\verb{normal}}{Draw a normal relief.}
\item{\verb{half}}{A half relief.}
\item{\verb{none}}{No relief.}
}

}
\item{\verb{GtkResizeMode}}{
\emph{undocumented
}

\describe{
\item{\verb{parent}}{\emph{undocumented
}}
\item{\verb{queue}}{\emph{undocumented
}}
\item{\verb{immediate}}{Deprecated.}
}

}
\item{\verb{GtkScrollStep}}{
\emph{undocumented
}

\describe{
\item{\verb{steps}}{\emph{undocumented
}}
\item{\verb{pages}}{\emph{undocumented
}}
\item{\verb{ends}}{\emph{undocumented
}}
\item{\verb{horizontal-steps}}{\emph{undocumented
}}
\item{\verb{horizontal-pages}}{\emph{undocumented
}}
\item{\verb{horizontal-ends}}{\emph{undocumented
}}
}

}
\item{\verb{GtkScrollType}}{
\emph{undocumented
}

\describe{
\item{\verb{none}}{\emph{undocumented
}}
\item{\verb{jump}}{\emph{undocumented
}}
\item{\verb{step-backward}}{\emph{undocumented
}}
\item{\verb{step-forward}}{\emph{undocumented
}}
\item{\verb{page-backward}}{\emph{undocumented
}}
\item{\verb{page-forward}}{\emph{undocumented
}}
\item{\verb{step-up}}{\emph{undocumented
}}
\item{\verb{step-down}}{\emph{undocumented
}}
\item{\verb{page-up}}{\emph{undocumented
}}
\item{\verb{page-down}}{\emph{undocumented
}}
\item{\verb{step-left}}{\emph{undocumented
}}
\item{\verb{step-right}}{\emph{undocumented
}}
\item{\verb{page-left}}{\emph{undocumented
}}
\item{\verb{page-right}}{\emph{undocumented
}}
\item{\verb{start}}{\emph{undocumented
}}
\item{\verb{end}}{\emph{undocumented
}}
}

}
\item{\verb{GtkSelectionMode}}{
Used to control what selections users are allowed to make.

\describe{
\item{\verb{none}}{No selection is possible.}
\item{\verb{single}}{Zero or one element may be selected.}
\item{\verb{browse}}{Exactly one element is selected. In some circumstances,
  such as initially or during a search operation, it's possible for no element
  to be selected with \code{GTK_SELECTION_BROWSE}. What is really enforced is that
  the user can't deselect a currently selected element except by selecting
  another element.}
\item{\verb{multiple}}{Any number of elements may be selected. 
   Clicks toggle the state of an item. Any number of elements may be selected.
   The Ctrl key may be used to enlarge the selection, and Shift key to select
   between the focus and the child pointed to. Some widgets may also allow
   Click-drag to select a range of elements.}
\item{\verb{extended}}{Deprecated, behaves identical to \code{GTK_SELECTION_MULTIPLE}.}
}

}
\item{\verb{GtkShadowType}}{
Used to change the appearance of an outline typically provided by a \code{\link{GtkFrame}}.

\describe{
\item{\verb{none}}{No outline.}
\item{\verb{in}}{The outline is bevelled inwards.}
\item{\verb{out}}{The outline is bevelled outwards like a button.}
\item{\verb{etched-in}}{The outline has a sunken 3d appearance.}
\item{\verb{etched-out}}{The outline has a raised 3d appearance}
}

}
\item{\verb{GtkSideType}}{
\strong{WARNING: \code{GtkSideType} is deprecated and should not be used in newly-written code.}
\emph{undocumented
}

\describe{
\item{\verb{top}}{\emph{undocumented
}}
\item{\verb{bottom}}{\emph{undocumented
}}
\item{\verb{left}}{\emph{undocumented
}}
\item{\verb{right}}{\emph{undocumented
}}
}

}
\item{\verb{GtkStateType}}{
This type indicates the current state of a widget; the state determines how
the widget is drawn. The \code{\link{GtkStateType}} enumeration is also used to
identify different colors in a \code{\link{GtkStyle}} for drawing, so states can be
used for subparts of a widget as well as entire widgets.

\describe{
\item{\verb{normal}}{State during normal operation.}
\item{\verb{active}}{State of a currently active widget, such as a depressed button.}
\item{\verb{prelight}}{State indicating that the mouse pointer is over
the widget and the widget will respond to mouse clicks.}
\item{\verb{selected}}{State of a selected item, such the selected row in a list.}
\item{\verb{insensitive}}{State indicating that the widget is
unresponsive to user actions.}
}

}
\item{\verb{GtkSubmenuDirection}}{
\strong{WARNING: \code{GtkSubmenuDirection} is deprecated and should not be used in newly-written code.}
Indicates the direction a sub-menu will appear.

\describe{
\item{\verb{left}}{A sub-menu will appear to the left of the current menu.}
\item{\verb{right}}{A sub-menu will appear to the right of the current menu.}
}

}
\item{\verb{GtkSubmenuPlacement}}{
\strong{WARNING: \code{GtkSubmenuPlacement} is deprecated and should not be used in newly-written code.}
\emph{undocumented
}

\describe{
\item{\verb{top-bottom}}{\emph{undocumented
}}
\item{\verb{left-right}}{\emph{undocumented
}}
}

}
\item{\verb{GtkToolbarStyle}}{
Used to customize the appearance of a \code{\link{GtkToolbar}}. Note that
setting the toolbar style overrides the user's preferences
for the default toolbar style.  Note that if the button has only
a label set and GTK_TOOLBAR_ICONS is used, the label will be
visible, and vice versa.

\describe{
\item{\verb{icons}}{Buttons display only icons in the toolbar.}
\item{\verb{text}}{Buttons display only text labels in the toolbar.}
\item{\verb{both}}{Buttons display text and icons in the toolbar.}
\item{\verb{both-horiz}}{Buttons display icons and text alongside each
other, rather than vertically stacked}
}

}
\item{\verb{GtkUpdateType}}{
Used by \code{\link{GtkRange}} to control the policy for notifying value changes.

\describe{
\item{\verb{continuous}}{Notify updates whenever the value changed}
\item{\verb{discontinuous}}{Notify updates when the mouse button has been released}
\item{\verb{delayed}}{Space out updates with a small timeout}
}

}
\item{\verb{GtkVisibility}}{
Used by \code{\link{GtkCList}} and \code{\link{GtkCTree}} to indicate whether a row is visible.

\describe{
\item{\verb{none}}{The row is not visible.}
\item{\verb{partial}}{The row is partially visible.}
\item{\verb{full}}{The row is fully visible.}
}

}
\item{\verb{GtkWindowPosition}}{
Window placement can be influenced using this enumeration. Note that
using \verb{GTK_WIN_POS_CENTER_ALWAYS} is almost always a bad idea.
It won't necessarily work well with all window managers or on all windowing systems.

\describe{
\item{\verb{none}}{No influence is made on placement.}
\item{\verb{center}}{Windows should be placed in the center of the screen.}
\item{\verb{mouse}}{Windows should be placed at the current mouse position.}
\item{\verb{center-always}}{Keep window centered as it changes size, etc.}
\item{\verb{center-on-parent}}{Center the window on its transient
parent (see \code{\link{gtkWindowSetTransientFor}}).}
}

}
\item{\verb{GtkWindowType}}{
A \code{\link{GtkWindow}} can be one of these types. Most things you'd consider a
"window" should have type \verb{GTK_WINDOW_TOPLEVEL}; windows with this type
are managed by the window manager and have a frame by default (call
\code{\link{gtkWindowSetDecorated}} to toggle the frame).  Windows with type
\verb{GTK_WINDOW_POPUP} are ignored by the window manager; window manager
keybindings won't work on them, the window manager won't decorate the
window with a frame, many GTK+ features that rely on the window
manager will not work (e.g. resize grips and
maximization/minimization). \verb{GTK_WINDOW_POPUP} is used to implement
widgets such as \code{\link{GtkMenu}} or tooltips that you normally don't think of
as windows per se. Nearly all windows should be \verb{GTK_WINDOW_TOPLEVEL}.
In particular, do not use \verb{GTK_WINDOW_POPUP} just to turn off
the window borders; use \code{\link{gtkWindowSetDecorated}} for that.

\describe{
\item{\verb{toplevel}}{A regular window, such as a dialog.}
\item{\verb{popup}}{A special window such as a tooltip.}
}

}
\item{\verb{GtkSortType}}{
Determines the direction of a sort.

\describe{
\item{\verb{ascending}}{Sorting is in ascending order.}
\item{\verb{descending}}{Sorting is in descending order.}
}

}
}}
\references{\url{https://developer-old.gnome.org/gtk2/stable/gtk2-Standard-Enumerations.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
