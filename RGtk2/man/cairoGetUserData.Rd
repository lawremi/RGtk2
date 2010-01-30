\alias{cairoGetUserData}
\name{cairoGetUserData}
\title{cairoGetUserData}
\description{Return user data previously attached to \code{cr} using the specified
key.  If no user data has been attached with the given key this
function returns \code{NULL}.}
\usage{cairoGetUserData(cr, key)}
\arguments{
\item{\verb{cr}}{[\verb{\link{Cairo}}]  a \verb{\link{Cairo}}}
\item{\verb{key}}{[\verb{\link{CairoUserDataKey}}]  the the \verb{\link{CairoUserDataKey}} the user data was
attached to}
}
\details{  Since  1.4}
\value{[R object]  the user data previously attached or \code{NULL}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
