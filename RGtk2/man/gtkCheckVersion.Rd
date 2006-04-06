\alias{gtkCheckVersion}
\name{gtkCheckVersion}
\title{gtkCheckVersion}
\description{Checks if the GTK+ version is at least at some value.}
\usage{
gtkCheckVersion(required.major, required.minor, required.micro)
}
\arguments{
\item{required.major}{The major version (n.x.x)}
\item{required.minor}{The minor version (x.n.x)}
\item{required.micro}{The micro version (x.x.n)}
}
\value{
\code{NULL} if the version requirement is satisfied, otherwise a string describing the mismatch.
}
\author{Michael Lawrence}
\keyword{internal}
\keyword{interface}
