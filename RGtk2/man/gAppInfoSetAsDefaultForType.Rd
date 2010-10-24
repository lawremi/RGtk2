\alias{gAppInfoSetAsDefaultForType}
\name{gAppInfoSetAsDefaultForType}
\title{gAppInfoSetAsDefaultForType}
\description{Sets the application as the default handler for a given type.}
\usage{gAppInfoSetAsDefaultForType(object, content.type, .errwarn = TRUE)}
\arguments{
\item{\verb{object}}{a \code{\link{GAppInfo}}.}
\item{\verb{content.type}}{the content type.}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\value{
A list containing the following elements:
\item{retval}{[logical] \code{TRUE} on success, \code{FALSE} on error.}
\item{\verb{error}}{a \code{\link{GError}}.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
