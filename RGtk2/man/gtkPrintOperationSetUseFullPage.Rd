\alias{gtkPrintOperationSetUseFullPage}
\name{gtkPrintOperationSetUseFullPage}
\title{gtkPrintOperationSetUseFullPage}
\description{If \code{full.page} is \code{TRUE}, the transformation for the cairo context 
obtained from \code{\link{GtkPrintContext}} puts the origin at the top left 
corner of the page (which may not be the top left corner of the 
sheet, depending on page orientation and the number of pages per 
sheet). Otherwise, the origin is at the top left corner of the
imageable area (i.e. inside the margins).}
\usage{gtkPrintOperationSetUseFullPage(object, full.page)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkPrintOperation}}}
\item{\verb{full.page}}{\code{TRUE} to set up the \code{\link{GtkPrintContext}} for the full page}
}
\details{Since 2.10}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
