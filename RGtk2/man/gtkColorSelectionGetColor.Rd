\alias{gtkColorSelectionGetColor}
\name{gtkColorSelectionGetColor}
\title{gtkColorSelectionGetColor}
\description{
Sets \code{color} to be the current color in the GtkColorSelection widget.
\strong{WARNING: \code{gtk_color_selection_get_color} has been deprecated since version 2.0 and should not be used in newly-written code. Use \code{\link{gtkColorSelectionGetCurrentColor}} instead.}
}
\usage{gtkColorSelectionGetColor(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkColorSelection}}.}}
\value{
A list containing the following elements:
\item{\verb{color}}{a list of 4 \verb{numeric} to fill in with the current color.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
