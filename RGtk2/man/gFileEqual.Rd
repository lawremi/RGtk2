\alias{gFileEqual}
\name{gFileEqual}
\title{gFileEqual}
\description{Checks equality of two given \code{\link{GFile}}s. Note that two
\code{\link{GFile}}s that differ can still refer to the same
file on the filesystem due to various forms of filename
aliasing.}
\usage{gFileEqual(object, file2)}
\arguments{
\item{\verb{object}}{the first \code{\link{GFile}}.}
\item{\verb{file2}}{the second \code{\link{GFile}}.}
}
\details{This call does no blocking i/o.}
\value{[logical] \code{TRUE} if \code{file1} and \code{file2} are equal.
\code{FALSE} if either is not a \code{\link{GFile}}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
