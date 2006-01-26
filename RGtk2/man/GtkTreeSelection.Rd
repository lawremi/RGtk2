\alias{GtkTreeSelection}
\alias{GtkTreeSelectionFunc}
\alias{GtkTreeSelectionForeachFunc}
\name{GtkTreeSelection}
\title{GtkTreeSelection}
\description{The selection object for }
\section{Methods and Functions}{
\code{\link{gtkTreeSelectionSetMode}(object, type)}\cr
\code{\link{gtkTreeSelectionGetMode}(object)}\cr
\code{\link{gtkTreeSelectionSetSelectFunction}(object, func, data = NULL)}\cr
\code{\link{gtkTreeSelectionGetUserData}(object)}\cr
\code{\link{gtkTreeSelectionGetTreeView}(object)}\cr
\code{\link{gtkTreeSelectionGetSelected}(object)}\cr
\code{\link{gtkTreeSelectionSelectedForeach}(object, func, data = NULL)}\cr
\code{\link{gtkTreeSelectionGetSelectedRows}(object)}\cr
\code{\link{gtkTreeSelectionCountSelectedRows}(object)}\cr
\code{\link{gtkTreeSelectionSelectPath}(object, path)}\cr
\code{\link{gtkTreeSelectionUnselectPath}(object, path)}\cr
\code{\link{gtkTreeSelectionPathIsSelected}(object, path)}\cr
\code{\link{gtkTreeSelectionSelectIter}(object, iter)}\cr
\code{\link{gtkTreeSelectionUnselectIter}(object, iter)}\cr
\code{\link{gtkTreeSelectionIterIsSelected}(object, iter)}\cr
\code{\link{gtkTreeSelectionSelectAll}(object)}\cr
\code{\link{gtkTreeSelectionUnselectAll}(object)}\cr
\code{\link{gtkTreeSelectionSelectRange}(object, start.path, end.path)}\cr
\code{\link{gtkTreeSelectionUnselectRange}(object, start.path, end.path)}\cr

}
\section{Hierarchy}{\preformatted{  \link{GObject}
   +----GtkTreeSelection}}
\section{Detailed Description}{The \code{\link{GtkTreeSelection}} object is a helper object to manage the selection
for a \code{\link{GtkTreeView}} widget.  The \code{\link{GtkTreeSelection}} object is
automatically created when a new \code{\link{GtkTreeView}} widget is created, and
cannot exist independentally of this widget.  The primary reason the
\code{\link{GtkTreeSelection}} objects exists is for cleanliness of code and API.
That is, there is no conceptual reason all these functions could not be
methods on the \code{\link{GtkTreeView}} widget instead of a separate function.
  
The \code{\link{GtkTreeSelection}} object is gotten from a \code{\link{GtkTreeView}} by calling
\code{\link{gtkTreeViewGetSelection}}.  It can be manipulated to check the
selection status of the tree, as well as select and deselect individual
rows.  Selection is done completely view side.  As a result, multiple
views of the same model can have completely different selections.
Additionally, you cannot change the selection of a row on the model that
is not currently displayed by the view without expanding its parents
first.
  
One of the important things to remember when monitoring the selection of
a view is that the "changed" signal is mostly a hint.  That is, it may
only emit one signal when a range of rows is selected.  Additionally, it
may on occasion emit a "changed" signal when nothing has happened
(mostly as a result of programmers calling select_row on an already
selected row).}
\section{Structures}{\describe{\item{\code{GtkTreeSelection}}{\emph{undocumented
}}}}
\section{User Functions}{\describe{
\item{\code{GtkTreeSelectionFunc(selection, model, path, path.currently.selected, data)}}{
A function used by \code{\link{gtkTreeSelectionSetSelectFunction}} to filter
whether or not a row may be selected.  It is called whenever a row's
state might change.  A return value of \code{TRUE} indicates to \code{selection}
that it is okay to change the selection.

\describe{
\item{\code{selection}}{[\code{\link{GtkTreeSelection}}] A \code{\link{GtkTreeSelection}}}
\item{\code{model}}{[\code{\link{GtkTreeModel}}] A \code{\link{GtkTreeModel}} being viewed}
\item{\code{path}}{[\code{\link{GtkTreePath}}] The \code{\link{GtkTreePath}} of the row in question}
\item{\code{path.currently.selected}}{[logical] \code{TRUE}, if the path is currently selected}
\item{\code{data}}{[R object] user data}
}

}
\item{\code{GtkTreeSelectionForeachFunc(model, path, iter, data)}}{
A function used by \code{\link{gtkTreeSelectionSelectedForeach}} to map all
selected rows.  It will be called on every selected row in the view.

\describe{
\item{\code{model}}{[\code{\link{GtkTreeModel}}] The \code{\link{GtkTreeModel}} being viewed}
\item{\code{path}}{[\code{\link{GtkTreePath}}] The \code{\link{GtkTreePath}} of a selected row}
\item{\code{iter}}{[\code{\link{GtkTreeIter}}] A \code{\link{GtkTreeIter}} pointing to a selected row}
\item{\code{data}}{[R object] user data}
}

}
}}
\section{Signals}{\describe{\item{\code{changed(treeselection, user.data)}}{
Emitted whenever the selection has (possibly) changed.  Please note that
this signal is mostly a hint.  It may only be emitted once when a range
of rows are selected, and it may occasionally be emitted when nothing
has happened.

\describe{
\item{\code{treeselection}}{[\code{\link{GtkTreeSelection}}] the object which received the signal.}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}}}
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/GtkTreeSelection.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\seealso{
\code{\link{GtkTreeView}}
\code{\link{GtkTreeViewColumn}}
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
