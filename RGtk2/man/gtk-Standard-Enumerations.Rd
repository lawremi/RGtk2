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
\item{\code{GTK_ACCEL_VISIBLE (visible)}}{\emph{undocumented
}}
\item{\code{GTK_ACCEL_LOCKED (locked)}}{\emph{undocumented
}}
\item{\code{GTK_ACCEL_MASK (mask)}}{\emph{undocumented
}}
}

}
\item{\code{GtkAnchorType}}{


\describe{
\item{\code{GTK_ANCHOR_CENTER (center)}}{\emph{undocumented
}}
\item{\code{GTK_ANCHOR_NORTH (north)}}{\emph{undocumented
}}
\item{\code{GTK_ANCHOR_NORTH_WEST (north-west)}}{\emph{undocumented
}}
\item{\code{GTK_ANCHOR_NORTH_EAST (north-east)}}{\emph{undocumented
}}
\item{\code{GTK_ANCHOR_SOUTH (south)}}{\emph{undocumented
}}
\item{\code{GTK_ANCHOR_SOUTH_WEST (south-west)}}{\emph{undocumented
}}
\item{\code{GTK_ANCHOR_SOUTH_EAST (south-east)}}{\emph{undocumented
}}
\item{\code{GTK_ANCHOR_WEST (west)}}{\emph{undocumented
}}
\item{\code{GTK_ANCHOR_EAST (east)}}{\emph{undocumented
}}
\item{\code{GTK_ANCHOR_N (n)}}{\emph{undocumented
}}
\item{\code{GTK_ANCHOR_NW (nw)}}{\emph{undocumented
}}
\item{\code{GTK_ANCHOR_NE (ne)}}{\emph{undocumented
}}
\item{\code{GTK_ANCHOR_S (s)}}{\emph{undocumented
}}
\item{\code{GTK_ANCHOR_SW (sw)}}{\emph{undocumented
}}
\item{\code{GTK_ANCHOR_SE (se)}}{\emph{undocumented
}}
\item{\code{GTK_ANCHOR_W (w)}}{\emph{undocumented
}}
\item{\code{GTK_ANCHOR_E (e)}}{\emph{undocumented
}}
}

}
\item{\code{GtkArrowType}}{
Used to indicate the direction in which a \code{\link{GtkArrow}} should point.

\describe{
\item{\code{GTK_ARROW_UP (up)}}{Represents an upward pointing arrow.}
\item{\code{GTK_ARROW_DOWN (down)}}{Represents a downward pointing arrow.}
\item{\code{GTK_ARROW_LEFT (left)}}{Represents a left pointing arrow.}
\item{\code{GTK_ARROW_RIGHT (right)}}{Represents a right pointing arrow.}
}

}
\item{\code{GtkAttachOptions}}{
Denotes the expansion properties that a widget will have when it (or its
parent) is resized.

\describe{
\item{\code{GTK_EXPAND (expand)}}{the widget should expand to take up any extra space in its
container that has been allocated.}
\item{\code{GTK_SHRINK (shrink)}}{the widget should shrink as and when possible.}
\item{\code{GTK_FILL (fill)}}{the widget should fill the space allocated to it.}
}

}
\item{\code{GtkButtonBoxStyle}}{
Used to dictate the style that a \code{\link{GtkButtonBox}} uses to layout the buttons it
contains. (See also: \code{\link{GtkVButtonBox}} and \code{\link{GtkHButtonBox}}).

\describe{
\item{\code{GTK_BUTTONBOX_DEFAULT_STYLE (default-style)}}{Default packing.}
\item{\code{GTK_BUTTONBOX_SPREAD (spread)}}{Buttons are evenly spread across the ButtonBox.}
\item{\code{GTK_BUTTONBOX_EDGE (edge)}}{Buttons are placed at the edges of the ButtonBox.}
\item{\code{GTK_BUTTONBOX_START (start)}}{Buttons are grouped towards the start of box, (on the
left for a HBox, or the top for a VBox).}
\item{\code{GTK_BUTTONBOX_END (end)}}{Buttons are grouped towards the end of a box, (on the
right for a HBox, or the bottom for a VBox).}
}

}
\item{\code{GtkCornerType}}{
Specifies which corner a child widget should be placed in when packed into
a \code{\link{GtkScrolledWindow}}. This is effectively the opposite of where the scroll
bars are placed.

\describe{
\item{\code{GTK_CORNER_TOP_LEFT (top-left)}}{Place the scrollbars on the right and bottom of the
widget (default behaviour).}
\item{\code{GTK_CORNER_BOTTOM_LEFT (bottom-left)}}{Place the scrollbars on the top and right of the
widget.}
\item{\code{GTK_CORNER_TOP_RIGHT (top-right)}}{Place the scrollbars on the left and bottom of the
widget.}
\item{\code{GTK_CORNER_BOTTOM_RIGHT (bottom-right)}}{Place the scrollbars on the top and left of the
widget.}
}

}
\item{\code{GtkCurveType}}{


\describe{
\item{\code{GTK_CURVE_TYPE_LINEAR (linear)}}{\emph{undocumented
}}
\item{\code{GTK_CURVE_TYPE_SPLINE (spline)}}{\emph{undocumented
}}
\item{\code{GTK_CURVE_TYPE_FREE (free)}}{\emph{undocumented
}}
}

}
\item{\code{GtkDeleteType}}{


\describe{
\item{\code{GTK_DELETE_CHARS (chars)}}{\emph{undocumented
}}
\item{\code{GTK_DELETE_WORD_ENDS (word-ends)}}{\emph{undocumented
}}
\item{\code{GTK_DELETE_WORDS (words)}}{\emph{undocumented
}}
\item{\code{GTK_DELETE_DISPLAY_LINES (display-lines)}}{\emph{undocumented
}}
\item{\code{GTK_DELETE_DISPLAY_LINE_ENDS (display-line-ends)}}{\emph{undocumented
}}
\item{\code{GTK_DELETE_PARAGRAPH_ENDS (paragraph-ends)}}{\emph{undocumented
}}
\item{\code{GTK_DELETE_PARAGRAPHS (paragraphs)}}{\emph{undocumented
}}
\item{\code{GTK_DELETE_WHITESPACE (whitespace)}}{\emph{undocumented
}}
}

}
\item{\code{GtkDirectionType}}{


\describe{
\item{\code{GTK_DIR_TAB_FORWARD (tab-forward)}}{\emph{undocumented
}}
\item{\code{GTK_DIR_TAB_BACKWARD (tab-backward)}}{\emph{undocumented
}}
\item{\code{GTK_DIR_UP (up)}}{\emph{undocumented
}}
\item{\code{GTK_DIR_DOWN (down)}}{\emph{undocumented
}}
\item{\code{GTK_DIR_LEFT (left)}}{\emph{undocumented
}}
\item{\code{GTK_DIR_RIGHT (right)}}{\emph{undocumented
}}
}

}
\item{\code{GtkExpanderStyle}}{
Used to specify the style of the expanders drawn by a \code{\link{GtkTreeView}}.

\describe{
\item{\code{GTK_EXPANDER_COLLAPSED (collapsed)}}{The style used for a collapsed subtree.}
\item{\code{GTK_EXPANDER_SEMI_COLLAPSED (semi-collapsed)}}{Intermediate style used during animation.}
\item{\code{GTK_EXPANDER_SEMI_EXPANDED (semi-expanded)}}{Intermediate style used during animation.}
\item{\code{GTK_EXPANDER_EXPANDED (expanded)}}{The style used for an expanded subtree.}
}

}
\item{\code{GtkIMPreeditStyle}}{


\describe{
\item{\code{GTK_IM_PREEDIT_NOTHING (nothing)}}{\emph{undocumented
}}
\item{\code{GTK_IM_PREEDIT_CALLBACK (callback)}}{\emph{undocumented
}}
\item{\code{GTK_IM_PREEDIT_NONE (none)}}{\emph{undocumented
}}
}

}
\item{\code{GtkIMStatusStyle}}{


\describe{
\item{\code{GTK_IM_STATUS_NOTHING (nothing)}}{\emph{undocumented
}}
\item{\code{GTK_IM_STATUS_CALLBACK (callback)}}{\emph{undocumented
}}
}

}
\item{\code{GtkJustification}}{
Used for justifying the text inside a \code{\link{GtkLabel}} widget. (See also
\code{\link{GtkAlignment}}).

\describe{
\item{\code{GTK_JUSTIFY_LEFT (left)}}{The text is placed at the left edge of the label.}
\item{\code{GTK_JUSTIFY_RIGHT (right)}}{The text is placed at the right edge of the label.}
\item{\code{GTK_JUSTIFY_CENTER (center)}}{The text is placed in the center of the label.}
\item{\code{GTK_JUSTIFY_FILL (fill)}}{The text is placed is distributed across the label.}
}

}
\item{\code{GtkMatchType}}{
\strong{WARNING: \code{GtkMatchType} is deprecated and should not be used in newly-written code.}


\describe{
\item{\code{GTK_MATCH_ALL (all)}}{\emph{undocumented
}}
\item{\code{GTK_MATCH_ALL_TAIL (all-tail)}}{\emph{undocumented
}}
\item{\code{GTK_MATCH_HEAD (head)}}{\emph{undocumented
}}
\item{\code{GTK_MATCH_TAIL (tail)}}{\emph{undocumented
}}
\item{\code{GTK_MATCH_EXACT (exact)}}{\emph{undocumented
}}
\item{\code{GTK_MATCH_LAST (last)}}{\emph{undocumented
}}
}

}
\item{\code{GtkMetricType}}{
Used to indicate which metric is used by a \code{\link{GtkRuler}}.

\describe{
\item{\code{GTK_PIXELS (pixels)}}{Pixels.}
\item{\code{GTK_INCHES (inches)}}{Inches.}
\item{\code{GTK_CENTIMETERS (centimeters)}}{Centimeters.}
}

}
\item{\code{GtkMovementStep}}{


\describe{
\item{\code{GTK_MOVEMENT_LOGICAL_POSITIONS (logical-positions)}}{\emph{undocumented
}}
\item{\code{GTK_MOVEMENT_VISUAL_POSITIONS (visual-positions)}}{\emph{undocumented
}}
\item{\code{GTK_MOVEMENT_WORDS (words)}}{\emph{undocumented
}}
\item{\code{GTK_MOVEMENT_DISPLAY_LINES (display-lines)}}{\emph{undocumented
}}
\item{\code{GTK_MOVEMENT_DISPLAY_LINE_ENDS (display-line-ends)}}{\emph{undocumented
}}
\item{\code{GTK_MOVEMENT_PARAGRAPHS (paragraphs)}}{\emph{undocumented
}}
\item{\code{GTK_MOVEMENT_PARAGRAPH_ENDS (paragraph-ends)}}{\emph{undocumented
}}
\item{\code{GTK_MOVEMENT_PAGES (pages)}}{\emph{undocumented
}}
\item{\code{GTK_MOVEMENT_BUFFER_ENDS (buffer-ends)}}{\emph{undocumented
}}
\item{\code{GTK_MOVEMENT_HORIZONTAL_PAGES (horizontal-pages)}}{\emph{undocumented
}}
}

}
\item{\code{GtkOrientation}}{
Represents the orientation of widgets which can be switched between horizontal
and vertical orientation on the fly, like \code{\link{GtkToolbar}}.

\describe{
\item{\code{GTK_ORIENTATION_HORIZONTAL (horizontal)}}{The widget is in horizontal orientation.}
\item{\code{GTK_ORIENTATION_VERTICAL (vertical)}}{The widget is in vertical orientation.}
}

}
\item{\code{GtkPackType}}{
Represents the packing location \code{\link{GtkBox}} children. (See: \code{\link{GtkVBox}},
\code{\link{GtkHBox}}, and \code{\link{GtkButtonBox}}).

\describe{
\item{\code{GTK_PACK_START (start)}}{The child is packed into the start of the box}
\item{\code{GTK_PACK_END (end)}}{The child is packed into the end of the box}
}

}
\item{\code{GtkPathPriorityType}}{


\describe{
\item{\code{GTK_PATH_PRIO_LOWEST (lowest)}}{\emph{undocumented
}}
\item{\code{GTK_PATH_PRIO_GTK (gtk)}}{\emph{undocumented
}}
\item{\code{GTK_PATH_PRIO_APPLICATION (application)}}{\emph{undocumented
}}
\item{\code{GTK_PATH_PRIO_THEME (theme)}}{\emph{undocumented
}}
\item{\code{GTK_PATH_PRIO_RC (rc)}}{\emph{undocumented
}}
\item{\code{GTK_PATH_PRIO_HIGHEST (highest)}}{\emph{undocumented
}}
}

}
\item{\code{GtkPathType}}{


\describe{
\item{\code{GTK_PATH_WIDGET (widget)}}{\emph{undocumented
}}
\item{\code{GTK_PATH_WIDGET_CLASS (widget-class)}}{\emph{undocumented
}}
\item{\code{GTK_PATH_CLASS (class)}}{\emph{undocumented
}}
}

}
\item{\code{GtkPolicyType}}{
Determines when a scroll bar will be visible. 

\describe{
\item{\code{GTK_POLICY_ALWAYS (always)}}{The scrollbar is always visible.}
\item{\code{GTK_POLICY_AUTOMATIC (automatic)}}{The scrollbar will appear and disappear as necessary. For example,
when all of a \code{\link{GtkCList}} can not be seen.}
\item{\code{GTK_POLICY_NEVER (never)}}{The scrollbar will never appear.}
}

}
\item{\code{GtkPositionType}}{
Describes which edge of a widget a certain feature is positioned at, e.g. the
tabs of a \code{\link{GtkNotebook}}, the handle of a \code{\link{GtkHandleBox}} or the label of a 
\code{\link{GtkScale}}.

\describe{
\item{\code{GTK_POS_LEFT (left)}}{The feature is at the left edge.}
\item{\code{GTK_POS_RIGHT (right)}}{The feature is at the right edge.}
\item{\code{GTK_POS_TOP (top)}}{The feature is at the top edge.}
\item{\code{GTK_POS_BOTTOM (bottom)}}{The feature is at the bottom edge.}
}

}
\item{\code{GtkPreviewType}}{
\strong{WARNING: \code{GtkPreviewType} is deprecated and should not be used in newly-written code.}
An enumeration which describes whether a preview
contains grayscale or red-green-blue data.

\describe{
\item{\code{GTK_PREVIEW_COLOR (color)}}{the preview contains red-green-blue data.}
\item{\code{GTK_PREVIEW_GRAYSCALE (grayscale)}}{The preview contains grayscale data.}
}

}
\item{\code{GtkReliefStyle}}{
Indicated the relief to be drawn around a \code{\link{GtkButton}}.

\describe{
\item{\code{GTK_RELIEF_NORMAL (normal)}}{Draw a normal relief.}
\item{\code{GTK_RELIEF_HALF (half)}}{A half relief.}
\item{\code{GTK_RELIEF_NONE (none)}}{No relief.}
}

}
\item{\code{GtkResizeMode}}{


\describe{
\item{\code{GTK_RESIZE_PARENT (parent)}}{\emph{undocumented
}}
\item{\code{GTK_RESIZE_QUEUE (queue)}}{\emph{undocumented
}}
\item{\code{GTK_RESIZE_IMMEDIATE (immediate)}}{Deprecated.}
}

}
\item{\code{GtkScrollStep}}{


\describe{
\item{\code{GTK_SCROLL_STEPS (steps)}}{\emph{undocumented
}}
\item{\code{GTK_SCROLL_PAGES (pages)}}{\emph{undocumented
}}
\item{\code{GTK_SCROLL_ENDS (ends)}}{\emph{undocumented
}}
\item{\code{GTK_SCROLL_HORIZONTAL_STEPS (horizontal-steps)}}{\emph{undocumented
}}
\item{\code{GTK_SCROLL_HORIZONTAL_PAGES (horizontal-pages)}}{\emph{undocumented
}}
\item{\code{GTK_SCROLL_HORIZONTAL_ENDS (horizontal-ends)}}{\emph{undocumented
}}
}

}
\item{\code{GtkScrollType}}{


\describe{
\item{\code{GTK_SCROLL_NONE (none)}}{\emph{undocumented
}}
\item{\code{GTK_SCROLL_JUMP (jump)}}{\emph{undocumented
}}
\item{\code{GTK_SCROLL_STEP_BACKWARD (step-backward)}}{\emph{undocumented
}}
\item{\code{GTK_SCROLL_STEP_FORWARD (step-forward)}}{\emph{undocumented
}}
\item{\code{GTK_SCROLL_PAGE_BACKWARD (page-backward)}}{\emph{undocumented
}}
\item{\code{GTK_SCROLL_PAGE_FORWARD (page-forward)}}{\emph{undocumented
}}
\item{\code{GTK_SCROLL_STEP_UP (step-up)}}{\emph{undocumented
}}
\item{\code{GTK_SCROLL_STEP_DOWN (step-down)}}{\emph{undocumented
}}
\item{\code{GTK_SCROLL_PAGE_UP (page-up)}}{\emph{undocumented
}}
\item{\code{GTK_SCROLL_PAGE_DOWN (page-down)}}{\emph{undocumented
}}
\item{\code{GTK_SCROLL_STEP_LEFT (step-left)}}{\emph{undocumented
}}
\item{\code{GTK_SCROLL_STEP_RIGHT (step-right)}}{\emph{undocumented
}}
\item{\code{GTK_SCROLL_PAGE_LEFT (page-left)}}{\emph{undocumented
}}
\item{\code{GTK_SCROLL_PAGE_RIGHT (page-right)}}{\emph{undocumented
}}
\item{\code{GTK_SCROLL_START (start)}}{\emph{undocumented
}}
\item{\code{GTK_SCROLL_END (end)}}{\emph{undocumented
}}
}

}
\item{\code{GtkSelectionMode}}{
Used to control what selections users are allowed to make.

\describe{
\item{\code{GTK_SELECTION_NONE (none)}}{No selection is possible.}
\item{\code{GTK_SELECTION_SINGLE (single)}}{Zero or one element may be selected.}
\item{\code{GTK_SELECTION_BROWSE (browse)}}{Exactly one element is selected. In some circumstances,
  such as initially or during a search operation, it's possible for no element 
  to be selected with \code{GTK_SELECTION_BROWSE}. What is really enforced is that 
  the user can't deselect a currently selected element except by selecting 
  another element.}
\item{\code{GTK_SELECTION_MULTIPLE (multiple)}}{Any number of elements may be selected. 
   Clicks toggle the state of an item. Any number of elements may be selected. 
   The Ctrl key may be used to enlarge the selection, and Shift key to select 
   between the focus and the child pointed to. Some widgets may also allow
   Click-drag to select a range of elements.}
\item{\code{GTK_SELECTION_EXTENDED (extended)}}{Deprecated, behaves identical to \code{GTK_SELECTION_MULTIPLE}.}
}

}
\item{\code{GtkShadowType}}{
Used to change the appearance of an outline typically provided by a \code{\link{GtkFrame}}.

\describe{
\item{\code{GTK_SHADOW_NONE (none)}}{No outline.}
\item{\code{GTK_SHADOW_IN (in)}}{The outline is bevelled inwards.}
\item{\code{GTK_SHADOW_OUT (out)}}{The outline is bevelled outwards like a button.}
\item{\code{GTK_SHADOW_ETCHED_IN (etched-in)}}{The outline itself is an inward bevel, but the frame
does}
\item{\code{GTK_SHADOW_ETCHED_OUT (etched-out)}}{\emph{undocumented
}}
}

}
\item{\code{GtkSideType}}{
\strong{WARNING: \code{GtkSideType} is deprecated and should not be used in newly-written code.}


\describe{
\item{\code{GTK_SIDE_TOP (top)}}{\emph{undocumented
}}
\item{\code{GTK_SIDE_BOTTOM (bottom)}}{\emph{undocumented
}}
\item{\code{GTK_SIDE_LEFT (left)}}{\emph{undocumented
}}
\item{\code{GTK_SIDE_RIGHT (right)}}{\emph{undocumented
}}
}

}
\item{\code{GtkStateType}}{
This type indicates the current state of a widget; the state determines how
the widget is drawn. The \code{\link{GtkStateType}} enumeration is also used to
identify different colors in a \code{\link{GtkStyle}} for drawing, so states can be
used for subparts of a widget as well as entire widgets.

\describe{
\item{\code{GTK_STATE_NORMAL (normal)}}{State during normal operation.}
\item{\code{GTK_STATE_ACTIVE (active)}}{State of a currently active widget, such as a depressed button.}
\item{\code{GTK_STATE_PRELIGHT (prelight)}}{State indicating that the mouse pointer is over
the widget and the widget will respond to mouse clicks.}
\item{\code{GTK_STATE_SELECTED (selected)}}{State of a selected item, such the selected row in a list.}
\item{\code{GTK_STATE_INSENSITIVE (insensitive)}}{State indicating that the widget is
unresponsive to user actions.}
}

}
\item{\code{GtkSubmenuDirection}}{
\strong{WARNING: \code{GtkSubmenuDirection} is deprecated and should not be used in newly-written code.}
Indicates the direction a sub-menu will appear.

\describe{
\item{\code{GTK_DIRECTION_LEFT (left)}}{A sub-menu will appear}
\item{\code{GTK_DIRECTION_RIGHT (right)}}{\emph{undocumented
}}
}

}
\item{\code{GtkSubmenuPlacement}}{
\strong{WARNING: \code{GtkSubmenuPlacement} is deprecated and should not be used in newly-written code.}


\describe{
\item{\code{GTK_TOP_BOTTOM (top-bottom)}}{\emph{undocumented
}}
\item{\code{GTK_LEFT_RIGHT (left-right)}}{\emph{undocumented
}}
}

}
\item{\code{GtkToolbarStyle}}{
Used to customize the appearance of a \code{\link{GtkToolbar}}. Note that 
setting the toolbar style overrides the user's preferences
for the default toolbar style.

\describe{
\item{\code{GTK_TOOLBAR_ICONS (icons)}}{Buttons display only icons in the toolbar.}
\item{\code{GTK_TOOLBAR_TEXT (text)}}{Buttons display only text labels in the toolbar.}
\item{\code{GTK_TOOLBAR_BOTH (both)}}{Buttons display text and icons in the toolbar.}
\item{\code{GTK_TOOLBAR_BOTH_HORIZ (both-horiz)}}{Buttons display icons and text alongside each
other, rather than vertically stacked}
}

}
\item{\code{GtkUpdateType}}{


\describe{
\item{\code{GTK_UPDATE_CONTINUOUS (continuous)}}{\emph{undocumented
}}
\item{\code{GTK_UPDATE_DISCONTINUOUS (discontinuous)}}{\emph{undocumented
}}
\item{\code{GTK_UPDATE_DELAYED (delayed)}}{\emph{undocumented
}}
}

}
\item{\code{GtkVisibility}}{
Used by \code{\link{GtkCList}} and \code{\link{GtkCTree}} to indicate whether a row is visible.

\describe{
\item{\code{GTK_VISIBILITY_NONE (none)}}{The row is not visible.}
\item{\code{GTK_VISIBILITY_PARTIAL (partial)}}{The row is partially visible.}
\item{\code{GTK_VISIBILITY_FULL (full)}}{The row is fully visible.}
}

}
\item{\code{GtkWindowPosition}}{
Window placement can be influenced using this enumeration.

\describe{
\item{\code{GTK_WIN_POS_NONE (none)}}{No influence is made on placement.}
\item{\code{GTK_WIN_POS_CENTER (center)}}{Windows should be placed in the center of the screen.}
\item{\code{GTK_WIN_POS_MOUSE (mouse)}}{Windows should be placed at the current mouse position.}
\item{\code{GTK_WIN_POS_CENTER_ALWAYS (center-always)}}{Keep window centered as it changes size, etc.}
\item{\code{GTK_WIN_POS_CENTER_ON_PARENT (center-on-parent)}}{Center the window on its transient
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
\item{\code{GTK_WINDOW_TOPLEVEL (toplevel)}}{A regular window, such as a dialog.}
\item{\code{GTK_WINDOW_POPUP (popup)}}{A special window such as a tooltip.}
}

}
\item{\code{GtkSortType}}{
Determines the direction of a sort.

\describe{
\item{\code{GTK_SORT_ASCENDING (ascending)}}{Sorting is in ascending order.}
\item{\code{GTK_SORT_DESCENDING (descending)}}{Sorting is in descending order.}
}

}
}}
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/gtk-Standard-Enumerations.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
