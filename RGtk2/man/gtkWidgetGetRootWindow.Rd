\alias{gtkWidgetGetRootWindow}
\name{gtkWidgetGetRootWindow}
\title{gtkWidgetGetRootWindow}
\description{Get the root window where this widget is located. This function can
only be called after the widget has been added to a widget
heirarchy with \verb{\link{GtkWindow}} at the top.}
\usage{gtkWidgetGetRootWindow(object)}
\arguments{\item{\verb{object}}{[\verb{\link{GtkWidget}}]  a \verb{\link{GtkWidget}}}}
\details{The root window is useful for such purposes as creating a popup
\verb{\link{GdkWindow}} associated with the window. In general, you should only
create display specific resources when a widget has been realized,
and you should free those resources when the widget is unrealized.  

  Since  2.2}
\value{[\verb{\link{GdkWindow}}]  the \verb{\link{GdkWindow}} root window for the toplevel for this widget.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
