\alias{gtkPrintRunPageSetupDialogAsync}
\name{gtkPrintRunPageSetupDialogAsync}
\title{gtkPrintRunPageSetupDialogAsync}
\description{Runs a page setup dialog, letting the user modify the values from \code{page.setup}. }
\usage{gtkPrintRunPageSetupDialogAsync(parent, page.setup, settings, 
    done.cb, data)}
\arguments{
\item{\verb{parent}}{transient parent, or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
\item{\verb{page.setup}}{an existing \code{\link{GtkPageSetup}}, or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
\item{\verb{settings}}{a \code{\link{GtkPrintSettings}}}
\item{\verb{done.cb}}{a function to call when the user saves the modified page setup}
\item{\verb{data}}{user data to pass to \code{done.cb}}
}
\details{In contrast to \code{\link{gtkPrintRunPageSetupDialog}}, this function  returns after 
showing the page setup dialog on platforms that support this, and calls \code{done.cb} 
from a signal handler for the ::response signal of the dialog.
  Since 2.10}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
