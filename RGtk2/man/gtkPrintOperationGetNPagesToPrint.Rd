\alias{gtkPrintOperationGetNPagesToPrint}
\name{gtkPrintOperationGetNPagesToPrint}
\title{gtkPrintOperationGetNPagesToPrint}
\description{Returns the number of pages that will be printed.}
\usage{gtkPrintOperationGetNPagesToPrint(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkPrintOperation}}}}
\details{Note that this value is set during print preparation phase
(\code{GTK_PRINT_STATUS_PREPARING}), so this function should never be
called before the data generation phase (\code{GTK_PRINT_STATUS_GENERATING_DATA}).
You can connect to the \verb{"status-changed"} signal
and call \code{\link{gtkPrintOperationGetNPagesToPrint}} when
print status is \code{GTK_PRINT_STATUS_GENERATING_DATA}.
This is typically used to track the progress of print operation.
  Since 2.18}
\value{[integer] the number of pages that will be printed}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
