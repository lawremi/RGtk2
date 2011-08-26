\alias{gAppInfoLaunchUris}
\name{gAppInfoLaunchUris}
\title{gAppInfoLaunchUris}
\description{Launches the application. Passes \code{uris} to the launched application 
as arguments, using the optional \code{launch.context} to get information
about the details of the launcher (like what screen it is on).
On error, \code{error} will be set accordingly.}
\usage{gAppInfoLaunchUris(object, uris, launch.context, .errwarn = TRUE)}
\arguments{
\item{\verb{object}}{a \code{\link{GAppInfo}}}
\item{\verb{uris}}{a \verb{list} containing URIs to launch.}
\item{\verb{launch.context}}{a \code{\link{GAppLaunchContext}} or \code{NULL}}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\details{To lauch the application without arguments pass a \code{NULL} \code{uris} list.
  
Note that even if the launch is successful the application launched
can fail to start if it runs into problems during startup. There is
no way to detect this.}
\value{
A list containing the following elements:
\item{retval}{[logical] \code{TRUE} on successful launch, \code{FALSE} otherwise.}
\item{\verb{error}}{a \code{\link{GError}}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
