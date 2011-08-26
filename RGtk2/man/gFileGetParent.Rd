\alias{gFileGetParent}
\name{gFileGetParent}
\title{gFileGetParent}
\description{Gets the parent directory for the \code{file}. 
If the \code{file} represents the root directory of the 
file system, then \code{NULL} will be returned.}
\usage{gFileGetParent(object)}
\arguments{\item{\verb{object}}{input \code{\link{GFile}}.}}
\details{This call does no blocking i/o.}
\value{[\code{\link{GFile}}] a \code{\link{GFile}} structure to the parent of the given
\code{\link{GFile}} or \code{NULL} if there is no parent.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
