\alias{cairoFontFaceGetUserData}
\name{cairoFontFaceGetUserData}
\title{cairoFontFaceGetUserData}
\description{Return user data previously attached to \code{font.face} using the specified
key.  If no user data has been attached with the given key this
function returns \code{NULL}.}
\usage{cairoFontFaceGetUserData(font.face, key)}
\arguments{
\item{\verb{font.face}}{[\code{\link{CairoFontFace}}]  a \code{\link{CairoFontFace}}}
\item{\verb{key}}{[\code{\link{CairoUserDataKey}}]  the the \code{\link{CairoUserDataKey}} the user data was
attached to}
}
\value{[R object]  the user data previously attached or \code{NULL}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
