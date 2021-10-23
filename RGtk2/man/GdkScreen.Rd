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
\code{\link{gdkScreenIsComposited}(object)}\cr
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
\code{\link{gdkScreenGetPrimaryMonitor}(object)}\cr
\code{\link{gdkScreenGetMonitorGeometry}(object, monitor.num)}\cr
\code{\link{gdkScreenGetMonitorAtPoint}(object, x, y)}\cr
\code{\link{gdkScreenGetMonitorAtWindow}(object, window)}\cr
\code{\link{gdkScreenGetMonitorHeightMm}(object, monitor.num)}\cr
\code{\link{gdkScreenGetMonitorWidthMm}(object, monitor.num)}\cr
\code{\link{gdkScreenGetMonitorPlugName}(object, monitor.num)}\cr
\code{\link{gdkScreenBroadcastClientMessage}(object, event)}\cr
\code{\link{gdkScreenGetSetting}(object, name)}\cr
\code{\link{gdkScreenGetFontOptions}(object)}\cr
\code{\link{gdkScreenSetFontOptions}(object, options)}\cr
\code{\link{gdkScreenGetResolution}(object)}\cr
\code{\link{gdkScreenSetResolution}(object, dpi)}\cr
\code{\link{gdkScreenGetActiveWindow}(object)}\cr
\code{\link{gdkScreenGetWindowStack}(object)}\cr
\code{\link{gdkSpawnCommandLineOnScreen}(screen, command.line, .errwarn = TRUE)}\cr

}
\section{Hierarchy}{\preformatted{GObject
   +----GdkScreen}}
\section{Detailed Description}{\code{\link{GdkScreen}} objects are the GDK representation of a physical screen. It is used
  throughout GDK and GTK+ to specify which screen the top level windows
  are to be displayed on.
  It is also used to query the screen specification and default settings such as
  the default colormap (\code{\link{gdkScreenGetDefaultColormap}}),
  the screen width (\code{\link{gdkScreenGetWidth}}), etc.
  Note that a screen may consist of multiple monitors which are merged to
form a large screen area.}
\section{Structures}{\describe{\item{\verb{GdkScreen}}{
This is a currently just a placeholder typedef for the first argument of
the \code{window.at.pointer} function in \verb{GdkPointerHooks}. It will be used
when GDK gets multihead support.
  Since 2.2

}}}
\section{Signals}{\describe{
\item{\code{composited-changed(screen, user.data)}}{
The ::composited-changed signal is emitted when the composited
status of the screen changes
  Since 2.10

\describe{
\item{\code{screen}}{the object on which the signal is emitted}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{monitors-changed(screen, user.data)}}{
The ::monitors-changed signal is emitted when the number, size
or position of the monitors attached to the screen change.
  
Only for X11 and OS X for now. A future implementation for Win32
may be a possibility.
  Since 2.14

\describe{
\item{\code{screen}}{the object on which the signal is emitted}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{size-changed(screen, user.data)}}{
The ::size-changed signal is emitted when the pixel width or
height of a screen changes.
  Since 2.2

\describe{
\item{\code{screen}}{the object on which the signal is emitted}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
}}
\section{Properties}{\describe{
\item{\verb{font-options} [R object : Read / Write]}{

The default font options for the screen.

}
\item{\verb{resolution} [numeric : Read / Write]}{

The resolution for fonts on the screen.  Default value: -1

}
}}
\references{\url{https://developer-old.gnome.org/gdk2/stable/GdkScreen.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
