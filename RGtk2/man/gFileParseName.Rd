\alias{gFileParseName}
\name{gFileParseName}
\title{gFileParseName}
\description{Constructs a \code{\link{GFile}} with the given \code{parse.name} (i.e. something given by \code{\link{gFileGetParseName}}).
This operation never fails, but the returned object might not support any I/O
operation if the \code{parse.name} cannot be parsed.}
\usage{gFileParseName(parse.name)}
\arguments{\item{\verb{parse.name}}{a file name or path to be parsed.}}
\value{[\code{\link{GFile}}] a new \code{\link{GFile}}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
