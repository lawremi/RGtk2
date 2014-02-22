\alias{pangoColorParse}
\name{pangoColorParse}
\title{pangoColorParse}
\description{Fill in the fields of a color from a string specification. The
string can either one of a large set of standard names. (Taken
from the X11 \file{rgb.txt} file), or it can be a hex value in the
form '#rgb' '#rrggbb' '#rrrgggbbb' or '#rrrrggggbbbb' where
'r', 'g' and 'b' are hex digits of the red, green, and blue
components of the color, respectively. (White in the four
forms is '#fff' '#ffffff' '#fffffffff' and '#ffffffffffff')}
\usage{pangoColorParse(spec)}
\arguments{\item{\verb{spec}}{[char]  a string specifying the new color}}
\value{
A list containing the following elements:
\item{retval}{[logical] \code{TRUE} if parsing of the specifier succeeded,
  otherwise false.}
\item{\verb{color}}{[\code{\link{PangoColor}}]  a \code{\link{PangoColor}} structure in which to store the result, or \code{NULL}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
