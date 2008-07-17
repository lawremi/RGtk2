\alias{gtkTreeModelFilterConvertChildIterToIter}
\name{gtkTreeModelFilterConvertChildIterToIter}
\title{gtkTreeModelFilterConvertChildIterToIter}
\description{Sets \code{filter.iter} to point to the row in \code{filter} that corresponds to the
row pointed at by \code{child.iter}.  If \code{filter.iter} was not set, \code{FALSE} is
returned.}
\usage{gtkTreeModelFilterConvertChildIterToIter(object, child.iter)}
\arguments{
\item{\code{object}}{[\code{\link{GtkTreeModelFilter}}]  A \code{\link{GtkTreeModelFilter}}.}
\item{\code{child.iter}}{[\code{\link{GtkTreeIter}}]  A valid \code{\link{GtkTreeIter}} pointing to a row on the child model.}
}
\details{  Since  2.4}
\value{
A list containing the following elements:
\item{retval}{[logical] \code{TRUE}, if \code{filter.iter} was set, i.e. if \code{child.iter} is a
valid iterator pointing to a visible row in child model.}
\item{\code{filter.iter}}{[\code{\link{GtkTreeIter}}]  An uninitialized \code{\link{GtkTreeIter}}.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
