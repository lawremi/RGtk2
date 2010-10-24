\alias{gSimpleAsyncResultComplete}
\name{gSimpleAsyncResultComplete}
\title{gSimpleAsyncResultComplete}
\description{Completes an asynchronous I/O job immediately. Must be called in
the thread where the asynchronous result was to be delivered, as it
invokes the callback directly. If you are in a different thread use
\code{\link{gSimpleAsyncResultCompleteInIdle}}.}
\usage{gSimpleAsyncResultComplete(object)}
\arguments{\item{\verb{object}}{a \code{\link{GSimpleAsyncResult}}.}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
