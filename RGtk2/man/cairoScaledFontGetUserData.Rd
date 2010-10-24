\alias{cairoScaledFontGetUserData}
\name{cairoScaledFontGetUserData}
\title{cairoScaledFontGetUserData}
\description{Return user data previously attached to \code{scaled.font} using the
specified key.  If no user data has been attached with the given
key this function returns \code{NULL}.}
\usage{cairoScaledFontGetUserData(scaled.font, key)}
\arguments{
\item{\verb{scaled.font}}{[\code{\link{CairoScaledFont}}]  a \code{\link{CairoScaledFont}}}
\item{\verb{key}}{[\code{\link{CairoUserDataKey}}]  the the \code{\link{CairoUserDataKey}} the user data was
attached to}
}
\details{  Since 1.4}
\value{[R object]  the user data previously attached or \code{NULL}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
