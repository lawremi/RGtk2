\alias{gtkPrintRunPageSetupDialog}
\name{gtkPrintRunPageSetupDialog}
\title{gtkPrintRunPageSetupDialog}
\description{Runs a page setup dialog, letting the user modify the values from 
\code{page.setup}. If the user cancels the dialog, the returned \verb{\link{GtkPageSetup}} 
is identical to the passed in \code{page.setup}, otherwise it contains the 
modifications done in the dialog.}
\usage{gtkPrintRunPageSetupDialog(parent, page.setup = NULL, settings)}
\arguments{
\item{\verb{parent}}{[\verb{\link{GtkWindow}}]  transient parent, or \code{NULL}}
\item{\verb{page.setup}}{[\verb{\link{GtkPageSetup}}]  an existing \verb{\link{GtkPageSetup}}, or \code{NULL}}
\item{\verb{settings}}{[\verb{\link{GtkPrintSettings}}]  a \verb{\link{GtkPrintSettings}}}
}
\details{Note that this function may use a recursive mainloop to show the page
setup dialog. See \code{\link{gtkPrintRunPageSetupDialogAsync}} if this is 
a problem.  

  Since  2.10}
\value{[\verb{\link{GtkPageSetup}}]  a new \verb{\link{GtkPageSetup}}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
