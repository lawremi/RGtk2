\alias{gtkListStoreMoveBefore}
\name{gtkListStoreMoveBefore}
\title{gtkListStoreMoveBefore}
\description{Moves \code{iter} in \code{store} to the position before \code{position}. Note that this
function only works with unsorted stores. If \code{position} is \code{NULL}, \code{iter}
will be moved to the end of the list.}
\usage{gtkListStoreMoveBefore(object, iter, position = NULL)}
\arguments{
\item{\verb{object}}{A \code{\link{GtkListStore}}.}
\item{\verb{iter}}{A \code{\link{GtkTreeIter}}.}
\item{\verb{position}}{A \code{\link{GtkTreeIter}}, or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
}
\details{Since 2.2}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
