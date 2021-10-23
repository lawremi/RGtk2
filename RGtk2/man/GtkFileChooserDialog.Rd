\alias{GtkFileChooserDialog}
\alias{gtkFileChooserDialog}
\name{GtkFileChooserDialog}
\title{GtkFileChooserDialog}
\description{A file chooser dialog, suitable for "File/Open" or "File/Save" commands}
\section{Methods and Functions}{
\code{\link{gtkFileChooserDialogNew}(title = NULL, parent = NULL, action, ..., show = TRUE)}\cr
\code{\link{gtkFileChooserDialogNewWithBackend}(title = NULL, parent = NULL, action, backend, ..., show = TRUE)}\cr
\code{\link{gtkFileChooserDialogNewWithBackend}(title = NULL, parent = NULL, action, backend, ..., show = TRUE)}\cr
\code{gtkFileChooserDialog(title = NULL, parent = NULL, action, ..., backend, show = TRUE)}
}
\section{Hierarchy}{\preformatted{GObject
   +----GInitiallyUnowned
         +----GtkObject
               +----GtkWidget
                     +----GtkContainer
                           +----GtkBin
                                 +----GtkWindow
                                       +----GtkDialog
                                             +----GtkFileChooserDialog}}
\section{Interfaces}{GtkFileChooserDialog implements
 AtkImplementorIface,  \code{\link{GtkBuildable}} and  \code{\link{GtkFileChooser}}.}
\section{Detailed Description}{\code{\link{GtkFileChooserDialog}} is a dialog box suitable for use with
      "File/Open" or "File/Save as" commands.  This widget works by
      putting a \code{\link{GtkFileChooserWidget}} inside a \code{\link{GtkDialog}}.  It exposes
      the \verb{GtkFileChooserIface} interface, so you can use all of the
      \code{\link{GtkFileChooser}} functions on the file chooser dialog as well as
      those for \code{\link{GtkDialog}}.
      
      Note that \code{\link{GtkFileChooserDialog}} does not have any methods of its
      own.  Instead, you should use the functions that work on a
      \code{\link{GtkFileChooser}}.
      
 \emph{Typical usage}
\preformatted{
######
# Request a file from the user and open it
######

# This is how one creates a dialog with buttons and associated response codes.
# (Please ignore the C "Response Code" example in the next section)
dialog <- gtkFileChooserDialog("Open File", parent_window, "open",
                               "gtk-cancel", GtkResponseType["cancel"], 
                               "gtk-open", GtkResponseType["accept"])

if (dialog$run() == GtkResponseType["accept"]) {
  filename <- dialog$getFilename()
  f <- file(filename)
}

dialog$destroy()
}}
\section{Response Codes}{\code{\link{GtkFileChooserDialog}} inherits from \code{\link{GtkDialog}}, so buttons that
      go in its action area have response codes such as
      \verb{GTK_RESPONSE_ACCEPT} and \verb{GTK_RESPONSE_CANCEL}.  For example, you
      could call \code{\link{gtkFileChooserDialogNew}} as follows:
      \preformatted{GtkWidget *dialog;
dialog = gtk_file_chooser_dialog_new ("Open File",
				      parent_window,
				      GTK_FILE_CHOOSER_ACTION_OPEN,
				      GTK_STOCK_CANCEL, GTK_RESPONSE_CANCEL,
				      GTK_STOCK_OPEN, GTK_RESPONSE_ACCEPT,
				      NULL);
    
}  
      This will create buttons for "Cancel" and "Open" that use stock
      response identifiers from \code{\link{GtkResponseType}}.  For most dialog
      boxes you can use your own custom response codes rather than the
      ones in \code{\link{GtkResponseType}}, but \code{\link{GtkFileChooserDialog}} assumes that
      its "accept"-type action, e.g. an "Open" or "Save" button,
      \emph{will} have one of the following response
      codes:
      \itemize{
\item \verb{GTK_RESPONSE_ACCEPT}
\item \verb{GTK_RESPONSE_OK}
\item \verb{GTK_RESPONSE_YES}
\item \verb{GTK_RESPONSE_APPLY}
}
      
      This is because \code{\link{GtkFileChooserDialog}} must intercept responses
      and switch to folders if appropriate, rather than letting the
      dialog terminate -- the implementation uses these known
      response codes to know which responses can be blocked if
      appropriate.
      \strong{PLEASE NOTE:} 	To summarize, make sure you use a stock response
	code when you use \code{\link{GtkFileChooserDialog}} to ensure
	proper operation.
      }
\section{Structures}{\describe{\item{\verb{GtkFileChooserDialog}}{
\emph{undocumented
}

}}}
\section{Convenient Construction}{\code{gtkFileChooserDialog} is the result of collapsing the constructors of \code{GtkFileChooserDialog} (\code{\link{gtkFileChooserDialogNew}}, \code{\link{gtkFileChooserDialogNewWithBackend}}) and accepts a subset of its arguments matching the required arguments of one of its delegate constructors.}
\references{\url{https://developer-old.gnome.org/gtk2/stable/GtkFileChooserDialog.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\seealso{
\code{\link{GtkFileChooser}}
\code{\link{GtkDialog}}
}
\keyword{internal}
