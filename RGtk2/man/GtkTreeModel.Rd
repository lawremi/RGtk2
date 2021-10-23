\alias{GtkTreeModel}
\alias{GtkTreeIter}
\alias{GtkTreePath}
\alias{GtkTreeRowReference}
\alias{GtkTreeModelForeachFunc}
\alias{GtkTreeModelFlags}
\name{GtkTreeModel}
\title{GtkTreeModel}
\description{The tree interface used by GtkTreeView}
\section{Methods and Functions}{
\code{\link{gtkTreePathNew}()}\cr
\code{\link{gtkTreePathNewFromString}(path)}\cr
\code{\link{gtkTreePathNewFromIndices}(...)}\cr
\code{\link{gtkTreePathToString}(object)}\cr
\code{\link{gtkTreePathNewFirst}()}\cr
\code{\link{gtkTreePathAppendIndex}(object, index)}\cr
\code{\link{gtkTreePathPrependIndex}(object, index)}\cr
\code{\link{gtkTreePathGetDepth}(object)}\cr
\code{\link{gtkTreePathGetIndices}(object)}\cr
\code{\link{gtkTreePathCopy}(object)}\cr
\code{\link{gtkTreePathCompare}(object, b)}\cr
\code{\link{gtkTreePathNext}(object)}\cr
\code{\link{gtkTreePathPrev}(object)}\cr
\code{\link{gtkTreePathUp}(object)}\cr
\code{\link{gtkTreePathDown}(object)}\cr
\code{\link{gtkTreePathIsAncestor}(object, descendant)}\cr
\code{\link{gtkTreePathIsDescendant}(object, ancestor)}\cr
\code{\link{gtkTreeRowReferenceNew}(model, path)}\cr
\code{\link{gtkTreeRowReferenceNewProxy}(proxy, model, path)}\cr
\code{\link{gtkTreeRowReferenceGetModel}(object)}\cr
\code{\link{gtkTreeRowReferenceGetPath}(object)}\cr
\code{\link{gtkTreeRowReferenceValid}(object)}\cr
\code{\link{gtkTreeRowReferenceCopy}(object)}\cr
\code{\link{gtkTreeRowReferenceInserted}(proxy, path)}\cr
\code{\link{gtkTreeRowReferenceDeleted}(proxy, path)}\cr
\code{\link{gtkTreeRowReferenceReordered}(proxy, path, iter, new.order)}\cr
\code{\link{gtkTreeIterCopy}(object)}\cr
\code{\link{gtkTreeModelGetFlags}(object)}\cr
\code{\link{gtkTreeModelGetNColumns}(object)}\cr
\code{\link{gtkTreeModelGetColumnType}(object, index)}\cr
\code{\link{gtkTreeModelGetIter}(object, path)}\cr
\code{\link{gtkTreeModelGetIterFromString}(object, path.string)}\cr
\code{\link{gtkTreeModelGetIterFirst}(object)}\cr
\code{\link{gtkTreeModelGetPath}(object, iter)}\cr
\code{\link{gtkTreeModelGetValue}(object, iter, column)}\cr
\code{\link{gtkTreeModelIterNext}(object, iter)}\cr
\code{\link{gtkTreeModelIterChildren}(object, parent = NULL)}\cr
\code{\link{gtkTreeModelIterHasChild}(object, iter)}\cr
\code{\link{gtkTreeModelIterNChildren}(object, iter = NULL)}\cr
\code{\link{gtkTreeModelIterNthChild}(object, parent = NULL, n)}\cr
\code{\link{gtkTreeModelIterParent}(object, child)}\cr
\code{\link{gtkTreeModelGetStringFromIter}(object, iter)}\cr
\code{\link{gtkTreeModelRefNode}(object, iter)}\cr
\code{\link{gtkTreeModelUnrefNode}(object, iter)}\cr
\code{\link{gtkTreeModelGet}(object, iter, ...)}\cr
\code{\link{gtkTreeModelForeach}(object, func, user.data = NULL)}\cr
\code{\link{gtkTreeModelRowChanged}(object, path, iter)}\cr
\code{\link{gtkTreeModelRowInserted}(object, path, iter)}\cr
\code{\link{gtkTreeModelRowHasChildToggled}(object, path, iter)}\cr
\code{\link{gtkTreeModelRowDeleted}(object, path)}\cr
\code{\link{gtkTreeModelRowsReordered}(object, path, iter, new.order)}\cr
}
\section{Hierarchy}{\preformatted{
GInterface
   +----GtkTreeModel
GBoxed
   +----GtkTreeIter
GBoxed
   +----GtkTreePath
}}
\section{Implementations}{GtkTreeModel is implemented by
 \code{\link{GtkListStore}},  \code{\link{GtkTreeModelFilter}},  \code{\link{GtkTreeModelSort}} and  \code{\link{GtkTreeStore}}.}
\section{Interface Derivations}{GtkTreeModel is required by
 \code{\link{GtkTreeSortable}}.}
\section{Detailed Description}{The \code{\link{GtkTreeModel}} interface defines a generic tree interface for use by
the \code{\link{GtkTreeView}} widget.  It is an abstract interface, and is designed
to be usable with any appropriate data structure.  The programmer just
has to implement this interface on their own data type for it to be
viewable by a \code{\link{GtkTreeView}} widget.
  
The model is represented as a hierarchical tree of strongly-typed,
columned data.  In other words, the model can be seen as a tree where
every node has different values depending on which column is being
queried.  The type of data found in a column is determined by using the
GType system (ie. \verb{G_TYPE_INT}, \verb{GTK_TYPE_BUTTON}, \verb{G_TYPE_POINTER}, etc.).
The types are homogeneous per column across all nodes.  It is important
to note that this interface only provides a way of examining a model and
observing changes.  The implementation of each individual model decides
how and if changes are made.
  
In order to make life simpler for programmers who do not need to write
their own specialized model, two generic models are provided -- the
\code{\link{GtkTreeStore}} and the \code{\link{GtkListStore}}.  To use these, the developer simply
pushes data into these models as necessary.  These models provide the
data structure as well as all appropriate tree interfaces.  As a result,
implementing drag and drop, sorting, and storing data is trivial.  For
the vast majority of trees and lists, these two models are sufficient.
  
Models are accessed on a node/column level of granularity.  One can
query for the value of a model at a certain node and a certain column
on that node.  There are two structures used to reference a particular
node in a model.  They are the \code{\link{GtkTreePath}} and the \code{\link{GtkTreeIter}}
\strong{PLEASE NOTE:} Here, \emph{iter} is short for \dQuote{iterator}
Most of the interface consists of operations on a \code{\link{GtkTreeIter}}.
  
A path is essentially a potential node.  It is a location on a model
that may or may not actually correspond to a node on a specific model.
The \code{\link{GtkTreePath}} struct can be converted into either a list of
unsigned integers or a string.  The string form is a list of numbers
separated by a colon.  Each number refers to the offset at that level.
Thus, the path \dQuote{0} refers to the root node and the path
\dQuote{2:4} refers to the fifth child of the third node.
  
By contrast, a \code{\link{GtkTreeIter}} is a reference to a specific node on a
specific model.  It is a generic struct with an integer and three
generic pointers.  These are filled in by the model in a model-specific
way.  One can convert a path to an iterator by calling
\code{\link{gtkTreeModelGetIter}}.  These iterators are the primary way of
accessing a model and are similar to the iterators used by
\code{\link{GtkTextBuffer}}.  They are generally statically allocated on the stack and
only used for a short time.  The model interface defines a set of
operations using them for navigating the model.
  
It is expected that models fill in the iterator with private data.  For
example, the \code{\link{GtkListStore}} model, which is internally a simple linked
list, stores a list node in one of the pointers.  The \code{\link{GtkTreeModelSort}}
stores a list and an offset in two of the pointers.  Additionally,
there is an integer field.  This field is generally filled with a unique
stamp per model.  This stamp is for catching errors resulting from using
invalid iterators with a model.
  
The lifecycle of an iterator can be a little confusing at first.
Iterators are expected to always be valid for as long as the model is
unchanged (and doesn't emit a signal).  The model is considered to own
all outstanding iterators and nothing needs to be done to free them from
the user's point of view.  Additionally, some models guarantee that an
iterator is valid for as long as the node it refers to is valid (most
notably the \code{\link{GtkTreeStore}} and \code{\link{GtkListStore}}).  Although generally
uninteresting, as one always has to allow for the case where iterators
do not persist beyond a signal, some very important performance
enhancements were made in the sort model.  As a result, the
\verb{GTK_TREE_MODEL_ITERS_PERSIST} flag was added to indicate this behavior.
  
To help show some common operation of a model, some examples are
provided.  The first example shows three ways of getting the iter at the
location \dQuote{3:2:5}.  While the first method shown is easier,
the second is much more common, as you often get paths from callbacks.
  
 \emph{Acquiring a   \code{GtkTreeIter}}
\preformatted{
## Acquiring a GtkTreeIter

## Three ways of getting the iter pointing to the location

## get the iterator from a string 
model$getIterFromString("3:2:5")$iter

## get the iterator from a path
path <- gtkTreePathNewFromString("3:2:5")
model$getIter(path)$iter

## walk the tree to find the iterator
parent_iter <- model$iterNthChild(NULL, 3)$iter
parent_iter <- model$iterNthChild(parent_iter, 2)$iter
model$iterNthChild(parent_iter, 5)$iter
}  
This second example shows a quick way of iterating through a list and
getting a string and an integer from each row.  The
\code{populateModel} function used below is not shown, as
it is specific to the \code{\link{GtkListStore}}.  For information on how to write
such a function, see the \code{\link{GtkListStore}} documentation.

 \emph{Reading data from a   \code{GtkTreeModel}}
\preformatted{
## Reading data from a GtkTreeModel

## make a new list_store
list_store <- gtkListStore("character", "integer")

## Fill the list store with data
populate_model(list_store)

## Get the first iter in the list 
result <- list_store$getIterFirst()

row_count <- 1
while(result[[1]]) {
  ## Walk through the list, reading each row
      
  data <- list_store$get(result$iter, 0, 1)
  
  ## Do something with the data
  print(paste("Row ", row_count, ": (", data[[1]], ",", data[[2]], ")", sep=""))
  
  row_count <- row_count + 1
  result <- list_store$iterNext()
}
}}
\section{Structures}{\describe{
\item{\verb{GtkTreeModel}}{
\emph{undocumented
}

}
\item{\verb{GtkTreeIter}}{
The \code{GtkTreeIter} is the primary structure for
accessing a structure.  Models are expected to put a unique integer in
the \code{stamp} member, and put model-specific
data in the three \code{user_data} members.

}
\item{\verb{GtkTreePath}}{
\emph{undocumented
}

}
\item{\verb{GtkTreeRowReference}}{
\emph{undocumented
}

}
}}
\section{Enums and Flags}{\describe{\item{\verb{GtkTreeModelFlags}}{
These flags indicate various properties of a \code{\link{GtkTreeModel}}.  They are
returned by \code{\link{gtkTreeModelGetFlags}}, and must be static for the
lifetime of the object.  A more complete description of
\verb{GTK_TREE_MODEL_ITERS_PERSIST} can be found in the overview of this
section.

\describe{
\item{\verb{iters-persist}}{Iterators survive all signals emitted by the tree.}
\item{\verb{list-only}}{The model is a list only, and never has children}
}

}}}
\section{User Functions}{\describe{\item{\code{GtkTreeModelForeachFunc(model, path, iter, data)}}{
\emph{undocumented
}

\describe{
\item{\code{model}}{The \code{\link{GtkTreeModel}} currently being iterated}
\item{\code{path}}{The current \code{\link{GtkTreePath}}}
\item{\code{iter}}{The current \code{\link{GtkTreeIter}}}
\item{\code{data}}{The user data passed to \code{\link{gtkTreeModelForeach}}}
}

\emph{Returns:} [logical] \code{TRUE} to stop iterating, \code{FALSE} to continue.

}}}
\section{Signals}{\describe{
\item{\code{row-changed(tree.model, path, iter, user.data)}}{
This signal is emitted when a row in the model has changed.

\describe{
\item{\code{tree.model}}{the \code{\link{GtkTreeModel}} on which the signal is emitted}
\item{\code{path}}{a \code{\link{GtkTreePath}} identifying the changed row}
\item{\code{iter}}{a valid \code{\link{GtkTreeIter}} pointing to the changed row}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{row-deleted(tree.model, path, user.data)}}{
This signal is emitted when a row has been deleted.
  
Note that no iterator is passed to the signal handler,
since the row is already deleted.
  
Implementations of GtkTreeModel must emit row-deleted
\emph{before} removing the node from its
internal data structures.  This is because models and
views which access and monitor this model might have
references on the node which need to be released in the
row-deleted handler.

\describe{
\item{\code{tree.model}}{the \code{\link{GtkTreeModel}} on which the signal is emitted}
\item{\code{path}}{a \code{\link{GtkTreePath}} identifying the row}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{row-has-child-toggled(tree.model, path, iter, user.data)}}{
This signal is emitted when a row has gotten the first child row or lost
its last child row.

\describe{
\item{\code{tree.model}}{the \code{\link{GtkTreeModel}} on which the signal is emitted}
\item{\code{path}}{a \code{\link{GtkTreePath}} identifying the row}
\item{\code{iter}}{a valid \code{\link{GtkTreeIter}} pointing to the row}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{row-inserted(tree.model, path, iter, user.data)}}{
This signal is emitted when a new row has been inserted in the model.
  
Note that the row may still be empty at this point, since
it is a common pattern to first insert an empty row, and
then fill it with the desired values.

\describe{
\item{\code{tree.model}}{the \code{\link{GtkTreeModel}} on which the signal is emitted}
\item{\code{path}}{a \code{\link{GtkTreePath}} identifying the new row}
\item{\code{iter}}{a valid \code{\link{GtkTreeIter}} pointing to the new row}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{rows-reordered(tree.model, path, iter, new.order, user.data)}}{
This signal is emitted when the children of a node in the \code{\link{GtkTreeModel}}
have been reordered.
  
Note that this signal is \emph{not} emitted
when rows are reordered by DND, since this is implemented
by removing and then reinserting the row.

\describe{
\item{\code{tree.model}}{the \code{\link{GtkTreeModel}} on which the signal is emitted}
\item{\code{path}}{a \code{\link{GtkTreePath}} identifying the tree node whose children
have been reordered}
\item{\code{iter}}{a valid \code{\link{GtkTreeIter}} pointing to the node whose}
\item{\code{new.order}}{a list of integers mapping the current position of
each child to its old position before the re-ordering,
i.e. \code{new.order}\code{[newpos] = oldpos}.}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
}}
\references{\url{https://developer-old.gnome.org/gtk2/stable/GtkTreeModel.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\seealso{
\code{\link{GtkTreeView}}
\code{\link{GtkTreeStore}}
\code{\link{GtkListStore}}
\code{\link{GtkTreeSortable}}
}
\keyword{internal}
