\alias{gSocketClientConnectToServiceAsync}
\name{gSocketClientConnectToServiceAsync}
\title{gSocketClientConnectToServiceAsync}
\description{This is the asynchronous version of
\code{\link{gSocketClientConnectToService}}.}
\usage{gSocketClientConnectToServiceAsync(object, domain, service, cancellable = NULL, 
    callback, user.data = NULL)}
\arguments{
\item{\verb{object}}{a \code{\link{GSocketClient}}}
\item{\verb{domain}}{a domain name}
\item{\verb{service}}{the name of the service to connect to}
\item{\verb{cancellable}}{a \code{\link{GCancellable}}, or \code{NULL}}
\item{\verb{callback}}{a \code{\link{GAsyncReadyCallback}}}
\item{\verb{user.data}}{user data for the callback}
}
\details{Since 2.22}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
