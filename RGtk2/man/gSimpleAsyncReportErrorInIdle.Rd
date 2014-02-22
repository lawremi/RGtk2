\alias{gSimpleAsyncReportErrorInIdle}
\name{gSimpleAsyncReportErrorInIdle}
\title{gSimpleAsyncReportErrorInIdle}
\description{Reports an error in an asynchronous function in an idle function by 
directly setting the contents of the \code{\link{GAsyncResult}} with the given error
information.}
\usage{gSimpleAsyncReportErrorInIdle(object, callback, user.data, domain, 
    code, format, ...)}
\arguments{
\item{\verb{object}}{a \code{\link{GObject}}.}
\item{\verb{callback}}{a \code{\link{GAsyncReadyCallback}}.}
\item{\verb{user.data}}{user data passed to \code{callback}.}
\item{\verb{domain}}{a \code{\link{GQuark}} containing the error domain (usually \verb{G_IO_ERROR}).}
\item{\verb{code}}{a specific error code.}
\item{\verb{format}}{a formatted error reporting string.}
\item{\verb{...}}{a list of variables to fill in \code{format}.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
