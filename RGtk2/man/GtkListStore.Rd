\alias{GtkListStore}
\alias{gtkListStore}
\name{GtkListStore}
\title{GtkListStore}
\description{A list-like data structure that can be used with the GtkTreeView}
\section{Methods and Functions}{
\code{\link{gtkListStoreNew}(...)}\cr
\code{\link{gtkListStoreNewv}(value)}\cr
\code{\link{gtkListStoreSetColumnTypes}(object, types)}\cr
\code{\link{gtkListStoreSet}(object, iter, ...)}\cr
\code{\link{gtkListStoreSetValue}(object, iter, column, value)}\cr
\code{\link{gtkListStoreSetValuesv}(object, iter, columns, values)}\cr
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
\section{Hierarchy}{\preformatted{GObject
   +----GtkListStore}}
\section{Interfaces}{GtkListStore implements
 \code{\link{GtkTreeModel}},  \code{\link{GtkTreeDragSource}},  \code{\link{GtkTreeDragDest}},  \code{\link{GtkTreeSortable}} and  \code{\link{GtkBuildable}}.}
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
"row_changed" signal.  This most commonly affects lists with
\code{\link{GdkPixbuf}}s stored.
  
 \emph{Creating a simple list store.}
\preformatted{
list_store <- gtk_list_store_new ("character", "integer", "logical")

sapply(character_vector,
       function(string) {
         ## Add a new row to the model
         iter <- list_store$append(iter)$iter
         list_store$set(iter, 0, string, 1, i, 2,  FALSE)
       })

## Modify a particular row
path <- gtkTreePathNewFromString("4")
iter <- list_store$getIter(path)$iter
list_store$set(iter, 2, TRUE)

}}
\section{Performance Considerations}{Internally, the \code{\link{GtkListStore}} was implemented with a linked list with a
tail pointer prior to GTK+ 2.6.  As a result, it was fast at data
insertion and deletion, and not fast at random data access.  The
\code{\link{GtkListStore}} sets the \verb{GTK_TREE_MODEL_ITERS_PERSIST} flag, which means
that \code{\link{GtkTreeIter}}s can be cached while the row exists.  Thus, if
access to a particular row is needed often and your code is expected to
run on older versions of GTK+, it is worth keeping the iter around.
  
It is important to note that only the methods
\code{\link{gtkListStoreInsertWithValues}} and \code{\link{gtkListStoreInsertWithValuesv}}
are atomic, in the sense that the row is being appended to the store and the
values filled in in a single operation with regard to \code{\link{GtkTreeModel}} signaling.
In contrast, using e.g. \code{\link{gtkListStoreAppend}} and then \code{\link{gtkListStoreSet}}
will first create a row, which triggers the \code{\link{gtkTreeModelRowInserted}} signal
on \code{\link{GtkListStore}}. The row, however, is still empty, and any signal handler
connecting to "row-inserted" on this particular store should be prepared
for the situation that the row might be empty. This is especially important
if you are wrapping the \code{\link{GtkListStore}} inside a \code{\link{GtkTreeModelFilter}} and are
using a \code{\link{GtkTreeModelFilterVisibleFunc}}. Using any of the non-atomic operations
to append rows to the \code{\link{GtkListStore}} will cause the
\code{\link{GtkTreeModelFilterVisibleFunc}} to be visited with an empty row first; the
function must be prepared for that.}
\section{GtkListStore as GtkBuildable}{The GtkListStore implementation of the GtkBuildable interface allows
to specify the model columns with a <columns> element that may
contain multiple <column> elements, each specifying one model
column. The "type" attribute specifies the data type for the column.
  
Additionally, it is possible to specify content for the list store
in the UI definition, with the <data> element. It can contain
multiple <row> elements, each specifying to content for one
row of the list model. Inside a <row>, the <col> elements
specify the content for individual cells.
  
Note that it is probably more common to define your models
in the code, and one might consider it a layering violation
to specify the content of a list store in a UI definition,
\emph{data}, not \emph{presentation},
and common wisdom is to separate the two, as far as possible.

  
 \emph{A UI Definition fragment for a list store}\preformatted{<object class="GtkListStore">
  <columns>
    <column type="gchararray"/>
    <column type="gchararray"/>
    <column type="gint"/>
  </columns>
  <data>
    <row>
      <col id="0">John</col>
      <col id="1">Doe</col>
      <col id="2">25</col>
    </row>
    <row>
      <col id="0">Johan</col>
      <col id="1">Dahlin</col>
      <col id="2">50</col>
    </row>
  </data>
</object>
}}
\section{Structures}{\describe{\item{\verb{GtkListStore}}{
\emph{undocumented
}

}}}
\section{Convenient Construction}{\code{gtkListStore} is the result of collapsing the constructors of \code{GtkListStore} (\code{\link{gtkListStoreNew}}, \code{\link{gtkListStoreNewv}}) and accepts a subset of its arguments matching the required arguments of one of its delegate constructors.}
\references{\url{https://developer-old.gnome.org/gtk2/stable/GtkListStore.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\seealso{
\code{\link{GtkTreeModel}}
\code{\link{GtkTreeStore}}
}
\keyword{internal}
