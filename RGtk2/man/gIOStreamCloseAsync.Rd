\alias{gIOStreamCloseAsync}
\name{gIOStreamCloseAsync}
\title{gIOStreamCloseAsync}
\description{Requests an asynchronous close of the stream, releasing resources
related to it. When the operation is finished \code{callback} will be
called. You can then call \code{\link{gIOStreamCloseFinish}} to get
the result of the operation.}
\usage{gIOStreamCloseAsync(object, io.priority, cancellable = NULL, 
    callback, user.data = NULL)}
\arguments{
\item{\verb{object}}{a \code{\link{GIOStream}}}
\item{\verb{io.priority}}{the io priority of the request}
\item{\verb{cancellable}}{optional cancellable object}
\item{\verb{callback}}{callback to call when the request is satisfied}
\item{\verb{user.data}}{the data to pass to callback function}
}
\details{For behaviour details see \code{\link{gIOStreamClose}}.
  
The asynchronous methods have a default fallback that uses threads
to implement asynchronicity, so they are optional for inheriting
classes. However, if you override one you must override all.
  Since 2.22}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
