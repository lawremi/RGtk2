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
\item{\verb{cr}}{[\verb{\link{Cairo}}]  a \verb{\link{Cairo}}}
\item{\verb{size}}{[numeric]  the new font size, in user space units}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
