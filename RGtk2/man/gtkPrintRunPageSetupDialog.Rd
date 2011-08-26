\alias{gtkPrintRunPageSetupDialog}
\name{gtkPrintRunPageSetupDialog}
\title{gtkPrintRunPageSetupDialog}
\description{Runs a page setup dialog, letting the user modify the values from
\code{page.setup}. If the user cancels the dialog, the returned \code{\link{GtkPageSetup}}
is identical to the passed in \code{page.setup}, otherwise it contains the 
modifications done in the dialog.}
\usage{gtkPrintRunPageSetupDialog(parent, page.setup = NULL, settings)}
\arguments{
\item{\verb{parent}}{transient parent. \emph{[  \acronym{allow-none}  ]}}
\item{\verb{page.setup}}{an existing \code{\link{GtkPageSetup}}. \emph{[  \acronym{allow-none}  ]}}
\item{\verb{settings}}{a \code{\link{GtkPrintSettings}}}
}
\details{Note that this function may use a recursive mainloop to show the page
setup dialog. See \code{\link{gtkPrintRunPageSetupDialogAsync}} if this is 
a problem.
  Since 2.10}
\value{[\code{\link{GtkPageSetup}}] a new \code{\link{GtkPageSetup}}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
