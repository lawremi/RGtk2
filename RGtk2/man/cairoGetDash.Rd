\alias{cairoGetDash}
\name{cairoGetDash}
\title{cairoGetDash}
\description{Gets the current dash list.  If not \code{NULL}, \code{dashes} should be big
enough to hold at least the number of values returned by
\code{\link{cairoGetDashCount}}.}
\usage{cairoGetDash(cr)}
\arguments{
\item{\code{cr}}{[\code{\link{Cairo}}]  a \code{\link{Cairo}}}
}
\details{  Since  1.4}
\value{
A list containing the following elements:
\item{\code{offset}}{[numeric]  return value for the current dash offset, or \code{NULL}}
\item{\code{dashes}}{[numeric]  the dash specification}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
