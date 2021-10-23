\alias{GVolumeMonitor}
\name{GVolumeMonitor}
\title{GVolumeMonitor}
\description{Volume Monitor}
\section{Methods and Functions}{
\code{\link{gVolumeMonitorGet}()}\cr
\code{\link{gVolumeMonitorGetConnectedDrives}(object)}\cr
\code{\link{gVolumeMonitorGetVolumes}(object)}\cr
\code{\link{gVolumeMonitorGetMounts}(object)}\cr
\code{\link{gVolumeMonitorAdoptOrphanMount}(mount)}\cr
\code{\link{gVolumeMonitorGetMountForUuid}(object, uuid)}\cr
\code{\link{gVolumeMonitorGetVolumeForUuid}(object, uuid)}\cr

}
\section{Hierarchy}{\preformatted{GObject
   +----GVolumeMonitor}}
\section{Detailed Description}{\code{\link{GVolumeMonitor}} is for listing the user interesting devices and volumes
on the computer. In other words, what a file selector or file manager
would show in a sidebar. 
  \code{\link{GVolumeMonitor}} is not thread-default-context
aware, and so should not be used other than from the main
thread, with no thread-default-context active.}
\section{Structures}{\describe{\item{\verb{GVolumeMonitor}}{
A Volume Monitor that watches for volume events.



}}}
\section{Signals}{\describe{
\item{\code{drive-changed(volume.monitor, drive, user.data)}}{
Emitted when a drive changes.

\describe{
\item{\code{volume.monitor}}{The volume monitor emitting the signal.}
\item{\code{drive}}{the drive that changed}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{drive-connected(volume.monitor, drive, user.data)}}{
Emitted when a drive is connected to the system.

\describe{
\item{\code{volume.monitor}}{The volume monitor emitting the signal.}
\item{\code{drive}}{a \code{\link{GDrive}} that was connected.}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{drive-disconnected(volume.monitor, drive, user.data)}}{
Emitted when a drive is disconnected from the system.

\describe{
\item{\code{volume.monitor}}{The volume monitor emitting the signal.}
\item{\code{drive}}{a \code{\link{GDrive}} that was disconnected.}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{drive-eject-button(volume.monitor, drive, user.data)}}{
Emitted when the eject button is pressed on \code{drive}.
  Since 2.18

\describe{
\item{\code{volume.monitor}}{The volume monitor emitting the signal.}
\item{\code{drive}}{the drive where the eject button was pressed}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{drive-stop-button(volume.monitor, drive, user.data)}}{
Emitted when the stop button is pressed on \code{drive}.
  Since 2.22

\describe{
\item{\code{volume.monitor}}{The volume monitor emitting the signal.}
\item{\code{drive}}{the drive where the stop button was pressed}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{mount-added(volume.monitor, mount, user.data)}}{
Emitted when a mount is added.

\describe{
\item{\code{volume.monitor}}{The volume monitor emitting the signal.}
\item{\code{mount}}{a \code{\link{GMount}} that was added.}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{mount-changed(volume.monitor, mount, user.data)}}{
Emitted when a mount changes.

\describe{
\item{\code{volume.monitor}}{The volume monitor emitting the signal.}
\item{\code{mount}}{a \code{\link{GMount}} that changed.}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{mount-pre-unmount(volume.monitor, mount, user.data)}}{
Emitted when a mount is about to be removed.

\describe{
\item{\code{volume.monitor}}{The volume monitor emitting the signal.}
\item{\code{mount}}{a \code{\link{GMount}} that is being unmounted.}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{mount-removed(volume.monitor, mount, user.data)}}{
Emitted when a mount is removed.

\describe{
\item{\code{volume.monitor}}{The volume monitor emitting the signal.}
\item{\code{mount}}{a \code{\link{GMount}} that was removed.}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{volume-added(volume.monitor, volume, user.data)}}{
Emitted when a mountable volume is added to the system.

\describe{
\item{\code{volume.monitor}}{The volume monitor emitting the signal.}
\item{\code{volume}}{a \code{\link{GVolume}} that was added.}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{volume-changed(volume.monitor, volume, user.data)}}{
Emitted when mountable volume is changed.

\describe{
\item{\code{volume.monitor}}{The volume monitor emitting the signal.}
\item{\code{volume}}{a \code{\link{GVolume}} that changed.}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{volume-removed(volume.monitor, volume, user.data)}}{
Emitted when a mountable volume is removed from the system.

\describe{
\item{\code{volume.monitor}}{The volume monitor emitting the signal.}
\item{\code{volume}}{a \code{\link{GVolume}} that was removed.}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
}}
\references{\url{https://developer-old.gnome.org/gio/stable/GVolumeMonitor.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
