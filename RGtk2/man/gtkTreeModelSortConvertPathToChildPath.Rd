\alias{gtkTreeModelSortConvertPathToChildPath}
\name{gtkTreeModelSortConvertPathToChildPath}
\title{gtkTreeModelSortConvertPathToChildPath}
\description{Converts \code{sorted.path} to a path on the child model of \code{tree.model.sort}.  
That is, \code{sorted.path} points to a location in \code{tree.model.sort}.  The 
returned path will point to the same location in the model not being 
sorted.  If \code{sorted.path} does not point to a location in the child model, 
\code{NULL} is returned.}
\usage{gtkTreeModelSortConvertPathToChildPath(object, sorted.path)}
\arguments{
\item{\verb{object}}{A \code{\link{GtkTreeModelSort}}}
\item{\verb{sorted.path}}{A \code{\link{GtkTreePath}} to convert}
}
\value{[\code{\link{GtkTreePath}}] A newly allocated \code{\link{GtkTreePath}}, or \code{NULL}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
