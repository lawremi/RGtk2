\alias{gSocketAddressNewFromNative}
\name{gSocketAddressNewFromNative}
\title{gSocketAddressNewFromNative}
\description{Creates a \code{\link{GSocketAddress}} subclass corresponding to the native
\verb{structsockaddr} \code{native}.}
\usage{gSocketAddressNewFromNative(native, len)}
\arguments{
\item{\verb{native}}{a pointer to a \verb{structsockaddr}}
\item{\verb{len}}{the size of the memory location pointed to by \code{native}}
}
\details{Since 2.22}
\value{[\code{\link{GSocketAddress}}] a new \code{\link{GSocketAddress}} if \code{native} could successfully be converted,
otherwise \code{NULL}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
