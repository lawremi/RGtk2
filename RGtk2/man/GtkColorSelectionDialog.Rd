\alias{GtkColorSelectionDialog}
\alias{gtkColorSelectionDialog}
\name{GtkColorSelectionDialog}
\title{GtkColorSelectionDialog}
\description{A standard dialog box for selecting a color}
\section{Methods and Functions}{
\code{\link{gtkColorSelectionDialogNew}(title = NULL, show = TRUE)}\cr
\code{gtkColorSelectionDialog(title = NULL, show = TRUE)}
}
\section{Hierarchy}{\preformatted{GObject
   +----GInitiallyUnowned
         +----GtkObject
               +----GtkWidget
                     +----GtkContainer
                           +----GtkBin
                                 +----GtkWindow
                                       +----GtkDialog
                                             +----GtkColorSelectionDialog}}
\section{Interfaces}{GtkColorSelectionDialog implements
 AtkImplementorIface and  \verb{\link{GtkBuildable}}.}
\section{Detailed Description}{The \verb{\link{GtkColorSelectionDialog}} provides a standard dialog which
allows the user to select a color much like the \verb{\link{GtkFileSelection}}
provides a standard dialog for file selection.}
\section{GtkColorSelectionDialog as GtkBuildable}{The GtkColorSelectionDialog implementation of the GtkBuildable interface
exposes the embedded \verb{\link{GtkColorSelection}} as internal child with the
name "color_selection". It also exposes the buttons with the names
"ok_button", "cancel_button" and "help_button".}
\section{Structures}{\describe{\item{\verb{GtkColorSelectionDialog}}{
The \verb{\link{GtkColorSelectionDialog}} struct contains the following fields.
(These fields should be considered read-only. They should never be set by
an application.)

\tabular{ll}{
\verb{\link{GtkWidget}}   *colorsel; \tab The   \verb{\link{GtkColorSelection}}   widget contained within the
dialog.  Use this widget and its   \code{\link{gtkColorSelectionGetCurrentColor}}  
function to gain access to the selected color.  Connect a handler 
for this widget's color_changed signal to be notified when the
color changes. \cr
\verb{\link{GtkWidget}}   *ok_button; \tab The OK button widget contained within the dialog.  
Connect a handler for the clicked event. \cr
\verb{\link{GtkWidget}}   *cancel_button; \tab The cancel button widget contained within the dialog.  
Connect a handler for the clicked event. \cr
\verb{\link{GtkWidget}}   *help_button; \tab The help button widget contained within the dialog.  
Connect a handler for the clicked event. \cr
}

}}}
\section{Convenient Construction}{\code{gtkColorSelectionDialog} is the equivalent of \code{\link{gtkColorSelectionDialogNew}}.}
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/GtkColorSelectionDialog.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
