\alias{gtkWidgetGrabFocus}
\name{gtkWidgetGrabFocus}
\title{gtkWidgetGrabFocus}
\description{Causes \code{widget} to have the keyboard focus for the \verb{\link{GtkWindow}} it's
inside. \code{widget} must be a focusable widget, such as a \verb{\link{GtkEntry}};
something like \verb{\link{GtkFrame}} won't work. (More precisely, it must have the
\code{GTK_CAN_FOCUS} flag set.)}
\usage{gtkWidgetGrabFocus(object)}
\arguments{\item{\verb{object}}{[\verb{\link{GtkWidget}}]  a \verb{\link{GtkWidget}}}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
