\alias{gtkTreeModelFilterConvertChildPathToPath}
\name{gtkTreeModelFilterConvertChildPathToPath}
\title{gtkTreeModelFilterConvertChildPathToPath}
\description{Converts \code{child.path} to a path relative to \code{filter}. That is, \code{child.path}
points to a path in the child model. The rerturned path will point to the
same row in the filtered model. If \code{child.path} isn't a valid path on the
child model or points to a row which is not visible in \code{filter}, then \code{NULL}
is returned.}
\usage{gtkTreeModelFilterConvertChildPathToPath(object, child.path)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkTreeModelFilter}}]  A \verb{\link{GtkTreeModelFilter}}.}
\item{\verb{child.path}}{[\verb{\link{GtkTreePath}}]  A \verb{\link{GtkTreePath}} to convert.}
}
\details{  Since  2.4}
\value{[\verb{\link{GtkTreePath}}]  A newly allocated \verb{\link{GtkTreePath}}, or \code{NULL}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
