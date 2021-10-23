\alias{GtkPrintSettings}
\alias{GtkPageRange}
\alias{gtkPrintSettings}
\alias{GtkPrintSettingsFunc}
\alias{GtkPageOrientation}
\alias{GtkPrintDuplex}
\alias{GtkPrintQuality}
\alias{GtkNumberUpLayout}
\alias{GtkPrintPages}
\alias{GtkPageSet}
\name{GtkPrintSettings}
\title{GtkPrintSettings}
\description{Stores print settings}
\section{Methods and Functions}{
\code{\link{gtkPrintSettingsNew}()}\cr
\code{\link{gtkPrintSettingsCopy}(object)}\cr
\code{\link{gtkPrintSettingsHasKey}(object, key)}\cr
\code{\link{gtkPrintSettingsGet}(object, key)}\cr
\code{\link{gtkPrintSettingsSet}(object, key, value)}\cr
\code{\link{gtkPrintSettingsUnset}(object, key)}\cr
\code{\link{gtkPrintSettingsForeach}(object, func, user.data = NULL)}\cr
\code{\link{gtkPrintSettingsGetBool}(object, key)}\cr
\code{\link{gtkPrintSettingsSetBool}(object, key, value)}\cr
\code{\link{gtkPrintSettingsGetDouble}(object, key)}\cr
\code{\link{gtkPrintSettingsGetDoubleWithDefault}(object, key, def)}\cr
\code{\link{gtkPrintSettingsSetDouble}(object, key, value)}\cr
\code{\link{gtkPrintSettingsGetLength}(object, key, unit)}\cr
\code{\link{gtkPrintSettingsSetLength}(object, key, value, unit)}\cr
\code{\link{gtkPrintSettingsGetInt}(object, key)}\cr
\code{\link{gtkPrintSettingsGetIntWithDefault}(object, key, def)}\cr
\code{\link{gtkPrintSettingsSetInt}(object, key, value)}\cr
\code{\link{gtkPrintSettingsGetPrinter}(object)}\cr
\code{\link{gtkPrintSettingsSetPrinter}(object, printer)}\cr
\code{\link{gtkPrintSettingsGetOrientation}(object)}\cr
\code{\link{gtkPrintSettingsSetOrientation}(object, orientation)}\cr
\code{\link{gtkPrintSettingsGetPaperSize}(object)}\cr
\code{\link{gtkPrintSettingsSetPaperSize}(object, paper.size)}\cr
\code{\link{gtkPrintSettingsGetPaperWidth}(object, unit)}\cr
\code{\link{gtkPrintSettingsSetPaperWidth}(object, width, unit)}\cr
\code{\link{gtkPrintSettingsGetPaperHeight}(object, unit)}\cr
\code{\link{gtkPrintSettingsSetPaperHeight}(object, height, unit)}\cr
\code{\link{gtkPrintSettingsGetUseColor}(object)}\cr
\code{\link{gtkPrintSettingsSetUseColor}(object, use.color)}\cr
\code{\link{gtkPrintSettingsGetCollate}(object)}\cr
\code{\link{gtkPrintSettingsSetCollate}(object, collate)}\cr
\code{\link{gtkPrintSettingsGetReverse}(object)}\cr
\code{\link{gtkPrintSettingsSetReverse}(object, reverse)}\cr
\code{\link{gtkPrintSettingsGetDuplex}(object)}\cr
\code{\link{gtkPrintSettingsSetDuplex}(object, duplex)}\cr
\code{\link{gtkPrintSettingsGetQuality}(object)}\cr
\code{\link{gtkPrintSettingsSetQuality}(object, quality)}\cr
\code{\link{gtkPrintSettingsGetNCopies}(object)}\cr
\code{\link{gtkPrintSettingsSetNCopies}(object, num.copies)}\cr
\code{\link{gtkPrintSettingsGetNumberUp}(object)}\cr
\code{\link{gtkPrintSettingsSetNumberUp}(object, number.up)}\cr
\code{\link{gtkPrintSettingsGetNumberUpLayout}(object)}\cr
\code{\link{gtkPrintSettingsSetNumberUpLayout}(object, number.up.layout)}\cr
\code{\link{gtkPrintSettingsGetResolution}(object)}\cr
\code{\link{gtkPrintSettingsSetResolution}(object, resolution)}\cr
\code{\link{gtkPrintSettingsSetResolutionXy}(object, resolution.x, resolution.y)}\cr
\code{\link{gtkPrintSettingsGetResolutionX}(object)}\cr
\code{\link{gtkPrintSettingsGetResolutionY}(object)}\cr
\code{\link{gtkPrintSettingsGetPrinterLpi}(object)}\cr
\code{\link{gtkPrintSettingsSetPrinterLpi}(object, lpi)}\cr
\code{\link{gtkPrintSettingsGetScale}(object)}\cr
\code{\link{gtkPrintSettingsSetScale}(object, scale)}\cr
\code{\link{gtkPrintSettingsGetPrintPages}(object)}\cr
\code{\link{gtkPrintSettingsSetPrintPages}(object, pages)}\cr
\code{\link{gtkPrintSettingsGetPageRanges}(object, num.ranges)}\cr
\code{\link{gtkPrintSettingsSetPageRanges}(object, page.ranges, num.ranges)}\cr
\code{\link{gtkPrintSettingsGetPageSet}(object)}\cr
\code{\link{gtkPrintSettingsSetPageSet}(object, page.set)}\cr
\code{\link{gtkPrintSettingsGetDefaultSource}(object)}\cr
\code{\link{gtkPrintSettingsSetDefaultSource}(object, default.source)}\cr
\code{\link{gtkPrintSettingsGetMediaType}(object)}\cr
\code{\link{gtkPrintSettingsSetMediaType}(object, media.type)}\cr
\code{\link{gtkPrintSettingsGetDither}(object)}\cr
\code{\link{gtkPrintSettingsSetDither}(object, dither)}\cr
\code{\link{gtkPrintSettingsGetFinishings}(object)}\cr
\code{\link{gtkPrintSettingsSetFinishings}(object, finishings)}\cr
\code{\link{gtkPrintSettingsGetOutputBin}(object)}\cr
\code{\link{gtkPrintSettingsSetOutputBin}(object, output.bin)}\cr
\code{\link{gtkPrintSettingsNewFromFile}(file.name, .errwarn = TRUE)}\cr
\code{\link{gtkPrintSettingsNewFromKeyFile}(key.file, group.name, .errwarn = TRUE)}\cr
\code{\link{gtkPrintSettingsLoadFile}(object, file.name, .errwarn = TRUE)}\cr
\code{\link{gtkPrintSettingsLoadKeyFile}(object, key.file, group.name, .errwarn = TRUE)}\cr
\code{\link{gtkPrintSettingsToFile}(object, file.name, .errwarn = TRUE)}\cr
\code{\link{gtkPrintSettingsToKeyFile}(object, key.file, group.name)}\cr
\code{gtkPrintSettings()}
}
\section{Hierarchy}{\preformatted{GObject
   +----GtkPrintSettings}}
\section{Detailed Description}{A GtkPrintSettings object represents the settings of a print dialog in
a system-independent way. The main use for this object is that once
you've printed you can get a settings object that represents the settings
the user chose, and the next time you print you can pass that object in so
that the user doesn't have to re-set all his settings.
  
Its also possible to enumerate the settings so that you can easily save
the settings for the next time your app runs, or even store them in a
document. The predefined keys try to use shared values as much as possible
so that moving such a document between systems still works.
  
Printing support was added in GTK+ 2.10.}
\section{Structures}{\describe{
\item{\verb{GtkPrintSettings}}{
\emph{undocumented
}

}
\item{\verb{GtkPageRange}}{
\emph{undocumented
}
\strong{\verb{GtkPageRange} is a \link{transparent-type}.}

\describe{
\item{\verb{start}}{[integer] }
\item{\verb{end}}{[integer] }
}

}
}}
\section{Convenient Construction}{\code{gtkPrintSettings} is the equivalent of \code{\link{gtkPrintSettingsNew}}.}
\section{Enums and Flags}{\describe{
\item{\verb{GtkPageOrientation}}{
\emph{undocumented
}

\describe{
\item{\verb{portrait}}{\emph{undocumented
}}
\item{\verb{landscape}}{\emph{undocumented
}}
\item{\verb{reverse-portrait}}{\emph{undocumented
}}
\item{\verb{reverse-landscape}}{\emph{undocumented
}}
}

}
\item{\verb{GtkPrintDuplex}}{
\emph{undocumented
}

\describe{
\item{\verb{simplex}}{\emph{undocumented
}}
\item{\verb{horizontal}}{\emph{undocumented
}}
\item{\verb{vertical}}{\emph{undocumented
}}
}

}
\item{\verb{GtkPrintQuality}}{
\emph{undocumented
}

\describe{
\item{\verb{low}}{\emph{undocumented
}}
\item{\verb{normal}}{\emph{undocumented
}}
\item{\verb{high}}{\emph{undocumented
}}
\item{\verb{draft}}{\emph{undocumented
}}
}

}
\item{\verb{GtkNumberUpLayout}}{
Used to determine the layout of pages on a sheet when printing
multiple pages per sheet.

\describe{
\item{\verb{left-to-right-top-to-bottom}}{\emph{undocumented
}}
\item{\verb{left-to-right-bottom-to-top}}{\emph{undocumented
}}
\item{\verb{right-to-left-top-to-bottom}}{\emph{undocumented
}}
\item{\verb{right-to-left-bottom-to-top}}{\emph{undocumented
}}
\item{\verb{top-to-bottom-left-to-right}}{\emph{undocumented
}}
\item{\verb{top-to-bottom-right-to-left}}{\emph{undocumented
}}
\item{\verb{bottom-to-top-left-to-right}}{\emph{undocumented
}}
\item{\verb{bottom-to-top-right-to-left}}{\emph{undocumented
}}
}

}
\item{\verb{GtkPrintPages}}{
\emph{undocumented
}

\describe{
\item{\verb{all}}{\emph{undocumented
}}
\item{\verb{current}}{\emph{undocumented
}}
\item{\verb{ranges}}{\emph{undocumented
}}
}

}
\item{\verb{GtkPageSet}}{
\emph{undocumented
}

\describe{
\item{\verb{all}}{\emph{undocumented
}}
\item{\verb{even}}{\emph{undocumented
}}
\item{\verb{odd}}{\emph{undocumented
}}
}

}
}}
\section{User Functions}{\describe{\item{\code{GtkPrintSettingsFunc()}}{
\emph{undocumented
}




}}}
\references{\url{https://developer-old.gnome.org/gtk2/stable/GtkPrintSettings.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
