\alias{gDriveGetIdentifier}
\name{gDriveGetIdentifier}
\title{gDriveGetIdentifier}
\description{Gets the identifier of the given kind for \code{drive}.}
\usage{gDriveGetIdentifier(object, kind)}
\arguments{
\item{\verb{object}}{a \code{\link{GDrive}}}
\item{\verb{kind}}{the kind of identifier to return}
}
\value{[char] a newly allocated string containing the
requested identfier, or \code{NULL} if the \code{\link{GDrive}}
doesn't have this kind of identifier.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
