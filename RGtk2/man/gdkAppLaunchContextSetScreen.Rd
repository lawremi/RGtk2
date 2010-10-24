\alias{gdkAppLaunchContextSetScreen}
\name{gdkAppLaunchContextSetScreen}
\title{gdkAppLaunchContextSetScreen}
\description{Sets the screen on which applications will be launched when
using this context. See also \code{\link{gdkAppLaunchContextSetDisplay}}.}
\usage{gdkAppLaunchContextSetScreen(object, screen)}
\arguments{
\item{\verb{object}}{a \code{\link{GdkAppLaunchContext}}}
\item{\verb{screen}}{a \code{\link{GdkScreen}}}
}
\details{If both \code{screen} and \code{display} are set, the \code{screen} takes priority.
If neither \code{screen} or \code{display} are set, the default screen and
display are used.
  Since 2.14}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
