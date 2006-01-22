\alias{gtkColorSelectionSetColor}
\name{gtkColorSelectionSetColor}
\title{gtkColorSelectionSetColor}
\description{
Sets the current color to be \code{color}.  The first time this is called, it will
also set the original color to be \code{color} too.
\strong{WARNING: \code{gtk_color_selection_set_color} is deprecated and should not be used in newly-written code. Use \code{\link{gtkColorSelectionSetCurrentColor}} instead.  
Sets the current color to be \code{color}.  The first time this is called, it will
also set the original color to be \code{color} too.  }
}
\usage{gtkColorSelectionSetColor(object, color)}
\arguments{
\item{\code{object}}{[\code{\link{GtkColorSelection}}]  a \code{\link{GtkColorSelection}}.}
\item{\code{color}}{[numeric]  a list of 4 doubles specifying the red, green, blue and opacity 
  to set the current color to.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
