\alias{gSocketAddressEnumeratorNextFinish}
\name{gSocketAddressEnumeratorNextFinish}
\title{gSocketAddressEnumeratorNextFinish}
\description{Retrieves the result of a completed call to
\code{\link{gSocketAddressEnumeratorNextAsync}}. See
\code{\link{gSocketAddressEnumeratorNext}} for more information about
error handling.}
\usage{gSocketAddressEnumeratorNextFinish(object, result, .errwarn = TRUE)}
\arguments{
\item{\verb{object}}{a \code{\link{GSocketAddressEnumerator}}}
\item{\verb{result}}{a \code{\link{GAsyncResult}}}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\value{
A list containing the following elements:
\item{retval}{[\code{\link{GSocketAddress}}]  or \code{NULL} on
error (in which case *\code{error} will be set) or if there are no
more addresses.}
\item{\verb{error}}{a \code{\link{GError}}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
