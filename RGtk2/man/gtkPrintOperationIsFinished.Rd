\alias{gtkPrintOperationIsFinished}
\name{gtkPrintOperationIsFinished}
\title{gtkPrintOperationIsFinished}
\description{A convenience function to find out if the print operation
is finished, either successfully (\code{GTK_PRINT_STATUS_FINISHED})
or unsuccessfully (\code{GTK_PRINT_STATUS_FINISHED_ABORTED}).}
\usage{gtkPrintOperationIsFinished(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkPrintOperation}}}}
\details{Note: when you enable print status tracking the print operation
can be in a non-finished state even after done has been called, as
the operation status then tracks the print job status on the printer.
  Since 2.10}
\value{[logical] \code{TRUE}, if the print operation is finished.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
