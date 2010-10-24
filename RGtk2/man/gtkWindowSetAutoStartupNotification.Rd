\alias{gtkWindowSetAutoStartupNotification}
\name{gtkWindowSetAutoStartupNotification}
\title{gtkWindowSetAutoStartupNotification}
\description{By default, after showing the first \code{\link{GtkWindow}}, GTK+ calls 
\code{\link{gdkNotifyStartupComplete}}.  Call this function to disable 
the automatic startup notification. You might do this if your 
first window is a splash screen, and you want to delay notification 
until after your real main window has been shown, for example.}
\usage{gtkWindowSetAutoStartupNotification(setting)}
\arguments{\item{\verb{setting}}{\code{TRUE} to automatically do startup notification}}
\details{In that example, you would disable startup notification
temporarily, show your splash screen, then re-enable it so that
showing the main window would automatically result in notification.
  Since 2.2}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
