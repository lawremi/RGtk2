\alias{gtkPrintRunPageSetupDialog}
\name{gtkPrintRunPageSetupDialog}
\title{gtkPrintRunPageSetupDialog}
\description{Runs a page setup dialog, letting the user modify the values from 
\code{page.setup}. If the user cancels the dialog, the returned \code{\link{GtkPageSetup}} 
is identical to the passed in \code{page.setup}, otherwise it contains the 
modifications done in the dialog.}
\usage{gtkPrintRunPageSetupDialog(parent, page.setup = NULL, settings)}
\arguments{
\item{\code{parent}}{[\code{\link{GtkWindow}}]  transient parent, or \code{NULL}}
\item{\code{page.setup}}{[\code{\link{GtkPageSetup}}]  an existing \code{\link{GtkPageSetup}}, or \code{NULL}}
\item{\code{settings}}{[\code{\link{GtkPrintSettings}}]  a \code{\link{GtkPrintSettings}}}
}
\details{Note that this function may use a recursive mainloop to show the page
setup dialog. See \code{\link{gtkPrintRunPageSetupDialogAsync}} if this is 
a problem.  

  Since  2.10}
\value{[\code{\link{GtkPageSetup}}]  a new \code{\link{GtkPageSetup}}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
