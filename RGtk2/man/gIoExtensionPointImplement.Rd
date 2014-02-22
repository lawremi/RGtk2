\alias{gIoExtensionPointImplement}
\name{gIoExtensionPointImplement}
\title{gIoExtensionPointImplement}
\description{Registers \code{type} as extension for the extension point with name
\code{extension.point.name}. }
\usage{gIoExtensionPointImplement(extension.point.name, type, extension.name, 
    priority)}
\arguments{
\item{\verb{extension.point.name}}{the name of the extension point}
\item{\verb{type}}{the \code{\link{GType}} to register as extension}
\item{\verb{extension.name}}{the name for the extension}
\item{\verb{priority}}{the priority for the extension}
}
\details{If \code{type} has already been registered as an extension for this 
extension point, the existing \code{\link{GIOExtension}} object is returned.}
\value{[\code{\link{GIOExtension}}] a \code{\link{GIOExtension}} object for \code{\link{GType}}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
