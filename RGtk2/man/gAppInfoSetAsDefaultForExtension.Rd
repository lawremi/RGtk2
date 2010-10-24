\alias{gAppInfoSetAsDefaultForExtension}
\name{gAppInfoSetAsDefaultForExtension}
\title{gAppInfoSetAsDefaultForExtension}
\description{Sets the application as the default handler for the given file extension.}
\usage{gAppInfoSetAsDefaultForExtension(object, extension, .errwarn = TRUE)}
\arguments{
\item{\verb{object}}{a \code{\link{GAppInfo}}.}
\item{\verb{extension}}{a string containing the file extension (without the dot).}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\value{
A list containing the following elements:
\item{retval}{[logical] \code{TRUE} on success, \code{FALSE} on error.}
\item{\verb{error}}{a \code{\link{GError}}.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
