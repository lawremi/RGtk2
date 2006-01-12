\alias{gtkRulerGetRange}
\name{gtkRulerGetRange}
\title{gtkRulerGetRange}
\description{Retrieves values indicating the range and current position of a \code{\link{GtkRuler}}.
See \code{\link{gtkRulerSetRange}}.}
\usage{gtkRulerGetRange(object)}
\arguments{\item{\code{object}}{[\code{\link{GtkRuler}}]  a \code{\link{GtkRuler}}}}
\value{
A list containing the following elements:
\item{\code{lower}}{[numeric]  location to store lower limit of the ruler, or \code{NULL}}
\item{\code{upper}}{[numeric]  location to store upper limit of the ruler, or \code{NULL}}
\item{\code{position}}{[numeric]  location to store the current position of the mark on the ruler, or \code{NULL}}
\item{\code{max.size}}{[numeric]  location to store the maximum size of the ruler used when calculating
           the space to leave for the text, or \code{NULL}.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
