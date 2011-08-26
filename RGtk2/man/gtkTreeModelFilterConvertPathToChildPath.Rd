\alias{gtkTreeModelFilterConvertPathToChildPath}
\name{gtkTreeModelFilterConvertPathToChildPath}
\title{gtkTreeModelFilterConvertPathToChildPath}
\description{Converts \code{filter.path} to a path on the child model of \code{filter}. That is,
\code{filter.path} points to a location in \code{filter}. The returned path will
point to the same location in the model not being filtered. If \code{filter.path}
does not point to a location in the child model, \code{NULL} is returned.}
\usage{gtkTreeModelFilterConvertPathToChildPath(object, filter.path)}
\arguments{
\item{\verb{object}}{A \code{\link{GtkTreeModelFilter}}.}
\item{\verb{filter.path}}{A \code{\link{GtkTreePath}} to convert.}
}
\details{Since 2.4}
\value{[\code{\link{GtkTreePath}}] A newly allocated \code{\link{GtkTreePath}}, or \code{NULL}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
