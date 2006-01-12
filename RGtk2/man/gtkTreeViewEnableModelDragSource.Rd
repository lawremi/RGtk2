\alias{gtkTreeViewEnableModelDragSource}
\name{gtkTreeViewEnableModelDragSource}
\title{gtkTreeViewEnableModelDragSource}
\description{Turns \code{tree.view} into a drag source for automatic DND.}
\usage{gtkTreeViewEnableModelDragSource(object, start.button.mask, targets, actions)}
\arguments{
\item{\code{object}}{[\code{\link{GtkTreeView}}]  a \code{\link{GtkTreeView}}}
\item{\code{start.button.mask}}{[\code{\link{GdkModifierType}}]  Mask of allowed buttons to start drag}
\item{\code{targets}}{[\code{\link{GtkTargetEntry}}]  the table of targets that the drag will support}
\item{\code{actions}}{[\code{\link{GdkDragAction}}]  the bitmask of possible actions for a drag from this
   widget}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
