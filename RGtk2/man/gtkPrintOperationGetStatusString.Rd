\alias{gtkPrintOperationGetStatusString}
\name{gtkPrintOperationGetStatusString}
\title{gtkPrintOperationGetStatusString}
\description{Returns a string representation of the status of the 
print operation. The string is translated and suitable
for displaying the print status e.g. in a \code{\link{GtkStatusbar}}.}
\usage{gtkPrintOperationGetStatusString(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkPrintOperation}}}}
\details{Use \code{\link{gtkPrintOperationGetStatus}} to obtain a status
value that is suitable for programmatic use.
  Since 2.10}
\value{[character] a string representation of the status
of the print operation}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
