\alias{gFileHash}
\name{gFileHash}
\title{gFileHash}
\description{Creates a hash value for a \code{\link{GFile}}.}
\usage{gFileHash(file)}
\arguments{\item{\verb{file}}{\verb{R object} to a \code{\link{GFile}}.}}
\details{This call does no blocking i/o.}
\value{[numeric] 0 if \code{file} is not a valid \code{\link{GFile}}, otherwise an
integer that can be used as hash value for the \code{\link{GFile}}.
This function is intended for easily hashing a \code{\link{GFile}} to
add to a \verb{GHashTable} or similar data structure.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
