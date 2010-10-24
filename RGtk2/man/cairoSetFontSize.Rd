\alias{cairoSetFontSize}
\name{cairoSetFontSize}
\title{cairoSetFontSize}
\description{Sets the current font matrix to a scale by a factor of \code{size}, replacing
any font matrix previously set with \code{\link{cairoSetFontSize}} or
\code{\link{cairoSetFontMatrix}}. This results in a font size of \code{size} user space
units. (More precisely, this matrix will result in the font's
em-square being a \code{size} by \code{size} square in user space.)}
\usage{cairoSetFontSize(cr, size)}
\arguments{
\item{\verb{cr}}{[\code{\link{Cairo}}]  a \code{\link{Cairo}}}
\item{\verb{size}}{[numeric]  the new font size, in user space units}
}
\details{If text is drawn without a call to \code{\link{cairoSetFontSize}}, (nor
\code{\link{cairoSetFontMatrix}} nor \code{\link{cairoSetScaledFont}}), the default
font size is 10.0.  }
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
