\alias{gtkDragBegin}
\name{gtkDragBegin}
\title{gtkDragBegin}
\description{Initiates a drag on the source side. The function
only needs to be used when the application is
starting drags itself, and is not needed when
\code{\link{gtkDragSourceSet}} is used.}
\usage{gtkDragBegin(object, targets, actions, button, event)}
\arguments{
\item{\code{object}}{[\code{\link{GtkWidget}}]  the source widget.}
\item{\code{targets}}{[\code{\link{GtkTargetList}}]  The targets (data formats) in which the
   source can provide the data.}
\item{\code{actions}}{[\code{\link{GdkDragAction}}]  A bitmask of the allowed drag actions for this drag.}
\item{\code{button}}{[integer]  The button the user clicked to start the drag.}
\item{\code{event}}{[\code{\link{GdkEvent}}]  The event that triggered the start of the drag.}
}
\value{[\code{\link{GdkDragContext}}]  the context for this drag.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
