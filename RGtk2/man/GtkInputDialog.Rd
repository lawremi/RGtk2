\alias{GtkInputDialog}
\alias{gtkInputDialog}
\name{GtkInputDialog}
\title{GtkInputDialog}
\description{Configure devices for the XInput extension}
\section{Methods and Functions}{
\code{\link{gtkInputDialogNew}(show = TRUE)}\cr
\code{gtkInputDialog(show = TRUE)}
}
\section{Hierarchy}{\preformatted{GObject
   +----GInitiallyUnowned
         +----GtkObject
               +----GtkWidget
                     +----GtkContainer
                           +----GtkBin
                                 +----GtkWindow
                                       +----GtkDialog
                                             +----GtkInputDialog}}
\section{Interfaces}{GtkInputDialog implements
 AtkImplementorIface and  \code{\link{GtkBuildable}}.}
\section{Detailed Description}{\code{\link{GtkInputDialog}} displays a dialog which allows the user
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
immediately.
  
As of GTK+ 2.20, \code{\link{GtkInputDialog}} has been deprecated since it is too specialized.}
\section{Structures}{\describe{\item{\verb{GtkInputDialog}}{
\strong{WARNING: \code{GtkInputDialog} is deprecated and should not be used in newly-written code.}
\emph{undocumented
}

}}}
\section{Convenient Construction}{\code{gtkInputDialog} is the equivalent of \code{\link{gtkInputDialogNew}}.}
\section{Signals}{\describe{
\item{\code{disable-device(inputdialog, deviceid, user.data)}}{
This signal is emitted when the user changes the
mode of a device from a \verb{GDK_MODE_SCREEN} or \verb{GDK_MODE_WINDOW}
to \verb{GDK_MODE_ENABLED}.

\describe{
\item{\code{inputdialog}}{the object which received the signal.}
\item{\code{deviceid}}{The ID of the newly disabled device.}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{enable-device(inputdialog, deviceid, user.data)}}{
This signal is emitted when the user changes the
mode of a device from \verb{GDK_MODE_DISABLED} to a
\verb{GDK_MODE_SCREEN} or \verb{GDK_MODE_WINDOW}.

\describe{
\item{\code{inputdialog}}{the object which received the signal.}
\item{\code{deviceid}}{The ID of the newly enabled device.}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
}}
\references{\url{https://developer-old.gnome.org/gtk2/stable/GtkInputDialog.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
