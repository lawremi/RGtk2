\alias{gFileInfoGetAttributeInt32}
\name{gFileInfoGetAttributeInt32}
\title{gFileInfoGetAttributeInt32}
\description{Gets a signed 32-bit integer contained within the attribute. If the 
attribute does not contain a signed 32-bit integer, or is invalid, 
0 will be returned.}
\usage{gFileInfoGetAttributeInt32(object, attribute)}
\arguments{
\item{\verb{object}}{a \code{\link{GFileInfo}}.}
\item{\verb{attribute}}{a file attribute key.}
}
\value{[integer] a signed 32-bit integer from the attribute.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
