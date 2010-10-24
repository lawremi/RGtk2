\alias{gtkContainerAdd}
\name{gtkContainerAdd}
\title{gtkContainerAdd}
\description{Adds \code{widget} to \code{container}. Typically used for simple containers
such as \code{\link{GtkWindow}}, \code{\link{GtkFrame}}, or \code{\link{GtkButton}}; for more complicated
layout containers such as \code{\link{GtkBox}} or \code{\link{GtkTable}}, this function will
pick default packing parameters that may not be correct.  So
consider functions such as \code{\link{gtkBoxPackStart}} and
\code{\link{gtkTableAttach}} as an alternative to \code{\link{gtkContainerAdd}} in
those cases. A widget may be added to only one container at a time;
you can't place the same widget inside two different containers.}
\usage{gtkContainerAdd(object, widget)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkContainer}}}
\item{\verb{widget}}{a widget to be placed inside \code{container}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
