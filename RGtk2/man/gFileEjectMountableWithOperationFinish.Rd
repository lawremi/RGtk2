\alias{gFileEjectMountableWithOperationFinish}
\name{gFileEjectMountableWithOperationFinish}
\title{gFileEjectMountableWithOperationFinish}
\description{Finishes an asynchronous eject operation started by
\code{\link{gFileEjectMountableWithOperation}}.}
\usage{gFileEjectMountableWithOperationFinish(object, result, .errwarn = TRUE)}
\arguments{
\item{\verb{object}}{input \code{\link{GFile}}.}
\item{\verb{result}}{a \code{\link{GAsyncResult}}.}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\details{Since 2.22}
\value{
A list containing the following elements:
\item{retval}{[logical] \code{TRUE} if the \code{file} was ejected successfully. \code{FALSE}
otherwise.}
\item{\verb{error}}{a \code{\link{GError}}, or \code{NULL}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
