\alias{GtkTreeView}
\alias{gtkTreeView}
\alias{GtkTreeViewColumnDropFunc}
\alias{GtkTreeViewMappingFunc}
\alias{GtkTreeViewSearchEqualFunc}
\alias{GtkTreeViewSearchPositionFunc}
\alias{GtkTreeDestroyCountFunc}
\alias{GtkTreeViewRowSeparatorFunc}
\alias{GtkTreeViewDropPosition}
\alias{GtkTreeViewGridLines}
\name{GtkTreeView}
\title{GtkTreeView}
\description{A widget for displaying both trees and lists}
\section{Methods and Functions}{
\code{\link{gtkTreeViewNew}(show = TRUE)}\cr
\code{\link{gtkTreeViewNewWithModel}(model = NULL, show = TRUE)}\cr
\code{\link{gtkTreeViewGetModel}(object)}\cr
\code{\link{gtkTreeViewSetModel}(object, model = NULL)}\cr
\code{\link{gtkTreeViewGetSelection}(object)}\cr
\code{\link{gtkTreeViewGetHadjustment}(object)}\cr
\code{\link{gtkTreeViewSetHadjustment}(object, adjustment)}\cr
\code{\link{gtkTreeViewGetVadjustment}(object)}\cr
\code{\link{gtkTreeViewSetVadjustment}(object, adjustment)}\cr
\code{\link{gtkTreeViewGetHeadersVisible}(object)}\cr
\code{\link{gtkTreeViewSetHeadersVisible}(object, headers.visible)}\cr
\code{\link{gtkTreeViewColumnsAutosize}(object)}\cr
\code{\link{gtkTreeViewGetHeadersClickable}(object)}\cr
\code{\link{gtkTreeViewSetHeadersClickable}(object, active)}\cr
\code{\link{gtkTreeViewSetRulesHint}(object, setting)}\cr
\code{\link{gtkTreeViewGetRulesHint}(object)}\cr
\code{\link{gtkTreeViewAppendColumn}(object, column)}\cr
\code{\link{gtkTreeViewRemoveColumn}(object, column)}\cr
\code{\link{gtkTreeViewInsertColumn}(object, column, position)}\cr
\code{\link{gtkTreeViewInsertColumnWithAttributes}(object, position, title, cell, ...)}\cr
\code{\link{gtkTreeViewInsertColumnWithDataFunc}(object, position, title, cell, func, data = NULL)}\cr
\code{\link{gtkTreeViewGetColumn}(object, n)}\cr
\code{\link{gtkTreeViewGetColumns}(object)}\cr
\code{\link{gtkTreeViewMoveColumnAfter}(object, column, base.column = NULL)}\cr
\code{\link{gtkTreeViewSetExpanderColumn}(object, column)}\cr
\code{\link{gtkTreeViewGetExpanderColumn}(object)}\cr
\code{\link{gtkTreeViewSetColumnDragFunction}(object, func, user.data = NULL)}\cr
\code{\link{gtkTreeViewScrollToPoint}(object, tree.x, tree.y)}\cr
\code{\link{gtkTreeViewScrollToCell}(object, path, column = NULL, use.align = FALSE, row.align = 0, col.align = 0)}\cr
\code{\link{gtkTreeViewSetCursor}(object, path, focus.column = NULL, start.editing = FALSE)}\cr
\code{\link{gtkTreeViewSetCursorOnCell}(object, path, focus.column = NULL, focus.cell = NULL, start.editing = FALSE)}\cr
\code{\link{gtkTreeViewGetCursor}(object)}\cr
\code{\link{gtkTreeViewRowActivated}(object, path, column)}\cr
\code{\link{gtkTreeViewExpandAll}(object)}\cr
\code{\link{gtkTreeViewCollapseAll}(object)}\cr
\code{\link{gtkTreeViewExpandToPath}(object, path)}\cr
\code{\link{gtkTreeViewExpandRow}(object, path, open.all)}\cr
\code{\link{gtkTreeViewCollapseRow}(object, path)}\cr
\code{\link{gtkTreeViewMapExpandedRows}(object, func, data = NULL)}\cr
\code{\link{gtkTreeViewRowExpanded}(object, path)}\cr
\code{\link{gtkTreeViewSetReorderable}(object, reorderable)}\cr
\code{\link{gtkTreeViewGetReorderable}(object)}\cr
\code{\link{gtkTreeViewGetPathAtPos}(object, x, y)}\cr
\code{\link{gtkTreeViewGetCellArea}(object, path, column)}\cr
\code{\link{gtkTreeViewGetBackgroundArea}(object, path, column)}\cr
\code{\link{gtkTreeViewGetVisibleRect}(object)}\cr
\code{\link{gtkTreeViewGetVisibleRange}(object)}\cr
\code{\link{gtkTreeViewGetBinWindow}(object)}\cr
\code{\link{gtkTreeViewWidgetToTreeCoords}(object, wx, wy)}\cr
\code{\link{gtkTreeViewTreeToWidgetCoords}(object, tx, ty)}\cr
\code{\link{gtkTreeViewEnableModelDragDest}(object, targets, actions)}\cr
\code{\link{gtkTreeViewEnableModelDragSource}(object, start.button.mask, targets, actions)}\cr
\code{\link{gtkTreeViewUnsetRowsDragSource}(object)}\cr
\code{\link{gtkTreeViewUnsetRowsDragDest}(object)}\cr
\code{\link{gtkTreeViewSetDragDestRow}(object, path, pos)}\cr
\code{\link{gtkTreeViewGetDragDestRow}(object, path, pos)}\cr
\code{\link{gtkTreeViewGetDestRowAtPos}(object, drag.x, drag.y)}\cr
\code{\link{gtkTreeViewCreateRowDragIcon}(object, path)}\cr
\code{\link{gtkTreeViewSetEnableSearch}(object, enable.search)}\cr
\code{\link{gtkTreeViewGetEnableSearch}(object)}\cr
\code{\link{gtkTreeViewGetSearchColumn}(object)}\cr
\code{\link{gtkTreeViewSetSearchColumn}(object, column)}\cr
\code{\link{gtkTreeViewGetSearchEqualFunc}(object)}\cr
\code{\link{gtkTreeViewSetSearchEqualFunc}(object, search.equal.func, search.user.data = NULL)}\cr
\code{\link{gtkTreeViewGetSearchEntry}(object)}\cr
\code{\link{gtkTreeViewSetSearchEntry}(object, entry = NULL)}\cr
\code{\link{gtkTreeViewGetSearchPositionFunc}(object)}\cr
\code{\link{gtkTreeViewSetSearchPositionFunc}(object, func, data)}\cr
\code{\link{gtkTreeViewGetFixedHeightMode}(object)}\cr
\code{\link{gtkTreeViewSetFixedHeightMode}(object, enable)}\cr
\code{\link{gtkTreeViewGetHoverSelection}(object)}\cr
\code{\link{gtkTreeViewSetHoverSelection}(object, hover)}\cr
\code{\link{gtkTreeViewGetHoverExpand}(object)}\cr
\code{\link{gtkTreeViewSetHoverExpand}(object, expand)}\cr
\code{\link{gtkTreeViewSetDestroyCountFunc}(object, func, data = NULL)}\cr
\code{\link{gtkTreeViewGetRowSeparatorFunc}(object)}\cr
\code{\link{gtkTreeViewSetRowSeparatorFunc}(object, func, data = NULL)}\cr
\code{\link{gtkTreeViewGetRubberBanding}(object)}\cr
\code{\link{gtkTreeViewSetRubberBanding}(object, enable)}\cr
\code{\link{gtkTreeViewGetEnableTreeLines}(object)}\cr
\code{\link{gtkTreeViewSetEnableTreeLines}(object, enabled)}\cr
\code{\link{gtkTreeViewGetGridLines}(object)}\cr
\code{\link{gtkTreeViewSetGridLines}(object, grid.lines)}\cr
\code{gtkTreeView(model = NULL, show = TRUE)}
}
\section{Hierarchy}{\preformatted{  \link{GObject}
   +----GInitiallyUnowned
         +----\link{GtkObject}
               +----\link{GtkWidget}
                     +----\link{GtkContainer}
                           +----GtkTreeView}}
\section{Interfaces}{GtkTreeView implements
 AtkImplementorIface.}
\section{Detailed Description}{Widget that displays any object that implements the \code{\link{GtkTreeModel}} interface.
  
Please refer to the tree widget conceptual overview 
for an overview of all the objects and data types related to the tree widget and how 
they work together.}
\section{Structures}{\describe{\item{\code{GtkTreeView}}{
\emph{undocumented
}

}}}
\section{Convenient Construction}{\code{gtkTreeView} is the result of collapsing the constructors of \code{GtkTreeView} (\code{\link{gtkTreeViewNew}}, \code{\link{gtkTreeViewNewWithModel}}) and accepts a subset of its arguments matching the required arguments of one of its delegate constructors.}
\section{Enums and Flags}{\describe{
\item{\code{GtkTreeViewDropPosition}}{
An enum for determining where a dropped row goes.

\describe{
\item{\code{before}}{dropped row is inserted before}
\item{\code{after}}{dropped row is inserted after}
\item{\code{into-or-before}}{dropped row becomes a child or is inserted before}
\item{\code{into-or-after}}{dropped row becomes a child or is inserted after}
}

}
\item{\code{GtkTreeViewGridLines}}{
\emph{undocumented
}

\describe{
\item{\code{none}}{\emph{undocumented
}}
\item{\code{horizontal}}{\emph{undocumented
}}
\item{\code{vertical}}{\emph{undocumented
}}
\item{\code{both}}{\emph{undocumented
}}
}

}
}}
\section{User Functions}{\describe{
\item{\code{GtkTreeViewColumnDropFunc(tree.view, column, prev.column, next.column, data)}}{
Function type for determining whether \code{column} can be dropped in a
particular spot (as determined by \code{prev.column} and \code{next.column}).  In
left to right locales, \code{prev.column} is on the left of the potential drop
spot, and \code{next.column} is on the right.  In right to left mode, this is
reversed.  This function should return \code{TRUE} if the spot is a valid drop
spot.  Please note that returning \code{TRUE} does not actually indicate that
the column drop was made, but is meant only to indicate a possible drop
spot to the user.

\describe{
\item{\code{tree.view}}{[\code{\link{GtkTreeView}}] A \code{\link{GtkTreeView}}}
\item{\code{column}}{[\code{\link{GtkTreeViewColumn}}] The \code{\link{GtkTreeViewColumn}} being dragged}
\item{\code{prev.column}}{[\code{\link{GtkTreeViewColumn}}] A \code{\link{GtkTreeViewColumn}} on one side of \code{column}}
\item{\code{next.column}}{[\code{\link{GtkTreeViewColumn}}] A \code{\link{GtkTreeViewColumn}} on the other side of \code{column}}
\item{\code{data}}{[R object] user data}
}

}
\item{\code{GtkTreeViewMappingFunc(tree.view, path, user.data)}}{
Function used for \code{\link{gtkTreeViewMapExpandedRows}}.

\describe{
\item{\code{tree.view}}{[\code{\link{GtkTreeView}}] A \code{\link{GtkTreeView}}}
\item{\code{path}}{[\code{\link{GtkTreePath}}] The path that's expanded}
\item{\code{user.data}}{[R object] user data}
}

}
\item{\code{GtkTreeViewSearchEqualFunc(model, column, key, iter, search.data)}}{
A function used for checking whether a row in \code{model} matches
a search key string entered by the user. Note the return value
is reversed from what you would normally expect, though it
has some similarity to \code{strcmp()} returning 0 for equal strings.

\describe{
\item{\code{model}}{[\code{\link{GtkTreeModel}}] the \code{\link{GtkTreeModel}} being searched}
\item{\code{column}}{[integer] the search column set by \code{\link{gtkTreeViewSetSearchColumn}}}
\item{\code{key}}{[character] the key string to compare with}
\item{\code{iter}}{[\code{\link{GtkTreeIter}}] a \code{\link{GtkTreeIter}} pointing the row of \code{model} that should be compared
  with \code{key}.}
\item{\code{search.data}}{[R object] user data from \code{\link{gtkTreeViewSetSearchEqualFunc}}}
}

}
\item{\code{GtkTreeViewSearchPositionFunc(tree.view, search.dialog, user.data)}}{
\emph{undocumented
}

\describe{
\item{\code{tree.view}}{[\code{\link{GtkTreeView}}] }
\item{\code{search.dialog}}{[\code{\link{GtkWidget}}] }
\item{\code{user.data}}{[R object] }
}

}
\item{\code{GtkTreeDestroyCountFunc(tree.view, path, children, user.data)}}{
\emph{undocumented
}

\describe{
\item{\code{tree.view}}{[\code{\link{GtkTreeView}}] }
\item{\code{path}}{[\code{\link{GtkTreePath}}] }
\item{\code{children}}{[integer] }
\item{\code{user.data}}{[R object] }
}

}
\item{\code{GtkTreeViewRowSeparatorFunc(model, iter, data)}}{
Function type for determining whether the row pointed to by \code{iter} should
be rendered as a separator. A common way to implement this is to have a
boolean column in the model, whose values the \code{\link{GtkTreeViewRowSeparatorFunc}}
returns.

\describe{
\item{\code{model}}{[\code{\link{GtkTreeModel}}] the \code{\link{GtkTreeModel}}}
\item{\code{iter}}{[\code{\link{GtkTreeIter}}] a \code{\link{GtkTreeIter}} pointing at a row in \code{model}}
\item{\code{data}}{[R object] user data}
}

}
}}
\section{Signals}{\describe{
\item{\code{columns-changed(tree.view, user.data)}}{
The number of columns of the treeview has changed.  

\describe{
\item{\code{tree.view}}{[\code{\link{GtkTreeView}}]  the object on which the signal is emitted }
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{cursor-changed(tree.view, user.data)}}{
The position of the cursor (focused cell) has changed.  

\describe{
\item{\code{tree.view}}{[\code{\link{GtkTreeView}}]  the object on which the signal is emitted}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{expand-collapse-cursor-row(treeview, arg1, arg2, arg3, user.data)}}{
\emph{undocumented
}

\describe{
\item{\code{treeview}}{[\code{\link{GtkTreeView}}] the object which received the signal.}
\item{\code{arg1}}{[logical] }
\item{\code{arg2}}{[logical] }
\item{\code{arg3}}{[logical] }
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{move-cursor(treeview, arg1, arg2, user.data)}}{
\emph{undocumented
}

\describe{
\item{\code{treeview}}{[\code{\link{GtkTreeView}}] the object which received the signal.}
\item{\code{arg1}}{[\code{\link{GtkMovementStep}}] }
\item{\code{arg2}}{[integer] }
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{row-activated(tree.view, path, column, user.data)}}{
The "row-activated" signal is emitted when the method
\code{\link{gtkTreeViewRowActivated}} is called or the user double clicks 
a treeview row. It is also emitted when a non-editable row is 
selected and one of the keys: Space, Shift+Space, Return or 
Enter is pressed.
  
For selection handling refer to the tree 
widget conceptual overview as well as \code{\link{GtkTreeSelection}}.  

\describe{
\item{\code{tree.view}}{[\code{\link{GtkTreeView}}]  the object on which the signal is emitted}
\item{\code{path}}{[\code{\link{GtkTreePath}}]  the \code{\link{GtkTreePath}} for the activated row}
\item{\code{column}}{[\code{\link{GtkTreeViewColumn}}]  the \code{\link{GtkTreeViewColumn}} in which the activation occurred}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{row-collapsed(tree.view, iter, path, user.data)}}{
The given row has been collapsed (child nodes are hidden).  

\describe{
\item{\code{tree.view}}{[\code{\link{GtkTreeView}}]  the object on which the signal is emitted}
\item{\code{iter}}{[\code{\link{GtkTreeIter}}]  the tree iter of the collapsed row}
\item{\code{path}}{[\code{\link{GtkTreePath}}]  a tree path that points to the row }
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{row-expanded(tree.view, iter, path, user.data)}}{
The given row has been expanded (child nodes are shown).  

\describe{
\item{\code{tree.view}}{[\code{\link{GtkTreeView}}]  the object on which the signal is emitted}
\item{\code{iter}}{[\code{\link{GtkTreeIter}}]  the tree iter of the expanded row}
\item{\code{path}}{[\code{\link{GtkTreePath}}]  a tree path that points to the row }
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{select-all(treeview, user.data)}}{
\emph{undocumented
}

\describe{
\item{\code{treeview}}{[\code{\link{GtkTreeView}}] the object which received the signal.}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{select-cursor-parent(treeview, user.data)}}{
\emph{undocumented
}

\describe{
\item{\code{treeview}}{[\code{\link{GtkTreeView}}] the object which received the signal.}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{select-cursor-row(treeview, arg1, user.data)}}{
\emph{undocumented
}

\describe{
\item{\code{treeview}}{[\code{\link{GtkTreeView}}] the object which received the signal.}
\item{\code{arg1}}{[logical] }
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{set-scroll-adjustments(treeview, arg1, arg2, user.data)}}{
\emph{undocumented
}

\describe{
\item{\code{treeview}}{[\code{\link{GtkTreeView}}] the object which received the signal.}
\item{\code{arg1}}{[\code{\link{GtkAdjustment}}] }
\item{\code{arg2}}{[\code{\link{GtkAdjustment}}] }
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{start-interactive-search(treeview, user.data)}}{
\emph{undocumented
}

\describe{
\item{\code{treeview}}{[\code{\link{GtkTreeView}}] the object which received the signal.}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{test-collapse-row(tree.view, iter, path, user.data)}}{
The given row is about to be collapsed (hide its children nodes). Use this
signal if you need to control the collapsibility of individual rows.  

\describe{
\item{\code{tree.view}}{[\code{\link{GtkTreeView}}]  the object on which the signal is emitted}
\item{\code{iter}}{[\code{\link{GtkTreeIter}}]  the tree iter of the row to collapse}
\item{\code{path}}{[\code{\link{GtkTreePath}}]  a tree path that points to the row }
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{test-expand-row(tree.view, iter, path, user.data)}}{
The given row is about to be expanded (show its children nodes). Use this
signal if you need to control the expandability of individual rows.  

\describe{
\item{\code{tree.view}}{[\code{\link{GtkTreeView}}]  the object on which the signal is emitted}
\item{\code{iter}}{[\code{\link{GtkTreeIter}}]  the tree iter of the row to expand}
\item{\code{path}}{[\code{\link{GtkTreePath}}]  a tree path that points to the row }
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{toggle-cursor-row(treeview, user.data)}}{
\emph{undocumented
}

\describe{
\item{\code{treeview}}{[\code{\link{GtkTreeView}}] the object which received the signal.}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{unselect-all(treeview, user.data)}}{
\emph{undocumented
}

\describe{
\item{\code{treeview}}{[\code{\link{GtkTreeView}}] the object which received the signal.}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
}}
\section{Properties}{\describe{
\item{\code{enable-grid-lines} [\code{\link{GtkTreeViewGridLines}} : Read / Write]}{

Whether grid lines should be drawn in the tree view.  Default value: GTK\_TREE\_VIEW\_GRID\_LINES\_NONE

}
\item{\code{enable-search} [logical : Read / Write]}{

View allows user to search through columns interactively.  Default value: TRUE

}
\item{\code{enable-tree-lines} [logical : Read / Write]}{

Whether tree lines should be drawn in the tree view.  Default value: FALSE

}
\item{\code{expander-column} [\code{\link{GtkTreeViewColumn}} : Read / Write]}{

Set the column for the expander column.

}
\item{\code{fixed-height-mode} [logical : Read / Write]}{

Setting the ::fixed-height-mode property to \code{TRUE} speeds up 
\code{\link{GtkTreeView}} by assuming that all rows have the same height. 
Only enable this option if all rows are the same height.  
Please see \code{\link{gtkTreeViewSetFixedHeightMode}} for more 
information on this option.  

  Default value: FALSE  Since  2.4

}
\item{\code{hadjustment} [\code{\link{GtkAdjustment}} : Read / Write]}{

Horizontal Adjustment for the widget.

}
\item{\code{headers-clickable} [logical : Read / Write]}{

Column headers respond to click events.  Default value: FALSE

}
\item{\code{headers-visible} [logical : Read / Write]}{

Show the column header buttons.  Default value: TRUE

}
\item{\code{hover-expand} [logical : Read / Write]}{

Enables of disables the hover expansion mode of \code{tree.view}.
Hover expansion makes rows expand or collaps if the pointer moves 
over them.
  
This mode is primarily indended for treeviews in popups, e.g.
in \code{\link{GtkComboBox}} or \code{\link{GtkEntryCompletion}}.  

  Default value: FALSE  Since  2.6

}
\item{\code{hover-selection} [logical : Read / Write]}{

Enables of disables the hover selection mode of \code{tree.view}.
Hover selection makes the selected row follow the pointer.
Currently, this works only for the selection modes 
\code{GTK_SELECTION_SINGLE} and \code{GTK_SELECTION_BROWSE}.
  
This mode is primarily indended for treeviews in popups, e.g.
in \code{\link{GtkComboBox}} or \code{\link{GtkEntryCompletion}}.  

  Default value: FALSE  Since  2.6

}
\item{\code{level-indentation} [integer : Read / Write]}{

Extra indentation for each level.  Allowed values: >= 0  Default value: 0

}
\item{\code{model} [\code{\link{GtkTreeModel}} : Read / Write]}{

The model for the tree view.

}
\item{\code{reorderable} [logical : Read / Write]}{

View is reorderable.  Default value: FALSE

}
\item{\code{rubber-banding} [logical : Read / Write]}{

Whether to enable selection of multiple items by dragging the mouse pointer.  Default value: FALSE

}
\item{\code{rules-hint} [logical : Read / Write]}{

Set a hint to the theme engine to draw rows in alternating colors.  Default value: FALSE

}
\item{\code{search-column} [integer : Read / Write]}{

Model column to search through when searching through code.  Allowed values: >= -1  Default value: -1

}
\item{\code{show-expanders} [logical : Read / Write]}{

View has expanders.  Default value: TRUE

}
\item{\code{vadjustment} [\code{\link{GtkAdjustment}} : Read / Write]}{

Vertical Adjustment for the widget.

}
}}
\section{Style Properties}{\describe{
\item{\code{allow-rules} [logical : Read]}{

Allow drawing of alternating color rows.  Default value: TRUE

}
\item{\code{even-row-color} [\code{\link{GdkColor}} : Read]}{

Color to use for even rows.

}
\item{\code{expander-size} [integer : Read]}{

Size of the expander arrow.  Allowed values: >= 0  Default value: 12

}
\item{\code{grid-line-pattern} [character : Read]}{

Dash pattern used to draw the tree view grid lines.  Default value: "\\001\\001"

}
\item{\code{grid-line-width} [integer : Read]}{

Width, in pixels, of the tree view grid lines.  Allowed values: >= 0  Default value: 1

}
\item{\code{horizontal-separator} [integer : Read]}{

Horizontal space between cells.  Must be an even number.  Allowed values: >= 0  Default value: 2

}
\item{\code{indent-expanders} [logical : Read]}{

Make the expanders indented.  Default value: TRUE

}
\item{\code{odd-row-color} [\code{\link{GdkColor}} : Read]}{

Color to use for odd rows.

}
\item{\code{row-ending-details} [logical : Read]}{

Enable extended row background theming.  Default value: FALSE

}
\item{\code{tree-line-pattern} [character : Read]}{

Dash pattern used to draw the tree view lines.  Default value: "\\001\\001"

}
\item{\code{tree-line-width} [integer : Read]}{

Width, in pixels, of the tree view lines.  Allowed values: >= 0  Default value: 1

}
\item{\code{vertical-separator} [integer : Read]}{

Vertical space between cells.  Must be an even number.  Allowed values: >= 0  Default value: 2

}
}}
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/GtkTreeView.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\seealso{
\code{\link{GtkTreeViewColumn}}
\code{\link{GtkTreeSelection}}
\code{\link{GtkTreeSortable}}
\code{\link{GtkTreeModelSort}}
\code{\link{GtkListStore}}
\code{\link{GtkTreeStore}}
\code{\link{GtkCellRenderer}}
\code{\link{GtkCellEditable}}
\code{\link{GtkCellRendererPixbuf}}
\code{\link{GtkCellRendererText}}
\code{\link{GtkCellRendererToggle}}
}
\keyword{internal}
