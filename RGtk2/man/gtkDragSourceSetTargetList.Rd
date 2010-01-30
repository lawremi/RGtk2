\alias{gtkDragSourceSetTargetList}
\name{gtkDragSourceSetTargetList}
\title{gtkDragSourceSetTargetList}
\description{Changes the target types that this widget offers for drag-and-drop.
The widget must first be made into a drag source with
\code{\link{gtkDragSourceSet}}.}
\usage{gtkDragSourceSetTargetList(object, target.list)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkWidget}}]  a \verb{\link{GtkWidget}} that's a drag source}
\item{\verb{target.list}}{[\verb{\link{GtkTargetList}}]  list of draggable targets, or \code{NULL} for none}
}
\details{  Since  2.4}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
