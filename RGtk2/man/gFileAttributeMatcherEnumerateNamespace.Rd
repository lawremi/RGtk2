\alias{gFileAttributeMatcherEnumerateNamespace}
\name{gFileAttributeMatcherEnumerateNamespace}
\title{gFileAttributeMatcherEnumerateNamespace}
\description{Checks if the matcher will match all of the keys in a given namespace.
This will always return \code{TRUE} if a wildcard character is in use (e.g. if 
matcher was created with "standard::*" and \code{ns} is "standard", or if matcher was created
using "*" and namespace is anything.) }
\usage{gFileAttributeMatcherEnumerateNamespace(object, ns)}
\arguments{
\item{\verb{object}}{a \code{\link{GFileAttributeMatcher}}.}
\item{\verb{ns}}{a string containing a file attribute namespace.}
}
\details{TODO: this is awkwardly worded.}
\value{[logical] \code{TRUE} if the matcher matches all of the entries
in the given \code{ns}, \code{FALSE} otherwise.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
