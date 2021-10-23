\alias{GtkTreeModelFilter}
\alias{gtkTreeModelFilter}
\alias{GtkTreeModelFilterVisibleFunc}
\alias{GtkTreeModelFilterModifyFunc}
\name{GtkTreeModelFilter}
\title{GtkTreeModelFilter}
\description{A GtkTreeModel which hides parts of an underlying tree model}
\section{Methods and Functions}{
\code{\link{gtkTreeModelFilterNew}(child.model, root = NULL)}\cr
\code{\link{gtkTreeModelFilterSetVisibleFunc}(object, func, data = NULL)}\cr
\code{\link{gtkTreeModelFilterSetModifyFunc}(object, types, func, data = NULL)}\cr
\code{\link{gtkTreeModelFilterSetVisibleColumn}(object, column)}\cr
\code{\link{gtkTreeModelFilterGetModel}(object)}\cr
\code{\link{gtkTreeModelFilterConvertChildIterToIter}(object, child.iter)}\cr
\code{\link{gtkTreeModelFilterConvertIterToChildIter}(object, filter.iter)}\cr
\code{\link{gtkTreeModelFilterConvertChildPathToPath}(object, child.path)}\cr
\code{\link{gtkTreeModelFilterConvertPathToChildPath}(object, filter.path)}\cr
\code{\link{gtkTreeModelFilterRefilter}(object)}\cr
\code{\link{gtkTreeModelFilterClearCache}(object)}\cr
\code{gtkTreeModelFilter(child.model, root = NULL)}
}
\section{Hierarchy}{\preformatted{GObject
   +----GtkTreeModelFilter}}
\section{Interfaces}{GtkTreeModelFilter implements
 \code{\link{GtkTreeModel}} and  \code{\link{GtkTreeDragSource}}.}
\section{Detailed Description}{A \code{\link{GtkTreeModelFilter}} is a tree model which wraps another tree model,
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
\section{Structures}{\describe{\item{\verb{GtkTreeModelFilter}}{
The GtkTreeModelFilter struct contains only private fields.

}}}
\section{Convenient Construction}{\code{gtkTreeModelFilter} is the equivalent of \code{\link{gtkTreeModelFilterNew}}.}
\section{User Functions}{\describe{
\item{\code{GtkTreeModelFilterVisibleFunc(model, iter, data)}}{
A function which decides whether the row indicated by \code{iter} is visible.

\describe{
\item{\code{model}}{the child model of the \code{\link{GtkTreeModelFilter}}}
\item{\code{iter}}{a \code{\link{GtkTreeIter}} pointing to the row in \code{model} whose visibility
is determined}
\item{\code{data}}{user data given to \code{\link{gtkTreeModelFilterSetVisibleFunc}}}
}

\emph{Returns:} [logical] Whether the row indicated by \code{iter} is visible.

}
\item{\code{GtkTreeModelFilterModifyFunc(model, iter, value, column, data)}}{
A function which calculates display values from raw values in the model.
It must fill \code{value} with the display value for the column \code{column} in the
row indicated by \code{iter}.
  
Since this function is called for each data access, it's not a
particularly efficient operation.

\describe{
\item{\code{model}}{the \code{\link{GtkTreeModelFilter}}}
\item{\code{iter}}{a \code{\link{GtkTreeIter}} pointing to the row whose display values are determined}
\item{\code{value}}{A \verb{R object} which is already initialized for with the correct type for
the column \code{column}.}
\item{\code{column}}{the column whose display value is determined}
\item{\code{data}}{user data given to \code{\link{gtkTreeModelFilterSetModifyFunc}}}
}


}
}}
\section{Properties}{\describe{
\item{\verb{child-model} [\code{\link{GtkTreeModel}} : *         : Read / Write / Construct Only]}{

The model for the filtermodel to filter.

}
\item{\verb{virtual-root} [\code{\link{GtkTreePath}} : *          : Read / Write / Construct Only]}{

The virtual root (relative to the child model) for this filtermodel.

}
}}
\references{\url{https://developer-old.gnome.org/gtk2/stable/GtkTreeModelFilter.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\seealso{\code{\link{GtkTreeModelSort}}}
\keyword{internal}
