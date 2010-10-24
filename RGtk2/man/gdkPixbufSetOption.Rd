\alias{gdkPixbufSetOption}
\name{gdkPixbufSetOption}
\title{gdkPixbufSetOption}
\description{Attaches a key/value pair as an option to a \code{\link{GdkPixbuf}}. If \code{key} already
exists in the list of options attached to \code{pixbuf}, the new value is 
ignored and \code{FALSE} is returned.}
\usage{gdkPixbufSetOption(object, key, value)}
\arguments{
\item{\verb{object}}{a \code{\link{GdkPixbuf}}}
\item{\verb{key}}{a string.}
\item{\verb{value}}{a string.}
}
\details{Since 2.2}
\value{[logical] \code{TRUE} on success.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
