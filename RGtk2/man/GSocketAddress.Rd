\alias{GSocketAddress}
\alias{GSocketFamily}
\name{GSocketAddress}
\title{GSocketAddress}
\description{Abstract base class representing endpoints for
socket communication}
\section{Methods and Functions}{
\code{\link{gSocketAddressNewFromNative}(native, len)}\cr
\code{\link{gSocketAddressGetFamily}(object)}\cr
\code{\link{gSocketAddressToNative}(object, dest, destlen, .errwarn = TRUE)}\cr
\code{\link{gSocketAddressGetNativeSize}(object)}\cr

}
\section{Hierarchy}{\preformatted{
GObject
   +----GSocketAddress
         +----GInetSocketAddress
         +----GUnixSocketAddress
GEnum
   +----GSocketFamily
}}
\section{Interfaces}{GSocketAddress implements
 \code{\link{GSocketConnectable}}.}
\section{Detailed Description}{\code{\link{GSocketAddress}} is the equivalent of \verb{structsockaddr}
in the BSD sockets API. This is an abstract class; use
\code{\link{GInetSocketAddress}} for internet sockets, or \verb{GUnixSocketAddress}
for UNIX domain sockets.}
\section{Structures}{\describe{\item{\verb{GSocketAddress}}{
A socket endpoint address, corresponding to \verb{structsockaddr}
or one of its subtypes.

}}}
\section{Enums and Flags}{\describe{\item{\verb{GSocketFamily}}{
The protocol family of a \code{\link{GSocketAddress}}. (These values are
identical to the system defines \code{AF_INET}, \code{AF_INET6} and \code{AF_UNIX},
if available.)
  Since 2.22

\describe{
\item{\verb{invalid}}{no address family}
\item{\verb{unix}}{the UNIX domain family}
\item{\verb{ipv4}}{the IPv4 family}
\item{\verb{ipv6}}{the IPv6 family}
}

}}}
\section{Properties}{\describe{\item{\verb{family} [\code{\link{GSocketFamily}} : Read]}{

The family of the socket address.  Default value: G_SOCKET_FAMILY_INVALID

}}}
\references{\url{https://developer-old.gnome.org/gio/stable/GSocketAddress.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
