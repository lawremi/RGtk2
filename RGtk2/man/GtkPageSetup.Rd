\alias{GtkPageSetup}
\alias{gtkPageSetup}
\name{GtkPageSetup}
\title{GtkPageSetup}
\description{Stores page setup information}
\section{Methods and Functions}{
\code{\link{gtkPageSetupNew}()}\cr
\code{\link{gtkPageSetupCopy}(object)}\cr
\code{\link{gtkPageSetupGetOrientation}(object)}\cr
\code{\link{gtkPageSetupSetOrientation}(object, orientation)}\cr
\code{\link{gtkPageSetupGetPaperSize}(object)}\cr
\code{\link{gtkPageSetupSetPaperSize}(object, size)}\cr
\code{\link{gtkPageSetupGetTopMargin}(object, unit)}\cr
\code{\link{gtkPageSetupSetTopMargin}(object, margin, unit)}\cr
\code{\link{gtkPageSetupGetBottomMargin}(object, unit)}\cr
\code{\link{gtkPageSetupSetBottomMargin}(object, margin, unit)}\cr
\code{\link{gtkPageSetupGetLeftMargin}(object, unit)}\cr
\code{\link{gtkPageSetupSetLeftMargin}(object, margin, unit)}\cr
\code{\link{gtkPageSetupGetRightMargin}(object, unit)}\cr
\code{\link{gtkPageSetupSetRightMargin}(object, margin, unit)}\cr
\code{\link{gtkPageSetupSetPaperSizeAndDefaultMargins}(object, size)}\cr
\code{\link{gtkPageSetupGetPaperWidth}(object, unit)}\cr
\code{\link{gtkPageSetupGetPaperHeight}(object, unit)}\cr
\code{\link{gtkPageSetupGetPageWidth}(object, unit)}\cr
\code{\link{gtkPageSetupGetPageHeight}(object, unit)}\cr
\code{\link{gtkPageSetupNewFromFile}(file.name, .errwarn = TRUE)}\cr
\code{\link{gtkPageSetupNewFromKeyFile}(key.file, group.name, .errwarn = TRUE)}\cr
\code{\link{gtkPageSetupLoadFile}(object, file.name, .errwarn = TRUE)}\cr
\code{\link{gtkPageSetupLoadKeyFile}(object, key.file, group.name, .errwarn = TRUE)}\cr
\code{\link{gtkPageSetupToFile}(object, file.name, .errwarn = TRUE)}\cr
\code{\link{gtkPageSetupToKeyFile}(object, key.file, group.name)}\cr
\code{gtkPageSetup()}
}
\section{Hierarchy}{\preformatted{GObject
   +----GtkPageSetup}}
\section{Detailed Description}{A GtkPageSetup object stores the page size, orientation and margins.
The idea is that you can get one of these from the page setup dialog
and then pass it to the \code{\link{GtkPrintOperation}} when printing.
The benefit of splitting this out of the \code{\link{GtkPrintSettings}} is that
these affect the actual layout of the page, and thus need to be set
long before user prints.
  
The margins specified in this object are the "print margins", i.e. the
parts of the page that the printer cannot print on. These are different
from the layout margins that a word processor uses; they are typically
used to determine the \emph{minimal} size for the layout
margins.
  
To obtain a \code{\link{GtkPageSetup}} use \code{\link{gtkPageSetupNew}}
to get the defaults, or use \code{\link{gtkPrintRunPageSetupDialog}} to show
the page setup dialog and receive the resulting page setup.
  
 \emph{A page setup dialog}
\preformatted{
do_page_setup <- function()
{
  if (is.null(settings))
    settings <- gtkPrintSettings()

  new_page_setup <- gtkPrintRunPageSetupDialog(main_window, page_setup,
                                               settings)

  page_setup <- new_page_setup
}

}  
Printing support was added in GTK+ 2.10.}
\section{Structures}{\describe{\item{\verb{GtkPageSetup}}{
\emph{undocumented
}

}}}
\section{Convenient Construction}{\code{gtkPageSetup} is the equivalent of \code{\link{gtkPageSetupNew}}.}
\references{\url{https://developer-old.gnome.org/gtk2/stable/GtkPageSetup.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
