\alias{gSimpleAsyncResultNew}
\name{gSimpleAsyncResultNew}
\title{gSimpleAsyncResultNew}
\description{Creates a \code{\link{GSimpleAsyncResult}}.}
\usage{gSimpleAsyncResultNew(source.object, callback, user.data = NULL, 
    source.tag)}
\arguments{
\item{\verb{source.object}}{a \code{\link{GObject}} the asynchronous function was called with,
or \code{NULL}.}
\item{\verb{callback}}{a \code{\link{GAsyncReadyCallback}}.}
\item{\verb{user.data}}{user data passed to \code{callback}.}
\item{\verb{source.tag}}{the asynchronous function.}
}
\value{[\code{\link{GSimpleAsyncResult}}] a \code{\link{GSimpleAsyncResult}}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
