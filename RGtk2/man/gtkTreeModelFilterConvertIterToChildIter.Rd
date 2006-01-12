\alias{gtkTreeModelFilterConvertIterToChildIter}
\name{gtkTreeModelFilterConvertIterToChildIter}
\title{gtkTreeModelFilterConvertIterToChildIter}
\description{Sets \code{child.iter} to point to the row pointed to by \code{filter.iter}.}
\usage{gtkTreeModelFilterConvertIterToChildIter(object, filter.iter)}
\arguments{
\item{\code{object}}{[\code{\link{GtkTreeModelFilter}}]  A \code{\link{GtkTreeModelFilter}}.}
\item{\code{filter.iter}}{[\code{\link{GtkTreeIter}}]  A valid \code{\link{GtkTreeIter}} pointing to a row on \code{filter}.}
}
\details{  Since  2.4}
\value{
A list containing the following elements:
\item{\code{child.iter}}{[\code{\link{GtkTreeIter}}]  An uninitialized \code{\link{GtkTreeIter}}.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
