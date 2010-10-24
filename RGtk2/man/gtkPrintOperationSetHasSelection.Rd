\alias{gtkPrintOperationSetHasSelection}
\name{gtkPrintOperationSetHasSelection}
\title{gtkPrintOperationSetHasSelection}
\description{Sets whether there is a selection to print.}
\usage{gtkPrintOperationSetHasSelection(object, has.selection)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkPrintOperation}}}
\item{\verb{has.selection}}{\code{TRUE} indicates that a selection exists}
}
\details{Application has to set number of pages to which the selection
will draw by \code{\link{gtkPrintOperationSetNPages}} in a callback of
\verb{"begin-print"}.
  Since 2.18}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
