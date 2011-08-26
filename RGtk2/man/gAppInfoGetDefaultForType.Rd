\alias{gAppInfoGetDefaultForType}
\name{gAppInfoGetDefaultForType}
\title{gAppInfoGetDefaultForType}
\description{Gets the \code{\link{GAppInfo}} that corresponds to a given content type.}
\usage{gAppInfoGetDefaultForType(content.type, must.support.uris)}
\arguments{
\item{\verb{content.type}}{the content type to find a \code{\link{GAppInfo}} for}
\item{\verb{must.support.uris}}{if \code{TRUE}, the \code{\link{GAppInfo}} is expected to
support URIs}
}
\value{[\code{\link{GAppInfo}}] \code{\link{GAppInfo}} for given \code{content.type} or \code{NULL} on error.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
