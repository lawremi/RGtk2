\alias{gFileInfoGetAttributeType}
\name{gFileInfoGetAttributeType}
\title{gFileInfoGetAttributeType}
\description{Gets the attribute type for an attribute key.}
\usage{gFileInfoGetAttributeType(object, attribute)}
\arguments{
\item{\verb{object}}{a \code{\link{GFileInfo}}.}
\item{\verb{attribute}}{a file attribute key.}
}
\value{[\code{\link{GFileAttributeType}}] a \code{\link{GFileAttributeType}} for the given \code{attribute}, or
\code{G_FILE_ATTRIBUTE_TYPE_INVALID} if the key is not set.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
