\alias{cairoUserFontFaceCreate}
\name{cairoUserFontFaceCreate}
\title{cairoUserFontFaceCreate}
\description{Creates a new user font-face.}
\usage{cairoUserFontFaceCreate()}
\details{Use the setter functions to associate callbacks with the returned
user font.  The only mandatory callback is render_glyph.
  
After the font-face is created, the user can attach arbitrary data
(the actual font data) to it using \code{\link{cairoFontFaceSetUserData}}
and access it from the user-font callbacks by using
\code{\link{cairoScaledFontGetFontFace}} followed by
\code{\link{cairoFontFaceGetUserData}}.  
  Since 1.8}
\value{[\code{\link{CairoFontFace}}]  a newly created \code{\link{CairoFontFace}}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
