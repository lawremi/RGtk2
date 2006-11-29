\alias{gtkPrintOperationSetCurrentPage}
\name{gtkPrintOperationSetCurrentPage}
\title{gtkPrintOperationSetCurrentPage}
\description{Sets the current page.}
\usage{gtkPrintOperationSetCurrentPage(object, current.page)}
\arguments{
\item{\code{object}}{[\code{\link{GtkPrintOperation}}]  a \code{\link{GtkPrintOperation}}}
\item{\code{current.page}}{[integer]  the current page, 0-based}
}
\details{If this is called before \code{\link{gtkPrintOperationRun}}, 
the user will be able to select to print only the current page.
  
Note that this only makes sense for pre-paginated documents.  

  Since  2.10}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
