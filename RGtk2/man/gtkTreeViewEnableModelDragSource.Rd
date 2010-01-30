\alias{gtkTreeViewEnableModelDragSource}
\name{gtkTreeViewEnableModelDragSource}
\title{gtkTreeViewEnableModelDragSource}
\description{Turns \code{tree.view} into a drag source for automatic DND.}
\usage{gtkTreeViewEnableModelDragSource(object, start.button.mask, targets, actions)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkTreeView}}]  a \verb{\link{GtkTreeView}}}
\item{\verb{start.button.mask}}{[\code{\link{GdkModifierType}}]  Mask of allowed buttons to start drag}
\item{\verb{targets}}{[\verb{\link{GtkTargetEntry}}]  the table of targets that the drag will support}
\item{\verb{actions}}{[\code{\link{GdkDragAction}}]  the bitmask of possible actions for a drag from this
   widget}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
