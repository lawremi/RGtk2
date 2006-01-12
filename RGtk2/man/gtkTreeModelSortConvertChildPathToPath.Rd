\alias{gtkTreeModelSortConvertChildPathToPath}
\name{gtkTreeModelSortConvertChildPathToPath}
\title{gtkTreeModelSortConvertChildPathToPath}
\description{Converts \code{child.path} to a path relative to \code{tree.model.sort}.  That is,
\code{child.path} points to a path in the child model.  The returned path will
point to the same row in the sorted model.  If \code{child.path} isn't a valid 
path on the child model, then \code{NULL} is returned.}
\usage{gtkTreeModelSortConvertChildPathToPath(object, child.path)}
\arguments{
\item{\code{object}}{[\code{\link{GtkTreeModelSort}}]  A \code{\link{GtkTreeModelSort}}}
\item{\code{child.path}}{[\code{\link{GtkTreePath}}]  A \code{\link{GtkTreePath}} to convert}
}
\value{[\code{\link{GtkTreePath}}]  A newly allocated \code{\link{GtkTreePath}}, or \code{NULL}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
