\alias{gAppLaunchContextGetStartupNotifyId}
\name{gAppLaunchContextGetStartupNotifyId}
\title{gAppLaunchContextGetStartupNotifyId}
\description{Initiates startup notification for the application and returns the
DESKTOP_STARTUP_ID for the launched operation, if supported.}
\usage{gAppLaunchContextGetStartupNotifyId(object, info, files)}
\arguments{
\item{\verb{object}}{a \code{\link{GAppLaunchContext}}}
\item{\verb{info}}{a \code{\link{GAppInfo}}}
\item{\verb{files}}{a \verb{list} of of \code{\link{GFile}} objects}
}
\details{Startup notification IDs are defined in the 
FreeDesktop.Org Startup Notifications standard (\url{https://specifications.freedesktop.org/startup-notification-spec/startup-notification-latest.txt}).}
\value{[char] a startup notification ID for the application, or \code{NULL} if
not supported.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
