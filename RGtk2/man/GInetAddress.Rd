\alias{GInetAddress}
\name{GInetAddress}
\title{GInetAddress}
\description{An IPv4/IPv6 address}
\section{Methods and Functions}{
\code{\link{gInetAddressNewFromString}(string)}\cr
\code{\link{gInetAddressNewFromBytes}(bytes, family)}\cr
\code{\link{gInetAddressNewAny}(family)}\cr
\code{\link{gInetAddressNewLoopback}(family)}\cr
\code{\link{gInetAddressToBytes}(object)}\cr
\code{\link{gInetAddressGetNativeSize}(object)}\cr
\code{\link{gInetAddressToString}(object)}\cr
\code{\link{gInetAddressGetFamily}(object)}\cr
\code{\link{gInetAddressGetIsAny}(object)}\cr
\code{\link{gInetAddressGetIsLoopback}(object)}\cr
\code{\link{gInetAddressGetIsLinkLocal}(object)}\cr
\code{\link{gInetAddressGetIsSiteLocal}(object)}\cr
\code{\link{gInetAddressGetIsMulticast}(object)}\cr
\code{\link{gInetAddressGetIsMcLinkLocal}(object)}\cr
\code{\link{gInetAddressGetIsMcNodeLocal}(object)}\cr
\code{\link{gInetAddressGetIsMcSiteLocal}(object)}\cr
\code{\link{gInetAddressGetIsMcOrgLocal}(object)}\cr
\code{\link{gInetAddressGetIsMcGlobal}(object)}\cr

}
\section{Hierarchy}{\preformatted{GObject
   +----GInetAddress}}
\section{Detailed Description}{\code{\link{GInetAddress}} represents an IPv4 or IPv6 internet address. Use
\code{\link{gResolverLookupByName}} or \code{\link{gResolverLookupByNameAsync}} to
look up the \code{\link{GInetAddress}} for a hostname. Use
\code{\link{gResolverLookupByAddress}} or
\code{\link{gResolverLookupByAddressAsync}} to look up the hostname for a
\code{\link{GInetAddress}}.
  
To actually connect to a remote host, you will need a
\code{\link{GInetSocketAddress}} (which includes a \code{\link{GInetAddress}} as well as a
port number).}
\section{Structures}{\describe{\item{\verb{GInetAddress}}{
An IPv4 or IPv6 internet address.

}}}
\section{Properties}{\describe{
\item{\verb{bytes} [R object : Read / Write / Construct Only]}{

The raw address data.

}
\item{\verb{family} [\code{\link{GSocketFamily}} : Read / Write / Construct Only]}{

The address family (IPv4 or IPv6).  Default value: G_SOCKET_FAMILY_INVALID

}
\item{\verb{is-any} [logical : Read]}{

Whether this is the "any" address for its family.
See \code{\link{gInetAddressGetIsAny}}.
  Default value: FALSE  Since 2.22

}
\item{\verb{is-link-local} [logical : Read]}{

Whether this is a link-local address.
See \code{\link{gInetAddressGetIsLinkLocal}}.
  Default value: FALSE  Since 2.22

}
\item{\verb{is-loopback} [logical : Read]}{

Whether this is the loopback address for its family.
See \code{\link{gInetAddressGetIsLoopback}}.
  Default value: FALSE  Since 2.22

}
\item{\verb{is-mc-global} [logical : Read]}{

Whether this is a global multicast address.
See \code{\link{gInetAddressGetIsMcGlobal}}.
  Default value: FALSE  Since 2.22

}
\item{\verb{is-mc-link-local} [logical : Read]}{

Whether this is a link-local multicast address.
See \code{\link{gInetAddressGetIsMcLinkLocal}}.
  Default value: FALSE  Since 2.22

}
\item{\verb{is-mc-node-local} [logical : Read]}{

Whether this is a node-local multicast address.
See \code{\link{gInetAddressGetIsMcNodeLocal}}.
  Default value: FALSE  Since 2.22

}
\item{\verb{is-mc-org-local} [logical : Read]}{

Whether this is an organization-local multicast address.
See \code{\link{gInetAddressGetIsMcOrgLocal}}.
  Default value: FALSE  Since 2.22

}
\item{\verb{is-mc-site-local} [logical : Read]}{

Whether this is a site-local multicast address.
See \code{\link{gInetAddressGetIsMcSiteLocal}}.
  Default value: FALSE  Since 2.22

}
\item{\verb{is-multicast} [logical : Read]}{

Whether this is a multicast address.
See \code{\link{gInetAddressGetIsMulticast}}.
  Default value: FALSE  Since 2.22

}
\item{\verb{is-site-local} [logical : Read]}{

Whether this is a site-local address.
See \code{\link{gInetAddressGetIsLoopback}}.
  Default value: FALSE  Since 2.22

}
}}
\references{\url{https://developer-old.gnome.org/gio/stable/GInetAddress.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
