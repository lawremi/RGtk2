\alias{gtkToolPaletteGetGroupPosition}
\name{gtkToolPaletteGetGroupPosition}
\title{gtkToolPaletteGetGroupPosition}
\description{Gets the position of \code{group} in \code{palette} as index.
See \code{\link{gtkToolPaletteSetGroupPosition}}.}
\usage{gtkToolPaletteGetGroupPosition(object, group)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkToolPalette}}}
\item{\verb{group}}{a \code{\link{GtkToolItemGroup}}}
}
\details{Since 2.20}
\value{[integer] the index of group or -1 if \code{group} is not a child of \code{palette}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
