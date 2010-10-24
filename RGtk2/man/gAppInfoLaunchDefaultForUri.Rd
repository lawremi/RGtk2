\alias{gAppInfoLaunchDefaultForUri}
\name{gAppInfoLaunchDefaultForUri}
\title{gAppInfoLaunchDefaultForUri}
\description{Utility function that launches the default application 
registered to handle the specified uri. Synchronous I/O
is done on the uri to detect the type of the file if
required.}
\usage{gAppInfoLaunchDefaultForUri(uri, launch.context, .errwarn = TRUE)}
\arguments{
\item{\verb{uri}}{the uri to show}
\item{\verb{launch.context}}{an optional \code{\link{GAppLaunchContext}}.}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\value{
A list containing the following elements:
\item{retval}{[logical] \code{TRUE} on success, \code{FALSE} on error.}
\item{\verb{error}}{a \code{\link{GError}}.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
