\alias{gtkTreeModelFilterConvertChildPathToPath}
\name{gtkTreeModelFilterConvertChildPathToPath}
\title{gtkTreeModelFilterConvertChildPathToPath}
\description{Converts \code{child.path} to a path relative to \code{filter}. That is, \code{child.path}
points to a path in the child model. The rerturned path will point to the
same row in the filtered model. If \code{child.path} isn't a valid path on the
child model, then \code{NULL} is returned.}
\usage{gtkTreeModelFilterConvertChildPathToPath(object, child.path)}
\arguments{
\item{\code{object}}{[\code{\link{GtkTreeModelFilter}}]  A \code{\link{GtkTreeModelFilter}}.}
\item{\code{child.path}}{[\code{\link{GtkTreePath}}]  A \code{\link{GtkTreePath}} to convert.}
}
\details{  Since  2.4}
\value{[\code{\link{GtkTreePath}}]  A newly allocated \code{\link{GtkTreePath}}, or \code{NULL}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
