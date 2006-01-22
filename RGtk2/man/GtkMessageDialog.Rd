\alias{GtkMessageDialog}
\alias{gtkMessageDialog}
\alias{GtkMessageType}
\alias{GtkButtonsType}
\name{GtkMessageDialog}
\title{GtkMessageDialog}
\description{A convenient message window}
\usage{gtkMessageDialog(parent, flags, type, buttons, ..., show = TRUE)}
\section{Methods and Functions}{
\link{gtkMessageDialogNew}(parent = NULL, flags, type, buttons, ..., show = TRUE)
\link{gtkMessageDialogNewWithMarkup}(parent, flags, type, buttons, ..., show = TRUE)
\link{gtkMessageDialogSetMarkup}(object, str)
\link{gtkMessageDialogFormatSecondaryText}(object, ...)
\link{gtkMessageDialogFormatSecondaryMarkup}(object, ...)
}
\section{Hierarchy}{\preformatted{  \link{GObject}
   +----\link{GtkObject}
         +----\link{GtkWidget}
               +----\link{GtkContainer}
                     +----\link{GtkBin}
                           +----\link{GtkWindow}
                                 +----\link{GtkDialog}
                                       +----GtkMessageDialog}}
\section{Interfaces}{GtkMessageDialog implements
 AtkImplementorIface.}
\section{Detailed Description}{\code{\link{GtkMessageDialog}} presents a dialog with an image representing the type of 
message (Error, Question, etc.) alongside some message text. It's simply a 
convenience widget; you could construct the equivalent of \code{\link{GtkMessageDialog}} 
from \code{\link{GtkDialog}} without too much effort, but \code{\link{GtkMessageDialog}} saves typing.
  
The easiest way to do a modal message dialog is to use \code{\link{gtkDialogRun}}, though
you can also pass in the \code{GTK_DIALOG_MODAL} flag, \code{\link{gtkDialogRun}} automatically
makes the dialog modal and waits for the user to respond to it. \code{\link{gtkDialogRun}}
returns when any dialog button is clicked.
\preformatted{
# A Modal dialog
dialog <- gtkMessageDialog(main_application_window, "destroy-with-parent",
                                  "error", "close",
                                  "Error loading file '", filename, "': ", message)

dialog$run()
dialog$destroy()
}
  
You might do a non-modal \code{\link{GtkMessageDialog}} as follows:
\preformatted{
dialog <- gtkMessageDialog(main_application_window, "destroy-with-parent",
                                  "error", "close",
                                  "Error loading file '", filename, "': ", message)

 # Destroy the dialog when the user responds to it (e.g. clicks a button)
 gSignalConnect(dialog, "response", gtkWidgetDestroy)
}}
\section{Structures}{\describe{\item{\code{GtkMessageDialog}}{


\describe{
\item{\code{image}}{[\code{\link{GtkWidget}}] }
\item{\code{label}}{[\code{\link{GtkWidget}}] }
}

}}}
\section{Convenient Construction}{\code{gtkMessageDialog} is the result of collapsing the constructors of \code{GtkMessageDialog} (\code{\link{gtkMessageDialogNew}}, \code{\link{gtkMessageDialogNewWithMarkup}}) and accepts a subset of its arguments matching the required arguments of one of its delegate constructors.}
\section{Enums and Flags}{\describe{
\item{\code{enum GtkMessageType}}{
The type of message being displayed in the dialog.

\describe{
\item{\code{GTK_MESSAGE_INFO (info)}}{Informational message}
\item{\code{GTK_MESSAGE_WARNING (warning)}}{Nonfatal warning message}
\item{\code{GTK_MESSAGE_QUESTION (question)}}{Question requiring a choice}
\item{\code{GTK_MESSAGE_ERROR (error)}}{Fatal error message}
}

}
\item{\code{enum GtkButtonsType}}{
Prebuilt sets of buttons for the dialog. If 
none of these choices are appropriate, simply use \code{GTK_BUTTONS_NONE}
then call \code{\link{gtkDialogAddButtons}}.

\describe{
\item{\code{GTK_BUTTONS_NONE (none)}}{no buttons at all}
\item{\code{GTK_BUTTONS_OK (ok)}}{an OK button}
\item{\code{GTK_BUTTONS_CLOSE (close)}}{a Close button}
\item{\code{GTK_BUTTONS_CANCEL (cancel)}}{a Cancel button}
\item{\code{GTK_BUTTONS_YES_NO (yes-no)}}{Yes and No buttons}
\item{\code{GTK_BUTTONS_OK_CANCEL (ok-cancel)}}{OK and Cancel buttons}
}

}
}}
\section{Properties}{\describe{
\item{\code{buttons} [\code{\link{GtkButtonsType}} : Write / Construct Only]}{

The buttons shown in the message dialog.  Default value: GTK_BUTTONS_NONE

}
\item{\code{message-type} [\code{\link{GtkMessageType}} : Read / Write / Construct]}{

The type of message.  Default value: GTK_MESSAGE_INFO

}
}}
\section{Style Properties}{\describe{
\item{\code{message-border} [integer : Read]}{

Width of border around the label and image in the message dialog.  Allowed values: >= 0  Default value: 12

}
\item{\code{use-separator} [logical : Read]}{

Whether to put a separator between the message dialog's text and the buttons.  Default value: FALSE

}
}}
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/GtkMessageDialog.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\seealso{\code{\link{GtkDialog}}}
\keyword{internal}
