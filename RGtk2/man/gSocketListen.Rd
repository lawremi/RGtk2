\alias{gSocketListen}
\name{gSocketListen}
\title{gSocketListen}
\description{Marks the socket as a server socket, i.e. a socket that is used
to accept incoming requests using \code{\link{gSocketAccept}}.}
\usage{gSocketListen(object, .errwarn = TRUE)}
\arguments{
\item{\verb{object}}{a \code{\link{GSocket}}.}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\details{Before calling this the socket must be bound to a local address using
\code{\link{gSocketBind}}.
  
To set the maximum amount of outstanding clients, use
\code{\link{gSocketSetListenBacklog}}.
  Since 2.22}
\value{
A list containing the following elements:
\item{retval}{[logical] \code{TRUE} on success, \code{FALSE} on error.}
\item{\verb{error}}{\code{\link{GError}} for error reporting, or \code{NULL} to ignore.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
