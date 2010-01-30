\alias{gtkDragDestSet}
\name{gtkDragDestSet}
\title{gtkDragDestSet}
\description{Sets a widget as a potential drop destination.}
\usage{gtkDragDestSet(object, flags, targets, actions)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkWidget}}] a \verb{\link{GtkWidget}}}
\item{\verb{flags}}{[\code{\link{GtkDestDefaults}}] the flags that specify what actions GTK+ should take
 on behalf of a widget for drops onto that widget. The \code{targets}
 and \code{actions} fields only are used if \code{GTK_DEST_DEFAULT_MOTION}
 or \code{GTK_DEST_DEFAULT_DROP} are given.}
\item{\verb{targets}}{[\verb{\link{GtkTargetEntry}}] a pointer to a list of \verb{\link{GtkTargetEntry}}s indicating
 the drop types that this widget will accept.}
\item{\verb{actions}}{[\code{\link{GdkDragAction}}] a bitmask of possible actions for a drop onto this
 widget.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
