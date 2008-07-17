\alias{gtkTreeDragDestRowDropPossible}
\name{gtkTreeDragDestRowDropPossible}
\title{gtkTreeDragDestRowDropPossible}
\description{Determines whether a drop is possible before the given \code{dest.path},
at the same depth as \code{dest.path}. i.e., can we drop the data in
\code{selection.data} at that location. \code{dest.path} does not have to
exist; the return value will almost certainly be \code{FALSE} if the
parent of \code{dest.path} doesn't exist, though.}
\usage{gtkTreeDragDestRowDropPossible(object, dest.path, selection.data)}
\arguments{
\item{\code{object}}{[\code{\link{GtkTreeDragDest}}]  a \code{\link{GtkTreeDragDest}}}
\item{\code{dest.path}}{[\code{\link{GtkTreePath}}]  destination row}
\item{\code{selection.data}}{[\code{\link{GtkSelectionData}}]  the data being dragged}
}
\value{[logical] \code{TRUE} if a drop is possible before \code{dest.path}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
