\alias{gSocketClientConnectAsync}
\name{gSocketClientConnectAsync}
\title{gSocketClientConnectAsync}
\description{This is the asynchronous version of \code{\link{gSocketClientConnect}}.}
\usage{gSocketClientConnectAsync(object, connectable, cancellable = NULL, 
    callback, user.data = NULL)}
\arguments{
\item{\verb{object}}{a \verb{GTcpClient}}
\item{\verb{connectable}}{a \code{\link{GSocketConnectable}} specifying the remote address.}
\item{\verb{cancellable}}{a \code{\link{GCancellable}}, or \code{NULL}}
\item{\verb{callback}}{a \code{\link{GAsyncReadyCallback}}}
\item{\verb{user.data}}{user data for the callback}
}
\details{When the operation is finished \code{callback} will be
called. You can then call \code{\link{gSocketClientConnectFinish}} to get
the result of the operation.
  Since 2.22}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
