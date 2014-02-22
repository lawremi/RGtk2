\alias{gSocketListenerAcceptAsync}
\name{gSocketListenerAcceptAsync}
\title{gSocketListenerAcceptAsync}
\description{This is the asynchronous version of \code{\link{gSocketListenerAccept}}.}
\usage{gSocketListenerAcceptAsync(object, cancellable = NULL, callback, 
    user.data = NULL)}
\arguments{
\item{\verb{object}}{a \code{\link{GSocketListener}}}
\item{\verb{cancellable}}{a \code{\link{GCancellable}}, or \code{NULL}}
\item{\verb{callback}}{a \code{\link{GAsyncReadyCallback}}}
\item{\verb{user.data}}{user data for the callback}
}
\details{When the operation is finished \code{callback} will be
called. You can then call \code{\link{gSocketListenerAcceptSocket}}
to get the result of the operation.
  Since 2.22}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
