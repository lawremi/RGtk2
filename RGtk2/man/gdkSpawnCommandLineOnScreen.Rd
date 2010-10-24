\alias{gdkSpawnCommandLineOnScreen}
\name{gdkSpawnCommandLineOnScreen}
\title{gdkSpawnCommandLineOnScreen}
\description{Like \code{gSpawnCommandLineAsync()}, except the child process is
spawned in such an environment that on calling \code{\link{gdkDisplayOpen}}
it would be returned a \code{\link{GdkDisplay}} with \code{screen} as the default
screen.}
\usage{gdkSpawnCommandLineOnScreen(screen, command.line, .errwarn = TRUE)}
\arguments{
\item{\verb{screen}}{a \code{\link{GdkScreen}}}
\item{\verb{command.line}}{a command line}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\details{This is useful for applications which wish to launch an application
on a specific screen.
  Since 2.4}
\value{
A list containing the following elements:
\item{retval}{[logical] \code{TRUE} on success, \code{FALSE} if error is set.}
\item{\verb{error}}{return location for errors}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
