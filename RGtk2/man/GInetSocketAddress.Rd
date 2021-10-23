\alias{GInetSocketAddress}
\alias{gInetSocketAddress}
\name{GInetSocketAddress}
\title{GInetSocketAddress}
\description{Internet GSocketAddress}
\section{Methods and Functions}{
\code{\link{gInetSocketAddressNew}(address, port)}\cr
\code{\link{gInetSocketAddressGetAddress}(object)}\cr
\code{\link{gInetSocketAddressGetPort}(object)}\cr
\code{gInetSocketAddress(address, port)}
}
\section{Hierarchy}{\preformatted{GObject
   +----GSocketAddress
         +----GInetSocketAddress}}
\section{Interfaces}{GInetSocketAddress implements
 \code{\link{GSocketConnectable}}.}
\section{Detailed Description}{An IPv4 or IPv6 socket address; that is, the combination of a
\code{\link{GInetAddress}} and a port number.}
\section{Structures}{\describe{\item{\verb{GInetSocketAddress}}{
An IPv4 or IPv6 socket address, corresponding to a \verb{struct
sockaddr_in} or \verb{structsockaddr_in6}.

}}}
\section{Convenient Construction}{\code{gInetSocketAddress} is the equivalent of \code{\link{gInetSocketAddressNew}}.}
\section{Properties}{\describe{
\item{\verb{address} [\code{\link{GInetAddress}} : *         : Read / Write / Construct Only]}{

The address.

}
\item{\verb{port} [numeric : Read / Write / Construct Only]}{

The port.  Allowed values: <= 65535  Default value: 0

}
}}
\references{\url{https://developer-old.gnome.org/gio/stable/GInetSocketAddress.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
