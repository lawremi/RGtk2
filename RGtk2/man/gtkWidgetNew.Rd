\alias{gtkWidgetNew}
\name{gtkWidgetNew}
\title{gtkWidgetNew}
\description{This is a convenience function for creating a widget and setting
its properties in one go. For example you might write:
\code{gtk_widget_new (GTK_TYPE_LABEL, "label", "Hello World", "xalign",
0.0, NULL)} to create a left-aligned label. Equivalent to
\code{\link{gObjectNew}}, but returns a widget so you don't have to
cast the object yourself.}
\usage{gtkWidgetNew(type, ..., show = TRUE)}
\arguments{
\item{\verb{type}}{type ID of the widget to create}
\item{\verb{...}}{a new \code{\link{GtkWidget}} of type \code{widget.type}}
}
\value{[\code{\link{GtkWidget}}] a new \code{\link{GtkWidget}} of type \code{widget.type}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
