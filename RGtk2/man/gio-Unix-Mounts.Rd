\alias{gio-Unix-Mounts}
\name{gio-Unix-Mounts}
\title{Unix Mounts}
\description{Unix Mounts}
\section{Hierarchy}{\preformatted{GObject
   +----GUnixMountMonitor}}
\section{Detailed Description}{Routines for managing mounted UNIX mount points and paths.
  
Note that \file{<gio/gunixmounts.h>} belongs to the 
UNIX-specific GIO interfaces, thus you have to use the 
\file{gio-unix-2.0.pc} pkg-config file when using it.}
\section{Signals}{\describe{
\item{\code{mountpoints-changed(monitor, user.data)}}{
Emitted when the unix mount points have changed.

\describe{
\item{\code{monitor}}{the object on which the signal is emitted}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{mounts-changed(monitor, user.data)}}{
Emitted when the unix mounts have changed.

\describe{
\item{\code{monitor}}{the object on which the signal is emitted}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
}}
\references{\url{https://developer-old.gnome.org/gio/stable/gio-Unix-Mounts.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
