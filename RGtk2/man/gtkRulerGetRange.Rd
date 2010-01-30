\alias{gtkRulerGetRange}
\name{gtkRulerGetRange}
\title{gtkRulerGetRange}
\description{Retrieves values indicating the range and current position of a \verb{\link{GtkRuler}}.
See \code{\link{gtkRulerSetRange}}.}
\usage{gtkRulerGetRange(object)}
\arguments{\item{\verb{object}}{[\verb{\link{GtkRuler}}]  a \verb{\link{GtkRuler}}}}
\value{
A list containing the following elements:
\item{\verb{lower}}{[numeric]  location to store lower limit of the ruler, or \code{NULL}}
\item{\verb{upper}}{[numeric]  location to store upper limit of the ruler, or \code{NULL}}
\item{\verb{position}}{[numeric]  location to store the current position of the mark on the ruler, or \code{NULL}}
\item{\verb{max.size}}{[numeric]  location to store the maximum size of the ruler used when calculating
           the space to leave for the text, or \code{NULL}.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
