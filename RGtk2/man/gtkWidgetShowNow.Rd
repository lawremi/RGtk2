\alias{gtkWidgetShowNow}
\name{gtkWidgetShowNow}
\title{gtkWidgetShowNow}
\description{Shows a widget. If the widget is an unmapped toplevel widget
(i.e. a \verb{\link{GtkWindow}} that has not yet been shown), enter the main
loop and wait for the window to actually be mapped. Be careful;
because the main loop is running, anything can happen during
this function.}
\usage{gtkWidgetShowNow(object)}
\arguments{\item{\verb{object}}{[\verb{\link{GtkWidget}}]  a \verb{\link{GtkWidget}}}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
