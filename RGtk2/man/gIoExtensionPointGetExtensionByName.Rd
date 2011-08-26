\alias{gIoExtensionPointGetExtensionByName}
\name{gIoExtensionPointGetExtensionByName}
\title{gIoExtensionPointGetExtensionByName}
\description{Finds a \code{\link{GIOExtension}} for an extension point by name.}
\usage{gIoExtensionPointGetExtensionByName(object, name)}
\arguments{
\item{\verb{object}}{a \code{\link{GIOExtensionPoint}}}
\item{\verb{name}}{the name of the extension to get}
}
\value{[\code{\link{GIOExtension}}] the \code{\link{GIOExtension}} for \code{extension.point} that has the
given name, or \code{NULL} if there is no extension with that name}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
