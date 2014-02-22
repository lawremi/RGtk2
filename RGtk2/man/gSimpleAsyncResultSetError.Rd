\alias{gSimpleAsyncResultSetError}
\name{gSimpleAsyncResultSetError}
\title{gSimpleAsyncResultSetError}
\description{Sets an error within the asynchronous result without a \code{\link{GError}}.}
\usage{gSimpleAsyncResultSetError(object, domain, code, format, ...)}
\arguments{
\item{\verb{object}}{a \code{\link{GSimpleAsyncResult}}.}
\item{\verb{domain}}{a \code{\link{GQuark}} (usually \verb{G_IO_ERROR}).}
\item{\verb{code}}{an error code.}
\item{\verb{format}}{a formatted error reporting string.}
\item{\verb{...}}{a list of variables to fill in \code{format}.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
