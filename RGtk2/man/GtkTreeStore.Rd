\alias{GtkTreeStore}
\alias{gtkTreeStore}
\name{GtkTreeStore}
\title{GtkTreeStore}
\description{A tree-like data structure that can be used with the }
\section{Methods and Functions}{
\code{\link{gtkTreeStoreNew}(...)}\cr
\code{\link{gtkTreeStoreNewv}(types)}\cr
\code{\link{gtkTreeStoreSetColumnTypes}(object, types)}\cr
\code{\link{gtkTreeStoreSetValue}(object, iter, column, value)}\cr
\code{\link{gtkTreeStoreSet}(object, iter, ...)}\cr
\code{\link{gtkTreeStoreRemove}(object, iter)}\cr
\code{\link{gtkTreeStoreInsert}(object, parent = NULL, position)}\cr
\code{\link{gtkTreeStoreInsertBefore}(object, parent, sibling)}\cr
\code{\link{gtkTreeStoreInsertAfter}(object, parent, sibling)}\cr
\code{\link{gtkTreeStoreInsertWithValues}(object, parent, position, ...)}\cr
\code{\link{gtkTreeStoreInsertWithValuesv}(object, parent, position, columns, values)}\cr
\code{\link{gtkTreeStorePrepend}(object, parent = NULL)}\cr
\code{\link{gtkTreeStoreAppend}(object, parent = NULL)}\cr
\code{\link{gtkTreeStoreIsAncestor}(object, iter, descendant)}\cr
\code{\link{gtkTreeStoreIterDepth}(object, iter)}\cr
\code{\link{gtkTreeStoreClear}(object)}\cr
\code{\link{gtkTreeStoreIterIsValid}(object, iter)}\cr
\code{\link{gtkTreeStoreReorder}(object, parent, new.order)}\cr
\code{\link{gtkTreeStoreSwap}(object, a, b)}\cr
\code{\link{gtkTreeStoreMoveBefore}(object, iter, position = NULL)}\cr
\code{\link{gtkTreeStoreMoveAfter}(object, iter, position = NULL)}\cr
\code{gtkTreeStore(..., types)}
}
\section{Hierarchy}{\preformatted{  \link{GObject}
   +----GtkTreeStore}}
\section{Interfaces}{GtkTreeStore implements
 \code{\link{GtkTreeModel}},  \code{\link{GtkTreeDragSource}},  \code{\link{GtkTreeDragDest}} and  \code{\link{GtkTreeSortable}}.}
\section{Detailed Description}{The \code{\link{GtkTreeStore}} object is a list model for use with a \code{\link{GtkTreeView}}
widget.  It implements the \code{\link{GtkTreeModel}} interface, and consequentialy,
can use all of the methods available there.  It also implements the
\code{\link{GtkTreeSortable}} interface so it can be sorted by the view.  Finally,
it also implements the tree drag and
drop interfaces.}
\section{Structures}{\describe{\item{\code{GtkTreeStore}}{
\emph{undocumented
}

}}}
\section{Convenient Construction}{\code{gtkTreeStore} is the result of collapsing the constructors of \code{GtkTreeStore} (\code{\link{gtkTreeStoreNew}}, \code{\link{gtkTreeStoreNewv}}) and accepts a subset of its arguments matching the required arguments of one of its delegate constructors.}
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/GtkTreeStore.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\seealso{
\code{\link{GtkTreeModel}}
\code{\link{GtkTreeStore}}
}
\keyword{internal}
