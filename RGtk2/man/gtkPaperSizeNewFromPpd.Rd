\alias{gtkPaperSizeNewFromPpd}
\name{gtkPaperSizeNewFromPpd}
\title{gtkPaperSizeNewFromPpd}
\description{Creates a new \code{\link{GtkPaperSize}} object by using 
PPD information. }
\usage{gtkPaperSizeNewFromPpd(ppd.name, ppd.display.name, width, height)}
\arguments{
\item{\code{ppd.name}}{[character]  a PPD paper name}
\item{\code{ppd.display.name}}{[character]  the corresponding human-readable name}
\item{\code{width}}{[numeric]  the paper width, in points}
\item{\code{height}}{[numeric]  the paper height in points}
}
\details{If \code{ppd.name} is not a recognized PPD paper name, 
\code{ppd.display.name}, \code{width} and \code{height} are used to 
construct a custom \code{\link{GtkPaperSize}} object.  

  Since  2.10}
\value{[\code{\link{GtkPaperSize}}]  a new \code{\link{GtkPaperSize}}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
