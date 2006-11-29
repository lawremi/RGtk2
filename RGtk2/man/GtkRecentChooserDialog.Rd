\alias{GtkRecentChooserDialog}
\alias{gtkRecentChooserDialog}
\name{GtkRecentChooserDialog}
\title{GtkRecentChooserDialog}
\description{Displays recently used files in a dialog}
\section{Methods and Functions}{
\code{\link{gtkRecentChooserDialogNew}(title = NULL, parent = NULL, ..., show = TRUE)}\cr
\code{\link{gtkRecentChooserDialogNewForManager}(title = NULL, parent = NULL, manager, ..., show = TRUE)}\cr
\code{gtkRecentChooserDialog(title = NULL, parent = NULL, ..., show = TRUE)}
}
\section{Hierarchy}{\preformatted{  \link{GObject}
   +----GInitiallyUnowned
         +----\link{GtkObject}
               +----\link{GtkWidget}
                     +----\link{GtkContainer}
                           +----\link{GtkBin}
                                 +----\link{GtkWindow}
                                       +----\link{GtkDialog}
                                             +----GtkRecentChooserDialog}}
\section{Interfaces}{GtkRecentChooserDialog implements
 AtkImplementorIface and  \code{\link{GtkRecentChooser}}.}
\section{Detailed Description}{\code{\link{GtkRecentChooserDialog}} is a dialog box suitable for displaying the recently
used documents.  This widgets works by putting a \code{\link{GtkRecentChooserWidget}} inside
a \code{\link{GtkDialog}}.  It exposes the \code{GtkRecentChooserIface} interface, so you can use
all the \code{\link{GtkRecentChooser}} functions on the recent chooser dialog as well as
those for \code{\link{GtkDialog}}.
  
Note that \code{\link{GtkRecentChooserDialog}} does not have any methods of its own.
Instead, you should use the functions that work on a \code{\link{GtkRecentChooser}}.
  
  \emph{Typical usage}

  
    In the simplest of cases, you can use the following code to use
    a \code{\link{GtkRecentChooserDialog}} to select a recently used file:
  

  \preformatted{GtkWidget *dialog;

dialog = gtk_recent_chooser_dialog_new ("Recent Documents",
					parent_window,
					GTK_STOCK_CANCEL, GTK_RESPONSE_CANCEL,
					GTK_STOCK_OPEN, GTK_RESPONSE_ACCEPT,
					NULL);
					
if (gtk_dialog_run (GTK_DIALOG (dialog)) == GTK_RESPONSE_ACCEPT)
  {
    GtkRecentInfo *info;

    info = gtk_recent_chooser_get_current_item (GTK_RECENT_CHOOSER (dialog));
    open_file (gtk_recent_info_get_uri (info));
    gtk_recent_info_unref (info);
  }

gtk_widget_destroy (dialog);
  
}
  
Recently used files are supported since GTK+ 2.10.}
\section{Structures}{\describe{\item{\code{GtkRecentChooserDialog}}{
\emph{undocumented
}

}}}
\section{Convenient Construction}{\code{gtkRecentChooserDialog} is the equivalent of \code{\link{gtkRecentChooserDialogNew}}.}
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/GtkRecentChooserDialog.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\seealso{
\code{\link{GtkRecentChooser}}
\code{\link{GtkDialog}}
}
\keyword{internal}
