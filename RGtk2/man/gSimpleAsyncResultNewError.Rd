\alias{gSimpleAsyncResultNewError}
\name{gSimpleAsyncResultNewError}
\title{gSimpleAsyncResultNewError}
\description{Creates a new \code{\link{GSimpleAsyncResult}} with a set error.}
\usage{gSimpleAsyncResultNewError(source.object, callback, user.data, 
    domain, code, format, ...)}
\arguments{
\item{\verb{source.object}}{a \code{\link{GObject}}, or \code{NULL}.}
\item{\verb{callback}}{a \code{\link{GAsyncReadyCallback}}.}
\item{\verb{user.data}}{user data passed to \code{callback}.}
\item{\verb{domain}}{a \code{\link{GQuark}}.}
\item{\verb{code}}{an error code.}
\item{\verb{format}}{a string with format characters.}
\item{\verb{...}}{a list of values to insert into \code{format}.}
}
\value{[\code{\link{GSimpleAsyncResult}}] a \code{\link{GSimpleAsyncResult}}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
