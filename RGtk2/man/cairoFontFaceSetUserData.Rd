\alias{cairoFontFaceSetUserData}
\name{cairoFontFaceSetUserData}
\title{cairoFontFaceSetUserData}
\description{Attach user data to \code{font.face}.  To remove user data from a font face,
call this function with the key that was used to set it and \code{NULL}
for \code{data}.}
\usage{cairoFontFaceSetUserData(font.face, key, user.data)}
\arguments{
\item{\verb{font.face}}{[\verb{\link{CairoFontFace}}]  a \verb{\link{CairoFontFace}}}
\item{\verb{key}}{[\verb{\link{CairoUserDataKey}}]  the a \verb{\link{CairoUserDataKey}} to attach the user data to}
\item{\verb{user.data}}{[R object]  the user data to attach to the font face}
}
\value{[\verb{\link{CairoStatus}}] \code{CAIRO_STATUS_SUCCESS} or \code{CAIRO_STATUS_NO_MEMORY} if a
slot could not be allocated for the user data.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
