\alias{gFileInfoGetAttributeInt64}
\name{gFileInfoGetAttributeInt64}
\title{gFileInfoGetAttributeInt64}
\description{Gets a signed 64-bit integer contained within the attribute. If the 
attribute does not contain an signed 64-bit integer, or is invalid, 
0 will be returned.}
\usage{gFileInfoGetAttributeInt64(object, attribute)}
\arguments{
\item{\verb{object}}{a \code{\link{GFileInfo}}.}
\item{\verb{attribute}}{a file attribute key.}
}
\value{[numeric] a signed 64-bit integer from the attribute.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
