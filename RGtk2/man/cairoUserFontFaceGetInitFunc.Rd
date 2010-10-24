\alias{cairoUserFontFaceGetInitFunc}
\name{cairoUserFontFaceGetInitFunc}
\title{cairoUserFontFaceGetInitFunc}
\description{Gets the scaled-font initialization function of a user-font.}
\usage{cairoUserFontFaceGetInitFunc(font.face)}
\arguments{\item{\verb{font.face}}{[\code{\link{CairoFontFace}}]  A user font face}}
\details{  Since 1.8}
\value{[cairo_user_scaled_font_init_func_t]  The init callback of \code{font.face}
or \code{NULL} if none set or an error has occurred.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
