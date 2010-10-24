\alias{gFileInfoSetAttributeStatus}
\name{gFileInfoSetAttributeStatus}
\title{gFileInfoSetAttributeStatus}
\description{Sets the attribute status for an attribute key. This is only
needed by external code that implement \code{\link{gFileSetAttributesFromInfo}}
or similar functions.}
\usage{gFileInfoSetAttributeStatus(object, attribute, status)}
\arguments{
\item{\verb{object}}{a \code{\link{GFileInfo}}}
\item{\verb{attribute}}{a file attribute key}
\item{\verb{status}}{a \code{\link{GFileAttributeStatus}}}
}
\details{The attribute must exist in \code{info} for this to work. Otherwise \code{FALSE}
is returned and \code{info} is unchanged.
  Since 2.22}
\value{[logical] \code{TRUE} if the status was changed, \code{FALSE} if the key was not set.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
