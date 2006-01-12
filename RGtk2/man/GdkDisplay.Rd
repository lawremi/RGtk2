\alias{GdkDisplay}
\alias{gdkDisplay}
\name{GdkDisplay}
\title{GdkDisplay}
\description{Controls the keyboard/mouse pointer grabs and a set of   s}
\usage{
\link{gdkDisplayOpen}(display.name)
\link{gdkDisplayGetDefault}()
\link{gdkDisplayGetName}(object)
\link{gdkDisplayGetNScreens}(object)
\link{gdkDisplayGetScreen}(object, screen.num)
\link{gdkDisplayGetDefaultScreen}(object)
\link{gdkDisplayPointerUngrab}(object, time. = GDK_CURRENT_TIME)
\link{gdkDisplayKeyboardUngrab}(object, time. = GDK_CURRENT_TIME)
\link{gdkDisplayPointerIsGrabbed}(object)
\link{gdkDisplayBeep}(object)
\link{gdkDisplaySync}(object)
\link{gdkDisplayFlush}(object)
\link{gdkDisplayClose}(object)
\link{gdkDisplayListDevices}(object)
\link{gdkDisplayGetEvent}(object)
\link{gdkDisplayPeekEvent}(object)
\link{gdkDisplayPutEvent}(object, event)
\link{gdkDisplayAddClientMessageFilter}(object, message.type, func, data)
\link{gdkDisplaySetDoubleClickTime}(object, msec)
\link{gdkDisplaySetDoubleClickDistance}(object, distance)
\link{gdkDisplayGetPointer}(object)
\link{gdkDisplayGetWindowAtPointer}(object)
\link{gdkDisplaySetPointerHooks}(object, new.hooks)
\link{gdkDisplayWarpPointer}(object, screen, x, y)
\link{gdkDisplaySupportsCursorColor}(object)
\link{gdkDisplaySupportsCursorAlpha}(object)
\link{gdkDisplayGetDefaultCursorSize}(object)
\link{gdkDisplayGetMaximalCursorSize}(object)
\link{gdkDisplayGetDefaultGroup}(object)
\link{gdkDisplaySupportsSelectionNotification}(object)
\link{gdkDisplayRequestSelectionNotification}(object, selection)
\link{gdkDisplaySupportsClipboardPersistence}(object)
\link{gdkDisplayStoreClipboard}(object, clipboard.window, targets)
gdkDisplay(display.name)
}
\details{\code{\link{GdkDisplay}} objects purpose are two fold:
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
\section{Hierarchy}{\preformatted{  \link{GObject}
   +----GdkDisplay}}
\section{Structures}{\describe{\item{\code{GdkDisplay}}{
The \code{GdkDisplay} struct is the GDK representation
of an X display. All its fields are private and should not be accessed directly. 
  Since 2.2

}}}
\section{Convenient Construction}{\code{gdkDisplay} is the equivalent of \code{\link{gdkDisplayOpen}}.}
\section{Signals}{\describe{\item{\code{closed(display, is.error, user.data)}}{
The ::closed signal is emitted when the connection to the windowing
system for \code{display} is closed.  

  Since  2.2

\describe{
\item{\code{display}}{[\code{\link{GdkDisplay}}]  the object on which the signal is emitted}
\item{\code{is.error}}{[logical]  \code{TRUE} if the display was closed due to an error}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}}}
\references{\url{http://developer.gnome.org/doc/API/2.0/gdk/GdkDisplay.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
