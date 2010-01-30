\alias{atkAddGlobalEventListener}
\name{atkAddGlobalEventListener}
\title{atkAddGlobalEventListener}
\description{Adds the specified function to the list of functions to be called
when an event of type event_type occurs.}
\usage{atkAddGlobalEventListener(listener, event.type)}
\arguments{
\item{\verb{listener}}{[GSignalEmissionHook]  the listener to notify}
\item{\verb{event.type}}{[character]  the type of event for which notification is requested}
}
\value{[numeric]  added event listener id, or 0 on failure.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
