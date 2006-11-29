\alias{GtkPrintJob}
\alias{GtkPrintJobCompleteFunc}
\name{GtkPrintJob}
\title{GtkPrintJob}
\description{Represents a print job}
\section{Hierarchy}{\preformatted{  \link{GObject}
   +----GtkPrintJob}}
\section{Detailed Description}{A \code{GtkPrintJob} object represents a job that is sent to a
printer. You only need to deal directly with print jobs if 
you use the non-portable \code{GtkPrintUnixDialog} API. 
  
Use \code{gtk\Print\Job\Get\Surface()} to obtain the cairo surface
onto which the pages must be drawn. Use \code{gtk\Print\Job\Send()}
to send the finished job to the printer. If you don't use cairo
\code{GtkPrintJob} also supports printing of manually generated postscript,
via \code{gtk\Print\Job\Set\Source\File()}.

  
Printing support was added in GTK+ 2.10.}
\section{User Functions}{\describe{\item{\code{GtkPrintJobCompleteFunc(print.job, user.data, error)}}{
The type of callback that is passed to \code{gtk\Print\Job\Send()}.
It is called when the print job has been completely sent.

\describe{
\item{\code{print.job}}{[GtkPrintJob] the \code{GtkPrintJob}}
\item{\code{user.data}}{[R object] user data that has been passed to \code{gtk\Print\Job\Send()}}
\item{\code{error}}{[\code{\link{GError}}] a \code{\link{GError}} that contains error information if the sending
  of the print job failed, otherwise \code{NULL}}
}

}}}
\section{Signals}{\describe{\item{\code{status-changed(job, user.data)}}{
Gets emitted when the status of a job changes. The signal handler
can use \code{gtk\Print\Job\Get\Status()} to obtain the new status.  

  Since  2.10

\describe{
\item{\code{job}}{[GtkPrintJob]  the \code{GtkPrintJob} object on which the signal was emitted}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}}}
\section{Properties}{\describe{
\item{\code{page-setup} [\code{\link{GtkPageSetup}} : Read / Write / Construct Only]}{

Page Setup.

}
\item{\code{printer} [\code{\link{GtkPrinter}} : Read / Write / Construct Only]}{

Printer to print the job to.

}
\item{\code{settings} [\code{\link{GtkPrintSettings}} : Read / Write / Construct Only]}{

Printer settings.

}
\item{\code{title} [character : Read / Write / Construct Only]}{

Title of the print job.  Default value: NULL

}
\item{\code{track-print-status} [logical : Read / Write]}{

TRUE if the print job will continue to emit status-changed signals after the print data has been sent to the printer or print server.  Default value: FALSE

}
}}
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/GtkPrintJob.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
