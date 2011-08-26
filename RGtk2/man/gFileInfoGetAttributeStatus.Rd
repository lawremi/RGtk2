\alias{gFileInfoGetAttributeStatus}
\name{gFileInfoGetAttributeStatus}
\title{gFileInfoGetAttributeStatus}
\description{Gets the attribute status for an attribute key.}
\usage{gFileInfoGetAttributeStatus(object, attribute)}
\arguments{
\item{\verb{object}}{a \code{\link{GFileInfo}}}
\item{\verb{attribute}}{a file attribute key}
}
\value{[\code{\link{GFileAttributeStatus}}] a \code{\link{GFileAttributeStatus}} for the given \code{attribute}, or
\code{G_FILE_ATTRIBUTE_STATUS_UNSET} if the key is invalid.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
