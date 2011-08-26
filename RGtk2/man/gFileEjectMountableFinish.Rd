\alias{gFileEjectMountableFinish}
\name{gFileEjectMountableFinish}
\title{gFileEjectMountableFinish}
\description{
Finishes an asynchronous eject operation started by 
\code{\link{gFileEjectMountable}}.
\strong{WARNING: \code{g_file_eject_mountable_finish} has been deprecated since version 2.22 and should not be used in newly-written code. Use \code{\link{gFileEjectMountableWithOperationFinish}} instead.}
}
\usage{gFileEjectMountableFinish(object, result, .errwarn = TRUE)}
\arguments{
\item{\verb{object}}{input \code{\link{GFile}}.}
\item{\verb{result}}{a \code{\link{GAsyncResult}}.}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\value{
A list containing the following elements:
\item{retval}{[logical] \code{TRUE} if the \code{file} was ejected successfully. \code{FALSE}
otherwise.}
\item{\verb{error}}{a \code{\link{GError}}, or \code{NULL}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
