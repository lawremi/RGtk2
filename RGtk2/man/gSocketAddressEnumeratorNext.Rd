\alias{gSocketAddressEnumeratorNext}
\name{gSocketAddressEnumeratorNext}
\title{gSocketAddressEnumeratorNext}
\description{Retrieves the next \code{\link{GSocketAddress}} from \code{enumerator}. Note that this
may block for some amount of time. (Eg, a \code{\link{GNetworkAddress}} may need
to do a DNS lookup before it can return an address.) Use
\code{\link{gSocketAddressEnumeratorNextAsync}} if you need to avoid
blocking.}
\usage{gSocketAddressEnumeratorNext(object, cancellable = NULL, .errwarn = TRUE)}
\arguments{
\item{\verb{object}}{a \code{\link{GSocketAddressEnumerator}}}
\item{\verb{cancellable}}{optional \code{\link{GCancellable}} object, \code{NULL} to ignore.}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\details{If \code{enumerator} is expected to yield addresses, but for some reason
is unable to (eg, because of a DNS error), then the first call to
\code{\link{gSocketAddressEnumeratorNext}} will return an appropriate error
in *\code{error}. However, if the first call to
\code{\link{gSocketAddressEnumeratorNext}} succeeds, then any further
internal errors (other than \code{cancellable} being triggered) will be
ignored.}
\value{
A list containing the following elements:
\item{retval}{[\code{\link{GSocketAddress}}]  or \code{NULL} on
error (in which case *\code{error} will be set) or if there are no
more addresses.}
\item{\verb{error}}{a \code{\link{GError}}.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
