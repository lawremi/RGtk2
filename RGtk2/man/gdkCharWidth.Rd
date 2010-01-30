\alias{gdkCharWidth}
\name{gdkCharWidth}
\title{gdkCharWidth}
\description{
Determines the width of a given character.
\strong{WARNING: \code{gdk_char_width} is deprecated and should not be used in newly-written code. Use \code{\link{gdkTextExtents}} instead.}
}
\usage{gdkCharWidth(object, character)}
\arguments{
\item{\verb{object}}{[\verb{\link{GdkFont}}]  a \verb{\link{GdkFont}}}
\item{\verb{character}}{[character]  the character to measure.}
}
\value{[integer]  the width of the character in pixels.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
