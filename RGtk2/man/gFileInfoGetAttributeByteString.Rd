\alias{gFileInfoGetAttributeByteString}
\name{gFileInfoGetAttributeByteString}
\title{gFileInfoGetAttributeByteString}
\description{Gets the value of a byte string attribute. If the attribute does 
not contain a byte string, \code{NULL} will be returned.}
\usage{gFileInfoGetAttributeByteString(object, attribute)}
\arguments{
\item{\verb{object}}{a \code{\link{GFileInfo}}.}
\item{\verb{attribute}}{a file attribute key.}
}
\value{[char] the contents of the \code{attribute} value as a byte string, or
\code{NULL} otherwise.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
