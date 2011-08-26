\alias{gtkGetCurrentEvent}
\name{gtkGetCurrentEvent}
\title{gtkGetCurrentEvent}
\description{Obtains a copy of the event currently being processed by GTK+.  For
example, if you get a "clicked" signal from \code{\link{GtkButton}}, the current
event will be the \code{\link{GdkEventButton}} that triggered the "clicked"
signal.
If there is no current event, the function returns \code{NULL}.}
\usage{gtkGetCurrentEvent()}
\value{[\code{\link{GdkEvent}}] a copy of the current event, or \code{NULL} if no current event.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
