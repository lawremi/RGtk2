\alias{gtkWidgetGrabFocus}
\name{gtkWidgetGrabFocus}
\title{gtkWidgetGrabFocus}
\description{Causes \code{widget} to have the keyboard focus for the \code{\link{GtkWindow}} it's
inside. \code{widget} must be a focusable widget, such as a \code{\link{GtkEntry}};
something like \code{\link{GtkFrame}} won't work. (More precisely, it must have the
\code{GTK_CAN_FOCUS} flag set.)}
\usage{gtkWidgetGrabFocus(object)}
\arguments{\item{\code{object}}{[\code{\link{GtkWidget}}]  a \code{\link{GtkWidget}}}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
