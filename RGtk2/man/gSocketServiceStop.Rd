\alias{gSocketServiceStop}
\name{gSocketServiceStop}
\title{gSocketServiceStop}
\description{Stops the service, i.e. stops accepting connections
from the added sockets when the mainloop runs.}
\usage{gSocketServiceStop(object)}
\arguments{\item{\verb{object}}{a \code{\link{GSocketService}}}}
\details{This call is threadsafe, so it may be called from a thread
handling an incomming client request.
  Since 2.22}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
