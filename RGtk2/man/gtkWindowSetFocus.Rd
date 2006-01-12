\alias{gtkWindowSetFocus}
\name{gtkWindowSetFocus}
\title{gtkWindowSetFocus}
\description{If \code{focus} is not the current focus widget, and is focusable, sets
it as the focus widget for the window. If \code{focus} is \code{NULL}, unsets
the focus widget for this window. To set the focus to a particular
widget in the toplevel, it is usually more convenient to use
\code{\link{gtkWidgetGrabFocus}} instead of this function.}
\usage{gtkWindowSetFocus(object, focus = NULL)}
\arguments{
\item{\code{object}}{[\code{\link{GtkWindow}}]  a \code{\link{GtkWindow}}}
\item{\code{focus}}{[\code{\link{GtkWidget}}]  widget to be the new focus widget, or \code{NULL} to unset
  any focus widget for the toplevel window.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
