\alias{gFileNewForCommandlineArg}
\name{gFileNewForCommandlineArg}
\title{gFileNewForCommandlineArg}
\description{Creates a \code{\link{GFile}} with the given argument from the command line. The value of
\code{arg} can be either a URI, an absolute path or a relative path resolved
relative to the current working directory.
This operation never fails, but the returned object might not support any
I/O operation if \code{arg} points to a malformed path.}
\usage{gFileNewForCommandlineArg(arg)}
\arguments{\item{\verb{arg}}{a command line string.}}
\value{[\code{\link{GFile}}] a new \code{\link{GFile}}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
