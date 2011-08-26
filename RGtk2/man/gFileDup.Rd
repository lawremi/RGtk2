\alias{gFileDup}
\name{gFileDup}
\title{gFileDup}
\description{Duplicates a \code{\link{GFile}} handle. This operation does not duplicate 
the actual file or directory represented by the \code{\link{GFile}}; see 
\code{\link{gFileCopy}} if attempting to copy a file. }
\usage{gFileDup(object)}
\arguments{\item{\verb{object}}{input \code{\link{GFile}}.}}
\details{This call does no blocking i/o.}
\value{[\code{\link{GFile}}] a new \code{\link{GFile}} that is a duplicate of the given \code{\link{GFile}}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
