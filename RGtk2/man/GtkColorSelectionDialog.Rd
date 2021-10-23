\alias{GtkColorSelectionDialog}
\alias{gtkColorSelectionDialog}
\name{GtkColorSelectionDialog}
\title{GtkColorSelectionDialog}
\description{A standard dialog box for selecting a color}
\section{Methods and Functions}{
\code{\link{gtkColorSelectionDialogNew}(title = NULL, show = TRUE)}\cr
\code{\link{gtkColorSelectionDialogGetColorSelection}(object)}\cr
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
 AtkImplementorIface and  \code{\link{GtkBuildable}}.}
\section{Detailed Description}{The \code{\link{GtkColorSelectionDialog}} provides a standard dialog which
allows the user to select a color much like the \code{\link{GtkFileSelection}}
provides a standard dialog for file selection.}
\section{GtkColorSelectionDialog as GtkBuildable}{The GtkColorSelectionDialog implementation of the GtkBuildable interface
exposes the embedded \code{\link{GtkColorSelection}} as internal child with the
name "color_selection". It also exposes the buttons with the names
"ok_button", "cancel_button" and "help_button".}
\section{Structures}{\describe{\item{\verb{GtkColorSelectionDialog}}{
The \code{\link{GtkColorSelectionDialog}} struct contains the following fields.
(These fields should be considered read-only. They should never be set by
an application.)
\tabular{ll}{
\code{\link{GtkWidget}}   *colorsel; \tab The   \code{\link{GtkColorSelection}}   widget contained within the
dialog.  Use this widget and its   \code{\link{gtkColorSelectionGetCurrentColor}}  
function to gain access to the selected color.  Connect a handler
for this widget's color_changed signal to be notified when the
color changes. \cr
\code{\link{GtkWidget}}   *ok_button; \tab The OK button widget contained within the dialog.
Connect a handler for the clicked event. \cr
\code{\link{GtkWidget}}   *cancel_button; \tab The cancel button widget contained within the dialog.
Connect a handler for the clicked event. \cr
\code{\link{GtkWidget}}   *help_button; \tab The help button widget contained within the dialog.
Connect a handler for the clicked event. \cr
}

}}}
\section{Convenient Construction}{\code{gtkColorSelectionDialog} is the equivalent of \code{\link{gtkColorSelectionDialogNew}}.}
\section{Properties}{\describe{
\item{\verb{cancel-button} [\code{\link{GtkWidget}} : *            : Read]}{

The cancel button of the dialog.

}
\item{\verb{color-selection} [\code{\link{GtkWidget}} : *            : Read]}{

The color selection embedded in the dialog.

}
\item{\verb{help-button} [\code{\link{GtkWidget}} : *            : Read]}{

The help button of the dialog.

}
\item{\verb{ok-button} [\code{\link{GtkWidget}} : *            : Read]}{

The OK button of the dialog.

}
}}
\references{\url{https://developer-old.gnome.org/gtk2/stable/GtkColorSelectionDialog.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
