\alias{gtkTreeViewMoveColumnAfter}
\name{gtkTreeViewMoveColumnAfter}
\title{gtkTreeViewMoveColumnAfter}
\description{Moves \code{column} to be after to \code{base.column}.  If \code{base.column} is \code{NULL}, then
\code{column} is placed in the first position.}
\usage{gtkTreeViewMoveColumnAfter(object, column, base.column = NULL)}
\arguments{
\item{\verb{object}}{A \code{\link{GtkTreeView}}}
\item{\verb{column}}{The \code{\link{GtkTreeViewColumn}} to be moved.}
\item{\verb{base.column}}{The \code{\link{GtkTreeViewColumn}} to be moved relative to, or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
