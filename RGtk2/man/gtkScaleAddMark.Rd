\alias{gtkScaleAddMark}
\name{gtkScaleAddMark}
\title{gtkScaleAddMark}
\description{Adds a mark at \code{value}. }
\usage{gtkScaleAddMark(object, value, position, markup = NULL)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkScale}}}
\item{\verb{value}}{the value at which the mark is placed, must be between
the lower and upper limits of the scales' adjustment}
\item{\verb{position}}{where to draw the mark. For a horizontal scale, \verb{GTK_POS_TOP}
is drawn above the scale, anything else below. For a vertical scale,
\verb{GTK_POS_LEFT} is drawn to the left of the scale, anything else to the
right.}
\item{\verb{markup}}{Text to be shown at the mark, using Pango markup, or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
}
\details{A mark is indicated visually by drawing a tick mark next to the scale, 
and GTK+ makes it easy for the user to position the scale exactly at the 
marks value.
  
If \code{markup} is not \code{NULL}, text is shown next to the tick mark. 
  
To remove marks from a scale, use \code{\link{gtkScaleClearMarks}}.
  Since 2.16}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
