\alias{GtkDialog}
\alias{gtkDialog}
\alias{GtkDialogFlags}
\alias{GtkResponseType}
\name{GtkDialog}
\title{GtkDialog}
\description{Create popup windows}
\section{Methods and Functions}{
\code{\link{gtkDialogNew}(show = TRUE)}\cr
\code{\link{gtkDialogNewWithButtons}(title = NULL, parent = NULL, flags = 0, ..., show = TRUE)}\cr
\code{\link{gtkDialogRun}(object)}\cr
\code{\link{gtkDialogResponse}(object, response.id)}\cr
\code{\link{gtkDialogAddButton}(object, button.text, response.id)}\cr
\code{\link{gtkDialogAddButtons}(object, ...)}\cr
\code{\link{gtkDialogAddActionWidget}(object, child, response.id)}\cr
\code{\link{gtkDialogGetHasSeparator}(object)}\cr
\code{\link{gtkDialogSetDefaultResponse}(object, response.id)}\cr
\code{\link{gtkDialogSetHasSeparator}(object, setting)}\cr
\code{\link{gtkDialogSetResponseSensitive}(object, response.id, setting)}\cr
\code{\link{gtkDialogGetResponseForWidget}(object, widget)}\cr
\code{\link{gtkAlternativeDialogButtonOrder}(object)}\cr
\code{\link{gtkDialogSetAlternativeButtonOrder}(object, ...)}\cr
\code{\link{gtkDialogSetAlternativeButtonOrderFromArray}(object, new.order)}\cr
\code{gtkDialog(title = NULL, parent = NULL, flags = 0, ..., show = TRUE)}
}
\section{Hierarchy}{\preformatted{  \link{GObject}
   +----GInitiallyUnowned
         +----\link{GtkObject}
               +----\link{GtkWidget}
                     +----\link{GtkContainer}
                           +----\link{GtkBin}
                                 +----\link{GtkWindow}
                                       +----GtkDialog
                                             +----\link{GtkAboutDialog}
                                             +----\link{GtkColorSelectionDialog}
                                             +----\link{GtkFileChooserDialog}
                                             +----\link{GtkFileSelection}
                                             +----\link{GtkFontSelectionDialog}
                                             +----\link{GtkInputDialog}
                                             +----\link{GtkMessageDialog}
                                             +----GtkPageSetupUnixDialog
                                             +----GtkPrintUnixDialog
                                             +----\link{GtkRecentChooserDialog}}}
\section{Interfaces}{GtkDialog implements
 AtkImplementorIface.}
\section{Detailed Description}{Dialog boxes are a convenient way to prompt the user for a small amount of
input, e.g. to display a message, ask a question, or anything else that does 
not require extensive effort on the user's part.
  
GTK+ treats a dialog as a window split vertically. The top section is a
\code{\link{GtkVBox}}, and is where widgets such as a \code{\link{GtkLabel}} or a \code{\link{GtkEntry}} should
be packed. The bottom area is known as the
\code{action_area}. This is generally used for
packing buttons into the dialog which may perform functions such as
cancel, ok, or apply. The two areas are separated by a \code{\link{GtkHSeparator}}.
  
\code{\link{GtkDialog}} boxes are created with a call to \code{\link{gtkDialogNew}} or
\code{\link{gtkDialogNewWithButtons}}. \code{\link{gtkDialogNewWithButtons}} is recommended; it
allows you to set the dialog title, some convenient flags, and add simple
buttons.
  
If 'dialog' is a newly created dialog, the two primary areas of the window 
can be accessed as \code{GTK_DIALOG(dialog)->vbox} and 
\code{GTK_DIALOG(dialog)->action_area},
as can be seen from the example, below.
  
A 'modal' dialog (that is, one which freezes the rest of the application from
user input), can be created by calling \code{\link{gtkWindowSetModal}} on the dialog. Use
the \code{gtkWindow()} function to cast the widget returned from \code{\link{gtkDialogNew}} into a
\code{\link{GtkWindow}}. When using \code{\link{gtkDialogNewWithButtons}} you can also pass the
\code{GTK_DIALOG_MODAL} flag to make a dialog modal.
  
If you add buttons to \code{\link{GtkDialog}} using \code{\link{gtkDialogNewWithButtons}},
\code{\link{gtkDialogAddButton}}, \code{\link{gtkDialogAddButtons}}, or
\code{\link{gtkDialogAddActionWidget}}, clicking the button will emit a signal called
"response" with a response ID that you specified. GTK+ will never assign a
meaning to positive response IDs; these are entirely user-defined. But for
convenience, you can use the response IDs in the \code{\link{GtkResponseType}} enumeration
(these all have values less than zero). If a dialog receives a delete event, 
the "response" signal will be emitted with a response ID of \code{GTK_RESPONSE_DELETE_EVENT}.
  
If you want to block waiting for a dialog to return before returning control
flow to your code, you can call \code{\link{gtkDialogRun}}. This function enters a
recursive main loop and waits for the user to respond to the dialog, returning the 
response ID corresponding to the button the user clicked.
  
For the simple dialog in the following example, in reality you'd probably use
\code{\link{GtkMessageDialog}} to save yourself some effort.  But you'd need to create the
dialog contents manually if you had more than a simple message in the dialog.
\preformatted{
# Function to open a dialog box displaying the message provided.
quick_message <- function(message) {
   # Create the widgets 
   
   dialog <- gtkDialog("Message", NULL, "destroy-with-parent", "gtk-ok", "none", show = F)
   label <- gtkLabel(message)
   
   # Ensure that the dialog box is destroyed when the user responds.
   
   gSignalConnect(dialog, "response", gtkWidgetDestroy)

   # Add the label, and show everything we've added to the dialog.

   dialog[["vbox"]]$add(label)
   dialog$showAll()
}
}}
\section{Structures}{\describe{\item{\code{GtkDialog}}{
\code{vbox} is a \code{\link{GtkVBox}} - the main part of the
dialog box.
  
\code{action_area} is a \code{\link{GtkHButtonBox}} packed below the
dividing \code{\link{GtkHSeparator}} in the dialog. It is treated exactly the same
as any other \code{\link{GtkHButtonBox}}.

\describe{
\item{\code{vbox}}{[\code{\link{GtkWidget}}] }
\item{\code{actionArea}}{[\code{\link{GtkWidget}}] }
}

}}}
\section{Convenient Construction}{\code{gtkDialog} is the result of collapsing the constructors of \code{GtkDialog} (\code{\link{gtkDialogNew}}, \code{\link{gtkDialogNewWithButtons}}) and accepts a subset of its arguments matching the required arguments of one of its delegate constructors.}
\section{Enums and Flags}{\describe{
\item{\code{GtkDialogFlags}}{
Flags used to influence dialog construction.

\describe{
\item{\code{modal}}{Make the constructed dialog modal, 
  see \code{gtkWidgetSetModal()}.}
\item{\code{destroy-with-parent}}{Destroy the dialog when its
  parent is destroyed, see \code{\link{gtkWindowSetDestroyWithParent}}.}
\item{\code{no-separator}}{Don't put a separator between the
  action area and the dialog content.}
}

}
\item{\code{GtkResponseType}}{
Predefined values for use as response ids in \code{\link{gtkDialogAddButton}}.
All predefined values are negative, GTK+ leaves positive values for
application-defined response ids. 

\describe{
\item{\code{none}}{Returned if an action widget has no response id, or if 
   the dialog gets programmatically hidden or destroyed.}
\item{\code{reject}}{Generic response id, not used by GTK+ dialogs.}
\item{\code{accept}}{Generic response id, not used by GTK+ dialogs.}
\item{\code{delete-event}}{Returned if the dialog is deleted.}
\item{\code{ok}}{Returned by OK buttons in GTK+ dialogs.}
\item{\code{cancel}}{Returned by Cancel buttons in GTK+ dialogs.}
\item{\code{close}}{Returned by Close buttons in GTK+ dialogs.}
\item{\code{yes}}{Returned by Yes buttons in GTK+ dialogs.}
\item{\code{no}}{Returned by No buttons in GTK+ dialogs.}
\item{\code{apply}}{Returned by Apply buttons in GTK+ dialogs.}
\item{\code{help}}{Returned by Help buttons in GTK+ dialogs.}
}

}
}}
\section{Signals}{\describe{
\item{\code{close(dialog, user.data)}}{
\emph{undocumented
}

\describe{
\item{\code{dialog}}{[\code{\link{GtkDialog}}] the object which received the signal.}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{response(dialog, arg1, user.data)}}{
Emitted when an action widget is clicked, the dialog receives a delete event, or
the application programmer calls \code{\link{gtkDialogResponse}}. On a delete event, the
response ID is \code{GTK_RESPONSE_NONE}. Otherwise, it depends on which action widget
was clicked.

\describe{
\item{\code{dialog}}{[\code{\link{GtkDialog}}] the object which received the signal.}
\item{\code{arg1}}{[integer] the response ID}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
}}
\section{Properties}{\describe{\item{\code{has-separator} [logical : Read / Write]}{

The dialog has a separator bar above its buttons.  Default value: TRUE

}}}
\section{Style Properties}{\describe{
\item{\code{action-area-border} [integer : Read]}{

Width of border around the button area at the bottom of the dialog.  Allowed values: >= 0  Default value: 5

}
\item{\code{button-spacing} [integer : Read]}{

Spacing between buttons.  Allowed values: >= 0  Default value: 6

}
\item{\code{content-area-border} [integer : Read]}{

Width of border around the main dialog area.  Allowed values: >= 0  Default value: 2

}
}}
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/GtkDialog.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
