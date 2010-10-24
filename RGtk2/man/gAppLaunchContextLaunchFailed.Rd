\alias{gAppLaunchContextLaunchFailed}
\name{gAppLaunchContextLaunchFailed}
\title{gAppLaunchContextLaunchFailed}
\description{Called when an application has failed to launch, so that it can cancel
the application startup notification started in \code{\link{gAppLaunchContextGetStartupNotifyId}}.}
\usage{gAppLaunchContextLaunchFailed(object, startup.notify.id)}
\arguments{
\item{\verb{object}}{a \code{\link{GAppLaunchContext}}.}
\item{\verb{startup.notify.id}}{the startup notification id that was returned by \code{\link{gAppLaunchContextGetStartupNotifyId}}.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
