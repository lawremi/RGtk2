\alias{GSocketConnectable}
\alias{GSocketAddressEnumerator}
\name{GSocketConnectable}
\title{GSocketConnectable}
\description{Interface for potential socket endpoints}
\section{Methods and Functions}{
\code{\link{gSocketConnectableEnumerate}(object)}\cr
\code{\link{gSocketAddressEnumeratorNext}(object, cancellable = NULL, .errwarn = TRUE)}\cr
\code{\link{gSocketAddressEnumeratorNextAsync}(object, cancellable = NULL, callback, user.data = NULL)}\cr
\code{\link{gSocketAddressEnumeratorNextFinish}(object, result, .errwarn = TRUE)}\cr

}
\section{Hierarchy}{\preformatted{
GInterface
   +----GSocketConnectable
GObject
   +----GSocketAddressEnumerator
}}
\section{Implementations}{GSocketConnectable is implemented by
 \code{\link{GInetSocketAddress}},  \code{\link{GNetworkAddress}},  \code{\link{GNetworkService}},  \code{\link{GSocketAddress}} and  GUnixSocketAddress.}
\section{Detailed Description}{Objects that describe one or more potential socket endpoints
implement \code{\link{GSocketConnectable}}. Callers can then use
\code{\link{gSocketConnectableEnumerate}} to get a \code{\link{GSocketAddressEnumerator}}
to try out each socket address in turn until one succeeds, as shown
in the sample code below.
  \preformatted{
connect_to_host <- function(hostname, port, cancellable)
{
  addr <- gNetworkAddress(hostname, port)
  enumerator <- addr$enumerate()
  
  ## Try each sockaddr until we succeed. 

  conn <- NULL
  while (is.null(conn) && (!is.null(sockaddr <- enumerator$next(cancellable))))
    conn <- connect_to_sockaddr(sockaddr$retval)
  
  conn
}
}}
\section{Structures}{\describe{
\item{\verb{GSocketConnectable}}{
Interface for objects that contain or generate \code{\link{GSocketAddress}}es.

}
\item{\verb{GSocketAddressEnumerator}}{
Enumerator type for objects that contain or generate
\code{\link{GSocketAddress}}es.

}
}}
\references{\url{https://developer-old.gnome.org/gio/stable/GSocketConnectable.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
