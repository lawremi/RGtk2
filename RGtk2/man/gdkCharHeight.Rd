\alias{gdkCharHeight}
\name{gdkCharHeight}
\title{gdkCharHeight}
\description{
Determines the total height of a given character.
This value is not generally useful, because you cannot
determine how this total height will be drawn in
relation to the baseline. See \code{\link{gdkTextExtents}}.
\strong{WARNING: \code{gdk_char_height} is deprecated and should not be used in newly-written code. Use \code{\link{gdkTextExtents}} instead.}
}
\usage{gdkCharHeight(object, character)}
\arguments{
\item{\verb{object}}{[\verb{\link{GdkFont}}]  a \verb{\link{GdkFont}}}
\item{\verb{character}}{[character]  the character to measure.}
}
\value{[integer]  the height of the character in pixels.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
