\alias{gFileInfoGetAttributeUint32}
\name{gFileInfoGetAttributeUint32}
\title{gFileInfoGetAttributeUint32}
\description{Gets an unsigned 32-bit integer contained within the attribute. If the 
attribute does not contain an unsigned 32-bit integer, or is invalid, 
0 will be returned.}
\usage{gFileInfoGetAttributeUint32(object, attribute)}
\arguments{
\item{\verb{object}}{a \code{\link{GFileInfo}}.}
\item{\verb{attribute}}{a file attribute key.}
}
\value{[numeric] an unsigned 32-bit integer from the attribute.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
