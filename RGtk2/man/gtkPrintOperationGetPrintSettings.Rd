\alias{gtkPrintOperationGetPrintSettings}
\name{gtkPrintOperationGetPrintSettings}
\title{gtkPrintOperationGetPrintSettings}
\description{Returns the current print settings. }
\usage{gtkPrintOperationGetPrintSettings(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkPrintOperation}}}}
\details{Note that the return value is \code{NULL} until either 
\code{\link{gtkPrintOperationSetPrintSettings}} or 
\code{\link{gtkPrintOperationRun}} have been called.
  Since 2.10}
\value{[\code{\link{GtkPrintSettings}}] the current print settings of \code{op}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
