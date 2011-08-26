\alias{gVfsGetFileForUri}
\name{gVfsGetFileForUri}
\title{gVfsGetFileForUri}
\description{Gets a \code{\link{GFile}} for \code{uri}.}
\usage{gVfsGetFileForUri(object, uri)}
\arguments{
\item{\verb{object}}{a\code{\link{GVfs}}.}
\item{\verb{uri}}{a string containing a URI}
}
\details{This operation never fails, but the returned object
might not support any I/O operation if the URI 
is malformed or if the URI scheme is not supported.}
\value{[\code{\link{GFile}}] a \code{\link{GFile}}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
