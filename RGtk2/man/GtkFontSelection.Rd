\alias{GtkFontSelection}
\alias{gtkFontSelection}
\name{GtkFontSelection}
\title{GtkFontSelection}
\description{A widget for selecting fonts}
\usage{gtkFontSelection(show = TRUE)}
\section{Methods and Functions}{
\link{gtkFontSelectionNew}(show = TRUE)
\link{gtkFontSelectionGetFont}(object)
\link{gtkFontSelectionGetFontName}(object)
\link{gtkFontSelectionSetFontName}(object, fontname)
\link{gtkFontSelectionGetPreviewText}(object)
\link{gtkFontSelectionSetPreviewText}(object, text)
}
\section{Hierarchy}{\preformatted{  \link{GObject}
   +----\link{GtkObject}
         +----\link{GtkWidget}
               +----\link{GtkContainer}
                     +----\link{GtkBox}
                           +----\link{GtkVBox}
                                 +----GtkFontSelection}}
\section{Interfaces}{GtkFontSelection implements
 AtkImplementorIface.}
\section{Detailed Description}{The \code{\link{GtkFontSelection}} widget lists the available fonts, styles and sizes,
allowing the user to select a font.
It is used in the \code{\link{GtkFontSelectionDialog}} widget to provide a dialog box for
selecting fonts.
  
To set the font which is initially selected, use
\code{\link{gtkFontSelectionSetFontName}}.
  
To get the selected font use \code{\link{gtkFontSelectionGetFont}}
or \code{\link{gtkFontSelectionGetFontName}}.
  
To change the text which is shown in the preview area, use
\code{\link{gtkFontSelectionSetPreviewText}}.}
\section{Structures}{\describe{\item{\code{GtkFontSelection}}{
The \code{\link{GtkFontSelection}} struct contains private data only, and should
only be accessed using the functions below.

}}}
\section{Convenient Construction}{\code{gtkFontSelection} is the equivalent of \code{\link{gtkFontSelectionNew}}.}
\section{Properties}{\describe{
\item{\code{font} [\code{\link{GdkFont}} : Read]}{

The GdkFont that is currently selected.

}
\item{\code{font-name} [character : Read / Write]}{

The X string that represents this font.  Default value: NULL

}
\item{\code{preview-text} [character : Read / Write]}{

The text to display in order to demonstrate the selected font.  Default value: "abcdefghijk ABCDEFGHIJK"

}
}}
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/GtkFontSelection.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
