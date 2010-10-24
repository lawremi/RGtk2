\alias{gtkWidgetGrabFocus}
\name{gtkWidgetGrabFocus}
\title{gtkWidgetGrabFocus}
\description{Causes \code{widget} to have the keyboard focus for the \code{\link{GtkWindow}} it's
inside. \code{widget} must be a focusable widget, such as a \code{\link{GtkEntry}};
something like \code{\link{GtkFrame}} won't work.}
\usage{gtkWidgetGrabFocus(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkWidget}}}}
\details{More precisely, it must have the \code{GTK_CAN_FOCUS} flag set. Use
\code{\link{gtkWidgetSetCanFocus}} to modify that flag.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
