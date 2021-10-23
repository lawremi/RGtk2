\alias{gdk-General}
\alias{GdkGrabStatus}
\name{gdk-General}
\title{General}
\description{Library initialization and miscellaneous functions}
\section{Methods and Functions}{
\code{\link{gdkNotifyStartupComplete}()}\cr
\code{\link{gdkNotifyStartupCompleteWithId}(id)}\cr
\code{\link{gdkGetProgramClass}()}\cr
\code{\link{gdkSetProgramClass}(program.class)}\cr
\code{\link{gdkGetDisplay}()}\cr
\code{\link{gdkFlush}()}\cr
\code{\link{gdkScreenWidth}()}\cr
\code{\link{gdkScreenHeight}()}\cr
\code{\link{gdkScreenWidthMm}()}\cr
\code{\link{gdkScreenHeightMm}()}\cr
\code{\link{gdkPointerGrab}(window, owner.events = FALSE, event.mask = 0, confine.to = NULL, cursor = NULL, time = "GDK_CURRENT_TIME")}\cr
\code{\link{gdkPointerUngrab}(time = "GDK_CURRENT_TIME")}\cr
\code{\link{gdkPointerIsGrabbed}()}\cr
\code{\link{gdkSetDoubleClickTime}(msec)}\cr
\code{\link{gdkKeyboardGrab}(window, owner.events = FALSE, time = "GDK_CURRENT_TIME")}\cr
\code{\link{gdkKeyboardUngrab}(time = "GDK_CURRENT_TIME")}\cr
\code{\link{gdkBeep}()}\cr
}
\section{Detailed Description}{This section describes the GDK initialization functions and miscellaneous
utility functions.}
\section{Enums and Flags}{\describe{\item{\verb{GdkGrabStatus}}{
Returned by \code{\link{gdkPointerGrab}} and \code{\link{gdkKeyboardGrab}} to indicate
success or the reason for the failure of the grab attempt.

\describe{
\item{\verb{success}}{the resource was successfully grabbed.}
\item{\verb{already-grabbed}}{the resource is actively grabbed by another client.}
\item{\verb{invalid-time}}{the resource was grabbed more recently than the 
  specified time.}
\item{\verb{not-viewable}}{the grab window or the \code{confine.to} window are not
  viewable.}
\item{\verb{frozen}}{the resource is frozen by an active grab of another client.}
}

}}}
\references{\url{https://developer-old.gnome.org/gdk2/stable/gdk2-General.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
