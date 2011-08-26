\alias{gLoadableIconLoadFinish}
\name{gLoadableIconLoadFinish}
\title{gLoadableIconLoadFinish}
\description{Finishes an asynchronous icon load started in \code{\link{gLoadableIconLoadAsync}}.}
\usage{gLoadableIconLoadFinish(object, res, type, .errwarn = TRUE)}
\arguments{
\item{\verb{object}}{a \code{\link{GLoadableIcon}}.}
\item{\verb{res}}{a \code{\link{GAsyncResult}}.}
\item{\verb{type}}{a location to store the type of the loaded icon, \code{NULL} to ignore.}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\value{
A list containing the following elements:
\item{retval}{[\code{\link{GInputStream}}] a \code{\link{GInputStream}} to read the icon from.}
\item{\verb{error}}{a \code{\link{GError}} location to store the error occuring, or \code{NULL} to
ignore.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
