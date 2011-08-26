\alias{gFileGetUriScheme}
\name{gFileGetUriScheme}
\title{gFileGetUriScheme}
\description{Gets the URI scheme for a \code{\link{GFile}}.
RFC 3986 decodes the scheme as:
\preformatted{URI = scheme ":" hier-part [ "?" query ] [ "#" fragment ] 
}
Common schemes include "file", "http", "ftp", etc. }
\usage{gFileGetUriScheme(object)}
\arguments{\item{\verb{object}}{input \code{\link{GFile}}.}}
\details{This call does no blocking i/o.}
\value{[char] a string containing the URI scheme for the given
\code{\link{GFile}}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
