\alias{gtkGetEventWidget}
\name{gtkGetEventWidget}
\title{gtkGetEventWidget}
\description{If \code{event} is \code{NULL} or the event was not associated with any widget,
returns \code{NULL}, otherwise returns the widget that received the event
originally.}
\usage{gtkGetEventWidget(event)}
\arguments{\item{\verb{event}}{a \code{\link{GdkEvent}}}}
\value{[\code{\link{GtkWidget}}] the widget that originally received \code{event}, or \code{NULL}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
