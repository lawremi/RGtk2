\alias{gInetAddressToBytes}
\name{gInetAddressToBytes}
\title{gInetAddressToBytes}
\description{Gets the raw binary address data from \code{address}.}
\usage{gInetAddressToBytes(object)}
\arguments{\item{\verb{object}}{a \code{\link{GInetAddress}}}}
\details{Since 2.22}
\value{[raw] a pointer to an internal list of the bytes in \code{address},
which should not be modified, stored, or freed. The size of this
array can be gotten with \code{\link{gInetAddressGetNativeSize}}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
