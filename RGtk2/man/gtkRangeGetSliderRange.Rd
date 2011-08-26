\alias{gtkRangeGetSliderRange}
\name{gtkRangeGetSliderRange}
\title{gtkRangeGetSliderRange}
\description{This function returns sliders range along the long dimension,
in widget->window coordinates.}
\usage{gtkRangeGetSliderRange(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkRange}}}}
\details{This function is useful mainly for \code{\link{GtkRange}} subclasses.
  Since 2.20}
\value{
A list containing the following elements:
\item{\verb{slider.start}}{return location for the slider's start, or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
\item{\verb{slider.end}}{return location for the slider's end, or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
