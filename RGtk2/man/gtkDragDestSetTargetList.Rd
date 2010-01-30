\alias{gtkDragDestSetTargetList}
\name{gtkDragDestSetTargetList}
\title{gtkDragDestSetTargetList}
\description{Sets the target types that this widget can accept from drag-and-drop.
The widget must first be made into a drag destination with
\code{\link{gtkDragDestSet}}.}
\usage{gtkDragDestSetTargetList(object, target.list)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkWidget}}]  a \verb{\link{GtkWidget}} that's a drag destination}
\item{\verb{target.list}}{[\verb{\link{GtkTargetList}}]  list of droppable targets, or \code{NULL} for none}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
