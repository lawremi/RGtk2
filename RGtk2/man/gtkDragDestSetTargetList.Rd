\alias{gtkDragDestSetTargetList}
\name{gtkDragDestSetTargetList}
\title{gtkDragDestSetTargetList}
\description{Sets the target types that this widget can accept from drag-and-drop.
The widget must first be made into a drag destination with
\code{\link{gtkDragDestSet}}.}
\usage{gtkDragDestSetTargetList(object, target.list)}
\arguments{
\item{\code{object}}{[\code{\link{GtkWidget}}]  a \code{\link{GtkWidget}} that's a drag destination}
\item{\code{target.list}}{[\code{\link{GtkTargetList}}]  list of droppable targets, or \code{NULL} for none}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
