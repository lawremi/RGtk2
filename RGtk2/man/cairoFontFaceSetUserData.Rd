\alias{cairoFontFaceSetUserData}
\name{cairoFontFaceSetUserData}
\title{cairoFontFaceSetUserData}
\description{Attach user data to \code{font.face}.  To remove user data from a font face,
call this function with the key that was used to set it and \code{NULL}
for \code{data}.}
\usage{cairoFontFaceSetUserData(font.face, key, user.data, destroy)}
\arguments{
\item{\code{font.face}}{[\code{\link{cairo_font_face_t}}]  a \code{\link{cairo_font_face_t}}}
\item{\code{key}}{[\code{\link{cairo_user_data_key_t}}]  the a \code{\link{cairo_user_data_key_t}} to attach the user data to}
\item{\code{user.data}}{[R object]  the user data to attach to the font face}
\item{\code{destroy}}{[cairo_destroy_func_t]  a \code{cairo_destroy_func_t} which will be called when the
font face is destroyed or when new user data is attached using the
same key.}
}
\value{[\code{\link{cairo_status_t}}]  \code{CAIRO_STATUS_SUCCESS} or \code{CAIRO_STATUS_NO_MEMORY} if a
slot could not be allocated for the user data.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
