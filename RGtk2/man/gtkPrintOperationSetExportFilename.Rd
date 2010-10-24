\alias{gtkPrintOperationSetExportFilename}
\name{gtkPrintOperationSetExportFilename}
\title{gtkPrintOperationSetExportFilename}
\description{Sets up the \code{\link{GtkPrintOperation}} to generate a file instead
of showing the print dialog. The indended use of this function
is for implementing "Export to PDF" actions. Currently, PDF
is the only supported format.}
\usage{gtkPrintOperationSetExportFilename(object, filename)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkPrintOperation}}}
\item{\verb{filename}}{the filename for the exported file}
}
\details{"Print to PDF" support is independent of this and is done
by letting the user pick the "Print to PDF" item from the list
of printers in the print dialog.
  Since 2.10}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
