\alias{GtkMessageDialog}
\alias{gtkMessageDialog}
\alias{GtkMessageType}
\alias{GtkButtonsType}
\name{GtkMessageDialog}
\title{GtkMessageDialog}
\description{A convenient message window}
\section{Methods and Functions}{
\code{\link{gtkMessageDialogNew}(parent = NULL, flags, type, buttons, ..., show = TRUE)}\cr
\code{\link{gtkMessageDialogNewWithMarkup}(parent, flags, type, buttons, ..., show = TRUE)}\cr
\code{\link{gtkMessageDialogSetMarkup}(object, str)}\cr
\code{\link{gtkMessageDialogSetImage}(object, image)}\cr
\code{\link{gtkMessageDialogFormatSecondaryText}(object, ...)}\cr
\code{\link{gtkMessageDialogFormatSecondaryMarkup}(object, ...)}\cr
\code{gtkMessageDialog(parent, flags, type, buttons, ..., show = TRUE)}
}
\section{Hierarchy}{\preformatted{  \link{GObject}
   +----GInitiallyUnowned
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
\emph{undocumented
}

\describe{
\item{\code{image}}{[\code{\link{GtkWidget}}] }
\item{\code{label}}{[\code{\link{GtkWidget}}] }
}

}}}
\section{Convenient Construction}{\code{gtkMessageDialog} is the result of collapsing the constructors of \code{GtkMessageDialog} (\code{\link{gtkMessageDialogNew}}, \code{\link{gtkMessageDialogNewWithMarkup}}) and accepts a subset of its arguments matching the required arguments of one of its delegate constructors.}
\section{Enums and Flags}{\describe{
\item{\code{GtkMessageType}}{
The type of message being displayed in the dialog.

\describe{
\item{\code{info}}{Informational message}
\item{\code{warning}}{Nonfatal warning message}
\item{\code{question}}{Question requiring a choice}
\item{\code{error}}{Fatal error message}
}

}
\item{\code{GtkButtonsType}}{
Prebuilt sets of buttons for the dialog. If 
none of these choices are appropriate, simply use \code{GTK_BUTTONS_NONE}
then call \code{\link{gtkDialogAddButtons}}.

\describe{
\item{\code{none}}{no buttons at all}
\item{\code{ok}}{an OK button}
\item{\code{close}}{a Close button}
\item{\code{cancel}}{a Cancel button}
\item{\code{yes-no}}{Yes and No buttons}
\item{\code{ok-cancel}}{OK and Cancel buttons}
}

}
}}
\section{Properties}{\describe{
\item{\code{buttons} [\code{\link{GtkButtonsType}} : Write / Construct Only]}{

The buttons shown in the message dialog.  Default value: GTK\_BUTTONS\_NONE

}
\item{\code{image} [\code{\link{GtkWidget}} : Read / Write]}{

The image for this dialog.  

  Since  2.10

}
\item{\code{message-type} [\code{\link{GtkMessageType}} : Read / Write / Construct]}{

The type of the message. The type is used to determine
the image that is shown in the dialog, unless the image is 
explicitly set by the ::image property.  

  Default value: GTK\_MESSAGE\_INFO

}
\item{\code{secondary-text} [character : Read / Write]}{

The secondary text of the message dialog.  

  Default value: NULL  Since  2.10

}
\item{\code{secondary-use-markup} [logical : Read / Write]}{

\code{TRUE} if the secondary text of the dialog includes Pango markup. 
See \code{\link{pangoParseMarkup}}.  

  Default value: FALSE  Since  2.10

}
\item{\code{text} [character : Read / Write]}{

The primary text of the message dialog. If the dialog has 
a secondary text, this will appear as the title.  

  Default value: NULL  Since  2.10

}
\item{\code{use-markup} [logical : Read / Write]}{

\code{TRUE} if the primary text of the dialog includes Pango markup. 
See \code{\link{pangoParseMarkup}}.  

  Default value: FALSE  Since  2.10

}
}}
\section{Style Properties}{\describe{
\item{\code{message-border} [integer : Read]}{

Width of border around the label and image in the message dialog.  Allowed values: >= 0  Default value: 12

}
\item{\code{use-separator} [logical : Read]}{

Whether to draw a separator line between the message label and the buttons
in the dialog.  

  Default value: FALSE  Since  2.4

}
}}
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/GtkMessageDialog.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\seealso{\code{\link{GtkDialog}}}
\keyword{internal}
