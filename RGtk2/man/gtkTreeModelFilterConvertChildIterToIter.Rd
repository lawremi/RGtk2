\alias{gtkTreeModelFilterConvertChildIterToIter}
\name{gtkTreeModelFilterConvertChildIterToIter}
\title{gtkTreeModelFilterConvertChildIterToIter}
\description{Sets \code{filter.iter} to point to the row in \code{filter} that corresponds to the
row pointed at by \code{child.iter}.}
\usage{gtkTreeModelFilterConvertChildIterToIter(object, child.iter)}
\arguments{
\item{\code{object}}{[\code{\link{GtkTreeModelFilter}}]  A \code{\link{GtkTreeModelFilter}}.}
\item{\code{child.iter}}{[\code{\link{GtkTreeIter}}]  A valid \code{\link{GtkTreeIter}} pointing to a row on the child model.}
}
\details{  Since  2.4}
\value{
A list containing the following elements:
\item{\code{filter.iter}}{[\code{\link{GtkTreeIter}}]  An uninitialized \code{\link{GtkTreeIter}}.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
