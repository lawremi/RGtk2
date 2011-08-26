\alias{gdkNotifyStartupCompleteWithId}
\name{gdkNotifyStartupCompleteWithId}
\title{gdkNotifyStartupCompleteWithId}
\description{Indicates to the GUI environment that the application has finished
loading, using a given identifier.}
\usage{gdkNotifyStartupCompleteWithId(id)}
\arguments{\item{\verb{id}}{a startup-notification identifier, for which notification
process should be completed}}
\details{GTK+ will call this function automatically for \code{\link{GtkWindow}} with custom
startup-notification identifier unless
\code{\link{gtkWindowSetAutoStartupNotification}} is called to disable
that feature.
  Since 2.12}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
