\alias{gIoExtensionPointGetRequiredType}
\name{gIoExtensionPointGetRequiredType}
\title{gIoExtensionPointGetRequiredType}
\description{Gets the required type for \code{extension.point}.}
\usage{gIoExtensionPointGetRequiredType(object)}
\arguments{\item{\verb{object}}{a \code{\link{GIOExtensionPoint}}}}
\value{[\code{\link{GType}}] the \code{\link{GType}} that all implementations must have,
or \verb{G_TYPE_INVALID} if the extension point has no required type}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
