\alias{gtkTreeModelSortConvertChildIterToIter}
\name{gtkTreeModelSortConvertChildIterToIter}
\title{gtkTreeModelSortConvertChildIterToIter}
\description{Sets \code{sort.iter} to point to the row in \code{tree.model.sort} that corresponds to
the row pointed at by \code{child.iter}.  If \code{sort.iter} was not set, \code{FALSE}
is returned.  Note: a boolean is only returned since 2.14.}
\usage{gtkTreeModelSortConvertChildIterToIter(object, child.iter)}
\arguments{
\item{\verb{object}}{A \code{\link{GtkTreeModelSort}}}
\item{\verb{child.iter}}{A valid \code{\link{GtkTreeIter}} pointing to a row on the child model}
}
\value{
A list containing the following elements:
\item{retval}{[logical] \code{TRUE}, if \code{sort.iter} was set, i.e. if \code{sort.iter} is a
valid iterator pointer to a visible row in the child model.}
\item{\verb{sort.iter}}{An uninitialized \code{\link{GtkTreeIter}}.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
