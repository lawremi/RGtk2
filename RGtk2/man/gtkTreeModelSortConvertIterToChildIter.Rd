\alias{gtkTreeModelSortConvertIterToChildIter}
\name{gtkTreeModelSortConvertIterToChildIter}
\title{gtkTreeModelSortConvertIterToChildIter}
\description{Sets \code{child.iter} to point to the row pointed to by \code{sorted.iter}.}
\usage{gtkTreeModelSortConvertIterToChildIter(object, sorted.iter)}
\arguments{
\item{\verb{object}}{A \code{\link{GtkTreeModelSort}}}
\item{\verb{sorted.iter}}{A valid \code{\link{GtkTreeIter}} pointing to a row on \code{tree.model.sort}.}
}
\value{
A list containing the following elements:
\item{\verb{child.iter}}{An uninitialized \code{\link{GtkTreeIter}}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
