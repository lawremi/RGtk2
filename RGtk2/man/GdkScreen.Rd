\alias{GdkScreen}
\name{GdkScreen}
\title{GdkScreen}
\description{Object representing a physical screen}
\section{Methods and Functions}{
\link{gdkScreenGetDefault}()
\link{gdkScreenGetDefaultColormap}(object)
\link{gdkScreenSetDefaultColormap}(object, colormap)
\link{gdkScreenGetSystemColormap}(object)
\link{gdkScreenGetSystemVisual}(object)
\link{gdkScreenGetRgbColormap}(object)
\link{gdkScreenGetRgbVisual}(object)
\link{gdkScreenGetRgbaColormap}(object)
\link{gdkScreenGetRgbaVisual}(object)
\link{gdkScreenGetRootWindow}(object)
\link{gdkScreenGetDisplay}(object)
\link{gdkScreenGetNumber}(object)
\link{gdkScreenGetWidth}(object)
\link{gdkScreenGetHeight}(object)
\link{gdkScreenGetWidthMm}(object)
\link{gdkScreenGetHeightMm}(object)
\link{gdkScreenListVisuals}(object)
\link{gdkScreenGetToplevelWindows}(object)
\link{gdkScreenMakeDisplayName}(object)
\link{gdkScreenGetNMonitors}(object)
\link{gdkScreenGetMonitorGeometry}(object, monitor.num)
\link{gdkScreenGetMonitorAtPoint}(object, x, y)
\link{gdkScreenGetMonitorAtWindow}(object, window)
\link{gdkScreenBroadcastClientMessage}(object, event)
\link{gdkScreenGetSetting}(object, name)
\link{gdkSpawnCommandLineOnScreen}(screen, command.line)
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
