\alias{gtkDragSourceSet}
\name{gtkDragSourceSet}
\title{gtkDragSourceSet}
\description{Sets up a widget so that GTK+ will start a drag operation when the user
clicks and drags on the widget. The widget must have a window.}
\usage{gtkDragSourceSet(object, start.button.mask, targets, actions)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkWidget}}}
\item{\verb{start.button.mask}}{the bitmask of buttons that can start the drag}
\item{\verb{targets}}{the table of targets that the drag will support,
may be \code{NULL}. \emph{[  \acronym{allow-none}  ][  \acronym{array}   length=n_targets]}}
\item{\verb{actions}}{the bitmask of possible actions for a drag from this widget}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
