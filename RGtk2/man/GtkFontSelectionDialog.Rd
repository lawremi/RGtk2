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
\code{\link{gtkFontSelectionDialogGetApplyButton}(object)}\cr
\code{\link{gtkFontSelectionDialogGetApplyButton}(object)}\cr
\code{\link{gtkFontSelectionDialogGetCancelButton}(object)}\cr
\code{\link{gtkFontSelectionDialogGetOkButton}(object)}\cr
\code{gtkFontSelectionDialog(title = NULL, show = TRUE)}
}
\section{Hierarchy}{\preformatted{GObject
   +----GInitiallyUnowned
         +----GtkObject
               +----GtkWidget
                     +----GtkContainer
                           +----GtkBin
                                 +----GtkWindow
                                       +----GtkDialog
                                             +----GtkFontSelectionDialog}}
\section{Interfaces}{GtkFontSelectionDialog implements
 AtkImplementorIface and  \code{\link{GtkBuildable}}.}
\section{Detailed Description}{The \code{\link{GtkFontSelectionDialog}} widget is a dialog box for selecting a font.
  
To set the font which is initially selected, use
\code{\link{gtkFontSelectionDialogSetFontName}}.
  
To get the selected font use \code{\link{gtkFontSelectionDialogGetFontName}}.
  
To change the text which is shown in the preview area, use
\code{\link{gtkFontSelectionDialogSetPreviewText}}.}
\section{GtkFontSelectionDialog as GtkBuildable}{The GtkFontSelectionDialog implementation of the GtkBuildable interface
exposes the embedded \code{\link{GtkFontSelection}} as internal child with the
name "font_selection". It also exposes the buttons with the names
"ok_button", "cancel_button" and "apply_button".}
\section{Structures}{\describe{\item{\verb{GtkFontSelectionDialog}}{
\emph{undocumented
}

\describe{
\item{\verb{okButton}}{[\code{\link{GtkWidget}}] }
\item{\verb{applyButton}}{[\code{\link{GtkWidget}}] }
\item{\verb{cancelButton}}{[\code{\link{GtkWidget}}] }
}

}}}
\section{Convenient Construction}{\code{gtkFontSelectionDialog} is the equivalent of \code{\link{gtkFontSelectionDialogNew}}.}
\references{\url{https://developer-old.gnome.org/gtk2/stable/GtkFontSelectionDialog.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
