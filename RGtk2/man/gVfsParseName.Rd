\alias{gVfsParseName}
\name{gVfsParseName}
\title{gVfsParseName}
\description{This operation never fails, but the returned object might 
not support any I/O operations if the \code{parse.name} cannot 
be parsed by the \code{\link{GVfs}} module.}
\usage{gVfsParseName(object, parse.name)}
\arguments{
\item{\verb{object}}{a \code{\link{GVfs}}.}
\item{\verb{parse.name}}{a string to be parsed by the VFS module.}
}
\value{[\code{\link{GFile}}] a \code{\link{GFile}} for the given \code{parse.name}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
