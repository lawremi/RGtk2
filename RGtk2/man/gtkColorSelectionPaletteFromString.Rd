\alias{gtkColorSelectionPaletteFromString}
\name{gtkColorSelectionPaletteFromString}
\title{gtkColorSelectionPaletteFromString}
\description{Parses a color palette string; the string is a colon-separated
list of color names readable by \code{\link{gdkColorParse}}.}
\usage{gtkColorSelectionPaletteFromString(str)}
\arguments{\item{\code{str}}{[character]  a string encoding a color palette.}}
\value{
A list containing the following elements:
\item{retval}{[logical] \code{TRUE} if a palette was successfully parsed.}
\item{\code{colors}}{[\code{\link{GdkColor}}]  return location for allocated list of \code{\link{GdkColor}}.}
\item{\code{n.colors}}{[integer]  return location for length of list.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
