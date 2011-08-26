\alias{gdkAddClientMessageFilter}
\name{gdkAddClientMessageFilter}
\title{gdkAddClientMessageFilter}
\description{Adds a filter to the default display to be called when X ClientMessage events
are received. See \code{\link{gdkDisplayAddClientMessageFilter}}.}
\usage{gdkAddClientMessageFilter(message.type, func, data)}
\arguments{
\item{\verb{message.type}}{the type of ClientMessage events to receive. This will be
checked against the \code{message_type} field of the
XClientMessage event struct.}
\item{\verb{func}}{the function to call to process the event.}
\item{\verb{data}}{user data to pass to \code{func}.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
