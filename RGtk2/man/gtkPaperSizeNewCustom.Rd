\alias{gtkPaperSizeNewCustom}
\name{gtkPaperSizeNewCustom}
\title{gtkPaperSizeNewCustom}
\description{Creates a new \verb{\link{GtkPaperSize}} object with the
given parameters.}
\usage{gtkPaperSizeNewCustom(name, display.name, width, height, unit)}
\arguments{
\item{\verb{name}}{[character]  the paper name }
\item{\verb{display.name}}{[character]  the human-readable name}
\item{\verb{width}}{[numeric]  the paper width, in units of \code{unit}}
\item{\verb{height}}{[numeric]  the paper height, in units of \code{unit}}
\item{\verb{unit}}{[\code{\link{GtkUnit}}]  the unit for \code{width} and \code{height}}
}
\details{  Since  2.10}
\value{[\verb{\link{GtkPaperSize}}]  a new \verb{\link{GtkPaperSize}} object}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
