\alias{gdkAppLaunchContextSetIcon}
\name{gdkAppLaunchContextSetIcon}
\title{gdkAppLaunchContextSetIcon}
\description{Sets the icon for applications that are launched with this
context.}
\usage{gdkAppLaunchContextSetIcon(object, icon = NULL)}
\arguments{
\item{\verb{object}}{a \code{\link{GdkAppLaunchContext}}}
\item{\verb{icon}}{a \code{\link{GIcon}}, or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
}
\details{Window Managers can use this information when displaying startup
notification.
  
See also \code{\link{gdkAppLaunchContextSetIconName}}.
  Since 2.14}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
