\alias{gSocketConnectionFactoryLookupType}
\name{gSocketConnectionFactoryLookupType}
\title{gSocketConnectionFactoryLookupType}
\description{Looks up the \code{\link{GType}} to be used when creating socket connections on
sockets with the specified \code{family},\code{type} and \code{protocol.id}.}
\usage{gSocketConnectionFactoryLookupType(family, type, protocol.id)}
\arguments{
\item{\verb{family}}{a \code{\link{GSocketFamily}}}
\item{\verb{type}}{a \code{\link{GSocketType}}}
\item{\verb{protocol.id}}{a protocol id}
}
\details{If no type is registered, the \code{\link{GSocketConnection}} base type is returned.
  Since 2.22}
\value{[\code{\link{GType}}] a \code{\link{GType}}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
