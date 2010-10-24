\alias{gtkColorSelectionSetPreviousColor}
\name{gtkColorSelectionSetPreviousColor}
\title{gtkColorSelectionSetPreviousColor}
\description{Sets the 'previous' color to be \code{color}.  This function should be called with
some hesitations, as it might seem confusing to have that color change.
Calling \code{\link{gtkColorSelectionSetCurrentColor}} will also set this color the first
time it is called.}
\usage{gtkColorSelectionSetPreviousColor(object, color)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkColorSelection}}.}
\item{\verb{color}}{a \code{\link{GdkColor}} to set the previous color with.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
