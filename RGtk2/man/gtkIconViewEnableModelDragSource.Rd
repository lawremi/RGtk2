\alias{gtkIconViewEnableModelDragSource}
\name{gtkIconViewEnableModelDragSource}
\title{gtkIconViewEnableModelDragSource}
\description{Turns \code{icon.view} into a drag source for automatic DND.}
\usage{gtkIconViewEnableModelDragSource(object, start.button.mask, targets, actions)}
\arguments{
\item{\code{object}}{[\code{\link{GtkIconView}}]  a \code{GtkIconTreeView}}
\item{\code{start.button.mask}}{[\code{\link{GdkModifierType}}]  Mask of allowed buttons to start drag}
\item{\code{targets}}{[\code{\link{GtkTargetEntry}}]  the table of targets that the drag will support}
\item{\code{actions}}{[\code{\link{GdkDragAction}}]  the bitmask of possible actions for a drag from this
   widget}
}
\details{  Since  2.8}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
