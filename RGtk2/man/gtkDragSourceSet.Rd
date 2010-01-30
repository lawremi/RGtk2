\alias{gtkDragSourceSet}
\name{gtkDragSourceSet}
\title{gtkDragSourceSet}
\description{Sets up a widget so that GTK+ will start a drag
operation when the user clicks and drags on the
widget. The widget must have a window.}
\usage{gtkDragSourceSet(object, start.button.mask, targets, actions)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkWidget}}] a \verb{\link{GtkWidget}}}
\item{\verb{start.button.mask}}{[\code{\link{GdkModifierType}}] the bitmask of buttons that can start the drag}
\item{\verb{targets}}{[\verb{\link{GtkTargetEntry}}] the table of targets that the drag will support}
\item{\verb{actions}}{[\code{\link{GdkDragAction}}] the bitmask of possible actions for a drag from this
 widget.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
