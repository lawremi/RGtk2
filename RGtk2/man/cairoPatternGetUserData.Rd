\alias{cairoPatternGetUserData}
\name{cairoPatternGetUserData}
\title{cairoPatternGetUserData}
\description{Return user data previously attached to \code{pattern} using the
specified key.  If no user data has been attached with the given
key this function returns \code{NULL}.}
\usage{cairoPatternGetUserData(pattern, key)}
\arguments{
\item{\verb{pattern}}{[\code{\link{CairoPattern}}]  a \code{\link{CairoPattern}}}
\item{\verb{key}}{[\code{\link{CairoUserDataKey}}]  the the \code{\link{CairoUserDataKey}} the user data was
attached to}
}
\details{  Since 1.4}
\value{[R object]  the user data previously attached or \code{NULL}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
