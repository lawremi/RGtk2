\alias{gtkPrintRunPageSetupDialogAsync}
\name{gtkPrintRunPageSetupDialogAsync}
\title{gtkPrintRunPageSetupDialogAsync}
\description{Runs a page setup dialog, letting the user modify the values from \code{page.setup}. }
\usage{gtkPrintRunPageSetupDialogAsync(parent, page.setup, settings, done.cb, data)}
\arguments{
\item{\code{parent}}{[\code{\link{GtkWindow}}]  transient parent, or \code{NULL}}
\item{\code{page.setup}}{[\code{\link{GtkPageSetup}}]  an existing \code{\link{GtkPageSetup}}, or \code{NULL}}
\item{\code{settings}}{[\code{\link{GtkPrintSettings}}]  a \code{\link{GtkPrintSettings}}}
\item{\code{done.cb}}{[\code{\link{GtkPageSetupDoneFunc}}]  a function to call when the user saves the modified page setup}
\item{\code{data}}{[R object]  user data to pass to \code{done.cb}}
}
\details{In contrast to \code{\link{gtkPrintRunPageSetupDialog}}, this function  returns after 
showing the page setup dialog on platforms that support this, and calls \code{done.cb} 
from a signal handler for the ::response signal of the dialog.  

  Since  2.10}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
