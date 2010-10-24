\alias{gFileSetAttributesFinish}
\name{gFileSetAttributesFinish}
\title{gFileSetAttributesFinish}
\description{Finishes setting an attribute started in \code{\link{gFileSetAttributesAsync}}.}
\usage{gFileSetAttributesFinish(object, result, .errwarn = TRUE)}
\arguments{
\item{\verb{object}}{input \code{\link{GFile}}.}
\item{\verb{result}}{a \code{\link{GAsyncResult}}.}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\value{
A list containing the following elements:
\item{retval}{[logical] \code{TRUE} if the attributes were set correctly, \code{FALSE} otherwise.}
\item{\verb{info}}{a \code{\link{GFileInfo}}.}
\item{\verb{error}}{a \code{\link{GError}}, or \code{NULL}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
