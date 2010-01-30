\alias{GtkTreeViewColumn}
\alias{gtkTreeViewColumn}
\alias{GtkTreeCellDataFunc}
\alias{GtkTreeViewColumnSizing}
\name{GtkTreeViewColumn}
\title{GtkTreeViewColumn}
\description{A visible column in a GtkTreeView widget}
\section{Methods and Functions}{
\code{\link{gtkTreeViewColumnNew}()}\cr
\code{\link{gtkTreeViewColumnNewWithAttributes}(title, cell, ...)}\cr
\code{\link{gtkTreeViewColumnPackStart}(object, cell, expand = TRUE)}\cr
\code{\link{gtkTreeViewColumnPackEnd}(object, cell, expand = TRUE)}\cr
\code{\link{gtkTreeViewColumnClear}(object)}\cr
\code{\link{gtkTreeViewColumnGetCellRenderers}(object)}\cr
\code{\link{gtkTreeViewColumnAddAttribute}(object, cell.renderer, attribute, column)}\cr
\code{\link{gtkTreeViewColumnSetAttributes}(object, cell.renderer, ...)}\cr
\code{\link{gtkTreeViewColumnSetCellDataFunc}(object, cell.renderer, func, func.data = NULL)}\cr
\code{\link{gtkTreeViewColumnClearAttributes}(object, cell.renderer)}\cr
\code{\link{gtkTreeViewColumnSetSpacing}(object, spacing)}\cr
\code{\link{gtkTreeViewColumnGetSpacing}(object)}\cr
\code{\link{gtkTreeViewColumnSetVisible}(object, visible)}\cr
\code{\link{gtkTreeViewColumnGetVisible}(object)}\cr
\code{\link{gtkTreeViewColumnSetResizable}(object, resizable)}\cr
\code{\link{gtkTreeViewColumnGetResizable}(object)}\cr
\code{\link{gtkTreeViewColumnSetSizing}(object, type)}\cr
\code{\link{gtkTreeViewColumnGetSizing}(object)}\cr
\code{\link{gtkTreeViewColumnGetWidth}(object)}\cr
\code{\link{gtkTreeViewColumnGetFixedWidth}(object)}\cr
\code{\link{gtkTreeViewColumnSetFixedWidth}(object, fixed.width)}\cr
\code{\link{gtkTreeViewColumnSetMinWidth}(object, min.width)}\cr
\code{\link{gtkTreeViewColumnGetMinWidth}(object)}\cr
\code{\link{gtkTreeViewColumnSetMaxWidth}(object, max.width)}\cr
\code{\link{gtkTreeViewColumnGetMaxWidth}(object)}\cr
\code{\link{gtkTreeViewColumnClicked}(object)}\cr
\code{\link{gtkTreeViewColumnSetTitle}(object, title)}\cr
\code{\link{gtkTreeViewColumnGetTitle}(object)}\cr
\code{\link{gtkTreeViewColumnSetExpand}(object, expand)}\cr
\code{\link{gtkTreeViewColumnGetExpand}(object)}\cr
\code{\link{gtkTreeViewColumnSetClickable}(object, active)}\cr
\code{\link{gtkTreeViewColumnGetClickable}(object)}\cr
\code{\link{gtkTreeViewColumnSetWidget}(object, widget = NULL)}\cr
\code{\link{gtkTreeViewColumnGetWidget}(object)}\cr
\code{\link{gtkTreeViewColumnSetAlignment}(object, xalign)}\cr
\code{\link{gtkTreeViewColumnGetAlignment}(object)}\cr
\code{\link{gtkTreeViewColumnSetReorderable}(object, reorderable)}\cr
\code{\link{gtkTreeViewColumnGetReorderable}(object)}\cr
\code{\link{gtkTreeViewColumnSetSortColumnId}(object, sort.column.id)}\cr
\code{\link{gtkTreeViewColumnGetSortColumnId}(object)}\cr
\code{\link{gtkTreeViewColumnSetSortIndicator}(object, setting)}\cr
\code{\link{gtkTreeViewColumnGetSortIndicator}(object)}\cr
\code{\link{gtkTreeViewColumnSetSortOrder}(object, order)}\cr
\code{\link{gtkTreeViewColumnGetSortOrder}(object)}\cr
\code{\link{gtkTreeViewColumnCellSetCellData}(object, tree.model, iter, is.expander, is.expanded)}\cr
\code{\link{gtkTreeViewColumnCellGetSize}(object)}\cr
\code{\link{gtkTreeViewColumnCellGetPosition}(object, cell.renderer)}\cr
\code{\link{gtkTreeViewColumnCellIsVisible}(object)}\cr
\code{\link{gtkTreeViewColumnFocusCell}(object, cell)}\cr
\code{\link{gtkTreeViewColumnQueueResize}(object)}\cr
\code{\link{gtkTreeViewColumnGetTreeView}(object)}\cr
\code{gtkTreeViewColumn(title, cell, ...)}
}
\section{Hierarchy}{\preformatted{GObject
   +----GInitiallyUnowned
         +----GtkObject
               +----GtkTreeViewColumn}}
\section{Interfaces}{GtkTreeViewColumn implements
 \verb{\link{GtkBuildable}} and  \verb{\link{GtkCellLayout}}.}
\section{Detailed Description}{The GtkTreeViewColumn object represents a visible column in a \verb{\link{GtkTreeView}} widget.
It allows to set properties of the column header, and functions as a holding pen for 
the cell renderers which determine how the data in the column is displayed.
  
Please refer to the tree widget conceptual overview 
for an overview of all the objects and data types related to the tree widget and how 
they work together.}
\section{Structures}{\describe{\item{\verb{GtkTreeViewColumn}}{
\emph{undocumented
}

}}}
\section{Convenient Construction}{\code{gtkTreeViewColumn} is the result of collapsing the constructors of \code{GtkTreeViewColumn} (\code{\link{gtkTreeViewColumnNew}}, \code{\link{gtkTreeViewColumnNewWithAttributes}}) and accepts a subset of its arguments matching the required arguments of one of its delegate constructors.}
\section{Enums and Flags}{\describe{\item{\verb{GtkTreeViewColumnSizing}}{
The sizing method the column uses to determine its width.  Please note
that \code{GTK.TREE.VIEW.COLUMN.AUTOSIZE} are inefficient for large views, and
can make columns appear choppy.

\describe{
\item{\verb{grow-only}}{Columns only get bigger in reaction to changes in the model}
\item{\verb{autosize}}{Columns resize to be the optimal size everytime the model changes.}
\item{\verb{fixed}}{Columns are a fixed numbers of pixels wide.}
}

}}}
\section{User Functions}{\describe{\item{\code{GtkTreeCellDataFunc(tree.column, cell, tree.model, iter, data)}}{
A function to set the properties of a cell instead of just using the
straight mapping between the cell and the model.  This is useful for
customizing the cell renderer.  For example, a function might get an
integer from the \code{tree.model}, and render it to the "text" attribute of
"cell" by converting it to its written equivilent.  This is set by
calling \code{\link{gtkTreeViewColumnSetCellDataFunc}}

\describe{
\item{\code{tree.column}}{[\verb{\link{GtkTreeViewColumn}}] A \verb{GtkTreeColumn}}
\item{\code{cell}}{[\verb{\link{GtkCellRenderer}}] The \verb{\link{GtkCellRenderer}} that is being rendered by \code{tree.column}}
\item{\code{tree.model}}{[\verb{\link{GtkTreeModel}}] The \verb{\link{GtkTreeModel}} being rendered}
\item{\code{iter}}{[\verb{\link{GtkTreeIter}}] A \verb{\link{GtkTreeIter}} of the current row rendered}
\item{\code{data}}{[R object] user data}
}


}}}
\section{Signals}{\describe{\item{\code{clicked(treeviewcolumn, user.data)}}{
\emph{undocumented
}

\describe{
\item{\code{treeviewcolumn}}{[\verb{\link{GtkTreeViewColumn}}] the object which received the signal.}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}


}}}
\section{Properties}{\describe{
\item{\verb{alignment} [numeric : Read / Write]}{

X Alignment of the column header text or widget.  Allowed values: [0,1]  Default value: 0

}
\item{\verb{clickable} [logical : Read / Write]}{

Whether the header can be clicked.  Default value: FALSE

}
\item{\verb{expand} [logical : Read / Write]}{

Column gets share of extra width allocated to the widget.  Default value: FALSE

}
\item{\verb{fixed-width} [integer : Read / Write]}{

Current fixed width of the column.  Allowed values: >= 1  Default value: 1

}
\item{\verb{max-width} [integer : Read / Write]}{

Maximum allowed width of the column.  Allowed values: >= -1  Default value: -1

}
\item{\verb{min-width} [integer : Read / Write]}{

Minimum allowed width of the column.  Allowed values: >= -1  Default value: -1

}
\item{\verb{reorderable} [logical : Read / Write]}{

Whether the column can be reordered around the headers.  Default value: FALSE

}
\item{\verb{resizable} [logical : Read / Write]}{

Column is user-resizable.  Default value: FALSE

}
\item{\verb{sizing} [\code{\link{GtkTreeViewColumnSizing}} : Read / Write]}{

Resize mode of the column.  Default value: GTK_TREE_VIEW_COLUMN_GROW_ONLY

}
\item{\verb{sort-indicator} [logical : Read / Write]}{

Whether to show a sort indicator.  Default value: FALSE

}
\item{\verb{sort-order} [\code{\link{GtkSortType}} : Read / Write]}{

Sort direction the sort indicator should indicate.  Default value: GTK_SORT_ASCENDING

}
\item{\verb{spacing} [integer : Read / Write]}{

Space which is inserted between cells.  Allowed values: >= 0  Default value: 0

}
\item{\verb{title} [character : *                : Read / Write]}{

Title to appear in column header.  Default value: ""

}
\item{\verb{visible} [logical : Read / Write]}{

Whether to display the column.  Default value: TRUE

}
\item{\verb{widget} [\verb{\link{GtkWidget}} : *            : Read / Write]}{

Widget to put in column header button instead of column title.

}
\item{\verb{width} [integer : Read]}{

Current width of the column.  Allowed values: >= 0  Default value: 0

}
}}
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/GtkTreeViewColumn.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\seealso{
\verb{\link{GtkTreeView}}
\verb{\link{GtkTreeSelection}}
\verb{\link{GtkTreeSortable}}
\verb{\link{GtkTreeModelSort}}
\verb{\link{GtkListStore}}
\verb{\link{GtkTreeStore}}
\verb{\link{GtkCellRenderer}}
\verb{\link{GtkCellEditable}}
\verb{\link{GtkCellRendererPixbuf}}
\verb{\link{GtkCellRendererText}}
\verb{\link{GtkCellRendererToggle}}
}
\keyword{internal}
