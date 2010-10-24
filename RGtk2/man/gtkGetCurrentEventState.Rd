\alias{gtkGetCurrentEventState}
\name{gtkGetCurrentEventState}
\title{gtkGetCurrentEventState}
\description{If there is a current event and it has a state field, place
that state field in \code{state} and return \code{TRUE}, otherwise return
\code{FALSE}.}
\usage{gtkGetCurrentEventState()}
\value{
A list containing the following elements:
\item{retval}{[logical] \code{TRUE} if there was a current event and it had a state field}
\item{\verb{state}}{a location to store the state of the current event}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
