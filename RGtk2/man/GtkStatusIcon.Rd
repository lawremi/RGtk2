\alias{GtkStatusIcon}
\alias{gtkStatusIcon}
\name{GtkStatusIcon}
\title{GtkStatusIcon}
\description{Display an icon in the system tray}
\section{Methods and Functions}{
\code{\link{gtkStatusIconNew}()}\cr
\code{\link{gtkStatusIconNewFromPixbuf}(pixbuf)}\cr
\code{\link{gtkStatusIconNewFromFile}(filename)}\cr
\code{\link{gtkStatusIconNewFromStock}(stock.id)}\cr
\code{\link{gtkStatusIconNewFromIconName}(icon.name)}\cr
\code{\link{gtkStatusIconSetFromPixbuf}(object, pixbuf)}\cr
\code{\link{gtkStatusIconSetFromFile}(object, filename)}\cr
\code{\link{gtkStatusIconSetFromStock}(object, stock.id)}\cr
\code{\link{gtkStatusIconSetFromIconName}(object, icon.name)}\cr
\code{\link{gtkStatusIconGetStorageType}(object)}\cr
\code{\link{gtkStatusIconGetPixbuf}(object)}\cr
\code{\link{gtkStatusIconGetStock}(object)}\cr
\code{\link{gtkStatusIconGetIconName}(object)}\cr
\code{\link{gtkStatusIconGetSize}(object)}\cr
\code{\link{gtkStatusIconSetScreen}(object, screen)}\cr
\code{\link{gtkStatusIconGetScreen}(object)}\cr
\code{\link{gtkStatusIconSetTooltip}(object, tooltip.text)}\cr
\code{\link{gtkStatusIconSetVisible}(object, visible)}\cr
\code{\link{gtkStatusIconGetVisible}(object)}\cr
\code{\link{gtkStatusIconSetBlinking}(object, blinking)}\cr
\code{\link{gtkStatusIconGetBlinking}(object)}\cr
\code{\link{gtkStatusIconIsEmbedded}(object)}\cr
\code{\link{gtkStatusIconPositionMenu}(menu, user.data)}\cr
\code{\link{gtkStatusIconGetGeometry}(object)}\cr
\code{gtkStatusIcon()}
}
\section{Hierarchy}{\preformatted{  \link{GObject}
   +----GtkStatusIcon}}
\section{Detailed Description}{The "system tray" or notification area is normally used for transient icons 
that indicate some special state. For example, a system tray icon might 
appear to tell the user that they have new mail, or have an incoming instant 
message, or something along those lines. The basic idea is that creating an 
icon in the notification area is less annoying than popping up a dialog. 
  
A \code{\link{GtkStatusIcon}} object can be used to display an icon in a "system tray".
The icon can have a tooltip, and the user can interact with it by
activating it or popping up a context menu. Critical information should
not solely be displayed in a \code{\link{GtkStatusIcon}}, since it may not be
visible (e.g. when the user doesn't have a notification area on his panel).
This can be checked with \code{\link{gtkStatusIconIsEmbedded}}.
  
On X11, the implementation follows the freedesktop.org "System Tray" 
specification (\url{http://www.freedesktop.org/wiki/Standards/systemtray-spec}). Implementations of the "tray" side of this specification can
be found e.g. in the GNOME and KDE panel applications.
  
Note that a GtkStatusIcon is \emph{not} a widget, but just
a \code{\link{GObject}}. Making it a widget would be impractical, since the system tray
on Win32 doesn't allow to embed arbitrary widgets.}
\section{Structures}{\describe{\item{\code{GtkStatusIcon}}{
\emph{undocumented
}

}}}
\section{Convenient Construction}{\code{gtkStatusIcon} is the equivalent of \code{\link{gtkStatusIconNew}}.}
\section{Signals}{\describe{
\item{\code{The (status.icon, user.data)}}{
Gets emitted when the user activates the status icon. 
If and how status icons can activated is platform-dependent.  

  Since  2.10

\describe{
\item{\code{status.icon}}{[\code{\link{GtkStatusIcon}}]  the object which received the signal}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}


}
\item{\code{The (status.icon, button, activate.time, user.data)}}{
Gets emitted when the user brings up the context menu
of the status icon. Whether status icons can have context 
menus and how these are activated is platform-dependent.
  
The \code{button} and \code{activate.timeout} parameters should be 
passed as the last to arguments to \code{\link{gtkMenuPopup}}.  

  Since  2.10

\describe{
\item{\code{status.icon}}{[\code{\link{GtkStatusIcon}}]  the object which received the signal}
\item{\code{button}}{[numeric]  the button that was pressed, or 0 if the 
  signal is not emitted in response to a button press event}
\item{\code{activate.time}}{[numeric]  the timestamp of the event that
  triggered the signal emission}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}


}
\item{\code{The (status.icon, size, user.data)}}{
Gets emitted when the size available for the image
changes, e.g. because the notification area got resized.  

  Since  2.10

\describe{
\item{\code{status.icon}}{[\code{\link{GtkStatusIcon}}]  the object which received the signal}
\item{\code{size}}{[integer]  the new size}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

\emph{Returns:} [logical]  \code{TRUE} if the icon was updated for the new
size. Otherwise, GTK+ will scale the icon as necessary.

}
}}
\section{Properties}{\describe{
\item{\code{blinking} [logical : Read / Write]}{

Whether or not the status icon is blinking.  Default value: FALSE

}
\item{\code{embedded} [logical : Read]}{

\code{TRUE} if the statusicon is embedded in a notification area.  

  Default value: FALSE  Since  2.12

}
\item{\code{file} [character : Write]}{

Filename to load and display.  Default value: NULL

}
\item{\code{icon-name} [character : Read / Write]}{

The name of the icon from the icon theme.  Default value: NULL

}
\item{\code{orientation} [\code{\link{GtkOrientation}} : Read]}{

The orientation of the tray in which the statusicon 
is embedded.  

  Default value: GTK\_ORIENTATION\_HORIZONTAL  Since  2.12

}
\item{\code{pixbuf} [\code{\link{GdkPixbuf}} : Read / Write]}{

A GdkPixbuf to display.

}
\item{\code{screen} [\code{\link{GdkScreen}} : Read / Write]}{

The screen where this status icon will be displayed.

}
\item{\code{size} [integer : Read]}{

The size of the icon.  Allowed values: >= 0  Default value: 0

}
\item{\code{stock} [character : Read / Write]}{

Stock ID for a stock image to display.  Default value: NULL

}
\item{\code{storage-type} [\code{\link{GtkImageType}} : Read]}{

The representation being used for image data.  Default value: GTK\_IMAGE\_EMPTY

}
\item{\code{visible} [logical : Read / Write]}{

Whether or not the status icon is visible.  Default value: TRUE

}
}}
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/GtkStatusIcon.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
