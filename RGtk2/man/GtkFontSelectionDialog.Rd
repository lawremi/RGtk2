\alias{GtkFontSelectionDialog}
\alias{gtkFontSelectionDialog}
\name{GtkFontSelectionDialog}
\title{GtkFontSelectionDialog}
\description{A dialog box for selecting fonts}
\section{Methods and Functions}{
\code{\link{gtkFontSelectionDialogNew}(title = NULL, show = TRUE)}\cr
\code{\link{gtkFontSelectionDialogGetFont}(object)}\cr
\code{\link{gtkFontSelectionDialogGetFontName}(object)}\cr
\code{\link{gtkFontSelectionDialogSetFontName}(object, fontname)}\cr
\code{\link{gtkFontSelectionDialogGetPreviewText}(object)}\cr
\code{\link{gtkFontSelectionDialogSetPreviewText}(object, text)}\cr
\code{gtkFontSelectionDialog(title = NULL, show = TRUE)}
}
\section{Hierarchy}{\preformatted{  \link{GObject}
   +----GInitiallyUnowned
         +----\link{GtkObject}
               +----\link{GtkWidget}
                     +----\link{GtkContainer}
                           +----\link{GtkBin}
                                 +----\link{GtkWindow}
                                       +----\link{GtkDialog}
                                             +----GtkFontSelectionDialog}}
\section{Interfaces}{GtkFontSelectionDialog implements
 \code{\link{GtkBuildable}} and  AtkImplementorIface.}
\section{Detailed Description}{The \code{\link{GtkFontSelectionDialog}} widget is a dialog box for selecting a font.
  
To set the font which is initially selected, use
\code{\link{gtkFontSelectionDialogSetFontName}}.
  
To get the selected font use \code{\link{gtkFontSelectionDialogGetFontName}}.
  
To change the text which is shown in the preview area, use
\code{\link{gtkFontSelectionDialogSetPreviewText}}.}
\section{GtkFontSelectionDialog as GtkBuildable}{The GtkFontSelectionDialog implementation of the GtkBuildable interface
exposes the embedded \code{\link{GtkFontSelection}} as internal child with the
name "font\_selection". It also exposes the buttons with the names
"ok\_button", "cancel\_button" and "apply\_button".}
\section{Structures}{\describe{\item{\code{GtkFontSelectionDialog}}{
\emph{undocumented
}

\describe{
\item{\code{okButton}}{[\code{\link{GtkWidget}}] The OK button of the dialog}
\item{\code{applyButton}}{[\code{\link{GtkWidget}}] The Apply button of the dialog. This button is hidden
by default but you can show/hide it}
\item{\code{cancelButton}}{[\code{\link{GtkWidget}}] The Cancel button of the dialog}
}

}}}
\section{Convenient Construction}{\code{gtkFontSelectionDialog} is the equivalent of \code{\link{gtkFontSelectionDialogNew}}.}
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/GtkFontSelectionDialog.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
