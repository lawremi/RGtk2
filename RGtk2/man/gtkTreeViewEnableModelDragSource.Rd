\alias{gtkTreeViewEnableModelDragSource}
\name{gtkTreeViewEnableModelDragSource}
\title{gtkTreeViewEnableModelDragSource}
\description{Turns \code{tree.view} into a drag source for automatic DND. Calling this
method sets \verb{"reorderable"} to \code{FALSE}.}
\usage{gtkTreeViewEnableModelDragSource(object, start.button.mask, targets, 
    actions)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkTreeView}}}
\item{\verb{start.button.mask}}{Mask of allowed buttons to start drag}
\item{\verb{targets}}{the table of targets that the drag will support}
\item{\verb{actions}}{the bitmask of possible actions for a drag from this
widget}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
