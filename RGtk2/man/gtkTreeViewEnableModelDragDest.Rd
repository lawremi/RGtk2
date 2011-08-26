\alias{gtkTreeViewEnableModelDragDest}
\name{gtkTreeViewEnableModelDragDest}
\title{gtkTreeViewEnableModelDragDest}
\description{Turns \code{tree.view} into a drop destination for automatic DND. Calling
this method sets \verb{"reorderable"} to \code{FALSE}.}
\usage{gtkTreeViewEnableModelDragDest(object, targets, actions)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkTreeView}}}
\item{\verb{targets}}{the table of targets that the drag will support}
\item{\verb{actions}}{the bitmask of possible actions for a drag from this
widget}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
