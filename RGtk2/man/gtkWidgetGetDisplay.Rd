\alias{gtkWidgetGetDisplay}
\name{gtkWidgetGetDisplay}
\title{gtkWidgetGetDisplay}
\description{Get the \verb{\link{GdkDisplay}} for the toplevel window associated with
this widget. This function can only be called after the widget
has been added to a widget hierarchy with a \verb{\link{GtkWindow}} at the top.}
\usage{gtkWidgetGetDisplay(object)}
\arguments{\item{\verb{object}}{[\verb{\link{GtkWidget}}]  a \verb{\link{GtkWidget}}}}
\details{In general, you should only create display specific
resources when a widget has been realized, and you should
free those resources when the widget is unrealized.  

  Since  2.2}
\value{[\verb{\link{GdkDisplay}}]  the \verb{\link{GdkDisplay}} for the toplevel for this widget.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
