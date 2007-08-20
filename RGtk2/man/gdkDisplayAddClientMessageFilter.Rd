\alias{gdkDisplayAddClientMessageFilter}
\name{gdkDisplayAddClientMessageFilter}
\title{gdkDisplayAddClientMessageFilter}
\description{Adds a filter to be called when X ClientMessage events are received.
See \code{\link{gdkWindowAddFilter}} if you are interested in filtering other
types of events.}
\usage{gdkDisplayAddClientMessageFilter(object, message.type, func, data)}
\arguments{
\item{\code{object}}{[\code{\link{GdkDisplay}}]  a \code{\link{GdkDisplay}} for which this message filter applies}
\item{\code{message.type}}{[\code{\link{GdkAtom}}]  the type of ClientMessage events to receive.
  This will be checked against the \code{message.type} field 
  of the XClientMessage event struct.}
\item{\code{func}}{[\code{\link{GdkFilterFunc}}]  the function to call to process the event.}
\item{\code{data}}{[R object]  user data to pass to \code{func}.}
}
\details{  Since  2.2}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
