\alias{gdkNotifyStartupComplete}
\name{gdkNotifyStartupComplete}
\title{gdkNotifyStartupComplete}
\description{Indicates to the GUI environment that the application has finished
loading. If the applications opens windows, this function is
normally called after opening the application's initial set of
windows.}
\usage{gdkNotifyStartupComplete()}
\details{GTK+ will call this function automatically after opening the first
\code{\link{GtkWindow}} unless \code{\link{gtkWindowSetAutoStartupNotification}} is called 
to disable that feature.
  Since 2.2}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
