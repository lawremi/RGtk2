\alias{gFileResolveRelativePath}
\name{gFileResolveRelativePath}
\title{gFileResolveRelativePath}
\description{Resolves a relative path for \code{file} to an absolute path.}
\usage{gFileResolveRelativePath(object, relative.path)}
\arguments{
\item{\verb{object}}{input \code{\link{GFile}}.}
\item{\verb{relative.path}}{a given relative path string.}
}
\details{This call does no blocking i/o.}
\value{[\code{\link{GFile}}] \code{\link{GFile}} to the resolved path. \code{NULL} if \code{relative.path}
is \code{NULL} or if \code{file} is invalid.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
