\alias{gtkContainerPropagateExpose}
\name{gtkContainerPropagateExpose}
\title{gtkContainerPropagateExpose}
\description{When a container receives an expose event, it must send synthetic
expose events to all children that don't have their own \code{GdkWindows}.
This function provides a convenient way of doing this. A container,
when it receives an expose event, calls \code{\link{gtkContainerPropagateExpose}} 
once for each child, passing in the event the container received.}
\usage{gtkContainerPropagateExpose(object, child, event)}
\arguments{
\item{\code{object}}{[\code{\link{GtkContainer}}]  a \code{\link{GtkContainer}}}
\item{\code{child}}{[\code{\link{GtkWidget}}]  a child of \code{container}}
\item{\code{event}}{[\code{\link{GdkEventExpose}}]  a expose event sent to container}
}
\details{\code{\link{gtkContainerPropagateExpose}} takes care of deciding whether
an expose event needs to be sent to the child, intersecting
the event's area with the child area, and sending the event.
  
In most cases, a container can simply either simply inherit the
::expose implementation from \code{\link{GtkContainer}}, or, do some drawing 
and then chain to the ::expose implementation from \code{\link{GtkContainer}}.  }
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
