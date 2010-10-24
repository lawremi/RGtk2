\alias{gdkAppLaunchContextSetDesktop}
\name{gdkAppLaunchContextSetDesktop}
\title{gdkAppLaunchContextSetDesktop}
\description{Sets the workspace on which applications will be launched when
using this context when running under a window manager that 
supports multiple workspaces, as described in the 
Extended 
Window Manager Hints (\url{http://www.freedesktop.org/Standards/wm-spec}). }
\usage{gdkAppLaunchContextSetDesktop(object, desktop)}
\arguments{
\item{\verb{object}}{a \code{\link{GdkAppLaunchContext}}}
\item{\verb{desktop}}{the number of a workspace, or -1}
}
\details{When the workspace is not specified or \code{desktop} is set to -1, 
it is up to the window manager to pick one, typically it will
be the current workspace.
  Since 2.14}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
