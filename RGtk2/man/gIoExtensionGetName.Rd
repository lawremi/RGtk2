\alias{gIoExtensionGetName}
\name{gIoExtensionGetName}
\title{gIoExtensionGetName}
\description{Gets the name under which \code{extension} was registered.}
\usage{gIoExtensionGetName(object)}
\arguments{\item{\verb{object}}{a \code{\link{GIOExtension}}}}
\details{Note that the same type may be registered as extension
for multiple extension points, under different names.}
\value{[char] the name of \code{extension}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
