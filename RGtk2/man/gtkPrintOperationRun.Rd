\alias{gtkPrintOperationRun}
\name{gtkPrintOperationRun}
\title{gtkPrintOperationRun}
\description{Runs the print operation, by first letting the user modify
print settings in the print dialog, and then print the document.}
\usage{gtkPrintOperationRun(object, action, parent = NULL, .errwarn = TRUE)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkPrintOperation}}}
\item{\verb{action}}{the action to start}
\item{\verb{parent}}{Transient parent of the dialog. \emph{[  \acronym{allow-none}  ]}}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\details{Normally that this function does not return until the rendering of all 
pages is complete. You can connect to the 
\verb{"status-changed"} signal on \code{op} to obtain some 
information about the progress of the print operation. 
Furthermore, it may use a recursive mainloop to show the print dialog.
  
If you call \code{\link{gtkPrintOperationSetAllowAsync}} or set the 
\verb{"allow-async"} property the operation will run 
asynchronously if this is supported on the platform. The 
\verb{"done"} signal will be emitted with the result of the 
operation when the it is done (i.e. when the dialog is canceled, or when 
the print succeeds or fails).
\preformatted{
if (!is.null(settings))
  op$setPrintSettings(settings)
  
if (!is.null(page_setup))
  op$setDefaultPageSetup(page_setup)
  
gSignalConnect(op, "begin-print", begin_print)
gSignalConnect(op, "draw-page", draw_page)
 
res <- op$run("print-dialog", parent)
 
if (res[[1]] == "error") {
  error_dialog = gtkMessageDialog(parent, "destroy-with-parent", "error",
    "close", "Error printing file: ", res$error$message)
  gSignalConnect(error_dialog, "response", gtkWidgetDestroy)
  error_dialog$show()
} else if (res[[1]] == "apply")
  settings = op$getPrintSettings()
}
  
Note that \code{\link{gtkPrintOperationRun}} can only be called once on a
given \code{\link{GtkPrintOperation}}.
  Since 2.10}
\value{
A list containing the following elements:
\item{retval}{[\code{\link{GtkPrintOperationResult}}] the result of the print operation. A return value of
\code{GTK_PRINT_OPERATION_RESULT_APPLY} indicates that the printing was
completed successfully. In this case, it is a good idea to obtain
the used print settings with \code{\link{gtkPrintOperationGetPrintSettings}}
and store them for reuse with the next print operation. A value of
\code{GTK_PRINT_OPERATION_RESULT_IN_PROGRESS} means the operation is running
asynchronously, and will emit the \verb{"done"} signal when
done.}
\item{\verb{error}}{Return location for errors, or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
