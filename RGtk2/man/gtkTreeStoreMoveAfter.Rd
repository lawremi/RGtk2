\alias{gtkTreeStoreMoveAfter}
\name{gtkTreeStoreMoveAfter}
\title{gtkTreeStoreMoveAfter}
\description{Moves \code{iter} in \code{tree.store} to the position after \code{position}. \code{iter} and
\code{position} should be in the same level. Note that this function only
works with unsorted stores. If \code{position} is \code{NULL}, \code{iter} will be moved
to the start of the level.}
\usage{gtkTreeStoreMoveAfter(object, iter, position = NULL)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkTreeStore}}]  A \verb{\link{GtkTreeStore}}.}
\item{\verb{iter}}{[\verb{\link{GtkTreeIter}}]  A \verb{\link{GtkTreeIter}}.}
\item{\verb{position}}{[\verb{\link{GtkTreeIter}}]  A \verb{\link{GtkTreeIter}}.}
}
\details{  Since  2.2}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
