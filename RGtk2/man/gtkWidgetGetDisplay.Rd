\alias{gtkWidgetGetDisplay}
\name{gtkWidgetGetDisplay}
\title{gtkWidgetGetDisplay}
\description{Get the \code{\link{GdkDisplay}} for the toplevel window associated with
this widget. This function can only be called after the widget
has been added to a widget hierarchy with a \code{\link{GtkWindow}} at the top.}
\usage{gtkWidgetGetDisplay(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkWidget}}}}
\details{In general, you should only create display specific
resources when a widget has been realized, and you should
free those resources when the widget is unrealized.
  Since 2.2}
\value{[\code{\link{GdkDisplay}}] the \code{\link{GdkDisplay}} for the toplevel for this widget. \emph{[  \acronym{transfer none}  ]}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
