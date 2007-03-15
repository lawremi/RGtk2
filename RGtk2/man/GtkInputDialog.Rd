\alias{GtkInputDialog}
\alias{gtkInputDialog}
\name{GtkInputDialog}
\title{GtkInputDialog}
\description{Configure devices for the XInput extension}
\section{Methods and Functions}{
\code{\link{gtkInputDialogNew}(show = TRUE)}\cr
\code{gtkInputDialog(show = TRUE)}
}
\section{Hierarchy}{\preformatted{  \link{GObject}
   +----GInitiallyUnowned
         +----\link{GtkObject}
               +----\link{GtkWidget}
                     +----\link{GtkContainer}
                           +----\link{GtkBin}
                                 +----\link{GtkWindow}
                                       +----\link{GtkDialog}
                                             +----GtkInputDialog}}
\section{Interfaces}{GtkInputDialog implements
 AtkImplementorIface.}
\section{Detailed Description}{ NOTE this widget is considered too specialized/little-used for
 GTK+, and will in the future be moved to some other package.  If
 your application needs this widget, feel free to use it, as the
 widget does work and is useful in some applications; it's just not
 of general interest. However, we are not accepting new features for
 the widget, and it will eventually move out of the GTK+
 distribution.
  
\code{\link{GtkInputDialog}} displays a dialog which allows the user
to configure XInput extension devices. For each
device, they can control the mode of the device
(disabled, screen-relative, or window-relative), 
the mapping of axes to coordinates, and the
mapping of the devices function keys to key press
events.
  
\code{\link{GtkInputDialog}} contains two buttons to which
the application can connect; one for closing
the dialog, and one for saving the changes.
No actions are bound to these by default.
The changes that the user makes take effect
immediately. }
\section{Structures}{\describe{\item{\code{GtkInputDialog}}{
\emph{undocumented
}

}}}
\section{Convenient Construction}{\code{gtkInputDialog} is the equivalent of \code{\link{gtkInputDialogNew}}.}
\section{Signals}{\describe{
\item{\code{disable-device(inputdialog, deviceid, user.data)}}{
This signal is emitted when the user changes the 
mode of a device from a \code{GDK_MODE_SCREEN} or \code{GDK_MODE_WINDOW}
to \code{GDK_MODE_ENABLED}.

\describe{
\item{\code{inputdialog}}{[\code{\link{GtkInputDialog}}] the object which received the signal.}
\item{\code{deviceid}}{[\code{\link{GdkDevice}}] The ID of the newly disabled device.}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}


}
\item{\code{enable-device(inputdialog, deviceid, user.data)}}{
This signal is emitted when the user changes the 
mode of a device from \code{GDK_MODE_DISABLED} to a 
\code{GDK_MODE_SCREEN} or \code{GDK_MODE_WINDOW}.

\describe{
\item{\code{inputdialog}}{[\code{\link{GtkInputDialog}}] the object which received the signal.}
\item{\code{deviceid}}{[\code{\link{GdkDevice}}] The ID of the newly enabled device.}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}


}
}}
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/GtkInputDialog.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
