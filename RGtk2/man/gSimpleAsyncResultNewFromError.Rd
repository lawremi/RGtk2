\alias{gSimpleAsyncResultNewFromError}
\name{gSimpleAsyncResultNewFromError}
\title{gSimpleAsyncResultNewFromError}
\description{Creates a \code{\link{GSimpleAsyncResult}} from an error condition.}
\usage{gSimpleAsyncResultNewFromError(source.object, callback, user.data = NULL)}
\arguments{
\item{\verb{source.object}}{a \code{\link{GObject}}, or \code{NULL}.}
\item{\verb{callback}}{a \code{\link{GAsyncReadyCallback}}.}
\item{\verb{user.data}}{user data passed to \code{callback}.}
}
\value{
A list containing the following elements:
\item{retval}{[\code{\link{GSimpleAsyncResult}}] a \code{\link{GSimpleAsyncResult}}.}
\item{\verb{error}}{a \code{\link{GError}} location.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
