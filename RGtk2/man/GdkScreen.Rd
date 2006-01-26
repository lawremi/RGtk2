\alias{GdkScreen}
\name{GdkScreen}
\title{GdkScreen}
\description{Object representing a physical screen}
\section{Methods and Functions}{
\code{\link{gdkScreenGetDefault}()}\cr
\code{\link{gdkScreenGetDefaultColormap}(object)}\cr
\code{\link{gdkScreenSetDefaultColormap}(object, colormap)}\cr
\code{\link{gdkScreenGetSystemColormap}(object)}\cr
\code{\link{gdkScreenGetSystemVisual}(object)}\cr
\code{\link{gdkScreenGetRgbColormap}(object)}\cr
\code{\link{gdkScreenGetRgbVisual}(object)}\cr
\code{\link{gdkScreenGetRgbaColormap}(object)}\cr
\code{\link{gdkScreenGetRgbaVisual}(object)}\cr
\code{\link{gdkScreenGetRootWindow}(object)}\cr
\code{\link{gdkScreenGetDisplay}(object)}\cr
\code{\link{gdkScreenGetNumber}(object)}\cr
\code{\link{gdkScreenGetWidth}(object)}\cr
\code{\link{gdkScreenGetHeight}(object)}\cr
\code{\link{gdkScreenGetWidthMm}(object)}\cr
\code{\link{gdkScreenGetHeightMm}(object)}\cr
\code{\link{gdkScreenListVisuals}(object)}\cr
\code{\link{gdkScreenGetToplevelWindows}(object)}\cr
\code{\link{gdkScreenMakeDisplayName}(object)}\cr
\code{\link{gdkScreenGetNMonitors}(object)}\cr
\code{\link{gdkScreenGetMonitorGeometry}(object, monitor.num)}\cr
\code{\link{gdkScreenGetMonitorAtPoint}(object, x, y)}\cr
\code{\link{gdkScreenGetMonitorAtWindow}(object, window)}\cr
\code{\link{gdkScreenBroadcastClientMessage}(object, event)}\cr
\code{\link{gdkScreenGetSetting}(object, name)}\cr
\code{\link{gdkSpawnCommandLineOnScreen}(screen, command.line, .errwarn = TRUE)}\cr

}
\section{Hierarchy}{\preformatted{  \link{GObject}
   +----GdkScreen}}
\section{Detailed Description}{  \code{\link{GdkScreen}} objects are the GDK representation of a physical screen. It is used 
  throughout GDK and GTK+ to specify which screen the top level windows
  are to be displayed on. 
  It is also used to query the screen specification and default settings such as 
  the default colormap (\code{\link{gdkScreenGetDefaultColormap}}),
  the screen width (\code{\link{gdkScreenGetWidth}}), etc.
  Note that a screen may consist of multiple monitors which are merged to
form a large screen area. }
\section{Structures}{\describe{\item{\code{GdkScreen}}{
This is a currently just a placeholder typedef for the first argument of 
the \code{window.at.pointer} function in \code{GdkPointerHooks}. It will be used
when GDK gets multihead support. 
  Since 2.2

}}}
\section{Signals}{\describe{\item{\code{size-changed(screen, user.data)}}{
The ::size_changed signal is emitted when the pixel width or 
height of a screen changes.  

  Since  2.2

\describe{
\item{\code{screen}}{[\code{\link{GdkScreen}}]  the object on which the signal is emitted}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}}}
\references{\url{http://developer.gnome.org/doc/API/2.0/gdk/GdkScreen.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
