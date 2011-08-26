\alias{gLoadableIconLoad}
\name{gLoadableIconLoad}
\title{gLoadableIconLoad}
\description{Loads a loadable icon. For the asynchronous version of this function, 
see \code{\link{gLoadableIconLoadAsync}}.}
\usage{gLoadableIconLoad(object, size, cancellable = NULL, .errwarn = TRUE)}
\arguments{
\item{\verb{object}}{a \code{\link{GLoadableIcon}}.}
\item{\verb{size}}{an integer.}
\item{\verb{cancellable}}{optional \code{\link{GCancellable}} object, \code{NULL} to ignore.}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\value{
A list containing the following elements:
\item{retval}{[\code{\link{GInputStream}}] a \code{\link{GInputStream}} to read the icon from.}
\item{\verb{type}}{a location to store the type of the loaded icon, \code{NULL} to ignore.}
\item{\verb{error}}{a \code{\link{GError}} location to store the error occuring, or \code{NULL} to
ignore.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
