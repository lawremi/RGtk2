\alias{gtkMenuAttachToWidget}
\name{gtkMenuAttachToWidget}
\title{gtkMenuAttachToWidget}
\description{Attaches the menu to the widget and provides a callback function that will
be invoked when the menu calls \code{\link{gtkMenuDetach}} during its destruction.}
\usage{gtkMenuAttachToWidget(object, attach.widget)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkMenu}}] a \verb{\link{GtkMenu}}.}
\item{\verb{attach.widget}}{[\verb{\link{GtkWidget}}] the \verb{\link{GtkWidget}} that the menu will be attached to.}
}
\note{This does not yet support the callback function, sorry.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
