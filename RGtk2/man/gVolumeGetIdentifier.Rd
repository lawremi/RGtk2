\alias{gVolumeGetIdentifier}
\name{gVolumeGetIdentifier}
\title{gVolumeGetIdentifier}
\description{Gets the identifier of the given kind for \code{volume}. 
See the introduction
for more information about volume identifiers.}
\usage{gVolumeGetIdentifier(object, kind)}
\arguments{
\item{\verb{object}}{a \code{\link{GVolume}}}
\item{\verb{kind}}{the kind of identifier to return}
}
\value{[char] a newly allocated string containing the
requested identfier, or \code{NULL} if the \code{\link{GVolume}}
doesn't have this kind of identifier}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
