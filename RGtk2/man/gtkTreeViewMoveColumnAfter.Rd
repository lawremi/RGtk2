\alias{gtkTreeViewMoveColumnAfter}
\name{gtkTreeViewMoveColumnAfter}
\title{gtkTreeViewMoveColumnAfter}
\description{Moves \code{column} to be after to \code{base.column}.  If \code{base.column} is \code{NULL}, then
\code{column} is placed in the first position.}
\usage{gtkTreeViewMoveColumnAfter(object, column, base.column = NULL)}
\arguments{
\item{\code{object}}{[\code{\link{GtkTreeView}}]  A \code{\link{GtkTreeView}}}
\item{\code{column}}{[\code{\link{GtkTreeViewColumn}}]  The \code{\link{GtkTreeViewColumn}} to be moved.}
\item{\code{base.column}}{[\code{\link{GtkTreeViewColumn}}]  The \code{\link{GtkTreeViewColumn}} to be moved relative to, or \code{NULL}.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
