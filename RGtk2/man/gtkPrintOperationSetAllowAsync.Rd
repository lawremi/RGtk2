\alias{gtkPrintOperationSetAllowAsync}
\name{gtkPrintOperationSetAllowAsync}
\title{gtkPrintOperationSetAllowAsync}
\description{Sets whether the \code{\link{gtkPrintOperationRun}} may return
before the print operation is completed. Note that
some platforms may not allow asynchronous operation.}
\usage{gtkPrintOperationSetAllowAsync(object, allow.async)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkPrintOperation}}}
\item{\verb{allow.async}}{\code{TRUE} to allow asynchronous operation}
}
\details{Since 2.10}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
