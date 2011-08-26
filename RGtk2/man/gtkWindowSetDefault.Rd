\alias{gtkWindowSetDefault}
\name{gtkWindowSetDefault}
\title{gtkWindowSetDefault}
\description{The default widget is the widget that's activated when the user
presses Enter in a dialog (for example). This function sets or
unsets the default widget for a \code{\link{GtkWindow}} about. When setting
(rather than unsetting) the default widget it's generally easier to
call \code{\link{gtkWidgetGrabFocus}} on the widget. Before making a widget
the default widget, you must set the \verb{GTK_CAN_DEFAULT} flag on the
widget you'd like to make the default using \code{gtkWidgetSetFlags()}.}
\usage{gtkWindowSetDefault(object, default.widget = NULL)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkWindow}}}
\item{\verb{default.widget}}{widget to be the default, or \code{NULL} to unset the
default widget for the toplevel. \emph{[  \acronym{allow-none}  ]}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
