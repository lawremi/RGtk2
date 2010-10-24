\alias{gtkWidgetQueueResize}
\name{gtkWidgetQueueResize}
\title{gtkWidgetQueueResize}
\description{This function is only for use in widget implementations.
Flags a widget to have its size renegotiated; should
be called when a widget for some reason has a new size request.
For example, when you change the text in a \code{\link{GtkLabel}}, \code{\link{GtkLabel}}
queues a resize to ensure there's enough space for the new text.}
\usage{gtkWidgetQueueResize(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkWidget}}}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
