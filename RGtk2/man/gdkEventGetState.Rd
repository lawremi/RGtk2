\alias{gdkEventGetState}
\name{gdkEventGetState}
\title{gdkEventGetState}
\description{If the event contains a "state" field, puts that field in \code{state}. Otherwise
stores an empty state (0). Returns \code{TRUE} if there was a state field
in the event. \code{event} may be \code{NULL}, in which case it's treated
as if the event had no state field.}
\usage{gdkEventGetState(object)}
\arguments{\item{\verb{object}}{a \code{\link{GdkEvent}} or NULL}}
\value{
A list containing the following elements:
\item{retval}{[logical] \code{TRUE} if there was a state field in the event}
\item{\verb{state}}{return location for state}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
