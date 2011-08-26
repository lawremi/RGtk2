\alias{gdkAppLaunchContextSetIconName}
\name{gdkAppLaunchContextSetIconName}
\title{gdkAppLaunchContextSetIconName}
\description{Sets the icon for applications that are launched with this context. 
The \code{icon.name} will be interpreted in the same way as the Icon field 
in desktop files. See also \code{\link{gdkAppLaunchContextSetIcon}}. }
\usage{gdkAppLaunchContextSetIconName(object, icon.name = NULL)}
\arguments{
\item{\verb{object}}{a \code{\link{GdkAppLaunchContext}}}
\item{\verb{icon.name}}{an icon name, or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
}
\details{If both \code{icon} and \code{icon.name} are set, the \code{icon.name} takes priority.
If neither \code{icon} or \code{icon.name} is set, the icon is taken from either 
the file that is passed to launched application or from the \code{\link{GAppInfo}} 
for the launched application itself.
  Since 2.14}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
