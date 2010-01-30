\alias{gtkTreeModelSortConvertIterToChildIter}
\name{gtkTreeModelSortConvertIterToChildIter}
\title{gtkTreeModelSortConvertIterToChildIter}
\description{Sets \code{child.iter} to point to the row pointed to by \code{sorted.iter}.}
\usage{gtkTreeModelSortConvertIterToChildIter(object, sorted.iter)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkTreeModelSort}}]  A \verb{\link{GtkTreeModelSort}}}
\item{\verb{sorted.iter}}{[\verb{\link{GtkTreeIter}}]  A valid \verb{\link{GtkTreeIter}} pointing to a row on \code{tree.model.sort}.}
}
\value{
A list containing the following elements:
\item{\verb{child.iter}}{[\verb{\link{GtkTreeIter}}]  An uninitialized \verb{\link{GtkTreeIter}}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
