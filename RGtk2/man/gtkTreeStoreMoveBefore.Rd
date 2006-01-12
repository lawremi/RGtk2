\alias{gtkTreeStoreMoveBefore}
\name{gtkTreeStoreMoveBefore}
\title{gtkTreeStoreMoveBefore}
\description{Moves \code{iter} in \code{tree.store} to the position before \code{position}. \code{iter} and
\code{position} should be in the same level. Note that this function only
works with unsorted stores. If \code{position} is \code{NULL}, \code{iter} will be
moved to the end of the level.}
\usage{gtkTreeStoreMoveBefore(object, iter, position = NULL)}
\arguments{
\item{\code{object}}{[\code{\link{GtkTreeStore}}]  A \code{\link{GtkTreeStore}}.}
\item{\code{iter}}{[\code{\link{GtkTreeIter}}]  A \code{\link{GtkTreeIter}}.}
\item{\code{position}}{[\code{\link{GtkTreeIter}}]  A \code{\link{GtkTreeIter}} or \code{NULL}.}
}
\details{  Since  2.2}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
