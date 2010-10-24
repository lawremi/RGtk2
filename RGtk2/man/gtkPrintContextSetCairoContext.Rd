\alias{gtkPrintContextSetCairoContext}
\name{gtkPrintContextSetCairoContext}
\title{gtkPrintContextSetCairoContext}
\description{Sets a new cairo context on a print context. }
\usage{gtkPrintContextSetCairoContext(object, cr, dpi.x, dpi.y)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkPrintContext}}}
\item{\verb{cr}}{the cairo context}
\item{\verb{dpi.x}}{the horizontal resolution to use with \code{cr}}
\item{\verb{dpi.y}}{the vertical resolution to use with \code{cr}}
}
\details{This function is intended to be used when implementing
an internal print preview, it is not needed for printing,
since GTK+ itself creates a suitable cairo context in that
case.
  Since 2.10}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
