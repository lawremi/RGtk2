\alias{gtkWindowSetDefault}
\name{gtkWindowSetDefault}
\title{gtkWindowSetDefault}
\description{The default widget is the widget that's activated when the user
presses Enter in a dialog (for example). This function sets or
unsets the default widget for a \verb{\link{GtkWindow}} about. When setting
(rather than unsetting) the default widget it's generally easier to
call \code{\link{gtkWidgetGrabFocus}} on the widget. Before making a widget
the default widget, you must set the \verb{GTK_CAN_DEFAULT} flag on the
widget you'd like to make the default using \code{gtkWidgetSetFlags()}.}
\usage{gtkWindowSetDefault(object, default.widget = NULL)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkWindow}}]  a \verb{\link{GtkWindow}}}
\item{\verb{default.widget}}{[\verb{\link{GtkWidget}}]  widget to be the default, or \code{NULL} to unset the
                 default widget for the toplevel.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
