\alias{gAppInfoLaunch}
\name{gAppInfoLaunch}
\title{gAppInfoLaunch}
\description{Launches the application. Passes \code{files} to the launched application 
as arguments, using the optional \code{launch.context} to get information
about the details of the launcher (like what screen it is on).
On error, \code{error} will be set accordingly.}
\usage{gAppInfoLaunch(object, files, launch.context, .errwarn = TRUE)}
\arguments{
\item{\verb{object}}{a \code{\link{GAppInfo}}}
\item{\verb{files}}{a \verb{list} of \code{\link{GFile}} objects}
\item{\verb{launch.context}}{a \code{\link{GAppLaunchContext}} or \code{NULL}}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\details{To lauch the application without arguments pass a \code{NULL} \code{files} list.
  
Note that even if the launch is successful the application launched
can fail to start if it runs into problems during startup. There is
no way to detect this.
  
Some URIs can be changed when passed through a GFile (for instance
unsupported uris with strange formats like mailto:), so if you have
a textual uri you want to pass in as argument, consider using
\code{\link{gAppInfoLaunchUris}} instead.}
\value{
A list containing the following elements:
\item{retval}{[logical] \code{TRUE} on successful launch, \code{FALSE} otherwise.}
\item{\verb{error}}{a \code{\link{GError}}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
