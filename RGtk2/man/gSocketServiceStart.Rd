\alias{gSocketServiceStart}
\name{gSocketServiceStart}
\title{gSocketServiceStart}
\description{Starts the service, i.e. start accepting connections
from the added sockets when the mainloop runs.}
\usage{gSocketServiceStart(object)}
\arguments{\item{\verb{object}}{a \code{\link{GSocketService}}}}
\details{This call is threadsafe, so it may be called from a thread
handling an incomming client request.
  Since 2.22}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
