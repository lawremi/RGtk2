\alias{gFileHasUriScheme}
\name{gFileHasUriScheme}
\title{gFileHasUriScheme}
\description{Checks to see if a \code{\link{GFile}} has a given URI scheme.}
\usage{gFileHasUriScheme(object, uri.scheme)}
\arguments{
\item{\verb{object}}{input \code{\link{GFile}}.}
\item{\verb{uri.scheme}}{a string containing a URI scheme.}
}
\details{This call does no blocking i/o.}
\value{[logical] \code{TRUE} if \code{\link{GFile}}'s backend supports the
given URI scheme, \code{FALSE} if URI scheme is \code{NULL},
not supported, or \code{\link{GFile}} is invalid.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
