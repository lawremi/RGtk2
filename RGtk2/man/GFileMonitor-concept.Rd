\alias{GFileMonitor}
\alias{GFileMonitorEvent}
\name{GFileMonitor-concept}
\title{GFileMonitor}
\description{File Monitor}
\section{Methods and Functions}{
\code{\link{gFileMonitorCancel}(object)}\cr
\code{\link{gFileMonitorIsCancelled}(object)}\cr
\code{\link{gFileMonitorSetRateLimit}(object, limit.msecs)}\cr
\code{\link{gFileMonitorEmitEvent}(object, file, other.file, event.type)}\cr

}
\section{Hierarchy}{\preformatted{
GEnum
   +----GFileMonitorEvent
GObject
   +----GFileMonitor
}}
\section{Detailed Description}{Monitors a file or directory for changes.
  
To obtain a \code{\link{GFileMonitor}} for a file or directory, use
\code{\link{gFileMonitor}}, \code{\link{gFileMonitorFile}}, or
\code{\link{gFileMonitorDirectory}}.
  
To get informed about changes to the file or directory you are
monitoring, connect to the \verb{"changed"} signal. The
signal will be emitted in the thread-default main
context of the thread that the monitor was created in
(though if the global default main context is blocked, this may
cause notifications to be blocked even if the thread-default
context is still running).}
\section{Structures}{\describe{\item{\verb{GFileMonitor}}{
Watches for changes to a file.

}}}
\section{Enums and Flags}{\describe{\item{\verb{GFileMonitorEvent}}{
Specifies what type of event a monitor event is.

\describe{
\item{\verb{changed}}{a file changed.}
\item{\verb{changes-done-hint}}{a hint that this was probably the last change in a set of changes.}
\item{\verb{deleted}}{a file was deleted.}
\item{\verb{created}}{a file was created.}
\item{\verb{attribute-changed}}{a file attribute was changed.}
\item{\verb{pre-unmount}}{the file location will soon be unmounted.}
\item{\verb{unmounted}}{the file location was unmounted.}
}

}}}
\section{Signals}{\describe{\item{\code{changed(monitor, file, other.file, event.type, user.data)}}{
Emitted when a file has been changed.

\describe{
\item{\code{monitor}}{a \code{\link{GFileMonitor}}.}
\item{\code{file}}{a \code{\link{GFile}}.}
\item{\code{other.file}}{a \code{\link{GFile}}.}
\item{\code{event.type}}{a \code{\link{GFileMonitorEvent}}.}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}}}
\section{Properties}{\describe{
\item{\verb{cancelled} [logical : Read]}{

Whether the monitor has been cancelled.  Default value: FALSE

}
\item{\verb{rate-limit} [integer : Read / Write]}{

The limit of the monitor to watch for changes, in milliseconds.  Allowed values: >= 0  Default value: 800

}
}}
\references{\url{https://developer-old.gnome.org/gio/stable/GFileMonitor.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
