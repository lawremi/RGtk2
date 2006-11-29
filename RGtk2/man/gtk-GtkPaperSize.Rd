\alias{gtk-GtkPaperSize}
\alias{GtkPaperSize}
\alias{GtkUnit}
\name{gtk-GtkPaperSize}
\title{GtkPaperSize}
\description{Support for named paper sizes}
\section{Methods and Functions}{
\code{\link{gtkPaperSizeNew}(name = NULL)}\cr
\code{\link{gtkPaperSizeNewFromPpd}(ppd.name, ppd.display.name, width, height)}\cr
\code{\link{gtkPaperSizeNewCustom}(name, display.name, width, height, unit)}\cr
\code{\link{gtkPaperSizeCopy}(object)}\cr
\code{\link{gtkPaperSizeFree}(object)}\cr
\code{\link{gtkPaperSizeIsEqual}(object, size2)}\cr
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
}
\section{Detailed Description}{GtkPaperSize handles paper sizes. It uses the standard called 
"PWG 5101.1-2002 PWG: Standard for Media Standardized Names" 

to name the paper sizes (and to get the data for the page sizes).
In addition to standard paper sizes, GtkPaperSize allows to
construct custom paper sizes with arbitrary dimensions.
  
The \code{\link{GtkPaperSize}} object stores not only the dimensions (width
and height) of a paper size and its name, it also provides
default print margins.
  
Printing support has been added in GTK+ 2.10.}
\section{Structures}{\describe{\item{\code{GtkPaperSize}}{
\emph{undocumented
}

}}}
\section{Enums and Flags}{\describe{\item{\code{GtkUnit}}{
\emph{undocumented
}

\describe{
\item{\code{pixel}}{\emph{undocumented
}}
\item{\code{points}}{\emph{undocumented
}}
\item{\code{inch}}{\emph{undocumented
}}
\item{\code{mm}}{\emph{undocumented
}}
}

}}}
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/gtk-GtkPaperSize.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\seealso{\code{\link{GtkPageSetup}}}
\keyword{internal}
