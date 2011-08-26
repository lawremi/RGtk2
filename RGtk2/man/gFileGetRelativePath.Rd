\alias{gFileGetRelativePath}
\name{gFileGetRelativePath}
\title{gFileGetRelativePath}
\description{Gets the path for \code{descendant} relative to \code{parent}. }
\usage{gFileGetRelativePath(object, descendant)}
\arguments{
\item{\verb{object}}{input \code{\link{GFile}}.}
\item{\verb{descendant}}{input \code{\link{GFile}}.}
}
\details{This call does no blocking i/o.}
\value{[char] string with the relative path from \code{descendant}
to \code{parent}, or \code{NULL} if \code{descendant} doesn't have \code{parent} as prefix.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
