\alias{gtkTreeModelSortConvertChildIterToIter}
\name{gtkTreeModelSortConvertChildIterToIter}
\title{gtkTreeModelSortConvertChildIterToIter}
\description{Sets \code{sort.iter} to point to the row in \code{tree.model.sort} that corresponds to
the row pointed at by \code{child.iter}.}
\usage{gtkTreeModelSortConvertChildIterToIter(object, child.iter)}
\arguments{
\item{\code{object}}{[\code{\link{GtkTreeModelSort}}]  A \code{\link{GtkTreeModelSort}}}
\item{\code{child.iter}}{[\code{\link{GtkTreeIter}}]  A valid \code{\link{GtkTreeIter}} pointing to a row on the child model}
}
\value{
A list containing the following elements:
\item{\code{sort.iter}}{[\code{\link{GtkTreeIter}}]  An uninitialized \code{\link{GtkTreeIter}}.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
