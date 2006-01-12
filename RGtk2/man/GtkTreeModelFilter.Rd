\alias{GtkTreeModelFilter}
\alias{GtkTreeModelFilterVisibleFunc}
\alias{GtkTreeModelFilterModifyFunc}
\name{GtkTreeModelFilter}
\title{GtkTreeModelFilter}
\description{A GtkTreeModel which hides parts of an underlying tree model}
\usage{
\link{gtkTreeModelFilterNew}(object, root = NULL)
\link{gtkTreeModelFilterSetVisibleFunc}(object, func, data = NULL)
\link{gtkTreeModelFilterSetModifyFunc}(object, types, func, data = NULL)
\link{gtkTreeModelFilterSetVisibleColumn}(object, column)
\link{gtkTreeModelFilterGetModel}(object)
\link{gtkTreeModelFilterConvertChildIterToIter}(object, child.iter)
\link{gtkTreeModelFilterConvertIterToChildIter}(object, filter.iter)
\link{gtkTreeModelFilterConvertChildPathToPath}(object, child.path)
\link{gtkTreeModelFilterConvertPathToChildPath}(object, filter.path)
\link{gtkTreeModelFilterRefilter}(object)
\link{gtkTreeModelFilterClearCache}(object)
}
\details{A \code{\link{GtkTreeModelFilter}} is a tree model which wraps another tree model,
and can do the following things:
\itemize{
\item Filter specific rows, based on data from a "visible column", a column
storing booleans indicating whether the row should be filtered or not,
or based on the return value of a "visible function", which gets a
model, iter and user_data and returns a boolean indicating whether the
row should be filtered or not.
\item Modify the "appearance" of the model, using a modify function. 
This is extremely powerful and allows for just changing
some values and also for creating a completely different model based on
the given child model. 
\item Set a different root node, also known as a "virtual root". You can pass in 
a \code{\link{GtkTreePath}} indicating the root node for the filter at construction time.
}}
\section{Hierarchy}{\preformatted{  \link{GObject}
   +----GtkTreeModelFilter}}
\section{Structures}{\describe{\item{\code{GtkTreeModelFilter}}{
The GtkTreeModelFilter struct contains only private fields.

}}}
\section{User Functions}{\describe{
\item{\code{GtkTreeModelFilterVisibleFunc(model, iter, data)}}{
A function which decides whether the row indicated by \code{iter} is visible.

\describe{
\item{\code{model}}{[\code{\link{GtkTreeModel}}] the child model of the \code{\link{GtkTreeModelFilter}}}
\item{\code{iter}}{[\code{\link{GtkTreeIter}}] a \code{\link{GtkTreeIter}} pointing to the row in \code{model} whose visibility 
   is determined}
\item{\code{data}}{[R object] user data given to \code{\link{gtkTreeModelFilterSetVisibleFunc}}}
}

}
\item{\code{GtkTreeModelFilterModifyFunc(model, iter, value, column, data)}}{
A function which calculates display values from raw values in the model.
It must fill \code{value} with the display value for the column \code{column} in the 
row indicated by \code{iter}. 
  
Since this function is called for each data access, it's not a
particularly efficient operation.

\describe{
\item{\code{model}}{[\code{\link{GtkTreeModel}}] the \code{\link{GtkTreeModelFilter}}}
\item{\code{iter}}{[\code{\link{GtkTreeIter}}] a \code{\link{GtkTreeIter}} pointing to the row whose display values are determined}
\item{\code{value}}{[R object] A \code{R object} which is already initialized for with the correct type for 
  the column \code{column}.}
\item{\code{column}}{[integer] the column whose display value is determined}
\item{\code{data}}{[R object] user data given to \code{\link{gtkTreeModelFilterSetModifyFunc}}}
}

}
}}
\section{Interfaces}{GtkTreeModelFilter implements
 \code{\link{GtkTreeModel}} and  \code{\link{GtkTreeDragSource}}.}
\section{Properties}{\describe{
\item{\code{child-model} [\code{\link{GtkTreeModel}} : Read / Write / Construct Only]}{

The model for the filtermodel to filter.

}
\item{\code{virtual-root} [\code{\link{GtkTreePath}} : Read / Write / Construct Only]}{

The virtual root (relative to the child model) for this filtermodel.

}
}}
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/GtkTreeModelFilter.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\seealso{\code{\link{GtkTreeModelSort}}}
\keyword{internal}
