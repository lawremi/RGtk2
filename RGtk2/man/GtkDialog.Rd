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
\code{\link{gtkDialogGetWidgetForResponse}(object, response.id)}\cr
\code{\link{gtkDialogGetActionArea}(object)}\cr
\code{\link{gtkDialogGetContentArea}(object)}\cr
\code{\link{gtkAlternativeDialogButtonOrder}(object)}\cr
\code{\link{gtkDialogSetAlternativeButtonOrder}(object, ...)}\cr
\code{\link{gtkDialogSetAlternativeButtonOrderFromArray}(object, new.order)}\cr
\code{gtkDialog(title = NULL, parent = NULL, flags = 0, ..., show = TRUE)}
}
\section{Hierarchy}{\preformatted{GObject
   +----GInitiallyUnowned
         +----GtkObject
               +----GtkWidget
                     +----GtkContainer
                           +----GtkBin
                                 +----GtkWindow
                                       +----GtkDialog
                                             +----GtkAboutDialog
                                             +----GtkColorSelectionDialog
                                             +----GtkFileChooserDialog
                                             +----GtkFileSelection
                                             +----GtkFontSelectionDialog
                                             +----GtkInputDialog
                                             +----GtkMessageDialog
                                             +----GtkPageSetupUnixDialog
                                             +----GtkPrintUnixDialog
                                             +----GtkRecentChooserDialog}}
\section{Interfaces}{GtkDialog implements
 AtkImplementorIface and  \code{\link{GtkBuildable}}.}
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
can be accessed through \code{\link{gtkDialogGetContentArea}} and
\code{\link{gtkDialogGetActionArea}}, as can be seen from the example, below.
  
A 'modal' dialog (that is, one which freezes the rest of the application from
user input), can be created by calling \code{\link{gtkWindowSetModal}} on the dialog. Use
the \code{gtkWindow()} function to cast the widget returned from \code{\link{gtkDialogNew}} into a
\code{\link{GtkWindow}}. When using \code{\link{gtkDialogNewWithButtons}} you can also pass the
\verb{GTK_DIALOG_MODAL} flag to make a dialog modal.
  
If you add buttons to \code{\link{GtkDialog}} using \code{\link{gtkDialogNewWithButtons}},
\code{\link{gtkDialogAddButton}}, \code{\link{gtkDialogAddButtons}}, or
\code{\link{gtkDialogAddActionWidget}}, clicking the button will emit a signal called
"response" with a response ID that you specified. GTK+ will never assign a
meaning to positive response IDs; these are entirely user-defined. But for
convenience, you can use the response IDs in the \code{\link{GtkResponseType}} enumeration
(these all have values less than zero). If a dialog receives a delete event,
the "response" signal will be emitted with a response ID of \verb{GTK_RESPONSE_DELETE_EVENT}.
  
If you want to block waiting for a dialog to return before returning control
flow to your code, you can call \code{\link{gtkDialogRun}}. This function enters a
recursive main loop and waits for the user to respond to the dialog, returning the
response ID corresponding to the button the user clicked.
  
For the simple dialog in the following example, in reality you'd probably use
\code{\link{GtkMessageDialog}} to save yourself some effort.  But you'd need to create the
dialog contents manually if you had more than a simple message in the dialog.

 \emph{Simple   \code{GtkDialog}   usage.}
\preformatted{
# Function to open a dialog box displaying the message provided.
quick_message <- function(message) {
  ## Create the widgets 
   
  dialog <- gtkDialog("Message", NULL, "destroy-with-parent",
                      "gtk-ok", GtkResponseType["none"],
                      show = FALSE)
  label <- gtkLabel(message)
   
  ## Ensure that the dialog box is destroyed when the user responds.
   
  gSignalConnect(dialog, "response", gtkWidgetDestroy)

  ## Add the label, and show everything we've added to the dialog.

  dialog[["vbox"]]$add(label)
  dialog$showAll()
}
}}
\section{GtkDialog as GtkBuildable}{The GtkDialog implementation of the GtkBuildable interface exposes the
\code{vbox} and \code{action.area} as internal children with the names "vbox" and
"action_area".
  
GtkDialog supports a custom <action-widgets> element, which
can contain multiple <action-widget> elements. The "response"
attribute specifies a numeric response, and the content of the element
is the id of widget (which should be a child of the dialogs \code{action.area}).
  
 \emph{A   \code{GtkDialog}   UI definition fragment.}\preformatted{<object class="GtkDialog" id="dialog1">
  <child internal-child="vbox">"
    <object class="GtkVBox" id="vbox">
      <child internal-child="action_area">
        <object class="GtkHButtonBox" id="button_box">
          <child>
            <object class="GtkButton" id="button_cancel"/>
          </child>
          <child>
            <object class="GtkButton" id="button_ok"/>
          </child>
        </object>
      </child>
    </object>
  </child>
  <action-widgets>
    <action-widget response="3">button_ok</action-widget>
    <action-widget response="-5">button_cancel</action-widget>
  </action-widgets>
</object>
}}
\section{Structures}{\describe{\item{\verb{GtkDialog}}{
\code{vbox} is a \code{\link{GtkVBox}} - the main part of the
dialog box.
  \code{action_area} is a \code{\link{GtkHButtonBox}} packed below the
dividing \code{\link{GtkHSeparator}} in the dialog. It is treated exactly the same
as any other \code{\link{GtkHButtonBox}}.

\describe{
\item{\verb{vbox}}{[\code{\link{GtkWidget}}] }
\item{\verb{actionArea}}{[\code{\link{GtkWidget}}] }
}

}}}
\section{Convenient Construction}{\code{gtkDialog} is the result of collapsing the constructors of \code{GtkDialog} (\code{\link{gtkDialogNew}}, \code{\link{gtkDialogNewWithButtons}}) and accepts a subset of its arguments matching the required arguments of one of its delegate constructors.}
\section{Enums and Flags}{\describe{
\item{\verb{GtkDialogFlags}}{
Flags used to influence dialog construction.

\describe{
\item{\verb{modal}}{Make the constructed dialog modal, 
  see \code{\link{gtkWindowSetModal}}.}
\item{\verb{destroy-with-parent}}{Destroy the dialog when its
  parent is destroyed, see \code{\link{gtkWindowSetDestroyWithParent}}.}
\item{\verb{no-separator}}{Don't put a separator between the
  action area and the dialog content.}
}

}
\item{\verb{GtkResponseType}}{
Predefined values for use as response ids in \code{\link{gtkDialogAddButton}}.
All predefined values are negative, GTK+ leaves positive values for
application-defined response ids.

\describe{
\item{\verb{none}}{Returned if an action widget has no response id, or if 
   the dialog gets programmatically hidden or destroyed.}
\item{\verb{reject}}{Generic response id, not used by GTK+ dialogs.}
\item{\verb{accept}}{Generic response id, not used by GTK+ dialogs.}
\item{\verb{delete-event}}{Returned if the dialog is deleted.}
\item{\verb{ok}}{Returned by OK buttons in GTK+ dialogs.}
\item{\verb{cancel}}{Returned by Cancel buttons in GTK+ dialogs.}
\item{\verb{close}}{Returned by Close buttons in GTK+ dialogs.}
\item{\verb{yes}}{Returned by Yes buttons in GTK+ dialogs.}
\item{\verb{no}}{Returned by No buttons in GTK+ dialogs.}
\item{\verb{apply}}{Returned by Apply buttons in GTK+ dialogs.}
\item{\verb{help}}{Returned by Help buttons in GTK+ dialogs.}
}

}
}}
\section{Signals}{\describe{
\item{\code{close(user.data)}}{
The ::close signal is a
keybinding signal
which gets emitted when the user uses a keybinding to close
the dialog.
  
The default binding for this signal is the Escape key.

\describe{\item{\code{user.data}}{user data set when the signal handler was connected.}}


}
\item{\code{response(dialog, response.id, user.data)}}{
Emitted when an action widget is clicked, the dialog receives a
delete event, or the application programmer calls \code{\link{gtkDialogResponse}}.
On a delete event, the response ID is \verb{GTK_RESPONSE_DELETE_EVENT}.
Otherwise, it depends on which action widget was clicked.

\describe{
\item{\code{dialog}}{the object on which the signal is emitted}
\item{\code{response.id}}{the response ID}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
}}
\section{Properties}{\describe{\item{\verb{has-separator} [logical : Read / Write]}{

When \code{TRUE}, the dialog has a separator bar above its buttons.
  Default value: TRUE

}}}
\section{Style Properties}{\describe{
\item{\verb{action-area-border} [integer : Read]}{

Width of border around the button area at the bottom of the dialog.  Allowed values: >= 0  Default value: 5

}
\item{\verb{button-spacing} [integer : Read]}{

Spacing between buttons.  Allowed values: >= 0  Default value: 6

}
\item{\verb{content-area-border} [integer : Read]}{

Width of border around the main dialog area.  Allowed values: >= 0  Default value: 2

}
\item{\verb{content-area-spacing} [integer : Read]}{

The default spacing used between elements of the
content area of the dialog, as returned by
\code{\link{gtkDialogGetContentArea}}, unless \code{\link{gtkBoxSetSpacing}}
was called on that widget directly.
  Allowed values: >= 0  Default value: 0  Since 2.16

}
}}
\references{\url{https://developer-old.gnome.org/gtk2/stable/GtkDialog.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
