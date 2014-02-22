\alias{gdkDisplayAddClientMessageFilter}
\name{gdkDisplayAddClientMessageFilter}
\title{gdkDisplayAddClientMessageFilter}
\description{Adds a filter to be called when X ClientMessage events are received.
See \code{\link{gdkWindowAddFilter}} if you are interested in filtering other
types of events.}
\usage{gdkDisplayAddClientMessageFilter(object, message.type, func, 
    data)}
\arguments{
\item{\verb{object}}{a \code{\link{GdkDisplay}} for which this message filter applies}
\item{\verb{message.type}}{the type of ClientMessage events to receive.
This will be checked against the \code{message.type} field
of the XClientMessage event struct.}
\item{\verb{func}}{the function to call to process the event.}
\item{\verb{data}}{user data to pass to \code{func}.}
}
\details{Since 2.2}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
