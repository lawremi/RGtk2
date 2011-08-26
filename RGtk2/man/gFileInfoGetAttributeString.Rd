\alias{gFileInfoGetAttributeString}
\name{gFileInfoGetAttributeString}
\title{gFileInfoGetAttributeString}
\description{Gets the value of a string attribute. If the attribute does 
not contain a string, \code{NULL} will be returned.}
\usage{gFileInfoGetAttributeString(object, attribute)}
\arguments{
\item{\verb{object}}{a \code{\link{GFileInfo}}.}
\item{\verb{attribute}}{a file attribute key.}
}
\value{[char] the contents of the \code{attribute} value as a string, or
\code{NULL} otherwise.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
