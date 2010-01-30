\alias{gtkTreeViewMoveColumnAfter}
\name{gtkTreeViewMoveColumnAfter}
\title{gtkTreeViewMoveColumnAfter}
\description{Moves \code{column} to be after to \code{base.column}.  If \code{base.column} is \code{NULL}, then
\code{column} is placed in the first position.}
\usage{gtkTreeViewMoveColumnAfter(object, column, base.column = NULL)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkTreeView}}]  A \verb{\link{GtkTreeView}}}
\item{\verb{column}}{[\verb{\link{GtkTreeViewColumn}}]  The \verb{\link{GtkTreeViewColumn}} to be moved.}
\item{\verb{base.column}}{[\verb{\link{GtkTreeViewColumn}}]  The \verb{\link{GtkTreeViewColumn}} to be moved relative to, or \code{NULL}.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
