\alias{cairoFontFaceGetUserData}
\name{cairoFontFaceGetUserData}
\title{cairoFontFaceGetUserData}
\description{Return user data previously attached to \code{font.face} using the specified
key.  If no user data has been attached with the given key this
function returns \code{NULL}.}
\usage{cairoFontFaceGetUserData(font.face, key)}
\arguments{
\item{\code{font.face}}{[\code{\link{cairo_font_face_t}}]  a \code{\link{cairo_font_face_t}}}
\item{\code{key}}{[\code{\link{cairo_user_data_key_t}}]  the the \code{\link{cairo_user_data_key_t}} the user data was
attached to}
}
\value{[R object]  the user data previously attached or \code{NULL}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
