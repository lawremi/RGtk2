\alias{gtkPaperSizeNewCustom}
\name{gtkPaperSizeNewCustom}
\title{gtkPaperSizeNewCustom}
\description{Creates a new \code{\link{GtkPaperSize}} object with the
given parameters.}
\usage{gtkPaperSizeNewCustom(name, display.name, width, height, unit)}
\arguments{
\item{\code{name}}{[character]  the paper name }
\item{\code{display.name}}{[character]  the human-readable name}
\item{\code{width}}{[numeric]  the paper width, in units of \code{unit}}
\item{\code{height}}{[numeric]  the paper height, in units of \code{unit}}
\item{\code{unit}}{[\code{\link{GtkUnit}}]  the unit for \code{width} and \code{height}}
}
\details{  Since  2.10}
\value{[\code{\link{GtkPaperSize}}]  a new \code{\link{GtkPaperSize}} object}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
