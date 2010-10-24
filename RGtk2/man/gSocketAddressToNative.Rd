\alias{gSocketAddressToNative}
\name{gSocketAddressToNative}
\title{gSocketAddressToNative}
\description{Converts a \code{\link{GSocketAddress}} to a native \verb{struct
sockaddr}, which can be passed to low-level functions like
\code{connect()} or \code{bind()}.}
\usage{gSocketAddressToNative(object, dest, destlen, .errwarn = TRUE)}
\arguments{
\item{\verb{object}}{a \code{\link{GSocketAddress}}}
\item{\verb{dest}}{a pointer to a memory location that will contain the native
\verb{structsockaddr}.}
\item{\verb{destlen}}{the size of \code{dest}. Must be at least as large as
\code{\link{gSocketAddressGetNativeSize}}.}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\details{If not enough space is availible, a \code{G_IO_ERROR_NO_SPACE} error is
returned. If the address type is not known on the system
then a \code{G_IO_ERROR_NOT_SUPPORTED} error is returned.
  Since 2.22}
\value{
A list containing the following elements:
\item{retval}{[logical] \code{TRUE} if \code{dest} was filled in, \code{FALSE} on error}
\item{\verb{error}}{\code{\link{GError}} for error reporting, or \code{NULL} to ignore.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
