\alias{gdk-General}
\alias{GdkGrabStatus}
\name{gdk-General}
\title{General}
\description{Library initialization and miscellaneous functions}
\section{Methods and Functions}{
\link{gdkNotifyStartupComplete}()
\link{gdkGetProgramClass}()
\link{gdkSetProgramClass}(program.class)
\link{gdkGetDisplay}()
\link{gdkFlush}()
\link{gdkScreenWidth}()
\link{gdkScreenHeight}()
\link{gdkScreenWidthMm}()
\link{gdkScreenHeightMm}()
\link{gdkPointerGrab}(window, owner.events = FALSE, event.mask = 0, confine.to = NULL, cursor = NULL, time = GDK_CURRENT_TIME)
\link{gdkPointerUngrab}(time = GDK_CURRENT_TIME)
\link{gdkPointerIsGrabbed}()
\link{gdkSetDoubleClickTime}(msec)
\link{gdkKeyboardGrab}(window, owner.events = FALSE, time = GDK_CURRENT_TIME)
\link{gdkKeyboardUngrab}(time = GDK_CURRENT_TIME)
\link{gdkBeep}()
}
\section{Detailed Description}{This section describes the GDK initialization functions and miscellaneous
utility functions.}
\section{Enums and Flags}{\describe{\item{\code{enum GdkGrabStatus}}{
Returned by \code{\link{gdkPointerGrab}} and \code{\link{gdkKeyboardGrab}} to indicate 
success or the reason for the failure of the grab attempt.

\describe{
\item{\code{GDK_GRAB_SUCCESS (success)}}{the resource was successfully grabbed.}
\item{\code{GDK_GRAB_ALREADY_GRABBED (already-grabbed)}}{the resource is actively grabbed by another client.}
\item{\code{GDK_GRAB_INVALID_TIME (invalid-time)}}{the resource was grabbed more recently than the 
  specified time.}
\item{\code{GDK_GRAB_NOT_VIEWABLE (not-viewable)}}{the grab window or the \code{confine.to} window are not
  viewable.}
\item{\code{GDK_GRAB_FROZEN (frozen)}}{the resource is frozen by an active grab of another client.}
}

}}}
\references{\url{http://developer.gnome.org/doc/API/2.0/gdk/gdk-General.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
