\alias{gResolverLookupByAddressFinish}
\name{gResolverLookupByAddressFinish}
\title{gResolverLookupByAddressFinish}
\description{Retrieves the result of a previous call to
\code{\link{gResolverLookupByAddressAsync}}.}
\usage{gResolverLookupByAddressFinish(object, result, .errwarn = TRUE)}
\arguments{
\item{\verb{object}}{a \code{\link{GResolver}}}
\item{\verb{result}}{the result passed to your \code{\link{GAsyncReadyCallback}}}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\details{If the DNS resolution failed, \code{error} (if non-\code{NULL}) will be set to
a value from \verb{GResolverError}. If the operation was cancelled,
\code{error} will be set to \code{G_IO_ERROR_CANCELLED}.
  Since 2.22}
\value{
A list containing the following elements:
\item{retval}{[character] a hostname (either ASCII-only, or in ASCII-encoded
form), or \code{NULL} on error.}
\item{\verb{error}}{return location for a \code{\link{GError}}, or \code{NULL}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
