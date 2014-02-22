\alias{gAppInfoCreateFromCommandline}
\name{gAppInfoCreateFromCommandline}
\title{gAppInfoCreateFromCommandline}
\description{Creates a new \code{\link{GAppInfo}} from the given information.}
\usage{gAppInfoCreateFromCommandline(commandline, application.name = NULL, 
    flags = "G_APP_INFO_CREATE_NONE", .errwarn = TRUE)}
\arguments{
\item{\verb{commandline}}{the commandline to use}
\item{\verb{application.name}}{the application name, or \code{NULL} to use \code{commandline}}
\item{\verb{flags}}{flags that can specify details of the created \code{\link{GAppInfo}}}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\value{
A list containing the following elements:
\item{retval}{[\code{\link{GAppInfo}}] new \code{\link{GAppInfo}} for given command.}
\item{\verb{error}}{a \code{\link{GError}} location to store the error occuring, \code{NULL} to ignore.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
