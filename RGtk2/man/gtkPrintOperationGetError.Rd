\alias{gtkPrintOperationGetError}
\name{gtkPrintOperationGetError}
\title{gtkPrintOperationGetError}
\description{Call this when the result of a print operation is
\code{GTK_PRINT_OPERATION_RESULT_ERROR}, either as returned by 
\code{\link{gtkPrintOperationRun}}, or in the ::done signal handler. 
The returned \code{\link{GError}} will contain more details on what went wrong.}
\usage{gtkPrintOperationGetError(object, .errwarn = TRUE)}
\arguments{
\item{\code{object}}{[\code{\link{GtkPrintOperation}}]  a \code{\link{GtkPrintOperation}}}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\details{  Since  2.10}
\value{
A list containing the following elements:
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
