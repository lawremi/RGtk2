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
 \code{\link{GtkListStore}},  \code{\link{GtkTreeModelSort}} and  \code{\link{GtkTreeStore}}.}
\section{Detailed Description}{\code{\link{GtkTreeSortable}} is an interface to be implemented by tree models which
support sorting. The \code{\link{GtkTreeView}} uses the methods provided by this interface
to sort the model.}
\section{Structures}{\describe{\item{\verb{GtkTreeSortable}}{
\emph{undocumented
}

}}}
\section{User Functions}{\describe{\item{\code{GtkTreeIterCompareFunc(model, a, b, user.data)}}{
A GtkTreeIterCompareFunc should return a negative integer, zero, or a positive
integer if \code{a} sorts before \code{b}, \code{a} sorts with \code{b}, or \code{a} sorts after \code{b}
respectively. If two iters compare as equal, their order in the sorted model
is undefined. In order to ensure that the \code{\link{GtkTreeSortable}} behaves as
expected, the GtkTreeIterCompareFunc must define a partial order on
the model, i.e. it must be reflexive, antisymmetric and transitive.
  
For example, if \code{model} is a product catalogue, then a compare function
for the "price" column could be one which returns
\code{price_of(  a  ) - price_of(  b  )}.

\describe{
\item{\code{model}}{The \code{\link{GtkTreeModel}} the comparison is within}
\item{\code{a}}{A \code{\link{GtkTreeIter}} in \code{model}}
\item{\code{b}}{Another \code{\link{GtkTreeIter}} in \code{model}}
\item{\code{user.data}}{Data passed when the compare func is assigned e.g. by
\code{\link{gtkTreeSortableSetSortFunc}}}
}

\emph{Returns:} [integer] a negative integer, zero or a positive integer depending on whether
\code{a} sorts before, with or after \code{b}

}}}
\section{Signals}{\describe{\item{\code{sort-column-changed(sortable, user.data)}}{
The ::sort-column-changed signal is emitted when the sort column
or sort order of \code{sortable} is changed. The signal is emitted before
the contents of \code{sortable} are resorted.

\describe{
\item{\code{sortable}}{the object on which the signal is emitted}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}}}
\references{\url{https://developer-old.gnome.org/gtk2/stable/GtkTreeSortable.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\seealso{
\code{\link{GtkTreeModel}}
\code{\link{GtkTreeView}}
}
\keyword{internal}
