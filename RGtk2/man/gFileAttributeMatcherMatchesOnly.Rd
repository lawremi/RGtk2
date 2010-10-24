\alias{gFileAttributeMatcherMatchesOnly}
\name{gFileAttributeMatcherMatchesOnly}
\title{gFileAttributeMatcherMatchesOnly}
\description{Checks if a attribute matcher only matches a given attribute. Always
returns \code{FALSE} if "*" was used when creating the matcher.}
\usage{gFileAttributeMatcherMatchesOnly(object, attribute)}
\arguments{
\item{\verb{object}}{a \code{\link{GFileAttributeMatcher}}.}
\item{\verb{attribute}}{a file attribute key.}
}
\value{[logical] \code{TRUE} if the matcher only matches \code{attribute}. \code{FALSE} otherwise.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
