\alias{gdkColorParse}
\name{gdkColorParse}
\title{gdkColorParse}
\description{Parses a textual specification of a color and fill in the
\code{red}, \code{green},
and \code{blue} fields of a \code{\link{GdkColor}}
structure. The color is \emph{not} allocated, you
must call \code{\link{gdkColormapAllocColor}} yourself. The string can
either one of a large set of standard names. (Taken from the X11
\file{rgb.txt} file), or it can be a hex value in the
form '#rgb' '#rrggbb' '#rrrgggbbb' or
'#rrrrggggbbbb' where 'r', 'g' and 'b' are hex digits of the
red, green, and blue components of the color, respectively. (White
in the four forms is '#fff' '#ffffff' '#fffffffff' and
'#ffffffffffff')}
\usage{gdkColorParse(spec)}
\arguments{\item{\verb{spec}}{the string specifying the color.}}
\value{
A list containing the following elements:
\item{retval}{[logical] \code{TRUE} if the parsing succeeded.}
\item{\verb{color}}{the \code{\link{GdkColor}} to fill in. \emph{[  \acronym{out}  ]}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
