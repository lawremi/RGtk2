\alias{gLoadableIconLoadAsync}
\name{gLoadableIconLoadAsync}
\title{gLoadableIconLoadAsync}
\description{Loads an icon asynchronously. To finish this function, see 
\code{\link{gLoadableIconLoadFinish}}. For the synchronous, blocking 
version of this function, see \code{\link{gLoadableIconLoad}}.}
\usage{gLoadableIconLoadAsync(object, size, cancellable = NULL, callback, 
    user.data = NULL)}
\arguments{
\item{\verb{object}}{a \code{\link{GLoadableIcon}}.}
\item{\verb{size}}{an integer.}
\item{\verb{cancellable}}{optional \code{\link{GCancellable}} object, \code{NULL} to ignore.}
\item{\verb{callback}}{a \code{\link{GAsyncReadyCallback}} to call when the request is satisfied}
\item{\verb{user.data}}{the data to pass to callback function}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
