\alias{gtkColorSelectionSetColor}
\name{gtkColorSelectionSetColor}
\title{gtkColorSelectionSetColor}
\description{
Sets the current color to be \code{color}.  The first time this is called, it will
also set the original color to be \code{color} too.
\strong{WARNING: \code{gtk_color_selection_set_color} has been deprecated since version 2.0 and should not be used in newly-written code. Use \code{\link{gtkColorSelectionSetCurrentColor}} instead.}
}
\usage{gtkColorSelectionSetColor(object, color)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkColorSelection}}.}
\item{\verb{color}}{a list of 4 doubles specifying the red, green, blue and opacity
to set the current color to.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
