\alias{GtkTreeStore}
\alias{gtkTreeStore}
\name{GtkTreeStore}
\title{GtkTreeStore}
\description{A tree-like data structure that can be used with the }
\usage{gtkTreeStore(..., types)}
\section{Methods and Functions}{
\link{gtkTreeStoreNew}(...)
\link{gtkTreeStoreNewv}(types)
\link{gtkTreeStoreSetColumnTypes}(object, types)
\link{gtkTreeStoreSetValue}(object, iter, column, value)
\link{gtkTreeStoreSet}(object, iter, ...)
\link{gtkTreeStoreRemove}(object, iter)
\link{gtkTreeStoreInsert}(object, parent, position)
\link{gtkTreeStoreInsertBefore}(object, parent, sibling)
\link{gtkTreeStoreInsertAfter}(object, parent, sibling)
\link{gtkTreeStorePrepend}(object, parent = NULL)
\link{gtkTreeStoreAppend}(object, parent = NULL)
\link{gtkTreeStoreIsAncestor}(object, iter, descendant)
\link{gtkTreeStoreIterDepth}(object, iter)
\link{gtkTreeStoreClear}(object)
\link{gtkTreeStoreIterIsValid}(object, iter)
\link{gtkTreeStoreReorder}(object, parent, new.order)
\link{gtkTreeStoreSwap}(object, a, b)
\link{gtkTreeStoreMoveBefore}(object, iter, position = NULL)
\link{gtkTreeStoreMoveAfter}(object, iter, position = NULL)
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
\section{Structures}{\describe{\item{\code{GtkTreeStore}}{\emph{undocumented
}}}}
\section{Convenient Construction}{\code{gtkTreeStore} is the result of collapsing the constructors of \code{GtkTreeStore} (\code{\link{gtkTreeStoreNew}}, \code{\link{gtkTreeStoreNewv}}) and accepts a subset of its arguments matching the required arguments of one of its delegate constructors.}
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/GtkTreeStore.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\seealso{
\code{\link{GtkTreeModel}}
\code{\link{GtkTreeStore}}
}
\keyword{internal}
