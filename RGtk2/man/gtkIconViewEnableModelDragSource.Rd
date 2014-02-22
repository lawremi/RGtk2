\alias{gtkIconViewEnableModelDragSource}
\name{gtkIconViewEnableModelDragSource}
\title{gtkIconViewEnableModelDragSource}
\description{Turns \code{icon.view} into a drag source for automatic DND. Calling this
method sets \verb{"reorderable"} to \code{FALSE}.}
\usage{gtkIconViewEnableModelDragSource(object, start.button.mask, targets, 
    actions)}
\arguments{
\item{\verb{object}}{a \verb{GtkIconTreeView}}
\item{\verb{start.button.mask}}{Mask of allowed buttons to start drag}
\item{\verb{targets}}{the table of targets that the drag will support}
\item{\verb{actions}}{the bitmask of possible actions for a drag from this
widget}
}
\details{Since 2.8}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
