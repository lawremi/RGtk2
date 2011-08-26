\alias{gdkCharWidthWc}
\name{gdkCharWidthWc}
\title{gdkCharWidthWc}
\description{
Determines the width of a given wide character. (Encoded
in the wide-character encoding of the current locale).
\strong{WARNING: \code{gdk_char_width_wc} is deprecated and should not be used in newly-written code.}
}
\usage{gdkCharWidthWc(object, character)}
\arguments{
\item{\verb{object}}{a \code{\link{GdkFont}}}
\item{\verb{character}}{the character to measure.}
}
\value{[integer] the width of the character in pixels.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
