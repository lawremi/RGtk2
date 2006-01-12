\alias{GtkFontSelectionDialog}
\alias{gtkFontSelectionDialog}
\name{GtkFontSelectionDialog}
\title{GtkFontSelectionDialog}
\description{A dialog box for selecting fonts}
\usage{
\link{gtkFontSelectionDialogNew}(title = NULL, show = TRUE)
\link{gtkFontSelectionDialogGetFont}(object)
\link{gtkFontSelectionDialogGetFontName}(object)
\link{gtkFontSelectionDialogSetFontName}(object, fontname)
\link{gtkFontSelectionDialogGetPreviewText}(object)
\link{gtkFontSelectionDialogSetPreviewText}(object, text)
gtkFontSelectionDialog(title = NULL, show = TRUE)
}
\details{The \code{\link{GtkFontSelectionDialog}} widget is a dialog box for selecting a font.
  
To set the font which is initially selected, use
\code{\link{gtkFontSelectionDialogSetFontName}}.
  
To get the selected font use \code{\link{gtkFontSelectionDialogGetFont}}
or \code{\link{gtkFontSelectionDialogGetFontName}}.
  
To change the text which is shown in the preview area, use
\code{\link{gtkFontSelectionDialogSetPreviewText}}.}
\section{Hierarchy}{\preformatted{  \link{GObject}
   +----\link{GtkObject}
         +----\link{GtkWidget}
               +----\link{GtkContainer}
                     +----\link{GtkBin}
                           +----\link{GtkWindow}
                                 +----\link{GtkDialog}
                                       +----GtkFontSelectionDialog}}
\section{Structures}{\describe{\item{\code{GtkFontSelectionDialog}}{


\describe{
\item{\code{okButton}}{[\code{\link{GtkWidget}}] The OK button of the dialog}
\item{\code{applyButton}}{[\code{\link{GtkWidget}}] The Apply button of the dialog. This button is hidden
by default but you can show/hide it}
\item{\code{cancelButton}}{[\code{\link{GtkWidget}}] The Cancel button of the dialog}
}

}}}
\section{Convenient Construction}{\code{gtkFontSelectionDialog} is the equivalent of \code{\link{gtkFontSelectionDialogNew}}.}
\section{Interfaces}{GtkFontSelectionDialog implements
 AtkImplementorIface.}
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/GtkFontSelectionDialog.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
