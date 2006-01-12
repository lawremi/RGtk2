\alias{gtkTreeModelSortConvertIterToChildIter}
\name{gtkTreeModelSortConvertIterToChildIter}
\title{gtkTreeModelSortConvertIterToChildIter}
\description{Sets \code{child.iter} to point to the row pointed to by \code{sorted.iter}.}
\usage{gtkTreeModelSortConvertIterToChildIter(object, sorted.iter)}
\arguments{
\item{\code{object}}{[\code{\link{GtkTreeModelSort}}]  A \code{\link{GtkTreeModelSort}}}
\item{\code{sorted.iter}}{[\code{\link{GtkTreeIter}}]  A valid \code{\link{GtkTreeIter}} pointing to a row on \code{tree.model.sort}.}
}
\value{
A list containing the following elements:
\item{\code{child.iter}}{[\code{\link{GtkTreeIter}}]  An uninitialized \code{\link{GtkTreeIter}}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
