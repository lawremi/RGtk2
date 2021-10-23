\alias{GtkPaperSize}
\alias{GtkUnit}
\name{GtkPaperSize}
\title{GtkPaperSize}
\description{Support for named paper sizes}
\section{Methods and Functions}{
\code{\link{gtkPaperSizeNew}(name = NULL)}\cr
\code{\link{gtkPaperSizeNewFromPpd}(ppd.name, ppd.display.name, width, height)}\cr
\code{\link{gtkPaperSizeNewCustom}(name, display.name, width, height, unit)}\cr
\code{\link{gtkPaperSizeCopy}(object)}\cr
\code{\link{gtkPaperSizeIsEqual}(object, size2)}\cr
\code{\link{gtkPaperSizeGetPaperSizes}(include.custom)}\cr
\code{\link{gtkPaperSizeGetName}(object)}\cr
\code{\link{gtkPaperSizeGetDisplayName}(object)}\cr
\code{\link{gtkPaperSizeGetPpdName}(object)}\cr
\code{\link{gtkPaperSizeGetWidth}(object, unit)}\cr
\code{\link{gtkPaperSizeGetHeight}(object, unit)}\cr
\code{\link{gtkPaperSizeIsCustom}(object)}\cr
\code{\link{gtkPaperSizeSetSize}(object, width, height, unit)}\cr
\code{\link{gtkPaperSizeGetDefaultTopMargin}(object, unit)}\cr
\code{\link{gtkPaperSizeGetDefaultBottomMargin}(object, unit)}\cr
\code{\link{gtkPaperSizeGetDefaultLeftMargin}(object, unit)}\cr
\code{\link{gtkPaperSizeGetDefaultRightMargin}(object, unit)}\cr
\code{\link{gtkPaperSizeGetDefault}()}\cr
\code{\link{gtkPaperSizeNewFromKeyFile}(key.file, group.name, .errwarn = TRUE)}\cr
\code{\link{gtkPaperSizeToKeyFile}(object, key.file, group.name)}\cr
}
\section{Hierarchy}{\preformatted{GBoxed
   +----GtkPaperSize}}
\section{Detailed Description}{GtkPaperSize handles paper sizes. It uses the standard called
"PWG 5101.1-2002 PWG: Standard for Media Standardized Names"

to name the paper sizes (and to get the data for the page sizes).
In addition to standard paper sizes, GtkPaperSize allows to
construct custom paper sizes with arbitrary dimensions.
  
The \code{\link{GtkPaperSize}} object stores not only the dimensions (width
and height) of a paper size and its name, it also provides
default print margins.
  
Printing support has been added in GTK+ 2.10.}
\section{Structures}{\describe{\item{\verb{GtkPaperSize}}{
\emph{undocumented
}

}}}
\section{Enums and Flags}{\describe{\item{\verb{GtkUnit}}{
\emph{undocumented
}

\describe{
\item{\verb{pixel}}{\emph{undocumented
}}
\item{\verb{points}}{\emph{undocumented
}}
\item{\verb{inch}}{\emph{undocumented
}}
\item{\verb{mm}}{\emph{undocumented
}}
}

}}}
\references{\url{https://developer-old.gnome.org/gtk2/stable/GtkPaperSize.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\seealso{\code{\link{GtkPageSetup}}}
\keyword{internal}
