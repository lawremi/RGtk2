\alias{gSocketAddressGetNativeSize}
\name{gSocketAddressGetNativeSize}
\title{gSocketAddressGetNativeSize}
\description{Gets the size of \code{address}'s native \verb{structsockaddr}.
You can use this to allocate memory to pass to
\code{\link{gSocketAddressToNative}}.}
\usage{gSocketAddressGetNativeSize(object)}
\arguments{\item{\verb{object}}{a \code{\link{GSocketAddress}}}}
\details{Since 2.22}
\value{[integer] the size of the native \verb{structsockaddr} that
\code{address} represents}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
