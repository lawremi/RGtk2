\alias{gSocketAddressEnumeratorNextAsync}
\name{gSocketAddressEnumeratorNextAsync}
\title{gSocketAddressEnumeratorNextAsync}
\description{Asynchronously retrieves the next \code{\link{GSocketAddress}} from \code{enumerator}
and then calls \code{callback}, which must call
\code{\link{gSocketAddressEnumeratorNextFinish}} to get the result.}
\usage{gSocketAddressEnumeratorNextAsync(object, cancellable = NULL, 
    callback, user.data = NULL)}
\arguments{
\item{\verb{object}}{a \code{\link{GSocketAddressEnumerator}}}
\item{\verb{cancellable}}{optional \code{\link{GCancellable}} object, \code{NULL} to ignore.}
\item{\verb{callback}}{a \code{\link{GAsyncReadyCallback}} to call when the request is satisfied}
\item{\verb{user.data}}{the data to pass to callback function}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
