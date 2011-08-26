\alias{gFileInfoGetAttributeStringv}
\name{gFileInfoGetAttributeStringv}
\title{gFileInfoGetAttributeStringv}
\description{Gets the value of a stringv attribute. If the attribute does
not contain a stringv, \code{NULL} will be returned.}
\usage{gFileInfoGetAttributeStringv(object, attribute)}
\arguments{
\item{\verb{object}}{a \code{\link{GFileInfo}}.}
\item{\verb{attribute}}{a file attribute key.}
}
\details{Since 2.22}
\value{[char] the contents of the \code{attribute} value as a stringv, or
\code{NULL} otherwise. Do not free.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
