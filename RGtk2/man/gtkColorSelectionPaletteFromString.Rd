\alias{gtkColorSelectionPaletteFromString}
\name{gtkColorSelectionPaletteFromString}
\title{gtkColorSelectionPaletteFromString}
\description{Parses a color palette string; the string is a colon-separated
list of color names readable by \code{\link{gdkColorParse}}.}
\usage{gtkColorSelectionPaletteFromString(str)}
\arguments{\item{\verb{str}}{a string encoding a color palette.}}
\value{
A list containing the following elements:
\item{retval}{[logical] \code{TRUE} if a palette was successfully parsed.}
\item{\verb{colors}}{return location for allocated list of \code{\link{GdkColor}}.}
\item{\verb{n.colors}}{return location for length of list.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
