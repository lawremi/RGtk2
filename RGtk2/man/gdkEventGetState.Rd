\alias{gdkEventGetState}
\name{gdkEventGetState}
\title{gdkEventGetState}
\description{If the event contains a "state" field, puts that field in \code{state}. Otherwise
stores an empty state (0). Returns \code{TRUE} if there was a state field
in the event. \code{event} may be \code{NULL}, in which case it's treated
as if the event had no state field.}
\usage{gdkEventGetState(object, state)}
\arguments{
\item{\code{object}}{[\code{\link{GdkEvent}}]  a \code{\link{GdkEvent}} or NULL}
\item{\code{state}}{[\code{\link{GdkModifierType}}]  return location for state}
}
\value{[logical]  \code{TRUE} if there was a state field in the event }
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
