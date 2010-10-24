\alias{gdkWindowAddFilter}
\name{gdkWindowAddFilter}
\title{gdkWindowAddFilter}
\description{Adds an event filter to \code{window}, allowing you to intercept events
before they reach GDK. This is a low-level operation and makes it
easy to break GDK and/or GTK+, so you have to know what you're
doing. Pass \code{NULL} for \code{window} to get all events for all windows,
instead of events for a specific window.}
\usage{gdkWindowAddFilter(object, fun, data)}
\arguments{
\item{\verb{object}}{a \code{\link{GdkWindow}}}
\item{\verb{data}}{data to pass to filter callback}
}
\details{See \code{\link{gdkDisplayAddClientMessageFilter}} if you are interested
in X ClientMessage events.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
