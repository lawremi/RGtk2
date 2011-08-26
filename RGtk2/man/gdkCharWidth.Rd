\alias{gdkCharWidth}
\name{gdkCharWidth}
\title{gdkCharWidth}
\description{
Determines the width of a given character.
\strong{WARNING: \code{gdk_char_width} has been deprecated since version 2.2 and should not be used in newly-written code. Use \code{\link{gdkTextExtents}} instead.}
}
\usage{gdkCharWidth(object, character)}
\arguments{
\item{\verb{object}}{a \code{\link{GdkFont}}}
\item{\verb{character}}{the character to measure.}
}
\value{[integer] the width of the character in pixels.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
