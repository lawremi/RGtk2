\alias{GtkFileChooserButton}
\alias{gtkFileChooserButton}
\name{GtkFileChooserButton}
\title{GtkFileChooserButton}
\description{A button to launch a file selection dialog}
\usage{gtkFileChooserButton(title, action, backend, show = TRUE)}
\section{Methods and Functions}{
\link{gtkFileChooserButtonNew}(title, action, show = TRUE)
\link{gtkFileChooserButtonNewWithBackend}(title, action, backend, show = TRUE)
\link{gtkFileChooserButtonNewWithDialog}(dialog)
\link{gtkFileChooserButtonGetTitle}(object)
\link{gtkFileChooserButtonSetTitle}(object, title)
\link{gtkFileChooserButtonGetWidthChars}(object)
\link{gtkFileChooserButtonSetWidthChars}(object, n.chars)
}
\section{Hierarchy}{\preformatted{  \link{GObject}
   +----\link{GtkObject}
         +----\link{GtkWidget}
               +----\link{GtkContainer}
                     +----\link{GtkBox}
                           +----\link{GtkHBox}
                                 +----GtkFileChooserButton}}
\section{Interfaces}{GtkFileChooserButton implements
 AtkImplementorIface and  \code{\link{GtkFileChooser}}.}
\section{Detailed Description}{The \code{\link{GtkFileChooserButton}} is a widget that lets the user select a
file.  It implements the \code{\link{GtkFileChooser}} interface.  Visually, it is a
file name with a button to bring up a \code{\link{GtkFileChooserDialog}}.
The user can then use that dialog to change the file associated with
that button.  This widget does not support setting the "select-multiple"
property to \code{TRUE}.
  \preformatted{
# Create a button to let the user select a file in /etc
button <- gtkFileChooserButton("Select a file", "open")
button$setCurrentFolder("/etc")
}  
The \code{\link{GtkFileChooserButton}} supports the \code{\link{GtkFileChooserAction}}s \code{GTK_FILE_CHOOSER_ACTION_OPEN} and \code{GTK_FILE_CHOOSER_ACTION_SELECT_FOLDER}.
  \emph{  
The \code{\link{GtkFileChooserButton}} will ellipsize the label,
and thus will thus request little horizontal space.  To give the button
more space, you should call \code{\link{gtkWidgetSizeRequest}},
\code{\link{gtkFileChooserButtonSetWidthChars}}, or pack the button in
such a way that other interface elements give space to the widget.
  }}
\section{Structures}{\describe{\item{\code{GtkFileChooserButton}}{
This should not be accessed directly.  Use the accessor functions below. 

}}}
\section{Convenient Construction}{\code{gtkFileChooserButton} is the result of collapsing the constructors of \code{GtkFileChooserButton} (\code{\link{gtkFileChooserButtonNew}}, \code{\link{gtkFileChooserButtonNewWithBackend}}) and accepts a subset of its arguments matching the required arguments of one of its delegate constructors.}
\section{Properties}{\describe{
\item{\code{dialog} [\code{\link{GtkFileChooserDialog}} : Write / Construct Only]}{

Instance of the \code{\link{GtkFileChooserDialog}} associated with the button.  

  Since  2.6

}
\item{\code{title} [character : Read / Write]}{

Title to put on the \code{\link{GtkFileChooserDialog}} associated with the button.  

  Default value: "Select A File"  Since  2.6

}
\item{\code{width-chars} [integer : Read / Write]}{

The width of the entry and label inside the button, in characters.  

  Allowed values: >= -1  Default value: -1  Since  2.6

}
}}
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/GtkFileChooserButton.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\seealso{\code{\link{GtkFileChooserDialog}}}
\keyword{internal}
