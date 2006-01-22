\alias{GtkTreeView}
\alias{gtkTreeView}
\alias{GtkTreeViewColumnDropFunc}
\alias{GtkTreeViewMappingFunc}
\alias{GtkTreeViewSearchEqualFunc}
\alias{GtkTreeDestroyCountFunc}
\alias{GtkTreeViewRowSeparatorFunc}
\alias{GtkTreeViewDropPosition}
\name{GtkTreeView}
\title{GtkTreeView}
\description{A widget for displaying both trees and lists}
\usage{gtkTreeView(model = NULL, show = TRUE)}
\section{Methods and Functions}{
\link{gtkTreeViewNew}(show = TRUE)
\link{gtkTreeViewNewWithModel}(model = NULL, show = TRUE)
\link{gtkTreeViewGetModel}(object)
\link{gtkTreeViewSetModel}(object, model = NULL)
\link{gtkTreeViewGetSelection}(object)
\link{gtkTreeViewGetHadjustment}(object)
\link{gtkTreeViewSetHadjustment}(object, adjustment)
\link{gtkTreeViewGetVadjustment}(object)
\link{gtkTreeViewSetVadjustment}(object, adjustment)
\link{gtkTreeViewGetHeadersVisible}(object)
\link{gtkTreeViewSetHeadersVisible}(object, headers.visible)
\link{gtkTreeViewColumnsAutosize}(object)
\link{gtkTreeViewSetHeadersClickable}(object, active)
\link{gtkTreeViewSetRulesHint}(object, setting)
\link{gtkTreeViewGetRulesHint}(object)
\link{gtkTreeViewAppendColumn}(object, column)
\link{gtkTreeViewRemoveColumn}(object, column)
\link{gtkTreeViewInsertColumn}(object, column, position)
\link{gtkTreeViewInsertColumnWithAttributes}(object, position, title, cell, ...)
\link{gtkTreeViewInsertColumnWithDataFunc}(object, position, title, cell, func, data = NULL)
\link{gtkTreeViewGetColumn}(object, n)
\link{gtkTreeViewGetColumns}(object)
\link{gtkTreeViewMoveColumnAfter}(object, column, base.column = NULL)
\link{gtkTreeViewSetExpanderColumn}(object, column)
\link{gtkTreeViewGetExpanderColumn}(object)
\link{gtkTreeViewSetColumnDragFunction}(object, func, user.data = NULL)
\link{gtkTreeViewScrollToPoint}(object, tree.x, tree.y)
\link{gtkTreeViewScrollToCell}(object, path, column = NULL, use.align = FALSE, row.align = 0.0, col.align = 0.0)
\link{gtkTreeViewSetCursor}(object, path, focus.column = NULL, start.editing = FALSE)
\link{gtkTreeViewSetCursorOnCell}(object, path, focus.column = NULL, focus.cell = NULL, start.editing = FALSE)
\link{gtkTreeViewGetCursor}(object)
\link{gtkTreeViewRowActivated}(object, path, column)
\link{gtkTreeViewExpandAll}(object)
\link{gtkTreeViewCollapseAll}(object)
\link{gtkTreeViewExpandToPath}(object, path)
\link{gtkTreeViewExpandRow}(object, path, open.all)
\link{gtkTreeViewCollapseRow}(object, path)
\link{gtkTreeViewMapExpandedRows}(object, func, data = NULL)
\link{gtkTreeViewRowExpanded}(object, path)
\link{gtkTreeViewSetReorderable}(object, reorderable)
\link{gtkTreeViewGetReorderable}(object)
\link{gtkTreeViewGetPathAtPos}(object, x, y)
\link{gtkTreeViewGetCellArea}(object, path, column)
\link{gtkTreeViewGetBackgroundArea}(object, path, column)
\link{gtkTreeViewGetVisibleRect}(object)
\link{gtkTreeViewGetVisibleRange}(object)
\link{gtkTreeViewGetBinWindow}(object)
\link{gtkTreeViewWidgetToTreeCoords}(object, wx, wy)
\link{gtkTreeViewTreeToWidgetCoords}(object, tx, ty)
\link{gtkTreeViewEnableModelDragDest}(object, targets, actions)
\link{gtkTreeViewEnableModelDragSource}(object, start.button.mask, targets, actions)
\link{gtkTreeViewUnsetRowsDragSource}(object)
\link{gtkTreeViewUnsetRowsDragDest}(object)
\link{gtkTreeViewSetDragDestRow}(object, path, pos)
\link{gtkTreeViewGetDragDestRow}(object, path, pos)
\link{gtkTreeViewGetDestRowAtPos}(object, drag.x, drag.y)
\link{gtkTreeViewCreateRowDragIcon}(object, path)
\link{gtkTreeViewSetEnableSearch}(object, enable.search)
\link{gtkTreeViewGetEnableSearch}(object)
\link{gtkTreeViewGetSearchColumn}(object)
\link{gtkTreeViewSetSearchColumn}(object, column)
\link{gtkTreeViewGetSearchEqualFunc}(object)
\link{gtkTreeViewSetSearchEqualFunc}(object, search.equal.func, search.user.data = NULL)
\link{gtkTreeViewGetFixedHeightMode}(object)
\link{gtkTreeViewSetFixedHeightMode}(object, enable)
\link{gtkTreeViewGetHoverSelection}(object)
\link{gtkTreeViewSetHoverSelection}(object, hover)
\link{gtkTreeViewGetHoverExpand}(object)
\link{gtkTreeViewSetHoverExpand}(object, expand)
\link{gtkTreeViewSetDestroyCountFunc}(object, func, data = NULL)
\link{gtkTreeViewGetRowSeparatorFunc}(object)
\link{gtkTreeViewSetRowSeparatorFunc}(object, func, data = NULL)
}
\section{Hierarchy}{\preformatted{  \link{GObject}
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
\section{Structures}{\describe{\item{\code{GtkTreeView}}{\emph{undocumented
}}}}
\section{Convenient Construction}{\code{gtkTreeView} is the result of collapsing the constructors of \code{GtkTreeView} (\code{\link{gtkTreeViewNew}}, \code{\link{gtkTreeViewNewWithModel}}) and accepts a subset of its arguments matching the required arguments of one of its delegate constructors.}
\section{Enums and Flags}{\describe{\item{\code{enum GtkTreeViewDropPosition}}{
An enum for determining where a dropped row goes.

\describe{
\item{\code{GTK_TREE_VIEW_DROP_BEFORE (before)}}{\emph{undocumented
}}
\item{\code{GTK_TREE_VIEW_DROP_AFTER (after)}}{\emph{undocumented
}}
\item{\code{GTK_TREE_VIEW_DROP_INTO_OR_BEFORE (into-or-before)}}{\emph{undocumented
}}
\item{\code{GTK_TREE_VIEW_DROP_INTO_OR_AFTER (into-or-after)}}{\emph{undocumented
}}
}

}}}
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
\item{\code{GtkTreeDestroyCountFunc(tree.view, path, children, user.data)}}{


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
\item{\code{columns-changed(treeview, user.data)}}{


\describe{
\item{\code{treeview}}{[\code{\link{GtkTreeView}}] the object which received the signal.}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{cursor-changed(treeview, user.data)}}{


\describe{
\item{\code{treeview}}{[\code{\link{GtkTreeView}}] the object which received the signal.}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{expand-collapse-cursor-row(treeview, arg1, arg2, arg3, user.data)}}{


\describe{
\item{\code{treeview}}{[\code{\link{GtkTreeView}}] the object which received the signal.}
\item{\code{arg1}}{[logical] }
\item{\code{arg2}}{[logical] }
\item{\code{arg3}}{[logical] }
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{move-cursor(treeview, arg1, arg2, user.data)}}{


\describe{
\item{\code{treeview}}{[\code{\link{GtkTreeView}}] the object which received the signal.}
\item{\code{arg1}}{[\code{\link{GtkMovementStep}}] }
\item{\code{arg2}}{[integer] }
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{row-activated(treeview, arg1, arg2, user.data)}}{


\describe{
\item{\code{treeview}}{[\code{\link{GtkTreeView}}] the object which received the signal.}
\item{\code{arg1}}{[\code{\link{GtkTreePath}}] }
\item{\code{arg2}}{[\code{\link{GtkTreeViewColumn}}] }
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{row-collapsed(treeview, arg1, arg2, user.data)}}{


\describe{
\item{\code{treeview}}{[\code{\link{GtkTreeView}}] the object which received the signal.}
\item{\code{arg1}}{[\code{\link{GtkTreeIter}}] }
\item{\code{arg2}}{[\code{\link{GtkTreePath}}] }
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{row-expanded(treeview, arg1, arg2, user.data)}}{


\describe{
\item{\code{treeview}}{[\code{\link{GtkTreeView}}] the object which received the signal.}
\item{\code{arg1}}{[\code{\link{GtkTreeIter}}] }
\item{\code{arg2}}{[\code{\link{GtkTreePath}}] }
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{select-all(treeview, user.data)}}{


\describe{
\item{\code{treeview}}{[\code{\link{GtkTreeView}}] the object which received the signal.}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{select-cursor-parent(treeview, user.data)}}{


\describe{
\item{\code{treeview}}{[\code{\link{GtkTreeView}}] the object which received the signal.}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{select-cursor-row(treeview, arg1, user.data)}}{


\describe{
\item{\code{treeview}}{[\code{\link{GtkTreeView}}] the object which received the signal.}
\item{\code{arg1}}{[logical] }
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{set-scroll-adjustments(treeview, arg1, arg2, user.data)}}{


\describe{
\item{\code{treeview}}{[\code{\link{GtkTreeView}}] the object which received the signal.}
\item{\code{arg1}}{[\code{\link{GtkAdjustment}}] }
\item{\code{arg2}}{[\code{\link{GtkAdjustment}}] }
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{start-interactive-search(treeview, user.data)}}{


\describe{
\item{\code{treeview}}{[\code{\link{GtkTreeView}}] the object which received the signal.}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{test-collapse-row(treeview, arg1, arg2, user.data)}}{


\describe{
\item{\code{treeview}}{[\code{\link{GtkTreeView}}] the object which received the signal.}
\item{\code{arg1}}{[\code{\link{GtkTreeIter}}] }
\item{\code{arg2}}{[\code{\link{GtkTreePath}}] }
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{test-expand-row(treeview, arg1, arg2, user.data)}}{


\describe{
\item{\code{treeview}}{[\code{\link{GtkTreeView}}] the object which received the signal.}
\item{\code{arg1}}{[\code{\link{GtkTreeIter}}] }
\item{\code{arg2}}{[\code{\link{GtkTreePath}}] }
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{toggle-cursor-row(treeview, user.data)}}{


\describe{
\item{\code{treeview}}{[\code{\link{GtkTreeView}}] the object which received the signal.}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{unselect-all(treeview, user.data)}}{


\describe{
\item{\code{treeview}}{[\code{\link{GtkTreeView}}] the object which received the signal.}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
}}
\section{Properties}{\describe{
\item{\code{enable-search} [logical : Read / Write]}{

View allows user to search through columns interactively.  Default value: TRUE

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
\item{\code{model} [\code{\link{GtkTreeModel}} : Read / Write]}{

The model for the tree view.

}
\item{\code{reorderable} [logical : Read / Write]}{

View is reorderable.  Default value: FALSE

}
\item{\code{rules-hint} [logical : Read / Write]}{

Set a hint to the theme engine to draw rows in alternating colors.  Default value: FALSE

}
\item{\code{search-column} [integer : Read / Write]}{

Model column to search through when searching through code.  Allowed values: >= -1  Default value: -1

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
\item{\code{horizontal-separator} [integer : Read]}{

Horizontal space between cells.  Must be an even number.  Allowed values: >= 0  Default value: 2

}
\item{\code{indent-expanders} [logical : Read]}{

Make the expanders indented.  Default value: TRUE

}
\item{\code{odd-row-color} [\code{\link{GdkColor}} : Read]}{

Color to use for odd rows.

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
