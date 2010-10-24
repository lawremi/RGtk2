\alias{gSocketConnectionFactoryRegisterType}
\name{gSocketConnectionFactoryRegisterType}
\title{gSocketConnectionFactoryRegisterType}
\description{Looks up the \code{\link{GType}} to be used when creating socket connections on
sockets with the specified \code{family},\code{type} and \code{protocol}.}
\usage{gSocketConnectionFactoryRegisterType(g.type, family, type, protocol)}
\arguments{
\item{\verb{g.type}}{a \code{\link{GType}}, inheriting from \code{G_TYPE_SOCKET_CONNECTION}}
\item{\verb{family}}{a \code{\link{GSocketFamily}}}
\item{\verb{type}}{a \code{\link{GSocketType}}}
\item{\verb{protocol}}{a protocol id}
}
\details{If no type is registered, the \code{\link{GSocketConnection}} base type is returned.
  Since 2.22}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
