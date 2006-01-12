\alias{gtkGrabAdd}
\name{gtkGrabAdd}
\title{gtkGrabAdd}
\description{Makes \code{widget} the current grabbed widget. This means that interaction with 
other widgets in the same application is blocked and mouse as well as 
keyboard events are delivered to this widget.}
\usage{gtkGrabAdd(object)}
\arguments{\item{\code{object}}{[\code{\link{GtkWidget}}] The widget that grabs keyboard and pointer events.}}
\note{
This function is deprecated. You should use \code{GDK_PRIORITY_REDRAW} instead.
This function is deprecated. You should use \code{G_PRIORITY_HIGH} instead.
This function is deprecated. You should use \code{G_PRIORITY_DEFAULT_IDLE} instead.
This function is deprecated. You should use \code{G_PRIORITY_LOW} instead.
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
