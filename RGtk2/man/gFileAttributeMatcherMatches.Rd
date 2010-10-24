\alias{gFileAttributeMatcherMatches}
\name{gFileAttributeMatcherMatches}
\title{gFileAttributeMatcherMatches}
\description{Checks if an attribute will be matched by an attribute matcher. If 
the matcher was created with the "*" matching string, this function
will always return \code{TRUE}.}
\usage{gFileAttributeMatcherMatches(object, attribute)}
\arguments{
\item{\verb{object}}{a \code{\link{GFileAttributeMatcher}}.}
\item{\verb{attribute}}{a file attribute key.}
}
\value{[logical] \code{TRUE} if \code{attribute} matches \code{matcher}. \code{FALSE} otherwise.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
