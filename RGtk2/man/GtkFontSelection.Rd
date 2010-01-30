\alias{GtkFontSelection}
\alias{gtkFontSelection}
\name{GtkFontSelection}
\title{GtkFontSelection}
\description{A widget for selecting fonts}
\section{Methods and Functions}{
\code{\link{gtkFontSelectionNew}(show = TRUE)}\cr
\code{\link{gtkFontSelectionGetFont}(object)}\cr
\code{\link{gtkFontSelectionGetFontName}(object)}\cr
\code{\link{gtkFontSelectionSetFontName}(object, fontname)}\cr
\code{\link{gtkFontSelectionGetPreviewText}(object)}\cr
\code{\link{gtkFontSelectionSetPreviewText}(object, text)}\cr
\code{gtkFontSelection(show = TRUE)}
}
\section{Hierarchy}{\preformatted{GObject
   +----GInitiallyUnowned
         +----GtkObject
               +----GtkWidget
                     +----GtkContainer
                           +----GtkBox
                                 +----GtkVBox
                                       +----GtkFontSelection}}
\section{Interfaces}{GtkFontSelection implements
 AtkImplementorIface and  \verb{\link{GtkBuildable}}.}
\section{Detailed Description}{The \verb{\link{GtkFontSelection}} widget lists the available fonts, styles and sizes,
allowing the user to select a font.
It is used in the \verb{\link{GtkFontSelectionDialog}} widget to provide a dialog box for
selecting fonts.
  
To set the font which is initially selected, use
\code{\link{gtkFontSelectionSetFontName}}.
  
To get the selected font use \code{\link{gtkFontSelectionGetFontName}}.
  
To change the text which is shown in the preview area, use
\code{\link{gtkFontSelectionSetPreviewText}}.}
\section{Structures}{\describe{\item{\verb{GtkFontSelection}}{
The \verb{\link{GtkFontSelection}} struct contains private data only, and should
only be accessed using the functions below.

}}}
\section{Convenient Construction}{\code{gtkFontSelection} is the equivalent of \code{\link{gtkFontSelectionNew}}.}
\section{Properties}{\describe{
\item{\verb{font} [\verb{\link{GdkFont}} : *              : Read]}{

The GdkFont that is currently selected.

}
\item{\verb{font-name} [character : *                : Read / Write]}{

The X string that represents this font.  Default value: NULL

}
\item{\verb{preview-text} [character : *                : Read / Write]}{

The text to display in order to demonstrate the selected font.  Default value: "abcdefghijk ABCDEFGHIJK"

}
}}
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/GtkFontSelection.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
