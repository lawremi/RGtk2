\alias{gInputStreamCloseAsync}
\name{gInputStreamCloseAsync}
\title{gInputStreamCloseAsync}
\description{Requests an asynchronous closes of the stream, releasing resources related to it.
When the operation is finished \code{callback} will be called. 
You can then call \code{\link{gInputStreamCloseFinish}} to get the result of the 
operation.}
\usage{gInputStreamCloseAsync(object, io.priority = 0, cancellable = NULL, 
    callback, user.data = NULL)}
\arguments{
\item{\verb{object}}{A \code{\link{GInputStream}}.}
\item{\verb{io.priority}}{the I/O priority
of the request.}
\item{\verb{cancellable}}{optional cancellable object}
\item{\verb{callback}}{callback to call when the request is satisfied}
\item{\verb{user.data}}{the data to pass to callback function}
}
\details{For behaviour details see \code{\link{gInputStreamClose}}.
  
The asyncronous methods have a default fallback that uses threads to implement
asynchronicity, so they are optional for inheriting classes. However, if you
override one you must override all.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
