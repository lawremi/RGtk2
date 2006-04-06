\alias{GtkListStore}
\alias{gtkListStore}
\name{GtkListStore}
\title{GtkListStore}
\description{A list-like data structure that can be used with the }
\section{Methods and Functions}{
\code{\link{gtkListStoreNew}(...)}\cr
\code{\link{gtkListStoreNewv}(value)}\cr
\code{\link{gtkListStoreSetColumnTypes}(object, types)}\cr
\code{\link{gtkListStoreSet}(object, iter, ...)}\cr
\code{\link{gtkListStoreSetValue}(object, iter, column, value)}\cr
\code{\link{gtkListStoreRemove}(object, iter)}\cr
\code{\link{gtkListStoreInsert}(object, position)}\cr
\code{\link{gtkListStoreInsertBefore}(object, sibling)}\cr
\code{\link{gtkListStoreInsertAfter}(object, sibling)}\cr
\code{\link{gtkListStoreInsertWithValues}(object, position, ...)}\cr
\code{\link{gtkListStoreInsertWithValuesv}(object, position, columns, values)}\cr
\code{\link{gtkListStorePrepend}(object, iter)}\cr
\code{\link{gtkListStoreAppend}(object)}\cr
\code{\link{gtkListStoreClear}(object)}\cr
\code{\link{gtkListStoreIterIsValid}(object, iter)}\cr
\code{\link{gtkListStoreReorder}(object, new.order)}\cr
\code{\link{gtkListStoreSwap}(object, a, b)}\cr
\code{\link{gtkListStoreMoveBefore}(object, iter, position = NULL)}\cr
\code{\link{gtkListStoreMoveAfter}(object, iter, position = NULL)}\cr
\code{gtkListStore(..., value)}
}
\section{Hierarchy}{\preformatted{  \link{GObject}
   +----GtkListStore}}
\section{Interfaces}{GtkListStore implements
 \code{\link{GtkTreeModel}},  \code{\link{GtkTreeDragSource}},  \code{\link{GtkTreeDragDest}} and  \code{\link{GtkTreeSortable}}.}
\section{Detailed Description}{The \code{\link{GtkListStore}} object is a list model for use with a \code{\link{GtkTreeView}}
widget.  It implements the \code{\link{GtkTreeModel}} interface, and consequentialy,
can use all of the methods available there.  It also implements the
\code{\link{GtkTreeSortable}} interface so it can be sorted by the view.
Finally, it also implements the tree drag and
drop interfaces.
  
The \code{\link{GtkListStore}} can accept most GObject types as a column type, though
it can't accept all custom types.  Internally, it will keep a copy of
data passed in (such as a string or a boxed pointer).  Columns that
accept \code{\link{GObject}}s are handled a little differently.  The
\code{\link{GtkListStore}} will keep a reference to the object instead of copying the
value.  As a result, if the object is modified, it is up to the
application writer to call \code{gtk.tree.model.row.changed} to emit the
"row\_changed" signal.  This most commonly affects lists with
\code{\link{GdkPixbuf}}s stored.
  \preformatted{
  list_store <- gtk_list_store_new ("character", "integer", "logical")

  sapply(character_vector, function(string)
    {
      # Add a new row to the model
      iter <- list_store$append(iter)$iter
      list_store$set(iter, 0, string, 1, i, 2,  FALSE)
	})

  # Modify a particular row
  path <- gtkTreePathNewFromString("4")
  iter <- list_store$getIter(path)$iter
  list_store$set(iter, 2, TRUE)

}}
\section{Performance Considerations}{Internally, the \code{\link{GtkListStore}} was implemented with a linked list with a
tail pointer prior to GTK+ 2.6.  As a result, it was fast at data
insertion and deletion, and not fast at random data access.  The
\code{\link{GtkListStore}} sets the \code{GTK_TREE_MODEL_ITERS_PERSIST} flag, which means
that \code{\link{GtkTreeIter}}s can be cached while the row exists.  Thus, if
access to a particular row is needed often and your code is expected to
run on older versions of GTK+, it is worth keeping the iter around.}
\section{Structures}{\describe{\item{\code{GtkListStore}}{\emph{undocumented
}}}}
\section{Convenient Construction}{\code{gtkListStore} is the result of collapsing the constructors of \code{GtkListStore} (\code{\link{gtkListStoreNew}}, \code{\link{gtkListStoreNewv}}) and accepts a subset of its arguments matching the required arguments of one of its delegate constructors.}
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/GtkListStore.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\seealso{
\code{\link{GtkTreeModel}}
\code{\link{GtkTreeStore}}
}
\keyword{internal}
