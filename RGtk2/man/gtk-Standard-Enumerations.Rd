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
\item{\code{GtkAccelFlags}}{


\describe{
\item{\code{visible}}{\emph{undocumented
}}
\item{\code{locked}}{\emph{undocumented
}}
\item{\code{mask}}{\emph{undocumented
}}
}

}
\item{\code{GtkAnchorType}}{


\describe{
\item{\code{center}}{\emph{undocumented
}}
\item{\code{north}}{\emph{undocumented
}}
\item{\code{north-west}}{\emph{undocumented
}}
\item{\code{north-east}}{\emph{undocumented
}}
\item{\code{south}}{\emph{undocumented
}}
\item{\code{south-west}}{\emph{undocumented
}}
\item{\code{south-east}}{\emph{undocumented
}}
\item{\code{west}}{\emph{undocumented
}}
\item{\code{east}}{\emph{undocumented
}}
\item{\code{n}}{\emph{undocumented
}}
\item{\code{nw}}{\emph{undocumented
}}
\item{\code{ne}}{\emph{undocumented
}}
\item{\code{s}}{\emph{undocumented
}}
\item{\code{sw}}{\emph{undocumented
}}
\item{\code{se}}{\emph{undocumented
}}
\item{\code{w}}{\emph{undocumented
}}
\item{\code{e}}{\emph{undocumented
}}
}

}
\item{\code{GtkArrowType}}{
Used to indicate the direction in which a \code{\link{GtkArrow}} should point.

\describe{
\item{\code{up}}{Represents an upward pointing arrow.}
\item{\code{down}}{Represents a downward pointing arrow.}
\item{\code{left}}{Represents a left pointing arrow.}
\item{\code{right}}{Represents a right pointing arrow.}
}

}
\item{\code{GtkAttachOptions}}{
Denotes the expansion properties that a widget will have when it (or its
parent) is resized.

\describe{
\item{\code{expand}}{the widget should expand to take up any extra space in its
container that has been allocated.}
\item{\code{shrink}}{the widget should shrink as and when possible.}
\item{\code{fill}}{the widget should fill the space allocated to it.}
}

}
\item{\code{GtkButtonBoxStyle}}{
Used to dictate the style that a \code{\link{GtkButtonBox}} uses to layout the buttons it
contains. (See also: \code{\link{GtkVButtonBox}} and \code{\link{GtkHButtonBox}}).

\describe{
\item{\code{default-style}}{Default packing.}
\item{\code{spread}}{Buttons are evenly spread across the ButtonBox.}
\item{\code{edge}}{Buttons are placed at the edges of the ButtonBox.}
\item{\code{start}}{Buttons are grouped towards the start of box, (on the
left for a HBox, or the top for a VBox).}
\item{\code{end}}{Buttons are grouped towards the end of a box, (on the
right for a HBox, or the bottom for a VBox).}
}

}
\item{\code{GtkCornerType}}{
Specifies which corner a child widget should be placed in when packed into
a \code{\link{GtkScrolledWindow}}. This is effectively the opposite of where the scroll
bars are placed.

\describe{
\item{\code{top-left}}{Place the scrollbars on the right and bottom of the
widget (default behaviour).}
\item{\code{bottom-left}}{Place the scrollbars on the top and right of the
widget.}
\item{\code{top-right}}{Place the scrollbars on the left and bottom of the
widget.}
\item{\code{bottom-right}}{Place the scrollbars on the top and left of the
widget.}
}

}
\item{\code{GtkCurveType}}{


\describe{
\item{\code{linear}}{\emph{undocumented
}}
\item{\code{spline}}{\emph{undocumented
}}
\item{\code{free}}{\emph{undocumented
}}
}

}
\item{\code{GtkDeleteType}}{


\describe{
\item{\code{chars}}{\emph{undocumented
}}
\item{\code{word-ends}}{\emph{undocumented
}}
\item{\code{words}}{\emph{undocumented
}}
\item{\code{display-lines}}{\emph{undocumented
}}
\item{\code{display-line-ends}}{\emph{undocumented
}}
\item{\code{paragraph-ends}}{\emph{undocumented
}}
\item{\code{paragraphs}}{\emph{undocumented
}}
\item{\code{whitespace}}{\emph{undocumented
}}
}

}
\item{\code{GtkDirectionType}}{


\describe{
\item{\code{tab-forward}}{\emph{undocumented
}}
\item{\code{tab-backward}}{\emph{undocumented
}}
\item{\code{up}}{\emph{undocumented
}}
\item{\code{down}}{\emph{undocumented
}}
\item{\code{left}}{\emph{undocumented
}}
\item{\code{right}}{\emph{undocumented
}}
}

}
\item{\code{GtkExpanderStyle}}{
Used to specify the style of the expanders drawn by a \code{\link{GtkTreeView}}.

\describe{
\item{\code{collapsed}}{The style used for a collapsed subtree.}
\item{\code{semi-collapsed}}{Intermediate style used during animation.}
\item{\code{semi-expanded}}{Intermediate style used during animation.}
\item{\code{expanded}}{The style used for an expanded subtree.}
}

}
\item{\code{GtkIMPreeditStyle}}{


\describe{
\item{\code{nothing}}{\emph{undocumented
}}
\item{\code{callback}}{\emph{undocumented
}}
\item{\code{none}}{\emph{undocumented
}}
}

}
\item{\code{GtkIMStatusStyle}}{


\describe{
\item{\code{nothing}}{\emph{undocumented
}}
\item{\code{callback}}{\emph{undocumented
}}
}

}
\item{\code{GtkJustification}}{
Used for justifying the text inside a \code{\link{GtkLabel}} widget. (See also
\code{\link{GtkAlignment}}).

\describe{
\item{\code{left}}{The text is placed at the left edge of the label.}
\item{\code{right}}{The text is placed at the right edge of the label.}
\item{\code{center}}{The text is placed in the center of the label.}
\item{\code{fill}}{The text is placed is distributed across the label.}
}

}
\item{\code{GtkMatchType}}{
\strong{WARNING: \code{GtkMatchType} is deprecated and should not be used in newly-written code.}


\describe{
\item{\code{all}}{\emph{undocumented
}}
\item{\code{all-tail}}{\emph{undocumented
}}
\item{\code{head}}{\emph{undocumented
}}
\item{\code{tail}}{\emph{undocumented
}}
\item{\code{exact}}{\emph{undocumented
}}
\item{\code{last}}{\emph{undocumented
}}
}

}
\item{\code{GtkMetricType}}{
Used to indicate which metric is used by a \code{\link{GtkRuler}}.

\describe{
\item{\code{pixels}}{Pixels.}
\item{\code{inches}}{Inches.}
\item{\code{centimeters}}{Centimeters.}
}

}
\item{\code{GtkMovementStep}}{


\describe{
\item{\code{logical-positions}}{\emph{undocumented
}}
\item{\code{visual-positions}}{\emph{undocumented
}}
\item{\code{words}}{\emph{undocumented
}}
\item{\code{display-lines}}{\emph{undocumented
}}
\item{\code{display-line-ends}}{\emph{undocumented
}}
\item{\code{paragraphs}}{\emph{undocumented
}}
\item{\code{paragraph-ends}}{\emph{undocumented
}}
\item{\code{pages}}{\emph{undocumented
}}
\item{\code{buffer-ends}}{\emph{undocumented
}}
\item{\code{horizontal-pages}}{\emph{undocumented
}}
}

}
\item{\code{GtkOrientation}}{
Represents the orientation of widgets which can be switched between horizontal
and vertical orientation on the fly, like \code{\link{GtkToolbar}}.

\describe{
\item{\code{horizontal}}{The widget is in horizontal orientation.}
\item{\code{vertical}}{The widget is in vertical orientation.}
}

}
\item{\code{GtkPackType}}{
Represents the packing location \code{\link{GtkBox}} children. (See: \code{\link{GtkVBox}},
\code{\link{GtkHBox}}, and \code{\link{GtkButtonBox}}).

\describe{
\item{\code{start}}{The child is packed into the start of the box}
\item{\code{end}}{The child is packed into the end of the box}
}

}
\item{\code{GtkPathPriorityType}}{


\describe{
\item{\code{lowest}}{\emph{undocumented
}}
\item{\code{gtk}}{\emph{undocumented
}}
\item{\code{application}}{\emph{undocumented
}}
\item{\code{theme}}{\emph{undocumented
}}
\item{\code{rc}}{\emph{undocumented
}}
\item{\code{highest}}{\emph{undocumented
}}
}

}
\item{\code{GtkPathType}}{


\describe{
\item{\code{widget}}{\emph{undocumented
}}
\item{\code{widget-class}}{\emph{undocumented
}}
\item{\code{class}}{\emph{undocumented
}}
}

}
\item{\code{GtkPolicyType}}{
Determines when a scroll bar will be visible. 

\describe{
\item{\code{always}}{The scrollbar is always visible.}
\item{\code{automatic}}{The scrollbar will appear and disappear as necessary. For example,
when all of a \code{\link{GtkCList}} can not be seen.}
\item{\code{never}}{The scrollbar will never appear.}
}

}
\item{\code{GtkPositionType}}{
Describes which edge of a widget a certain feature is positioned at, e.g. the
tabs of a \code{\link{GtkNotebook}}, the handle of a \code{\link{GtkHandleBox}} or the label of a 
\code{\link{GtkScale}}.

\describe{
\item{\code{left}}{The feature is at the left edge.}
\item{\code{right}}{The feature is at the right edge.}
\item{\code{top}}{The feature is at the top edge.}
\item{\code{bottom}}{The feature is at the bottom edge.}
}

}
\item{\code{GtkPreviewType}}{
\strong{WARNING: \code{GtkPreviewType} is deprecated and should not be used in newly-written code.}
An enumeration which describes whether a preview
contains grayscale or red-green-blue data.

\describe{
\item{\code{color}}{the preview contains red-green-blue data.}
\item{\code{grayscale}}{The preview contains grayscale data.}
}

}
\item{\code{GtkReliefStyle}}{
Indicated the relief to be drawn around a \code{\link{GtkButton}}.

\describe{
\item{\code{normal}}{Draw a normal relief.}
\item{\code{half}}{A half relief.}
\item{\code{none}}{No relief.}
}

}
\item{\code{GtkResizeMode}}{


\describe{
\item{\code{parent}}{\emph{undocumented
}}
\item{\code{queue}}{\emph{undocumented
}}
\item{\code{immediate}}{Deprecated.}
}

}
\item{\code{GtkScrollStep}}{


\describe{
\item{\code{steps}}{\emph{undocumented
}}
\item{\code{pages}}{\emph{undocumented
}}
\item{\code{ends}}{\emph{undocumented
}}
\item{\code{horizontal-steps}}{\emph{undocumented
}}
\item{\code{horizontal-pages}}{\emph{undocumented
}}
\item{\code{horizontal-ends}}{\emph{undocumented
}}
}

}
\item{\code{GtkScrollType}}{


\describe{
\item{\code{none}}{\emph{undocumented
}}
\item{\code{jump}}{\emph{undocumented
}}
\item{\code{step-backward}}{\emph{undocumented
}}
\item{\code{step-forward}}{\emph{undocumented
}}
\item{\code{page-backward}}{\emph{undocumented
}}
\item{\code{page-forward}}{\emph{undocumented
}}
\item{\code{step-up}}{\emph{undocumented
}}
\item{\code{step-down}}{\emph{undocumented
}}
\item{\code{page-up}}{\emph{undocumented
}}
\item{\code{page-down}}{\emph{undocumented
}}
\item{\code{step-left}}{\emph{undocumented
}}
\item{\code{step-right}}{\emph{undocumented
}}
\item{\code{page-left}}{\emph{undocumented
}}
\item{\code{page-right}}{\emph{undocumented
}}
\item{\code{start}}{\emph{undocumented
}}
\item{\code{end}}{\emph{undocumented
}}
}

}
\item{\code{GtkSelectionMode}}{
Used to control what selections users are allowed to make.

\describe{
\item{\code{none}}{No selection is possible.}
\item{\code{single}}{Zero or one element may be selected.}
\item{\code{browse}}{Exactly one element is selected. In some circumstances,
  such as initially or during a search operation, it's possible for no element 
  to be selected with \code{GTK_SELECTION_BROWSE}. What is really enforced is that 
  the user can't deselect a currently selected element except by selecting 
  another element.}
\item{\code{multiple}}{Any number of elements may be selected. 
   Clicks toggle the state of an item. Any number of elements may be selected. 
   The Ctrl key may be used to enlarge the selection, and Shift key to select 
   between the focus and the child pointed to. Some widgets may also allow
   Click-drag to select a range of elements.}
\item{\code{extended}}{Deprecated, behaves identical to \code{GTK_SELECTION_MULTIPLE}.}
}

}
\item{\code{GtkShadowType}}{
Used to change the appearance of an outline typically provided by a \code{\link{GtkFrame}}.

\describe{
\item{\code{none}}{No outline.}
\item{\code{in}}{The outline is bevelled inwards.}
\item{\code{out}}{The outline is bevelled outwards like a button.}
\item{\code{etched-in}}{The outline itself is an inward bevel, but the frame
does}
\item{\code{etched-out}}{\emph{undocumented
}}
}

}
\item{\code{GtkSideType}}{
\strong{WARNING: \code{GtkSideType} is deprecated and should not be used in newly-written code.}


\describe{
\item{\code{top}}{\emph{undocumented
}}
\item{\code{bottom}}{\emph{undocumented
}}
\item{\code{left}}{\emph{undocumented
}}
\item{\code{right}}{\emph{undocumented
}}
}

}
\item{\code{GtkStateType}}{
This type indicates the current state of a widget; the state determines how
the widget is drawn. The \code{\link{GtkStateType}} enumeration is also used to
identify different colors in a \code{\link{GtkStyle}} for drawing, so states can be
used for subparts of a widget as well as entire widgets.

\describe{
\item{\code{normal}}{State during normal operation.}
\item{\code{active}}{State of a currently active widget, such as a depressed button.}
\item{\code{prelight}}{State indicating that the mouse pointer is over
the widget and the widget will respond to mouse clicks.}
\item{\code{selected}}{State of a selected item, such the selected row in a list.}
\item{\code{insensitive}}{State indicating that the widget is
unresponsive to user actions.}
}

}
\item{\code{GtkSubmenuDirection}}{
\strong{WARNING: \code{GtkSubmenuDirection} is deprecated and should not be used in newly-written code.}
Indicates the direction a sub-menu will appear.

\describe{
\item{\code{left}}{A sub-menu will appear}
\item{\code{right}}{\emph{undocumented
}}
}

}
\item{\code{GtkSubmenuPlacement}}{
\strong{WARNING: \code{GtkSubmenuPlacement} is deprecated and should not be used in newly-written code.}


\describe{
\item{\code{top-bottom}}{\emph{undocumented
}}
\item{\code{left-right}}{\emph{undocumented
}}
}

}
\item{\code{GtkToolbarStyle}}{
Used to customize the appearance of a \code{\link{GtkToolbar}}. Note that 
setting the toolbar style overrides the user's preferences
for the default toolbar style.

\describe{
\item{\code{icons}}{Buttons display only icons in the toolbar.}
\item{\code{text}}{Buttons display only text labels in the toolbar.}
\item{\code{both}}{Buttons display text and icons in the toolbar.}
\item{\code{both-horiz}}{Buttons display icons and text alongside each
other, rather than vertically stacked}
}

}
\item{\code{GtkUpdateType}}{


\describe{
\item{\code{continuous}}{\emph{undocumented
}}
\item{\code{discontinuous}}{\emph{undocumented
}}
\item{\code{delayed}}{\emph{undocumented
}}
}

}
\item{\code{GtkVisibility}}{
Used by \code{\link{GtkCList}} and \code{\link{GtkCTree}} to indicate whether a row is visible.

\describe{
\item{\code{none}}{The row is not visible.}
\item{\code{partial}}{The row is partially visible.}
\item{\code{full}}{The row is fully visible.}
}

}
\item{\code{GtkWindowPosition}}{
Window placement can be influenced using this enumeration.

\describe{
\item{\code{none}}{No influence is made on placement.}
\item{\code{center}}{Windows should be placed in the center of the screen.}
\item{\code{mouse}}{Windows should be placed at the current mouse position.}
\item{\code{center-always}}{Keep window centered as it changes size, etc.}
\item{\code{center-on-parent}}{Center the window on its transient
parent (see \code{\link{gtkWindowSetTransientFor}}).}
}

}
\item{\code{GtkWindowType}}{
A \code{\link{GtkWindow}} can be one of these types. Most things you'd consider a
"window" should have type \code{GTK_WINDOW_TOPLEVEL}; windows with this type
are managed by the window manager and have a frame by default (call
\code{\link{gtkWindowSetDecorated}} to toggle the frame).  Windows with type
\code{GTK_WINDOW_POPUP} are ignored by the window manager; window manager
keybindings won't work on them, the window manager won't decorate the
window with a frame, many GTK+ features that rely on the window
manager will not work (e.g. resize grips and
maximization/minimization). \code{GTK_WINDOW_POPUP} is used to implement
widgets such as \code{\link{GtkMenu}} or tooltips that you normally don't think of 
as windows per se. Nearly all windows should be \code{GTK_WINDOW_TOPLEVEL}.
In particular, do not use \code{GTK_WINDOW_POPUP} just to turn off
the window borders; use \code{\link{gtkWindowSetDecorated}} for that.

\describe{
\item{\code{toplevel}}{A regular window, such as a dialog.}
\item{\code{popup}}{A special window such as a tooltip.}
}

}
\item{\code{GtkSortType}}{
Determines the direction of a sort.

\describe{
\item{\code{ascending}}{Sorting is in ascending order.}
\item{\code{descending}}{Sorting is in descending order.}
}

}
}}
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/gtk-Standard-Enumerations.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
