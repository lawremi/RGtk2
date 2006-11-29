\alias{gtkPrintContextSetCairoContext}
\name{gtkPrintContextSetCairoContext}
\title{gtkPrintContextSetCairoContext}
\description{Sets a new cairo context on a print context. }
\usage{gtkPrintContextSetCairoContext(object, cr, dpi.x, dpi.y)}
\arguments{
\item{\code{object}}{[\code{\link{GtkPrintContext}}]  a \code{\link{GtkPrintContext}}}
\item{\code{cr}}{[\code{\link{Cairo}}]  the cairo context}
\item{\code{dpi.x}}{[numeric]  the horizontal resolution to use with \code{cr}}
\item{\code{dpi.y}}{[numeric]  the vertical resolution to use with \code{cr}}
}
\details{This function is intended to be used when implementing
an internal print preview, it is not needed for printing,
since GTK+ itself creates a suitable cairo context in that
case.  

  Since  2.10 }
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
