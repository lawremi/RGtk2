\alias{gtkTreeViewGetDestRowAtPos}
\name{gtkTreeViewGetDestRowAtPos}
\title{gtkTreeViewGetDestRowAtPos}
\description{Determines the destination row for a given position.  \code{drag.x} and
\code{drag.y} are expected to be in widget coordinates.  This function is only
meaningful if \code{tree.view} is realized.  Therefore this function will always
return \code{FALSE} if \code{tree.view} is not realized or does not have a model.}
\usage{gtkTreeViewGetDestRowAtPos(object, drag.x, drag.y)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkTreeView}}}
\item{\verb{drag.x}}{the position to determine the destination row for}
\item{\verb{drag.y}}{the position to determine the destination row for}
}
\value{
A list containing the following elements:
\item{retval}{[logical] whether there is a row at the given position, \code{TRUE} if this
is indeed the case.}
\item{\verb{path}}{Return location for the path of the highlighted row, or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
\item{\verb{pos}}{Return location for the drop position, or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
