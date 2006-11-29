\alias{GtkPrintUnixDialog}
\name{GtkPrintUnixDialog}
\title{GtkPrintUnixDialog}
\description{A print dialog}
\section{Hierarchy}{\preformatted{  \link{GObject}
   +----GInitiallyUnowned
         +----\link{GtkObject}
               +----\link{GtkWidget}
                     +----\link{GtkContainer}
                           +----\link{GtkBin}
                                 +----\link{GtkWindow}
                                       +----\link{GtkDialog}
                                             +----GtkPrintUnixDialog}}
\section{Interfaces}{GtkPrintUnixDialog implements
 AtkImplementorIface.}
\section{Detailed Description}{GtkPrintUnixDialog implements a print dialog for platforms
which don't provide a native print dialog, like Unix. It can 
be used very much like any other GTK+ dialog, at the cost of 
the portability offered by the high-level printing API
  
In order to print something with \code{GtkPrintUnixDialog}, you need
to use \code{gtk\Print\Unix\Dialog\Get\Selected\Printer()} to obtain
a \code{\link{GtkPrinter}} object and use it to construct a \code{\link{GtkPrintJob}} using
\code{gtk\Print\Job\New()}.
  
\code{GtkPrintUnixDialog} uses the following response values:
\describe{
\item{\code{GTK_RESPONSE_OK}}{for the "Print" button}
\item{\code{GTK_RESPONSE_APPLY}}{for the "Preview" button}
\item{\code{GTK_RESPONSE_CANCEL}}{for the "Cancel" button}
}
  
Printing support was added in GTK+ 2.10.}
\section{Properties}{\describe{
\item{\code{current-page} [integer : Read / Write]}{

The current page in the document.  Allowed values: >= -1  Default value: -1

}
\item{\code{page-setup} [\code{\link{GtkPageSetup}} : Read / Write]}{

The GtkPageSetup to use.

}
\item{\code{print-settings} [\code{\link{GtkPrintSettings}} : Read / Write]}{

The GtkPrintSettings used for initializing the dialog.

}
\item{\code{selected-printer} [\code{\link{GtkPrinter}} : Read]}{

The GtkPrinter which is selected.

}
}}
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/GtkPrintUnixDialog.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\seealso{
\code{\link{GtkPageSetupUnixDialog}}
\code{\link{GtkPrinter}}
\code{\link{GtkPrintJob}}
}
\keyword{internal}
