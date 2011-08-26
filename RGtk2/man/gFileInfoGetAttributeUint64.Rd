\alias{gFileInfoGetAttributeUint64}
\name{gFileInfoGetAttributeUint64}
\title{gFileInfoGetAttributeUint64}
\description{Gets a unsigned 64-bit integer contained within the attribute. If the 
attribute does not contain an unsigned 64-bit integer, or is invalid, 
0 will be returned.}
\usage{gFileInfoGetAttributeUint64(object, attribute)}
\arguments{
\item{\verb{object}}{a \code{\link{GFileInfo}}.}
\item{\verb{attribute}}{a file attribute key.}
}
\value{[numeric] a unsigned 64-bit integer from the attribute.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
