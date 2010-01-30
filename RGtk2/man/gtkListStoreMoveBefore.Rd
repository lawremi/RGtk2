\alias{gtkListStoreMoveBefore}
\name{gtkListStoreMoveBefore}
\title{gtkListStoreMoveBefore}
\description{Moves \code{iter} in \code{store} to the position before \code{position}. Note that this
function only works with unsorted stores. If \code{position} is \code{NULL}, \code{iter}
will be moved to the end of the list.}
\usage{gtkListStoreMoveBefore(object, iter, position = NULL)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkListStore}}]  A \verb{\link{GtkListStore}}.}
\item{\verb{iter}}{[\verb{\link{GtkTreeIter}}]  A \verb{\link{GtkTreeIter}}.}
\item{\verb{position}}{[\verb{\link{GtkTreeIter}}]  A \verb{\link{GtkTreeIter}}, or \code{NULL}.}
}
\details{  Since  2.2}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
