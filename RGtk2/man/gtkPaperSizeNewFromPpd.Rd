\alias{gtkPaperSizeNewFromPpd}
\name{gtkPaperSizeNewFromPpd}
\title{gtkPaperSizeNewFromPpd}
\description{Creates a new \verb{\link{GtkPaperSize}} object by using 
PPD information. }
\usage{gtkPaperSizeNewFromPpd(ppd.name, ppd.display.name, width, height)}
\arguments{
\item{\verb{ppd.name}}{[character]  a PPD paper name}
\item{\verb{ppd.display.name}}{[character]  the corresponding human-readable name}
\item{\verb{width}}{[numeric]  the paper width, in points}
\item{\verb{height}}{[numeric]  the paper height in points}
}
\details{If \code{ppd.name} is not a recognized PPD paper name, 
\code{ppd.display.name}, \code{width} and \code{height} are used to 
construct a custom \verb{\link{GtkPaperSize}} object.  

  Since  2.10}
\value{[\verb{\link{GtkPaperSize}}]  a new \verb{\link{GtkPaperSize}}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
