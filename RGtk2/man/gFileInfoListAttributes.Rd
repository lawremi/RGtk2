\alias{gFileInfoListAttributes}
\name{gFileInfoListAttributes}
\title{gFileInfoListAttributes}
\description{Lists the file info structure's attributes.}
\usage{gFileInfoListAttributes(object, name.space)}
\arguments{
\item{\verb{object}}{a \code{\link{GFileInfo}}.}
\item{\verb{name.space}}{a file attribute key's namespace.}
}
\value{[char] a list of strings of all of the
possible attribute types for the given \code{name.space}, or
\code{NULL} on error.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
