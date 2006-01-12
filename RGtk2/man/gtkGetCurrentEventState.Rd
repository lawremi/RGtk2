\alias{gtkGetCurrentEventState}
\name{gtkGetCurrentEventState}
\title{gtkGetCurrentEventState}
\description{If there is a current event and it has a state field, place
that state field in \code{state} and return \code{TRUE}, otherwise return
\code{FALSE}.}
\usage{gtkGetCurrentEventState(state)}
\arguments{\item{\code{state}}{[\code{\link{GdkModifierType}}]  a location to store the state of the current event}}
\value{[logical]  \code{TRUE} if there was a current event and it had a state field}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
