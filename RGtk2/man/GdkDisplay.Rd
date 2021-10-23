\alias{GdkDisplay}
\alias{gdkDisplay}
\name{GdkDisplay}
\title{GdkDisplay}
\description{Controls the keyboard/mouse pointer grabs and a set of   s}
\section{Methods and Functions}{
\code{\link{gdkDisplayOpen}(display.name)}\cr
\code{\link{gdkDisplayGetDefault}()}\cr
\code{\link{gdkDisplayGetName}(object)}\cr
\code{\link{gdkDisplayGetNScreens}(object)}\cr
\code{\link{gdkDisplayGetScreen}(object, screen.num)}\cr
\code{\link{gdkDisplayGetDefaultScreen}(object)}\cr
\code{\link{gdkDisplayPointerUngrab}(object, time. = "GDK_CURRENT_TIME")}\cr
\code{\link{gdkDisplayKeyboardUngrab}(object, time. = "GDK_CURRENT_TIME")}\cr
\code{\link{gdkDisplayPointerIsGrabbed}(object)}\cr
\code{\link{gdkDisplayBeep}(object)}\cr
\code{\link{gdkDisplaySync}(object)}\cr
\code{\link{gdkDisplayFlush}(object)}\cr
\code{\link{gdkDisplayClose}(object)}\cr
\code{\link{gdkDisplayListDevices}(object)}\cr
\code{\link{gdkDisplayGetEvent}(object)}\cr
\code{\link{gdkDisplayPeekEvent}(object)}\cr
\code{\link{gdkDisplayPutEvent}(object, event)}\cr
\code{\link{gdkDisplayAddClientMessageFilter}(object, message.type, func, data)}\cr
\code{\link{gdkDisplaySetDoubleClickTime}(object, msec)}\cr
\code{\link{gdkDisplaySetDoubleClickDistance}(object, distance)}\cr
\code{\link{gdkDisplayGetPointer}(object)}\cr
\code{\link{gdkDisplayGetWindowAtPointer}(object)}\cr
\code{\link{gdkDisplaySetPointerHooks}(object, new.hooks)}\cr
\code{\link{gdkDisplayWarpPointer}(object, screen, x, y)}\cr
\code{\link{gdkDisplaySupportsCursorColor}(object)}\cr
\code{\link{gdkDisplaySupportsCursorAlpha}(object)}\cr
\code{\link{gdkDisplayGetDefaultCursorSize}(object)}\cr
\code{\link{gdkDisplayGetMaximalCursorSize}(object)}\cr
\code{\link{gdkDisplayGetDefaultGroup}(object)}\cr
\code{\link{gdkDisplaySupportsSelectionNotification}(object)}\cr
\code{\link{gdkDisplayRequestSelectionNotification}(object, selection)}\cr
\code{\link{gdkDisplaySupportsClipboardPersistence}(object)}\cr
\code{\link{gdkDisplayStoreClipboard}(object, clipboard.window, targets)}\cr
\code{\link{gdkDisplaySupportsShapes}(object)}\cr
\code{\link{gdkDisplaySupportsInputShapes}(object)}\cr
\code{\link{gdkDisplaySupportsComposite}(object)}\cr
\code{gdkDisplay(display.name)}
}
\section{Hierarchy}{\preformatted{GObject
   +----GdkDisplay}}
\section{Detailed Description}{\code{\link{GdkDisplay}} objects purpose are two fold:
\itemize{
\item To grab/ungrab keyboard focus and mouse pointer
\item To manage and provide information about the \code{\link{GdkScreen}}(s)
		available for this \code{\link{GdkDisplay}}
	  
}
  \code{\link{GdkDisplay}} objects are the GDK representation of the X Display which can be
  described as \emph{a workstation consisting of a keyboard a pointing
  device (such as a mouse) and one or more screens}.
  It is used to open and keep track of various \code{\link{GdkScreen}} objects currently
  instanciated by the application. It is also used to grab and release the keyboard
  and the mouse pointer.}
\section{Structures}{\describe{\item{\verb{GdkDisplay}}{
The \code{GdkDisplay} struct is the GDK representation
of an X display. All its fields are private and should not be accessed directly.
  Since 2.2

}}}
\section{Convenient Construction}{\code{gdkDisplay} is the equivalent of \code{\link{gdkDisplayOpen}}.}
\section{Signals}{\describe{\item{\code{closed(display, is.error, user.data)}}{
The ::closed signal is emitted when the connection to the windowing
system for \code{display} is closed.
  Since 2.2

\describe{
\item{\code{display}}{the object on which the signal is emitted}
\item{\code{is.error}}{\code{TRUE} if the display was closed due to an error}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}}}
\references{\url{https://developer-old.gnome.org/gdk2/stable/GdkDisplay.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
