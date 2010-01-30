\alias{gtkColorSelectionGetColor}
\name{gtkColorSelectionGetColor}
\title{gtkColorSelectionGetColor}
\description{
Sets \code{color} to be the current color in the GtkColorSelection widget.
\strong{WARNING: \code{gtk_color_selection_get_color} is deprecated and should not be used in newly-written code.}
}
\usage{gtkColorSelectionGetColor(object)}
\arguments{\item{\verb{object}}{[\verb{\link{GtkColorSelection}}]  a \verb{\link{GtkColorSelection}}.}}
\details{This function is deprecated, use \code{\link{gtkColorSelectionGetCurrentColor}} instead.  }
\value{
A list containing the following elements:
\item{\verb{color}}{[numeric]  a list of 4 \verb{numeric} to fill in with the current color.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
