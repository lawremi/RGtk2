\alias{GtkFileChooserButton}
\alias{gtkFileChooserButton}
\name{GtkFileChooserButton}
\title{GtkFileChooserButton}
\description{A button to launch a file selection dialog}
\section{Methods and Functions}{
\code{\link{gtkFileChooserButtonNew}(title, action, show = TRUE)}\cr
\code{\link{gtkFileChooserButtonNewWithBackend}(title, action, backend, show = TRUE)}\cr
\code{\link{gtkFileChooserButtonNewWithBackend}(title, action, backend, show = TRUE)}\cr
\code{\link{gtkFileChooserButtonNewWithDialog}(dialog)}\cr
\code{\link{gtkFileChooserButtonGetTitle}(object)}\cr
\code{\link{gtkFileChooserButtonSetTitle}(object, title)}\cr
\code{\link{gtkFileChooserButtonGetWidthChars}(object)}\cr
\code{\link{gtkFileChooserButtonSetWidthChars}(object, n.chars)}\cr
\code{\link{gtkFileChooserButtonGetFocusOnClick}(object)}\cr
\code{\link{gtkFileChooserButtonSetFocusOnClick}(object, focus.on.click)}\cr
\code{gtkFileChooserButton(title, action, backend, show = TRUE)}
}
\section{Hierarchy}{\preformatted{GObject
   +----GInitiallyUnowned
         +----GtkObject
               +----GtkWidget
                     +----GtkContainer
                           +----GtkBox
                                 +----GtkHBox
                                       +----GtkFileChooserButton}}
\section{Interfaces}{GtkFileChooserButton implements
 AtkImplementorIface,  \code{\link{GtkBuildable}},  \code{\link{GtkOrientable}} and  \code{\link{GtkFileChooser}}.}
\section{Detailed Description}{The \code{\link{GtkFileChooserButton}} is a widget that lets the user select a
file.  It implements the \code{\link{GtkFileChooser}} interface.  Visually, it is a
file name with a button to bring up a \code{\link{GtkFileChooserDialog}}.
The user can then use that dialog to change the file associated with
that button.  This widget does not support setting the "select-multiple"
property to \code{TRUE}.
  
 \emph{Create a button to let the user select a file in /etc}
\preformatted{
# Create a button to let the user select a file in /etc
button <- gtkFileChooserButton("Select a file", "open")
button$setCurrentFolder("/etc")
}  
The \code{\link{GtkFileChooserButton}} supports the \code{\link{GtkFileChooserAction}}s \code{GTK_FILE_CHOOSER_ACTION_OPEN} and \code{GTK_FILE_CHOOSER_ACTION_SELECT_FOLDER}.
  \strong{PLEASE NOTE:} The \code{\link{GtkFileChooserButton}} will ellipsize the label,
and thus will thus request little horizontal space.  To give the button
more space, you should call \code{\link{gtkWidgetSizeRequest}},
\code{\link{gtkFileChooserButtonSetWidthChars}}, or pack the button in
such a way that other interface elements give space to the widget.}
\section{Structures}{\describe{\item{\verb{GtkFileChooserButton}}{
This should not be accessed directly.  Use the accessor functions below.

}}}
\section{Convenient Construction}{\code{gtkFileChooserButton} is the result of collapsing the constructors of \code{GtkFileChooserButton} (\code{\link{gtkFileChooserButtonNew}}, \code{\link{gtkFileChooserButtonNewWithBackend}}) and accepts a subset of its arguments matching the required arguments of one of its delegate constructors.}
\section{Signals}{\describe{\item{\code{file-set(widget, user.data)}}{
The ::file-set signal is emitted when the user selects a file.
  
Note that this signal is only emitted when the \emph{user}
changes the file.
  Since 2.12

\describe{
\item{\code{widget}}{the object which received the signal.}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}}}
\section{Properties}{\describe{
\item{\verb{dialog} [\code{\link{GtkFileChooser}} : *       : Write / Construct Only]}{

Instance of the \code{\link{GtkFileChooserDialog}} associated with the button.
  Since 2.6

}
\item{\verb{focus-on-click} [logical : Read / Write]}{

Whether the \code{\link{GtkFileChooserButton}} button grabs focus when it is clicked
with the mouse.
  Default value: TRUE  Since 2.10

}
\item{\verb{title} [character : *                : Read / Write]}{

Title to put on the \code{\link{GtkFileChooserDialog}} associated with the button.
  Default value: "Select A File"  Since 2.6

}
\item{\verb{width-chars} [integer : Read / Write]}{

The width of the entry and label inside the button, in characters.
  Allowed values: >= -1  Default value: -1  Since 2.6

}
}}
\references{\url{https://developer-old.gnome.org/gtk2/stable/GtkFileChooserButton.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\seealso{\code{\link{GtkFileChooserDialog}}}
\keyword{internal}
