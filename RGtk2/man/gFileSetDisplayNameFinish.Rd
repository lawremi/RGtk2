\alias{gFileSetDisplayNameFinish}
\name{gFileSetDisplayNameFinish}
\title{gFileSetDisplayNameFinish}
\description{Finishes setting a display name started with 
\code{\link{gFileSetDisplayNameAsync}}.}
\usage{gFileSetDisplayNameFinish(object, res, .errwarn = TRUE)}
\arguments{
\item{\verb{object}}{input \code{\link{GFile}}.}
\item{\verb{res}}{a \code{\link{GAsyncResult}}.}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\value{
A list containing the following elements:
\item{retval}{[\code{\link{GFile}}] a \code{\link{GFile}} or \code{NULL} on error.}
\item{\verb{error}}{a \code{\link{GError}}, or \code{NULL}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
