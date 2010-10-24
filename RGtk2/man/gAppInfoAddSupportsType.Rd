\alias{gAppInfoAddSupportsType}
\name{gAppInfoAddSupportsType}
\title{gAppInfoAddSupportsType}
\description{Adds a content type to the application information to indicate the 
application is capable of opening files with the given content type.}
\usage{gAppInfoAddSupportsType(object, content.type, .errwarn = TRUE)}
\arguments{
\item{\verb{object}}{a \code{\link{GAppInfo}}.}
\item{\verb{content.type}}{a string.}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\value{
A list containing the following elements:
\item{retval}{[logical] \code{TRUE} on success, \code{FALSE} on error.}
\item{\verb{error}}{a \code{\link{GError}}.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
