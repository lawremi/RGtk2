\alias{gtkWidgetRealize}
\name{gtkWidgetRealize}
\title{gtkWidgetRealize}
\description{Creates the GDK (windowing system) resources associated with a
widget.  For example, \code{widget->window} will be created when a widget
is realized.  Normally realization happens implicitly; if you show
a widget and all its parent containers, then the widget will be
realized and mapped automatically.}
\usage{gtkWidgetRealize(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkWidget}}}}
\details{Realizing a widget requires all
the widget's parent widgets to be realized; calling
\code{\link{gtkWidgetRealize}} realizes the widget's parents in addition to
\code{widget} itself. If a widget is not yet inside a toplevel window
when you realize it, bad things will happen.
  
This function is primarily used in widget implementations, and
isn't very useful otherwise. Many times when you think you might
need it, a better approach is to connect to a signal that will be
called after the widget is realized automatically, such as
GtkWidget::expose-event. Or simply \code{\link{gSignalConnect}} to the
GtkWidget::realize signal.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
