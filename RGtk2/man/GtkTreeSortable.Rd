\alias{GtkTreeSortable}
\alias{GtkTreeIterCompareFunc}
\name{GtkTreeSortable}
\title{GtkTreeSortable}
\description{The interface for sortable models used by GtkTreeView}
\section{Methods and Functions}{
\code{\link{gtkTreeSortableSortColumnChanged}(object)}\cr
\code{\link{gtkTreeSortableGetSortColumnId}(object)}\cr
\code{\link{gtkTreeSortableSetSortColumnId}(object, sort.column.id, order)}\cr
\code{\link{gtkTreeSortableSetSortFunc}(object, sort.column.id, sort.func, user.data = NULL)}\cr
\code{\link{gtkTreeSortableSetDefaultSortFunc}(object, sort.func, user.data = NULL)}\cr
\code{\link{gtkTreeSortableHasDefaultSortFunc}(object)}\cr
}
\section{Hierarchy}{\preformatted{GInterface
   +----GtkTreeSortable}}
\section{Implementations}{GtkTreeSortable is implemented by
 \verb{\link{GtkTreeModelSort}},  \verb{\link{GtkTreeStore}} and  \verb{\link{GtkListStore}}.}
\section{Detailed Description}{\verb{\link{GtkTreeSortable}} is an interface to be implemented by tree models which
support sorting. The \verb{\link{GtkTreeView}} uses the methods provided by this interface
to sort the model.}
\section{Structures}{\describe{\item{\verb{GtkTreeSortable}}{
\emph{undocumented
}

}}}
\section{User Functions}{\describe{\item{\code{GtkTreeIterCompareFunc(model, a, b, user.data)}}{
A GtkTreeIterCompareFunc should return a negative integer, zero, or a positive
integer if \code{a} sorts before \code{b}, \code{a} sorts with \code{b}, or \code{a} sorts after \code{b}
respectively. If two iters compare as equal, their order in the sorted model 
is undefined. In order to ensure that the \verb{\link{GtkTreeSortable}} behaves as 
expected, the GtkTreeIterCompareFunc must define a partial order on 
the model, i.e. it must be reflexive, antisymmetric and transitive.
  
For example, if \code{model} is a product catalogue, then a compare function
for the "price" column could be one which returns 
\code{price_of(}.

\describe{
\item{\code{model}}{[\verb{\link{GtkTreeModel}}] The \verb{\link{GtkTreeModel}} the comparison is within}
\item{\code{a}}{[\verb{\link{GtkTreeIter}}] A \verb{\link{GtkTreeIter}} in \code{model}}
\item{\code{b}}{[\verb{\link{GtkTreeIter}}] Another \verb{\link{GtkTreeIter}} in \code{model}}
\item{\code{user.data}}{[R object] Data passed when the compare func is assigned e.g. by
\code{\link{gtkTreeSortableSetSortFunc}}}
}


}}}
\section{Signals}{\describe{\item{\code{sort-column-changed(treesortable, user.data)}}{
\emph{undocumented
}

\describe{
\item{\code{treesortable}}{[\verb{\link{GtkTreeSortable}}] the object which received the signal.}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}


}}}
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/GtkTreeSortable.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\seealso{
\verb{\link{GtkTreeModel}}
\verb{\link{GtkTreeView}}
}
\keyword{internal}
