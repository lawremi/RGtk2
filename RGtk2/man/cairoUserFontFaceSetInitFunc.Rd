\alias{cairoUserFontFaceSetInitFunc}
\name{cairoUserFontFaceSetInitFunc}
\title{cairoUserFontFaceSetInitFunc}
\description{Sets the scaled-font initialization function of a user-font.
See \verb{cairo_user_scaled_font_init_func_t} for details of how the callback
works.}
\usage{cairoUserFontFaceSetInitFunc(font.face, init.func)}
\arguments{
\item{\verb{font.face}}{[\code{\link{CairoFontFace}}]  A user font face}
\item{\verb{init.func}}{[cairo_user_scaled_font_init_func_t]  The init callback, or \code{NULL}}
}
\details{The font-face should not be immutable or a \code{CAIRO_STATUS_USER_FONT_IMMUTABLE}
error will occur.  A user font-face is immutable as soon as a scaled-font
is created from it.  
  Since 1.8}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
