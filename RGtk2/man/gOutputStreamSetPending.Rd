\alias{gOutputStreamSetPending}
\name{gOutputStreamSetPending}
\title{gOutputStreamSetPending}
\description{Sets \code{stream} to have actions pending. If the pending flag is
already set or \code{stream} is closed, it will return \code{FALSE} and set
\code{error}.}
\usage{gOutputStreamSetPending(object, .errwarn = TRUE)}
\arguments{
\item{\verb{object}}{a \code{\link{GOutputStream}}.}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\value{
A list containing the following elements:
\item{retval}{[logical] \code{TRUE} if pending was previously unset and is now set.}
\item{\verb{error}}{a \code{\link{GError}} location to store the error occuring, or \code{NULL} to
ignore.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
