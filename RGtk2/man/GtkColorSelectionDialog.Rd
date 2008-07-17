\alias{GtkColorSelectionDialog}
\alias{gtkColorSelectionDialog}
\name{GtkColorSelectionDialog}
\title{GtkColorSelectionDialog}
\description{A standard dialog box for selecting a color}
\section{Methods and Functions}{
\code{\link{gtkColorSelectionDialogNew}(title = NULL, show = TRUE)}\cr
\code{gtkColorSelectionDialog(title = NULL, show = TRUE)}
}
\section{Hierarchy}{\preformatted{\link{GObject}
   +----GInitiallyUnowned
         +----\link{GtkObject}
               +----\link{GtkWidget}
                     +----\link{GtkContainer}
                           +----\link{GtkBin}
                                 +----\link{GtkWindow}
                                       +----\link{GtkDialog}
                                             +----GtkColorSelectionDialog}}
\section{Interfaces}{GtkColorSelectionDialog implements
 AtkImplementorIface and  \code{\link{GtkBuildable}}.}
\section{Detailed Description}{The \code{\link{GtkColorSelectionDialog}} provides a standard dialog which
allows the user to select a color much like the \code{\link{GtkFileSelection}}
provides a standard dialog for file selection.}
\section{GtkColorSelectionDialog as GtkBuildable}{The GtkColorSelectionDialog implementation of the GtkBuildable interface
exposes the embedded \code{\link{GtkColorSelection}} as internal child with the
name "color\_selection". It also exposes the buttons with the names
"ok\_button", "cancel\_button" and "help\_button".}
\section{Structures}{\describe{\item{\code{GtkColorSelectionDialog}}{
The \code{\link{GtkColorSelectionDialog}} struct contains the following fields.
(These fields should be considered read-only. They should never be set by
an application.)

\tabular{ll}{
\code{\link{GtkWidget}}   *colorsel; \tab The   \code{\link{GtkColorSelection}}   widget contained within the
dialog.  Use this widget and its   \code{\link{gtkColorSelectionGetCurrentColor}}  
function to gain access to the selected color.  Connect a handler 
for this widget's color\_changed signal to be notified when the
color changes. \cr
\code{\link{GtkWidget}}   *ok\_button; \tab The OK button widget contained within the dialog.  
Connect a handler for the clicked event. \cr
\code{\link{GtkWidget}}   *cancel\_button; \tab The cancel button widget contained within the dialog.  
Connect a handler for the clicked event. \cr
\code{\link{GtkWidget}}   *help\_button; \tab The help button widget contained within the dialog.  
Connect a handler for the clicked event. \cr
}

}}}
\section{Convenient Construction}{\code{gtkColorSelectionDialog} is the equivalent of \code{\link{gtkColorSelectionDialogNew}}.}
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/GtkColorSelectionDialog.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
