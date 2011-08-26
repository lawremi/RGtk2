\alias{gtkTreeStoreMoveBefore}
\name{gtkTreeStoreMoveBefore}
\title{gtkTreeStoreMoveBefore}
\description{Moves \code{iter} in \code{tree.store} to the position before \code{position}. \code{iter} and
\code{position} should be in the same level. Note that this function only
works with unsorted stores. If \code{position} is \code{NULL}, \code{iter} will be
moved to the end of the level.}
\usage{gtkTreeStoreMoveBefore(object, iter, position = NULL)}
\arguments{
\item{\verb{object}}{A \code{\link{GtkTreeStore}}.}
\item{\verb{iter}}{A \code{\link{GtkTreeIter}}.}
\item{\verb{position}}{A \code{\link{GtkTreeIter}} or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
}
\details{Since 2.2}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
