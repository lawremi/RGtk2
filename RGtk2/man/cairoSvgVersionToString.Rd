\alias{cairoSvgVersionToString}
\name{cairoSvgVersionToString}
\title{cairoSvgVersionToString}
\description{Get the string representation of the given \code{version} id. This function
will return \code{NULL} if \code{version} isn't valid. See \code{\link{cairoSvgGetVersions}}
for a way to get the list of valid version ids.}
\usage{cairoSvgVersionToString(version)}
\arguments{\item{\verb{version}}{[\code{\link{CairoSvgVersion}}]  a version id}}
\details{  Since 1.2}
\value{[char]  the string associated to given version.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
