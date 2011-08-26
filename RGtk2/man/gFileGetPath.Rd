\alias{gFileGetPath}
\name{gFileGetPath}
\title{gFileGetPath}
\description{Gets the local pathname for \code{\link{GFile}}, if one exists. }
\usage{gFileGetPath(object)}
\arguments{\item{\verb{object}}{input \code{\link{GFile}}.}}
\details{This call does no blocking i/o.}
\value{[char] string containing the \code{\link{GFile}}'s path, or \code{NULL} if
no such path exists.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
