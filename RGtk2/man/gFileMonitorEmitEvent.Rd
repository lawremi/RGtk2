\alias{gFileMonitorEmitEvent}
\name{gFileMonitorEmitEvent}
\title{gFileMonitorEmitEvent}
\description{Emits the \verb{"changed"} signal if a change
has taken place. Should be called from file monitor 
implementations only.}
\usage{gFileMonitorEmitEvent(object, file, other.file, event.type)}
\arguments{
\item{\verb{object}}{a \code{\link{GFileMonitor}}.}
\item{\verb{file}}{a \code{\link{GFile}}.}
\item{\verb{other.file}}{a \code{\link{GFile}}.}
\item{\verb{event.type}}{a set of \code{\link{GFileMonitorEvent}} flags.}
}
\details{The signal will be emitted from an idle handler (in the thread-default main
context).}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
