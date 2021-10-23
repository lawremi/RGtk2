\alias{GtkTreeModelSort}
\alias{gtkTreeModelSort}
\name{GtkTreeModelSort}
\title{GtkTreeModelSort}
\description{A GtkTreeModel which makes an underlying tree model sortable}
\section{Methods and Functions}{
\code{\link{gtkTreeModelSortNewWithModel}(child.model = NULL)}\cr
\code{\link{gtkTreeModelSortGetModel}(object)}\cr
\code{\link{gtkTreeModelSortConvertChildPathToPath}(object, child.path)}\cr
\code{\link{gtkTreeModelSortConvertChildIterToIter}(object, child.iter)}\cr
\code{\link{gtkTreeModelSortConvertPathToChildPath}(object, sorted.path)}\cr
\code{\link{gtkTreeModelSortConvertIterToChildIter}(object, sorted.iter)}\cr
\code{\link{gtkTreeModelSortResetDefaultSortFunc}(object)}\cr
\code{\link{gtkTreeModelSortClearCache}(object)}\cr
\code{\link{gtkTreeModelSortIterIsValid}(object, iter)}\cr
\code{gtkTreeModelSort(child.model = NULL)}
}
\section{Hierarchy}{\preformatted{GObject
   +----GtkTreeModelSort}}
\section{Interfaces}{GtkTreeModelSort implements
 \code{\link{GtkTreeModel}},  \code{\link{GtkTreeSortable}} and  \code{\link{GtkTreeDragSource}}.}
\section{Detailed Description}{The \code{\link{GtkTreeModelSort}} is a model which implements the \code{\link{GtkTreeSortable}}
interface.  It does not hold any data itself, but rather is created with
a child model and proxies its data.  It has identical column types to
this child model, and the changes in the child are propagated.  The
primary purpose of this model is to provide a way to sort a different
model without modifying it. Note that the sort function used by
\code{\link{GtkTreeModelSort}} is not guaranteed to be stable.
  
The use of this is best demonstrated through an example.  In the
following sample code we create two \code{\link{GtkTreeView}} widgets each with a
view of the same data.  As the model is wrapped here by a
\code{\link{GtkTreeModelSort}}, the two \code{\link{GtkTreeView}}s can each sort their
view of the data without affecting the other.  By contrast, if we
simply put the same model in each widget, then sorting the first would
sort the second.
  
 \emph{Using a   \code{GtkTreeModelSort}}
\preformatted{
## Using a GtkTreeModel sort

## get the child model
child_model <- get_my_model()

## Create the first tree 
sort_model1 <- gtkTreeModelSort(child_model)
tree_view1 <- gtkTreeView(sort_model1)

## Create the second tree
sort_model2 <- gtkTreeModelSort(child_model)
tree_view2 <- gtkTreeView(sort_model2)

## Now we can sort the two models independently
sort_model1$setSortColumnId(0, "ascending")
sort_model2$setSortColumnId(0, "descending")
}  
To demonstrate how to access the underlying child model from the sort
model, the next example will be a callback for the \code{\link{GtkTreeSelection}}
"changed" signal.  In this callback, we get a string from COLUMN_1 of
the model.  We then modify the string, find the same selected row on the
child model, and change the row there.
  
 \emph{Accessing the child model of in a selection changed callback}
\preformatted{
# Accessing the child model in a selection changed callback

selection_changed <- function(selection, data)
{
  # Get the current selected row and the model.
  selected <- selection$getSelected()
  if (!selected[[1]])
    return()

  ## Look up the current value on the selected row and get a new value
  ## to change it to.
  some_data <- selected$model$get(selected$iter, COLUMN_1)
  
  modified_data <- change_the_data(some_data)

  ## Get an iterator on the child model, instead of the sort model.
  child_iter <- sort_model$convertIterToChildIter(selected$iter)$iter

  ## Get the child model and change the value of the row.  In this
  ## example, the child model is a GtkListStore.  It could be any other
  ## type of model, though.
  child_model <- sort_model$getModel()
  child_model$set(child_iter, COLUMN_1, modified_data)
}
}}
\section{Structures}{\describe{\item{\verb{GtkTreeModelSort}}{
This should not be accessed directly.  Use the accessor functions below.

}}}
\section{Convenient Construction}{\code{gtkTreeModelSort} is the equivalent of \code{\link{gtkTreeModelSortNewWithModel}}.}
\section{Properties}{\describe{\item{\verb{model} [\code{\link{GtkTreeModel}} : *         : Read / Write / Construct Only]}{

The model for the TreeModelSort to sort.

}}}
\references{\url{https://developer-old.gnome.org/gtk2/stable/GtkTreeModelSort.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\seealso{
\code{\link{GtkTreeModel}}
\code{\link{GtkListStore}}
\code{\link{GtkTreeStore}}
\code{\link{GtkTreeSortable}}
\code{\link{GtkTreeModelFilter}}
}
\keyword{internal}
