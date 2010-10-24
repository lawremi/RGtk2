\alias{gtkPrintOperationGetError}
\name{gtkPrintOperationGetError}
\title{gtkPrintOperationGetError}
\description{Call this when the result of a print operation is
\code{GTK_PRINT_OPERATION_RESULT_ERROR}, either as returned by 
\code{\link{gtkPrintOperationRun}}, or in the \verb{"done"} signal 
handler. The returned \code{\link{GError}} will contain more details on what went wrong.}
\usage{gtkPrintOperationGetError(object, .errwarn = TRUE)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkPrintOperation}}}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\details{Since 2.10}
\value{
A list containing the following elements:
\item{\verb{error}}{return location for the error}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
