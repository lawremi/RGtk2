\alias{gSocketNew}
\name{gSocketNew}
\title{gSocketNew}
\description{Creates a new \code{\link{GSocket}} with the defined family, type and protocol.
If \code{protocol} is 0 (\code{G_SOCKET_PROTOCOL_DEFAULT}) the default protocol type
for the family and type is used.}
\usage{gSocketNew(family, type, protocol, .errwarn = TRUE)}
\arguments{
\item{\verb{family}}{the socket family to use, e.g. \code{G_SOCKET_FAMILY_IPV4}.}
\item{\verb{type}}{the socket type to use.}
\item{\verb{protocol}}{the id of the protocol to use, or 0 for default.}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\details{The \code{protocol} is a family and type specific int that specifies what
kind of protocol to use. \code{\link{GSocketProtocol}} lists several common ones.
Many families only support one protocol, and use 0 for this, others
support several and using 0 means to use the default protocol for
the family and type.
  
The protocol id is passed directly to the operating
system, so you can use protocols not listed in \code{\link{GSocketProtocol}} if you
know the protocol number used for it.
  Since 2.22}
\value{
A list containing the following elements:
\item{retval}{[\code{\link{GSocket}}] a \code{\link{GSocket}} or \code{NULL} on error.}
\item{\verb{error}}{\code{\link{GError}} for error reporting, or \code{NULL} to ignore.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
