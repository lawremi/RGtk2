\alias{gtkPrintContextGetHardMargins}
\name{gtkPrintContextGetHardMargins}
\title{gtkPrintContextGetHardMargins}
\description{Obtains the hardware printer margins of the \code{\link{GtkPrintContext}}, in units.}
\usage{gtkPrintContextGetHardMargins(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkPrintContext}}}}
\details{Since 2.20}
\value{
A list containing the following elements:
\item{retval}{[logical] \code{TRUE} if the hard margins were retrieved}
\item{\verb{top}}{top hardware printer margin}
\item{\verb{bottom}}{bottom hardware printer margin}
\item{\verb{left}}{left hardware printer margin}
\item{\verb{right}}{right hardware printer margin}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
