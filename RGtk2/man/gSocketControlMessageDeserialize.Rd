\alias{gSocketControlMessageDeserialize}
\name{gSocketControlMessageDeserialize}
\title{gSocketControlMessageDeserialize}
\description{Tries to deserialize a socket control message of a given
\code{level} and \code{type}. This will ask all known (to GType) subclasses
of \code{\link{GSocketControlMessage}} if they can understand this kind
of message and if so deserialize it into a \code{\link{GSocketControlMessage}}.}
\usage{gSocketControlMessageDeserialize(level, type, size, data)}
\arguments{
\item{\verb{level}}{a socket level}
\item{\verb{type}}{a socket control message type for the given \code{level}}
\item{\verb{size}}{the size of the data in bytes}
\item{\verb{data}}{pointer to the message data}
}
\details{If there is no implementation for this kind of control message, \code{NULL}
will be returned.
  Since 2.22}
\value{[\code{\link{GSocketControlMessage}}] the deserialized message or \code{NULL}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
