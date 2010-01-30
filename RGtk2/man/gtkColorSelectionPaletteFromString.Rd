\alias{gtkColorSelectionPaletteFromString}
\name{gtkColorSelectionPaletteFromString}
\title{gtkColorSelectionPaletteFromString}
\description{Parses a color palette string; the string is a colon-separated
list of color names readable by \code{\link{gdkColorParse}}.}
\usage{gtkColorSelectionPaletteFromString(str)}
\arguments{\item{\verb{str}}{[character]  a string encoding a color palette.}}
\value{
A list containing the following elements:
\item{retval}{[logical] \code{TRUE} if a palette was successfully parsed.}
\item{\verb{colors}}{[\verb{\link{GdkColor}}]  return location for allocated list of \verb{\link{GdkColor}}.}
\item{\verb{n.colors}}{[integer]  return location for length of list.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
