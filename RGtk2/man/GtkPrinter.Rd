\alias{GtkPrinter}
\alias{GtkPrinterFunc}
\name{GtkPrinter}
\title{GtkPrinter}
\description{Represents a printer}
\section{Hierarchy}{\preformatted{
  \link{GObject}
   +----GtkPrinter
  \link{GObject}
   +----GtkPrintBackend
}}
\section{Detailed Description}{A \code{GtkPrinter} object represents a printer. You only need to 
deal directly with printers if you use the non-portable 
\code{GtkPrintUnixDialog} API. 
  \code{GtkPrinter}  \code{GtkPrinter}  \code{GtkPrintUnixDialog}  \code{GtkPrintUnixDialog}  
A \code{GtkPrinter} allows to get status information about the printer, 
such as its description, its location, the number of queued jobs, 
etc. Most importantly, a \code{GtkPrinter} object can be used to create
a \code{GtkPrintJob} object, which lets you print to the printer.
  \code{GtkPrinter}  \code{GtkPrinter}  \code{GtkPrinter}  \code{GtkPrinter}  \code{GtkPrintJob}  \code{GtkPrintJob}  
Printing support was added in GTK+ 2.10.}
\section{User Functions}{\describe{\item{\code{GtkPrinterFunc(printer, data)}}{
The type of function passed to \code{gtk\Enumerate\Printers()}.
Note that you need to ref \code{printer}, if you want to keep
a reference to it after the function has returned.

\describe{
\item{\code{printer}}{[GtkPrinter] a \code{GtkPrinter}}
\item{\code{data}}{[R object] user data passed to \code{gtk\Enumerate\Printers()}}
}

}}}
\section{Signals}{\describe{\item{\code{details-acquired(printer, success, user.data)}}{
Gets emitted in response to a request for detailed information
about a printer from the print backend. The \code{success} parameter
indicates if the information was actually obtained.  

  Since  2.10

\describe{
\item{\code{printer}}{[GtkPrinter]  the \code{GtkPrinter} on which the signal is emitted}
\item{\code{success}}{[logical]  \code{TRUE} if the details were successfully acquired}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}}}
\section{Properties}{\describe{
\item{\code{accepts-pdf} [logical : Read / Write / Construct Only]}{

TRUE if this printer can accept PDF.  Default value: TRUE

}
\item{\code{accepts-ps} [logical : Read / Write / Construct Only]}{

TRUE if this printer can accept PostScript.  Default value: TRUE

}
\item{\code{backend} [GtkPrintBackend : Read / Write / Construct Only]}{

Backend for the printer.

}
\item{\code{icon-name} [character : Read]}{

The icon name to use for the printer.  Default value: NULL

}
\item{\code{is-virtual} [logical : Read / Write / Construct Only]}{

FALSE if this represents a real hardware printer.  Default value: FALSE

}
\item{\code{job-count} [integer : Read]}{

Number of jobs queued in the printer.  Allowed values: >= 0  Default value: 0

}
\item{\code{location} [character : Read]}{

The location of the printer.  Default value: NULL

}
\item{\code{name} [character : Read / Write / Construct Only]}{

Name of the printer.  Default value: NULL

}
\item{\code{state-message} [character : Read]}{

String giving the current state of the printer.  Default value: NULL

}
}}
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/GtkPrinter.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
