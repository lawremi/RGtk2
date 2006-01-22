\alias{GtkTreeModel}
\alias{GtkTreeIter}
\alias{GtkTreePath}
\alias{GtkTreeRowReference}
\alias{GtkTreeModelForeachFunc}
\alias{GtkTreeModelFlags}
\name{GtkTreeModel}
\title{GtkTreeModel}
\description{The tree interface used by }
\section{Methods and Functions}{
\link{gtkTreePathNew}()
\link{gtkTreePathNewFromString}(path)
\link{gtkTreePathNewFromIndices}(...)
\link{gtkTreePathToString}(object)
\link{gtkTreePathNewFirst}()
\link{gtkTreePathAppendIndex}(object, index)
\link{gtkTreePathPrependIndex}(object, index)
\link{gtkTreePathGetDepth}(object)
\link{gtkTreePathGetIndices}(object)
\link{gtkTreePathCopy}(object)
\link{gtkTreePathCompare}(object, b)
\link{gtkTreePathNext}(object)
\link{gtkTreePathPrev}(object)
\link{gtkTreePathUp}(object)
\link{gtkTreePathDown}(object)
\link{gtkTreePathIsAncestor}(object, descendant)
\link{gtkTreePathIsDescendant}(object, ancestor)
\link{gtkTreeRowReferenceNew}(model, path)
\link{gtkTreeRowReferenceNewProxy}(proxy, model, path)
\link{gtkTreeRowReferenceGetModel}(object)
\link{gtkTreeRowReferenceGetPath}(object)
\link{gtkTreeRowReferenceValid}(object)
\link{gtkTreeRowReferenceCopy}(object)
\link{gtkTreeRowReferenceInserted}(proxy, path)
\link{gtkTreeRowReferenceDeleted}(proxy, path)
\link{gtkTreeRowReferenceReordered}(proxy, path, iter, new.order)
\link{gtkTreeIterCopy}(object)
\link{gtkTreeModelGetFlags}(object)
\link{gtkTreeModelGetNColumns}(object)
\link{gtkTreeModelGetColumnType}(object, index)
\link{gtkTreeModelGetIter}(object, path)
\link{gtkTreeModelGetIterFromString}(object, path.string)
\link{gtkTreeModelGetIterFirst}(object)
\link{gtkTreeModelGetPath}(object, iter)
\link{gtkTreeModelGetValue}(object, iter, column)
\link{gtkTreeModelIterNext}(object, iter)
\link{gtkTreeModelIterChildren}(object, parent = NULL)
\link{gtkTreeModelIterHasChild}(object, iter)
\link{gtkTreeModelIterNChildren}(object, iter = NULL)
\link{gtkTreeModelIterNthChild}(object, parent = NULL, n)
\link{gtkTreeModelIterParent}(object, child)
\link{gtkTreeModelGetStringFromIter}(object, iter)
\link{gtkTreeModelRefNode}(object, iter)
\link{gtkTreeModelUnrefNode}(object, iter)
\link{gtkTreeModelGet}(object, iter, ...)
\link{gtkTreeModelForeach}(object, func, user.data = NULL)
\link{gtkTreeModelRowChanged}(object, path, iter)
\link{gtkTreeModelRowInserted}(object, path, iter)
\link{gtkTreeModelRowHasChildToggled}(object, path, iter)
\link{gtkTreeModelRowDeleted}(object, path)
\link{gtkTreeModelRowsReordered}(object, path, iter, new.order)
}
\section{Hierarchy}{\preformatted{  GInterface
   +----GtkTreeModel}}
\section{Implementations}{GtkTreeModel is implemented by
 \code{\link{GtkTreeModelSort}},  \code{\link{GtkTreeStore}},  \code{\link{GtkListStore}} and  \code{\link{GtkTreeModelFilter}}.}
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
GType system (ie. \code{G_TYPE_INT}, \code{GTK_TYPE_BUTTON}, \code{G_TYPE_POINTER}, etc.).
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
\emph{  
Here, \emph{iter} is short for \dQuote{iterator}
  }
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
\code{GTK_TREE_MODEL_ITERS_PERSIST} flag was added to indicate this behavior.
  
To help show some common operation of a model, some examples are
provided.  The first example shows three ways of getting the iter at the
location \dQuote{3:2:5}.  While the first method shown is easier,
the second is much more common, as you often get paths from callbacks.
  
\preformatted{
# Acquiring a GtkTreeIter

# Three ways of getting the iter pointing to the location

  # get the iterator from a string 
  model$getIterFromString("3:2:5")$iter

  # get the iterator from a path
  path <- gtkTreePathNewFromString("3:2:5")
  model$getIter(path)$iter

  # walk the tree to find the iterator
  parent_iter <- model$iterNthChild(NULL, 3)$iter
  parent_iter <- model$iterNthChild(parent_iter, 2)$iter
  model$iterNthChild(parent_iter, 5)$iter
}
  
This second example shows a quick way of iterating through a list and
getting a string and an integer from each row.  The
\code{populateModel} function used below is not shown, as
it is specific to the \code{\link{GtkListStore}}.  For information on how to write
such a function, see the \code{\link{GtkListStore}} documentation.
\preformatted{
# Reading data from a GtkTreeModel

# make a new list_store
  list_store <- gtkListStore("character", "integer")

  # Fill the list store with data
  populate_model(list_store)

  # Get the first iter in the list 
  result <- list_store$getIterFirst()

  row_count <- 1
  while (result[[1]])
    {
      # Walk through the list, reading each row
      
      data <- list_store$get(result$iter, 0, 1)

      # Do something with the data
      print(paste("Row ", row_count, ": (", data[[1]], ",", data[[2]], ")", sep=""))
      
	  row_count <- row_count + 1
      result <- list_store$iterNext()
    }
}}
\section{Structures}{\describe{
\item{\code{GtkTreeModel}}{\emph{undocumented
}}
\item{\code{GtkTreeIter}}{
The \code{GtkTreeIter} is the primary structure for
accessing a structure.  Models are expected to put a unique integer in
the \code{stamp} member, and put model-specific
data in the three \code{user_data} members.

\describe{
\item{\code{stamp}}{[integer] A unique stamp to catch invalid iterators}
\item{\code{user_data}}{[R object] Model specific data}
\item{\code{user_data2}}{[R object] Model specific data}
\item{\code{user_data3}}{[R object] Model specific data}
}

}
\item{\code{GtkTreePath}}{\emph{undocumented
}}
\item{\code{GtkTreeRowReference}}{\emph{undocumented
}}
}}
\section{Enums and Flags}{\describe{\item{\code{enum GtkTreeModelFlags}}{
These flags indicate various properties of a \code{\link{GtkTreeModel}}.  They are
returned by \code{\link{gtkTreeModelGetFlags}}, and must be static for the
lifetime of the object.  A more complete description of
\code{GTK_TREE_MODEL_ITERS_PERSIST} can be found in the overview of this
section.

\describe{
\item{\code{GTK_TREE_MODEL_ITERS_PERSIST (iters-persist)}}{Iterators survive all signals emitted by the tree.}
\item{\code{GTK_TREE_MODEL_LIST_ONLY (list-only)}}{The model is a list only, and never has children}
}

}}}
\section{User Functions}{\describe{\item{\code{GtkTreeModelForeachFunc(model, path, iter, data)}}{


\describe{
\item{\code{model}}{[\code{\link{GtkTreeModel}}] }
\item{\code{path}}{[\code{\link{GtkTreePath}}] }
\item{\code{iter}}{[\code{\link{GtkTreeIter}}] }
\item{\code{data}}{[R object] }
}

}}}
\section{Signals}{\describe{
\item{\code{row-changed(treemodel, arg1, arg2, user.data)}}{


\describe{
\item{\code{treemodel}}{[\code{\link{GtkTreeModel}}] the object which received the signal.}
\item{\code{arg1}}{[\code{\link{GtkTreePath}}] }
\item{\code{arg2}}{[\code{\link{GtkTreeIter}}] }
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{row-deleted(treemodel, arg1, user.data)}}{


\describe{
\item{\code{treemodel}}{[\code{\link{GtkTreeModel}}] the object which received the signal.}
\item{\code{arg1}}{[\code{\link{GtkTreePath}}] }
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{row-has-child-toggled(treemodel, arg1, arg2, user.data)}}{


\describe{
\item{\code{treemodel}}{[\code{\link{GtkTreeModel}}] the object which received the signal.}
\item{\code{arg1}}{[\code{\link{GtkTreePath}}] }
\item{\code{arg2}}{[\code{\link{GtkTreeIter}}] }
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{row-inserted(treemodel, arg1, arg2, user.data)}}{


\describe{
\item{\code{treemodel}}{[\code{\link{GtkTreeModel}}] the object which received the signal.}
\item{\code{arg1}}{[\code{\link{GtkTreePath}}] }
\item{\code{arg2}}{[\code{\link{GtkTreeIter}}] }
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{rows-reordered(treemodel, arg1, arg2, arg3, user.data)}}{


\describe{
\item{\code{treemodel}}{[\code{\link{GtkTreeModel}}] the object which received the signal.}
\item{\code{arg1}}{[\code{\link{GtkTreePath}}] }
\item{\code{arg2}}{[\code{\link{GtkTreeIter}}] }
\item{\code{arg3}}{[R object] }
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
}}
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/GtkTreeModel.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\seealso{
\code{\link{GtkTreeView}}
\code{\link{GtkTreeStore}}
\code{\link{GtkListStore}}
\code{\link{GtkTreeSortable}}
}
\keyword{internal}
