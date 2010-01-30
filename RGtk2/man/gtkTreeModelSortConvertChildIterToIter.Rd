\alias{gtkTreeModelSortConvertChildIterToIter}
\name{gtkTreeModelSortConvertChildIterToIter}
\title{gtkTreeModelSortConvertChildIterToIter}
\description{Sets \code{sort.iter} to point to the row in \code{tree.model.sort} that corresponds to
the row pointed at by \code{child.iter}.}
\usage{gtkTreeModelSortConvertChildIterToIter(object, child.iter)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkTreeModelSort}}]  A \verb{\link{GtkTreeModelSort}}}
\item{\verb{child.iter}}{[\verb{\link{GtkTreeIter}}]  A valid \verb{\link{GtkTreeIter}} pointing to a row on the child model}
}
\value{
A list containing the following elements:
\item{\verb{sort.iter}}{[\verb{\link{GtkTreeIter}}]  An uninitialized \verb{\link{GtkTreeIter}}.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
