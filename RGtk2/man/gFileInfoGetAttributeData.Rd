\alias{gFileInfoGetAttributeData}
\name{gFileInfoGetAttributeData}
\title{gFileInfoGetAttributeData}
\description{Gets the attribute type, value and status for an attribute key.}
\usage{gFileInfoGetAttributeData(object, attribute, type, status)}
\arguments{
\item{\verb{object}}{a \code{\link{GFileInfo}}}
\item{\verb{attribute}}{a file attribute key}
\item{\verb{type}}{return location for the attribute type, or \code{NULL}}
\item{\verb{status}}{return location for the attribute status, or \code{NULL}}
}
\value{
A list containing the following elements:
\item{retval}{[logical] \code{TRUE} if \code{info} has an attribute named \code{attribute},
\code{FALSE} otherwise.}
\item{\verb{value.pp}}{return location for the attribute value, or \code{NULL}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
