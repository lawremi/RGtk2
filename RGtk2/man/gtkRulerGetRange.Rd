\alias{gtkRulerGetRange}
\name{gtkRulerGetRange}
\title{gtkRulerGetRange}
\description{Retrieves values indicating the range and current position of a \code{\link{GtkRuler}}.
See \code{\link{gtkRulerSetRange}}.}
\usage{gtkRulerGetRange(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkRuler}}}}
\value{
A list containing the following elements:
\item{\verb{lower}}{location to store lower limit of the ruler, or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
\item{\verb{upper}}{location to store upper limit of the ruler, or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
\item{\verb{position}}{location to store the current position of the mark on the ruler, or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
\item{\verb{max.size}}{location to store the maximum size of the ruler used when calculating
the space to leave for the text, or \code{NULL}.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
