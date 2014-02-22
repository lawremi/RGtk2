\alias{gSocketClientConnectToHostAsync}
\name{gSocketClientConnectToHostAsync}
\title{gSocketClientConnectToHostAsync}
\description{This is the asynchronous version of \code{\link{gSocketClientConnectToHost}}.}
\usage{gSocketClientConnectToHostAsync(object, host.and.port, default.port, 
    cancellable = NULL, callback, user.data = NULL)}
\arguments{
\item{\verb{object}}{a \verb{GTcpClient}}
\item{\verb{host.and.port}}{the name and optionally the port of the host to connect to}
\item{\verb{default.port}}{the default port to connect to}
\item{\verb{cancellable}}{a \code{\link{GCancellable}}, or \code{NULL}}
\item{\verb{callback}}{a \code{\link{GAsyncReadyCallback}}}
\item{\verb{user.data}}{user data for the callback}
}
\details{When the operation is finished \code{callback} will be
called. You can then call \code{\link{gSocketClientConnectToHostFinish}} to get
the result of the operation.
  Since 2.22}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
