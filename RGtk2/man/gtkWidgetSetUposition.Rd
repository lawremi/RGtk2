\alias{gtkWidgetSetUposition}
\name{gtkWidgetSetUposition}
\title{gtkWidgetSetUposition}
\description{
Sets the position of a widget. The funny "u" in the name comes from
the "user position" hint specified by the X Window System, and
exists for legacy reasons. This function doesn't work if a widget
is inside a container; it's only really useful on \code{\link{GtkWindow}}.
\strong{WARNING: \code{gtk_widget_set_uposition} is deprecated and should not be used in newly-written code.}
}
\usage{gtkWidgetSetUposition(object, x, y)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkWidget}}}
\item{\verb{x}}{x position; -1 to unset x; -2 to leave x unchanged}
\item{\verb{y}}{y position; -1 to unset y; -2 to leave y unchanged}
}
\details{Don't use this function to center dialogs over the main application
window; most window managers will do the centering on your behalf
if you call \code{\link{gtkWindowSetTransientFor}}, and it's really not
possible to get the centering to work correctly in all cases from
application code. But if you insist, use \code{\link{gtkWindowSetPosition}}
to set \verb{GTK_WIN_POS_CENTER_ON_PARENT}, don't do the centering
manually.
  
Note that although \code{x} and \code{y} can be individually unset, the position
is not honoured unless both \code{x} and \code{y} are set.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
