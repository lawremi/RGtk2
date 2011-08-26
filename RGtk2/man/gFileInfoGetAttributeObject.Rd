\alias{gFileInfoGetAttributeObject}
\name{gFileInfoGetAttributeObject}
\title{gFileInfoGetAttributeObject}
\description{Gets the value of a \code{\link{GObject}} attribute. If the attribute does 
not contain a \code{\link{GObject}}, \code{NULL} will be returned.}
\usage{gFileInfoGetAttributeObject(object, attribute)}
\arguments{
\item{\verb{object}}{a \code{\link{GFileInfo}}.}
\item{\verb{attribute}}{a file attribute key.}
}
\value{[\code{\link{GObject}}] a \code{\link{GObject}} associated with the given \code{attribute}, or
\code{NULL} otherwise.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
