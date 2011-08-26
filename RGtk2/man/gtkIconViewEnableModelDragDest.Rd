\alias{gtkIconViewEnableModelDragDest}
\name{gtkIconViewEnableModelDragDest}
\title{gtkIconViewEnableModelDragDest}
\description{Turns \code{icon.view} into a drop destination for automatic DND. Calling this
method sets \verb{"reorderable"} to \code{FALSE}.}
\usage{gtkIconViewEnableModelDragDest(object, targets, actions)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkIconView}}}
\item{\verb{targets}}{the table of targets that the drag will support}
\item{\verb{actions}}{the bitmask of possible actions for a drag to this
widget}
}
\details{Since 2.8}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
