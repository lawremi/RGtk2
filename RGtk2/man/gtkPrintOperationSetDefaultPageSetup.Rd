\alias{gtkPrintOperationSetDefaultPageSetup}
\name{gtkPrintOperationSetDefaultPageSetup}
\title{gtkPrintOperationSetDefaultPageSetup}
\description{Makes \code{default.page.setup} the default page setup for \code{op}.}
\usage{gtkPrintOperationSetDefaultPageSetup(object, default.page.setup = NULL)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkPrintOperation}}}
\item{\verb{default.page.setup}}{a \code{\link{GtkPageSetup}}, or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
}
\details{This page setup will be used by \code{\link{gtkPrintOperationRun}},
but it can be overridden on a per-page basis by connecting
to the \verb{"request-page-setup"} signal.
  Since 2.10}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
