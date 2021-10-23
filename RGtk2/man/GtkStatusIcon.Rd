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
\code{\link{gtkStatusIconNewFromGicon}(icon)}\cr
\code{\link{gtkStatusIconSetFromPixbuf}(object, pixbuf)}\cr
\code{\link{gtkStatusIconSetFromFile}(object, filename)}\cr
\code{\link{gtkStatusIconSetFromStock}(object, stock.id)}\cr
\code{\link{gtkStatusIconSetFromIconName}(object, icon.name)}\cr
\code{\link{gtkStatusIconSetFromGicon}(object, icon)}\cr
\code{\link{gtkStatusIconGetStorageType}(object)}\cr
\code{\link{gtkStatusIconGetPixbuf}(object)}\cr
\code{\link{gtkStatusIconGetStock}(object)}\cr
\code{\link{gtkStatusIconGetIconName}(object)}\cr
\code{\link{gtkStatusIconGetGicon}(object)}\cr
\code{\link{gtkStatusIconGetSize}(object)}\cr
\code{\link{gtkStatusIconSetScreen}(object, screen)}\cr
\code{\link{gtkStatusIconGetScreen}(object)}\cr
\code{\link{gtkStatusIconSetTooltip}(object, tooltip.text)}\cr
\code{\link{gtkStatusIconSetTooltip}(object, tooltip.text)}\cr
\code{\link{gtkStatusIconSetTooltipText}(object, text)}\cr
\code{\link{gtkStatusIconGetTooltipText}(object)}\cr
\code{\link{gtkStatusIconSetTooltipMarkup}(object, markup = NULL)}\cr
\code{\link{gtkStatusIconGetTooltipMarkup}(object)}\cr
\code{\link{gtkStatusIconSetHasTooltip}(object, has.tooltip)}\cr
\code{\link{gtkStatusIconGetHasTooltip}(object)}\cr
\code{\link{gtkStatusIconSetTitle}(object, title)}\cr
\code{\link{gtkStatusIconGetTitle}(object)}\cr
\code{\link{gtkStatusIconSetName}(object, name)}\cr
\code{\link{gtkStatusIconSetVisible}(object, visible)}\cr
\code{\link{gtkStatusIconGetVisible}(object)}\cr
\code{\link{gtkStatusIconSetBlinking}(object, blinking)}\cr
\code{\link{gtkStatusIconGetBlinking}(object)}\cr
\code{\link{gtkStatusIconIsEmbedded}(object)}\cr
\code{\link{gtkStatusIconPositionMenu}(menu, user.data)}\cr
\code{\link{gtkStatusIconGetGeometry}(object)}\cr
\code{\link{gtkStatusIconGetX11WindowId}(object)}\cr
\code{gtkStatusIcon(icon)}
}
\section{Hierarchy}{\preformatted{GObject
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
\section{Structures}{\describe{\item{\verb{GtkStatusIcon}}{
\emph{undocumented
}

}}}
\section{Convenient Construction}{\code{gtkStatusIcon} is the result of collapsing the constructors of \code{GtkStatusIcon} (\code{\link{gtkStatusIconNew}}, \code{\link{gtkStatusIconNewFromGicon}}) and accepts a subset of its arguments matching the required arguments of one of its delegate constructors.}
\section{Signals}{\describe{
\item{\code{activate(status.icon, user.data)}}{
Gets emitted when the user activates the status icon.
If and how status icons can activated is platform-dependent.
  
Unlike most G_SIGNAL_ACTION signals, this signal is meant to
be used by applications and should be wrapped by language bindings.
  Since 2.10

\describe{
\item{\code{status.icon}}{the object which received the signal}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{button-press-event(status.icon, event, user.data)}}{
The ::button-press-event signal will be emitted when a button
(typically from a mouse) is pressed.
  
Whether this event is emitted is platform-dependent.  Use the ::activate
and ::popup-menu signals in preference.
  Since 2.14

\describe{
\item{\code{status.icon}}{the object which received the signal}
\item{\code{event}}{the \code{\link{GdkEventButton}} which triggered this signal}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}

\emph{Returns:} [logical] \code{TRUE} to stop other handlers from being invoked
for the event. \code{FALSE} to propagate the event further.

}
\item{\code{button-release-event(status.icon, event, user.data)}}{
The ::button-release-event signal will be emitted when a button
(typically from a mouse) is released.
  
Whether this event is emitted is platform-dependent.  Use the ::activate
and ::popup-menu signals in preference.
  Since 2.14

\describe{
\item{\code{status.icon}}{the object which received the signal}
\item{\code{event}}{the \code{\link{GdkEventButton}} which triggered this signal}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}

\emph{Returns:} [logical] \code{TRUE} to stop other handlers from being invoked
for the event. \code{FALSE} to propagate the event further.

}
\item{\code{popup-menu(status.icon, button, activate.time, user.data)}}{
Gets emitted when the user brings up the context menu
of the status icon. Whether status icons can have context
menus and how these are activated is platform-dependent.
  
The \code{button} and \code{activate.time} parameters should be
passed as the last to arguments to \code{\link{gtkMenuPopup}}.
  
Unlike most G_SIGNAL_ACTION signals, this signal is meant to
be used by applications and should be wrapped by language bindings.
  Since 2.10

\describe{
\item{\code{status.icon}}{the object which received the signal}
\item{\code{button}}{the button that was pressed, or 0 if the
signal is not emitted in response to a button press event}
\item{\code{activate.time}}{the timestamp of the event that
triggered the signal emission}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{query-tooltip(status.icon, x, y, keyboard.mode, tooltip, user.data)}}{
Emitted when the \verb{"gtk-tooltip-timeout"} has expired with the
cursor hovering above \code{status.icon}; or emitted when \code{status.icon} got
focus in keyboard mode.
  
Using the given coordinates, the signal handler should determine
whether a tooltip should be shown for \code{status.icon}. If this is
the case \code{TRUE} should be returned, \code{FALSE} otherwise. Note that if
\code{keyboard.mode} is \code{TRUE}, the values of \code{x} and \code{y} are undefined and
should not be used.
  
The signal handler is free to manipulate \code{tooltip} with the therefore
destined function calls.
  
Whether this signal is emitted is platform-dependent.
For plain text tooltips, use \verb{"tooltip-text"} in preference.
  Since 2.16

\describe{
\item{\code{status.icon}}{the object which received the signal}
\item{\code{x}}{the x coordinate of the cursor position where the request has been
emitted, relative to \code{status.icon}}
\item{\code{y}}{the y coordinate of the cursor position where the request has been
emitted, relative to \code{status.icon}}
\item{\code{keyboard.mode}}{\code{TRUE} if the tooltip was trigged using the keyboard}
\item{\code{tooltip}}{a \code{\link{GtkTooltip}}}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}

\emph{Returns:} [logical] \code{TRUE} if \code{tooltip} should be shown right now, \code{FALSE} otherwise.

}
\item{\code{scroll-event(status.icon, event, user.data)}}{
The ::scroll-event signal is emitted when a button in the 4 to 7
range is pressed. Wheel mice are usually configured to generate
button press events for buttons 4 and 5 when the wheel is turned.
  
Whether this event is emitted is platform-dependent.

\describe{
\item{\code{status.icon}}{the object which received the signal.}
\item{\code{event}}{the \code{\link{GdkEventScroll}} which triggered this signal}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}

\emph{Returns:} [logical] \code{TRUE} to stop other handlers from being invoked for the event.
\code{FALSE} to propagate the event further.

}
\item{\code{size-changed(status.icon, size, user.data)}}{
Gets emitted when the size available for the image
changes, e.g. because the notification area got resized.
  Since 2.10

\describe{
\item{\code{status.icon}}{the object which received the signal}
\item{\code{size}}{the new size}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}

\emph{Returns:} [logical] \code{TRUE} if the icon was updated for the new
size. Otherwise, GTK+ will scale the icon as necessary.

}
}}
\section{Properties}{\describe{
\item{\verb{blinking} [logical : Read / Write]}{

Whether or not the status icon is blinking.  Default value: FALSE

}
\item{\verb{embedded} [logical : Read]}{

\code{TRUE} if the statusicon is embedded in a notification area.
  Default value: FALSE  Since 2.12

}
\item{\verb{file} [character : *                : Write]}{

Filename to load and display.  Default value: NULL

}
\item{\verb{gicon} [\code{\link{GIcon}} : *                : Read / Write]}{

The \code{\link{GIcon}} displayed in the \code{\link{GtkStatusIcon}}. For themed icons,
the image will be updated automatically if the theme changes.
  Since 2.14

}
\item{\verb{has-tooltip} [logical : Read / Write]}{

Enables or disables the emission of \verb{"query-tooltip"} on
\code{status.icon}.  A value of \code{TRUE} indicates that \code{status.icon} can have a
tooltip, in this case the status icon will be queried using
\verb{"query-tooltip"} to determine whether it will provide a
tooltip or not.
  
Note that setting this property to \code{TRUE} for the first time will change
the event masks of the windows of this status icon to include leave-notify
and motion-notify events. This will not be undone when the property is set
to \code{FALSE} again.
  
Whether this property is respected is platform dependent.
For plain text tooltips, use \verb{"tooltip-text"} in preference.
  Default value: FALSE  Since 2.16

}
\item{\verb{icon-name} [character : *                : Read / Write]}{

The name of the icon from the icon theme.  Default value: NULL

}
\item{\verb{orientation} [\code{\link{GtkOrientation}} : Read]}{

The orientation of the tray in which the statusicon
is embedded.
  Default value: GTK_ORIENTATION_HORIZONTAL  Since 2.12

}
\item{\verb{pixbuf} [\code{\link{GdkPixbuf}} : *            : Read / Write]}{

A GdkPixbuf to display.

}
\item{\verb{screen} [\code{\link{GdkScreen}} : *            : Read / Write]}{

The screen where this status icon will be displayed.

}
\item{\verb{size} [integer : Read]}{

The size of the icon.  Allowed values: >= 0  Default value: 0

}
\item{\verb{stock} [character : *                : Read / Write]}{

Stock ID for a stock image to display.  Default value: NULL

}
\item{\verb{storage-type} [\code{\link{GtkImageType}} : Read]}{

The representation being used for image data.  Default value: GTK_IMAGE_EMPTY

}
\item{\verb{title} [character : *                : Read / Write]}{

The title of this tray icon. This should be a short, human-readable,
localized string describing the tray icon. It may be used by tools
like screen readers to render the tray icon.
  Default value: NULL  Since 2.18

}
\item{\verb{tooltip-markup} [character : *                : Read / Write]}{

Sets the text of tooltip to be the given string, which is marked up
with the Pango text markup
language. Also see \code{\link{gtkTooltipSetMarkup}}.
  
This is a convenience property which will take care of getting the
tooltip shown if the given string is not \code{NULL}.
\verb{"has-tooltip"} will automatically be set to \code{TRUE} and
the default handler for the \verb{"query-tooltip"} signal
will take care of displaying the tooltip.
  
On some platforms, embedded markup will be ignored.
  Default value: NULL  Since 2.16

}
\item{\verb{tooltip-text} [character : *                : Read / Write]}{

Sets the text of tooltip to be the given string.
  
Also see \code{\link{gtkTooltipSetText}}.
  
This is a convenience property which will take care of getting the
tooltip shown if the given string is not \code{NULL}.
\verb{"has-tooltip"} will automatically be set to \code{TRUE} and
the default handler for the \verb{"query-tooltip"} signal
will take care of displaying the tooltip.
  
Note that some platforms have limitations on the length of tooltips
that they allow on status icons, e.g. Windows only shows the first
64 characters.
  Default value: NULL  Since 2.16

}
\item{\verb{visible} [logical : Read / Write]}{

Whether or not the status icon is visible.  Default value: TRUE

}
}}
\references{\url{https://developer-old.gnome.org/gtk2/stable/GtkStatusIcon.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
